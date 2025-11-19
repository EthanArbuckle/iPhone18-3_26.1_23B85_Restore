TOperationErrorRecord **TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::operator=<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>(TOperationErrorRecord **a1, TOperationErrorRecord **a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      TOperationErrorRecord::RemovePtrReference(v4);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  return a1;
}

void TNode::RemoveChildrenDeep(FINode ***a1, char a2, int a3, TNodeEventPtrs *a4)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4 != *a1)
  {
    if ((a2 & 2) == 0)
    {
      a3 = 1;
    }

    do
    {
      v9 = *--v4;
      v10 = TNodeFromFINode(v9);
      v11 = TNode::InfoLock(v10);
      os_unfair_lock_lock(v11);
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v11);
      os_unfair_lock_lock((v13 + 108));
      v14 = *(v13 + 123);
      os_unfair_lock_unlock((v13 + 108));
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v14 < 0)
      {
        continue;
      }

      v15 = TNodeFromFINode(*v4);
      v16 = TNode::InfoLock(v15);
      os_unfair_lock_lock(v16);
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v16);
      os_unfair_lock_lock((v18 + 108));
      v19 = *(v18 + 123);
      os_unfair_lock_unlock((v18 + 108));
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if ((v19 & 4) != 0)
      {
        v20 = TNodeFromFINode(*v4);
        TDeviceManagementMonitor::UnRegisterApp(v20, v21);
      }

      v22 = TNodeFromFINode(*v4);
      v23 = TNode::InfoLock(v22);
      os_unfair_lock_lock(v23);
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v23);
      os_unfair_lock_lock((v25 + 108));
      v26 = *(v25 + 123);
      os_unfair_lock_unlock((v25 + 108));
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if ((v26 & 0x20) != 0)
      {
        v27 = TNodeFromFINode(*v4);
        if ((a3 & TNode::RemoveAllChildren(v27)) == 1)
        {
LABEL_24:
          if (a2)
          {
            TNodeFromFINode(*v4);
          }

          v28 = TNodeFromFINode(*v4);
          TNode::RemoveSelf(v28, a4);
        }
      }

      else if (a3)
      {
        goto LABEL_24;
      }
    }

    while (v4 != v5);
  }
}

uint64_t TNode::UserCanRead(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return (v5 >> 12) & 1;
}

uint64_t TFSInfo::UserCanWrite(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = (*(this + 123) >> 13) & 1;
  os_unfair_lock_unlock(this + 27);
  return v2;
}

uint64_t TNode::IsSticky(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if ((v5 & 0x20) == 0)
  {
    return 0;
  }

  v8 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v8);
  v10 = *(this + 2);
  v9 = *(this + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v8);
  v7 = (TFSInfo::GetMode(v10) >> 9) & 1;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v7;
}

void sub_1E5748048(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL TNode::UserCanChangePermissions(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  IsRoot = TFSInfo::UserIsRoot(v4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  IsOwner = TNode::UserIsOwner(this);
  if (!IsRoot)
  {
    return IsOwner;
  }

  TNode::GetVolumeInfo(this, &v9);
  v7 = *(v9 + 107);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v7;
}

void sub_1E5748100(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL TNode::UserIsOwner(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v2);
    v5 = *(v4 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (v5)
    {
      return 1;
    }
  }

  else
  {
    os_unfair_lock_unlock(v2);
    if (*(v4 + 120))
    {
      return 1;
    }
  }

  v8 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v8);
  v10 = *(this + 2);
  v9 = *(this + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v8);
  IsOwner = TFSInfo::UserIsOwner(v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return IsOwner;
}

void sub_1E57481D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::UserCanListContent(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v2);
    v5 = *(v4 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    os_unfair_lock_unlock(v2);
    v5 = *(v4 + 120);
  }

  v7 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v7);
  v9 = *(this + 2);
  v8 = *(this + 3);
  if (!v5)
  {
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v7);
    os_unfair_lock_lock((v9 + 108));
    v12 = *(v9 + 123);
    os_unfair_lock_unlock((v9 + 108));
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if ((v12 & 0x20) == 0)
    {
      return 0;
    }

    v15 = TNode::InfoLock(v13);
    os_unfair_lock_lock(v15);
    v17 = *(this + 2);
    v16 = *(this + 3);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v15);
    os_unfair_lock_lock((v17 + 108));
    v14 = (*(v17 + 123) >> 14) & 1;
    os_unfair_lock_unlock((v17 + 108));
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    return v14;
  }

  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v7);
  os_unfair_lock_lock((v9 + 108));
  v10 = *(v9 + 123);
  os_unfair_lock_unlock((v9 + 108));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((v10 & 0x20) != 0)
  {
    return 1;
  }

  return TNode::AliasIsContainer(this);
}

uint64_t TNode::UserCanDelete(TNode *this)
{
  ExtendedUserAccess = TNode::FetchExtendedUserAccess(this);
  if (!ExtendedUserAccess)
  {
    return 1;
  }

  v3 = TNode::InfoLock(ExtendedUserAccess);
  os_unfair_lock_lock(v3);
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v3);
  os_unfair_lock_lock((v5 + 108));
  v6 = (*(v5 + 123) >> 22) & 1;
  os_unfair_lock_unlock((v5 + 108));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v6;
}

uint64_t TNode::UserCanDeleteChild(TNode *this)
{
  ExtendedUserAccess = TNode::FetchExtendedUserAccess(this);
  if (!ExtendedUserAccess)
  {
    return 1;
  }

  v3 = TNode::InfoLock(ExtendedUserAccess);
  os_unfair_lock_lock(v3);
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v3);
  os_unfair_lock_lock((v5 + 108));
  v6 = (*(v5 + 123) >> 23) & 1;
  os_unfair_lock_unlock((v5 + 108));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v6;
}

uint64_t TFSInfo::UserCanAddDeleteChild(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = (*(this + 123) >> 23) & 1;
  os_unfair_lock_unlock(this + 27);
  return v2;
}

void TNode::IncrementReaders(TNode *this)
{
  OperationLock = TNode::GetOperationLock(this);
  os_unfair_lock_lock(OperationLock);
  ++OperationLock[1]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(OperationLock);
}

void TNode::DecrementReaders(TNode *this)
{
  OperationLock = TNode::GetOperationLock(this);
  os_unfair_lock_lock(OperationLock);
  --OperationLock[1]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(OperationLock);

  TNode::ReleaseOperationLockWhenDone(this);
}

void TNode::ReleaseOperationLockWhenDone(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    os_unfair_lock_lock(*(this + 5));
    if (v3[1]._os_unfair_lock_opaque || v3[4]._os_unfair_lock_opaque || v3[3]._os_unfair_lock_opaque)
    {
      os_unfair_lock_unlock(v3);
    }

    else
    {
      os_unfair_lock_opaque = v3[2]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v3);
      if (!os_unfair_lock_opaque)
      {
        v5 = *(this + 5);
        *(this + 5) = 0;
        if (v5)
        {
          MEMORY[0x1E692CD30](v5, 0x1020C40A5B76CDFLL);
        }
      }
    }
  }

  os_unfair_lock_unlock(v2);
}

BOOL TNode::IsInUse(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = v3[3] || v3[1] || v3[2] != 0;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t TNode::AddWriter(TNode *a1, uint64_t a2)
{
  OperationLock = TNode::GetOperationLock(a1);

  return TOperationLock::AddWriter(OperationLock, a2);
}

uint64_t TOperationLock::AddWriter(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  if (*(a1 + 24))
  {
    v4 = 4294959221;
  }

  else
  {
    v4 = 0;
    *(a1 + 24) = a2;
    ++*(a1 + 12);
  }

  os_unfair_lock_unlock(a1);
  return v4;
}

void TNode::RemoveWriter(TNode *a1, uint64_t a2)
{
  OperationLock = TNode::GetOperationLock(a1);
  TOperationLock::RemoveWriter(OperationLock, a2);

  TNode::ReleaseOperationLockWhenDone(a1);
}

void TOperationLock::RemoveWriter(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 24);
  if (v4)
  {
    if (v4 != a2)
    {
      v6 = LogObj(2);
      TOperationLock::RemoveWriter(v6, (a1 + 24), a2);
    }

    v5 = *(a1 + 12) - 1;
    *(a1 + 12) = v5;
    if (!v5 && !*(a1 + 16))
    {
      *(a1 + 24) = 0;
    }
  }

  os_unfair_lock_unlock(a1);
}

uint64_t TNode::GetWriteOperation(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t TNode::AddChildWriter(TNode *a1, uint64_t a2)
{
  OperationLock = TNode::GetOperationLock(a1);

  return TOperationLock::AddChildWriter(OperationLock, a2);
}

uint64_t TOperationLock::AddChildWriter(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
    ++*(a1 + 16);
  }

  else
  {
    v6 = 4294959221;
  }

  os_unfair_lock_unlock(a1);
  return v6;
}

void TNode::RemoveChildWriter(TNode *a1, uint64_t a2)
{
  OperationLock = TNode::GetOperationLock(a1);
  TOperationLock::RemoveChildWriter(OperationLock, a2);

  TNode::ReleaseOperationLockWhenDone(a1);
}

void TOperationLock::RemoveChildWriter(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    abort();
  }

  v6 = *(a1 + 12);
  v7 = *(a1 + 16) - 1;
  *(a1 + 16) = v7;
  if (!(v6 | v7))
  {
    *(a1 + 24) = 0;
  }

  os_unfair_lock_unlock(a1);
}

void TNode::UnRegisterForInternalNotifications(TNodeEvent *a1, FINode **a2, uint64_t a3)
{
  TNodeEvent::GetInternalClientNotifier(a1, &v6);
  TNode::UnregisterChangeNotification(a1, &v6, a2, a3);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E57489DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::KQueue(TNode *this)
{
  KQueueLock();
  os_unfair_lock_lock(&dword_1ECFF4498);
  v1 = TNode::gKQueue;
  os_unfair_lock_unlock(&dword_1ECFF4498);
  return v1;
}

void KQueueLock(void)
{
  if ((atomic_load_explicit(&qword_1ECFF4500, memory_order_acquire) & 1) == 0)
  {
    KQueueLock();
  }
}

void TNode::AddkQueueNotification(TNode *this)
{
  KQueueLock();
  os_unfair_lock_lock(&dword_1ECFF4498);
  if (!TNode::gKQueueRegistrationCount++)
  {
    TNode::gKQueue = kqueue();
  }

  os_unfair_lock_unlock(&dword_1ECFF4498);
}

void TNode::RemovekQueueNotification(TNode *this)
{
  KQueueLock();
  os_unfair_lock_lock(&dword_1ECFF4498);
  if (!--TNode::gKQueueRegistrationCount)
  {
    close(TNode::gKQueue);
    TNode::gKQueue = 0;
  }

  os_unfair_lock_unlock(&dword_1ECFF4498);
}

uint64_t TNode::AdjustedResizeQuanta(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if ((v5 & 0x100) != 0)
  {
    return 2000000;
  }

  v7 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v7);
  v9 = *(this + 2);
  v8 = *(this + 3);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v7);
  os_unfair_lock_lock((v9 + 108));
  v10 = *(v9 + 123);
  os_unfair_lock_unlock((v9 + 108));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((v10 & 0x20) == 0)
  {
    return 5000000;
  }

  LastResizeDuration = TChildrenList::GetLastResizeDuration(*(this + 7));
  if ((5 * LastResizeDuration) >= 0x4C4B40)
  {
    return 5000000;
  }

  else
  {
    return 5 * LastResizeDuration;
  }
}

void TNode::SetTimerToDispatchResizeRequest(id **a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = **a1;
    if (TNodeFromFINode(v4))
    {
      v5 = TNodeFromFINode(v4);
      TNode::GetVolumeInfo(v5, &v8);
      if (v8)
      {
        TFSVolumeInfo::GetFolderSizingThread(v8, &v6);
        if (v6)
        {
          TFolderSizingThread::SetTimerToDispatchResizeRequest(&v6, a1, a2);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }
  }
}

void sub_1E5748CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void TNode::DispatchResizeRequestNow(id **a1)
{
  if (TNode::IsContextOpen(a1))
  {
    v3 = **a1;
    v2 = TNodeFromFINode(v3);
    TNode::PostFolderSizingTaskRequest(v2, a1, 1);
  }
}

uint64_t TNode::CreateNewChild(TNode *this, CFStringRef *a2, TNodePtr *a3)
{
  Length = CFStringGetLength(*a2);
  TNodePtr::TNodePtr(&v30, 0);
  TNodePtr::operator=(&a3->fFINode, &v30.fFINode);

  if (!Length)
  {
    return 4294959227;
  }

  v8 = TNode::InfoLock(v7);
  os_unfair_lock_lock(v8);
  v10 = *(this + 2);
  v9 = *(this + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v8);
  os_unfair_lock_lock((v10 + 108));
  v11 = *(v10 + 123);
  os_unfair_lock_unlock((v10 + 108));
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if ((v11 & 0x20) == 0)
  {
    return 4294959241;
  }

  TNodePtr::TNodePtr(&v33, this);
  v13 = TNodeFromFINode(v33.fFINode);
  v14 = a2[2];
  v15 = a2[3];
  v16 = (v13 + (v15 >> 1));
  if (v15)
  {
    v14 = *(*v16 + v14);
  }

  v12 = v14(v16, a2, a3);
  if (TNodeFromFINode(a3->fFINode))
  {
    fFINode = a3->fFINode;
    if (v12)
    {
      v18 = TNodeFromFINode(fFINode);
      TNode::RemoveSelf(v18, 0);
    }

    else if (TNodeFromFINode(fFINode))
    {
      v20 = TNodeFromFINode(v33.fFINode);
      v30.fFINode = 0;
      v31 = 0;
      v32 = 0;
      v21 = a2[4];
      v22 = a2[5];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29[0] = v21;
      v29[1] = &v22->__vftable;
      TNode::AddChild(v20, a3, &v30, v29);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v29[0] = &v30;
      std::vector<TPropertyInfo>::__destroy_vector::operator()[abi:ne200100](v29);
      v23 = TNodeFromFINode(a3->fFINode);
      v24 = TNode::InfoLock(v23);
      os_unfair_lock_lock(v24);
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v24);
      os_unfair_lock_lock((v26 + 108));
      v27 = *(v26 + 123);
      os_unfair_lock_unlock((v26 + 108));
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if ((v27 & 0x20) != 0)
      {
        v28 = TNodeFromFINode(a3->fFINode);
        TNode::SetSizeProperties(v28, 0, 0, 1, 1, 0);
      }
    }
  }

  return v12;
}

void sub_1E5748FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, id a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  a9 = &a11;
  std::vector<TPropertyInfo>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void TNode::SetSizeProperties(TNode *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v31 = 0;
  v32 = 0;
  v30 = &v31;
  std::mutex::lock(&SizingGenerationMutex(void)::sMutex);
  v13 = *(this + 7);
  if (v13)
  {
    v14 = *(v13 + 180);
    if (a6 < 0 || v14 <= a6)
    {
      *(v13 + 180) = v14 + 1;
      v15 = TNode::InfoLock(v12);
      os_unfair_lock_lock(v15);
      v17 = *(this + 2);
      v16 = *(this + 3);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v15);
      os_unfair_lock_lock((v17 + 104));
      v18 = *(v17 + 80);
      if (v18)
      {
        TFSInfoOverflow::FolderSizeRecord(v18, v33);
        if (v34)
        {
          v19 = v33[3];
        }

        else
        {
          v19 = -1;
        }
      }

      else
      {
        v19 = -1;
      }

      os_unfair_lock_unlock((v17 + 104));
      if (v19 != a5)
      {
        LODWORD(v33[0]) = 1685480308;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v30, v33);
      }

      os_unfair_lock_lock((v17 + 104));
      v20 = *(v17 + 80);
      if (v20)
      {
        TFSInfoOverflow::FolderSizeRecord(v20, v33);
        if (v34)
        {
          v21 = v33[2];
        }

        else
        {
          v21 = -1;
        }
      }

      else
      {
        v21 = -1;
      }

      os_unfair_lock_unlock((v17 + 104));
      if (v21 != a4)
      {
        LODWORD(v33[0]) = 1684237940;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v30, v33);
      }

      os_unfair_lock_lock((v17 + 104));
      v22 = *(v17 + 80);
      if (v22)
      {
        TFSInfoOverflow::FolderSizeRecord(v22, v33);
        if (v34)
        {
          v23 = v33[1];
        }

        else
        {
          v23 = -1;
        }
      }

      else
      {
        v23 = -1;
      }

      os_unfair_lock_unlock((v17 + 104));
      if (v23 != a3)
      {
        LODWORD(v33[0]) = 1885895027;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v30, v33);
      }

      os_unfair_lock_lock((v17 + 104));
      v24 = *(v17 + 80);
      if (v24)
      {
        TFSInfoOverflow::FolderSizeRecord(v24, v33);
        if (v34)
        {
          v25 = v33[0];
        }

        else
        {
          v25 = -1;
        }
      }

      else
      {
        v25 = -1;
      }

      os_unfair_lock_unlock((v17 + 104));
      if (v25 != a2)
      {
        LODWORD(v33[0]) = 1819240307;
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v30, v33);
      }

      if (v32)
      {
        operator new();
      }

      TNode::SetSizesAreValid(this, 1);
      v27 = TNode::InfoLock(v26);
      os_unfair_lock_lock(v27);
      v29 = *(this + 2);
      v28 = *(this + 3);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        os_unfair_lock_unlock(v27);
        os_unfair_lock_lock((v29 + 108));
        *(v29 + 123) |= 0x4000000u;
        os_unfair_lock_unlock((v29 + 108));
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        if (!v16)
        {
LABEL_40:
          std::mutex::unlock(&SizingGenerationMutex(void)::sMutex);
          TNode::SendNotifications(this, &v30);
          goto LABEL_41;
        }
      }

      else
      {
        os_unfair_lock_unlock(v27);
        os_unfair_lock_lock((v29 + 108));
        *(v29 + 123) |= 0x4000000u;
        os_unfair_lock_unlock((v29 + 108));
        if (!v16)
        {
          goto LABEL_40;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      goto LABEL_40;
    }
  }

  std::mutex::unlock(&SizingGenerationMutex(void)::sMutex);
