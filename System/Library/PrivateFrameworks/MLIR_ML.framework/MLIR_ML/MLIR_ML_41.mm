__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286867D40;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::operator()(uint64_t a1)
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

      mlir::ParallelDiagnosticHandler::setOrderIDForThread(*(a1 + 32), add);
      v5 = *(a1 + 40);
      v6 = **(a1 + 48);
      v7 = v5[1];
      v8 = **v5;
      v9 = (*v5)[1];
      if (v8 == v9)
      {
        v11 = **v5;
      }

      else
      {
        while (1)
        {
          v10 = 0;
          atomic_compare_exchange_strong(v8, &v10, 1u);
          if (!v10)
          {
            break;
          }

          if (++v8 == v9)
          {
            LODWORD(v8) = v9;
            break;
          }
        }

        LODWORD(v11) = v8;
        v8 = **v5;
      }

      v12 = 8 * (add + 2 * add);
      v13 = (v11 - v8);
      v14 = (*&v7[46][24 * v13] + 8 * *(v6 + v12));
      v15 = mlir::detail::OpToOpPassAdaptor::runPipeline(v14, *(v12 + v6 + 8), *(v12 + v6 + 16), *v5[2], *(*v14 + 64), *v5[3], v5[4]);
      atomic_store(0, &(**v5)[v13]);
      if ((v15 & 1) == 0)
      {
        atomic_store(1u, *(a1 + 8));
      }

      mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(*(a1 + 32));
      v3 = atomic_load(*(a1 + 8));
    }

    while ((v3 & 1) == 0);
  }
}

uint64_t std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &>(mlir::MLIRContext *,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,std::__wrap_iter<mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::OpPMInfo *>,mlir::detail::OpToOpPassAdaptor::runOnOperationAsyncImpl(BOOL)::$_0 &)::{lambda(void)#1},std::allocator<std::allocator>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir23failableParallelForEachINSt3__111__wrap_iterIPZNS_6detail17OpToOpPassAdaptor23runOnOperationAsyncImplEbE8OpPMInfoEERZNS4_23runOnOperationAsyncImplEbE3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SE_OT0_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir23failableParallelForEachINSt3__111__wrap_iterIPZNS_6detail17OpToOpPassAdaptor23runOnOperationAsyncImplEbE8OpPMInfoEERZNS4_23runOnOperationAsyncImplEbE3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SE_OT0_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir23failableParallelForEachINSt3__111__wrap_iterIPZNS_6detail17OpToOpPassAdaptor23runOnOperationAsyncImplEbE8OpPMInfoEERZNS4_23runOnOperationAsyncImplEbE3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SE_OT0_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir23failableParallelForEachINSt3__111__wrap_iterIPZNS_6detail17OpToOpPassAdaptor23runOnOperationAsyncImplEbE8OpPMInfoEERZNS4_23runOnOperationAsyncImplEbE3$_0EEN4llvm13LogicalResultEPNS_11MLIRContextET_SE_OT0_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t **std::unique_ptr<mlir::PassInstrumentor>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      v4 = *(v3 + 72);
      if (v4)
      {
        v5 = *(v3 + 80);
        v6 = *(v3 + 72);
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
          v6 = *(v3 + 72);
        }

        *(v3 + 80) = v4;
        operator delete(v6);
      }

      std::recursive_mutex::~recursive_mutex(v3);
      MEMORY[0x259C63180]();
    }

    JUMPOUT(0x259C63180);
  }

  return result;
}

void *llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::detail::NestedAnalysisMap>>>::grow(uint64_t a1, int a2)
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
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
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
          v22 = (*a1 + 16 * v26);
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
              v22 = (*a1 + 16 * (v31 & v25));
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
          v23 = *(v16 + 1);
          *(v16 + 1) = 0;
          *v22 = v24;
          v22[1] = v23;
          ++*(a1 + 8);
          std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](v16 + 1, 0);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

uint64_t *std::unique_ptr<mlir::detail::NestedAnalysisMap>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    if (v4)
    {
      v5 = v3 - 8;
      v6 = 16 * v4;
      do
      {
        v7 = *&v5[v6];
        *&v5[v6] = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v6 -= 16;
      }

      while (v6);
      v3 = *(v2 + 56);
    }

    if (v3 != (v2 + 72))
    {
      free(v3);
    }

    llvm::deallocate_buffer(*(v2 + 32), (16 * *(v2 + 48)));
  }

  return result;
}

void sub_25665B4D0()
{

  JUMPOUT(0x259C63180);
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpPassManager,1u>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    if (v4 < v3)
    {
      if (*(a1 + 12) < v3)
      {
        if (v4)
        {
          v5 = -24 * v4;
          v6 = (*a1 + 24 * v4 - 24);
          do
          {
            v6 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v6) - 3;
            v5 += 24;
          }

          while (v5);
        }

        *(a1 + 8) = 0;
        llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpPassManager,1u>,false>::grow();
      }

      if (v4)
      {
        v11 = a2;
        v12 = *a2;
        v13 = *a1;
        v14 = 24 * v4;
        do
        {
          llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v13, v12);
          v12 += 24;
          v13 += 24;
          v14 -= 24;
        }

        while (v14);
        a2 = v11;
        v15 = *(v11 + 8);
        if (v4 != v15)
        {
LABEL_23:
          v17 = *a2;
          v18 = *a1;
          v19 = 24 * v4;
          v20 = 24 * v15;
          do
          {
            v21 = (v18 + v19);
            *v21 = v18 + v19 + 16;
            v21[1] = 0x100000000;
            if (*(v17 + v19 + 8))
            {
              llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v21, v17 + v19);
            }

            v18 += 24;
            v20 -= 24;
            v17 += 24;
          }

          while (v19 != v20);
        }
      }

      else
      {
        v4 = 0;
        v15 = *(a2 + 8);
        if (*(a2 + 8))
        {
          goto LABEL_23;
        }
      }

LABEL_20:
      *(a1 + 8) = v3;
      return a1;
    }

    if (v3)
    {
      v7 = *a2;
      v8 = *a1;
      v9 = 24 * v3;
      do
      {
        llvm::SmallVectorImpl<mlir::OpPassManager>::operator=(v8, v7);
        v7 += 24;
        v8 += 24;
        v9 -= 24;
      }

      while (v9);
      v10 = (*a1 + 24 * *(a1 + 8));
      if (v10 == v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = *a1;
      v10 = (*a1 + 24 * v4);
      if (v10 == *a1)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v10 = llvm::SmallVector<mlir::OpPassManager,1u>::~SmallVector(v10 - 3);
    }

    while (v10 != v8);
    goto LABEL_20;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::OpPassManager>::assignRemote(char **a1, char **a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = &v4[8 * v5];
    do
    {
      v8 = *(v6 - 1);
      v6 -= 8;
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

    while (v6 != v4);
    v4 = *a1;
  }

  if (v4 != (a1 + 2))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 1);
  *(a1 + 1) = result;
  *a2 = (a2 + 2);
  a2[1] = 0;
  return result;
}

uint64_t *std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,mlir::OpPassManager *,mlir::OpPassManager *,mlir::OpPassManager *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        v8 = *(v7 + 40);
        if (v8)
        {
          v9 = *(v7 + 48);
          v10 = *(v7 + 40);
          if (v9 != v8)
          {
            do
            {
              v12 = *--v9;
              v11 = v12;
              *v9 = 0;
              if (v12)
              {
                (*(*v11 + 8))(v11);
              }
            }

            while (v9 != v8);
            v10 = *(v7 + 40);
          }

          *(v7 + 48) = v8;
          operator delete(v10);
        }

        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        MEMORY[0x259C63180](v7, 0x1032C402C5CA452);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void mlir::detail::RecoveryReproducerContext::RecoveryReproducerContext(mlir::Operation::CloneOptions *a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  mlir::Operation::CloneOptions::all(a1);
  mlir::Operation::clone();
}

{
  v2 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  mlir::Operation::CloneOptions::all(a1);
  mlir::Operation::clone();
}