LABEL_41:
  std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::destroy(&v30, v31);
}

void sub_1E574939C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::mutex::unlock(&SizingGenerationMutex(void)::sMutex);
  std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::destroy(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t TNode::CreateChildContainer(TNode *this, const TChildCreator *a2, TNodePtr *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = TNode::InfoLock(this);
  os_unfair_lock_lock(v5);
  v7 = *(this + 2);
  v6 = *(this + 3);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v5);
  if (!*(v7 + 120))
  {
    v10 = *(a2 + 10);
    v14 = v10;
    if (v10)
    {
      TOperation::AddPtrReference(v10);
      if (UseFileProviderFramework())
      {
        v11 = TFSInfo::GetFPItem(v7);
        if (v11)
        {
          v12 = objc_alloc(MEMORY[0x1E69672E8]);
          TChildCreator::Name(a2, v15);
          v13 = [v12 initWithParentItem:v11 folderName:*v15];
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v15);
          TOperation::PreflightFPOperationBulk(v14, v13);
        }
      }
    }

    _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 4294959238;
}

void sub_1E5749814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, std::__shared_weak_count *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  TDSHelperContext::~TDSHelperContext(&STACK[0xC38]);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(va2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void TChildCreator::Name(TString **this@<X0>, TString *a2@<X8>)
{
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, *this);
}

id TNode::FPItemsCollectionFromURL(TNode *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = TNode::GetFIProvider(this);
  if (!v2)
  {
    v3 = LogObj(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      TNode::GetPath(v29, this, 1, 0);
      v4 = SanitizedPath(v29);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_INFO, "No provider found for collection, looking up by url %{public}@", &buf, 0xCu);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v29[0].fString.fRef);
    }

    TNode::CFURL(this, v29);
    v2 = [FIProviderDomain providerDomainForURL:v29[0].fString.fRef cachePolicy:3 error:0];
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v29[0].fString.fRef);
  }

  TNode::CFURL(this, v29);
  v5 = v29[0].fString.fRef;
  v6 = [(__CFString *)v5 URLByStandardizingPath];

  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v29[0].fString.fRef);
  v7 = FPItemManagerInstance();
  v25 = 0;
  v8 = [v7 newCollectionWithItemAtURL:v6 error:&v25];
  v9 = v25;

  if (!v8 && v2)
  {
    v10 = LogObj(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = SanitizedURL(v6);
      LODWORD(v29[0].fString.fRef) = 138543362;
      *(&v29[0].fString.fRef + 4) = v11;
      _os_log_impl(&dword_1E5674000, v10, OS_LOG_TYPE_DEFAULT, "Collection not found by url, Attempting fetch of FPItem for %{public}@", v29, 0xCu);
    }

    v29[3].fString.fRef = 0;
    TNode::FPItemFromURLWithTimeout(v6, v29, &buf);
    std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100](v29);
    v12 = buf;
    if (!buf)
    {
      v15 = LogObj(4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = SanitizedURL(v6);
        v19 = *(&buf + 1);
        LODWORD(v29[0].fString.fRef) = 138543618;
        *(&v29[0].fString.fRef + 4) = v18;
        WORD2(v29[1].fString.fRef) = 2114;
        *(&v29[1].fString.fRef + 6) = v19;
        _os_log_impl(&dword_1E5674000, v15, OS_LOG_TYPE_ERROR, "Unable to find FPItem for URL '%{public}@' state of folder may be stale. %{public}@", v29, 0x16u);
      }

      v8 = 0;
      goto LABEL_23;
    }

    v13 = buf;
    v14 = LogObj(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v29[0].fString.fRef) = 138543362;
      *(&v29[0].fString.fRef + 4) = v13;
      _os_log_impl(&dword_1E5674000, v14, OS_LOG_TYPE_DEFAULT, "Found FPItem %{public}@", v29, 0xCu);
    }

    TNodePtr::TNodePtr(&v24, this);
    TNodePtr::TNodePtr(&v27, &v24);
    v15 = v13;
    v28 = v15;
    memset(v29, 0, 24);
    std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__init_with_size[abi:ne200100]<std::pair<TNodePtr,FPItem * {__strong}> const*,std::pair<TNodePtr,FPItem * {__strong}> const*>(v29, &v27, v29, 1uLL);
    TNode::AttachFPItemsMetadata(v29, 1, 1);
    v26 = v29;
    std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&v26);

    if ([v15 isPlaceholder])
    {
      v16 = LogObj(4);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = SanitizedURL(v6);
        LODWORD(v29[0].fString.fRef) = 138543362;
        *(&v29[0].fString.fRef + 4) = v17;
        _os_log_impl(&dword_1E5674000, v16, OS_LOG_TYPE_ERROR, "Got a placeholder item for URL, so no collection for %{public}@", v29, 0xCu);
      }

      v8 = 0;
    }

    else
    {
      v8 = TNode::FPItemsCollection(this, v15);
      if (!v8)
      {
LABEL_23:

        goto LABEL_24;
      }

      v16 = LogObj(4);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v29[0].fString.fRef) = 138543362;
        *(&v29[0].fString.fRef + 4) = v15;
        _os_log_impl(&dword_1E5674000, v16, OS_LOG_TYPE_DEFAULT, "Found collection after lookup of FPItem %{public}@", v29, 0xCu);
      }
    }

    goto LABEL_23;
  }

LABEL_24:
  if (v8)
  {
    [v8 setShowHiddenFiles:1];
  }

  else if (v9 && [(__CFString *)v9 code]!= 22)
  {
    v22 = LogObj(4);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = SanitizedURL(v6);
      LODWORD(v29[0].fString.fRef) = 138543618;
      *(&v29[0].fString.fRef + 4) = v23;
      WORD2(v29[1].fString.fRef) = 2114;
      *(&v29[1].fString.fRef + 6) = v9;
      _os_log_impl(&dword_1E5674000, v22, OS_LOG_TYPE_ERROR, "Unable to load collection for url %{public}@ with error: %{public}@", v29, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v8;
}

void TNode::SetIsIncomplete(TNode *this, int a2)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  TFSInfo::SetIsIncomplete(v6, a2);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E574A094(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::GetNodeFromBookmarkData(uint64_t *a1, void **a2, char a3)
{
  TNodePtr::TNodePtr(&v13, 0);
  TNodePtr::operator=(a2, &v13.fFINode);

  v6 = *a1;
  if (*a1)
  {
    v13.fFINode = 0;
    v7 = MEMORY[0x1E692C470](*MEMORY[0x1E695E480], v6, ((a3 & 3) << 8) ^ 0x100u, 0, 0, 0, &v13);
    v12 = v7;
    if (v13.fFINode)
    {
      NodeFromURL = TCFURLInfo::TranslateCFError(v13.fFINode, v8);
      if (NodeFromURL)
      {
LABEL_9:
        TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v12);
        TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(&v13.fFINode);
        return NodeFromURL;
      }

      v7 = v12;
    }

    else if (!v7)
    {
      NodeFromURL = 4294959232;
      goto LABEL_9;
    }

    v11 = v7;
    NodeFromURL = TNode::GetNodeFromURL(&v11, a2, 0);
    goto LABEL_9;
  }

  return 4294959236;
}

void sub_1E574A19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  TAutoRef<__CFError *,TRetainReleasePolicy<__CFError *>>::~TAutoRef(va1);
  _Unwind_Resume(a1);
}

void TNode::DisplayNameWithoutDirectionalFormatting(TNode *this@<X0>, TString *a2@<X8>)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  URL = TFSInfo::MakeURL(v6);
  v7 = URL;
  v18 = 0;
  [v7 getResourceValue:&v18 forKey:*MEMORY[0x1E695E370] error:0];
  v8 = v18;

  v9 = [v8 firstObject];
  a2->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(a2, v9);

  if ([v8 count] >= 2)
  {
    v10 = [v8 objectAtIndexedSubscript:1];
    theString = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&theString, v10);

    if (CFStringGetLength(theString))
    {
      v11 = *MEMORY[0x1E695E480];
      v12 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], ".", 1, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      cf = v12;
      v15.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v15, v12);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
      fRef = v15.fString.fRef;
      v16.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      MutableCopy = CFStringCreateMutableCopy(v11, 0, fRef);
      CFRelease(&stru_1F5F42870);
      v16.fString.fRef = MutableCopy;
      TString::Append(&v16, &theString);
      TString::Append(a2, &v16);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16.fString.fRef);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  }

  if (!CFStringGetLength(a2->fString.fRef))
  {
    TFSInfo::DisplayName(v6, &cf);
    if (&cf != a2)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a2->fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  }

  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&URL);

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E574A444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, uint64_t a12, const void *a13)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a11);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v15);

  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&a13);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(a1);
}

BOOL TNode::EqualDisplayName(TNode *this, const TString *a2)
{
  TNode::DisplayName(this, &cf1);
  v3 = CFEqual(cf1, a2->fString.fRef) != 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf1);
  return v3;
}

void sub_1E574A588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TNode::MarkAsUsed(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  TNodeEvent::Notify(v4, v5, v6);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E574A61C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TNode::AddVolumeToSuperRoot(TNode *this, TNodePtr *a2)
{
  TGlobalNodes::RootNode(&v8, this);
  v7 = 0;
  TNode::StPopulating::StPopulating(v6, &v8, 0);
  v3 = TNodeFromFINode(v8);
  TNode::AddNewChild(&v5, v3, this, &v7, 1);
  TNodePtr::operator=(this, &v5);

  TNode::StPopulating::~StPopulating(v6);
  if (v7)
  {
    v4 = TNodeFromFINode(v8);
    TNode::SendNotification(v4, 3, this, 0, 0);
  }
}

void TNode::AddVolume(uint64_t a1, uint64_t a2, void **a3)
{
  TNodePtr::TNodePtr(&v5, 0);
  TNodePtr::operator=(a3, &v5.fFINode);

  TGlobalNodes::RootNode(&v7, v4);
  v5.fFINode = 0;
  v6 = 0;
  TFSVolumeInfo::AddVolume();
}

void sub_1E574AAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *a14)
{
  os_unfair_lock_unlock(v15);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

uint64_t TNode::RemoveVolume(const void **a1)
{
  v1 = *a1;
  v11 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  TNode::GetVolumeNode(&v11, &v12);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v11);
  if (TNodeFromFINode(v12) && (v2 = TNodeFromFINode(v12), v3 = TNode::ParentLock(v2), os_unfair_lock_lock(v3), TNodePtr::TNodePtr(&v10, *(v2 + 48)), os_unfair_lock_unlock(v3), v4 = TNodeFromFINode(v10.fFINode), v10.fFINode, v4))
  {
    v5 = TNodeFromFINode(v12);
    v6 = TNode::ParentLock(v5);
    os_unfair_lock_lock(v6);
    TNodePtr::TNodePtr(&v10, *(v5 + 48));
    os_unfair_lock_unlock(v6);
    v7 = TNodeFromFINode(v10.fFINode);
    TNode::HandleSync(v7, 0x1000000);

    v8 = 0;
  }

  else
  {
    v8 = 4294959240;
  }

  return v8;
}

void sub_1E574AC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12)
{
  v13 = v12;
  os_unfair_lock_unlock(v13);

  _Unwind_Resume(a1);
}

void TNode::HandleFolderSizingRequests(id **a1)
{
  v19 = **a1;
  if (TNode::IsContextOpen(v19))
  {
    v2 = TNodeFromFINode(v19);
    v3 = TNode::InfoLock(v2);
    os_unfair_lock_lock(v3);
    v5 = *(v2 + 16);
    v4 = *(v2 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v3);
    os_unfair_lock_lock((v5 + 108));
    v6 = *(v5 + 123);
    os_unfair_lock_unlock((v5 + 108));
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    if ((v6 & 0x20) != 0)
    {
      v8 = TTime::MicrosecondsSinceStartup(v7);
      v9 = TNodeFromFINode(v19);
      v10 = TNode::InfoLock(v9);
      os_unfair_lock_lock(v10);
      v11 = *(v9 + 24);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v10);
      v12 = TNodeFromFINode(v19);
      v13 = TNode::AdjustedResizeQuanta(v12);
      v14 = TNodeFromFINode(v19);
      v15 = TChildrenList::LastResizeTime(*(v14 + 56)) + v13;
      if (v8 >= v15 && (v16 = TNodeFromFINode(v19), TNode::IsSynchingAppropriate(v16)) && (v17 = atomic_load((*(TNodeFromFINode(v19) + 56) + 196)), v17 <= 1))
      {
        TNode::HandleFolderSizingRequest(a1);
      }

      else
      {
        if (v8 >= v15)
        {
          v18 = v8 + 2000000;
        }

        else
        {
          v18 = v15;
        }

        TNode::SetTimerToDispatchResizeRequest(a1, v18);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }
}

void TNode::HandleFolderSizingRequest(id **a1)
{
  v2 = **a1;
  v32 = v2;
  if (TNodeFromFINode(v2))
  {
    atomic_fetch_and((TNodeFromFINode(v2) + 88), 0xFFBFu);
    if (*(*a1 + 13) != 1003)
    {
      TNodeTask::SetRequestStatus(*a1, 1002);
      v3 = v32;
      v4 = TNodeFromFINode(v32);
      v5 = TNode::InfoLock(v4);
      os_unfair_lock_lock(v5);
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v5);
      os_unfair_lock_lock((v7 + 108));
      v8 = *(v7 + 123);
      os_unfair_lock_unlock((v7 + 108));
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      if ((v8 & 0x20) != 0)
      {
        v9 = TNodeFromFINode(v32);
        v10 = TNode::InfoLock(v9);
        os_unfair_lock_lock(v10);
        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v10);
        os_unfair_lock_lock((v12 + 108));
        v13 = *(v12 + 123);
        os_unfair_lock_unlock((v12 + 108));
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if ((v13 & 0x100) != 0)
        {
          v20 = TNodeFromFINode(v32);
          TNode::RecalculateFreeSpaceAndCapacity(v20, 1);
          v21 = TNodeFromFINode(v32);
          TNode::SetSizesAreValid(v21, 1);
        }

        else
        {
          v14 = TNodeFromFINode(v32);
          if (!TNode::SynchingSuspended(v14))
          {
            v15 = TNodeFromFINode(v32);
            v16 = TNode::ParentLock(v15);
            os_unfair_lock_lock(v16);
            TNodePtr::TNodePtr(&v30, *(v15 + 48));
            os_unfair_lock_unlock(v16);
            if (TNodeFromFINode(v30.fFINode))
            {
              v17 = TNodeFromFINode(v3);
              v18 = TNode::ParentLock(v17);
              os_unfair_lock_lock(v18);
              TNodePtr::TNodePtr(&v31, *(v17 + 48));
              os_unfair_lock_unlock(v18);
              v19 = TNodeFromFINode(v31.fFINode);
              LODWORD(v17) = atomic_load((TNode::GetNotifierList(v19) + 4));

              v3 = v32;
              if (v17 > 0)
              {
                goto LABEL_21;
              }
            }

            else
            {
            }

            v22 = TNodeFromFINode(v3);
            v23 = atomic_load((TNode::GetNotifierList(v22) + 4));
            v3 = v32;
            if (v23 > 0 || (v24 = TNodeFromFINode(v32), TNode::IsDeferredForSymlink(v24, TFSInfo::IsPackage, 0)))
            {
LABEL_21:
              v25 = TNodeFromFINode(v3);
              v26 = *(v25 + 7);
              v27 = TTime::MicrosecondsSinceStartup(v25);
              TChildrenList::SetLastResizeTime(v26, v27);
              v28 = TNodeFromFINode(v3);
              v29 = TNode::ParentLock(v28);
              os_unfair_lock_lock(v29);
              TNodePtr::TNodePtr(&v31, *(v28 + 48));
              os_unfair_lock_unlock(v29);
              std::allocate_shared[abi:ne200100]<TFSInfoSizer,std::allocator<TFSInfoSizer>,TNodePtr &,TNodePtr,std::shared_ptr<TNodeTask> const&,0>();
            }
          }
        }
      }
    }
  }
}

void sub_1E574B190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15)
{
  os_unfair_lock_unlock(v15);

  _Unwind_Resume(a1);
}

uint64_t TNode::SizingGeneration(TNode *this)
{
  std::mutex::lock(&SizingGenerationMutex(void)::sMutex);
  v2 = *(this + 7);
  if (v2)
  {
    v3 = *(v2 + 180);
  }

  else
  {
    v3 = 0;
  }

  std::mutex::unlock(&SizingGenerationMutex(void)::sMutex);
  return v3;
}

uint64_t __copy_helper_block_ea8_32c75_ZTSKZNK5TNode19PostNodeTaskRequestERKNSt3__110shared_ptrI9TNodeTaskEEE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 48) = *(a2 + 48);
  return result;
}

void __destroy_helper_block_ea8_32c75_ZTSKZNK5TNode19PostNodeTaskRequestERKNSt3__110shared_ptrI9TNodeTaskEEE3__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t TNode::HandleFetchProperty(uint64_t *a1, FINode **a2)
{
  v3 = *a1;
  v4 = *(*a1 + 20);
  v13.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 0;
  v5 = TPropertyValue::As<NodeRequestOptions>((v3 + 24), &v13);
  v6 = TNodeFromFINode(*a2);
  TNode::UpdatePropertySynchronous(v6, v4, v5 & 0xFD);
  Property = 0;
  if (v4 != 1718903156)
  {
    v13.fData.__impl_.__index = 0;
    v12 = 19;
    v11 = &v13;
    v8 = TNodeFromFINode(*a2);
    v10 = 0;
    Property = TNode::GetProperty(v8, v4, &v11, &v10, v5 & 0xFFFFFFFD);
    TPropertyValue::~TPropertyValue(&v13);
  }

  return Property;
}

uint64_t TNode::HandleStoreProperty(uint64_t a1, FINode **a2)
{
  v3 = *a1 + 24;
  v4 = TNodeFromFINode(*a2);
  v5 = *(*a1 + 20);
  v9 = 19;
  v7 = 0;
  v8 = v3;
  return TNode::SetProperty(v4, v5, &v8, &v7, 0, 0);
}

uint64_t TNode::HandleResolveAlias(id **a1, FINode **a2)
{
  obj = 0;
  v4 = *a1;
  LODWORD(v11) = 0;
  v5 = TPropertyValue::As<NodeRequestOptions>(v4 + 6, &v11);
  v6 = TNodeFromFINode(*a2);
  v11 = 0;
  LODWORD(v7) = TNode::FollowAlias(v6, &obj, &v11, v5 & 0xFFFF7FFF);
  if (TNodeFromFINode(obj))
  {
    v7 = v7;
  }

  else
  {
    v7 = 4294959232;
  }

  if (!v7)
  {
    objc_storeStrong(*a1, obj);
  }

  v8 = TNodeFromFINode(*a2);
  if (v7)
  {
    v9 = 24;
  }

  else
  {
    v9 = 21;
  }

  TNode::SendNotification(v8, v9, a2, 0, v7);

  return v7;
}

CFIndex TNode::HandleFetchBookmarkData(uint64_t *a1, TNodePtr *a2)
{
  v19 = 0;
  v4 = TNodeFromFINode(a2->fFINode);
  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v5);
  v8 = TFSInfo::CopyBookmarkDataTo(v7, &v19);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v19 == 0;
  }

  if (v9)
  {
    memset(&v17, 0, sizeof(v17));
    v16 = 0;
    TNodeEvent::CreateNodeEvent(25, &a2->fFINode, 0, &v17, a1, &v16, &v18);
    TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v16);
    TPropertyValue::~TPropertyValue(&v17);
    v10 = TNodeEventPtr::operator->(&v18);
    v12 = v14;
    TNodeEvent::NotifyNode(v14, v10, a2, 1);
  }

  else
  {
    TNodeFromFINode(a2->fFINode);
    TPropertyValue::TPropertyValue<__CFData const*>(&v17, &v19);
    v16 = 0;
    TNodeEvent::CreateNodeEvent(25, &a2->fFINode, 0, &v17, a1, &v16, &v18);
    TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v16);
    TPropertyValue::~TPropertyValue(&v17);
    v11 = TNodeEventPtr::operator->(&v18);
    v12 = v15;
    TNodeEvent::NotifyNode(v15, v11, a2, 1);
  }

  v17.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value = v12;
  std::vector<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>::__destroy_vector::operator()[abi:ne200100](&v17);
  TNodeEventPtr::~TNodeEventPtr(&v18);
  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef(&v19);
  return v8;
}

void sub_1E574B674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, TPropertyValue *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, TDSNotifier *a15, uint64_t a16)
{
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&a15);
  TPropertyValue::~TPropertyValue(&a16);
  TAutoRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TAutoRef((v16 - 56));
  _Unwind_Resume(a1);
}

uint64_t TNode::HandleFetchNodeRequest(id **a1)
{
  obj = 0;
  v16.fString.fRef = 0;
  v2 = TPropertyValue::As<__CFString const*>(*a1 + 3, &v16.fString.fRef);
  v3 = *a1;
  v16.fString.fRef = 0;
  v4 = TPropertyValue::As<__CFURL const*>(v3 + 3, &v16);
  v14 = v4;
  v5 = *a1;
  v16.fString.fRef = 0;
  v6 = TPropertyValue::As<__CFData const*>(v5 + 3, &v16);
  v13 = v6;
  v7 = *a1;
  v8 = *(*a1 + 12);
  if (v2)
  {
    v16.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v16, v2);
    NodeFromPath = TNode::GetNodeFromPath(&v16, &obj, v8);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16.fString.fRef);
    if (!NodeFromPath)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v4)
    {
      NodeFromURL = TNode::GetNodeFromURL(&v14, &obj, *(*a1 + 12));
    }

    else
    {
      if (!v6)
      {
        v11 = 0;
        goto LABEL_10;
      }

      NodeFromURL = TNode::GetNodeFromBookmarkData(&v13, &obj, *(*a1 + 12));
    }

    NodeFromPath = NodeFromURL;
    if (!NodeFromURL)
    {
LABEL_9:
      v7 = *a1;
      v11 = obj;
LABEL_10:
      objc_storeStrong(v7, v11);
      NodeFromPath = 0;
    }
  }

  return NodeFromPath;
}