void mlir::detail::RecoveryReproducerContext::enable(mlir::detail::RecoveryReproducerContext *this)
{
  if (!atomic_load_explicit(&mlir::detail::RecoveryReproducerContext::reproducerMutex, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&mlir::detail::RecoveryReproducerContext::reproducerMutex, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v2 = mlir::detail::RecoveryReproducerContext::reproducerMutex;
  std::recursive_mutex::lock(mlir::detail::RecoveryReproducerContext::reproducerMutex);
  if (atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    if (*(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32))
    {
      goto LABEL_5;
    }
  }

  else
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
    if (*(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32))
    {
LABEL_5:
      {
        goto LABEL_6;
      }

LABEL_11:
      mlir::detail::RecoveryReproducerContext::enable();
      if (atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  llvm::CrashRecoveryContext::Enable(v3);
  {
    goto LABEL_11;
  }

LABEL_6:
  if (!atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
LABEL_7:
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

LABEL_8:
  v4 = this;
  llvm::SetVector<mlir::CallGraphNode *,llvm::SmallVector<mlir::CallGraphNode *,1u>,llvm::DenseSet<mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::CallGraphNode *,void>>,1u>::insert(mlir::detail::RecoveryReproducerContext::reproducerSet[0], &v4);
  std::recursive_mutex::unlock(v2);
}

void mlir::detail::RecoveryReproducerContext::~RecoveryReproducerContext(mlir::Operation **this)
{
  mlir::Operation::erase(this[3]);
  mlir::detail::RecoveryReproducerContext::disable(this);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

{
  mlir::Operation::erase(this[3]);
  mlir::detail::RecoveryReproducerContext::disable(this);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void mlir::detail::RecoveryReproducerContext::disable(mlir::detail::RecoveryReproducerContext *this)
{
  if (!atomic_load_explicit(&mlir::detail::RecoveryReproducerContext::reproducerMutex, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(&mlir::detail::RecoveryReproducerContext::reproducerMutex, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v2 = mlir::detail::RecoveryReproducerContext::reproducerMutex;
  std::recursive_mutex::lock(mlir::detail::RecoveryReproducerContext::reproducerMutex);
  if (atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    v4 = this;
    v3 = llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::remove(mlir::detail::RecoveryReproducerContext::reproducerSet[0], &v4);
    if (atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
    {
      goto LABEL_5;
    }

LABEL_8:
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
    if (*(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32))
    {
      goto LABEL_6;
    }

LABEL_9:
    llvm::CrashRecoveryContext::Disable(v3);
    goto LABEL_6;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  v4 = this;
  v3 = llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::remove(mlir::detail::RecoveryReproducerContext::reproducerSet[0], &v4);
  if (!atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!*(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32))
  {
    goto LABEL_9;
  }

LABEL_6:
  std::recursive_mutex::unlock(v2);
}

void appendReproducer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v45 = a5;
  v44 = a6;
  v37 = 0;
  v41 = 0;
  v42 = 1;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v36 = &unk_2868A3EF8;
  v43 = a1;
  llvm::raw_ostream::SetBufferAndMode(&v36, 0, 0, 0);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v9 = *(a3 + 24);
  if (v9)
  {
    (*(*v9 + 48))(&v32);
    v10 = v32;
    v11 = v39 - v40;
    if (v32)
    {
      if (v11 > 0x18)
      {
        v40 += 25;
        v12 = &v36;
      }

      else
      {
        v10 = v32;
      }

      v15 = (*(*v10 + 16))(v10);
      v16 = v14;
      v17 = v12[4];
      if (v14 <= v12[3] - v17)
      {
        if (v14)
        {
          memcpy(v17, v15, v14);
          v17 = v12[4] + v16;
          v12[4] = v17;
        }
      }

      else
      {
        v12 = llvm::raw_ostream::write(v12, v15, v14);
        v17 = v12[4];
      }

      if (v12[3] == v17)
      {
      }

      else
      {
        *v17 = 96;
        v12[4] = v12[4] + 1;
      }

      v25[0] = *(*(a2 + 48) + 8);
      Value = mlir::StringAttr::getValue(v25);
      v28 = 773;
      v27[0] = Value;
      v27[1] = v19;
      v27[2] = "(";
      v29[0] = v27;
      v29[2] = a4;
      v30 = 1026;
      v25[0] = v29;
      v25[2] = ")";
      v26 = 770;
      llvm::Twine::str(v25, &__p);
      mlir::OpPrintingFlags::OpPrintingFlags(v25);
      mlir::AsmState::AsmState(v29, a2, v25, 0, 0);
      operator new();
    }

    if (v11 > 0x1F)
    {
      qmemcpy(v40, "failed to create output stream: ", 32);
      v40 += 32;
      v13 = &v36;
    }

    else
    {
      v13 = llvm::raw_ostream::write(&v36, "failed to create output stream: ", 0x20uLL);
    }

    if (v35 >= 0)
    {
      v20 = &v33;
    }

    else
    {
      v20 = v33;
    }

    if (v35 >= 0)
    {
      v21 = HIBYTE(v35);
    }

    else
    {
      v21 = v34;
    }

    llvm::raw_ostream::write(v13, v20, v21);
    v22 = v32;
    v32 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v33);
    }

    llvm::raw_ostream::~raw_ostream(&v36);
  }

  else
  {
    v23 = std::__throw_bad_function_call[abi:nn200100]();
    llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::remove(v23, v24);
  }
}

uint64_t llvm::SetVector<mlir::detail::RecoveryReproducerContext *,llvm::SmallVector<mlir::detail::RecoveryReproducerContext *,1u>,llvm::DenseSet<mlir::detail::RecoveryReproducerContext *,llvm::DenseMapInfo<mlir::detail::RecoveryReproducerContext *,void>>,1u>::remove(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(a1 + 4);
    if (v3)
    {
      v4 = *a1;
      v5 = v3 - 1;
      v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
      v7 = *(*a1 + 8 * v6);
      if (*a2 == v7)
      {
LABEL_4:
        *(v4 + 8 * v6) = -8192;
        v10 = *(a1 + 8);
        v8 = a1 + 4;
        v9 = v10;
        v11 = *(v8 - 5) + 1;
        *(v8 - 6) = v2 - 1;
        *(v8 - 5) = v11;
        i = *(v8 - 1);
        v13 = &i[v10];
        if (v10)
        {
          v14 = 8 * v9;
          while (*i != *a2)
          {
            ++i;
            v14 -= 8;
            if (!v14)
            {
              i = v13;
              break;
            }
          }
        }

        v15 = i + 1;
        v16 = v13 - (i + 1);
        if (v13 == i + 1)
        {
          *v8 = v9 - 1;
          return 1;
        }

        goto LABEL_19;
      }

      v23 = 1;
      while (v7 != -4096)
      {
        v24 = v6 + v23++;
        v6 = v24 & v5;
        v7 = *(v4 + 8 * v6);
        if (*a2 == v7)
        {
          goto LABEL_4;
        }
      }
    }
  }

  else
  {
    v19 = *(a1 + 8);
    v8 = a1 + 4;
    v18 = v19;
    if (v19)
    {
      v20 = 8 * v18;
      for (i = *(v8 - 1); *i != *a2; ++i)
      {
        v20 -= 8;
        if (!v20)
        {
          return 0;
        }
      }
    }

    else
    {
      i = *(v8 - 1);
    }

    v21 = *(v8 - 1) + 8 * v18;
    if (i != v21)
    {
      v15 = i + 1;
      v16 = v21 - (i + 1);
      if (v21 == i + 1)
      {
LABEL_20:
        *v8 = v18 - 1;
        return 1;
      }

LABEL_19:
      v22 = v8;
      memmove(i, v15, v16);
      v8 = v22;
      LODWORD(v18) = *v22;
      goto LABEL_20;
    }
  }

  return 0;
}

void mlir::detail::RecoveryReproducerContext::registerSignalHandler(mlir::detail::RecoveryReproducerContext *this)
{
  {
    mlir::detail::RecoveryReproducerContext::enable();
  }
}

void mlir::detail::RecoveryReproducerContext::crashHandler(mlir::detail::RecoveryReproducerContext *this, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!atomic_load_explicit(mlir::detail::RecoveryReproducerContext::reproducerSet, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(mlir::detail::RecoveryReproducerContext::reproducerSet, llvm::object_creator<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call, llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call);
  }

  v2 = *(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 32);
  if (v2)
  {
    v3 = *(mlir::detail::RecoveryReproducerContext::reproducerSet[0] + 24);
    v4 = &v3[v2];
    v5 = "A signal was caught while processing the MLIR module:";
    do
    {
      while (1)
      {
        v6 = *v3;
        v20[0] = 0;
        v20[1] = 0;
        v21 = 0;
        appendReproducer(v20, *(v6 + 24), *(v6 + 32), v6, *(v6 + 40), *(v6 + 41));
        mlir::emitError(*(*(v6 + 24) + 24), &v25);
        if (v25)
        {
          LODWORD(v22) = 3;
          *(&v22 + 1) = v5;
          v23 = 53;
          if (v28 >= v29)
          {
            if (v27 > &v22 || v27 + 24 * v28 <= &v22)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v7 = v27 + 24 * v28;
          v8 = v22;
          *(v7 + 2) = v23;
          *v7 = v8;
          ++v28;
          if (v25)
          {
            v24 = 260;
            *&v22 = v20;
            mlir::Diagnostic::operator<<(&v26, &v22);
            if (v25)
            {
              LODWORD(v22) = 3;
              *(&v22 + 1) = "; marking pass as failed";
              v23 = 24;
              if (v28 >= v29)
              {
                if (v27 > &v22 || v27 + 24 * v28 <= &v22)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v9 = v27 + 24 * v28;
              v10 = v22;
              *(v9 + 2) = v23;
              *v9 = v10;
              ++v28;
              if (v25)
              {
                mlir::InFlightDiagnostic::report(&v25);
              }
            }
          }
        }

        if (v36 == 1)
        {
          if (v35 != &v36)
          {
            free(v35);
          }

          v11 = __p;
          if (__p)
          {
            v12 = v34;
            v13 = __p;
            if (v34 != __p)
            {
              do
              {
                v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
              }

              while (v12 != v11);
              v13 = __p;
            }

            v34 = v11;
            operator delete(v13);
          }

          v14 = v31;
          if (v31)
          {
            v15 = v5;
            v16 = v32;
            v17 = v31;
            if (v32 != v31)
            {
              do
              {
                v19 = *--v16;
                v18 = v19;
                *v16 = 0;
                if (v19)
                {
                  MEMORY[0x259C63150](v18, 0x1000C8077774924);
                }
              }

              while (v16 != v14);
              v17 = v31;
            }

            v32 = v14;
            operator delete(v17);
            v5 = v15;
          }

          if (v27 != &v30)
          {
            free(v27);
          }
        }

        if (SHIBYTE(v21) < 0)
        {
          break;
        }

        if (++v3 == v4)
        {
          return;
        }
      }

      operator delete(v20[0]);
      ++v3;
    }

    while (v3 != v4);
  }
}

void mlir::detail::PassCrashReproducerGenerator::PassCrashReproducerGenerator()
{
  operator new();
}

{
  operator new();
}

void mlir::detail::PassCrashReproducerGenerator::~PassCrashReproducerGenerator(mlir::detail::PassCrashReproducerGenerator::Impl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::detail::PassCrashReproducerGenerator::Impl::~Impl(v2);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::detail::PassCrashReproducerGenerator::Impl::~Impl(v2);
  }
}

void mlir::detail::PassCrashReproducerGenerator::initialize(llvm::CrashRecoveryContext *a1, mlir::Pass **a2, mlir::Pass **a3, void *a4, char a5)
{
  llvm::CrashRecoveryContext::Enable(a1);
  v10 = *a1;
  *(v10 + 144) = a5;
  if ((*(v10 + 32) & 1) == 0)
  {

    mlir::detail::PassCrashReproducerGenerator::prepareReproducerFor(a1, a2, a3, a4);
  }
}

void mlir::detail::PassCrashReproducerGenerator::prepareReproducerFor(uint64_t a1, mlir::Pass **a2, mlir::Pass **a3, void *a4)
{
  __p[3] = a4;
  memset(__p, 0, 24);
  v11 = 0;
  v15 = 0;
  v16 = 1;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v10 = &unk_2868A3EF8;
  v17 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v10, 0, 0, 0);
  if (a2 != a3)
  {
    v7 = *a2;
    v6 = a2 + 1;
    mlir::Pass::printAsTextualPipeline(v7, &v10);
    while (v6 != a3)
    {
      while ((v13 - v14) <= 1)
      {
        llvm::raw_ostream::write(&v10, ", ", 2uLL);
        v8 = *v6++;
        mlir::Pass::printAsTextualPipeline(v8, &v10);
        if (v6 == a3)
        {
          goto LABEL_7;
        }
      }

      *v14++ = 8236;
      v9 = *v6++;
      mlir::Pass::printAsTextualPipeline(v9, &v10);
    }
  }

LABEL_7:
  std::make_unique[abi:nn200100]<mlir::detail::RecoveryReproducerContext,std::string &,mlir::Operation *&,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> &,BOOL &,0>();
}

uint64_t mlir::detail::PassCrashReproducerGenerator::finalize(uint64_t result, uint64_t a2, char a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *result;
  v4 = *(*result + 48);
  if (v4)
  {
    if ((a3 & 1) == 0)
    {
      v8 = result;
      mlir::emitError(*(a2 + 24), &v24);
      if (v24)
      {
        LODWORD(v35) = 3;
        *(&v35 + 1) = "Failures have been detected while processing an MLIR pass pipeline";
        v36 = 66;
        if (v26 >= v27)
        {
          if (v25 > &v35 || v25 + 24 * v26 <= &v35)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v25 + 24 * v26;
        v10 = v35;
        *(v9 + 2) = v36;
        *v9 = v10;
        ++v26;
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v35, &v24);
      if (v24)
      {
        mlir::InFlightDiagnostic::report(&v24);
      }

      if (v34 == 1)
      {
        if (v33 != &v34)
        {
          free(v33);
        }

        v11 = __p;
        if (__p)
        {
          v12 = v32;
          v13 = __p;
          if (v32 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v32 = v11;
          operator delete(v13);
        }

        v14 = v29;
        if (v29)
        {
          v15 = v30;
          v16 = v29;
          if (v30 != v29)
          {
            do
            {
              v18 = *--v15;
              v17 = v18;
              *v15 = 0;
              if (v18)
              {
                MEMORY[0x259C63150](v17, 0x1000C8077774924);
              }
            }

            while (v15 != v14);
            v16 = v29;
          }

          v30 = v14;
          operator delete(v16);
        }

        if (v25 != &v28)
        {
          free(v25);
        }
      }

      v19 = *v8;
      if (*(*v8 + 32))
      {
        v20 = *(*(v19 + 40) + 8 * *(v19 + 48) - 8);
        v21 = 0;
        v22 = 0;
        v23 = 0;
        appendReproducer(&v21, *(v20 + 24), *(v20 + 32), v20, *(v20 + 40), *(v20 + 41));
        mlir::Diagnostic::attachNote();
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      appendReproducer(&v21, *(**(v19 + 40) + 24), *(**(v19 + 40) + 32), **(v19 + 40), *(**(v19 + 40) + 40), *(**(v19 + 40) + 41));
      mlir::Diagnostic::attachNote();
    }

    v5 = 8 * v4;
    v6 = *(v3 + 40) - 8;
    do
    {
      v7 = *(v6 + v5);
      *(v6 + v5) = 0;
      if (v7)
      {
        mlir::Operation::erase(*(v7 + 24));
        mlir::detail::RecoveryReproducerContext::disable(v7);
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        result = MEMORY[0x259C63180](v7, 0x1032C4016633A97);
      }

      v5 -= 8;
    }

    while (v5);
    *(v3 + 48) = 0;
  }

  return result;
}

uint64_t formatPassOpReproducerMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  LODWORD(v34) = 3;
  v35 = 1;
  v6 = *(a1 + 24);
  if (v6 >= *(a1 + 28))
  {
    if (v5 > &v34 || v5 + 24 * v6 <= &v34)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v5 + 24 * *(a1 + 24);
  v8 = v34;
  *(v7 + 16) = v35;
  *v7 = v8;
  ++*(a1 + 24);
  v9 = (*(*a2 + 16))(a2);
  v36 = 261;
  *&v34 = v9;
  *(&v34 + 1) = v10;
  v11 = mlir::Diagnostic::operator<<(a1, &v34);
  v12 = *(v11 + 16);
  LODWORD(v37) = 3;
  v38 = 5;
  v13 = *(v11 + 24);
  if (v13 >= *(v11 + 28))
  {
    if (v12 > &v37 || v12 + 24 * v13 <= &v37)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v14 = v12 + 24 * *(v11 + 24);
  v15 = v37;
  *(v14 + 16) = v38;
  *v14 = v15;
  v16 = *(v11 + 28);
  v17 = *(v11 + 24) + 1;
  *(v11 + 24) = v17;
  LODWORD(v37) = 3;
  *(&v37 + 1) = "'";
  v38 = 1;
  v18 = *(v11 + 16);
  if (v17 >= v16)
  {
    if (v18 > &v37 || v18 + 24 * v17 <= &v37)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v19 = v18 + 24 * *(v11 + 24);
  v20 = v37;
  *(v19 + 16) = v38;
  *v19 = v20;
  ++*(v11 + 24);
  v21 = mlir::Diagnostic::operator<<(v11, *(a3 + 48));
  v22 = *(v21 + 16);
  LODWORD(v37) = 3;
  *(&v37 + 1) = "' operation";
  v38 = 11;
  v23 = *(v21 + 24);
  if (v23 >= *(v21 + 28))
  {
    if (v22 > &v37 || v22 + 24 * v23 <= &v37)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v24 = v22 + 24 * *(v21 + 24);
  v25 = v37;
  *(v24 + 16) = v38;
  *v24 = v25;
  ++*(v21 + 24);
  result = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  if (!result)
  {
    goto LABEL_9;
  }

  if (*(a3 + 47) && (result = mlir::Operation::getInherentAttr(a3, "sym_name", 8), (v27 & 1) != 0))
  {
    if (!result)
    {
LABEL_9:
      *&v37 = 0;
      *(&v37 + 1) = result;
      return result;
    }
  }

  else if (!mlir::DictionaryAttr::contains(a3 + 56, "sym_name", 8uLL))
  {
    result = 0;
    v37 = 0uLL;
    return result;
  }

  result = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  *&v37 = a3;
  *(&v37 + 1) = result;
  if (a3)
  {
    LODWORD(v34) = 3;
    *(&v34 + 1) = ": @";
    v35 = 3;
    v28 = *(a1 + 24);
    v29 = *(a1 + 16);
    if (v28 >= *(a1 + 28))
    {
      if (v29 <= &v34 && v29 + 24 * v28 > &v34)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v30 = v29 + 24 * *(a1 + 24);
    v31 = v34;
    *(v30 + 16) = v35;
    *v30 = v31;
    ++*(a1 + 24);
    *&v34 = mlir::SymbolOpInterface::getNameAttr(&v37);
    Value = mlir::StringAttr::getValue(&v34);
    v36 = 261;
    *&v34 = Value;
    *(&v34 + 1) = v33;
    return mlir::Diagnostic::operator<<(a1, &v34);
  }

  return result;
}

uint64_t mlir::detail::PassCrashReproducerGenerator::prepareReproducerFor(mlir::detail::PassCrashReproducerGenerator *this, mlir::Pass *a2, mlir::Operation *a3)
{
  v3 = a3;
  v30 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v6 = *this;
  *&v17 = a2;
  *(&v17 + 1) = a3;
  result = llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::try_emplace<llvm::detail::DenseSetEmpty&>(v6 + 104, &v17, &v27);
  if (v29 == 1)
  {
    v8 = *(v6 + 136);
    if (v8 >= *(v6 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(v6 + 128) + 16 * v8) = v17;
    ++*(v6 + 136);
  }

  v9 = *this;
  if (*(*this + 32) == 1)
  {
    v10 = *(v9 + 48);
    if (v10)
    {
      mlir::detail::RecoveryReproducerContext::disable(*(*(v9 + 40) + 8 * v10 - 8));
    }

    v27 = &v29;
    v28 = 0x600000000;
    for (i = *(v3 + 2); i; v3 = ParentOp)
    {
      ParentOp = mlir::Block::getParentOp(i);
      if (!ParentOp)
      {
        break;
      }

      v13 = *(v3 + 6);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = v13;
      LODWORD(v28) = v28 + 1;
      v25 = ParentOp;
      i = *(ParentOp + 16);
    }

    memset(__p, 0, sizeof(__p));
    DWORD2(v17) = 0;
    v21 = 0;
    v22 = 1;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    *&v17 = &unk_2868A3EF8;
    v23 = __p;
    llvm::raw_ostream::SetBufferAndMode(&v17, 0, 0, 0);
    if (v28)
    {
      v14 = 8 * v28;
      v15 = v27 - 8;
      do
      {
        while (1)
        {
          v26 = *&v15[v14];
          mlir::OperationName::print(&v26, &v17);
          if (v19 == v20)
          {
            break;
          }

          *v20++ = 40;
          v14 -= 8;
          if (!v14)
          {
            goto LABEL_18;
          }
        }

        llvm::raw_ostream::write(&v17, "(", 1uLL);
        v14 -= 8;
      }

      while (v14);
    }

LABEL_18:
    mlir::Pass::printAsTextualPipeline(a2, &v17);
    for (j = v28; j; --j)
    {
      while (v19 != v20)
      {
        *v20++ = 41;
        if (!--j)
        {
          goto LABEL_23;
        }
      }

      llvm::raw_ostream::write(&v17, ")", 1uLL);
    }

LABEL_23:
    std::make_unique[abi:nn200100]<mlir::detail::RecoveryReproducerContext,std::string &,mlir::Operation *&,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> &,BOOL &,0>();
  }

  return result;
}

void mlir::detail::PassCrashReproducerGenerator::removeLastReproducerFor(int32x2_t **this, mlir::Pass *a2, mlir::Operation *a3)
{
  v4 = *this;
  v9[0] = a2;
  v9[1] = a3;
  llvm::SetVector<std::pair<mlir::Pass *,mlir::Operation *>,llvm::SmallVector<std::pair<mlir::Pass *,mlir::Operation *>,0u>,llvm::DenseSet<std::pair<mlir::Pass *,mlir::Operation *>,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>>,0u>::remove(v4 + 13, v9);
  v5 = *this;
  if ((*this)[4].i8[0] == 1)
  {
    v6 = v5[6].i32[0] - 1;
    v5[6].i32[0] = v6;
    v7 = v5[5];
    v8 = *(*&v7 + 8 * v6);
    *(*&v7 + 8 * v6) = 0;
    if (v8)
    {
      mlir::Operation::erase(*(v8 + 24));
      mlir::detail::RecoveryReproducerContext::disable(v8);
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      MEMORY[0x259C63180](v8, 0x1032C4016633A97);
      v5 = *this;
      v6 = (*this)[6].u32[0];
    }

    if (v6)
    {
      mlir::detail::RecoveryReproducerContext::enable(*(*&v5[5] + 8 * v6 - 8));
    }
  }
}

uint64_t llvm::SetVector<std::pair<mlir::Pass *,mlir::Operation *>,llvm::SmallVector<std::pair<mlir::Pass *,mlir::Operation *>,0u>,llvm::DenseSet<std::pair<mlir::Pass *,mlir::Operation *>,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>>,0u>::remove(int32x2_t *a1, void *a2)
{
  v2 = a1[2].i32[0];
  if (v2)
  {
    v3 = a2[1];
    v4 = 0xBF58476D1CE4E5B9 * ((v3 >> 4) ^ (v3 >> 9) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v5 = v2 - 1;
    v6 = v5 & ((v4 >> 31) ^ v4);
    v7 = (*a1 + 16 * v6);
    v9 = *v7;
    v8 = v7[1];
    if (*a2 != *v7 || v3 != v8)
    {
      v28 = 1;
      while (v9 != -4096 || v8 != -4096)
      {
        v29 = v6 + v28++;
        v6 = v29 & v5;
        v7 = (*a1 + 16 * v6);
        v9 = *v7;
        v8 = v7[1];
        if (*a2 == *v7 && v3 == v8)
        {
          goto LABEL_7;
        }
      }

      return 0;
    }

LABEL_7:
    *v7 = -8192;
    v7[1] = -8192;
    a1[1] = vadd_s32(a1[1], 0x1FFFFFFFFLL);
    v11 = a1[3];
    v12 = a1[4].u32[0];
    v13 = &v11[v12];
    if (v12)
    {
      v14 = 16 * v12;
      while (*v11 != *a2 || *(v11 + 1) != a2[1])
      {
        ++v11;
        v14 -= 16;
        if (!v14)
        {
          v11 = v13;
          break;
        }
      }
    }

    v16 = v11 + 1;
    if (v11 + 1 != v13)
    {
      v17 = v13 - v11 - 32;
      if (v17 >= 0x30)
      {
        v19 = (v17 >> 4) + 1;
        v20 = v19 & 0x1FFFFFFFFFFFFFFCLL;
        v18 = &v11[v20];
        v16 = (v16 + v20 * 16);
        v21 = v11 + 2;
        v22 = v19 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v23 = *v21;
          v25 = v21[1];
          v24 = v21[2];
          *(v21 - 2) = *(v21 - 1);
          *(v21 - 1) = v23;
          *v21 = v25;
          v21[1] = v24;
          v21 += 4;
          v22 -= 4;
        }

        while (v22);
        if (v19 == (v19 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v18 = v11;
      }

      do
      {
        v26 = *v16++;
        *v18++ = v26;
      }

      while (v16 != v13);
    }

LABEL_22:
    a1[4].i32[0] = v12 - 1;
    return 1;
  }

  return 0;
}

void mlir::PassManager::runWithCrashRecovery(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a3;
  v11 = a2;
  v5 = *(a1 + 32);
  v6 = mlir::OpPassManager::begin(a1);
  v7 = mlir::OpPassManager::end(a1);
  v8 = (*(a1 + 56) >> 1) & 1;
  llvm::CrashRecoveryContext::Enable(v7);
  v9 = *v5;
  *(v9 + 144) = v8;
  if ((*(v9 + 32) & 1) == 0)
  {
    mlir::detail::PassCrashReproducerGenerator::prepareReproducerFor(v5, v6, v7, a2);
  }

  v13 = 0;
  llvm::CrashRecoveryContext::CrashRecoveryContext(v10);
  llvm::CrashRecoveryContext::RunSafelyOnThread();
}

void mlir::makeReproducer(const void *a1@<X0>, size_t a2@<X1>, mlir::Pass ***a3@<X2>, const void *a4@<X4>, size_t a5@<X5>, void *a6@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  memset(__p, 0, sizeof(__p));
  v12 = 0;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = &unk_2868A3EF8;
  v18 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v11, 0, 0, 0);
  printAsTextualPipeline(&v11, a1, a2, a3);
  makeReproducerStreamFactory(v20, a4, a5);
}

void makeReproducerStreamFactory(uint64_t a1, const void *a2, size_t a3)
{
  if (a2)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = a3;
    if (a3)
    {
      memmove(&__dst, a2, a3);
      __dst.__r_.__value_.__s.__data_[a3] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_11:
        std::string::__init_copy_ctor_external(&v4, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
LABEL_12:
        operator new();
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  v4 = __dst;
  goto LABEL_12;
}

void mlir::PassManager::enableCrashReproducerGeneration(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (mlir::MLIRContext::isMultithreadingEnabled(*(a1 + 8)))
    {
      llvm::report_fatal_error("Local crash reproduction can't be setup on a pass-manager without disabling multi-threading first.", 1);
    }
  }

  operator new();
}

uint64_t mlir::PassReproducerOptions::apply(mlir::PassReproducerOptions *this, mlir::PassManager *a2)
{
  if (*(this + 24) == 1)
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

    v7 = llvm::errs(this);
    mlir::parsePassPipeline(v5, v6, v7, &v9);
    if (v10 != 1)
    {
      return 0;
    }

    mlir::OpPassManager::operator=(a2, &v9);
    if (v10)
    {
      mlir::OpPassManager::~OpPassManager(&v9);
    }
  }

  if (*(this + 35) == 1)
  {
    mlir::MLIRContext::disableMultithreading(*(a2 + 1), *(this + 34));
  }

  if (*(this + 33) == 1)
  {
    mlir::PassManager::enableVerifier(a2, *(this + 32));
  }

  return 1;
}

void mlir::AsmResourcePrinter::fromCallable<appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0>(llvm::StringRef,appendReproducer(std::string &,mlir::Operation *,std::function<std::unique_ptr<mlir::ReproducerStream> ()(std::string &)> const&,std::string const&,BOOL,BOOL)::$_0 &&)::Printer::~Printer(void **a1)
{
  mlir::AsmResourcePrinter::~AsmResourcePrinter(a1);

  JUMPOUT(0x259C63180);
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

uint64_t std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::~__func(uint64_t result)
{
  *result = &unk_286867E00;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::~__func(uint64_t a1)
{
  *a1 = &unk_286867E00;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C63180);
}

void std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286867E00;
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

void std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::destroy_deallocate(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<makeReproducerStreamFactory(llvm::StringRef)::$_0,std::allocator<makeReproducerStreamFactory(llvm::StringRef)::$_0>,std::unique_ptr<mlir::ReproducerStream> ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZL27makeReproducerStreamFactoryN4llvm9StringRefEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZL27makeReproducerStreamFactoryN4llvm9StringRefEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZL27makeReproducerStreamFactoryN4llvm9StringRefEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZL27makeReproducerStreamFactoryN4llvm9StringRefEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void anonymous namespace::FileReproducerStream::~FileReproducerStream(_anonymous_namespace_::FileReproducerStream *this)
{
  v1 = *(this + 1);
  v1[24] = 1;
  *this = &unk_286867E80;
  *(this + 1) = 0;
  if (v1[128] == 1)
  {
    llvm::raw_fd_ostream::~raw_fd_ostream((v1 + 32));
  }

  llvm::CleanupInstaller::~CleanupInstaller(v1);
  MEMORY[0x259C63180]();
}

{
  v1 = *(this + 1);
  v1[24] = 1;
  *this = &unk_286867E80;
  *(this + 1) = 0;
  if (v1[128] == 1)
  {
    llvm::raw_fd_ostream::~raw_fd_ostream((v1 + 32));
  }

  llvm::CleanupInstaller::~CleanupInstaller(v1);
  MEMORY[0x259C63180]();

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::FileReproducerStream::description(_anonymous_namespace_::FileReproducerStream *this)
{
  v1 = *(this + 1);
  if (v1[23] >= 0)
  {
    return *(this + 1);
  }

  else
  {
    return *v1;
  }
}

std::recursive_mutex *llvm::object_deleter<llvm::sys::SmartMutex<true>>::call(std::recursive_mutex *result)
{
  if (result)
  {
    std::recursive_mutex::~recursive_mutex(result);

    JUMPOUT(0x259C63180);
  }

  return result;
}

uint64_t llvm::object_deleter<llvm::SmallSetVector<mlir::detail::RecoveryReproducerContext *,1u>>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2 != (v1 + 40))
    {
      free(v2);
    }

    llvm::deallocate_buffer(*v1, (8 * *(v1 + 16)));
  }

  return result;
}

void mlir::detail::PassCrashReproducerGenerator::Impl::~Impl(mlir::detail::PassCrashReproducerGenerator::Impl *this)
{
  v2 = *(this + 16);
  if (v2 != this + 144)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 13), (16 * *(this + 30)));
}

void llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::shrink_and_clear(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
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
    llvm::deallocate_buffer(*a1, (16 * v1));
  }

  *(a1 + 8) = 0;
  if (v1)
  {
    v5 = *a1;

    memset_pattern16(v5, &unk_257371D60, 16 * v1);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 16);
  if (!v3)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v4 = *result;
  v5 = a2[1];
  v6 = 0xBF58476D1CE4E5B9 * ((v5 >> 4) ^ (v5 >> 9) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
  v7 = v3 - 1;
  v8 = (v3 - 1) & ((v6 >> 31) ^ v6);
  v9 = (*result + 16 * v8);
  v11 = *v9;
  v10 = v9[1];
  if (*a2 != *v9 || v5 != v10)
  {
    v15 = 0;
    v16 = 1;
    while (v11 != -4096 || v10 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10 == -8192;
      }

      if (v17 && v11 == -8192)
      {
        v15 = v9;
      }

      v19 = v8 + v16++;
      v8 = v19 & v7;
      v9 = (v4 + 16 * (v19 & v7));
      v11 = *v9;
      v10 = v9[1];
      if (*a2 == *v9 && v5 == v10)
      {
        goto LABEL_7;
      }
    }

    if (v15)
    {
      v9 = v15;
    }

LABEL_9:
    v24 = v9;
    v14 = *(result + 8);
    if (4 * v14 + 4 >= 3 * v3)
    {
      v3 *= 2;
    }

    else if (v3 + ~v14 - *(result + 12) > v3 >> 3)
    {
      *(result + 8) = v14 + 1;
      if (*v9 != -4096)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v21 = result;
    v22 = a2;
    v23 = a3;
    llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::grow(result, v3);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::LookupBucketFor<std::pair<mlir::Pass *,mlir::Operation *>>(v21, v22, &v24);
    a2 = v22;
    result = v21;
    a3 = v23;
    v9 = v24;
    ++*(v21 + 8);
    if (*v9 != -4096)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (v9[1] == -4096)
    {
LABEL_14:
      *v9 = *a2;
      v4 = *result;
      v3 = *(result + 16);
      v13 = 1;
      goto LABEL_15;
    }

LABEL_13:
    --*(result + 12);
    goto LABEL_14;
  }

LABEL_7:
  v13 = 0;
LABEL_15:
  *a3 = v9;
  *(a3 + 8) = v4 + 16 * v3;
  *(a3 + 16) = v13;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::LookupBucketFor<std::pair<mlir::Pass *,mlir::Operation *>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xBF58476D1CE4E5B9 * ((v6 >> 4) ^ (v6 >> 9) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v8 = (v7 >> 31) ^ v7;
    v9 = v3 - 1;
    v10 = (v3 - 1) & v8;
    v11 = (*a1 + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    if (*a2 == *v11 && v6 == v13)
    {
      result = 1;
      *a3 = v11;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v12 != -4096 || v13 != -4096)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v13 == -8192;
        }

        if (v18 && v12 == -8192)
        {
          v15 = v11;
        }

        v20 = v10 + v16++;
        v10 = v20 & v9;
        v11 = (v4 + 16 * (v20 & v9));
        v12 = *v11;
        v13 = v11[1];
        if (v5 == *v11 && v6 == v13)
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
  buffer = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = buffer;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {

    memset_pattern16(buffer, &unk_257371D60, 16 * v10);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>,std::pair<mlir::Pass *,mlir::Operation *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::Pass *,mlir::Operation *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::Pass *,mlir::Operation *>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    memset_pattern16(*a1, &unk_257371D60, 16 * v6);
  }

  if (a2 != a3)
  {
    v7 = 0;
    v8 = v6 - 1;
    do
    {
      v15 = *a2;
      v16 = a2[1];
      if ((*a2 != -4096 || v16 != -4096) && (v15 != -8192 || v16 != -8192))
      {
        v9 = 0xBF58476D1CE4E5B9 * ((v16 >> 4) ^ (v16 >> 9) | (((v15 >> 4) ^ (v15 >> 9)) << 32));
        v10 = v8 & ((v9 >> 31) ^ v9);
        v11 = (*a1 + 16 * v10);
        v12 = *v11;
        v13 = v11[1];
        if (v15 != *v11 || v16 != v13)
        {
          v17 = 0;
          v18 = 1;
          while (v12 != -4096 || v13 != -4096)
          {
            if (v17)
            {
              v19 = 0;
            }

            else
            {
              v19 = v13 == -8192;
            }

            if (v19 && v12 == -8192)
            {
              v17 = v11;
            }

            v21 = v10 + v18++;
            v10 = v21 & v8;
            v11 = (*a1 + 16 * (v21 & v8));
            v12 = *v11;
            v13 = v11[1];
            if (v15 == *v11 && v16 == v13)
            {
              goto LABEL_10;
            }
          }

          if (v17)
          {
            v11 = v17;
          }
        }

LABEL_10:
        *v11 = v15;
        v11[1] = v16;
        *(a1 + 8) = ++v7;
      }

      a2 += 2;
    }

    while (a2 != a3);
  }
}

uint64_t llvm::function_ref<void ()(void)>::callback_fn<mlir::PassManager::runWithCrashRecovery(mlir::Operation *,mlir::AnalysisManager)::$_0>(uint64_t a1)
{
  result = mlir::PassManager::runPasses(*(a1 + 8), **(a1 + 16), **(a1 + 24));
  **a1 = result;
  return result;
}

void anonymous namespace::CrashReproducerInstrumentation::~CrashReproducerInstrumentation(_anonymous_namespace_::CrashReproducerInstrumentation *this)
{
  mlir::PassInstrumentation::~PassInstrumentation(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::CrashReproducerInstrumentation::runBeforePass(uint64_t this, mlir::Pass *a2, mlir::Operation *a3)
{
  v4 = *(a2 + 1);
  {
    if (v4 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  else
  {
    v9 = a3;
    v7 = a2;
    v8 = this;
    v6 = v4;
    a2 = v7;
    this = v8;
    a3 = v9;
    if (v6 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return this;
    }
  }

  v5 = *(this + 8);

  return mlir::detail::PassCrashReproducerGenerator::prepareReproducerFor(v5, a2, a3);
}

void anonymous namespace::CrashReproducerInstrumentation::runAfterPass(int32x2_t ***this, mlir::Pass *a2, mlir::Operation *a3)
{
  v4 = *(a2 + 1);
  {
    if (v4 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return;
    }
  }

  else
  {
    v9 = a3;
    v7 = a2;
    v8 = this;
    v6 = v4;
    a2 = v7;
    this = v8;
    a3 = v9;
    if (v6 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id)
    {
      return;
    }
  }

  v5 = this[1];

  mlir::detail::PassCrashReproducerGenerator::removeLastReproducerFor(v5, a2, a3);
}

uint64_t anonymous namespace::CrashReproducerInstrumentation::runAfterPassFailed(uint64_t this, mlir::Pass *a2, mlir::Operation *a3)
{
  if ((*(this + 16) & 1) == 0)
  {
    *(this + 16) = 1;
    return mlir::detail::PassCrashReproducerGenerator::finalize(*(this + 8), a3, 0);
  }

  return this;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::try_emplace<std::unique_ptr<mlir::AsmResourceParser>>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v15 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v15);
  v9 = v15;
  if (!result)
  {
    v16 = v15;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*v9 == -1)
      {
LABEL_7:
        *v9 = *a2;
        v13 = *a3;
        *a3 = 0;
        v9[2] = v13;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v16);
    v9 = v16;
    ++*(a1 + 8);
    if (*v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v14 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v14;
  *(a4 + 16) = v10;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_25736B6D0;
        *(v17 + 24) = xmmword_25736B6D0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        v20 = 3 * v3;
        if (v3)
        {
          v21 = 24 * v3;
          v22 = v4;
          do
          {
            if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v30 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(a1, v22, &v30);
              v23 = v30;
              *v30 = *v22;
              v24 = *(v22 + 16);
              *(v22 + 16) = 0;
              v23[2] = v24;
              ++*(a1 + 8);
              v25 = *(v22 + 16);
              *(v22 + 16) = 0;
              if (v25)
              {
                (*(*v25 + 8))(v25);
              }
            }

            v22 += 24;
            v21 -= 24;
          }

          while (v21);
        }

        llvm::deallocate_buffer(v4, (8 * v20));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = (result + 24 * v10);
    do
    {
      *v12 = xmmword_25736B6D0;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_26:
      v29 = (result + 24 * v13);
      do
      {
        *v15 = xmmword_25736B6D0;
        v15 = (v15 + 24);
      }

      while (v15 != v29);
      return result;
    }

    v26 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v26 & 0x1FFFFFFFFFFFFFFELL));
    v27 = result;
    v28 = v26 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v27 = xmmword_25736B6D0;
      *(v27 + 24) = xmmword_25736B6D0;
      v27 += 3;
      v28 -= 2;
    }

    while (v28);
    if (v26 != (v26 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_26;
    }
  }

  return result;
}

void mlir::AsmResourceParser::fromCallable<mlir::PassReproducerOptions::attachResourceParser(mlir::ParserConfig &)::$_0 &>(llvm::StringRef,mlir::PassReproducerOptions::attachResourceParser(mlir::ParserConfig &)::$_0 &)::Processor::~Processor(void **a1)
{
  mlir::AsmResourceParser::~AsmResourceParser(a1);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::AsmResourceParser::fromCallable<mlir::PassReproducerOptions::attachResourceParser(mlir::ParserConfig &)::$_0 &>(llvm::StringRef,mlir::PassReproducerOptions::attachResourceParser(mlir::ParserConfig &)::$_0 &)::Processor::parseResource(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = (*(*a2 + 16))(a2);
  if (v5 == 8 && *v4 == 0x656E696C65706970)
  {
    (*(*a2 + 48))(&v36, a2);
    v19 = v38;
    if (v38 == 1)
    {
      if (*(v3 + 24) == 1)
      {
        if (*(v3 + 23) < 0)
        {
          operator delete(*v3);
          v19 = v38;
        }

        v28 = v36;
        *(v3 + 16) = v37;
        *v3 = v28;
      }

      else
      {
        v32 = v36;
        *(v3 + 16) = v37;
        *v3 = v32;
        *(v3 + 24) = 1;
      }
    }
  }

  else
  {
    v6 = (*(*a2 + 16))(a2);
    if (v7 == 17 && (*v6 == 0x5F656C6261736964 ? (v8 = *(v6 + 8) == 0x6E69646165726874) : (v8 = 0), v8 ? (v9 = *(v6 + 16) == 103) : (v9 = 0), v9))
    {
      v29 = (*(*a2 + 40))(a2);
      v19 = BYTE1(v29);
      if ((v29 >> 8))
      {
        *(v3 + 34) = v29 | 0x100;
      }
    }

    else
    {
      v10 = (*(*a2 + 16))(a2);
      if (v11 == 11 && (*v10 == 0x655F796669726576 ? (v12 = *(v10 + 3) == 0x686361655F796669) : (v12 = 0), v12))
      {
        v30 = (*(*a2 + 40))(a2);
        v19 = BYTE1(v30);
        if ((v30 >> 8))
        {
          *(v3 + 32) = v30 | 0x100;
        }
      }

      else
      {
        (*(*a2 + 24))(&v36, a2);
        if (v36)
        {
          LODWORD(v33) = 3;
          *(&v33 + 1) = "unknown 'mlir_reproducer' resource key '";
          v34 = 40;
          if (v39 >= v40)
          {
            if (v38 > &v33 || v38 + 24 * v39 <= &v33)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v38 + 24 * v39;
          v14 = v33;
          *(v13 + 2) = v34;
          *v13 = v14;
          ++v39;
        }

        v15 = (*(*a2 + 16))(a2);
        if (v36)
        {
          v35 = 261;
          *&v33 = v15;
          *(&v33 + 1) = v16;
          mlir::Diagnostic::operator<<(&v36 + 8, &v33);
          if (v36)
          {
            LODWORD(v33) = 3;
            *(&v33 + 1) = "'";
            v34 = 1;
            if (v39 >= v40)
            {
              if (v38 > &v33 || v38 + 24 * v39 <= &v33)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v17 = v38 + 24 * v39;
            v18 = v33;
            *(v17 + 2) = v34;
            *v17 = v18;
            ++v39;
          }
        }

        v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
        if (v36)
        {
          mlir::InFlightDiagnostic::report(&v36);
        }

        if (v47 == 1)
        {
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

          if (v38 != &v41)
          {
            free(v38);
          }
        }
      }
    }
  }

  return v19;
}

void mlir::registerPassManagerCLOptions(mlir *this)
{
  if (!atomic_load_explicit(options, memory_order_acquire))
  {
  }
}

uint64_t mlir::applyPassManagerCLOptions(mlir::UnknownLoc **this, mlir::PassManager *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!atomic_load(options))
  {
    return 0;
  }

  if (!atomic_load_explicit(options, memory_order_acquire))
  {
  }

  if (*(options[0] + 8))
  {
    if (!atomic_load_explicit(options, memory_order_acquire))
    {
    }

    v4 = *(options[0] + 151);
    if (v4 >= 0)
    {
      v5 = (options[0] + 128);
    }

    else
    {
      v5 = *(options[0] + 128);
    }

    if (v4 >= 0)
    {
      v6 = *(options[0] + 151);
    }

    else
    {
      v6 = *(options[0] + 136);
    }

    if (!atomic_load_explicit(options, memory_order_acquire))
    {
    }

    mlir::PassManager::enableCrashReproducerGeneration(this, v5, v6);
  }

  if (!atomic_load_explicit(options, memory_order_acquire))
  {
    if (*(options[0] + 1760) == 1)
    {
      goto LABEL_18;
    }

LABEL_23:
    if (atomic_load_explicit(options, memory_order_acquire))
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (*(options[0] + 1760) != 1)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (atomic_load_explicit(options, memory_order_acquire))
  {
    mlir::PassManager::enableStatistics(this, *(options[0] + 1952));
    if (!atomic_load_explicit(options, memory_order_acquire))
    {
      goto LABEL_20;
    }

LABEL_24:
    if (*(options[0] + 1336) != 1)
    {
      goto LABEL_44;
    }

    goto LABEL_25;
  }

  mlir::PassManager::enableStatistics(this, *(options[0] + 1952));
  if (atomic_load_explicit(options, memory_order_acquire))
  {
    goto LABEL_24;
  }

LABEL_20:
  if (*(options[0] + 1336) != 1)
  {
    goto LABEL_44;
  }

LABEL_25:
  if (mlir::MLIRContext::isMultithreadingEnabled(this[1]))
  {
    v8 = mlir::UnknownLoc::get(this[1], v7);
    mlir::emitError(v8, &v23);
    if (v23)
    {
      LODWORD(v41) = 3;
      *(&v41 + 1) = "IR print for module scope can't be setup on a pass-manager without disabling multi-threading first.\n";
      v42 = 100;
      if (v26 >= v27)
      {
        if (v25 > &v41 || v25 + 24 * v26 <= &v41)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v9 = v25 + 24 * v26;
      v10 = v41;
      *(v9 + 2) = v42;
      *v9 = v10;
      ++v26;
      if (v23)
      {
        mlir::InFlightDiagnostic::report(&v23);
      }
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v32;
        v13 = __p;
        if (v32 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v32 = v11;
        operator delete(v13);
      }

      v14 = v29;
      if (v29)
      {
        v15 = v30;
        v16 = v29;
        if (v30 != v29)
        {
          do
          {
            v18 = *--v15;
            v17 = v18;
            *v15 = 0;
            if (v18)
            {
              MEMORY[0x259C63150](v17, 0x1000C8077774924);
            }
          }

          while (v15 != v14);
          v16 = v29;
        }

        v30 = v14;
        operator delete(v16);
      }

      if (v25 != &v28)
      {
        free(v25);
      }
    }

    return 0;
  }

LABEL_44:
  if (atomic_load_explicit(options, memory_order_acquire))
  {
    v19 = options[0];
    v43 = 0;
    v40 = 0;
    if (*(options[0] + 568) == 1)
    {
LABEL_46:
      v23 = &unk_286867F98;
      goto LABEL_50;
    }
  }

  else
  {
    v19 = options[0];
    v43 = 0;
    v40 = 0;
    if (*(options[0] + 568) == 1)
    {
      goto LABEL_46;
    }
  }

  if (!mlir::PassNameCLParser::hasAnyOccurrences((v19 + 424)))
  {
    goto LABEL_53;
  }

  v23 = &unk_286868028;
  v24 = v19;
LABEL_50:
  v25 = &v23;
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::swap[abi:nn200100](&v23, &v41);
  if (v25 == &v23)
  {
    (*(*v25 + 32))(v25);
    if ((*(v19 + 760) & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_57:
    v23 = &unk_2868680A8;
    goto LABEL_58;
  }

  if (v25)
  {
    (*(*v25 + 40))();
  }

LABEL_53:
  if (*(v19 + 760))
  {
    goto LABEL_57;
  }

LABEL_56:
  if (*(v19 + 1144) == 1)
  {
    goto LABEL_57;
  }

  if (!mlir::PassNameCLParser::hasAnyOccurrences((v19 + 432)))
  {
    goto LABEL_66;
  }

  v23 = &unk_286868128;
  v24 = v19;
LABEL_58:
  v25 = &v23;
  std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::swap[abi:nn200100](&v23, v39);
  if (v25 == &v23)
  {
    (*(*v25 + 32))(v25);
  }

  else if (v25)
  {
    (*(*v25 + 40))();
  }

LABEL_66:
  if (v43 | v40)
  {
    if ((*(v19 + 1551) & 0x8000000000000000) != 0)
    {
      if (*(v19 + 1536))
      {
LABEL_69:
        if (v43)
        {
          if (v43 != &v41)
          {
            v38 = (*(*v43 + 16))();
            v20 = v40;
            if (v40)
            {
              goto LABEL_72;
            }

LABEL_81:
            v36 = 0;
            goto LABEL_85;
          }

          v38 = v37;
          (*(*v43 + 24))();
          v20 = v40;
          if (!v40)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v38 = 0;
          v20 = v40;
          if (!v40)
          {
            goto LABEL_81;
          }
        }

LABEL_72:
        if (v20 == v39)
        {
          v36 = v35;
          (*(*v20 + 24))(v20, v35);
        }

        else
        {
          v36 = (*(*v20 + 16))(v20);
        }

LABEL_85:
        mlir::OpPrintingFlags::OpPrintingFlags(&v23);
        mlir::PassManager::enableIRPrintingToFileTree();
      }
    }

    else if (*(v19 + 1551))
    {
      goto LABEL_69;
    }

    if (v43)
    {
      if (v43 != &v41)
      {
        v38 = (*(*v43 + 16))();
        v21 = v40;
        if (v40)
        {
          goto LABEL_78;
        }

LABEL_87:
        v36 = 0;
        goto LABEL_96;
      }

      v38 = v37;
      (*(*v43 + 24))();
      v21 = v40;
      if (!v40)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v38 = 0;
      v21 = v40;
      if (!v40)
      {
        goto LABEL_87;
      }
    }

LABEL_78:
    if (v21 == v39)
    {
      v36 = v35;
      v21 = (*(*v21 + 24))(v21, v35);
    }

    else
    {
      v21 = (*(*v21 + 16))(v21);
      v36 = v21;
    }

LABEL_96:
    llvm::errs(v21);
    mlir::OpPrintingFlags::OpPrintingFlags(&v23);
    mlir::PassManager::enableIRPrinting();
  }

  return 1;
}

uint64_t std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_0,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_0>,BOOL ()(mlir::Pass *,mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__value_func<BOOL ()(mlir::Pass *,mlir::Operation *)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1>,BOOL ()(mlir::Pass *,mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286868028;
  a2[1] = v2;
  return result;
}

const mlir::PassRegistryEntry *std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1>,BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = (*(**a2 + 32))();
  result = mlir::PassInfo::lookup(v3, v4, v5);
  if (result)
  {

    return mlir::PassNameCLParser::contains((v2 + 424), result);
  }

  return result;
}

uint64_t std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_1>,BOOL ()(mlir::Pass *,mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_2,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_2>,BOOL ()(mlir::Pass *,mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3>,BOOL ()(mlir::Pass *,mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286868128;
  a2[1] = v2;
  return result;
}

const mlir::PassRegistryEntry *std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3>,BOOL ()(mlir::Pass *,mlir::Operation *)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = (*(**a2 + 32))();
  result = mlir::PassInfo::lookup(v3, v4, v5);
  if (result)
  {

    return mlir::PassNameCLParser::contains((v2 + 432), result);
  }

  return result;
}

uint64_t std::__function::__func<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3,std::allocator<anonymous namespace::PassManagerOptions::addPrinterInstrumentation(mlir::PassManager &)::$_3>,BOOL ()(mlir::Pass *,mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12_GLOBAL__N_118PassManagerOptions25addPrinterInstrumentationERN4mlir11PassManagerEE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::object_deleter<anonymous namespace::PassManagerOptions>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    *(result + 1824) = &unk_2868681A8;
    v2 = result + 2392;
    v3 = *(result + 2416);
    if (v3 == v2)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(v1 + 1976) = &unk_2868682E0;
    v4 = *(v1 + 1992);
    if (v4 != (v1 + 2008))
    {
      free(v4);
    }

    *(v1 + 1824) = &unk_28689F010;
    v5 = *(v1 + 1920);
    if (v5 != *(v1 + 1912))
    {
      free(v5);
    }

    v6 = *(v1 + 1888);
    if (v6 != (v1 + 1904))
    {
      free(v6);
    }

    *(v1 + 1632) = &unk_28689F938;
    v7 = *(v1 + 1816);
    if (v7 == v1 + 1792)
    {
      (*(*v7 + 32))(v7);
      *(v1 + 1632) = &unk_28689F010;
      v8 = *(v1 + 1728);
      if (v8 != *(v1 + 1720))
      {
LABEL_17:
        free(v8);
      }
    }

    else
    {
      if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      *(v1 + 1632) = &unk_28689F010;
      v8 = *(v1 + 1728);
      if (v8 != *(v1 + 1720))
      {
        goto LABEL_17;
      }
    }

    v9 = *(v1 + 1696);
    if (v9 != (v1 + 1712))
    {
      free(v9);
    }

    *(v1 + 1400) = &unk_28689F7C0;
    v10 = *(v1 + 1624);
    if (v10 == v1 + 1600)
    {
      (*(*v10 + 32))(v10);
      *(v1 + 1552) = &unk_28685B750;
      if ((*(v1 + 1583) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v10)
      {
        (*(*v10 + 40))(v10);
      }

      *(v1 + 1552) = &unk_28685B750;
      if ((*(v1 + 1583) & 0x80000000) == 0)
      {
LABEL_24:
        if ((*(v1 + 1551) & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_87;
      }
    }

    operator delete(*(v1 + 1560));
    if ((*(v1 + 1551) & 0x80000000) == 0)
    {
LABEL_25:
      *(v1 + 1400) = &unk_28689F010;
      v11 = *(v1 + 1496);
      if (v11 == *(v1 + 1488))
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_87:
    operator delete(*(v1 + 1528));
    *(v1 + 1400) = &unk_28689F010;
    v11 = *(v1 + 1496);
    if (v11 == *(v1 + 1488))
    {
LABEL_27:
      v12 = *(v1 + 1464);
      if (v12 != (v1 + 1480))
      {
        free(v12);
      }

      *(v1 + 1208) = &unk_28689F938;
      v13 = *(v1 + 1392);
      if (v13 == v1 + 1368)
      {
        (*(*v13 + 32))(v13);
        *(v1 + 1208) = &unk_28689F010;
        v14 = *(v1 + 1304);
        if (v14 != *(v1 + 1296))
        {
LABEL_33:
          free(v14);
        }
      }

      else
      {
        if (v13)
        {
          (*(*v13 + 40))(v13);
        }

        *(v1 + 1208) = &unk_28689F010;
        v14 = *(v1 + 1304);
        if (v14 != *(v1 + 1296))
        {
          goto LABEL_33;
        }
      }

      v15 = *(v1 + 1272);
      if (v15 != (v1 + 1288))
      {
        free(v15);
      }

      *(v1 + 1016) = &unk_28689F938;
      v16 = *(v1 + 1200);
      if (v16 == v1 + 1176)
      {
        (*(*v16 + 32))(v16);
        *(v1 + 1016) = &unk_28689F010;
        v17 = *(v1 + 1112);
        if (v17 != *(v1 + 1104))
        {
LABEL_40:
          free(v17);
        }
      }

      else
      {
        if (v16)
        {
          (*(*v16 + 40))(v16);
        }

        *(v1 + 1016) = &unk_28689F010;
        v17 = *(v1 + 1112);
        if (v17 != *(v1 + 1104))
        {
          goto LABEL_40;
        }
      }

      v18 = *(v1 + 1080);
      if (v18 != (v1 + 1096))
      {
        free(v18);
      }

      *(v1 + 824) = &unk_28689F938;
      v19 = *(v1 + 1008);
      if (v19 == v1 + 984)
      {
        (*(*v19 + 32))(v19);
        *(v1 + 824) = &unk_28689F010;
        v20 = *(v1 + 920);
        if (v20 != *(v1 + 912))
        {
LABEL_47:
          free(v20);
        }
      }

      else
      {
        if (v19)
        {
          (*(*v19 + 40))(v19);
        }

        *(v1 + 824) = &unk_28689F010;
        v20 = *(v1 + 920);
        if (v20 != *(v1 + 912))
        {
          goto LABEL_47;
        }
      }

      v21 = *(v1 + 888);
      if (v21 != (v1 + 904))
      {
        free(v21);
      }

      *(v1 + 632) = &unk_28689F938;
      v22 = *(v1 + 816);
      if (v22 == v1 + 792)
      {
        (*(*v22 + 32))(v22);
        *(v1 + 632) = &unk_28689F010;
        v23 = *(v1 + 728);
        if (v23 != *(v1 + 720))
        {
LABEL_54:
          free(v23);
        }
      }

      else
      {
        if (v22)
        {
          (*(*v22 + 40))(v22);
        }

        *(v1 + 632) = &unk_28689F010;
        v23 = *(v1 + 728);
        if (v23 != *(v1 + 720))
        {
          goto LABEL_54;
        }
      }

      v24 = *(v1 + 696);
      if (v24 != (v1 + 712))
      {
        free(v24);
      }

      *(v1 + 440) = &unk_28689F938;
      v25 = *(v1 + 624);
      if (v25 == v1 + 600)
      {
        (*(*v25 + 32))(v25);
        *(v1 + 440) = &unk_28689F010;
        v26 = *(v1 + 536);
        if (v26 != *(v1 + 528))
        {
LABEL_61:
          free(v26);
        }
      }

      else
      {
        if (v25)
        {
          (*(*v25 + 40))(v25);
        }

        *(v1 + 440) = &unk_28689F010;
        v26 = *(v1 + 536);
        if (v26 != *(v1 + 528))
        {
          goto LABEL_61;
        }
      }

      v27 = *(v1 + 504);
      if (v27 != (v1 + 520))
      {
        free(v27);
      }

      mlir::PassNameCLParser::~PassNameCLParser((v1 + 432));
      mlir::PassNameCLParser::~PassNameCLParser((v1 + 424));
      *(v1 + 232) = &unk_28689F938;
      v28 = *(v1 + 416);
      if (v28 == v1 + 392)
      {
        (*(*v28 + 32))(v28);
        *(v1 + 232) = &unk_28689F010;
        v29 = *(v1 + 328);
        if (v29 != *(v1 + 320))
        {
LABEL_68:
          free(v29);
        }
      }

      else
      {
        if (v28)
        {
          (*(*v28 + 40))(v28);
        }

        *(v1 + 232) = &unk_28689F010;
        v29 = *(v1 + 328);
        if (v29 != *(v1 + 320))
        {
          goto LABEL_68;
        }
      }

      v30 = *(v1 + 296);
      if (v30 != (v1 + 312))
      {
        free(v30);
      }

      *v1 = &unk_28689F7C0;
      v31 = *(v1 + 224);
      if (v31 == v1 + 200)
      {
        (*(*v31 + 32))(v31);
        *(v1 + 152) = &unk_28685B750;
        if ((*(v1 + 183) & 0x80000000) == 0)
        {
          goto LABEL_75;
        }
      }

      else
      {
        if (v31)
        {
          (*(*v31 + 40))(v31);
        }

        *(v1 + 152) = &unk_28685B750;
        if ((*(v1 + 183) & 0x80000000) == 0)
        {
LABEL_75:
          if ((*(v1 + 151) & 0x80000000) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_103;
        }
      }

      operator delete(*(v1 + 160));
      if ((*(v1 + 151) & 0x80000000) == 0)
      {
LABEL_76:
        *v1 = &unk_28689F010;
        v32 = *(v1 + 96);
        if (v32 == *(v1 + 88))
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      }

LABEL_103:
      operator delete(*(v1 + 128));
      *v1 = &unk_28689F010;
      v32 = *(v1 + 96);
      if (v32 == *(v1 + 88))
      {
LABEL_78:
        v33 = *(v1 + 64);
        if (v33 != (v1 + 80))
        {
          free(v33);
        }

        JUMPOUT(0x259C63180);
      }

LABEL_77:
      free(v32);
      goto LABEL_78;
    }

LABEL_26:
    free(v11);
    goto LABEL_27;
  }

  return result;
}

uint64_t llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::opt<char [36],llvm::cl::desc>(uint64_t a1, const char *a2, _OWORD *a3)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v7 = *(a1 + 72);
  if (v7 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v7) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 152) = &unk_28689F108;
  *(a1 + 160) = 0;
  *a1 = &unk_28689F7C0;
  *(a1 + 192) = &unk_28689F5B8;
  *(a1 + 200) = &unk_28685B770;
  *(a1 + 224) = a1 + 200;
  v8 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v8);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [36],llvm::cl::desc,llvm::cl::initializer<BOOL>>(uint64_t a1, const char *a2, _OWORD *a3, _BYTE **a4)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28685B4A0;
  *(a1 + 144) = 0;
  *a1 = &unk_28689F938;
  *(a1 + 152) = &unk_28689F1F8;
  *(a1 + 160) = &unk_28685B4C0;
  *(a1 + 184) = a1 + 160;
  v10 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v10);
  *(a1 + 32) = *a3;
  v11 = *a4;
  *(a1 + 128) = **a4;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v11;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [21],llvm::cl::desc>(uint64_t a1, const char *a2, _OWORD *a3)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v7 = *(a1 + 72);
  if (v7 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v7) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28685B4A0;
  *(a1 + 144) = 0;
  *a1 = &unk_28689F938;
  *(a1 + 152) = &unk_28689F1F8;
  *(a1 + 160) = &unk_28685B4C0;
  *(a1 + 184) = a1 + 160;
  v8 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v8);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::opt<char [29],llvm::cl::desc,llvm::cl::initializer<mlir::PassDisplayMode>,llvm::cl::ValuesClass>(uint64_t a1, const char *a2, _OWORD *a3, int **a4, uint64_t *a5)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_286868258;
  *(a1 + 144) = 0;
  *a1 = &unk_2868681A8;
  *(a1 + 152) = &unk_2868682E0;
  *(a1 + 160) = a1;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x800000000;
  *(a1 + 568) = &unk_286868348;
  *(a1 + 592) = a1 + 568;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  *(a1 + 32) = *a3;
  v13 = **a4;
  *(a1 + 128) = v13;
  *(a1 + 148) = 1;
  *(a1 + 144) = v13;
  v14 = *(a5 + 2);
  if (v14)
  {
    v15 = *a5;
    v16 = v15 + 40 * v14;
    do
    {
      llvm::cl::parser<mlir::PassDisplayMode>::addLiteralOption<int>(a1 + 152, *v15, *(v15 + 8), (v15 + 16), *(v15 + 24), *(v15 + 32));
      v15 += 40;
    }

    while (v15 != v16);
  }

  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = a1;
  v23 = 0;
  v8 = *(*(a1 + 160) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(a1 + 168);
    v13 = 0;
    v14 = (v12 + 8);
    if (a4)
    {
      v15 = (v12 + 8);
      while (1)
      {
        v16 = *v15;
        v15 += 6;
        if (v16 == a4)
        {
          a1 = memcmp(*(v14 - 1), a3, a4);
          if (!a1)
          {
            break;
          }
        }

        ++v13;
        v14 = v15;
        if (v11 == v13)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      while (1)
      {
        v17 = *v14;
        v14 += 6;
        if (!v17)
        {
          break;
        }

        if (v11 == ++v13)
        {
          goto LABEL_17;
        }
      }
    }

    v18 = *(v12 + 48 * v13 + 40);
    v23 = v18;
  }

  else
  {
LABEL_17:
    v25 = 1283;
    v24[0] = "Cannot find option named '";
    v24[2] = a3;
    v24[3] = a4;
    v26[0] = v24;
    v26[2] = "'!";
    v27 = 770;
    v19 = llvm::errs(a1);
    if (llvm::cl::Option::error(v7, v26, 0, 0, v19))
    {
      return 1;
    }

    v18 = 0;
  }

  *(v7 + 128) = v18;
  *(v7 + 12) = a2;
  v21 = *(v7 + 592);
  if (v21)
  {
    (*(*v21 + 48))(v21, &v23);
    return 0;
  }

  else
  {
    v22 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::getValueExpectedFlagDefault(v22);
  }
}

uint64_t llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void *llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::~opt(void *a1)
{
  *a1 = &unk_2868681A8;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_2868682E0;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_28689F010;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  return a1;
}

void llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::~opt(void *a1)
{
  *a1 = &unk_2868681A8;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_2868682E0;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_28689F010;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  JUMPOUT(0x259C63180);
}

void *llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::printOptionValue(void *result, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 148) != 1 || *(result + 36) != *(result + 32))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6 = &unk_286868258;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 19), result, &v6, (result + 17), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::getExtraOptionNames(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 160) + 24))
  {
    v3 = result + 152;
    result = (*(*(result + 152) + 16))(result + 152);
    if (result)
    {
      v4 = result;
      v5 = 0;
      do
      {
        result = (*(*v3 + 24))(v3, v5);
        v7 = *(a2 + 8);
        if (v7 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = (*a2 + 16 * v7);
        *v8 = result;
        v8[1] = v6;
        ++*(a2 + 8);
        v5 = (v5 + 1);
      }

      while (v4 != v5);
    }
  }

  return result;
}

void *llvm::cl::parser<mlir::PassDisplayMode>::~parser(void *result)
{
  *result = &unk_2868682E0;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void llvm::cl::parser<mlir::PassDisplayMode>::~parser(void *a1)
{
  *a1 = &unk_2868682E0;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t std::__function::__func<llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::{lambda(mlir::PassDisplayMode const&)#1},std::allocator<llvm::cl::opt<mlir::PassDisplayMode,false,llvm::cl::parser<mlir::PassDisplayMode>>::{lambda(mlir::PassDisplayMode const&)#1}>,void ()(mlir::PassDisplayMode const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000002573727D2)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000002573727D2 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002573727D2))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002573727D2 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::cl::parser<mlir::PassDisplayMode>::addLiteralOption<int>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  *&v14 = a5;
  *(&v14 + 1) = a6;
  v15 = &unk_286868258;
  v17 = 1;
  v16 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8 >= *(a1 + 28))
  {
    if (v7 > &v13 || v7 + 48 * v8 <= &v13)
    {
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::PassDisplayMode>::OptionInfo,false>::grow();
    }

    llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::PassDisplayMode>::OptionInfo,false>::grow();
  }

  v9 = v7 + 48 * *(a1 + 24);
  v10 = v14;
  *v9 = v13;
  *(v9 + 16) = v10;
  *(v9 + 32) = &unk_2868682C0;
  v11 = v16;
  *(v9 + 44) = v17;
  *(v9 + 40) = v11;
  *(v9 + 32) = &unk_286868258;
  ++*(a1 + 24);
  return llvm::cl::AddLiteralOption(*(a1 + 8), a2, a3);
}

void mlir::printRegisteredPasses(mlir *this)
{
  v36[32] = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
  {
    v1 = *_MergedGlobals_1[0];
    v2 = *(_MergedGlobals_1[0] + 8);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_57:
    v3 = v1;
    v8 = &v1[v2];
    if (v1 != v8)
    {
      goto LABEL_13;
    }

LABEL_58:
    v9 = 0;
    if (atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_1, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  v1 = *_MergedGlobals_1[0];
  v2 = *(_MergedGlobals_1[0] + 8);
  if (!v2)
  {
    goto LABEL_57;
  }

LABEL_3:
  v3 = v1;
  if (*v1)
  {
    v4 = *v1 == -8;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    do
    {
      v6 = v3[1];
      ++v3;
      v5 = v6;
      if (v6)
      {
        v7 = v5 == -8;
      }

      else
      {
        v7 = 1;
      }
    }

    while (v7);
  }

  v8 = &v1[v2];
  if (v3 == v8)
  {
    goto LABEL_58;
  }

LABEL_13:
  v9 = 0;
  v10 = *v3;
  do
  {
    v32 = &v33;
    v33 = 0;
    __base = llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::getOptionWidth(void)::$_0>;
    v35 = &v32;
    v11 = *(v10 + 112);
    if (!v11)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    this = (*(*v11 + 48))(v11, &__base);
    do
    {
      v12 = v3[1];
      ++v3;
      v10 = v12;
      if (v12)
      {
        v13 = v10 == -8;
      }

      else
      {
        v13 = 1;
      }
    }

    while (v13);
    if (v9 <= v33 + 4)
    {
      v9 = v33 + 4;
    }
  }

  while (v3 != v8);
  if (!atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
  {
LABEL_59:
    llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_1, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  }

LABEL_24:
  v14 = *_MergedGlobals_1[0];
  v15 = *(_MergedGlobals_1[0] + 8);
  __base = v36;
  v35 = 0x2000000000;
  v16 = v14;
  if (v15)
  {
    while (!*v16 || *v16 == -8)
    {
      ++v16;
    }
  }

  v18 = &v14[v15];
  if (v16 != v18)
  {
    LODWORD(v19) = 0;
    v20 = *v16;
    do
    {
      if (v19 >= HIDWORD(v35))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(__base + v19) = v20 + 8;
      v19 = (v35 + 1);
      LODWORD(v35) = v35 + 1;
      do
      {
        v21 = v16[1];
        ++v16;
        v20 = v21;
        if (v21)
        {
          v22 = v20 == -8;
        }

        else
        {
          v22 = 1;
        }
      }

      while (v22);
    }

    while (v16 != v18);
    if (v19 >= 2)
    {
      qsort(__base, v19, 8uLL, _ZZZN4mlir21printRegisteredPassesEvENK3__0clIN4llvm9StringMapINS_8PassInfoENS2_15MallocAllocatorEEEEEDaNS2_9StringRefERT_ENUlPKPNS_17PassRegistryEntryESE_E_8__invokeESE_SE_);
    }
  }

  v23 = llvm::outs(this);
  v24 = llvm::raw_ostream::indent(v23, 0);
  v25 = v24[4];
  if ((v24[3] - v25) <= 5)
  {
    v24 = llvm::raw_ostream::write(v24, "Passes", 6uLL);
    v26 = v24[4];
    if (v24[3] - v26 > 1uLL)
    {
      goto LABEL_46;
    }

LABEL_49:
    llvm::raw_ostream::write(v24, ":\n", 2uLL);
    v27 = __base;
    v28 = v35;
    if (!v35)
    {
      goto LABEL_53;
    }

LABEL_50:
    v30 = 8 * v28;
    do
    {
      v31 = *v27++;
      mlir::PassRegistryEntry::printHelpStr(v31, 2, v9);
      v30 -= 8;
    }

    while (v30);
    v27 = __base;
    goto LABEL_53;
  }

  *(v25 + 4) = 29541;
  *v25 = 1936941392;
  v29 = v24[3];
  v26 = (v24[4] + 6);
  v24[4] = v26;
  if ((v29 - v26) <= 1)
  {
    goto LABEL_49;
  }

LABEL_46:
  *v26 = 2618;
  v24[4] += 2;
  v27 = __base;
  v28 = v35;
  if (v35)
  {
    goto LABEL_50;
  }

LABEL_53:
  if (v27 != v36)
  {
    free(v27);
  }
}

uint64_t mlir::PassRegistryEntry::getOptionWidth(mlir::PassRegistryEntry *this)
{
  v6 = &v7;
  v7 = 0;
  v8[0] = llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::getOptionWidth(void)::$_0>;
  v8[1] = &v6;
  v1 = *(this + 13);
  if (v1)
  {
    (*(*v1 + 48))(v1, v8);
    return v7;
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    return mlir::PassRegistryEntry::printHelpStr(v3, v4, v5);
  }
}

uint64_t mlir::PassRegistryEntry::printHelpStr(mlir::PassRegistryEntry *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 23);
  if (v6 >= 0)
  {
    v7 = this;
  }

  else
  {
    v7 = *this;
  }

  if (v6 >= 0)
  {
    v8 = *(this + 23);
  }

  else
  {
    v8 = *(this + 1);
  }

  v9 = *(this + 47);
  if (v9 >= 0)
  {
    v10 = this + 24;
  }

  else
  {
    v10 = *(this + 3);
  }

  if (v9 >= 0)
  {
    v11 = *(this + 47);
  }

  else
  {
    v11 = *(this + 4);
  }

  v12 = a3 - a2;
  v13 = llvm::outs(this);
  v14 = llvm::raw_ostream::indent(v13, a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 11565;
    *(v14 + 4) += 2;
  }

  else
  {
    v14 = llvm::raw_ostream::write(v14, "--", 2uLL);
  }

  v28 = v7;
  v29 = v8;
  v30 = v12 - 4;
  v31 = 1;
  v16 = llvm::raw_ostream::operator<<(v14, &v28);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 3uLL)
  {
    *v17 = 538976301;
    v20 = *(v16 + 3);
    v18 = (*(v16 + 4) + 4);
    *(v16 + 4) = v18;
    if (v11 <= v20 - v18)
    {
LABEL_18:
      if (v11)
      {
        v19 = v16;
        memcpy(v18, v10, v11);
        v16 = v19;
        v18 = (*(v19 + 4) + v11);
        *(v19 + 4) = v18;
      }

      if (v18 < *(v16 + 3))
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v16 = llvm::raw_ostream::write(v16, "-   ", 4uLL);
    v18 = *(v16 + 4);
    if (v11 <= *(v16 + 3) - v18)
    {
      goto LABEL_18;
    }
  }

  v16 = llvm::raw_ostream::write(v16, v10, v11);
  v18 = *(v16 + 4);
  if (v18 < *(v16 + 3))
  {
LABEL_21:
    *(v16 + 4) = v18 + 1;
    *v18 = 10;
    goto LABEL_25;
  }

LABEL_24:
  llvm::raw_ostream::write(v16, 10);
LABEL_25:
  v27[0] = a2;
  v27[1] = a3;
  v28 = llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::printHelpStr(unsigned long,unsigned long)::$_0>;
  v29 = v27;
  v21 = *(this + 13);
  if (v21)
  {
    return (*(*v21 + 48))(v21, &v28);
  }

  v23 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::registerPassPipeline(v23, v24, v25, v26);
}

void mlir::registerPassPipeline(void *a1, size_t __len, void *__src, size_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = *(a6 + 24);
  if (!v11)
  {
    v18 = 0;
    goto LABEL_5;
  }

  if (v11 != a6)
  {
    v18 = *(a6 + 24);
    *(a6 + 24) = 0;
    goto LABEL_7;
  }

  v18 = v17;
  (*(*v11 + 24))(v11, v17);
  v11 = v18;
  if (!v18)
  {
LABEL_5:
    v28 = 0;
    goto LABEL_10;
  }

LABEL_7:
  if (v11 == v17)
  {
    v28 = v27;
    (*(*v11 + 24))(v11, v27);
  }

  else
  {
    v28 = v11;
    v18 = 0;
  }

LABEL_10:
  mlir::PassRegistryEntry::PassRegistryEntry(__dst, a1, __len, __src, a4, a5, v27);
  if (v28 == v27)
  {
    (*(*v28 + 32))(v28);
    v13 = v18;
    if (v18 != v17)
    {
      goto LABEL_14;
    }

LABEL_27:
    (*(*v13 + 32))(v13);
    if (atomic_load_explicit(qword_27F874190, memory_order_acquire))
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (v28)
  {
    (*(*v28 + 40))(v28);
  }

  v13 = v18;
  if (v18 == v17)
  {
    goto LABEL_27;
  }

LABEL_14:
  if (v13)
  {
    (*(*v13 + 40))(v13);
  }

  if (!atomic_load_explicit(qword_27F874190, memory_order_acquire))
  {
LABEL_28:
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F874190, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
  }

LABEL_17:
  v14 = qword_27F874190[0];
  v15 = llvm::StringMapImpl::hash(a1, __len, v12);
  llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>::try_emplace_with_hash<mlir::PassPipelineInfo&>(v14, a1, __len, v15, __dst);
  if (v26 == &v25)
  {
    (*(*v26 + 32))(v26);
    v16 = v24;
    if (v24 != v23)
    {
      goto LABEL_21;
    }

LABEL_30:
    (*(*v16 + 32))(v16);
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  if (v26)
  {
    (*(*v26 + 40))();
  }

  v16 = v24;
  if (v24 == v23)
  {
    goto LABEL_30;
  }

LABEL_21:
  if (v16)
  {
    (*(*v16 + 40))(v16);
  }

  if ((v22 & 0x80000000) == 0)
  {
LABEL_24:
    if ((v20 & 0x80000000) == 0)
    {
      return;
    }

LABEL_32:
    operator delete(__dst[0]);
    return;
  }

LABEL_31:
  operator delete(__p);
  if (v20 < 0)
  {
    goto LABEL_32;
  }
}

void mlir::PassInfo::PassInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = *(a6 + 24);
  if (v6)
  {
    if (v6 == a6)
    {
      v8 = v7;
      (*(*v6 + 24))(v6, v7);
    }

    else
    {
      v8 = (*(*v6 + 16))(v6);
    }
  }

  else
  {
    v8 = 0;
  }

  operator new();
}

_BYTE *mlir::PassRegistryEntry::PassRegistryEntry(_BYTE *__dst, const void *a2, size_t __len, void *__src, size_t a5, uint64_t a6, uint64_t a7)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_23;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, a2, __len);
  }

  __dst[__len] = 0;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_23:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a5 >= 0x17)
  {
    operator new();
  }

  v14 = __dst + 24;
  __dst[47] = a5;
  if (!a5)
  {
    *v14 = 0;
    v15 = *(a6 + 24);
    if (v15)
    {
      goto LABEL_11;
    }

LABEL_16:
    *(__dst + 9) = 0;
    v16 = *(a7 + 24);
    if (v16)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  memmove(v14, __src, a5);
  v14[a5] = 0;
  v15 = *(a6 + 24);
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (v15 == a6)
  {
    *(__dst + 9) = __dst + 48;
    (*(**(a6 + 24) + 24))(*(a6 + 24));
    v16 = *(a7 + 24);
    if (v16)
    {
      goto LABEL_17;
    }

LABEL_20:
    *(__dst + 13) = 0;
    return __dst;
  }

  *(__dst + 9) = (*(*v15 + 16))(v15);
  v16 = *(a7 + 24);
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v16 == a7)
  {
    *(__dst + 13) = __dst + 80;
    (*(**(a7 + 24) + 24))(*(a7 + 24));
  }

  else
  {
    *(__dst + 13) = v16;
    *(a7 + 24) = 0;
  }

  return __dst;
}

void mlir::registerPass(uint64_t a1)
{
  v19[14] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 48))(&v18);
    v3 = (*(*v18 + 32))(v18);
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      v7 = (*(*v18 + 40))(v18);
      mlir::PassInfo::PassInfo(v19, v5, v6, v7, v8, a1);
    }
  }

  else
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v15 = "Trying to register '";
  v16 = 259;
  v9 = (*(*v18 + 16))(v18);
  v14 = 261;
  v13[0] = v9;
  v13[1] = v10;
  llvm::operator+(&v15, v13, v17);
  v12 = 259;
  llvm::operator+(v17, &v11, v19);
  llvm::report_fatal_error(v19, 1);
}

uint64_t mlir::PassInfo::lookup(unsigned int *a1, unint64_t a2, const unsigned __int8 *a3)
{
  if (!atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_1, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  }

  v5 = _MergedGlobals_1[0];
  v6 = llvm::StringMapImpl::hash(a1, a2, a3);
  Key = llvm::StringMapImpl::FindKey(v5, a1, a2, v6);
  v8 = *v5;
  if (Key != -1)
  {
    v9 = (v8 + 8 * Key);
    if (atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
    {
      goto LABEL_5;
    }

LABEL_8:
    llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_1, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
    if (v9 != (*_MergedGlobals_1[0] + 8 * *(_MergedGlobals_1[0] + 8)))
    {
      return *v9 + 8;
    }

    return 0;
  }

  v9 = (v8 + 8 * *(v5 + 8));
  if (!atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v9 != (*_MergedGlobals_1[0] + 8 * *(_MergedGlobals_1[0] + 8)))
  {
    return *v9 + 8;
  }

  return 0;
}

uint64_t mlir::PassPipelineInfo::lookup(unsigned int *a1, unint64_t a2, const unsigned __int8 *a3)
{
  if (!atomic_load_explicit(qword_27F874190, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F874190, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
  }

  v5 = qword_27F874190[0];
  v6 = llvm::StringMapImpl::hash(a1, a2, a3);
  Key = llvm::StringMapImpl::FindKey(v5, a1, a2, v6);
  v8 = *v5;
  if (Key != -1)
  {
    v9 = (v8 + 8 * Key);
    if (atomic_load_explicit(qword_27F874190, memory_order_acquire))
    {
      goto LABEL_5;
    }

LABEL_8:
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F874190, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
    if (v9 != (*qword_27F874190[0] + 8 * *(qword_27F874190[0] + 8)))
    {
      return *v9 + 8;
    }

    return 0;
  }

  v9 = (v8 + 8 * *(v5 + 8));
  if (!atomic_load_explicit(qword_27F874190, memory_order_acquire))
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v9 != (*qword_27F874190[0] + 8 * *(qword_27F874190[0] + 8)))
  {
    return *v9 + 8;
  }

  return 0;
}

uint64_t mlir::detail::pass_options::parseCommaSeparatedList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, unsigned __int8 *, uint64_t), uint64_t a7)
{
  v9 = a5;
  v28 = *MEMORY[0x277D85DE8];
  v24 = a4;
  v25 = a5;
  v26[0] = v26;
  v27 = llvm::detail::UniqueFunctionBase<unsigned long,llvm::StringRef,unsigned long,char>::CallbacksHolder<mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0,mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0,void>::Callbacks + 2;
  v10 = (llvm::detail::UniqueFunctionBase<unsigned long,llvm::StringRef,unsigned long,char>::CallbacksHolder<mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0,mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0,void>::Callbacks[0])(v26, a4, a5, 0, 0x2Cu);
  if (v10 == -1)
  {
LABEL_11:
    ArgAndUpdateOptions = extractArgAndUpdateOptions(&v24, v9);
    result = a6(a7, ArgAndUpdateOptions, v19);
    v21 = v27;
    if (v27 < 8)
    {
      return result;
    }

    goto LABEL_14;
  }

  v11 = v10;
  while (1)
  {
    v12 = extractArgAndUpdateOptions(&v24, v11);
    if ((a6(a7, v12, v13) & 1) == 0)
    {
      break;
    }

    v15 = v25 != 0;
    if (v25)
    {
      v16 = v24 + 1;
    }

    else
    {
      v16 = v24;
    }

    v9 = v25 - v15;
    v24 = v16;
    v25 -= v15;
    if ((v27 & 2) != 0)
    {
      v17 = v26;
    }

    else
    {
      v17 = v26[0];
    }

    v11 = (*(v27 & 0xFFFFFFFFFFFFFFF8))(v17, v16, v9, 0, 0x2Cu);
    if (v11 == -1)
    {
      goto LABEL_11;
    }
  }

  result = 0;
  v21 = v27;
  if (v27 >= 8)
  {
LABEL_14:
    if ((v21 & 4) != 0)
    {
      v22 = v26[0];
      if ((v21 & 2) != 0)
      {
        v22 = v26;
      }

      v23 = result;
      (*((v21 & 0xFFFFFFFFFFFFFFF8) + 16))(v22, v14);
      result = v23;
    }

    if ((v21 & 2) == 0)
    {
      llvm::deallocate_buffer(v26[0], v26[1]);
    }
  }

  return result;
}

unsigned __int8 *extractArgAndUpdateOptions(llvm::StringRef *a1, unint64_t a2)
{
  v4 = *(a1 + 1);
  if (v4 >= a2)
  {
    v4 = a2;
  }

  v23 = *a1;
  v24 = v4;
  first_not_of = llvm::StringRef::find_first_not_of(&v23, " \t\n\v\f\r", 6, 0);
  if (first_not_of >= v24)
  {
    v6 = v24;
  }

  else
  {
    v6 = first_not_of;
  }

  v7 = v24 - v6;
  v25 = &v23[v6];
  v26 = v24 - v6;
  last_not_of = llvm::StringRef::find_last_not_of(&v25, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v25;
  if (last_not_of + 1 < v26)
  {
    v10 = last_not_of + 1;
  }

  else
  {
    v10 = v26;
  }

  v11 = v26 - v7 + v10;
  if (v26 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v26;
  }

  v13 = *(a1 + 1);
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = *(a1 + 1);
  }

  v25 = (*a1 + v14);
  v26 = v13 - v14;
  v15 = llvm::StringRef::find_first_not_of(&v25, " \t\n\v\f\r", 6, 0);
  v16 = v26;
  if (v15 >= v26)
  {
    v17 = v26;
  }

  else
  {
    v17 = v15;
  }

  *a1 = &v25[v17];
  *(a1 + 1) = v16 - v17;
  if (v12 >= 3)
  {
    v18 = *v9;
    v19 = &v9[v12];
    if (v18 == 34)
    {
      if (*(v19 - 1) != 34)
      {
        return v9;
      }
    }

    else if (v18 == 123)
    {
      if (*(v19 - 1) != 125)
      {
        return v9;
      }
    }

    else if (v18 != 39 || *(v19 - 1) != 39)
    {
      return v9;
    }

    v23 = v9 + 1;
    v24 = v12 - 2;
    v20 = llvm::StringRef::find_first_not_of(&v23, " \t\n\v\f\r", 6, 0);
    if (v20 >= v24)
    {
      v21 = v24;
    }

    else
    {
      v21 = v20;
    }

    v25 = &v23[v21];
    v26 = v24 - v21;
    llvm::StringRef::find_last_not_of(&v25, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
    return v25;
  }

  return v9;
}

uint64_t mlir::detail::PassOptions::copyOptionValuesFrom(uint64_t result, uint64_t a2)
{
  v2 = *(result + 160);
  v3 = *(result + 168);
  if (v2 != v3)
  {
    v4 = *(a2 + 160);
    v5 = *(a2 + 168);
    if (v4 != v5)
    {
      v6 = v4 + 8;
      v7 = v2 + 8;
      do
      {
        result = (*(**(v7 - 8) + 40))(*(v7 - 8), *(v6 - 8));
        if (v7 == v3)
        {
          break;
        }

        v7 += 8;
        v8 = v6 == v5;
        v6 += 8;
      }

      while (!v8);
    }
  }

  return result;
}

uint64_t mlir::detail::PassOptions::parseFromString(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (!a3)
  {
    return 1;
  }

  v5 = a3;
  while (2)
  {
    v8 = 0;
    v47 = a2;
    v48 = v5;
    do
    {
      v9 = *(a2 + v8);
      if (v9 == 61)
      {
        ArgAndUpdateOptions = extractArgAndUpdateOptions(&v47, v8);
        v13 = v16;
        v17 = v48;
        v18 = v48 != 0;
        if (v48)
        {
          v19 = v47 + 1;
        }

        else
        {
          v19 = v47;
        }

        v20 = v48 - v18;
        v47 = v19;
        v48 -= v18;
        if (v17 < 2)
        {
          v21 = 0;
          goto LABEL_58;
        }

        v21 = 0;
        while (1)
        {
          v24 = *(v19 + v21);
          switch(v24)
          {
            case '""':
              v36 = v21 + 1;
              if (v20 > v21 + 1)
              {
                v37 = 34;
LABEL_17:
                v22 = memchr((v19 + v36), v37, v20 - v36);
                v23 = &v22[-v19] == -1 || v22 == 0;
                if (!v23)
                {
                  v21 = &v22[-v19];
                }
              }

              break;
            case '\'':
              v36 = v21 + 1;
              if (v20 > v21 + 1)
              {
                v37 = 39;
                goto LABEL_17;
              }

              break;
            case ' ':
              goto LABEL_58;
            default:
              v25 = (v21 + 1);
              if (v24 == 123 && v25 != v20)
              {
                v27 = 1;
                do
                {
                  v28 = v25[v19];
                  if (v28 > 0x7A)
                  {
                    if (v28 == 123)
                    {
                      ++v27;
                    }

                    else if (v28 == 125 && !--v27)
                    {
                      goto LABEL_22;
                    }
                  }

                  else
                  {
                    if (v28 != 34)
                    {
                      v23 = v28 == 39;
                      v29 = v21 + 2;
                      if (!v23 || v20 <= v29)
                      {
                        goto LABEL_32;
                      }

                      v31 = v20 - v29;
                      v32 = (v19 + v29);
                      v33 = 39;
                      goto LABEL_47;
                    }

                    v31 = v20 - (v21 + 2);
                    if (v20 > v21 + 2)
                    {
                      v32 = (v19 + v21 + 2);
                      v33 = 34;
LABEL_47:
                      v34 = memchr(v32, v33, v31);
                      if (&v34[-v19] != -1 && v34 != 0)
                      {
                        v25 = &v34[-v19];
                      }
                    }
                  }

LABEL_32:
                  v21 = v25++;
                }

                while (v25 != v20);
              }

              break;
          }

LABEL_22:
          if (++v21 == v20)
          {
            v21 = v20;
LABEL_58:
            v15 = extractArgAndUpdateOptions(&v47, v21);
            v14 = v38;
            a2 = v47;
            v5 = v48;
            if (!v13)
            {
              goto LABEL_3;
            }

LABEL_59:
            v39 = llvm::StringMapImpl::hash(ArgAndUpdateOptions, v13, v10);
            Key = llvm::StringMapImpl::FindKey((a1 + 128), ArgAndUpdateOptions, v13, v39);
            if (Key != -1 && Key != *(a1 + 136))
            {
              if ((llvm::cl::ProvidePositionalOption(*(*(*(a1 + 128) + 8 * Key) + 8), v15, v14, 0) & 1) == 0)
              {
                goto LABEL_3;
              }

              return 0;
            }

            v42 = a4[4];
            if (a4[3] - v42 > 0x25uLL)
            {
              qmemcpy(v42, "<Pass-Options-Parser>: no such option ", 38);
              v46 = a4[3];
              v43 = (a4[4] + 38);
              a4[4] = v43;
              if (v13 <= v46 - v43)
              {
LABEL_66:
                memcpy(v43, ArgAndUpdateOptions, v13);
                v44 = a4[3];
                v45 = (a4[4] + v13);
                a4[4] = v45;
                if (v44 != v45)
                {
LABEL_67:
                  result = 0;
                  *v45 = 10;
                  ++a4[4];
                  return result;
                }

LABEL_71:
                llvm::raw_ostream::write(a4, "\n", 1uLL);
                return 0;
              }
            }

            else
            {
              a4 = llvm::raw_ostream::write(a4, "<Pass-Options-Parser>: no such option ", 0x26uLL);
              v43 = a4[4];
              if (v13 <= a4[3] - v43)
              {
                goto LABEL_66;
              }
            }

            a4 = llvm::raw_ostream::write(a4, ArgAndUpdateOptions, v13);
            v45 = a4[4];
            if (a4[3] != v45)
            {
              goto LABEL_67;
            }

            goto LABEL_71;
          }
        }
      }

      if (v9 == 32)
      {
        goto LABEL_9;
      }

      ++v8;
    }

    while (v5 != v8);
    v8 = v5;
LABEL_9:
    ArgAndUpdateOptions = extractArgAndUpdateOptions(&v47, v8);
    v13 = v12;
    v14 = 0;
    v15 = 0;
    a2 = v47;
    v5 = v48;
    if (v12)
    {
      goto LABEL_59;
    }

LABEL_3:
    if (v5)
    {
      continue;
    }

    return 1;
  }
}

void mlir::detail::PassOptions::print(mlir::detail::PassOptions *this, llvm::raw_ostream *a2)
{
  v26[2] = *MEMORY[0x277D85DE8];
  if (*(this + 35))
  {
    v4 = *(this + 20);
    v3 = *(this + 21);
    v5 = v3 - v4;
    if (((v3 - v4) >> 3) >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v4 != v3)
    {
      v6 = &v24;
      if (v5 - 8 < 0x38)
      {
        goto LABEL_29;
      }

      if ((&v24 - v4) < 0x20)
      {
        goto LABEL_29;
      }

      v7 = ((v5 - 8) >> 3) + 1;
      v8 = 8 * (v7 & 0x3FFFFFFFFFFFFFFCLL);
      v6 = (&v24 + v8);
      v9 = &v4[v8];
      v10 = (v4 + 16);
      v11 = v26;
      v12 = v7 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      v4 = v9;
      if (v7 != (v7 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_29:
        do
        {
          v14 = *v4;
          v4 += 8;
          *v6++ = v14;
        }

        while (v4 != v3);
      }
    }

    v15 = (v5 >> 3);
    v23 = v15;
    if (v15 >= 2)
    {
      qsort(&v24, v15, 8uLL, mlir::detail::PassOptions::print(llvm::raw_ostream &)const::$_0::__invoke);
    }

    v16 = *(a2 + 4);
    if (v16 >= *(a2 + 3))
    {
      llvm::raw_ostream::write(a2, 123);
      v17 = v23;
      if (!v23)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(a2 + 4) = v16 + 1;
      *v16 = 123;
      v17 = v23;
      if (!v23)
      {
LABEL_18:
        v18 = *(a2 + 4);
        if (v18 >= *(a2 + 3))
        {
          llvm::raw_ostream::write(a2, 125);
        }

        else
        {
          *(a2 + 4) = v18 + 1;
          *v18 = 125;
        }

        return;
      }
    }

    (*(*v24 + 24))(v24, a2);
    if (v17 != 1)
    {
      v19 = &v25;
      v20 = 8 * v17 - 8;
      do
      {
        v22 = *(a2 + 4);
        if (*(a2 + 3) == v22)
        {
          llvm::raw_ostream::write(a2, " ", 1uLL);
        }

        else
        {
          *v22 = 32;
          ++*(a2 + 4);
        }

        v21 = *v19++;
        (*(*v21 + 24))(v21, a2);
        v20 -= 8;
      }

      while (v20);
    }

    goto LABEL_18;
  }
}

void mlir::detail::PassOptions::printHelp(mlir::detail::PassOptions *this, uint64_t a2, uint64_t a3)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v6 = *(this + 20);
  v5 = *(this + 21);
  v7 = v5 - v6;
  if (((v5 - v6) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = v25;
  if (v6 != v5)
  {
    v9 = v25;
    if (v7 - 8 < 0x38)
    {
      goto LABEL_17;
    }

    if ((v25 - v6) < 0x20)
    {
      goto LABEL_17;
    }

    v10 = ((v7 - 8) >> 3) + 1;
    v11 = 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL);
    v9 = &v25[v11];
    v12 = &v6[v11];
    v13 = (v6 + 16);
    v14 = v26;
    v15 = v10 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v16 = *v13;
      *(v14 - 1) = *(v13 - 1);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    v6 = v12;
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_17:
      do
      {
        v17 = *v6;
        v6 += 8;
        *v9 = v17;
        v9 += 8;
      }

      while (v6 != v5);
    }
  }

  v18 = (v7 >> 3);
  v24 = v18;
  if (v18 >= 2)
  {
    qsort(v25, v18, 8uLL, mlir::detail::PassOptions::printHelp(unsigned long,unsigned long)const::$_0::__invoke);
    v8 = v25;
    LODWORD(v18) = v24;
  }

  if (v18)
  {
    v19 = a3 - a2;
    v20 = 8 * v18;
    do
    {
      v21 = *v8++;
      v22 = llvm::outs(this);
      llvm::raw_ostream::indent(v22, a2);
      v23 = (*(*v21 + 32))(v21);
      this = (*(*v23 + 48))(v23, v19);
      v20 -= 8;
    }

    while (v20);
  }
}

unint64_t mlir::detail::PassOptions::getOptionWidth(mlir::detail::PassOptions *this)
{
  v1 = *(this + 20);
  v2 = *(this + 21);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v5 = (*(*v4 + 32))(v4);
    v6 = (*(*v5 + 40))(v5);
    if (v3 <= v6)
    {
      v3 = v6;
    }
  }

  while (v1 != v2);
  return v3;
}

void *llvm::cl::OptionValue<mlir::OpPassManager>::OptionValue(void *result)
{
  *result = &unk_2868683D8;
  result[1] = 0;
  return result;
}

{
  *result = &unk_2868683D8;
  result[1] = 0;
  return result;
}

void llvm::cl::OptionValue<mlir::OpPassManager>::OptionValue(void *a1)
{
  *a1 = &unk_2868683D8;
  a1[1] = 0;
  operator new();
}

{
  *a1 = &unk_2868683D8;
  a1[1] = 0;
  operator new();
}

void llvm::cl::OptionValue<mlir::OpPassManager>::setValue(uint64_t a1)
{
  if (*(a1 + 8))
  {

    mlir::OpPassManager::operator=();
  }

  operator new();
}

void *llvm::cl::OptionValue<mlir::OpPassManager>::OptionValue(void *result, uint64_t a2)
{
  *result = &unk_2868683D8;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

{
  *result = &unk_2868683D8;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

void llvm::cl::OptionValue<mlir::OpPassManager>::operator=(uint64_t a1)
{
  if (*(a1 + 8))
  {
    mlir::OpPassManager::operator=();
  }

  operator new();
}

uint64_t llvm::cl::OptionValue<mlir::OpPassManager>::~OptionValue(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *(v1 + 8) = 0;
  if (v2)
  {
    v3 = v1;
    mlir::OpPassManager::~OpPassManager(v2);
    MEMORY[0x259C63180]();
    return v3;
  }

  return v1;
}

{
  v1 = a1;
  v2 = *(a1 + 8);
  *(v1 + 8) = 0;
  if (v2)
  {
    v3 = v1;
    mlir::OpPassManager::~OpPassManager(v2);
    MEMORY[0x259C63180]();
    return v3;
  }

  return v1;
}

void llvm::cl::OptionValue<mlir::OpPassManager>::setValue(llvm *a1, const char *a2, size_t a3)
{
  v6 = llvm::errs(a1);
  mlir::parsePassPipeline(a2, a3, v6, &v7);
  if (*(a1 + 1))
  {
    mlir::OpPassManager::operator=();
  }

  operator new();
}

void mlir::parsePassPipeline(const char *a1@<X0>, size_t a2@<X1>, llvm::SourceMgr::SrcBuffer *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v26 = a2;
  first_not_of = llvm::StringRef::find_first_not_of(&v25, " \t\n\v\f\r", 6, 0);
  if (first_not_of >= v26)
  {
    v7 = v26;
  }

  else
  {
    v7 = first_not_of;
  }

  v8 = v26 - v7;
  v27 = &v25[v7];
  v28 = v26 - v7;
  last_not_of = llvm::StringRef::find_last_not_of(&v27, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v27;
  if (last_not_of + 1 < v28)
  {
    v11 = last_not_of + 1;
  }

  else
  {
    v11 = v28;
  }

  v12 = v28 - v8 + v11;
  if (v28 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v28;
  }

  v25 = v27;
  v26 = v13;
  if (v13 && ((v14 = memchr(v27, 40, v13)) == 0 ? (v15 = -1) : (v15 = v14 - v10), (v16 = v15 + 1, v15 + 1 >= 2) && v10[v13 - 1] == 41))
  {
    v26 = v13 - 1;
    v27 = v10;
    if (v13 - 1 <= v15)
    {
      v17 = v13 - 1;
    }

    else
    {
      v17 = v14 - v10;
    }

    v28 = v17;
    v18 = llvm::StringRef::find_last_not_of(&v27, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
    if (v18 + 1 < v28)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = v28;
    }

    v20 = v28 - v17 + v19;
    if (v28 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v28;
    }

    mlir::OpPassManager::OpPassManager(&v27, v27, v21, 1);
    if (v26 >= v16)
    {
      v22 = v16;
    }

    else
    {
      v22 = v26;
    }

    if (mlir::parsePassPipeline(&v25[v22], v26 - v22, &v27, a3))
    {
      mlir::OpPassManager::OpPassManager(a4, &v27);
      v23 = 1;
    }

    else
    {
      v23 = 0;
      *a4 = 0;
    }

    *(a4 + 8) = v23;
    mlir::OpPassManager::~OpPassManager(&v27);
  }

  else
  {
    v24 = *(a3 + 4);
    if (*(a3 + 3) - v24 > 0x5EuLL)
    {
      qmemcpy(v24, "expected pass pipeline to be wrapped with the anchor operation type, e.g. 'builtin.module(...)'", 95);
      *(a3 + 4) += 95;
    }

    else
    {
      llvm::raw_ostream::write(a3, "expected pass pipeline to be wrapped with the anchor operation type, e.g. 'builtin.module(...)'", 0x5FuLL);
    }

    *a4 = 0;
    *(a4 + 8) = 0;
  }
}

BOOL llvm::cl::OptionValue<mlir::OpPassManager>::compare(uint64_t a1, const char **a2)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v21 = 0;
  v25 = 0;
  v26 = 1;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = &unk_2868A3EF8;
  v27 = &v31;
  llvm::raw_ostream::SetBufferAndMode(&v20, 0, 0, 0);
  mlir::OpPassManager::printAsTextualPipeline(*(a1 + 8), &v20);
  v13 = 0;
  v17 = 0;
  v18 = 1;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v12 = &unk_2868A3EF8;
  v19 = &v28;
  llvm::raw_ostream::SetBufferAndMode(&v12, 0, 0, 0);
  mlir::OpPassManager::printAsTextualPipeline(a2, &v12);
  llvm::raw_ostream::~raw_ostream(&v12);
  llvm::raw_ostream::~raw_ostream(&v20);
  v4 = 0;
  v5 = HIBYTE(v33);
  if (v33 >= 0)
  {
    v6 = HIBYTE(v33);
  }

  else
  {
    v6 = v32;
  }

  v7 = HIBYTE(v30);
  v8 = SHIBYTE(v30);
  if (v30 < 0)
  {
    v7 = v29;
  }

  if (v6 != v7)
  {
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    operator delete(v28);
    if ((v33 & 0x8000000000000000) == 0)
    {
      return v4;
    }

LABEL_18:
    operator delete(v31);
    return v4;
  }

  if (v33 >= 0)
  {
    v10 = &v31;
  }

  else
  {
    v10 = v31;
  }

  if (v30 >= 0)
  {
    v11 = &v28;
  }

  else
  {
    v11 = v28;
  }

  v4 = memcmp(v10, v11, v6) == 0;
  if (v8 < 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (v5 < 0)
  {
    goto LABEL_18;
  }

  return v4;
}

void *llvm::cl::basic_parser<mlir::OpPassManager>::basic_parser(void *result)
{
  *result = &unk_2868683F8;
  return result;
}

{
  *result = &unk_2868683F8;
  return result;
}

uint64_t llvm::cl::parser<mlir::OpPassManager>::parse(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, size_t a6)
{
  v8 = llvm::errs(a1);
  mlir::parsePassPipeline(a5, a6, v8, &v10);
  if (v11 == 1)
  {
    operator new();
  }

  return v11 ^ 1u;
}

void *llvm::cl::parser<mlir::OpPassManager>::printOptionDiff(llvm::cl::basic_parser_impl *a1, const llvm::cl::Option *a2, const char **a3, uint64_t a4, int a5)
{
  v7 = llvm::cl::basic_parser_impl::printOptionName(a1, a2, a5);
  v8 = llvm::outs(v7);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8253;
    *(v8 + 4) += 2;
    v13 = llvm::outs(v8);
    v12 = mlir::OpPassManager::printAsTextualPipeline(a3, v13);
    if (!*(a4 + 8))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = llvm::raw_ostream::write(v8, "= ", 2uLL);
    v11 = llvm::outs(v10);
    v12 = mlir::OpPassManager::printAsTextualPipeline(a3, v11);
    if (!*(a4 + 8))
    {
      goto LABEL_10;
    }
  }

  v14 = llvm::outs(v12);
  v15 = llvm::raw_ostream::indent(v14, 2u);
  v16 = *(v15 + 4);
  if ((*(v15 + 3) - v16) > 0xA)
  {
    *(v16 + 7) = 540701804;
    *v16 = *" (default: ";
    *(v15 + 4) += 11;
  }

  else
  {
    v15 = llvm::raw_ostream::write(v15, " (default: ", 0xBuLL);
  }

  v17 = *(a4 + 8);
  v18 = llvm::outs(v15);
  v19 = mlir::OpPassManager::printAsTextualPipeline(v17, v18);
  v12 = llvm::outs(v19);
  v20 = *(v12 + 4);
  if (*(v12 + 3) == v20)
  {
    v23 = llvm::raw_ostream::write(v12, ")", 1uLL);
    result = llvm::outs(v23);
    v22 = result[4];
    if (result[3] != v22)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  *v20 = 41;
  ++*(v12 + 4);
LABEL_10:
  result = llvm::outs(v12);
  v22 = result[4];
  if (result[3] != v22)
  {
LABEL_11:
    *v22 = 10;
    ++result[4];
    return result;
  }

LABEL_13:

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

void *llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager::ParsedPassManager(void *result)
{
  *result = 0;
  return result;
}

{
  *result = 0;
  return result;
}

void *llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager::ParsedPassManager(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

mlir::OpPassManager **llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager::~ParsedPassManager(mlir::OpPassManager **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    mlir::OpPassManager::~OpPassManager(v2);
    MEMORY[0x259C63180]();
    return v3;
  }

  return v1;
}

{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    mlir::OpPassManager::~OpPassManager(v2);
    MEMORY[0x259C63180]();
    return v3;
  }

  return v1;
}

uint64_t mlir::parsePassPipeline(const char *a1, uint64_t a2, mlir::OpPassManager *a3, llvm::SourceMgr::SrcBuffer *a4)
{
  v97[4] = *MEMORY[0x277D85DE8];
  __p = 0;
  v80 = 0;
  v81 = 0;
  if (!a2)
  {
LABEL_91:
    v85 = a4;
    Nesting = mlir::OpPassManager::getNesting(a3);
    mlir::OpPassManager::setNesting(a3, 1);
    mlir::OpPassManager::setNesting(a3, Nesting);
    v72 = v71 & 1;
    v73 = __p;
    if (__p)
    {
      goto LABEL_95;
    }

    return v72;
  }

  llvm::SourceMgr::SourceMgr(&v85);
  llvm::MemoryBuffer::getMemBuffer(a1, a2, "MLIR Textual PassPipeline Parser", 32, &v84);
  v96 = 0;
  v97[0] = 0;
  v8 = v84;
  v84 = 0;
  v95 = v8;
  v77 = a3;
  if (v86 >= v87)
  {
    v9 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(&v85, &v95);
  }

  else
  {
    v9 = llvm::SourceMgr::SrcBuffer::SrcBuffer(v86, &v95) + 3;
  }

  v86 = v9;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v95);
  v10 = v84;
  v84 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v82 = &v85;
  v83 = a4;
  v11 = a4;
  v90 = a1;
  v91 = a2;
  v12 = v97;
  v95 = v97;
  v97[0] = &__p;
  v96 = 0x400000001;
  v13 = " \t\n\v\f\r";
  v14 = 1;
  for (i = v97; ; i = v95)
  {
    v16 = *&i[8 * v14 - 8];
    first_of = llvm::StringRef::find_first_of(&v90, ",(){", 4, 0);
    v18 = first_of;
    v19 = v91;
    if (v91 >= first_of)
    {
      v19 = first_of;
    }

    v88 = v90;
    v89 = v19;
    first_not_of = llvm::StringRef::find_first_not_of(&v88, v13, 6, 0);
    if (first_not_of >= v89)
    {
      v21 = v89;
    }

    else
    {
      v21 = first_not_of;
    }

    v22 = v89 - v21;
    v92 = &v88[v21];
    v93 = v89 - v21;
    last_not_of = llvm::StringRef::find_last_not_of(&v92, v13, 6, 0xFFFFFFFFFFFFFFFFLL);
    if (last_not_of + 1 < v93)
    {
      v25 = last_not_of + 1;
    }

    else
    {
      v25 = v93;
    }

    v26 = v93 - v22 + v25;
    if (v93 >= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v93;
    }

    v29 = *(v16 + 8);
    v28 = *(v16 + 16);
    if (v29 >= v28)
    {
      v31 = *v16;
      v32 = (v29 - *v16) >> 6;
      v33 = v32 + 1;
      if ((v32 + 1) >> 58)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v34 = v12;
      v35 = v13;
      v78 = v34;
      v36 = v28 - v31;
      if (v36 >> 5 > v33)
      {
        v33 = v36 >> 5;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFC0)
      {
        v37 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v33;
      }

      if (v37)
      {
        if (!(v37 >> 58))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v38 = (v29 - *v16) >> 6;
      v39 = v32 << 6;
      *v39 = v92;
      *(v39 + 8) = v27;
      *(v39 + 16) = 0u;
      *(v39 + 32) = 0u;
      *(v39 + 48) = 0u;
      v40 = v39 - (v38 << 6);
      if (v31 != v29)
      {
        v41 = v31;
        v42 = v40;
        do
        {
          v43 = *v41;
          v44 = *(v41 + 1);
          *(v42 + 32) = *(v41 + 4);
          *v42 = v43;
          *(v42 + 16) = v44;
          *(v42 + 48) = 0;
          *(v42 + 56) = 0;
          *(v42 + 40) = *(v41 + 40);
          *(v42 + 56) = *(v41 + 7);
          *(v41 + 5) = 0;
          *(v41 + 6) = 0;
          *(v41 + 7) = 0;
          v41 = (v41 + 64);
          v42 += 64;
        }

        while (v41 != v29);
        do
        {
          v31 = (v45 + 64);
        }

        while (v31 != v29);
        v31 = *v16;
      }

      v30 = v39 + 64;
      *v16 = v40;
      *(v16 + 8) = v30;
      *(v16 + 16) = 0;
      if (v31)
      {
        operator delete(v31);
      }

      a4 = v11;
      v13 = v35;
      v12 = v78;
    }

    else
    {
      *v29 = v92;
      *(v29 + 8) = v27;
      *(v29 + 16) = 0u;
      *(v29 + 32) = 0u;
      v30 = v29 + 64;
      *(v29 + 48) = 0u;
      a4 = v11;
    }

    *(v16 + 8) = v30;
    if (v18 == -1)
    {
      goto LABEL_81;
    }

    v46 = v91;
    v47 = v91 >= v18 ? v18 : v91;
    v48 = &v90[v47];
    v49 = v91 - v47;
    v90 = v48;
    v91 -= v47;
    v50 = *v48;
    if (v50 != 40)
    {
      break;
    }

    v64 = v46 > v18;
    v65 = v46 > v18;
    if (v64)
    {
      v66 = v48 + 1;
    }

    else
    {
      v66 = v48;
    }

    v90 = v66;
    v91 = v49 - v65;
    if (v96 >= HIDWORD(v96))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *&v95[8 * v96] = *(v16 + 8) - 24;
    v14 = v96 + 1;
    LODWORD(v96) = v96 + 1;
LABEL_78:
    v11 = a4;
  }

  if (v50 != 123)
  {
    goto LABEL_63;
  }

  v51 = v46 > v18;
  if (v46 <= v18)
  {
    v52 = v48;
  }

  else
  {
    v52 = v48 + 1;
  }

  v53 = v49 - v51;
  v90 = v52;
  v91 = v53;
  if (!v53)
  {
LABEL_80:
    v67 = "missing closing '}' while processing pass options";
    v48 = v52 - 1;
    goto LABEL_85;
  }

  v54 = 0;
  v55 = 1;
  while (1)
  {
    v56 = v52[v54];
    if (v56 != 125)
    {
      if (v56 == 123)
      {
        ++v55;
      }

      goto LABEL_51;
    }

    if (!--v55)
    {
      break;
    }

LABEL_51:
    if (v53 == ++v54)
    {
      goto LABEL_80;
    }
  }

  if (v53 >= v54)
  {
    v53 = v54;
  }

  v57 = *(v16 + 8);
  *(v57 - 48) = v52;
  *(v57 - 40) = v53;
  if (v91 >= v54 + 1)
  {
    v58 = v54 + 1;
  }

  else
  {
    v58 = v91;
  }

  v90 += v58;
  v91 -= v58;
  v59 = llvm::StringRef::find_first_not_of(&v90, v13, 6, 0);
  if (v59 >= v91)
  {
    v60 = v91;
  }

  else
  {
    v60 = v59;
  }

  v48 = &v90[v60];
  v49 = v91 - v60;
  v90 += v60;
  v91 -= v60;
LABEL_63:
  if (v49)
  {
    while (1)
    {
      v61 = *v48;
      if (v61 != 41)
      {
        break;
      }

      v90 = v48 + 1;
      v91 = v49 - 1;
      if (v96 == 1)
      {
        v67 = "encountered extra closing ')' creating unbalanced parentheses while parsing pipeline";
        goto LABEL_85;
      }

      LODWORD(v96) = v96 - 1;
      v62 = llvm::StringRef::find_first_not_of(&v90, v13, 6, 0);
      if (v62 >= v91)
      {
        v63 = v91;
      }

      else
      {
        v63 = v62;
      }

      v48 = &v90[v63];
      v49 = v91 - v63;
      v90 += v63;
      v91 = v49;
      if (!v49)
      {
        goto LABEL_81;
      }
    }

    if (v61 == 44)
    {
      v90 = v48 + 1;
      v91 = v49 - 1;
      v14 = v96;
      goto LABEL_78;
    }

    v67 = "expected ',' after parsing pipeline";
LABEL_85:
    v92 = v67;
    v94 = 259;
    llvm::SourceMgr::PrintMessage(v82, v83, v48, 0, &v92, 0, 0, v24, 0, 0, 1);
LABEL_86:
    v68 = 0;
    goto LABEL_87;
  }

LABEL_81:
  v68 = 1;
  if (v96 >= 2)
  {
    v92 = "encountered unbalanced parentheses while parsing pipeline";
    v94 = 259;
    llvm::SourceMgr::PrintMessage(v82, v83, v90, 0, &v92, 0, 0, v24, 0, 0, 1);
    goto LABEL_86;
  }

LABEL_87:
  if (v95 != v12)
  {
    free(v95);
  }

  if (v68)
  {
    llvm::SourceMgr::~SourceMgr(&v85);
    a3 = v77;
    if (v69)
    {
      goto LABEL_91;
    }
  }

  else
  {
    llvm::SourceMgr::~SourceMgr(&v85);
  }

  v72 = 0;
  v73 = __p;
  if (__p)
  {
LABEL_95:
    v74 = v80;
    v75 = v73;
    if (v80 != v73)
    {
      do
      {
      }

      while (v74 != v73);
      v75 = __p;
    }

    v80 = v73;
    operator delete(v75);
  }

  return v72;
}

void mlir::PassPipelineCLParser::PassPipelineCLParser()
{
  operator new();
}

{
  operator new();
}

void mlir::PassPipelineCLParser::PassPipelineCLParser(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v8 = a7;
  operator new();
}

{
  v7 = a6;
  v8 = a7;
  operator new();
}

void mlir::PassPipelineCLParser::~PassPipelineCLParser(mlir::PassPipelineCLParser *this)
{
  if (*(this + 376) == 1)
  {
    *(this + 30) = &unk_28689F010;
    v3 = *(this + 41);
    v2 = *(this + 42);
    if (v2 != v3)
    {
      free(v2);
    }

    v4 = *(this + 38);
    if (v4 != this + 320)
    {
      free(v4);
    }
  }

  *(this + 1) = &unk_28689F7C0;
  v5 = *(this + 29);
  if (v5 == (this + 208))
  {
    (*(*v5 + 32))(v5);
    *(this + 20) = &unk_28685B750;
    if ((*(this + 191) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 20) = &unk_28685B750;
    if ((*(this + 191) & 0x80000000) == 0)
    {
LABEL_10:
      if ((*(this + 159) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  operator delete(*(this + 21));
  if ((*(this + 159) & 0x80000000) == 0)
  {
LABEL_11:
    *(this + 1) = &unk_28689F010;
    v6 = *(this + 13);
    if (v6 == *(this + 12))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_20:
  operator delete(*(this + 17));
  *(this + 1) = &unk_28689F010;
  v6 = *(this + 13);
  if (v6 != *(this + 12))
  {
LABEL_12:
    free(v6);
  }

LABEL_13:
  v7 = *(this + 9);
  if (v7 != this + 88)
  {
    free(v7);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    MEMORY[0x259C63180](v9, 0x10F0C401B13C922);
  }
}

BOOL mlir::PassPipelineCLParser::contains(mlir::PassPipelineCLParser *this, const mlir::PassRegistryEntry *a2)
{
  v3 = *(*this + 128);
  v2 = *(*this + 136);
  if (v3 == v2)
  {
    return 0;
  }

  v4 = v3 + 24;
  do
  {
    v5 = *(v4 - 24);
    result = v5 == a2;
    v7 = v5 == a2 || v4 == v2;
    v4 += 24;
  }

  while (!v7);
  return result;
}

uint64_t mlir::PassPipelineCLParser::addToPipeline(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v7 = *a1;
  if (*(a1 + 8))
  {
    if (*(v7 + 8))
    {
      *&v26 = "'-pass-pipeline' option can't be used with individual pass options";
      LOWORD(v29) = 259;
      return a3(a4, &v26);
    }

    v33[0] = 0;
    v33[1] = 0;
    v34 = 0;
    DWORD2(v26) = 0;
    v30 = 0;
    v31 = 1;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    *&v26 = &unk_2868A3EF8;
    v32 = v33;
    llvm::raw_ostream::SetBufferAndMode(&v26, 0, 0, 0);
    v16 = a1[17];
    v15 = a1 + 17;
    v14 = v16;
    v17 = *(v15 + 23);
    if (v17 >= 0)
    {
      v18 = v15;
    }

    else
    {
      v18 = v14;
    }

    if (v17 >= 0)
    {
      v19 = *(v15 + 23);
    }

    else
    {
      v19 = v15[1];
    }

    mlir::parsePassPipeline(v18, v19, &v26, &v24);
    if (v25)
    {
      mlir::OpPassManager::operator=(a2, &v24);
      v20 = 1;
      if (v25 != 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v23 = 260;
      v22[0] = v33;
      v20 = a3(a4, v22);
      if (v25 != 1)
      {
LABEL_21:
        llvm::raw_ostream::~raw_ostream(&v26);
        if (SHIBYTE(v34) < 0)
        {
          operator delete(v33[0]);
        }

        return v20;
      }
    }

    mlir::OpPassManager::~OpPassManager(&v24);
    goto LABEL_21;
  }

  v9 = *(v7 + 128);
  v10 = *(v7 + 136);
  if (v9 == v10)
  {
    return 1;
  }

  while (1)
  {
    v11 = *v9;
    v26 = *(v9 + 1);
    v22[0] = a3;
    v22[1] = a4;
    v12 = *(v11 + 72);
    if (!v12)
    {
      break;
    }

    if (((*(*v12 + 48))(v12, a2, &v26, v22) & 1) == 0)
    {
      return 0;
    }

    v9 += 3;
    if (v9 == v10)
    {
      return 1;
    }
  }

  v21 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::PassNameCLParser::PassNameCLParser(v21);
}

void mlir::PassNameCLParser::PassNameCLParser()
{
  operator new();
}

{
  operator new();
}

void mlir::PassNameCLParser::~PassNameCLParser(mlir::PassNameCLParser *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MEMORY[0x259C63180](v3, 0x10F0C401B13C922);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    MEMORY[0x259C63180](v3, 0x10F0C401B13C922);
  }
}

BOOL mlir::PassNameCLParser::contains(mlir::PassNameCLParser *this, const mlir::PassRegistryEntry *a2)
{
  v3 = *(*this + 128);
  v2 = *(*this + 136);
  if (v3 == v2)
  {
    return 0;
  }

  v4 = v3 + 24;
  do
  {
    v5 = *(v4 - 24);
    result = v5 == a2;
    v7 = v5 == a2 || v4 == v2;
    v4 += 24;
  }

  while (!v7);
  return result;
}

uint64_t _ZZZN4mlir21printRegisteredPassesEvENK3__0clIN4llvm9StringMapINS_8PassInfoENS2_15MallocAllocatorEEEEEDaNS2_9StringRefERT_ENUlPKPNS_17PassRegistryEntryESE_E_8__invokeESE_SE_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = *(*a1 + 8);
  }

  v5 = *(v2 + 23);
  if (v5 >= 0)
  {
    v6 = *(v2 + 23);
  }

  else
  {
    v6 = *(v2 + 8);
  }

  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = v5 >= 0 ? *a2 : *v2;
    v9 = v3 >= 0 ? *a1 : **a1;
    v10 = memcmp(v9, v8, v7);
    if (v10)
    {
      return (v10 >> 31) | 1u;
    }
  }

  if (v4 < v6)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v4 == v6)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

void *std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_2868684F0;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_2868684F0;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_2868684F0;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::operator()(uint64_t a1, mlir::OpPassManager *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = *a4;
    v9 = *(a4 + 8);
    (*(*v4 + 48))(&v39);
    v10 = (*(*v39 + 48))(v39, v6, v7, v8, v9);
    mlir::OpPassManager::getOpName(a2, v37);
    v11 = v39[2];
    v12 = v39[3];
    v13 = *(v39 + 32);
    if (mlir::OpPassManager::getNesting(a2) == 1 && v38 == 1 && (v13 & 1) != 0 && (v37[1] != v12 || v12 && memcmp(v37[0], v11, v12)))
    {
      v14 = (*(*v39 + 16))(v39);
      v25[0] = "Can't add pass '";
      v25[2] = v14;
      v25[3] = v15;
      v26 = 1283;
      v27[0] = v25;
      v27[2] = "' restricted to '";
      v28 = 770;
      v16 = v39[2];
      v17 = v39[3];
      v29[0] = v27;
      v29[2] = v16;
      v29[3] = v17;
      v30 = 1282;
      v31[0] = v29;
      v31[2] = "' on a PassManager intended to run on '";
      v32 = 770;
      OpAnchorName = mlir::OpPassManager::getOpAnchorName(a2);
      v33[0] = v31;
      v33[2] = OpAnchorName;
      v33[3] = v19;
      v34 = 1282;
      v35[0] = v33;
      v35[2] = "', did you intend to nest?";
      v36 = 770;
      v10 = v8(v9, v35);
    }

    else
    {
      v20 = v39;
      v39 = 0;
      v35[0] = v20;
      mlir::OpPassManager::addPass(a2, v35);
      v21 = v35[0];
      v35[0] = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }
    }

    v22 = v39;
    v39 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    return v10;
  }

  else
  {
    v24 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::target(v24);
  }
}

uint64_t std::__function::__func<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<buildDefaultRegistryFn(std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZL22buildDefaultRegistryFnRKNSt3__18functionIFNS_10unique_ptrIN4mlir4PassENS_14default_deleteIS3_EEEEvEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZL22buildDefaultRegistryFnRKNSt3__18functionIFNS_10unique_ptrIN4mlir4PassENS_14default_deleteIS3_EEEEvEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZL22buildDefaultRegistryFnRKNSt3__18functionIFNS_10unique_ptrIN4mlir4PassENS_14default_deleteIS3_EEEEvEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZL22buildDefaultRegistryFnRKNSt3__18functionIFNS_10unique_ptrIN4mlir4PassENS_14default_deleteIS3_EEEEvEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::PassOptions::print(llvm::raw_ostream &)const::$_0::__invoke(void *a1, uint64_t a2)
{
  v3 = (*(**a1 + 32))(*a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = (*(**a2 + 32))();
  v7 = *(v6 + 24);
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 24);
  }

  if (v8)
  {
    v9 = memcmp(v4, *(v6 + 16), v8);
    if (v9)
    {
      return (v9 >> 31) | 1u;
    }
  }

  if (v5 < v7)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (v5 == v7)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t mlir::detail::PassOptions::printHelp(unsigned long,unsigned long)const::$_0::__invoke(void *a1, uint64_t a2)
{
  v3 = (*(**a1 + 32))(*a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = (*(**a2 + 32))();
  v7 = *(v6 + 24);
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 24);
  }

  if (v8)
  {
    v9 = memcmp(v4, *(v6 + 16), v8);
    if (v9)
    {
      return (v9 >> 31) | 1u;
    }
  }

  if (v5 < v7)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (v5 == v7)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t anonymous namespace::TextualPipeline::resolvePipelineElements(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v6 = a2 << 6;
  v7 = (a1 + 32);
  do
  {
    while (v7[1] != v7[2])
    {
      {
        return 0;
      }

LABEL_4:
      v7 += 8;
      v6 -= 64;
      if (!v6)
      {
        return 1;
      }
    }

    v8 = *(v7 - 4);
    v9 = *(v7 - 3);
    if (!atomic_load_explicit(qword_27F874190, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F874190, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
    }

    v10 = qword_27F874190[0];
    v11 = llvm::StringMapImpl::hash(v8, v9, a3);
    Key = llvm::StringMapImpl::FindKey(v10, v8, v9, v11);
    v13 = *v10;
    if (Key != -1)
    {
      v14 = Key;
      if (atomic_load_explicit(qword_27F874190, memory_order_acquire))
      {
        goto LABEL_11;
      }

LABEL_10:
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F874190, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
      goto LABEL_11;
    }

    v14 = *(v10 + 8);
    if (!atomic_load_explicit(qword_27F874190, memory_order_acquire))
    {
      goto LABEL_10;
    }

LABEL_11:
    v15 = (v13 + 8 * v14);
    if (v15 != (*qword_27F874190[0] + 8 * *(qword_27F874190[0] + 8)))
    {
      goto LABEL_18;
    }

    *v7 = 0;
    v16 = *(v7 - 4);
    v17 = *(v7 - 3);
    if (!atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_1, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
    }

    v18 = _MergedGlobals_1[0];
    v19 = llvm::StringMapImpl::hash(v16, v17, a3);
    v20 = llvm::StringMapImpl::FindKey(v18, v16, v17, v19);
    v21 = *v18;
    if (v20 != -1)
    {
      v22 = v20;
      if (atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
      {
        goto LABEL_17;
      }

LABEL_16:
      llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_1, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
      goto LABEL_17;
    }

    v22 = *(v18 + 8);
    if (!atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
    {
      goto LABEL_16;
    }

LABEL_17:
    v15 = (v21 + 8 * v22);
    if (v15 == (*_MergedGlobals_1[0] + 8 * *(_MergedGlobals_1[0] + 8)))
    {
      *v7 = 0;
      v23 = *(v7 - 4);
      v24 = *(v7 - 3);
      v27 = 1283;
      v26[0] = "'";
      v26[2] = v23;
      v26[3] = v24;
      v28 = v26;
      v29 = "' does not refer to a registered pass or pass pipeline";
      v30 = 770;
      if (((a3)(a4) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_4;
    }

LABEL_18:
    *v7 = *v15 + 8;
    v7 += 8;
    v6 -= 64;
  }

  while (v6);
  return 1;
}

void anonymous namespace::TextualPipeline::PipelineElement::~PipelineElement(_anonymous_namespace_::TextualPipeline::PipelineElement *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(char const*,llvm::Twine)>::callback_fn<anonymous namespace::TextualPipeline::initialize(llvm::StringRef,llvm::raw_ostream &)::$_0>(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  llvm::SourceMgr::PrintMessage(*a1, *(a1 + 8), a2, 0, v10, 0, 0, a8, 0, 0, 1);
  return 0;
}

uint64_t anonymous namespace::TextualPipeline::addToPipeline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __int128 *), uint64_t a5)
{
  if (!a2)
  {
    return 1;
  }

  v8 = (a1 + 24);
  v9 = a2 << 6;
  while (1)
  {
    v10 = v8[1];
    if (!v10)
    {
      mlir::OpPassManager::nest();
    }

    v21 = *(v8 - 1);
    v19[0] = a4;
    v19[1] = a5;
    v11 = *(v10 + 72);
    if (!v11)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call();
    }

    if (((*(*v11 + 48))(v11, a3, &v21, v19) & 1) == 0)
    {
      break;
    }

    v8 += 8;
    v9 -= 64;
    if (!v9)
    {
      return 1;
    }
  }

  v16 = 1283;
  v15[2] = *(v8 - 3);
  v15[3] = *(v8 - 2);
  v17[0] = v15;
  v18 = 770;
  v13 = *(v8 - 1);
  v12 = *v8;
  v19[0] = v17;
  v19[2] = v13;
  v19[3] = v12;
  v20 = 1282;
  *&v21 = v19;
  v23 = 770;
  return a4(a5, &v21);
}

uint64_t llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 12))
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = 0;
        do
        {
          v4 = *(*v1 + v3);
          if (v4 != -8 && v4 != 0)
          {
            llvm::StringMapEntry<mlir::PassInfo>::Destroy<llvm::MallocAllocator>(v4);
          }

          v3 += 8;
        }

        while (8 * v2 != v3);
      }
    }

    free(*v1);

    JUMPOUT(0x259C63180);
  }

  return result;
}

void llvm::StringMapEntry<mlir::PassInfo>::Destroy<llvm::MallocAllocator>(llvm *this)
{
  v2 = *this;
  v3 = this + 88;
  v4 = *(this + 14);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
    v5 = *(this + 10);
    if (v5 != (this + 56))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    v5 = *(this + 10);
    if (v5 != (this + 56))
    {
LABEL_5:
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      if ((*(this + 55) & 0x80000000) == 0)
      {
LABEL_8:
        if ((*(this + 31) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_15:
        operator delete(*(this + 1));
LABEL_9:

        llvm::deallocate_buffer(this, (v2 + 121));
      }

LABEL_14:
      operator delete(*(this + 4));
      if ((*(this + 31) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  (*(*v5 + 32))(v5);
  if ((*(this + 55) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_14;
}

void **llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::getOptionWidth(void)::$_0>(void **result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 160);
  v4 = *(a2 + 168);
  if (v3 == v4)
  {
    **result = 2;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3++;
      v7 = (*(*v6 + 32))(v6);
      result = (*(*v7 + 40))(v7);
      if (v5 <= result)
      {
        v5 = result;
      }
    }

    while (v3 != v4);
    **v2 = v5 + 2;
  }

  return result;
}

uint64_t llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 12))
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = 0;
        do
        {
          v4 = *(*v1 + v3);
          if (v4 != -8 && v4 != 0)
          {
            llvm::StringMapEntry<mlir::PassInfo>::Destroy<llvm::MallocAllocator>(v4);
          }

          v3 += 8;
        }

        while (8 * v2 != v3);
      }
    }

    free(*v1);

    JUMPOUT(0x259C63180);
  }

  return result;
}

uint64_t *llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>::try_emplace_with_hash<mlir::PassPipelineInfo&>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, const mlir::PassRegistryEntry *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 121, 8uLL);
    v13 = buffer + 120;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 121, 8uLL);
    v13 = buffer + 120;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  mlir::PassRegistryEntry::PassRegistryEntry((buffer + 8), a5);
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

std::string *mlir::PassRegistryEntry::PassRegistryEntry(std::string *this, const mlir::PassRegistryEntry *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&this[1].__r_.__value_.__l.__data_ = v5;
      v6 = *(a2 + 9);
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_9:
      this[3].__r_.__value_.__r.__words[0] = 0;
      v7 = *(a2 + 13);
      if (v7)
      {
        goto LABEL_10;
      }

LABEL_14:
      this[4].__r_.__value_.__l.__size_ = 0;
      return this;
    }
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  v6 = *(a2 + 9);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v6 == (a2 + 48))
  {
    this[3].__r_.__value_.__r.__words[0] = &this[2];
    (*(**(a2 + 9) + 24))(*(a2 + 9));
    v7 = *(a2 + 13);
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  this[3].__r_.__value_.__r.__words[0] = (*(*v6 + 16))(v6);
  v7 = *(a2 + 13);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (v7 == (a2 + 80))
  {
    this[4].__r_.__value_.__l.__size_ = &this[3].__r_.__value_.__l.__size_;
    (*(**(a2 + 13) + 24))(*(a2 + 13));
  }

  else
  {
    this[4].__r_.__value_.__l.__size_ = (*(*v7 + 16))(v7);
  }

  return this;
}

void *std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286868580;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286868580;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_286868580;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = *a2;
    v3 = *(a2 + 8);
    (*(*v2 + 48))(&v7);
    v4(v3, v7 + 152);
    result = v7;
    v7 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::target(v6);
  }

  return result;
}

uint64_t std::__function::__func<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0,std::allocator<mlir::PassInfo::PassInfo(llvm::StringRef,llvm::StringRef,std::function<std::unique_ptr<mlir::Pass> ()(void)> const&)::$_0>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8PassInfoC1EN4llvm9StringRefES2_RKNSt3__18functionIFNS3_10unique_ptrINS_4PassENS3_14default_deleteIS6_EEEEvEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8PassInfoC1EN4llvm9StringRefES2_RKNSt3__18functionIFNS3_10unique_ptrINS_4PassENS3_14default_deleteIS6_EEEEvEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8PassInfoC1EN4llvm9StringRefES2_RKNSt3__18functionIFNS3_10unique_ptrINS_4PassENS3_14default_deleteIS6_EEEEvEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8PassInfoC1EN4llvm9StringRefES2_RKNSt3__18functionIFNS3_10unique_ptrINS_4PassENS3_14default_deleteIS6_EEEEvEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::object_deleter<llvm::StringMap<mlir::TypeID,llvm::MallocAllocator>>::call(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 12))
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = 0;
        do
        {
          v4 = *(*v1 + v3);
          if (v4 != -8 && v4 != 0)
          {
            llvm::deallocate_buffer(v4, (*v4 + 17));
          }

          v3 += 8;
        }

        while (8 * v2 != v3);
      }
    }

    free(*v1);

    JUMPOUT(0x259C63180);
  }

  return result;
}

uint64_t *llvm::StringMap<mlir::TypeID,llvm::MallocAllocator>::try_emplace_with_hash<mlir::TypeID&>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, uint64_t *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v19 = v10[1];
        ++v10;
        v11 = v19;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  v14 = *a5;
  *buffer = a3;
  buffer[1] = v14;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v15 = *v10 == -8;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    do
    {
      v17 = v10[1];
      ++v10;
      v16 = v17;
      if (v17)
      {
        v18 = v16 == -8;
      }

      else
      {
        v18 = 1;
      }
    }

    while (v18);
  }

  return v10;
}

uint64_t llvm::detail::UniqueFunctionBase<unsigned long,llvm::StringRef,unsigned long,char>::CallImpl<mlir::detail::pass_options::parseCommaSeparatedList(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>)::$_0>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  if (a3 <= a4)
  {
    return -1;
  }

  v8 = a5;
  while (1)
  {
    v9 = *(a2 + a4);
    if (v9 == v8)
    {
      return a4;
    }

    if (*(a2 + a4) <= 0x27u)
    {
      if (v9 == 34)
      {
        v11 = a3 - (a4 + 1);
        if (a3 > a4 + 1)
        {
          v12 = (a2 + a4 + 1);
          v13 = 34;
LABEL_19:
          v14 = memchr(v12, v13, v11);
          if (v14)
          {
            a4 = v14 - a2;
          }

          else
          {
            a4 = -1;
          }

          goto LABEL_4;
        }

        goto LABEL_22;
      }

      if (v9 == 39)
      {
        v11 = a3 - (a4 + 1);
        if (a3 > a4 + 1)
        {
          v12 = (a2 + a4 + 1);
          v13 = 39;
          goto LABEL_19;
        }

LABEL_22:
        a4 = -1;
      }
    }

    else
    {
      switch(v9)
      {
        case '(':
          v10 = *(*(*a1 + 24) & 0xFFFFFFFFFFFFFFF8);
          break;
        case '[':
          v10 = *(*(*a1 + 24) & 0xFFFFFFFFFFFFFFF8);
          break;
        case '{':
          v10 = *(*(*a1 + 24) & 0xFFFFFFFFFFFFFFF8);
          break;
        default:
          goto LABEL_4;
      }

      a4 = v10();
    }

LABEL_4:
    if (++a4 >= a3)
    {
      return -1;
    }
  }
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<mlir::parsePassPipeline(llvm::StringRef,mlir::OpPassManager &,llvm::raw_ostream &)::$_0>(llvm::raw_ostream **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v2;
  v7 = *(a2 + 32);
  v3 = *a1;
  llvm::Twine::print(v6, *a1);
  v4 = *(v3 + 4);
  if (*(v3 + 3) == v4)
  {
    llvm::raw_ostream::write(v3, "\n", 1uLL);
  }

  else
  {
    *v4 = 10;
    ++*(v3 + 4);
  }

  return 0;
}

uint64_t mlir::detail::PassPipelineCLParserImpl::PassPipelineCLParserImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) = *(a1 + 10) & 0x8000 | 1;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  ++*(a1 + 72);
  *(a1 + 176) = 0;
  *a1 = &unk_286868610;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x800000000;
  *(a1 + 208) = &unk_2868686C0;
  *(a1 + 216) = a1;
  *(a1 + 752) = 0;
  *(a1 + 760) = &unk_286868790;
  *(a1 + 784) = a1 + 760;
  llvm::cl::Option::setArgStr(a1, a2, a3);
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  llvm::cl::Option::addArgument(a1);
  if (atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
  {
    v14 = *_MergedGlobals_1[0];
    v15 = *(_MergedGlobals_1[0] + 8);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_16:
    v16 = v14;
    v21 = &v14[v15];
    if (v14 == v21)
    {
      goto LABEL_40;
    }

    goto LABEL_17;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_1, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  v14 = *_MergedGlobals_1[0];
  v15 = *(_MergedGlobals_1[0] + 8);
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_4:
  v16 = v14;
  if (*v14)
  {
    v17 = *v14 == -8;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    do
    {
      v19 = v16[1];
      ++v16;
      v18 = v19;
      if (v19)
      {
        v20 = v18 == -8;
      }

      else
      {
        v20 = 1;
      }
    }

    while (v20);
  }

  v21 = &v14[v15];
  if (v16 != v21)
  {
LABEL_17:
    v22 = *v16;
    do
    {
      v25 = *(v22 + 8);
      v23 = v22 + 8;
      v24 = v25;
      v26 = *(v23 + 23);
      if (v26 >= 0)
      {
        v27 = v23;
      }

      else
      {
        v27 = v24;
      }

      if (v26 >= 0)
      {
        v28 = *(v23 + 23);
      }

      else
      {
        v28 = *(v23 + 8);
      }

      v29 = v23 + 24;
      v30 = *(v23 + 47);
      if (v30 < 0)
      {
        v29 = *(v23 + 24);
      }

      v31 = *(v23 + 32);
      if (v30 >= 0)
      {
        v31 = *(v23 + 47);
      }

      *&v65 = v27;
      *(&v65 + 1) = v28;
      *&v66 = v29;
      *(&v66 + 1) = v31;
      v67 = &unk_286868820;
      v68 = v23;
      v69 = 0;
      v32 = *(a1 + 232);
      v33 = *(a1 + 224);
      if (v32 >= *(a1 + 236))
      {
        if (v33 > &v65 || v33 + (v32 << 6) <= &v65)
        {
        }
      }

      v34 = v33 + (*(a1 + 232) << 6);
      v35 = v66;
      *v34 = v65;
      *(v34 + 16) = v35;
      *(v34 + 32) = &unk_286868820;
      v36 = v68;
      *(v34 + 56) = v69;
      *(v34 + 40) = v36;
      ++*(a1 + 232);
      llvm::cl::AddLiteralOption(*(a1 + 216), v27, v28);
      do
      {
        v37 = v16[1];
        ++v16;
        v22 = v37;
        if (v37)
        {
          v38 = v22 == -8;
        }

        else
        {
          v38 = 1;
        }
      }

      while (v38);
    }

    while (v16 != v21);
  }

LABEL_40:
  if (*(a1 + 752))
  {
    goto LABEL_79;
  }

  if (atomic_load_explicit(qword_27F874190, memory_order_acquire))
  {
    v39 = *qword_27F874190[0];
    v40 = *(qword_27F874190[0] + 8);
    if (v40)
    {
      goto LABEL_43;
    }

LABEL_55:
    v41 = v39;
    v46 = &v39[v40];
    if (v39 == v46)
    {
      goto LABEL_79;
    }

    goto LABEL_56;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F874190, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
  v39 = *qword_27F874190[0];
  v40 = *(qword_27F874190[0] + 8);
  if (!v40)
  {
    goto LABEL_55;
  }

LABEL_43:
  v41 = v39;
  if (*v39)
  {
    v42 = *v39 == -8;
  }

  else
  {
    v42 = 1;
  }

  if (v42)
  {
    do
    {
      v44 = v41[1];
      ++v41;
      v43 = v44;
      if (v44)
      {
        v45 = v43 == -8;
      }

      else
      {
        v45 = 1;
      }
    }

    while (v45);
  }

  v46 = &v39[v40];
  if (v41 != v46)
  {
LABEL_56:
    v47 = *v41;
    do
    {
      v50 = *(v47 + 8);
      v48 = v47 + 8;
      v49 = v50;
      v51 = *(v48 + 23);
      if (v51 >= 0)
      {
        v52 = v48;
      }

      else
      {
        v52 = v49;
      }

      if (v51 >= 0)
      {
        v53 = *(v48 + 23);
      }

      else
      {
        v53 = *(v48 + 8);
      }

      v54 = v48 + 24;
      v55 = *(v48 + 47);
      if (v55 < 0)
      {
        v54 = *(v48 + 24);
      }

      v56 = *(v48 + 32);
      if (v55 >= 0)
      {
        v56 = *(v48 + 47);
      }

      *&v65 = v52;
      *(&v65 + 1) = v53;
      *&v66 = v54;
      *(&v66 + 1) = v56;
      v67 = &unk_286868820;
      v68 = v48;
      v69 = 0;
      v57 = *(a1 + 232);
      v58 = *(a1 + 224);
      if (v57 >= *(a1 + 236))
      {
        if (v58 > &v65 || v58 + (v57 << 6) <= &v65)
        {
        }
      }

      v59 = v58 + (*(a1 + 232) << 6);
      v60 = v66;
      *v59 = v65;
      *(v59 + 16) = v60;
      *(v59 + 32) = &unk_286868820;
      v61 = v68;
      *(v59 + 56) = v69;
      *(v59 + 40) = v61;
      ++*(a1 + 232);
      llvm::cl::AddLiteralOption(*(a1 + 216), v52, v53);
      do
      {
        v62 = v41[1];
        ++v41;
        v47 = v62;
        if (v62)
        {
          v63 = v47 == -8;
        }

        else
        {
          v63 = 1;
        }
      }

      while (v63);
    }

    while (v41 != v46);
  }

LABEL_79:
  *(a1 + 752) = a6;
  *(a1 + 10) = *(a1 + 10) & 0xFFE7 | 8;
  return a1;
}

uint64_t llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::handleOccurrence(uint64_t a1, int a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v8 = a2;
  v9 = a1;
  v25 = a2;
  v23 = 0uLL;
  v24 = 0;
  if (*(a1 + 176) == 1)
  {
    *(a1 + 192) = *(a1 + 184);
    *(a1 + 136) = *(a1 + 128);
    *(a1 + 176) = 0;
  }

  v10 = *(*(a1 + 216) + 24);
  if (v10)
  {
    a3 = a5;
  }

  if (v10)
  {
    a4 = a6;
  }

  v13 = *(a1 + 232);
  if (v13)
  {
    v14 = *(a1 + 224);
    v15 = 0;
    if (a4)
    {
      v16 = (v14 + 8);
      while (1)
      {
        if (*v16 == a4)
        {
          a1 = memcmp(*(v16 - 1), a3, a4);
          if (!a1)
          {
            break;
          }
        }

        ++v15;
        v16 += 8;
        if (v13 == v15)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v17 = (v14 + 8);
      while (1)
      {
        v18 = *v17;
        v17 += 8;
        if (!v18)
        {
          break;
        }

        if (v13 == ++v15)
        {
          goto LABEL_19;
        }
      }
    }

    *&v23 = *(v14 + (v15 << 6) + 40);
  }

  else
  {
LABEL_19:
    v27 = 1283;
    v26[0] = "Cannot find option named '";
    v26[2] = a3;
    v26[3] = a4;
    v28[0] = v26;
    v28[2] = "'!";
    v29 = 770;
    v19 = llvm::errs(a1);
    if (llvm::cl::Option::error(v9, v28, 0, 0, v19))
    {
      return 1;
    }
  }

  *(&v23 + 1) = a5;
  v24 = a6;
  *(v9 + 12) = v8;
  std::vector<unsigned int>::push_back[abi:nn200100](v9 + 184, &v25);
  v21 = *(v9 + 784);
  if (v21)
  {
    (*(*v21 + 48))(v21, &v23);
    return 0;
  }

  else
  {
    v22 = std::__throw_bad_function_call[abi:nn200100]();
  }
}

uint64_t llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 216) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void *llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::~list(void *a1)
{
  *a1 = &unk_286868610;
  v2 = a1 + 95;
  v3 = a1[98];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[26] = &unk_286868740;
  v4 = a1[28];
  if (v4 != a1 + 30)
  {
    free(v4);
  }

  v5 = a1[23];
  if (v5)
  {
    a1[24] = v5;
    operator delete(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[16];
  if (v7)
  {
    a1[17] = v7;
    operator delete(v7);
  }

  *a1 = &unk_28689F010;
  v8 = a1[12];
  if (v8 != a1[11])
  {
    free(v8);
  }

  v9 = a1[8];
  if (v9 != a1 + 10)
  {
    free(v9);
  }

  return a1;
}

void llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::~list(void *a1)
{

  JUMPOUT(0x259C63180);
}

void llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::setDefault(void *a1)
{
  v2 = (a1 + 16);
  v1 = a1[16];
  a1[24] = a1[23];
  a1[17] = v1;
  v3 = a1[19];
  for (i = a1[20]; v3 != i; v3 += 32)
  {
  }
}

uint64_t llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::getExtraOptionNames(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 216) + 24))
  {
    v3 = result + 208;
    result = (*(*(result + 208) + 16))(result + 208);
    if (result)
    {
      v4 = result;
      v5 = 0;
      do
      {
        result = (*(*v3 + 24))(v3, v5);
        v7 = *(a2 + 8);
        if (v7 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = (*a2 + 16 * v7);
        *v8 = result;
        v8[1] = v6;
        ++*(a2 + 8);
        v5 = (v5 + 1);
      }

      while (v4 != v5);
    }
  }

  return result;
}

void anonymous namespace::PassNameParser::~PassNameParser(_anonymous_namespace_::PassNameParser *this)
{
  *this = &unk_286868740;
  v1 = *(this + 2);
  if (v1 != this + 32)
  {
    free(v1);
  }
}

{
  *this = &unk_286868740;
  v2 = *(this + 2);
  if (v2 != this + 32)
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

unint64_t anonymous namespace::PassNameParser::getOptionWidth(_anonymous_namespace_::PassNameParser *this, const llvm::cl::Option *a2)
{
  OptionWidth = llvm::cl::generic_parser_base::getOptionWidth(this, a2);
  v3 = OptionWidth;
  if (atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
  {
    v4 = OptionWidth + 2;
    v5 = *_MergedGlobals_1[0];
    v6 = *(_MergedGlobals_1[0] + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_15:
    v7 = v5;
    v12 = &v5[v6];
    if (v5 == v12)
    {
      goto LABEL_26;
    }

LABEL_16:
    v13 = *v7;
    while (1)
    {
      v32 = &v33;
      v33 = 0;
      v34 = llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::getOptionWidth(void)::$_0>;
      v35 = &v32;
      v14 = *(v13 + 112);
      if (!v14)
      {
        goto LABEL_52;
      }

      (*(*v14 + 48))(v14, &v34);
      do
      {
        v15 = v7[1];
        ++v7;
        v13 = v15;
        if (v15)
        {
          v16 = v13 == -8;
        }

        else
        {
          v16 = 1;
        }
      }

      while (v16);
      if (v4 <= v33 + 4)
      {
        v4 = v33 + 4;
      }

      if (v7 == v12)
      {
        goto LABEL_26;
      }
    }
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_1, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  v4 = v3 + 2;
  v5 = *_MergedGlobals_1[0];
  v6 = *(_MergedGlobals_1[0] + 8);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_3:
  v7 = v5;
  if (*v5)
  {
    v8 = *v5 == -8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    do
    {
      v10 = v7[1];
      ++v7;
      v9 = v10;
      if (v10)
      {
        v11 = v9 == -8;
      }

      else
      {
        v11 = 1;
      }
    }

    while (v11);
  }

  v12 = &v5[v6];
  if (v7 != v12)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (atomic_load_explicit(qword_27F874190, memory_order_acquire))
  {
    v17 = *qword_27F874190[0];
    v18 = *(qword_27F874190[0] + 8);
    if (v18)
    {
      goto LABEL_28;
    }

LABEL_40:
    v19 = v17;
    v24 = &v17[v18];
    if (v17 == v24)
    {
      return v4;
    }

    goto LABEL_41;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F874190, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
  v17 = *qword_27F874190[0];
  v18 = *(qword_27F874190[0] + 8);
  if (!v18)
  {
    goto LABEL_40;
  }

LABEL_28:
  v19 = v17;
  if (*v17)
  {
    v20 = *v17 == -8;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    do
    {
      v22 = v19[1];
      ++v19;
      v21 = v22;
      if (v22)
      {
        v23 = v21 == -8;
      }

      else
      {
        v23 = 1;
      }
    }

    while (v23);
  }

  v24 = &v17[v18];
  if (v19 == v24)
  {
    return v4;
  }

LABEL_41:
  v25 = *v19;
  while (1)
  {
    v32 = &v33;
    v33 = 0;
    v34 = llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::getOptionWidth(void)::$_0>;
    v35 = &v32;
    v26 = *(v25 + 112);
    if (!v26)
    {
      break;
    }

    (*(*v26 + 48))(v26, &v34);
    do
    {
      v27 = v19[1];
      ++v19;
      v25 = v27;
      if (v27)
      {
        v28 = v25 == -8;
      }

      else
      {
        v28 = 1;
      }
    }

    while (v28);
    if (v4 <= v33 + 4)
    {
      v4 = v33 + 4;
    }

    if (v19 == v24)
    {
      return v4;
    }
  }

LABEL_52:
  v30 = std::__throw_bad_function_call[abi:nn200100]();
}

void anonymous namespace::PassNameParser::printOptionInfo(_anonymous_namespace_::PassNameParser *this, const llvm::cl::Option *a2, uint64_t a3)
{
  v72[32] = *MEMORY[0x277D85DE8];
  if (*(this + 544) == 1)
  {
    v5 = llvm::outs(this);
    v6 = v5[4];
    if (v5[3] - v6 > 3uLL)
    {
      *v6 = 757932064;
      v21 = v5[3];
      v7 = (v5[4] + 4);
      v5[4] = v7;
      v8 = *(a2 + 2);
      v9 = *(a2 + 3);
      if (v9 <= v21 - v7)
      {
LABEL_4:
        if (v9)
        {
          v10 = v5;
          v11 = v9;
          memcpy(v7, v8, v9);
          v5 = v10;
          v7 = (v10[4] + v11);
          v10[4] = v7;
        }

        if (v5[3] - v7 <= 0xAuLL)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v5 = llvm::raw_ostream::write(v5, "  --", 4uLL);
      v7 = v5[4];
      v8 = *(a2 + 2);
      v9 = *(a2 + 3);
      if (v9 <= v5[3] - v7)
      {
        goto LABEL_4;
      }
    }

    v5 = llvm::raw_ostream::write(v5, v8, v9);
    v7 = v5[4];
    if (v5[3] - v7 <= 0xAuLL)
    {
LABEL_7:
      llvm::raw_ostream::write(v5, "=<pass-arg>", 0xBuLL);
LABEL_16:
      v22 = *(a2 + 4);
      v23 = *(a2 + 5);
      v24 = *(a2 + 3) + 18;

      llvm::cl::Option::printHelpStr(v22, v23, a3, v24);
      return;
    }

LABEL_15:
    *(v7 + 7) = 1046966881;
    *v7 = *"=<pass-arg>";
    v5[4] += 11;
    goto LABEL_16;
  }

  v12 = *(a2 + 3);
  v13 = llvm::outs(this);
  v14 = *(v13 + 4);
  v15 = *(v13 + 3) - v14;
  if (v12)
  {
    if (v15 > 3)
    {
      *v14 = 757932064;
      v30 = *(v13 + 3);
      v16 = (*(v13 + 4) + 4);
      *(v13 + 4) = v16;
      v17 = *(a2 + 2);
      v18 = *(a2 + 3);
      if (v18 <= v30 - v16)
      {
LABEL_11:
        if (v18)
        {
          v19 = v13;
          v20 = v18;
          memcpy(v16, v17, v18);
          *(v19 + 4) += v20;
        }

LABEL_28:
        v13 = llvm::cl::Option::printHelpStr(*(a2 + 4), *(a2 + 5), a3, *(a2 + 3) + 7);
        if (atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v13 = llvm::raw_ostream::write(v13, "  --", 4uLL);
      v16 = *(v13 + 4);
      v17 = *(a2 + 2);
      v18 = *(a2 + 3);
      if (v18 <= *(v13 + 3) - v16)
      {
        goto LABEL_11;
      }
    }

    llvm::raw_ostream::write(v13, v17, v18);
    goto LABEL_28;
  }

  if (v15 <= 1)
  {
    v13 = llvm::raw_ostream::write(v13, "  ", 2uLL);
    v25 = *(v13 + 4);
    v26 = *(a2 + 4);
    v27 = *(a2 + 5);
    if (v27 <= *(v13 + 3) - v25)
    {
      goto LABEL_21;
    }

LABEL_97:
    v13 = llvm::raw_ostream::write(v13, v26, v27);
    v25 = *(v13 + 4);
    if (v25 < *(v13 + 3))
    {
      goto LABEL_24;
    }

    goto LABEL_98;
  }

  *v14 = 8224;
  v69 = *(v13 + 3);
  v25 = (*(v13 + 4) + 2);
  *(v13 + 4) = v25;
  v26 = *(a2 + 4);
  v27 = *(a2 + 5);
  if (v27 > v69 - v25)
  {
    goto LABEL_97;
  }

LABEL_21:
  if (v27)
  {
    v28 = v13;
    v29 = v27;
    memcpy(v25, v26, v27);
    v13 = v28;
    v25 = (*(v28 + 4) + v29);
    *(v28 + 4) = v25;
  }

  if (v25 < *(v13 + 3))
  {
LABEL_24:
    *(v13 + 4) = v25 + 1;
    *v25 = 10;
    if (atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_98:
  v13 = llvm::raw_ostream::write(v13, 10);
  if (!atomic_load_explicit(_MergedGlobals_1, memory_order_acquire))
  {
LABEL_29:
    llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_1, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  }

LABEL_30:
  v31 = *(_MergedGlobals_1[0] + 8);
  v70 = 0;
  v32 = *_MergedGlobals_1[0];
  if (v31)
  {
    while (!*v32 || *v32 == -8)
    {
      ++v32;
    }
  }

  v34 = *_MergedGlobals_1[0] + 8 * v31;
  if (v32 != v34)
  {
    LODWORD(v35) = 0;
    v36 = *v32;
    do
    {
      if (v35 >= 0x20)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v72[v35] = v36 + 8;
      v35 = ++v70;
      do
      {
        v37 = v32[1];
        ++v32;
        v36 = v37;
        if (v37)
        {
          v38 = v36 == -8;
        }

        else
        {
          v38 = 1;
        }
      }

      while (v38);
    }

    while (v32 != v34);
    if (v35 >= 2)
    {
      qsort(v72, v35, 8uLL, _ZZZNK12_GLOBAL__N_114PassNameParser15printOptionInfoERKN4llvm2cl6OptionEmENK3__0clINS1_9StringMapIN4mlir8PassInfoENS1_15MallocAllocatorEEEEEDaNS1_9StringRefERT_ENUlPKPNS9_17PassRegistryEntryESK_E_8__invokeESK_SK_);
    }
  }

  v39 = llvm::outs(v13);
  v40 = llvm::raw_ostream::indent(v39, 4u);
  v41 = *(v40 + 4);
  if ((*(v40 + 3) - v41) > 5)
  {
    *(v41 + 4) = 29541;
    *v41 = 1936941392;
    v45 = *(v40 + 3);
    v42 = (*(v40 + 4) + 6);
    *(v40 + 4) = v42;
    if ((v45 - v42) > 1)
    {
LABEL_52:
      *v42 = 2618;
      *(v40 + 4) += 2;
      v43 = v72;
      v44 = v70;
      if (!v70)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }
  }

  else
  {
    v40 = llvm::raw_ostream::write(v40, "Passes", 6uLL);
    v42 = *(v40 + 4);
    if (*(v40 + 3) - v42 > 1uLL)
    {
      goto LABEL_52;
    }
  }

  v40 = llvm::raw_ostream::write(v40, ":\n", 2uLL);
  v43 = v72;
  v44 = v70;
  if (!v70)
  {
    goto LABEL_58;
  }

LABEL_56:
  v46 = 8 * v44;
  do
  {
    v47 = *v43++;
    v40 = mlir::PassRegistryEntry::printHelpStr(v47, 6, a3);
    v46 -= 8;
  }

  while (v46);
LABEL_58:
  if (!atomic_load_explicit(qword_27F874190, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F874190, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
  }

  if (*(qword_27F874190[0] + 12))
  {
    if (!atomic_load_explicit(qword_27F874190, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F874190, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
    }

    v48 = *qword_27F874190[0];
    v49 = *(qword_27F874190[0] + 8);
    v71 = 0;
    v50 = *qword_27F874190[0];
    if (v49)
    {
      if (!*v48 || *v48 == -8)
      {
        do
        {
          v53 = v50[1];
          ++v50;
          v52 = v53;
          if (v53)
          {
            v54 = v52 == -8;
          }

          else
          {
            v54 = 1;
          }
        }

        while (v54);
      }
    }

    v55 = &v48[v49];
    if (v50 != v55)
    {
      LODWORD(v56) = 0;
      v57 = *v50;
      do
      {
        if (v56 >= 0x20)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v72[v56] = v57 + 8;
        v56 = ++v71;
        do
        {
          v58 = v50[1];
          ++v50;
          v57 = v58;
          if (v58)
          {
            v59 = v57 == -8;
          }

          else
          {
            v59 = 1;
          }
        }

        while (v59);
      }

      while (v50 != v55);
      if (v56 >= 2)
      {
        qsort(v72, v56, 8uLL, _ZZZNK12_GLOBAL__N_114PassNameParser15printOptionInfoERKN4llvm2cl6OptionEmENK3__0clINS1_9StringMapIN4mlir16PassPipelineInfoENS1_15MallocAllocatorEEEEEDaNS1_9StringRefERT_ENUlPKPNS9_17PassRegistryEntryESK_E_8__invokeESK_SK_);
      }
    }

    v60 = llvm::outs(v40);
    v61 = llvm::raw_ostream::indent(v60, 4u);
    v62 = v61[4];
    if (v61[3] - v62 > 0xDuLL)
    {
      qmemcpy(v62, "Pass Pipelines", 14);
      v66 = v61[3];
      v63 = (v61[4] + 14);
      v61[4] = v63;
      if ((v66 - v63) > 1)
      {
LABEL_88:
        *v63 = 2618;
        v61[4] += 2;
        v64 = v72;
        v65 = v71;
        if (!v71)
        {
          return;
        }

LABEL_92:
        v67 = 8 * v65;
        do
        {
          v68 = *v64++;
          mlir::PassRegistryEntry::printHelpStr(v68, 6, a3);
          v67 -= 8;
        }

        while (v67);
        return;
      }
    }

    else
    {
      v61 = llvm::raw_ostream::write(v61, "Pass Pipelines", 0xEuLL);
      v63 = v61[4];
      if (v61[3] - v63 > 1uLL)
      {
        goto LABEL_88;
      }
    }

    llvm::raw_ostream::write(v61, ":\n", 2uLL);
    v64 = v72;
    v65 = v71;
    if (!v71)
    {
      return;
    }

    goto LABEL_92;
  }
}