uint64_t TNode::HandleDisconnectShareRequest(uint64_t a1, FINode **a2)
{
  v3 = TNodeFromFINode(*a2);
  v4 = *(a1 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = TNode::OpenServerSync(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

void sub_1E574B88C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::HandleAddServerToSidebarRequest(uint64_t a1, FINode **a2)
{
  v3 = TNodeFromFINode(*a2);
  v4 = *(a1 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = TNode::AddServerToSidebarSync(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

void sub_1E574B8F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::HandleRemoveServerFromSidebarRequest(uint64_t a1, FINode **a2)
{
  v3 = TNodeFromFINode(*a2);
  v4 = *(a1 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = TNode::AddServerToSidebarSync(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

void sub_1E574B964(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::HandleOpenScreenShareRequest(uint64_t a1, FINode **a2)
{
  v3 = TNodeFromFINode(*a2);
  v4 = *(a1 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = TNode::OpenScreenShareSync(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

void sub_1E574B9D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::HandleOpenServerRequest(uint64_t a1, FINode **a2)
{
  v3 = TNodeFromFINode(*a2);
  v4 = *(a1 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = TNode::OpenServerSync(v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

void sub_1E574BA3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TNode::HandleFPProviderError(uint64_t a1, FINode **a2)
{
  v3 = TNodeFromFINode(*a2);

  TNode::SendNotification(v3, 2, a2, 1969385844, 0);
}

uint64_t TNode::HandleVolumeAdded(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  v1 = TPropertyValue::As<__CFURL const*>((*a1 + 24), &v4);
  if (v1)
  {
    TNode::AddVolume(v1, 0, &v3);
  }

  return 4294967253;
}

uint64_t TNode::HandleMarkAsUsed(uint64_t a1, FINode **a2)
{
  v3 = TNodeFromFINode(*a2);
  v4 = TNode::InfoLock(v3);
  os_unfair_lock_lock(v4);
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (!v5)
  {
    os_unfair_lock_unlock(v4);
    if (*(v6 + 120))
    {
      return 0;
    }

    goto LABEL_3;
  }

  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  os_unfair_lock_unlock(v4);
  v7 = *(v6 + 120);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  if (!v7)
  {
LABEL_3:
    v8 = TNodeFromFINode(*a2);
    TNode::MarkAsUsed(v8);
  }

  return 0;
}

uint64_t TNode::HandleSubscribeWithKQueue(uint64_t a1, FINode **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v2 = TNodeFromFINode(*a2);
  *v15 = 0;
  v3 = TNode::FollowAlias(v2, &v14, v15, 8);
  if (!v3)
  {
    if (TNodeFromFINode(v14) && (v4 = TNodeFromFINode(v14), (v5 = *(v4 + 56)) != 0) && !TChildrenList::IncrementSubscriptionCount(*(v4 + 56)))
    {
      v8 = TNodeFromFINode(v14);
      v3 = TNode::CopyPathToCBuffer(v8, v15, 1024);
      if (!v3)
      {
        v9 = open(v15, 0x8000, 0);
        if (v9 >= 1)
        {
          v10 = TChildrenList::SetSubscriptionFileDescriptor(v5, v9);
          TNode::AddkQueueNotification(v10);
          changelist.ident = v9;
          *&changelist.filter = 0x2B0025FFFCLL;
          changelist.data = 0;
          changelist.udata = TNodeFromFINode(v14);
          timeout.tv_sec = 0;
          timeout.tv_nsec = 0;
          v11 = TNode::KQueue(changelist.udata);
          kevent(v11, &changelist, 1, 0, 0, &timeout);
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t TNode::HandleUnsubscribeWithKQueue(uint64_t a1, FINode **a2)
{
  v13.fFINode = 0;
  v2 = TNodeFromFINode(*a2);
  changelist.ident = 0;
  v3 = TNode::FollowAlias(v2, &v13, &changelist, 8);
  if (!v3)
  {
    if (TNodeFromFINode(v13.fFINode))
    {
      v5 = TNodeFromFINode(v13.fFINode);
      v6 = *(v5 + 56);
      if (v6)
      {
        if (TChildrenList::DecrementSubscriptionCount(*(v5 + 56)) == 1)
        {
          SubscriptionFileDescriptor = TChildrenList::GetSubscriptionFileDescriptor(v6);
          if (SubscriptionFileDescriptor >= 1)
          {
            v8 = TChildrenList::SetSubscriptionFileDescriptor(v6, 0);
            timeout.tv_nsec = 0;
            changelist.ident = SubscriptionFileDescriptor;
            *&changelist.filter = 196604;
            memset(&changelist.fflags, 0, 20);
            timeout.tv_sec = 0;
            v9 = TNode::KQueue(v8);
            kevent(v9, &changelist, 1, 0, 0, &timeout);
            v10 = close(SubscriptionFileDescriptor);
            TNode::RemovekQueueNotification(v10);
          }
        }
      }
    }
  }

  return v3;
}

uint64_t TNode::HandleVolumeDeleted(uint64_t a1, FINode **a2)
{
  v2 = TNodeFromFINode(*a2);
  v3 = TNode::InfoLock(v2);
  os_unfair_lock_lock(v3);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v3);
  TFSInfo::GetVolumeID(v5, &v8);
  v6 = TNode::RemoveVolume(&v8);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v6;
}

void sub_1E574BF2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t TNode::HandleRegisterInternalNotificationTask(uint64_t a1, FINode **a2)
{
  if (TNodeFromFINode(*a2))
  {
    v3 = TNodeFromFINode(*a2);
    TNode::RegisterForInternalNotifications(v3, a2, 3);
  }

  return 0;
}

uint64_t TPropertyValue::TPropertyValue<__CFData const*>(uint64_t a1, const void **a2)
{
  v3 = *a2;
  v5 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  TPropertyValue::TPropertyValue<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>>(a1, &v5);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v5);
  return a1;
}

void sub_1E574BFE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TNode::InlineProgressCancel(TNode *this)
{
  TNodePtr::TNodePtr(&v1, this);
  TProgressMap::CancelProgress(&v1, 1);
}

int *NWMapSpinlock(void)
{
  if ((atomic_load_explicit(qword_1ECFF44E8, memory_order_acquire) & 1) == 0)
  {
    NWMapSpinlock();
  }

  return &_MergedGlobals_3;
}

uint64_t TNode::GetNWNodeMap(int a1)
{
  if ((a1 - 32) >= 2)
  {
    if (a1 != 34)
    {
      abort();
    }

    v1 = &gAirDropNodeMap;
  }

  else
  {
    v1 = &gNWSidebarNodeMap;
  }

  result = *v1;
  if (!*v1)
  {
    operator new();
  }

  return result;
}

void TNode::GetNWNode(int a1@<W0>, uint64_t a2@<X1>, TNodePtr *a3@<X8>)
{
  v7 = a2;
  NWMapSpinlock();
  os_unfair_lock_lock(&_MergedGlobals_3);
  NWNodeMap = TNode::GetNWNodeMap(a1);
  v6 = std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::find<__SFNode *>(NWNodeMap, &v7);
  if (v6)
  {
    a3->fFINode = v6[3];
  }

  else
  {
    TNodePtr::TNodePtr(a3, 0);
  }

  os_unfair_lock_unlock(&_MergedGlobals_3);
}

void ___ZN5TNode29SetTimerToDispatchSyncRequestERKNSt3__110shared_ptrI17TVolumeSyncThreadEEy18NodeRequestOptions_block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = ___ZZN5TNode29SetTimerToDispatchSyncRequestERKNSt3__110shared_ptrI17TVolumeSyncThreadEEy18NodeRequestOptionsENK3__0clEv_block_invoke;
  v9[3] = &__block_descriptor_72_ea8_32c127_ZTSKZZN5TNode29SetTimerToDispatchSyncRequestERKNSt3__110shared_ptrI17TVolumeSyncThreadEEy18NodeRequestOptionsENK3__0clEvEUlvE__e5_v8__0l;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  LOBYTE(v8) = *(a1 + 64);
  HIDWORD(v8) = *(a1 + 68);
  v9[4] = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v4;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  v13 = v8;
  ExceptionSafeBlock(v9);

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E574C2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CopyURLForFPItem(FPItem *,BOOL)::$_0::~$_0(v9 + 32);
  CopyURLForFPItem(FPItem *,BOOL)::$_0::~$_0(&a9);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c114_ZTSKZN5TNode29SetTimerToDispatchSyncRequestERKNSt3__110shared_ptrI17TVolumeSyncThreadEEy18NodeRequestOptionsE3__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void TTempProperties::TTempProperties(TTempProperties *this, TNodePtr a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = -1;
  *(this + 3) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(this + 4) = 0;
  v4 = TNodeFromFINode(a2.fFINode->super.isa);
  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v5);
  *this = TFSInfo::GetModificationDate(v7);
  *(this + 1) = TFSInfo::GetCreationDate(v7);
  *(this + 2) = TFSInfo::GetLogicalSize(v7);
  v10 = 0;
  TFSInfo::GetKindWithoutPlatform(v7, this + 3, 128, &v10);
  v8 = TFSInfo::GetISIcon(v7);
  v9 = *(this + 4);
  *(this + 4) = v8;

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E574C434(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<TTempProperties,BOOL>::pair[abi:ne200100]<TTempProperties,BOOL,0>(uint64_t a1, __int128 *a2, _BYTE *a3)
{
  v6 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v6;
  *(a1 + 24) = *(a2 + 3);
  *(a2 + 3) = 0;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a2 + 3, &stru_1F5F42870);
  v7 = *(a2 + 4);
  *(a2 + 4) = 0;
  *(a1 + 32) = v7;
  *(a1 + 40) = *a3;
  return a1;
}

uint64_t std::__function::__func<AutoSignpostInterval_General_OpenSync::~AutoSignpostInterval_General_OpenSync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_OpenSync::~AutoSignpostInterval_General_OpenSync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F40658;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AutoSignpostInterval_General_OpenSync::~AutoSignpostInterval_General_OpenSync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_OpenSync::~AutoSignpostInterval_General_OpenSync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void StFirstPopulationLock::StFirstPopulationLock(StFirstPopulationLock *this, TNodePtr a2)
{
  v4 = a2.fFINode->super.isa;
  *this = v4;
  v5 = StFirstPopulationLock::MapLock(v4);
  os_unfair_lock_lock(v5);
  if (!StFirstPopulationLock::sMutexes)
  {
    operator new();
  }

  v6 = std::__hash_table<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::__unordered_map_hasher<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::hash<TNodePtr>,std::equal_to<TNodePtr>,true>,std::__unordered_map_equal<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::equal_to<TNodePtr>,std::hash<TNodePtr>,true>,std::allocator<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>>>::__emplace_unique_key_args<TNodePtr,std::piecewise_construct_t const&,std::tuple<TNodePtr const&>,std::tuple<>>(StFirstPopulationLock::sMutexes, a2.fFINode);
  ++*(v6 + 6);
  os_unfair_lock_unlock(v5);
  std::mutex::lock((v6 + 4));
}

void sub_1E574C688(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);

  _Unwind_Resume(a1);
}

int *StFirstPopulationLock::MapLock(StFirstPopulationLock *this)
{
  {
    StFirstPopulationLock::MapLock();
  }

  return &StFirstPopulationLock::MapLock(void)::sMapLock;
}

uint64_t **std::__hash_table<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::__unordered_map_hasher<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::hash<TNodePtr>,std::equal_to<TNodePtr>,true>,std::__unordered_map_equal<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::equal_to<TNodePtr>,std::hash<TNodePtr>,true>,std::allocator<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>>>::__emplace_unique_key_args<TNodePtr,std::piecewise_construct_t const&,std::tuple<TNodePtr const&>,std::tuple<>>(void *a1, FINode **a2)
{
  v2 = *a2 >> 2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *a2 >> 2;
    if (v2 >= *&v3)
    {
      v7 = v2 % *&v3;
    }
  }

  else
  {
    v7 = (*&v3 - 1) & v2;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v2)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  v11 = TNodeFromFINode(v9[2]);
  if (v11 != TNodeFromFINode(*a2))
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    std::mutex::~mutex((a2 + 32));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void StFirstPopulationLock::~StFirstPopulationLock(StFirstPopulationLock *this)
{
  v2 = StFirstPopulationLock::MapLock(this);
  os_unfair_lock_lock(v2);
  v3 = std::__hash_table<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::__unordered_map_hasher<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::hash<TNodePtr>,std::equal_to<TNodePtr>,true>,std::__unordered_map_equal<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::equal_to<TNodePtr>,std::hash<TNodePtr>,true>,std::allocator<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>>>::__emplace_unique_key_args<TNodePtr,std::piecewise_construct_t const&,std::tuple<TNodePtr const&>,std::tuple<>>(StFirstPopulationLock::sMutexes, this);
  os_unfair_lock_unlock(v2);
  std::mutex::unlock((v3 + 4));
  v5 = StFirstPopulationLock::MapLock(v4);
  os_unfair_lock_lock(v5);
  v6 = std::__hash_table<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::__unordered_map_hasher<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::hash<TNodePtr>,std::equal_to<TNodePtr>,true>,std::__unordered_map_equal<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::equal_to<TNodePtr>,std::hash<TNodePtr>,true>,std::allocator<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>>>::__emplace_unique_key_args<TNodePtr,std::piecewise_construct_t const&,std::tuple<TNodePtr const&>,std::tuple<>>(StFirstPopulationLock::sMutexes, this);
  v7 = *(v6 + 6) - 1;
  *(v6 + 6) = v7;
  if (!v7)
  {
    std::__hash_table<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::__unordered_map_hasher<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::hash<TNodePtr>,std::equal_to<TNodePtr>,true>,std::__unordered_map_equal<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::equal_to<TNodePtr>,std::hash<TNodePtr>,true>,std::allocator<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>>>::__erase_unique<TNodePtr>(StFirstPopulationLock::sMutexes, this);
  }

  os_unfair_lock_unlock(v5);
}

uint64_t *std::__hash_table<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::__unordered_map_hasher<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::hash<TNodePtr>,std::equal_to<TNodePtr>,true>,std::__unordered_map_equal<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::equal_to<TNodePtr>,std::hash<TNodePtr>,true>,std::allocator<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>>>::__erase_unique<TNodePtr>(void *a1, FINode **a2)
{
  result = std::__hash_table<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::__unordered_map_hasher<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::hash<TNodePtr>,std::equal_to<TNodePtr>,true>,std::__unordered_map_equal<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::equal_to<TNodePtr>,std::hash<TNodePtr>,true>,std::allocator<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>>>::find<TNodePtr>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::__unordered_map_hasher<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::hash<TNodePtr>,std::equal_to<TNodePtr>,true>,std::__unordered_map_equal<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::equal_to<TNodePtr>,std::hash<TNodePtr>,true>,std::allocator<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::__unordered_map_hasher<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::hash<TNodePtr>,std::equal_to<TNodePtr>,true>,std::__unordered_map_equal<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::equal_to<TNodePtr>,std::hash<TNodePtr>,true>,std::allocator<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>>>::find<TNodePtr>(void *a1, FINode **a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *a2 >> 2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *a2 >> 2;
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = i[1];
    if (v10 == v4)
    {
      v11 = TNodeFromFINode(i[2]);
      if (v11 == TNodeFromFINode(*a2))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::__hash_table<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::__unordered_map_hasher<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::hash<TNodePtr>,std::equal_to<TNodePtr>,true>,std::__unordered_map_equal<TNodePtr,std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,std::equal_to<TNodePtr>,std::hash<TNodePtr>,true>,std::allocator<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TNodePtr,std::pair<int,std::mutex>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

BOOL IsInTrash(TString,TString)::$_0::operator()(TString *a1, TString *a2)
{
  Length = CFStringGetLength(a2->fString.fRef);
  v5 = Length - 1;
  if (Length >= 1 && CFStringGetLength(a2->fString.fRef) >= Length)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a2->fString.fRef, v5);
  }

  else
  {
    CharacterAtIndex = 0;
  }

  if (CharacterAtIndex == TPathName::kPOSIXPathNameSeparator)
  {
    v7 = CFStringGetLength(a2->fString.fRef);
    TString::SubString(a2, 0, v7 - 1, &theString);
  }

  else
  {
    theString = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&theString, a2->fString.fRef);
  }

  v11 = 0;
  if (TString::BeginsWith(a1, &theString))
  {
    v8 = CFStringGetLength(a1->fString.fRef);
    if (v8 == CFStringGetLength(theString) || ((v9 = CFStringGetLength(theString), v9 < 0) || CFStringGetLength(a1->fString.fRef) <= v9 ? (v10 = 0) : (v10 = CFStringGetCharacterAtIndex(a1->fString.fRef, v9)), v10 == TPathName::kPOSIXPathNameSeparator))
    {
      v11 = 1;
    }
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  return v11;
}

void sub_1E574CD80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ExternalRegistration>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F406D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void ___ZZN5TNode28UnregisterChangeNotificationERKNSt3__110shared_ptrI21TClientChangeNotifierEERK8TNodePtr23NodeNotificationOptionsENK3__0clEv_block_invoke(uint64_t a1)
{
  v1 = *(TNodeFromFINode(*(a1 + 32)) + 56);

  TChildrenList::ClearSizesFetchedForUnobservedNodes(v1);
}

id __copy_helper_block_ea8_32c13_ZTS8TNodePtr(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void ___ZZN5TNode10RemoveSelfEP14TNodeEventPtrsENK3__0clEv_block_invoke(uint64_t a1)
{
  TGlobalNodes::RootNode(&v5, a1);
  TNode::StPopulating::StPopulating(v4, &v5, 0);
  v2 = TNodeFromFINode(v5);
  if (TChildrenList::RemoveChild(*(v2 + 56), (a1 + 32)) && *(a1 + 40) == 1)
  {
    v3 = TNodeFromFINode(v5);
    TNode::SendNotification(v3, 4, (a1 + 32), 0, 0);
  }

  TNode::StPopulating::~StPopulating(v4);
}

__n128 std::__function::__func<AutoSignpostInterval_General_OpenSync::AutoSignpostInterval_General_OpenSync<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_OpenSync::AutoSignpostInterval_General_OpenSync<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F40788;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AutoSignpostInterval_General_OpenSync::AutoSignpostInterval_General_OpenSync<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_OpenSync::AutoSignpostInterval_General_OpenSync<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[28]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E574D118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[24]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E574D228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[32]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E574D338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[33]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E574D448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[26]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E574D558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[25]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E574D668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[20]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E574D778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[34]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E574D888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[35]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E574D998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TString>::__emplace_back_slow_path<char const(&)[19]>(uint64_t a1, const char *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<TString>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TString::TString((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TString>,TString*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TString>::~__split_buffer(&v14);
  return v13;
}

void sub_1E574DAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__emplace_back_slow_path<std::pair<TNodePtr,FPItem * {__strong}>>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::allocator<std::pair<TNodePtr,TNodePtr>>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v8 = (16 * v2);
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  TNodePtr::TNodePtr(v8, a2);
  v9 = a2[1];
  a2[1] = 0;
  v8[1] = v9;
  *&v18 = v8 + 2;
  v10 = *(a1 + 8);
  v11 = (v8 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TNodePtr,FPItem * {__strong}>>,std::pair<TNodePtr,FPItem * {__strong}>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<TNodePtr,TNodePtr>>::~__split_buffer(&v16);
  return v15;
}

void sub_1E574DBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<TNodePtr,TNodePtr>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TNodePtr,FPItem * {__strong}>>,std::pair<TNodePtr,FPItem * {__strong}>*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 != a3)
  {
    v7 = a4;
    v8 = a2;
    do
    {
      TNodePtr::TNodePtr(v7, v8);
      v9 = v8[1];
      v8[1] = 0;
      v7[1] = v9;
      v8 += 2;
      v7 = v14 + 2;
      v14 += 2;
    }

    while (v8 != a3);
  }

  v12 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodePtr>>,std::pair<TNodePtr,TNodePtr>*,std::pair<TNodePtr,TNodePtr>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TNodePtr,FPItem * {__strong}>>,std::pair<TNodePtr,FPItem * {__strong}>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__function::__func<AutoSignpostInterval_General_HandleSync::~AutoSignpostInterval_General_HandleSync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_HandleSync::~AutoSignpostInterval_General_HandleSync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F40808;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AutoSignpostInterval_General_HandleSync::~AutoSignpostInterval_General_HandleSync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_HandleSync::~AutoSignpostInterval_General_HandleSync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<Property>::__erase_unique<Property>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  std::__tree<Property>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<Property>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>::~tuple(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 24) == 1)
  {
  }

  if (*(a1 + 8) == 1)
  {
  }

  return a1;
}

uint64_t std::vector<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>::__emplace_back_slow_path<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>(void *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v17 = a1;
  if (v6)
  {
    std::allocator<std::pair<TNodePtr,TNodePtr>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v14 = 0;
  v15 = 16 * v5;
  *(&v16 + 1) = 0;
  v9 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *(16 * v5) = v9;
  *&v16 = 16 * v5 + 16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,fstd::optional_err<FPItem * {__strong},NSError * {__strong}>*>(a1, v3, v4, 0);
  v10 = *a1;
  *a1 = 0;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::pair<TNodePtr,TNodePtr>>::~__split_buffer(&v14);
  return v13;
}

void sub_1E574DFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<TNodePtr,TNodePtr>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZL23FPItemForProviderWithIDRK7TStringS1__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3)
  {
    objc_storeStrong(*(a1 + 32), a2);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

id __copy_helper_block_ea8_32c50_ZTSKZL23FPItemForProviderWithIDRK7TStringS1_E3__0(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 48);
  a1[6] = result;
  return result;
}

void __destroy_helper_block_ea8_32c50_ZTSKZL23FPItemForProviderWithIDRK7TStringS1_E3__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t FPItemForProviderWithID(TString const&,TString const&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<FPItem * {__strong}>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F408B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

uint64_t std::vector<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>::__emplace_back_slow_path<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::allocator<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  TNodePtr::TNodePtr(v7, a2);
  *(v7 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *&v16 = v7 + 24;
  v8 = a1[1];
  v9 = (v7 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>,std::pair<TNodePtr,std::shared_ptr<TFSInfo>>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>::~__split_buffer(&v14);
  return v13;
}

void sub_1E574E2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>,std::pair<TNodePtr,std::shared_ptr<TFSInfo>>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = TNodePtr::TNodePtr(a4, v7);
      *(v8 + 1) = *(v7 + 8);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v7 += 24;
      a4 = v8 + 3;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__destroy_at[abi:ne200100]<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>,0>(v6);
      v6 += 24;
    }
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>,0>(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *a1;
}

uint64_t std::__split_buffer<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__destroy_at[abi:ne200100]<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>,0>(i - 24);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<TNodePtr>::__emplace_back_slow_path<TNodePtr>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  TNodePtr::TNodePtr((8 * v2), a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TNodePtr>,TNodePtr*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TNodePtr>::~__split_buffer(&v14);
  return v13;
}

void sub_1E574E53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TNodePtr>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void TFSInfoSynchronizer::~TFSInfoSynchronizer(TFSInfoSynchronizer *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this;
  std::vector<std::shared_ptr<TCFURLInfoList>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t std::__function::__func<AutoSignpostInterval_General_SynchronizeChildren::~AutoSignpostInterval_General_SynchronizeChildren()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_SynchronizeChildren::~AutoSignpostInterval_General_SynchronizeChildren()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F40908;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AutoSignpostInterval_General_SynchronizeChildren::~AutoSignpostInterval_General_SynchronizeChildren()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_SynchronizeChildren::~AutoSignpostInterval_General_SynchronizeChildren()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int *TFPOperationRegistry::Lock(TFPOperationRegistry *this)
{
  {
    TFPOperationRegistry::Lock();
  }

  return &TFPOperationRegistry::Lock(void)::lock;
}

uint64_t TFPOperationRegistry::GetFPOperationRegistry(TFPOperationRegistry *this)
{
  {
    operator new();
  }

  return TFPOperationRegistry::GetFPOperationRegistry(void)::registry;
}

uint64_t **std::__hash_table<std::__hash_value_type<FPActionOperation * {__strong},int>,std::__unordered_map_hasher<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::hash<FPActionOperation * {__strong}>,std::equal_to<FPActionOperation * {__strong}>,true>,std::__unordered_map_equal<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::equal_to<FPActionOperation * {__strong}>,std::hash<FPActionOperation * {__strong}>,true>,std::allocator<std::__hash_value_type<FPActionOperation * {__strong},int>>>::__emplace_unique_key_args<FPActionOperation * {__strong},std::piecewise_construct_t const&,std::tuple<FPActionOperation * const {__strong}&>,std::tuple<>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((std::equal_to<FPActionOperation * {__strong}>::operator()(a1, v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E574E9C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<FPActionOperation * {__strong},int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FPActionOperation * {__strong},int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::equal_to<FPActionOperation * {__strong}>::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqual:v5];
  }

  return v6;
}

uint64_t **std::__hash_table<std::__hash_value_type<FPActionOperation * {__strong},int>,std::__unordered_map_hasher<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::hash<FPActionOperation * {__strong}>,std::equal_to<FPActionOperation * {__strong}>,true>,std::__unordered_map_equal<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::equal_to<FPActionOperation * {__strong}>,std::hash<FPActionOperation * {__strong}>,true>,std::allocator<std::__hash_value_type<FPActionOperation * {__strong},int>>>::__erase_unique<FPActionOperation * {__strong}>(void *a1, id *a2)
{
  result = std::__hash_table<std::__hash_value_type<FPActionOperation * {__strong},int>,std::__unordered_map_hasher<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::hash<FPActionOperation * {__strong}>,std::equal_to<FPActionOperation * {__strong}>,true>,std::__unordered_map_equal<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::equal_to<FPActionOperation * {__strong}>,std::hash<FPActionOperation * {__strong}>,true>,std::allocator<std::__hash_value_type<FPActionOperation * {__strong},int>>>::find<FPActionOperation * {__strong}>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<FPActionOperation * {__strong},int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FPActionOperation * {__strong},int>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<FPActionOperation * {__strong},int>,std::__unordered_map_hasher<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::hash<FPActionOperation * {__strong}>,std::equal_to<FPActionOperation * {__strong}>,true>,std::__unordered_map_equal<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::equal_to<FPActionOperation * {__strong}>,std::hash<FPActionOperation * {__strong}>,true>,std::allocator<std::__hash_value_type<FPActionOperation * {__strong},int>>>::find<FPActionOperation * {__strong}>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<FPActionOperation * {__strong}>::operator()(a1, i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void TFSInfoOverflow::SetFolderSizeRecord(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock((a1 + 72));
  v4 = *a2;
  *a2 = 0;
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  if (v5)
  {
    MEMORY[0x1E692CD30](v5, 0x1000C40E0EAB150);
  }

  os_unfair_lock_unlock((a1 + 72));
}

const void *AsPriv<__CFString const*,TString>(const void **a1)
{
  result = RetainCF<__CFString const*>(a1);
  if (result)
  {
    v2 = CFAutorelease(result);
    return static_cf_cast<__CFString const*,void const*>(v2);
  }

  return result;
}

void TFSInfoOverflow::TakeFolderSizeRecord(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock((a1 + 72));
  v4 = *(a1 + 40);
  *(a1 + 40) = 0;
  v5 = *a2;
  *a2 = v4;
  if (v5)
  {
    MEMORY[0x1E692CD30](v5, 0x1000C40E0EAB150);
  }

  os_unfair_lock_unlock((a1 + 72));
}

void ___ZZN5TNode29SetTimerToDispatchSyncRequestERKNSt3__110shared_ptrI17TVolumeSyncThreadEEy18NodeRequestOptionsENK3__0clEv_block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    atomic_fetch_and((TNodeFromFINode(*(a1 + 48)) + 88), 0xFFFBu);
  }

  if ((TVolumeSyncThread::SynchingCanceled(*(a1 + 32)) & 1) == 0)
  {
    v2 = TNodeFromFINode(*(a1 + 48));
    TNode::RequestSynchronize(v2, *(a1 + 68));
  }

  v3 = *(a1 + 56);

  dispatch_source_cancel(v3);
}

id __copy_helper_block_ea8_32c127_ZTSKZZN5TNode29SetTimerToDispatchSyncRequestERKNSt3__110shared_ptrI17TVolumeSyncThreadEEy18NodeRequestOptionsENK3__0clEvEUlvE_(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6] = *(a2 + 48);
  result = *(a2 + 56);
  a1[7] = result;
  a1[8] = *(a2 + 64);
  return result;
}

void __destroy_helper_block_ea8_32c127_ZTSKZZN5TNode29SetTimerToDispatchSyncRequestERKNSt3__110shared_ptrI17TVolumeSyncThreadEEy18NodeRequestOptionsENK3__0clEvEUlvE_(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__tree<TNodePtr>::__erase_unique<TNodePtr>(uint64_t **a1, FINode **a2)
{
  v3 = std::__tree<TNodePtr>::find<TNodePtr>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<TNodePtr>::erase(a1, v3);
  return 1;
}

uint64_t std::__tree<TNodePtr>::find<TNodePtr>(uint64_t a1, FINode **a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<TNodePtr>::__lower_bound<TNodePtr>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = TNodeFromFINode(*a2);
  if (v6 < TNodeFromFINode(*(v5 + 32)))
  {
    return v3;
  }

  return v5;
}

uint64_t *std::__tree<TNodePtr>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<Property>::__remove_node_pointer(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t std::__tree<TNodePtr>::__lower_bound<TNodePtr>(uint64_t a1, FINode **a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v7 = TNodeFromFINode(*(v5 + 32));
      v8 = TNodeFromFINode(*a2);
      if (v7 >= v8)
      {
        a4 = v5;
      }

      v5 = *(v5 + 8 * (v7 < v8));
    }

    while (v5);
  }

  return a4;
}

uint64_t std::__tree<TNodePtr>::__emplace_unique_key_args<TNodePtr,TNodePtr>(uint64_t a1, FINode **a2)
{
  v2 = *std::__tree<TNodePtr>::__find_equal<TNodePtr>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<TNodePtr>::__find_equal<TNodePtr>(uint64_t a1, void *a2, FINode **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = TNodeFromFINode(*a3);
        if (v8 >= TNodeFromFINode(v7[4]))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      v9 = TNodeFromFINode(v7[4]);
      if (v9 >= TNodeFromFINode(*a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<TNodePtr,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<TNodePtr,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

TOperation **TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::operator=(TOperation **a1, TOperation *this)
{
  if (this)
  {
    TOperation::AddPtrReference(this);
  }

  if (*a1)
  {
    TOperation::RemovePtrReference(*a1);
  }

  *a1 = this;
  return a1;
}

void *std::__hash_table<std::__hash_value_type<TNode *,TTempProperties>,std::__unordered_map_hasher<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::hash<TNode *>,std::equal_to<TNode *>,true>,std::__unordered_map_equal<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::equal_to<TNode *>,std::hash<TNode *>,true>,std::allocator<std::__hash_value_type<TNode *,TTempProperties>>>::__emplace_unique_key_args<TNode *,std::piecewise_construct_t const&,std::tuple<TNode *&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<TNode *,TTempProperties>,std::__unordered_map_hasher<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::hash<TNode *>,std::equal_to<TNode *>,true>,std::__unordered_map_equal<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::equal_to<TNode *>,std::hash<TNode *>,true>,std::allocator<std::__hash_value_type<TNode *,TTempProperties>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<TNode *&&>,std::tuple<>>();
  }

  while (1)
  {
    v10 = result[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != *a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1E574F330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TNode *,TTempProperties>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E574F3FC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TNode *,TTempProperties>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TNode *,TTempProperties>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a2 + 48));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *std::__hash_table<std::__hash_value_type<TNode *,TTempProperties>,std::__unordered_map_hasher<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::hash<TNode *>,std::equal_to<TNode *>,true>,std::__unordered_map_equal<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::equal_to<TNode *>,std::hash<TNode *>,true>,std::allocator<std::__hash_value_type<TNode *,TTempProperties>>>::__erase_unique<TNode *>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::find<OpaqueEventNotifier *>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<TNode *,TTempProperties>,std::__unordered_map_hasher<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::hash<TNode *>,std::equal_to<TNode *>,true>,std::__unordered_map_equal<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::equal_to<TNode *>,std::hash<TNode *>,true>,std::allocator<std::__hash_value_type<TNode *,TTempProperties>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<TNode *,TTempProperties>,std::__unordered_map_hasher<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::hash<TNode *>,std::equal_to<TNode *>,true>,std::__unordered_map_equal<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::equal_to<TNode *>,std::hash<TNode *>,true>,std::allocator<std::__hash_value_type<TNode *,TTempProperties>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TNode *,TTempProperties>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

uint64_t TPropertyReference::SetAs<__CFDictionary const*>(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_46;
      }

      SetAsPriv<__CFDictionary const*,NSObject * {__strong}>(a2, *a1);
      return 0;
    case 11:
      if (v2 == 11)
      {
        return 4294959246;
      }

      goto LABEL_46;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_46;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(*a1, *a2);
      return 0;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_46;
      }

      v4 = *a1;

      return TPropertyValue::SetAs<__CFDictionary const*>(v4, a2);
    case 20:
      if (v2 != 20)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_46;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_46:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 4294959246;
  }
}

uint64_t TPropertyValue::SetAs<__CFDictionary const*>(id *location, id *a2)
{
  v2 = *(location + 4);
  switch(v2)
  {
    case 0:
      v4 = *a2;
      v6 = v4;
      if (v4)
      {
        CFRetain(v4);
      }

      std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<15ul,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>>(location, location, &v6);
      TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(&v6);
      return 0;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 7:
      if (v2 == 7)
      {
        return 4294959246;
      }

      goto LABEL_45;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 9:
      return 4294959246;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_45;
      }

      SetAsPriv<__CFDictionary const*,NSObject * {__strong}>(a2, location);
      return 0;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_45;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(location, *a2);
      return 0;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_45;
      }

      return 4294959246;
    case 23:
      if (v2 != 23)
      {
LABEL_45:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      return 4294959246;
    default:
      return 0;
  }
}

void ***TPropertyReference::As<ISIcon * {__strong}>@<X0>(void ***result@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  v4 = *(result + 2);
  switch(v4)
  {
    case 0:
      if (v4)
      {
        goto LABEL_49;
      }

      result = *a2;
      *a3 = result;
      v5 = -8072;
      goto LABEL_48;
    case 1:
      if (v4 != 1)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 2:
      if (v4 != 2)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 3:
      if (v4 != 3)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 4:
      if (v4 != 4)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 5:
      if (v4 != 5)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 6:
      if (v4 != 6)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 7:
      if (v4 != 7)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 8:
      if (v4 != 8)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 9:
      goto LABEL_47;
    case 10:
      if (v4 != 10)
      {
        goto LABEL_49;
      }

      result = AsPriv<ISIcon * {__strong},NSObject * {__strong}>(*result, a2, &v7);
      *a3 = v7;
      v5 = v8;
      goto LABEL_48;
    case 11:
      if (v4 != 11)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 12:
      if (v4 != 12)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 13:
      if (v4 != 13)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 14:
      if (v4 != 14)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 15:
      if (v4 != 15)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 16:
      if (v4 != 16)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 17:
      if (v4 != 17)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 18:
      if (v4 != 18)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 19:
      if (v4 != 19)
      {
        goto LABEL_49;
      }

      result = TPropertyValue::As<ISIcon * {__strong}>(*result, a2, &v7);
      v6 = v8;
      *a3 = v7;
      *(a3 + 8) = v6;
      return result;
    case 20:
      if (v4 != 20)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 21:
      if (v4 != 21)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 22:
      if (v4 != 22)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 23:
      if (v4 != 23)
      {
LABEL_49:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_47:
      result = *a2;
      *a3 = result;
      v5 = -8050;
LABEL_48:
      *(a3 + 8) = v5;
      break;
    default:
      return result;
  }

  return result;
}

id AsPriv<ISIcon * {__strong},NSObject * {__strong}>@<X0>(void **a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  result = objc_cast<ISIcon,NSObject * {__strong}>(*a1);
  if (result)
  {
    v6 = 0;
  }

  else
  {
    result = *a2;
    v6 = -8050;
  }

  *a3 = result;
  *(a3 + 8) = v6;
  return result;
}

void **TPropertyValue::As<ISIcon * {__strong}>@<X0>(void **result@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  v4 = *(result + 4);
  switch(v4)
  {
    case 0:
      if (v4)
      {
        goto LABEL_44;
      }

      result = *a2;
      *a3 = result;
      v5 = -8072;
      goto LABEL_42;
    case 1:
      if (v4 != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 2:
      if (v4 != 2)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 3:
      if (v4 != 3)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 4:
      if (v4 != 4)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 5:
      if (v4 != 5)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 6:
      if (v4 != 6)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 7:
      if (v4 == 7)
      {
        goto LABEL_41;
      }

      goto LABEL_44;
    case 8:
      if (v4 != 8)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 9:
      goto LABEL_41;
    case 10:
      if (v4 != 10)
      {
        goto LABEL_44;
      }

      result = AsPriv<ISIcon * {__strong},NSObject * {__strong}>(result, a2, &v6);
      *a3 = v6;
      v5 = v7;
      goto LABEL_42;
    case 11:
      if (v4 != 11)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 12:
      if (v4 != 12)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 13:
      if (v4 != 13)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 14:
      if (v4 != 14)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 15:
      if (v4 != 15)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 16:
      if (v4 != 16)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 17:
      if (v4 != 17)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 18:
      if (v4 != 18)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 19:
      if (v4 != 19)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 20:
      if (v4 != 20)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 21:
      if (v4 != 21)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 22:
      if (v4 != 22)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    case 23:
      if (v4 != 23)
      {
LABEL_44:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_41:
      result = *a2;
      *a3 = result;
      v5 = -8050;
LABEL_42:
      *(a3 + 8) = v5;
      break;
    default:
      return result;
  }

  return result;
}

void *std::set<Property>::set[abi:ne200100](void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      std::__tree<Property>::__emplace_hint_unique_key_args<Property,Property const&>(a1, v4, a2++);
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<Property>::__emplace_hint_unique_key_args<Property,Property const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<Property>::__find_equal<Property>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<Property>::__find_equal<Property>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<TNodePtr>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<TNodePtr>::destroy(a1, *a2);
    std::__tree<TNodePtr>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__shared_ptr_emplace<TFSInfo>::__shared_ptr_emplace[abi:ne200100]<FSInfoVirtualType &,TAutoRef<__SFNode *,TRetainReleasePolicy<__SFNode *>> &,std::allocator<TFSInfo>,0>(void *a1, char *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3D3B8;
  TFSInfo::TFSInfo((a1 + 3), *a2, *a3);
}

uint64_t **std::__hash_table<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(void *a1, TString *this)
{
  v4 = FowlerNollVoHash::hash(this, this);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!CFEqual(v11[2], this->fString.fRef))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E5750268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E5750338(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v4);
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,void *>>>::operator()[abi:ne200100](uint64_t a1, const void **__p)
{
  if (*(a1 + 8) == 1)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table((__p + 3));
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(__p + 2);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *std::__hash_table<_opaque_pthread_t *,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,std::allocator<_opaque_pthread_t *>>::__emplace_unique_key_args<_opaque_pthread_t *,_opaque_pthread_t *>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::__hash_table<_opaque_pthread_t *,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,std::allocator<_opaque_pthread_t *>>::__erase_unique<_opaque_pthread_t *>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::find<OpaqueEventNotifier *>(a1, a2);
  if (result)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__function::__func<TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::$_1,std::allocator<TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::$_1>,void ()(FPItem *,NSError *)>::~__func(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x1E692CD30);
}

void std::__function::__func<TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::$_1,std::allocator<TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::$_1>,void ()(FPItem *,NSError *)>::destroy_deallocate(id *a1)
{
  objc_destroyWeak(a1 + 1);

  operator delete(a1);
}

void std::__function::__func<TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::$_1,std::allocator<TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::$_1>,void ()(FPItem *,NSError *)>::operator()(uint64_t a1, id *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v5 = TNodeFromFINode(WeakRetained);
  if (v5)
  {
    TNodePtr::TNodePtr(&v9, v5);
    v10 = v3;
    memset(v7, 0, sizeof(v7));
    std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__init_with_size[abi:ne200100]<std::pair<TNodePtr,FPItem * {__strong}> const*,std::pair<TNodePtr,FPItem * {__strong}> const*>(v7, &v9, &v11, 1uLL);
    TNode::AttachFPItemsMetadata(v7, 0, 1);
    v8 = v7;
    std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&v8);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E57508E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13, id a14, id a15)
{
  a13 = &a10;
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::$_1,std::allocator<TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::$_1>,void ()(FPItem *,NSError *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<TFSInfo>::__shared_ptr_emplace[abi:ne200100]<FSInfoVirtualType,TString const&,TCatalogInfo const&,std::allocator<TFSInfo>,0>(void *a1, char *a2, const TString *a3, _BYTE *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3D3B8;
  TFSInfo::TFSInfo((a1 + 3), *a2, a3, a4);
  return a1;
}

uint64_t std::__shared_ptr_emplace<TFSInfo>::__shared_ptr_emplace[abi:ne200100]<FIProviderDomain * {__strong}&,FPItem * {__strong}&,BOOL,std::allocator<TFSInfo>,0>(uint64_t a1, FIProviderDomain **a2, FPItem **a3, unsigned __int8 *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5F3D3B8;
  TFSInfo::TFSInfo((a1 + 24), *a2, *a3, *a4);
  return a1;
}

void *std::__shared_ptr_emplace<TFSInfoSizer>::__shared_ptr_emplace[abi:ne200100]<TNode *,TNodePtr,decltype(nullptr),std::allocator<TFSInfoSizer>,0>(void *a1, const TNode **a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F40A48;
  std::construct_at[abi:ne200100]<TFSInfoSizer,TNode *,TNodePtr,decltype(nullptr),TFSInfoSizer*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<TFSInfoSizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F40A48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void std::__shared_ptr_emplace<TFSInfoSizer>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 24);
}

uint64_t std::construct_at[abi:ne200100]<TFSInfoSizer,TNode *,TNodePtr,decltype(nullptr),TFSInfoSizer*>(uint64_t a1, const TNode **a2, uint64_t a3)
{
  TNodePtr::TNodePtr(&v8, *a2);
  v6 = 0;
  v7 = 0;
  TFSInfoSizer::TFSInfoSizer(a1, &v8, a3, &v6, 0);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

void sub_1E5750D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

const void ***TPropertyReference::As<__CFString const*>(const void ***result, void **a2)
{
  v2 = *(result + 2);
  v3 = a2;
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_48;
      }

      result = *a2;
      break;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 9:
      goto LABEL_47;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_48;
      }

      result = AsPriv<__CFString const*,TString>(*result);
      break;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_48;
      }

      v3 = *result;
LABEL_47:
      result = *v3;
      break;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_48;
      }

      result = TPropertyValue::As<__CFString const*>(*result, a2);
      break;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    case 23:
      if (v2 == 23)
      {
        goto LABEL_47;
      }

LABEL_48:
      std::__throw_bad_variant_access[abi:ne200100]();
    default:
      return result;
  }

  return result;
}

__n128 std::__function::__func<TNode::RecursiveChildrenAndSelf(BOOL)::$_0,std::allocator<TNode::RecursiveChildrenAndSelf(BOOL)::$_0>,void ()(TNode const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F40A98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<TNode::RecursiveChildrenAndSelf(BOOL)::$_0,std::allocator<TNode::RecursiveChildrenAndSelf(BOOL)::$_0>,void ()(TNode const*)>::operator()(uint64_t a1, const TNode **a2)
{
  TNodePtr::TNodePtr(&v16, *a2);
  if (*(a1 + 8) != 1 || (v3 = TNodeFromFINode(v16.fFINode), v4 = atomic_load(TNode::GetNotifierList(v3)), v4 >= 1))
  {
    std::vector<TNodePtr>::push_back[abi:ne200100](*(a1 + 16), &v16.fFINode);
  }

  v5 = TNodeFromFINode(v16.fFINode);
  TNode::CopyChildren(v5, &v17);
  v6 = v17;
  for (i = v18; v6 != i; ++v6)
  {
    v8 = *v6;
    v9 = TNodeFromFINode(v8);
    v10 = TNode::InfoLock(v9);
    os_unfair_lock_lock(v10);
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v10);
    os_unfair_lock_lock((v12 + 108));
    v13 = *(v12 + 123);
    os_unfair_lock_unlock((v12 + 108));
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if ((v13 & 0x20) != 0)
    {
      v14 = *(a1 + 24);
      v15 = TNodeFromFINode(v8);
      std::function<void ()(TNode const*)>::operator()(v14, v15);
    }
  }

  v19 = &v17;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v19);
}

uint64_t std::__function::__func<TNode::RecursiveChildrenAndSelf(BOOL)::$_0,std::allocator<TNode::RecursiveChildrenAndSelf(BOOL)::$_0>,void ()(TNode const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(TNode const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<TSuboperationRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F40B28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void *std::__shared_ptr_emplace<TSuboperationRequest>::__shared_ptr_emplace[abi:ne200100]<NodeSuboperation &,std::allocator<TSuboperationRequest>,0>(void *a1, int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F40B28;
  TSuboperationRequest::TSuboperationRequest((a1 + 3), *a2);
  return a1;
}

void *std::__shared_ptr_emplace<TSuboperationRequest>::__shared_ptr_emplace[abi:ne200100]<NodeSuboperation &,__CFString const*&,int (*&)(__CFString const*,__CFString const*,NodeClientContext *,__CFString const**),NodeClientContext *&,TNodePtr &,OpaquePropertyListRef *&,std::allocator<TSuboperationRequest>,0>(void *a1, unsigned int *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F40B28;
  TSuboperationRequest::TSuboperationRequest(a1 + 3, *a2, *a3, *a4, *a5, a6, *a7);
  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<TNodePtr,TNodePtr>,std::__unordered_map_hasher<TNodePtr,std::__hash_value_type<TNodePtr,TNodePtr>,std::hash<TNodePtr>,std::equal_to<TNodePtr>,true>,std::__unordered_map_equal<TNodePtr,std::__hash_value_type<TNodePtr,TNodePtr>,std::equal_to<TNodePtr>,std::hash<TNodePtr>,true>,std::allocator<std::__hash_value_type<TNodePtr,TNodePtr>>>::__emplace_unique_key_args<TNodePtr,std::piecewise_construct_t const&,std::tuple<TNodePtr&&>,std::tuple<>>(void *a1, FINode **a2)
{
  v2 = *a2 >> 2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *a2 >> 2;
    if (v2 >= *&v3)
    {
      v7 = v2 % *&v3;
    }
  }

  else
  {
    v7 = (*&v3 - 1) & v2;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v2)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  v11 = TNodeFromFINode(v9[2]);
  if (v11 != TNodeFromFINode(*a2))
  {
    goto LABEL_17;
  }

  return v9;
}

__n128 std::__function::__func<AutoSignpostInterval_General_HandleSync::AutoSignpostInterval_General_HandleSync<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_HandleSync::AutoSignpostInterval_General_HandleSync<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F40B78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AutoSignpostInterval_General_HandleSync::AutoSignpostInterval_General_HandleSync<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_HandleSync::AutoSignpostInterval_General_HandleSync<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::__emplace_unique_key_args<FPProviderDomain * {__strong},std::piecewise_construct_t const&,std::tuple<FPProviderDomain * const {__strong}&>,std::tuple<>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<FPProviderDomain * const {__strong}&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((std::equal_to<FPProviderDomain * {__strong}>::operator()(a1, v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E5751A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,void *>>>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
    objc_destroyWeak(a2 + 3);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    objc_destroyWeak(__p + 3);
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(__p + 2);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::__emplace_unique_key_args<FPProviderDomain * {__strong},std::pair<FPProviderDomain * const {__strong},std::pair<FINode * {__weak},unsigned long>> const&>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::__construct_node_hash<std::pair<FPProviderDomain * const {__strong},std::pair<FINode * {__weak},unsigned long>> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((std::equal_to<FPProviderDomain * {__strong}>::operator()(a1, v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E5751DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_1,std::allocator<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_1>,void ()(FPProviderDomain *,FPItem *,NSError *)>::~__func(void *a1)
{
  *a1 = &unk_1F5F40BF8;
  std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_1,std::allocator<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_1>,void ()(FPProviderDomain *,FPItem *,NSError *)>::~__func(void *a1)
{
  *a1 = &unk_1F5F40BF8;
  std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E692CD30);
}

uint64_t std::__function::__func<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_1,std::allocator<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_1>,void ()(FPProviderDomain *,FPItem *,NSError *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F40BF8;
  result = std::unordered_map<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>::unordered_map(a2 + 8, a1 + 8);
  v5 = *(a1 + 48);
  *(a2 + 50) = *(a1 + 50);
  *(a2 + 48) = v5;
  *(a2 + 51) = 0;
  *(a2 + 55) = 0;
  return result;
}

void std::__function::__func<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_1,std::allocator<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_1>,void ()(FPProviderDomain *,FPItem *,NSError *)>::operator()(uint64_t a1, id *a2, void **a3, void **a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = *a4;
  v17 = *a2;
  v7 = v5;
  v8 = v6;
  v16[0] = &v17;
  v9 = std::__hash_table<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::hash<FPProviderDomain * {__strong}>,std::equal_to<FPProviderDomain * {__strong}>,true>,std::__unordered_map_equal<FPProviderDomain * {__strong},std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>,std::equal_to<FPProviderDomain * {__strong}>,std::hash<FPProviderDomain * {__strong}>,true>,std::allocator<std::__hash_value_type<FPProviderDomain * {__strong},std::pair<FINode * {__weak},unsigned long>>>>::__emplace_unique_key_args<FPProviderDomain * {__strong},std::piecewise_construct_t const&,std::tuple<FPProviderDomain * const {__strong}&>,std::tuple<>>((a1 + 8), &v17);
  WeakRetained = objc_loadWeakRetained(v9 + 3);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [(FINode *)WeakRetained fpItem];
    if (v12 == v7)
    {
    }

    else
    {
      v13 = *(a1 + 48);

      if (v13)
      {
        v14 = TNodeFromFINode(v11);
        TNodePtr::TNodePtr(&v19, v14);
        v20 = v7;
        memset(v16, 0, sizeof(v16));
        std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__init_with_size[abi:ne200100]<std::pair<TNodePtr,FPItem * {__strong}> const*,std::pair<TNodePtr,FPItem * {__strong}> const*>(v16, &v19, &v21, 1uLL);
        TNode::AttachFPItemsMetadata(v16, *(a1 + 49), *(a1 + 50));
        v18 = v16;
        std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&v18);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E5752170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void **a13, id a14, id a15)
{
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_1,std::allocator<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_1>,void ()(FPProviderDomain *,FPItem *,NSError *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_3,std::allocator<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_3>,void ()(__CFURL const*,FPItem *,NSError *)>::~__func(void *a1)
{
  *a1 = &unk_1F5F40C88;
  std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_3,std::allocator<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_3>,void ()(__CFURL const*,FPItem *,NSError *)>::~__func(void *a1)
{
  *a1 = &unk_1F5F40C88;
  std::__hash_table<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::__unordered_map_hasher<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::__unordered_map_equal<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>,std::equal_to<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,std::hash<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>,true>,std::allocator<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>>>::~__hash_table((a1 + 1));

  JUMPOUT(0x1E692CD30);
}

uint64_t std::__function::__func<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_3,std::allocator<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_3>,void ()(__CFURL const*,FPItem *,NSError *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F40C88;
  result = std::unordered_map<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::pair<FINode * {__weak},unsigned long>>::unordered_map(a2 + 8, a1 + 8);
  v5 = *(a1 + 48);
  *(a2 + 50) = *(a1 + 50);
  *(a2 + 48) = v5;
  *(a2 + 51) = 0;
  *(a2 + 55) = 0;
  return result;
}

uint64_t std::__function::__func<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_3,std::allocator<TNode::UpdateFPItemsIfNeeded(std::vector<TNodePtr> const&,std::chrono::duration<double,std::ratio<1l,1l>> const&,BOOL,BOOL,BOOL)::$_3>,void ()(__CFURL const*,FPItem *,NSError *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(FPItem *,NSError *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<TNode::FPItemFromURLWithTimeout(__CFURL const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(FPItem *,NSError *)> const&)::$_0,std::allocator<TNode::FPItemFromURLWithTimeout(__CFURL const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(FPItem *,NSError *)> const&)::$_0>,void ()(__CFURL const*,FPItem *,NSError *)>::~__func(void *a1)
{
  *a1 = &unk_1F5F40D18;
  std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<TNode::FPItemFromURLWithTimeout(__CFURL const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(FPItem *,NSError *)> const&)::$_0,std::allocator<TNode::FPItemFromURLWithTimeout(__CFURL const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(FPItem *,NSError *)> const&)::$_0>,void ()(__CFURL const*,FPItem *,NSError *)>::~__func(void *a1)
{
  *a1 = &unk_1F5F40D18;
  std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E692CD30);
}

void std::__function::__func<TNode::FPItemFromURLWithTimeout(__CFURL const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(FPItem *,NSError *)> const&)::$_0,std::allocator<TNode::FPItemFromURLWithTimeout(__CFURL const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(FPItem *,NSError *)> const&)::$_0>,void ()(__CFURL const*,FPItem *,NSError *)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<TNode::FPItemFromURLWithTimeout(__CFURL const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(FPItem *,NSError *)> const&)::$_0,std::allocator<TNode::FPItemFromURLWithTimeout(__CFURL const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(FPItem *,NSError *)> const&)::$_0>,void ()(__CFURL const*,FPItem *,NSError *)>::operator()(uint64_t a1, uint64_t a2, id *a3, void **a4)
{
  v5 = *a4;
  v7 = *a3;
  v6 = v5;
  if (*(a1 + 32))
  {
    std::function<void ()(FPItem *,NSError *)>::operator()(a1 + 8, v7, v6);
  }
}

uint64_t std::__function::__func<TNode::FPItemFromURLWithTimeout(__CFURL const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(FPItem *,NSError *)> const&)::$_0,std::allocator<TNode::FPItemFromURLWithTimeout(__CFURL const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(FPItem *,NSError *)> const&)::$_0>,void ()(__CFURL const*,FPItem *,NSError *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<std::unordered_map<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F40D98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void std::__shared_ptr_emplace<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F40DE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,std::tuple<std::optional<FPItem * {__strong}>,std::optional<NSError * {__strong}>,std::shared_ptr<std::function<void ()(__CFURL const*,FPItem *,NSError *)>>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a2 + 64);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (*(a2 + 48) == 1)
    {
    }

    if (*(a2 + 32) == 1)
    {
    }

    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef((a2 + 16));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__function::__func<TNode::RootFPItemForDomainWithTimeout(FPProviderDomain *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPItem *,NSError *)> const&)::$_0,std::allocator<TNode::RootFPItemForDomainWithTimeout(FPProviderDomain *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPItem *,NSError *)> const&)::$_0>,void ()(FPProviderDomain *,FPItem *,NSError *)>::~__func(void *a1)
{
  *a1 = &unk_1F5F40E38;
  std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<TNode::RootFPItemForDomainWithTimeout(FPProviderDomain *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPItem *,NSError *)> const&)::$_0,std::allocator<TNode::RootFPItemForDomainWithTimeout(FPProviderDomain *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPItem *,NSError *)> const&)::$_0>,void ()(FPProviderDomain *,FPItem *,NSError *)>::~__func(void *a1)
{
  *a1 = &unk_1F5F40E38;
  std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E692CD30);
}

void std::__function::__func<TNode::RootFPItemForDomainWithTimeout(FPProviderDomain *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPItem *,NSError *)> const&)::$_0,std::allocator<TNode::RootFPItemForDomainWithTimeout(FPProviderDomain *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPItem *,NSError *)> const&)::$_0>,void ()(FPProviderDomain *,FPItem *,NSError *)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<TNode::RootFPItemForDomainWithTimeout(FPProviderDomain *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPItem *,NSError *)> const&)::$_0,std::allocator<TNode::RootFPItemForDomainWithTimeout(FPProviderDomain *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPItem *,NSError *)> const&)::$_0>,void ()(FPProviderDomain *,FPItem *,NSError *)>::operator()(uint64_t a1, uint64_t a2, id *a3, void **a4)
{
  v5 = *a4;
  v7 = *a3;
  v6 = v5;
  if (*(a1 + 32))
  {
    std::function<void ()(FPItem *,NSError *)>::operator()(a1 + 8, v7, v6);
  }
}

uint64_t std::__function::__func<TNode::RootFPItemForDomainWithTimeout(FPProviderDomain *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPItem *,NSError *)> const&)::$_0,std::allocator<TNode::RootFPItemForDomainWithTimeout(FPProviderDomain *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPItem *,NSError *)> const&)::$_0>,void ()(FPProviderDomain *,FPItem *,NSError *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<std::unordered_map<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F40EB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FPProviderDomain * {__strong},fstd::optional_err<FPItem * {__strong},NSError * {__strong}>>,void *>>>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void FormatDetails<std::chrono::duration<double,std::ratio<1l,1l>>,FPProviderDomain * {__strong}>(__int128 *a1@<X0>, double *a2@<X1>, void **a3@<X2>, std::string *a4@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v12 = *a1;
  do
  {
    v7 = FormatOneDetails<std::chrono::duration<double,std::ratio<1l,1l>>>(&v12, &__p, a2);
    if (v7)
    {
      *(&a4->__r_.__value_.__s + 23) = 0;
      a4->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v7 == 0x700000000);
  FormatDetails<FPProviderDomain * {__strong}>(&v12, a3, &v11);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::string::insert(&v11, 0, p_p, size);
  *a4 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E5752C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t FormatOneDetails<std::chrono::duration<double,std::ratio<1l,1l>>>(const std::string::value_type **a1, std::string *this, double *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    v12 = 0;
    v9 = 1;
    return v12 | v9;
  }

  v7 = *a1;
  v8 = &v3[*a1];
  v9 = 1;
  v10 = *a1;
LABEL_3:
  v11 = 0;
  while (*v10 != asc_1E57B78C0[v11])
  {
    if (++v11 == 3)
    {
      if (++v10 == v8)
      {
        v12 = 0;
        return v12 | v9;
      }

      goto LABEL_3;
    }
  }

  v12 = 0;
  v9 = 1;
  if (v10 != v8)
  {
    v13 = v10 - v7;
    if (v10 - v7 != -1)
    {
      std::string::append(this, v7, v10 - v7);
      v14 = a1[1];
      v15 = v14 >= v13;
      v16 = &v14[-v13];
      if (!v15)
      {
        goto LABEL_93;
      }

      *a1 += v13;
      a1[1] = v16;
      ParseFormat(a1, &v36);
      v17 = v37;
      if (!v37)
      {
        v12 = 0;
        v9 = 2;
        return v12 | v9;
      }

      if (v38 <= 4)
      {
        if ((v38 - 1) < 3)
        {
          goto LABEL_90;
        }

        if (v38 == 4)
        {
          if (v37 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v37 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v37;
            memmove(&__dst, v36, v37);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            std::string::basic_string[abi:ne200100]<0>(&__p, "??? (hex)");
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            goto LABEL_69;
          }

LABEL_94:
          std::string::__throw_length_error[abi:ne200100]();
        }

        goto LABEL_47;
      }

      if (v38 <= 6)
      {
        if (v38 == 5)
        {
          std::to_string(&__dst, *a3);
          RedactForPrivacy(&v36, &__dst, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }
        }

        else
        {
          std::to_string(&__dst, *a3);
          RedactForPrivacy(&v36, &__dst, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }
        }

LABEL_69:
        std::string::append(this, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_90:
          v28 = a1[1];
          v29 = &v28[-v37];
          if (v28 >= v37)
          {
            v9 = 0;
            *a1 += v37;
            a1[1] = v29;
            v12 = v38 << 32;
            return v12 | v9;
          }

LABEL_93:
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v25 = __dst.__r_.__value_.__r.__words[0];
LABEL_89:
        operator delete(v25);
        goto LABEL_90;
      }

      if (v38 == 8)
      {
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_94;
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v37;
        memmove(&__dst, v36, v37);
        __dst.__r_.__value_.__s.__data_[v17] = 0;
        ExtractEmbeddedFormat(&__dst, &__p);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v23 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __p.__r_.__value_.__l.__size_;
          v23 = __p.__r_.__value_.__r.__words[0];
        }

        v33.__r_.__value_.__r.__words[0] = v23;
        v33.__r_.__value_.__l.__size_ = v22;
        FormatDetails<std::chrono::duration<double,std::ratio<1l,1l>>>(&v33, &__dst);
        v24 = v37;
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        v32 = v37;
        if (v37)
        {
          memmove(&v31, v36, v37);
        }

        *(&v31 + v24) = 0;
        ExtendedFormatAdaptor(&v31, &__dst, &v33);
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v33;
        }

        else
        {
          v26 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = v33.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v26, v27);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (v38 != 7)
        {
LABEL_47:
          std::to_string(&__dst, *a3);
          RedactForPrivacy(&v36, &__dst, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          goto LABEL_69;
        }

        DeEscapeFormatFragment(&v36, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v20, v21);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_90;
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_89;
    }
  }

  return v12 | v9;
}

void sub_1E5753154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void FormatDetails<FPProviderDomain * {__strong}>(__int128 *a1@<X0>, void **a2@<X1>, std::string *a3@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v10 = *a1;
  do
  {
    v5 = FormatOneDetails<FPProviderDomain * {__strong}>(&v10, &__p, a2);
    if (v5)
    {
      *(&a3->__r_.__value_.__s + 23) = 0;
      a3->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v5 == 0x700000000);
  FormatDetails(&v10, &v9);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::insert(&v9, 0, p_p, size);
  *a3 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E57532E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void FormatDetails<std::chrono::duration<double,std::ratio<1l,1l>>>(__int128 *a1@<X0>, std::string *a2@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v8 = *a1;
  do
  {
    v3 = FormatOneDetails<std::chrono::duration<double,std::ratio<1l,1l>>>(&v8, &__p);
    if (v3)
    {
      *(&a2->__r_.__value_.__s + 23) = 0;
      a2->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_13;
    }
  }

  while (v3 == 0x700000000);
  FormatDetails(&v8, &v7);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = std::string::insert(&v7, 0, p_p, size);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

LABEL_13:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E57533F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t FormatOneDetails<FPProviderDomain * {__strong}>(const std::string::value_type **a1, std::string *this, void **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    v12 = 0;
    v9 = 1;
    return v12 | v9;
  }

  v7 = *a1;
  v8 = &v3[*a1];
  v9 = 1;
  v10 = *a1;
LABEL_3:
  v11 = 0;
  while (*v10 != asc_1E57B78C0[v11])
  {
    if (++v11 == 3)
    {
      if (++v10 == v8)
      {
        v12 = 0;
        return v12 | v9;
      }

      goto LABEL_3;
    }
  }

  v12 = 0;
  v9 = 1;
  if (v10 != v8)
  {
    v13 = v10 - v7;
    if (v10 - v7 != -1)
    {
      std::string::append(this, v7, v10 - v7);
      v14 = a1[1];
      v15 = v14 >= v13;
      v16 = &v14[-v13];
      if (!v15)
      {
        goto LABEL_93;
      }

      *a1 += v13;
      a1[1] = v16;
      ParseFormat(a1, &v36);
      v17 = v37;
      if (!v37)
      {
        v12 = 0;
        v9 = 2;
        return v12 | v9;
      }

      if (v38 <= 4)
      {
        if ((v38 - 1) < 3)
        {
          goto LABEL_90;
        }

        if (v38 == 4)
        {
          if (v37 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v37 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v37;
            memmove(&__dst, v36, v37);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            HexDescriptionPrinterGlue<FPProviderDomain * {__strong},void>::dump(&__dst, a3, &__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            goto LABEL_69;
          }

LABEL_94:
          std::string::__throw_length_error[abi:ne200100]();
        }

        goto LABEL_47;
      }

      if (v38 <= 6)
      {
        if (v38 == 5)
        {
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }
        }

        else
        {
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }
        }

LABEL_69:
        std::string::append(this, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_90:
          v28 = a1[1];
          v29 = &v28[-v37];
          if (v28 >= v37)
          {
            v9 = 0;
            *a1 += v37;
            a1[1] = v29;
            v12 = v38 << 32;
            return v12 | v9;
          }

LABEL_93:
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v25 = __dst.__r_.__value_.__r.__words[0];
LABEL_89:
        operator delete(v25);
        goto LABEL_90;
      }

      if (v38 == 8)
      {
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_94;
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v37;
        memmove(&__dst, v36, v37);
        __dst.__r_.__value_.__s.__data_[v17] = 0;
        ExtractEmbeddedFormat(&__dst, &__p);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v23 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __p.__r_.__value_.__l.__size_;
          v23 = __p.__r_.__value_.__r.__words[0];
        }

        v33.__r_.__value_.__r.__words[0] = v23;
        v33.__r_.__value_.__l.__size_ = v22;
        FormatDetails<FPProviderDomain * {__strong}>(&__dst, &v33, a3);
        v24 = v37;
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        v32 = v37;
        if (v37)
        {
          memmove(&v31, v36, v37);
        }

        *(&v31 + v24) = 0;
        ExtendedFormatAdaptor(&v31, &__dst, &v33);
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v33;
        }

        else
        {
          v26 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = v33.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v26, v27);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (v38 != 7)
        {
LABEL_47:
          Description<NSString * {__strong}>(a3, &__dst);
          RedactForPrivacy(&v36, &__dst, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          goto LABEL_69;
        }

        DeEscapeFormatFragment(&v36, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &__p;
        }

        else
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v20, v21);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_90;
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      goto LABEL_89;
    }
  }

  return v12 | v9;
}

void sub_1E5753930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *HexDescriptionPrinterGlue<FPProviderDomain * {__strong},void>::dump@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v16[19] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    WidenHexFormatStringSpecifierToLongLong(a1, __p);
    if (v10 >= 0)
    {
      snprintf(__str, 0x64uLL, __p, *a2);
    }

    else
    {
      snprintf(__str, 0x64uLL, __p[0], *a2);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    result = std::string::basic_string[abi:ne200100]<0>(a3, __str);
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__str);
    *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x1E692CAE0](&v12, *a2);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__str, a3);
    *__str = *MEMORY[0x1E69E54D8];
    v7 = *(MEMORY[0x1E69E54D8] + 72);
    *&__str[*(*__str - 24)] = *(MEMORY[0x1E69E54D8] + 64);
    v12 = v7;
    v13 = MEMORY[0x1E69E5548] + 16;
    if (v15 < 0)
    {
      operator delete(v14[7].__locale_);
    }

    v13 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v14);
    std::iostream::~basic_iostream();
    result = MEMORY[0x1E692CCA0](v16);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5753C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::tuple<FPProviderDomain * {__strong}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F40F08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

uint64_t std::__shared_ptr_emplace<TFSInfo>::__shared_ptr_emplace[abi:ne200100]<FIProviderDomain * {__strong},decltype(nullptr),BOOL,std::allocator<TFSInfo>,0>(uint64_t a1, FIProviderDomain **a2, uint64_t a3, unsigned __int8 *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5F3D3B8;
  TFSInfo::TFSInfo((a1 + 24), *a2, 0, *a4);
  return a1;
}

__n128 std::__function::__func<AutoSignpostInterval_General_SynchronizeChildren::AutoSignpostInterval_General_SynchronizeChildren<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_SynchronizeChildren::AutoSignpostInterval_General_SynchronizeChildren<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F40F58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AutoSignpostInterval_General_SynchronizeChildren::AutoSignpostInterval_General_SynchronizeChildren<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_SynchronizeChildren::AutoSignpostInterval_General_SynchronizeChildren<char [34],NSString * {__strong},TString>(void *,char [34],NSString * {__strong},TString const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<std::vector<TNodePtr>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F40FD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void *std::__shared_ptr_emplace<TFSInfoSizer>::__shared_ptr_emplace[abi:ne200100]<TNodePtr &,TNodePtr,std::shared_ptr<TNodeTask> const&,std::allocator<TFSInfoSizer>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F40A48;
  TFSInfoSizer::TFSInfoSizer(a1 + 3, a2, a3, a4, 0);
  return a1;
}

void *std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::find<__SFNode *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2 >> 2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 >> 2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::__emplace_unique_key_args<__SFNode *,std::piecewise_construct_t const&,std::tuple<__SFNode * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = *a2 >> 2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 >> 2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != *a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1E57542F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<__SFNode *,TNodePtr>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<__SFNode *,TNodePtr>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<__SFNode *,TNodePtr>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<__SFNode *,TNodePtr>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t GlobalCopyProgressEnabled(void)
{
  {
    v1 = _os_feature_enabled_impl() && getBGContinuedProcessingTaskRequestClass() && getBGTaskSchedulerClass() != 0;
    GlobalCopyProgressEnabled(void)::enabled = v1;
  }

  return GlobalCopyProgressEnabled(void)::enabled;
}

void sub_1E5754B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = DSFileServiceProgressGroup;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1E575542C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v16 = v12;

  _Unwind_Resume(a1);
}

Class initBGContinuedProcessingTaskRequest(void)
{
  if (BackgroundTasksLibrary(void)::frameworkLibrary || (BackgroundTasksLibrary(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/BackgroundTasks.framework/BackgroundTasks", 2)) != 0)
  {
    Class = objc_getClass("BGContinuedProcessingTaskRequest");
    classBGContinuedProcessingTaskRequest = Class;
    getBGContinuedProcessingTaskRequestClass = BGContinuedProcessingTaskRequestFunction;
  }

  else
  {
    Class = classBGContinuedProcessingTaskRequest;
  }

  return Class;
}

Class initBGTaskScheduler(void)
{
  if (BackgroundTasksLibrary(void)::frameworkLibrary || (BackgroundTasksLibrary(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/BackgroundTasks.framework/BackgroundTasks", 2)) != 0)
  {
    Class = objc_getClass("BGTaskScheduler");
    classBGTaskScheduler = Class;
    getBGTaskSchedulerClass = BGTaskSchedulerFunction;
  }

  else
  {
    Class = classBGTaskScheduler;
  }

  return Class;
}

void ___ZZ116__DSFileServiceProgressGroup_initWithUUID_operationKind_groupCount_publishingURL_firstChildName_dateStarted_utType__ENK3__1cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = TNSWeakPtr<DSFileServiceProgressGroup>::Lock((a1 + 32));
  v2 = [v1 childProgresses];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 isCancelled] & 1) == 0)
        {
          [v7 cancel];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

id TNSWeakPtr<DSFileServiceProgressGroup>::Lock(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained isTornDown])
  {

    WeakRetained = 0;
  }

  return WeakRetained;
}

void ___ZZ116__DSFileServiceProgressGroup_initWithUUID_operationKind_groupCount_publishingURL_firstChildName_dateStarted_utType__ENK3__2cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = TNSWeakPtr<DSFileServiceProgressGroup>::Lock((a1 + 32));
  v2 = [v1 childProgresses];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isPaused])
        {
          [v7 resume];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void ___ZZ116__DSFileServiceProgressGroup_initWithUUID_operationKind_groupCount_publishingURL_firstChildName_dateStarted_utType__ENK3__3cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = TNSWeakPtr<DSFileServiceProgressGroup>::Lock((a1 + 32));
  v2 = [v1 childProgresses];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 isPaused] & 1) == 0)
        {
          [v7 pause];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void ___ZZ47__DSFileServiceProgressGroup_addChildProgress__ENK3__4cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = TNSWeakPtr<DSFileServiceProgressGroup>::Lock((a1 + 32));
  v4 = [v3 progress];

  if (v4 && ([v4 isCancelled] & 1) == 0)
  {
    [v4 cancel];
  }
}

uint64_t __copy_helper_block_ea8_32c60_ZTSKZ47__DSFileServiceProgressGroup_addChildProgress__E3__4(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = MEMORY[0x1E692D6D0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c60_ZTSKZ47__DSFileServiceProgressGroup_addChildProgress__E3__4(uint64_t a1)
{

  objc_destroyWeak((a1 + 32));
}

void ___ZZ47__DSFileServiceProgressGroup_addChildProgress__ENK3__5cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = TNSWeakPtr<DSFileServiceProgressGroup>::Lock((a1 + 32));
  v4 = [v3 progress];

  if ([v4 isPaused])
  {
    [v4 resume];
  }
}

uint64_t __copy_helper_block_ea8_32c60_ZTSKZ47__DSFileServiceProgressGroup_addChildProgress__E3__5(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = MEMORY[0x1E692D6D0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c60_ZTSKZ47__DSFileServiceProgressGroup_addChildProgress__E3__5(uint64_t a1)
{

  objc_destroyWeak((a1 + 32));
}

void ___ZZ47__DSFileServiceProgressGroup_addChildProgress__ENK3__6cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = TNSWeakPtr<DSFileServiceProgressGroup>::Lock((a1 + 32));
  v4 = [v3 progress];

  if (v4 && ([v4 isPaused] & 1) == 0)
  {
    [v4 pause];
  }
}

uint64_t __copy_helper_block_ea8_32c60_ZTSKZ47__DSFileServiceProgressGroup_addChildProgress__E3__6(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = MEMORY[0x1E692D6D0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c60_ZTSKZ47__DSFileServiceProgressGroup_addChildProgress__E3__6(uint64_t a1)
{

  objc_destroyWeak((a1 + 32));
}

void std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      TKeyValueObserver::~TKeyValueObserver((v2 + 24));

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::__emplace_unique_key_args<NSProgress * {__strong},std::piecewise_construct_t const&,std::tuple<NSProgress * const {__strong}&>,std::tuple<>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<NSProgress * const {__strong}&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((std::equal_to<NSProgress * {__strong}>::operator()(a1, v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E5756838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E57568EC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::equal_to<NSProgress * {__strong}>::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqual:v5];
  }

  return v6;
}

uint64_t _ZNSt3__14pairIU8__strongKP10NSProgress17TKeyValueObserverEC2B8ne200100IJRS3_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS9_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSI_IJXspT2_EEEE(uint64_t a1, id **a2)
{
  *a1 = **a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 8) = 0u;
  TKeyValueObserver::TKeyValueObserver((a1 + 8));
  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    TKeyValueObserver::~TKeyValueObserver((a2 + 24));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::__erase_unique<NSProgress * {__strong}>(void *a1, id *a2)
{
  result = std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::find<NSProgress * {__strong}>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::find<NSProgress * {__strong}>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<NSProgress * {__strong}>::operator()(a1, i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

uint64_t std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::__unordered_map_hasher<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::hash<NSProgress * {__strong}>,std::equal_to<NSProgress * {__strong}>,true>,std::__unordered_map_equal<NSProgress * {__strong},std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>,std::equal_to<NSProgress * {__strong}>,std::hash<NSProgress * {__strong}>,true>,std::allocator<std::__hash_value_type<NSProgress * {__strong},TKeyValueObserver>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void TChildrenList::SubscribeWithKQueue(TChildrenList *this)
{
  TNodePtr::TNodePtr(&v3, *(this + 12));
  v1 = TNodeFromFINode(v3.fFINode);
  memset(&v2, 0, sizeof(v2));
  TNode::RequestInternalTask(v1, 1008, &v2, 0);
  TPropertyValue::~TPropertyValue(&v2);
}

void sub_1E5756F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  TPropertyValue::~TPropertyValue(&a9);

  _Unwind_Resume(a1);
}

void TChildrenList::UnsubscribeWithKQueue(TChildrenList *this)
{
  TNodePtr::TNodePtr(&v3, *(this + 12));
  v1 = TNodeFromFINode(v3.fFINode);
  memset(&v2, 0, sizeof(v2));
  TNode::RequestInternalTask(v1, 1009, &v2, 0);
  TPropertyValue::~TPropertyValue(&v2);
}

void sub_1E5756F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  TPropertyValue::~TPropertyValue(&a9);

  _Unwind_Resume(a1);
}

id TChildrenList::NSProgressSubscriber(TChildrenList *this)
{
  std::recursive_mutex::lock(this);
  v2 = *(this + 21);
  std::recursive_mutex::unlock(this);

  return v2;
}

BOOL TChildrenList::RemoveChildren(uint64_t a1, FINode ***a2, void *a3)
{
  v3 = a1 + 64;
  if (*(a1 + 64) == *(a1 + 72))
  {
    return 0;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = *a2;
  if (v6 == v5)
  {
    return 0;
  }

  std::unordered_set<TNodePtr>::unordered_set<std::__wrap_iter<TNodePtr const*>>(v26, v6, v5);
  std::vector<TNodePtr>::reserve(a3, v26[3]);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = v9 - v8;
  v24 = v9 - v8;
  if (v9 == v8)
  {
LABEL_8:
    v8 = v9;
  }

  else
  {
    v11 = 1;
    while (!std::__hash_table<TNodePtr,std::hash<TNodePtr>,std::equal_to<TNodePtr>,std::allocator<TNodePtr>>::find<TNodePtr>(v26, v8))
    {
      ++v8;
      ++v11;
      if (v8 == v9)
      {
        v10 = 0;
        goto LABEL_8;
      }
    }

    v15 = TNodeFromFINode(*v8);
    v16 = *(a1 + 96);
    v17 = TNode::ParentLock(v15);
    os_unfair_lock_lock(v17);
    if (*(v15 + 48) == v16)
    {
      *(v15 + 48) = 0;
    }

    os_unfair_lock_unlock(v17);
    v18 = *(a1 + 152);
    std::vector<TNodePtr>::push_back[abi:ne200100](a3, v8);
    v10 = v11 - 1 < v18;
    if (v8 != v9)
    {
      for (i = v8 + 1; i != v9; ++i)
      {
        if (std::__hash_table<TNodePtr,std::hash<TNodePtr>,std::equal_to<TNodePtr>,std::allocator<TNodePtr>>::find<TNodePtr>(v26, i))
        {
          v20 = TNodeFromFINode(*i);
          v21 = *(a1 + 96);
          v22 = TNode::ParentLock(v20);
          os_unfair_lock_lock(v22);
          if (*(v20 + 48) == v21)
          {
            *(v20 + 48) = 0;
          }

          os_unfair_lock_unlock(v22);
          v23 = *(a1 + 152);
          std::vector<TNodePtr>::push_back[abi:ne200100](a3, i);
          if (v11 < v23)
          {
            ++v10;
          }
        }

        else
        {
          TNodePtr::operator=(v8++, i);
        }

        ++v11;
      }
    }
  }

  std::vector<TNodePtr>::erase(v3, v8, *(a1 + 72));
  *(a1 + 152) -= v10;
  v12 = *(a1 + 72) - *(a1 + 64);
  v13 = v24 != v12;
  if (v24 != v12)
  {
    atomic_store(v12 >> 3, (a1 + 160));
    ++*(a1 + 184);
  }

  std::__hash_table<TNodePtr,std::hash<TNodePtr>,std::equal_to<TNodePtr>,std::allocator<TNodePtr>>::~__hash_table(v26);
  return v13;
}

void sub_1E5757268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__hash_table<TNodePtr,std::hash<TNodePtr>,std::equal_to<TNodePtr>,std::allocator<TNodePtr>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void **std::vector<TNodePtr>::erase(uint64_t a1, void **a2, void **a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        TNodePtr::operator=(v7++, v4++);
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v8 = *--v6;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

BOOL TChildrenList::RemoveChild(TChildrenList *this, const TNodePtr *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  v9 = a2->fFINode;
  memset(v6, 0, sizeof(v6));
  std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr const*,TNodePtr const*>(v6, &v9, &v10, 1uLL);
  v3 = TChildrenList::RemoveChildren(this, v6, v7);
  v8 = v6;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v8);

  v6[0] = v7;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1E57573E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 40) = v13;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100]((v14 - 40));

  a10 = &a13;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void TChildrenList::Clear(TChildrenList *this)
{
  TChildrenList::DetachChildren(this);
  v2 = *(this + 8);
  for (i = *(this + 9); i != v2; i -= 8)
  {
    v4 = *(i - 8);
  }

  *(this + 9) = v2;
  *(this + 19) = 0;
}

void **std::vector<TNodePtr>::insert(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = a2;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = ((v7 - *a1) >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = v6 - v10;
    v14 = v13 >> 2;
    if (v13 >> 2 <= v11)
    {
      v14 = ((v7 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 3;
    v18[4] = a1;
    if (v15)
    {
      std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v18[0] = 0;
    v18[1] = (8 * v16);
    v18[2] = (8 * v16);
    v18[3] = 0;
    std::__split_buffer<TNodePtr>::emplace_back<TNodePtr const&>(v18, a3);
    v4 = std::vector<TNodePtr>::__swap_out_circular_buffer(a1, v18, v4);
    std::__split_buffer<TNodePtr>::~__split_buffer(v18);
  }

  else if (a2 == v7)
  {
    *v7 = *a3;
    *(a1 + 8) = v7 + 1;
  }

  else
  {
    std::vector<TNodePtr>::__move_range(a1, a2, *(a1 + 8), a2 + 8);
    v8 = *(a1 + 8) <= a3 || v4 > a3;
    v9 = 1;
    if (v8)
    {
      v9 = 0;
    }

    objc_storeStrong(v4, a3[v9]);
  }

  return v4;
}

void sub_1E57575A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TNodePtr>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void TChildrenList::FindByFPItem(TChildrenList *this@<X0>, FPItem *a2@<X1>, TNodePtr *a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  v7 = v5;
  if (v5)
  {
    v26 = a3;
    v25 = v5;
    v8 = v25;
    v10 = *(this + 8);
    v9 = *(this + 9);
    v27 = this;
    v11 = v8;
    if (v10 != v9)
    {
      while (1)
      {
        v12 = TNodeFromFINode(*v10);
        v13 = TNode::InfoLock(v12);
        os_unfair_lock_lock(v13);
        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v13);
        v6 = v7;
        v16 = TFSInfo::GetFPItem(v15);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if ([v16 isEqualToItem:v11])
        {
          break;
        }

        v17 = [(FPItem *)v11 formerIdentifier];
        v18 = [v16 itemIdentifier];
        if ([v17 isEqualToString:v18])
        {
          v19 = [(FPItem *)v11 providerDomainID];
          v20 = [v16 providerDomainID];
          v21 = [v19 isEqualToString:v20];

          if (v21)
          {
            v22 = LogObj(4);
            v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
            v6 = v7;
            if (v23)
            {
              *buf = 138543618;
              v31 = v25;
              v32 = 2114;
              v33 = v16;
              _os_log_impl(&dword_1E5674000, v22, OS_LOG_TYPE_DEBUG, "Found new item matching to stitched childItem\n%{public}@\n%{public}@", buf, 0x16u);
            }

            break;
          }
        }

        else
        {
        }

        if (++v10 == v9)
        {
          v10 = v9;
          v6 = v7;
          goto LABEL_19;
        }
      }
    }

LABEL_19:

    if (v10 == *(v27 + 9))
    {

      TNodePtr::TNodePtr(v26, 0);
    }

    else
    {
      v28 = *v10;
      v29 = 1;

      TNodePtr::TNodePtr(v26, &v28);
      if (v29)
      {
      }
    }
  }

  else
  {
    TNodePtr::TNodePtr(a3, 0);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void TChildrenList::FindByFileIdentifier(TChildrenList *this@<X0>, uint64_t a2@<X1>, TNodePtr *a3@<X8>)
{
  v4 = *(this + 8);
  v5 = *(this + 9);
  if (v4 != v5)
  {
    while (1)
    {
      v8 = TNodeFromFINode(*v4);
      v9 = TNode::InfoLock(v8);
      os_unfair_lock_lock(v9);
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v9);
      ObjectIdentifier = TFSInfo::GetObjectIdentifier(v11);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (ObjectIdentifier == a2)
      {
        break;
      }

      if (++v4 == v5)
      {
        v4 = v5;
        break;
      }
    }

    v5 = *(this + 9);
  }

  if (v4 == v5)
  {

    TNodePtr::TNodePtr(a3, 0);
  }

  else
  {
    v13 = *v4;
    v14 = 1;
    TNodePtr::TNodePtr(a3, &v13);
    if (v14)
    {
    }
  }
}

void sub_1E5757A14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TChildrenList::FindNodeMatchingFPItem(TChildrenList *this@<X0>, FPItem *a2@<X1>, TNodePtr *a3@<X8>)
{
  v5 = a2;
  if (!TNode::IsFPv2(*(this + 12), 1))
  {
    v6 = [(FPItem *)v5 filename];
    v20.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v20, v6);

    SlashesToColons(&v20, &v21);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v20.fString.fRef);

    TChildrenList::Find(this, &v21, &v20);
    if (!TNodeFromFINode(v20.fString.fRef))
    {
      goto LABEL_11;
    }

    v7 = TNodeFromFINode(v20.fString.fRef);
    v8 = TNode::InfoLock(v7);
    os_unfair_lock_lock(v8);
    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v8);
    ObjectIdentifier = TFSInfo::GetObjectIdentifier(v10);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v12 = [(FPItem *)v5 fileID];
    if (v12 == ObjectIdentifier)
    {
      TNodePtr::TNodePtr(a3, &v20);
LABEL_12:

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21.fString.fRef);
      goto LABEL_13;
    }

    if (v12)
    {
LABEL_11:
      TChildrenList::FindByFileIdentifier(this, [(FPItem *)v5 fileID:v18.fString.fRef], a3);
      goto LABEL_12;
    }

    v13 = [(__CFString *)v20.fString.fRef fiDomain];
    v14 = [v13 identifier];

    v15 = v14;
    v19.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v19, v15);

    if (IsLocalStorageDomainID(&v19))
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19.fString.fRef);
    }

    else
    {
      v16 = v15;
      v18.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v18, v16);

      v17 = IsExternalDeviceDomainID(&v18);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19.fString.fRef);
      if (!v17)
      {

        goto LABEL_11;
      }
    }

    TNodePtr::TNodePtr(a3, &v20);

    goto LABEL_12;
  }

  TChildrenList::FindByFPItem(this, v5, a3);
LABEL_13:
}

void sub_1E5757C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, id a11, const void *a12)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a12);
  _Unwind_Resume(a1);
}

void TChildrenList::FindDisplayName(TChildrenList *this@<X0>, const TString *a2@<X1>, TNodePtr *a3@<X8>)
{
  TNodePtr::TNodePtr(&v11, *(this + 12));
  TNode::StPopulating::StPopulating(v12, &v11, 0);

  v7 = *(this + 8);
  v6 = *(this + 9);
  if (v7 == v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = TNodeFromFINode(*v7);
    v9 = TNode::EqualDisplayName(v8, a2);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 8;
    }

    v7 = (v7 + v10);
  }

  while (v7 != v6 && !v9);
  if (v7 == v6)
  {
LABEL_8:
    TNodePtr::TNodePtr(a3, 0);
  }

  else
  {
    a3->fFINode = *v7;
  }

  TNode::StPopulating::~StPopulating(v12);
}

void sub_1E5757E34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TNode::StPopulating::~StPopulating(va);
  _Unwind_Resume(a1);
}

void TChildrenList::ClearSizesFetchedForUnobservedNodes(TChildrenList *this)
{
  TNodePtr::TNodePtr(&v9, *(this + 12));
  TNode::StPopulating::StPopulating(v10, &v9, 0);

  for (i = *(this + 8); i != *(this + 9); ++i)
  {
    v3 = TNodeFromFINode(*i);
    if (!atomic_load((TNode::GetNotifierList(v3) + 4)))
    {
      v5 = TNodeFromFINode(*i);
      v6 = TNode::InfoLock(v5);
      os_unfair_lock_lock(v6);
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        os_unfair_lock_unlock(v6);
        os_unfair_lock_lock((v8 + 108));
        *(v8 + 123) &= ~0x4000000u;
        os_unfair_lock_unlock((v8 + 108));
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      else
      {
        os_unfair_lock_unlock(v6);
        os_unfair_lock_lock((v8 + 108));
        *(v8 + 123) &= ~0x4000000u;
        os_unfair_lock_unlock((v8 + 108));
      }
    }
  }

  TNode::StPopulating::~StPopulating(v10);
}

BOOL TChildrenList::StopCollectionStatusObserver(TChildrenList *this)
{
  v2 = TChildrenList::InternalLock(this);
  os_unfair_lock_lock(v2);
  [*(this + 13) stopObserving];
  v3 = *(this + 13) != 0;
  os_unfair_lock_unlock(v2);
  return v3;
}

void TChildrenList::ClearCollectionStatusObserver(TChildrenList *this)
{
  v2 = TChildrenList::InternalLock(this);
  os_unfair_lock_lock(v2);
  [*(this + 13) stopObserving];
  v3 = *(this + 13);
  *(this + 13) = 0;

  os_unfair_lock_unlock(v2);
}

void **std::vector<TNodePtr>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = (a2 + v7 - a4);
  if (v8 >= a3)
  {
    result = *(a1 + 8);
  }

  else
  {
    result = *(a1 + 8);
    do
    {
      v11 = TNodePtr::TNodePtr(result, v8++);
      result = (v11 + 1);
    }

    while (v8 < a3);
  }

  *(a1 + 8) = result;
  if (v7 != a4)
  {
    v12 = (v7 - 8);
    v13 = a4 - v7;
    v14 = (a2 + v7 - 8 - a4);
    do
    {
      result = TNodePtr::operator=(v12--, v14--);
      v13 += 8;
    }

    while (v13);
  }

  return result;
}

uint64_t std::vector<TNodePtr>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TNodePtr>,TNodePtr*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TNodePtr>,TNodePtr*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t **std::__hash_table<TNodePtr,std::hash<TNodePtr>,std::equal_to<TNodePtr>,std::allocator<TNodePtr>>::find<TNodePtr>(void *a1, FINode **a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *a2 >> 2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *a2 >> 2;
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = i[1];
    if (v4 == v10)
    {
      v11 = TNodeFromFINode(i[2]);
      if (v11 == TNodeFromFINode(*a2))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

id std::__split_buffer<TNodePtr>::emplace_back<TNodePtr const&>(void ***a1, id *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v4 - *a1) >> 2;
      }

      v10 = a1[4];
      v12 = a1[4];
      std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](v10, v9);
    }

    v8 = ((v7 >> 3) + 1) / -2;
    v5 = &v6[-(((v7 >> 3) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        TNodePtr::operator=(v5++, v6++);
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[v8];
    a1[2] = v5;
  }

  result = *a2;
  *v5 = result;
  ++a1[2];
  return result;
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(uint64_t *a1, uint64_t *a2, void **a3)
{
  v10 = a2;
  v11 = a1;
  v9 = a3;
  v5 = TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(a2, a1);
  v6 = TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(a3, a2);
  if (v5)
  {
    if (v6)
    {
      v7 = &v11;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v11, &v10);
      if (!TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v9, v10))
      {
        return;
      }

      v7 = &v10;
    }

    v8 = &v9;
    goto LABEL_10;
  }

  if (v6)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v10, &v9);
    if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v10, v11))
    {
      v7 = &v11;
      v8 = &v10;
LABEL_10:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(v7, v8);
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void **a5)
{
  v13 = a2;
  v14 = a1;
  v11 = a4;
  v12 = a3;
  v10 = a5;
  v18 = a1;
  v16 = a3;
  v17 = a2;
  v15 = a4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,TChildrenList::SortListIfNeeded(unsigned long)::$_0 &,TNodePtr *,0>(a1, a2, a3);
  if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v16, &v15);
    if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v16, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v17, &v16);
      if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v17, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v18, &v17);
      }
    }
  }

  if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(a5, a4))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v11, &v10);
    if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v11, a3))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v12, &v11);
      if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v12, a2))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v13, &v12);
        if (TChildrenList::SortListIfNeeded(unsigned long)::$_0::operator()(v13, a1))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<TNodePtr *&,TNodePtr *&>(&v14, &v13);
        }
      }
    }
  }
}