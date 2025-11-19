void sub_1E50FD0D8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (LOBYTE(STACK[0x2F0]) == 1 && SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  _Unwind_Resume(a1);
}

void ___ZN24MediaSessionStateMachine27handleMediaSessionActivatedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = *(a1 + 48);
        v14 = *(a1 + 40);
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 24))(v5, &v14, *(a1 + 56));
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50FD400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void ___ZN24MediaSessionStateMachine27handleMediaSessionActivatedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke_88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = *(a1 + 48);
        v14 = *(a1 + 40);
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 24))(v5, &v14, *(a1 + 56));
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50FD5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void ___ZN24MediaSessionStateMachine27handleMediaSessionActivatedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke_93(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = *(a1 + 48);
        v14 = *(a1 + 40);
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 24))(v5, &v14, *(a1 + 56));
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50FD7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void ___ZN24MediaSessionStateMachine27handleMediaSessionActivatedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke_97(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = *(a1 + 48);
        v14 = *(a1 + 40);
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 32))(v5, &v14, *(a1 + 56));
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50FD9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void ___ZN24MediaSessionStateMachine27handleMediaSessionActivatedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke_102(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = *(a1 + 48);
        v14 = *(a1 + 40);
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 32))(v5, &v14, *(a1 + 56));
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50FDB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void MediaSessionStateMachine::handleMediaSessionDeactivated(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.statemachine");
  v24[0] = 0;
  v27 = 0;
  v7 = ims::debug(v6, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "MediaSessionStateMachine::", 26);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMediaSessionDeactivated", 29);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [session=", 10);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923310](*(v7 + 8), *a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error=", 7);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " isTransactionPending=", 22);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923320](*(v7 + 8), *(a1 + 122));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " actionQueueSize=", 17);
  *(v7 + 17) = 0;
  v8 = (*(**(a1 + 136) + 216))(*(a1 + 136));
  MEMORY[0x1E6923370](*(v7 + 8), v8);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(block[0]);
  }

  if (a3 == 2)
  {
    goto LABEL_30;
  }

  if (*(a1 + 120) != 2)
  {
LABEL_28:
    if (a3)
    {
      v9 = (*(**(a1 + 136) + 208))(*(a1 + 136), 1);
      goto LABEL_31;
    }

LABEL_30:
    v9 = 1;
    goto LABEL_31;
  }

  v9 = 1;
  *(a1 + 120) = 1;
  if (a3 || *(a1 + 128) != 4)
  {
    if (*a2)
    {
      v10 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.statemachine");
      v20[0] = 0;
      v23 = 0;
      v11 = ims::debug(v10, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Session deactivated notification received for [sessionId=", 57);
      *(v11 + 17) = 0;
      v12 = (*(**a2 + 176))();
      MEMORY[0x1E69233B0](*(v11 + 8), v12);
      *(v11 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
      *(v11 + 17) = 0;
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(block[0]);
      }
    }

    v18 = 0;
    v19 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v18);
    v13 = a1 + *(*a1 - 24);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1174405120;
    v15[2] = ___ZN24MediaSessionStateMachine29handleMediaSessionDeactivatedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke;
    v15[3] = &__block_descriptor_tmp_110;
    v15[4] = a1;
    v15[5] = v18;
    v16 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = a3;
    v34 = 0;
    v35 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v34, (v13 + 8));
    v14 = *(v13 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    v29 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
    v30 = &unk_1F5EF4FF0;
    v32 = v34;
    v33 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v31 = v15;
    dispatch_async(v14, block);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    goto LABEL_28;
  }

LABEL_31:
  MediaSessionStateMachine::transactionComplete(a1, v9);
}

void sub_1E50FE080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 - 113) < 0)
  {
    operator delete(*(v39 - 136));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN24MediaSessionStateMachine29handleMediaSessionDeactivatedENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = *(a1 + 48);
        v14 = *(a1 + 40);
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 32))(v5, &v14, *(a1 + 56));
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50FE25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

void MediaSessionStateMachine::handleMediaSessionMediaError(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.statemachine");
  v31[0] = 0;
  v34 = 0;
  v7 = ims::debug(v6, v31);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "MediaSessionStateMachine::", 26);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMediaSessionMediaError", 28);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [session=", 10);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923310](*(v7 + 8), *a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error=", 7);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " isTransactionPending=", 22);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923320](*(v7 + 8), *(a1 + 122));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " actionQueueSize=", 17);
  *(v7 + 17) = 0;
  v8 = (*(**(a1 + 136) + 216))(*(a1 + 136));
  MEMORY[0x1E6923370](*(v7 + 8), v8);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v34 == 1 && v33 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(block[0]);
  }

  if (*a2)
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.statemachine");
    v27[0] = 0;
    v30 = 0;
    v10 = ims::debug(v9, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Clearing action queue [sessionId=", 33);
    *(v10 + 17) = 0;
    v11 = (*(**a2 + 176))();
    MEMORY[0x1E69233B0](*(v10 + 8), v11);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "]", 1);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      operator delete(v28);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(block[0]);
    }
  }

  if ((*(**(a1 + 136) + 208))(*(a1 + 136), 1) && *(a1 + 40) && *a2)
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.statemachine");
    v23[0] = 0;
    v26 = 0;
    v13 = ims::debug(v12, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Terminate action being cleared from queue, release assertion.", 61);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(block[0]);
    }

    v14 = *(a1 + 40);
    v15 = (*(**a2 + 176))();
    RTPManager::releaseTerminationAssertion(v14, v15);
  }

  *(a1 + 122) = 0;
  (*(**(a1 + 136) + 200))(*(a1 + 136));
  if (*(a1 + 40))
  {
    v21 = 0;
    v22 = 0;
    RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v21);
    v16 = a1 + *(*a1 - 24);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1174405120;
    v18[2] = ___ZN24MediaSessionStateMachine28handleMediaSessionMediaErrorENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke;
    v18[3] = &__block_descriptor_tmp_115_1;
    v18[4] = a1;
    v18[5] = v21;
    v19 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = a3;
    v41 = 0;
    v42 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v41, (v16 + 8));
    v17 = *(v16 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    v36 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
    v37 = &unk_1F5EF4FF0;
    v39 = v41;
    v40 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v38 = v18;
    dispatch_async(v17, block);
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }
}

void sub_1E50FE828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v48 - 113) < 0)
  {
    operator delete(*(v48 - 136));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN24MediaSessionStateMachine28handleMediaSessionMediaErrorENSt3__110shared_ptrI21MediaSessionInterfaceEE8RTPErrno_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = *(a1 + 48);
        v14 = *(a1 + 40);
        v15 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 40))(v5, &v14, *(a1 + 56));
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_15:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v7 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Delegate is gone [sessionId=", 28);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), v2[4]);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v4)
  {
    goto LABEL_15;
  }
}

void sub_1E50FEA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 40);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

uint64_t MediaSessionStateMachine::isAudioReady(MediaSessionStateMachine *this)
{
  v1 = *(this + 19);
  if (v1)
  {
    return (*(*v1 + 120))();
  }

  else
  {
    return 1;
  }
}

uint64_t non-virtual thunk toMediaSessionStateMachine::isAudioReady(MediaSessionStateMachine *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    return (*(*v1 + 120))();
  }

  else
  {
    return 1;
  }
}

uint64_t MediaSessionStateMachine::transactionPending(MediaSessionStateMachine *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v3 = ims::debug(v2, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "MediaSessionStateMachine::", 26);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "transactionPending", 18);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "  [sessionId=", 13);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 4));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (*(this + 285) == 1 && *(this + 286) == 1 && (*(*this + 144))(this) == 2 && (*(this + 292) & 1) == 0)
  {
    started = MediaSessionStateMachine::startConditionsMet(this);
  }

  else
  {
    v4 = *(this + 19);
    if (v4 && ((*(*v4 + 120))(v4) & 1) == 0 && (v5 = *(this + 17)) != 0 && (*(*v5 + 216))(v5))
    {
      started = 1;
    }

    else
    {
      started = *(this + 122);
    }
  }

  return started & 1;
}

void sub_1E50FECE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionStateMachine::active(MediaSessionStateMachine *this)
{
  started = MediaSessionStateMachine::startConditionsMet(this);
  std::string::basic_string[abi:ne200100]<0>(v12, "rtp.statemachine");
  v8[0] = 0;
  v11 = 0;
  v3 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "MediaSessionStateMachine::", 26);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "active", 6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v4 = (*(*this + 184))(this);
  MEMORY[0x1E69233B0](*(v3 + 8), v4);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " stateActive=", 13);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), *(this + 120) == 2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " _autoStarted=", 14);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), *(this + 292));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " autostartConditionsMet=", 24);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), started);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (*(this + 285) == 1 && *(this + 286) == 1 && (*(*this + 144))(this) == 2)
  {
    v5 = *(this + 292) | started;
  }

  else
  {
    v6 = *(this + 19);
    v5 = v6 && !(*(*v6 + 120))(v6) || *(this + 120) == 2;
  }

  return v5 & 1;
}

void sub_1E50FEFA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionStateMachine::paused(MediaSessionStateMachine *this)
{
  if (*(this + 285) == 1 && *(this + 286) == 1 && (*(*this + 144))(this) == 2 && (*(this + 292) & 1) == 0 && !MediaSessionStateMachine::startConditionsMet(this))
  {
    return 0;
  }

  v2 = *(this + 19);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 88);

  return v3();
}

uint64_t MediaSessionStateMachine::startSendingDTMF@<X0>(MediaSessionStateMachine *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v13, "rtp.statemachine");
  v9[0] = 0;
  v12 = 0;
  v6 = ims::debug(v13, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "MediaSessionStateMachine::", 26);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "startSendingDTMF", 16);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "  [sessionId=", 13);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(this + 4));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (*(this + 285) == 1 && *(this + 286) == 1 && (result = (*(*this + 144))(this), result == 2) && (*(this + 292) & 1) == 0)
  {
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    v8 = 0x40000000;
  }

  else
  {
    result = (*(**(this + 19) + 120))(*(this + 19));
    if (result)
    {
      return (*(**(this + 19) + 128))(*(this + 19), a2);
    }

    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    v8 = 1073741834;
  }

  *(a3 + 16) = v8;
  return result;
}

void sub_1E50FF31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionStateMachine::stopSendingDTMF@<X0>(MediaSessionStateMachine *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v11, "rtp.statemachine");
  v7[0] = 0;
  v10 = 0;
  v4 = ims::debug(v11, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "MediaSessionStateMachine::", 26);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "stopSendingDTMF", 15);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "  [sessionId=", 13);
  *(v4 + 17) = 0;
  MEMORY[0x1E69233B0](*(v4 + 8), *(this + 4));
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "]", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (*(this + 285) == 1 && *(this + 286) == 1 && (result = (*(*this + 144))(this), result == 2) && (*(this + 292) & 1) == 0)
  {
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    v6 = 0x40000000;
  }

  else
  {
    result = (*(**(this + 19) + 120))(*(this + 19));
    if (result)
    {
      return (*(**(this + 19) + 136))(*(this + 19));
    }

    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    v6 = 1073741834;
  }

  *(a2 + 16) = v6;
  return result;
}

void sub_1E50FF5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionStateMachine::sendDTMFDigits@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v13, "rtp.statemachine");
  v9[0] = 0;
  v12 = 0;
  v6 = ims::debug(v13, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "MediaSessionStateMachine::", 26);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "sendDTMFDigits", 14);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "  [sessionId=", 13);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(a1 + 32));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (*(a1 + 285) == 1 && *(a1 + 286) == 1 && (result = (*(*a1 + 144))(a1), result == 2) && (*(a1 + 292) & 1) == 0)
  {
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    v8 = 0x40000000;
  }

  else
  {
    result = (*(**(a1 + 152) + 120))(*(a1 + 152));
    if (result)
    {
      return (*(**(a1 + 152) + 144))(*(a1 + 152), a2);
    }

    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    v8 = 1073741834;
  }

  *(a3 + 16) = v8;
  return result;
}

void sub_1E50FF86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

std::string *MediaSessionStateMachine::reportHandover(MediaSessionStateMachine *this, const std::string *a2)
{
  std::string::operator=((this + 176), a2);
  result = std::string::operator=((this + 200), a2 + 1);
  v5 = a2[2].__r_.__value_.__s.__data_[16];
  *(this + 14) = *&a2[2].__r_.__value_.__l.__data_;
  *(this + 240) = v5;
  if (*(this + 168) == 1)
  {
    isWifi = ims::AccessNetwork::isWifi((this + 176));
    MediaSessionStateMachine::reportAPSession(this, !isWifi);
    result = *(this + 19);
    if (result)
    {
      v7 = *(result->__r_.__value_.__r.__words[0] + 192);

      return v7();
    }
  }

  return result;
}

uint64_t MediaSessionStateMachine::canChangeMediaStack(MediaSessionStateMachine *this)
{
  if (*(this + 168))
  {
    return 0;
  }

  v2 = *(this + 19);
  if (v2)
  {
    return (*(*v2 + 184))();
  }

  else
  {
    return 1;
  }
}

uint64_t non-virtual thunk toMediaSessionStateMachine::canChangeMediaStack(MediaSessionStateMachine *this)
{
  if (*(this + 160))
  {
    return 0;
  }

  v2 = *(this + 18);
  if (v2)
  {
    return (*(*v2 + 184))();
  }

  else
  {
    return 1;
  }
}

void MediaSessionStateMachine::processDataFromSocket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 285))
  {
    v12 = 0;
    v13 = 0;
    RTPSharedPointerBase::getShared<MediaSessionStateMachine>(&v12, a1);
    v5 = a1 + *(*a1 - 24);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1174405120;
    v10[2] = ___ZN24MediaSessionStateMachine21processDataFromSocketEPKhmRKNSt3__110shared_ptrI9IpAddressEE_block_invoke;
    v10[3] = &__block_descriptor_tmp_126;
    v10[4] = a1;
    v10[5] = a3;
    v6 = v13;
    v10[6] = v12;
    v11 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = 0;
    v25 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v24, (v5 + 8));
    v7 = *(v5 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    v19 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
    v20 = &unk_1F5EF4FF0;
    v22 = v24;
    v23 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = v10;
    dispatch_async(v7, block);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.statemachine");
    v14[0] = 0;
    v17 = 0;
    v9 = ims::debug(v8, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "processDataFromSocket", 21);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " received unexpected data with ", 31);
    *(v9 + 17) = 0;
    MEMORY[0x1E6923370](*(v9 + 8), a3);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " bytes", 6);
    *(v9 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(block[0]);
    }
  }
}

void sub_1E50FFC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a28 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 97) < 0)
  {
    operator delete(*(v28 - 120));
  }

  _Unwind_Resume(exception_object);
}

void RTPSharedPointerBase::getShared<MediaSessionStateMachine>(void **p_lpsrc, void *a2)
{
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&lpsrc, (a2 + *(*a2 - 24) + 8));
  if (lpsrc)
  {
    v3 = **lpsrc;
    if (v4)
    {
      v5 = v7;
      *p_lpsrc = v4;
      p_lpsrc[1] = v5;
      p_lpsrc = &lpsrc;
    }
  }

  *p_lpsrc = 0;
  p_lpsrc[1] = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void ___ZN24MediaSessionStateMachine21processDataFromSocketEPKhmRKNSt3__110shared_ptrI9IpAddressEE_block_invoke(void *a1)
{
  if (a1[5])
  {
    v2 = a1[4];
    if ((*(v2 + 294) & 1) == 0)
    {
      *(v2 + 294) = 1;
      v3 = *(v2 + 40);
      if (v3)
      {
        v7 = 0;
        v8 = 0;
        RTPManager::sdpSessionForSession(v3, *(v2 + 32), &v7);
        if (v7)
        {
          v4 = a1[6];
          v5 = v8;
          v6[0] = v7;
          v6[1] = v8;
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          MediaSessionStateMachine::autoStart(v4, v6, 0);
          if (v5)
          {
            std::__shared_weak_count::__release_weak(v5);
          }
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }
    }
  }
}

void sub_1E50FFDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_48c52_ZTSNSt3__110shared_ptrI24MediaSessionStateMachineEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c52_ZTSNSt3__110shared_ptrI24MediaSessionStateMachineEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void MediaSessionStateMachine::processDataFromNw(MediaSessionStateMachine *this, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.stateMachine");
  v19[0] = 0;
  v22 = 0;
  v5 = ims::debug(v4, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "processDataFromNw", 17);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "  [sessionId=", 13);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), *(this + 4));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " len=", 5);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923370](*(v5 + 8), a2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(block[0]);
  }

  if (*(this + 285))
  {
    v13 = 0;
    v14 = 0;
    RTPSharedPointerBase::getShared<MediaSessionStateMachine>(&v13, this);
    v6 = this + *(*this - 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1174405120;
    v11[2] = ___ZN24MediaSessionStateMachine17processDataFromNwEm_block_invoke;
    v11[3] = &__block_descriptor_tmp_132_0;
    v11[4] = this;
    v11[5] = a2;
    v7 = v14;
    v11[6] = v13;
    v12 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = 0;
    v30 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v29, v6 + 1);
    v8 = *(v6 + 3);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    v24 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_2;
    v25 = &unk_1F5EF4FF0;
    v27 = v29;
    v28 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = v11;
    dispatch_async(v8, block);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.statemachine");
    v15[0] = 0;
    v18 = 0;
    v10 = ims::debug(v9, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "processDataFromNw", 17);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " received unexpected data with ", 31);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923370](*(v10 + 8), a2);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " bytes", 6);
    *(v10 + 17) = 0;
    if (v18 == 1 && v17 < 0)
    {
      operator delete(v16);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(block[0]);
    }
  }
}

void sub_1E5100128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 - 97) < 0)
  {
    operator delete(*(v39 - 120));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN24MediaSessionStateMachine17processDataFromNwEm_block_invoke(void *a1)
{
  if (a1[5])
  {
    v2 = a1[4];
    if ((*(v2 + 294) & 1) == 0)
    {
      *(v2 + 294) = 1;
      v3 = *(v2 + 40);
      if (v3)
      {
        v17 = 0;
        v18 = 0;
        RTPManager::sdpSessionForSession(v3, *(v2 + 32), &v17);
        if (v17)
        {
          v4 = *(v17 + 1936);
          if (v4)
          {
            v5 = *(v17 + 1928);
            atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v6 = std::__shared_weak_count::lock(v4);
            std::__shared_weak_count::__release_weak(v4);
            if (v6)
            {
              if (v5)
              {
                *(v5 + 494) = 1;
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v6);
            }
          }

          std::string::basic_string[abi:ne200100]<0>(v15, "rtp.statemachine");
          v11[0] = 0;
          v14 = 0;
          v7 = ims::debug(v15, v11);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "processDataFromNw_block_invoke", 30);
          *(v7 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Autostart", 9);
          *(v7 + 17) = 0;
          (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v7 + 17) = 0;
          if (v14 == 1 && v13 < 0)
          {
            operator delete(__p);
          }

          if (v16 < 0)
          {
            operator delete(v15[0]);
          }

          v8 = a1[6];
          v9 = v18;
          v10[0] = v17;
          v10[1] = v18;
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          MediaSessionStateMachine::autoStart(v8, v10, 0);
          if (v9)
          {
            std::__shared_weak_count::__release_weak(v9);
          }
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }
    }
  }
}

void sub_1E5100330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  v29 = *(v27 - 40);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionStateMachine::setTrafficDetected(MediaSessionStateMachine *this, char a2)
{
  std::string::basic_string[abi:ne200100]<0>(v9, "rtp.statemachine");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(v9, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "setTrafficDetected", 18);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  *(this + 294) = a2;
}

void sub_1E5100480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionStateMachine::setPort(MediaSessionStateMachine *this, __int16 a2)
{
  std::string::basic_string[abi:ne200100]<0>(v9, "rtp.statemachine");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(v9, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "setPort", 7);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  *(this + 144) = a2;
}

void sub_1E5100598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionStateMachine::setNwPort(MediaSessionStateMachine *this, __int16 a2)
{
  std::string::basic_string[abi:ne200100]<0>(v9, "rtp.statemachine");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(v9, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "setNwPort", 9);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  *(this + 144) = a2;
}

void sub_1E51006B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MediaSessionStateMachine::direction(MediaSessionStateMachine *this)
{
  if (*(this + 285) == 1 && *(this + 286) == 1 && (*(*this + 144))(this) == 2 && (*(this + 292) & 1) == 0 && !MediaSessionStateMachine::startConditionsMet(this))
  {
    v2 = 296;
  }

  else
  {
    v2 = 128;
  }

  return *(this + v2);
}

uint64_t MediaSessionStateMachine::mediaType(MediaSessionStateMachine *this)
{
  v1 = *(this + 19);
  if (v1)
  {
    return (*(*v1 + 104))();
  }

  else
  {
    return 2;
  }
}

uint64_t non-virtual thunk toMediaSessionStateMachine::mediaType(MediaSessionStateMachine *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    return (*(*v1 + 104))();
  }

  else
  {
    return 2;
  }
}

uint64_t MediaSessionStateMachine::mediaSupportEnabled(uint64_t a1, int a2)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    return (*(*v2 + 112))();
  }

  else
  {
    return a2 == 2;
  }
}

uint64_t non-virtual thunk toMediaSessionStateMachine::mediaSupportEnabled(uint64_t a1, int a2)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    return (*(*v2 + 112))();
  }

  else
  {
    return a2 == 2;
  }
}

uint64_t *std::__tree<std::__value_type<RTPStackType,std::shared_ptr<RTPStackController>>,std::__map_value_compare<RTPStackType,std::__value_type<RTPStackType,std::shared_ptr<RTPStackController>>,std::less<RTPStackType>,true>,std::allocator<std::__value_type<RTPStackType,std::shared_ptr<RTPStackController>>>>::__emplace_unique_key_args<RTPStackType,std::piecewise_construct_t const&,std::tuple<RTPStackType const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__shared_ptr_emplace<MediaSessionStateMachine::create(std::shared_ptr<MediaSessionDriver>,ImsPrefs const&,BOOL)::StateMachineWrapper,std::allocator<MediaSessionStateMachine::create(std::shared_ptr<MediaSessionDriver>,ImsPrefs const&,BOOL)::StateMachineWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF4A90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

MediaSessionStateMachine *MediaSessionStateMachine::create(std::shared_ptr<MediaSessionDriver>,ImsPrefs const&,BOOL)::StateMachineWrapper::~StateMachineWrapper(MediaSessionStateMachine *a1)
{
  MediaSessionStateMachine::~MediaSessionStateMachine(a1, off_1F5EF4DD0);
  MEMORY[0x1E69225A0](v2 + 344);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(a1 + 39);
  return a1;
}

void MediaSessionStateMachine::create(std::shared_ptr<MediaSessionDriver>,ImsPrefs const&,BOOL)::StateMachineWrapper::~StateMachineWrapper(MediaSessionStateMachine *a1)
{
  MediaSessionStateMachine::~MediaSessionStateMachine(a1, off_1F5EF4DD0);
  MEMORY[0x1E69225A0](v2 + 344);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(a1 + 39);

  JUMPOUT(0x1E69235B0);
}

void *non-virtual thunk toMediaSessionStateMachine::create(std::shared_ptr<MediaSessionDriver>,ImsPrefs const&,BOOL)::StateMachineWrapper::~StateMachineWrapper(uint64_t a1)
{
  MediaSessionStateMachine::~MediaSessionStateMachine((a1 - 8), off_1F5EF4DD0);
  MEMORY[0x1E69225A0](a1 + 336);

  return ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 304));
}

{
  MediaSessionStateMachine::~MediaSessionStateMachine((a1 - 104), off_1F5EF4DD0);
  MEMORY[0x1E69225A0](a1 + 240);

  return ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 208));
}

{
  MediaSessionStateMachine::~MediaSessionStateMachine((a1 - 112), off_1F5EF4DD0);
  MEMORY[0x1E69225A0](a1 + 232);

  return ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 200));
}

void non-virtual thunk toMediaSessionStateMachine::create(std::shared_ptr<MediaSessionDriver>,ImsPrefs const&,BOOL)::StateMachineWrapper::~StateMachineWrapper(uint64_t a1)
{
  MediaSessionStateMachine::~MediaSessionStateMachine((a1 - 8), off_1F5EF4DD0);
  MEMORY[0x1E69225A0](a1 + 336);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 304));

  JUMPOUT(0x1E69235B0);
}

{
  MediaSessionStateMachine::~MediaSessionStateMachine((a1 - 104), off_1F5EF4DD0);
  MEMORY[0x1E69225A0](a1 + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 208));

  JUMPOUT(0x1E69235B0);
}

{
  MediaSessionStateMachine::~MediaSessionStateMachine((a1 - 112), off_1F5EF4DD0);
  MEMORY[0x1E69225A0](a1 + 232);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 200));

  JUMPOUT(0x1E69235B0);
}

void *virtual thunk toMediaSessionStateMachine::create(std::shared_ptr<MediaSessionDriver>,ImsPrefs const&,BOOL)::StateMachineWrapper::~StateMachineWrapper(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MediaSessionStateMachine::~MediaSessionStateMachine(v1, off_1F5EF4DD0);
  MEMORY[0x1E69225A0](v1 + 344);

  return ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v1 + 39);
}

void virtual thunk toMediaSessionStateMachine::create(std::shared_ptr<MediaSessionDriver>,ImsPrefs const&,BOOL)::StateMachineWrapper::~StateMachineWrapper(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MediaSessionStateMachine::~MediaSessionStateMachine(v1, off_1F5EF4DD0);
  MEMORY[0x1E69225A0](v1 + 344);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v1 + 39);

  JUMPOUT(0x1E69235B0);
}

char **std::dynamic_pointer_cast[abi:ne200100]<MediaSessionDelegate,RTPSharedPointerBase>@<X0>(char ***a1@<X0>, char ***a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v6 = v2[1];
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t RTCPSDesItem::RTCPSDesItem(uint64_t a1, int a2, std::string *__str)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a2;
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    LOBYTE(v4) = __str->__r_.__value_.__s.__data_[8];
  }

  *(a1 + 4) = v4;
  std::string::operator=((a1 + 8), __str);
  return a1;
}

void sub_1E5100E68(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<RTCPSDesItem>::push_back[abi:ne200100](uint64_t *a1, int *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<RTCPSDesItem>::__emplace_back_slow_path<RTCPSDesItem const&>(a1, a2);
  }

  else
  {
    std::vector<RTCPSDesItem>::__construct_one_at_end[abi:ne200100]<RTCPSDesItem const&>(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void RTCPSDesInfo::packetize(RTCPSDesInfo *this@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  LODWORD(__x[0]) = bswap32(*this);
  v4.__i_ = 0;
  std::vector<unsigned int>::insert(a2, v4, __x);
  v50 = 0;
  __dst = 0;
  v52 = 0;
  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v5 == v6)
  {
    v23 = 0;
    v24 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = (v5 + 8);
    v44 = *(this + 2);
    do
    {
      memset(__x, 0, sizeof(__x));
      v10 = v8 - 8;
      v9 = *(v8 - 2);
      BYTE4(__x[0]) = *(v8 - 4);
      LODWORD(__x[0]) = v9;
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__x[1], *v8, *(v8 + 1));
      }

      else
      {
        v11 = *v8;
        __x[3] = *(v8 + 2);
        *&__x[1] = v11;
      }

      __p = 0;
      v47 = 0;
      v48 = 0;
      v53 = __x[0];
      std::vector<unsigned char>::insert(&__p, 0, &v53);
      v12 = v47;
      if (v47 >= v48)
      {
        v45 = v7;
        v14 = v47 - __p + 1;
        if (v14 < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v15 = 2 * (v48 - __p);
        if (v15 <= v14)
        {
          v15 = v47 - __p + 1;
        }

        if (v48 - __p >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          operator new();
        }

        v17 = v47 - __p;
        if (v47 == __p)
        {
          if (v47 == __p)
          {
            operator new();
          }

          v17 = -(v14 >> 1);
        }

        v7 = v45;
        *v17 = BYTE4(__x[0]);
        memcpy((v17 + 1), v12, v47 - v12);
        v18 = (v17 + 1 + v47 - v12);
        v47 = v12;
        v19 = (v17 + __p - v12);
        memcpy(v19, __p, v12 - __p);
        v20 = __p;
        __p = v19;
        v47 = v18;
        v48 = 0;
        if (v20)
        {
          operator delete(v20);
          v13 = v47;
        }

        else
        {
          v13 = v18;
        }

        v6 = v44;
      }

      else
      {
        *v47 = BYTE4(__x[0]);
        v13 = v12 + 1;
        v47 = v13;
      }

      if (__x[3] >= 0)
      {
        v21 = &__x[1];
      }

      else
      {
        v21 = __x[1];
      }

      if (__x[3] >= 0)
      {
        v22 = HIBYTE(__x[3]);
      }

      else
      {
        v22 = __x[2];
      }

      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(&__p, v13, v21, &v21[v22], v22);
      if (v7)
      {
        operator delete(v7);
      }

      v7 = __p;
      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(&v50, __dst, __p, v47, v47 - __p);
      if (SHIBYTE(__x[3]) < 0)
      {
        operator delete(__x[1]);
      }

      v8 += 2;
    }

    while (v10 + 32 != v6);
    v24 = v50;
    v23 = __dst;
  }

  v25 = v23 - v24;
  v26 = v25 >> 2;
  if ((v25 & 3) != 0)
  {
    v27 = (v26 + 1);
  }

  else
  {
    v27 = v26;
  }

  if (v27)
  {
    end = a2->__end_;
    value = a2->__end_cap_.__value_;
    if (v27 <= value - end)
    {
      memmove(a2->__end_, v24, 4 * v27);
      a2->__end_ = &end[v27];
    }

    else
    {
      v30 = end - a2->__begin_;
      v31 = v27 + (v30 >> 2);
      if (v31 >> 62)
      {
        std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
      }

      v32 = value - a2->__begin_;
      if (v32 >> 1 > v31)
      {
        v31 = v32 >> 1;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v33 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(a2, v33);
      }

      v34 = 4 * (v30 >> 2);
      v35 = (v34 + 4 * v27);
      v36 = 4 * v27;
      v37 = v34;
      do
      {
        v38 = *v24++;
        *v37++ = v38;
        v36 -= 4;
      }

      while (v36);
      memcpy(v35, end, a2->__end_ - end);
      begin = a2->__begin_;
      v40 = &v35[(a2->__end_ - end)];
      a2->__end_ = end;
      v41 = end - begin;
      v42 = (v34 - (end - begin));
      memcpy(v42, begin, v41);
      v43 = a2->__begin_;
      a2->__begin_ = v42;
      a2->__end_ = v40;
      a2->__end_cap_.__value_ = 0;
      if (v43)
      {
        operator delete(v43);
      }
    }
  }

  if (v7)
  {
    operator delete(v7);
  }

  if (v50)
  {
    __dst = v50;
    operator delete(v50);
  }
}

void sub_1E51012A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25)
{
  if (v26)
  {
    operator delete(v26);
  }

  if (a24)
  {
    operator delete(a24);
  }

  v28 = *v25;
  if (*v25)
  {
    *(v25 + 8) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

ImsOutStream *RTCPSDesInfo::toStream(RTCPSDesInfo *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Sender SSRC: ", 14);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *this);
  *(a2 + 17) = 0;
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 != v5)
  {
    v6 = (v4 + 8);
    do
    {
      memset(v10, 0, 32);
      v7 = v6 - 8;
      BYTE4(v10[0]) = *(v6 - 4);
      LODWORD(v10[0]) = *(v6 - 2);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v10[1], *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        v10[3] = *(v6 + 2);
        *&v10[1] = v8;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Type: ", 7);
      *(a2 + 17) = 0;
      std::string::basic_string[abi:ne200100]<0>(__p, off_1E876CA50[SLODWORD(v10[0])]);
      (*(*a2 + 32))(a2, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Length: ", 9);
      *(a2 + 17) = 0;
      MEMORY[0x1E6923340](*(a2 + 1), BYTE4(v10[0]));
      *(a2 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Description: ", 14);
      *(a2 + 17) = 0;
      (*(*a2 + 32))(a2, &v10[1]);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (SHIBYTE(v10[3]) < 0)
      {
        operator delete(v10[1]);
      }

      v6 += 2;
    }

    while (v7 + 32 != v5);
  }

  return a2;
}

void sub_1E5101564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<RTCPSDesItem>::__construct_one_at_end[abi:ne200100]<RTCPSDesItem const&>(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *(v3 + 4) = *(a2 + 4);
  *v3 = v4;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v5 = *(a2 + 2);
    *(v3 + 24) = *(a2 + 3);
    *(v3 + 8) = v5;
  }

  *(a1 + 8) = v3 + 32;
}

uint64_t std::vector<RTCPSDesItem>::__emplace_back_slow_path<RTCPSDesItem const&>(uint64_t *a1, int *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v26 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RTCPSDesItem>>(a1, v7);
  }

  v8 = 32 * v2;
  v23 = 0;
  v24 = v8;
  v25 = (32 * v2);
  v9 = *a2;
  *(v8 + 4) = *(a2 + 4);
  *v8 = v9;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v8 + 8), *(a2 + 1), *(a2 + 2));
    v8 = v24;
    v11 = v25;
  }

  else
  {
    v10 = *(a2 + 2);
    *(32 * v2 + 0x18) = *(a2 + 3);
    *(32 * v2 + 8) = v10;
    v11 = 32 * v2;
  }

  *&v25 = v11 + 32;
  v13 = *a1;
  v12 = a1[1];
  v27[0] = a1;
  v27[1] = &v29;
  v27[2] = &v30;
  v28 = 0;
  v14 = v13 + v8 - v12;
  v29 = v14;
  v30 = v14;
  if (v13 == v12)
  {
    LOBYTE(v28) = 1;
  }

  else
  {
    v15 = v13 + v8 - v12;
    v16 = v13;
    do
    {
      v17 = *v16;
      *(v15 + 4) = *(v16 + 4);
      *v15 = v17;
      v18 = *(v16 + 2);
      *(v15 + 24) = *(v16 + 3);
      *(v15 + 8) = v18;
      *(v16 + 2) = 0;
      *(v16 + 3) = 0;
      *(v16 + 1) = 0;
      v16 += 8;
      v15 += 32;
    }

    while (v16 != v12);
    v30 = v15;
    LOBYTE(v28) = 1;
    do
    {
      if (*(v13 + 31) < 0)
      {
        operator delete(v13[1]);
      }

      v13 += 4;
    }

    while (v13 != v12);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RTCPSDesItem>,RTCPSDesItem*>>::~__exception_guard_exceptions[abi:ne200100](v27);
  v19 = *a1;
  *a1 = v14;
  v20 = a1[2];
  v22 = v25;
  *(a1 + 1) = v25;
  *&v25 = v19;
  *(&v25 + 1) = v20;
  v23 = v19;
  v24 = v19;
  std::__split_buffer<RTCPSDesItem>::~__split_buffer(&v23);
  return v22;
}

void sub_1E51017BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<RTCPSDesItem>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<RTCPSDesItem>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *SipBody::fillContentTypeHeader(SipBody *this, SipContentTypeHeader *a2)
{
  v3 = (*(*this + 40))(this);

  return std::string::operator=((a2 + 104), v3);
}

void SipBody::encodeToString()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E5101A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    if (a14)
    {
      (*(*a14 + 8))(a14);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL ims::IsimFiles::isValid(ims::IsimFiles *this)
{
  if ((*(this + 23) & 0x8000000000000000) != 0)
  {
    if (!*(this + 1))
    {
      return 0;
    }
  }

  else if (!*(this + 23))
  {
    return 0;
  }

  if (*(this + 3) != *(this + 4))
  {
    if ((*(this + 71) & 0x8000000000000000) != 0)
    {
      if (*(this + 7))
      {
        return *(this + 12) != *(this + 13);
      }
    }

    else if (*(this + 71))
    {
      return *(this + 12) != *(this + 13);
    }
  }

  return 0;
}

const void **ims::IsimFiles::Serialize@<X0>(ims::IsimFiles *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(this + 23) < 0)
  {
    if (!*(this + 1))
    {
      goto LABEL_7;
    }

    v33.__r_.__value_.__r.__words[0] = 0;
    v5 = *this;
  }

  else
  {
    if (!*(this + 23))
    {
      goto LABEL_7;
    }

    v33.__r_.__value_.__r.__words[0] = 0;
    v5 = this;
  }

  v33.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(v4, v5, 0x600u);
  CFDictionarySetValue(theDict, @"kRegKeyInfoTypePrivateID", v33.__r_.__value_.__l.__data_);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v33.__r_.__value_.__l.__data_);
LABEL_7:
  v6 = *(this + 3);
  v7 = *(this + 4);
  if (v6 != v7)
  {
    theArray = 0;
    Mutable = CFArrayCreateMutable(v4, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3), MEMORY[0x1E695E9C0]);
    theArray = Mutable;
    v9 = *(this + 3);
    v10 = *(this + 4);
    if (v9 != v10)
    {
      v11 = 0;
      do
      {
        memset(&v33, 0, sizeof(v33));
        if (*(v9 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v33, *v9, *(v9 + 1));
        }

        else
        {
          v12 = *v9;
          v33.__r_.__value_.__r.__words[2] = *(v9 + 2);
          *&v33.__r_.__value_.__l.__data_ = v12;
        }

        v32 = 0;
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v33;
        }

        else
        {
          v13 = v33.__r_.__value_.__r.__words[0];
        }

        v32 = CFStringCreateWithCString(v4, v13, 0x600u);
        CFArrayInsertValueAtIndex(theArray, v11, v32);
        ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v32);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        v9 = (v9 + 24);
        ++v11;
      }

      while (v9 != v10);
      Mutable = theArray;
    }

    CFDictionarySetValue(theDict, @"kRegKeyInfoTypePublicID", Mutable);
    ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(&theArray);
  }

  v14 = this + 48;
  if (*(this + 71) < 0)
  {
    if (!*(this + 7))
    {
      goto LABEL_27;
    }

    v33.__r_.__value_.__r.__words[0] = 0;
    v14 = *v14;
  }

  else
  {
    if (!*(this + 71))
    {
      goto LABEL_27;
    }

    v33.__r_.__value_.__r.__words[0] = 0;
  }

  v33.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(v4, v14, 0x600u);
  CFDictionarySetValue(theDict, @"kRegKeyInfoTypeDomain", v33.__r_.__value_.__l.__data_);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v33.__r_.__value_.__l.__data_);
LABEL_27:
  v15 = *(this + 9);
  v16 = *(this + 10);
  if (v15 != v16)
  {
    theArray = 0;
    v17 = CFArrayCreateMutable(v4, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3), MEMORY[0x1E695E9C0]);
    theArray = v17;
    v18 = *(this + 9);
    v19 = *(this + 10);
    if (v18 != v19)
    {
      v20 = 0;
      do
      {
        memset(&v33, 0, sizeof(v33));
        if (*(v18 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v33, *v18, *(v18 + 1));
        }

        else
        {
          v21 = *v18;
          v33.__r_.__value_.__r.__words[2] = *(v18 + 2);
          *&v33.__r_.__value_.__l.__data_ = v21;
        }

        v32 = 0;
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v33;
        }

        else
        {
          v22 = v33.__r_.__value_.__r.__words[0];
        }

        v32 = CFStringCreateWithCString(v4, v22, 0x600u);
        CFArrayInsertValueAtIndex(theArray, v20, v32);
        ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v32);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        v18 = (v18 + 24);
        ++v20;
      }

      while (v18 != v19);
      v17 = theArray;
    }

    CFDictionarySetValue(theDict, @"kRegKeyInfoTypeSim", v17);
    ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(&theArray);
  }

  v23 = *(this + 12);
  v24 = *(this + 13);
  if (v23 != v24)
  {
    v25 = CFArrayCreateMutable(v4, 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3), MEMORY[0x1E695E9C0]);
    theArray = v25;
    v26 = *(this + 12);
    v27 = *(this + 13);
    if (v26 != v27)
    {
      v28 = 0;
      do
      {
        memset(&v33, 0, sizeof(v33));
        if (*(v26 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v33, *v26, *(v26 + 1));
        }

        else
        {
          v29 = *v26;
          v33.__r_.__value_.__r.__words[2] = *(v26 + 2);
          *&v33.__r_.__value_.__l.__data_ = v29;
        }

        v32 = 0;
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v33;
        }

        else
        {
          v30 = v33.__r_.__value_.__r.__words[0];
        }

        v32 = CFStringCreateWithCString(v4, v30, 0x600u);
        CFArrayInsertValueAtIndex(theArray, v28, v32);
        ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v32);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        v26 = (v26 + 24);
        ++v28;
      }

      while (v26 != v27);
      v25 = theArray;
    }

    CFDictionarySetValue(theDict, @"kRegKeyInfoTypePco", v25);
    ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(&theArray);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &theDict);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&theDict);
}

void sub_1E5101F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, const void *a18, const void *a19)
{
  ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(&a18);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&a19);
  _Unwind_Resume(a1);
}

uint64_t ims::IsimFiles::Deserialize(uint64_t this, CFDictionaryRef theDict)
{
  v19 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    v3 = this;
    theArray = 0;
    value = 0;
    if (CFDictionaryGetValueIfPresent(theDict, @"kRegKeyInfoTypePrivateID", &value) && value)
    {
      memset(v16, 0, sizeof(v16));
      ctu::cf::assign();
      __p[0] = *&v16[8];
      v4 = *v16;
      *(__p + 7) = *&v16[15];
      v5 = v16[23];
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

      v6 = __p[0];
      *v3 = v4;
      *(v3 + 8) = v6;
      *(v3 + 15) = *(__p + 7);
      *(v3 + 23) = v5;
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"kRegKeyInfoTypePublicID", &theArray) && theArray && CFArrayGetCount(theArray) >= 1)
    {
      v7 = 0;
      do
      {
        value = CFArrayGetValueAtIndex(theArray, v7);
        if (value)
        {
          memset(v16, 0, sizeof(v16));
          ctu::cf::assign();
          *__p = *v16;
          v18 = *&v16[16];
          std::vector<std::string>::push_back[abi:ne200100](v3 + 24, __p);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(__p[0]);
          }
        }

        ++v7;
      }

      while (CFArrayGetCount(theArray) > v7);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"kRegKeyInfoTypeDomain", &value) && value)
    {
      memset(v16, 0, sizeof(v16));
      ctu::cf::assign();
      __p[0] = *&v16[8];
      v8 = *v16;
      *(__p + 7) = *&v16[15];
      v9 = v16[23];
      if (*(v3 + 71) < 0)
      {
        operator delete(*(v3 + 48));
      }

      v10 = __p[0];
      *(v3 + 48) = v8;
      *(v3 + 56) = v10;
      *(v3 + 63) = *(__p + 7);
      *(v3 + 71) = v9;
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"kRegKeyInfoTypeSim", &theArray) && theArray && CFArrayGetCount(theArray) >= 1)
    {
      v11 = 0;
      do
      {
        value = CFArrayGetValueAtIndex(theArray, v11);
        if (value)
        {
          memset(v16, 0, sizeof(v16));
          ctu::cf::assign();
          *__p = *v16;
          v18 = *&v16[16];
          std::vector<std::string>::push_back[abi:ne200100](v3 + 72, __p);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(__p[0]);
          }
        }

        ++v11;
      }

      while (CFArrayGetCount(theArray) > v11);
    }

    this = CFDictionaryGetValueIfPresent(theDict, @"kRegKeyInfoTypePco", &theArray);
    if (this)
    {
      this = theArray;
      if (theArray)
      {
        this = CFArrayGetCount(theArray);
        if (this >= 1)
        {
          for (i = 0; i < this; ++i)
          {
            value = CFArrayGetValueAtIndex(theArray, i);
            if (value)
            {
              memset(v16, 0, sizeof(v16));
              ctu::cf::assign();
              *__p = *v16;
              v18 = *&v16[16];
              std::vector<std::string>::push_back[abi:ne200100](v3 + 96, __p);
              if (SHIBYTE(v18) < 0)
              {
                operator delete(__p[0]);
              }
            }

            this = CFArrayGetCount(theArray);
          }
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1E5102324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *ims::aka::asString@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v2 = "XCAP";
  }

  else
  {
    v2 = "SIP";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  return std::string::basic_string[abi:ne200100]<0>(a2, off_1E876CAB8[a1]);
}

BOOL ims::aka::Request::isValid@<W0>(ims::aka::Request *this@<X0>, BOOL a2@<W8>)
{
  v2 = *(this + 1);
  if (v2 < 2)
  {
    goto LABEL_4;
  }

  if (v2 == 2)
  {
    if (*(this + 7) != *(this + 8) && *(this + 1) != *(this + 2) && *(this + 10) != *(this + 11))
    {
      v3 = 112;
      v4 = 104;
      return *(this + v4) != *(this + v3);
    }

    return 0;
  }

  if (v2 == 3)
  {
LABEL_4:
    if (*(this + 1) != *(this + 2))
    {
      v3 = 40;
      v4 = 32;
      return *(this + v4) != *(this + v3);
    }

    return 0;
  }

  return a2;
}

const void **ims::aka::Request::Serialize@<X0>(const UInt8 **this@<X0>, void *a2@<X8>)
{
  result = ims::aka::Request::isValid(this, a2);
  if ((result & 1) == 0)
  {
    *a2 = 0;
    return result;
  }

  v5 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = CFNumberCreate(v5, kCFNumberSInt8Type, this);
  CFDictionarySetValue(theDict, @"kRegKeyAuthRequestContext", v17);
  v16 = CFNumberCreate(v5, kCFNumberSInt8Type, this + 1);
  CFDictionarySetValue(theDict, @"kRegKeyAuthRequestMode", v16);
  v6 = *(this + 1);
  if (v6 < 2)
  {
    goto LABEL_5;
  }

  if (v6 == 2)
  {
    value = CFDataCreate(v5, this[7], this[8] - this[7]);
    CFDictionarySetValue(theDict, @"kIMSRegKeyAuthRequestNafId", value);
    v9 = CFDataCreate(v5, this[1], this[2] - this[1]);
    v10 = value;
    value = v9;
    v19 = v10;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v19);
    CFDictionarySetValue(theDict, @"kRegKeyAuthRequestRand", value);
    v11 = CFDataCreate(v5, this[10], this[11] - this[10]);
    v12 = value;
    value = v11;
    v19 = v12;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v19);
    CFDictionarySetValue(theDict, @"kIMSRegKeyAuthRequestGbaBTid", value);
    v13 = CFDataCreate(v5, this[13], this[14] - this[13]);
    v14 = value;
    value = v13;
    v19 = v14;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v19);
    CFDictionarySetValue(theDict, @"kIMSRegKeyAuthRequestGbaKeyLifetime", value);
    goto LABEL_8;
  }

  if (v6 == 3)
  {
LABEL_5:
    value = CFDataCreate(v5, this[1], this[2] - this[1]);
    CFDictionarySetValue(theDict, @"kRegKeyAuthRequestRand", value);
    v7 = CFDataCreate(v5, this[4], this[5] - this[4]);
    v8 = value;
    value = v7;
    v19 = v8;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v19);
    CFDictionarySetValue(theDict, @"kRegKeyAuthRequestToken", value);
LABEL_8:
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&value);
  }

  v19 = CFNumberCreate(v5, kCFNumberIntType, this + 16);
  CFDictionarySetValue(theDict, @"kRegKeyAuthTransactionId", v19);
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &theDict);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v19);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v16);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v17);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&theDict);
}

void sub_1E51026A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v7 = va_arg(va3, const void *);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(va);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(va1);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(va2);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va3);
  _Unwind_Resume(a1);
}

BOOL ims::aka::Request::Deserialize(ims::aka::Request *this, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return theDict != 0;
  }

  Value = CFDictionaryGetValue(theDict, @"kRegKeyAuthRequestContext");
  if (Value)
  {
    LOBYTE(v38) = 0;
    ctu::cf::assign(&v38, Value, v5);
    *this = v38;
  }

  v6 = CFDictionaryGetValue(theDict, @"kRegKeyAuthRequestMode");
  if (v6)
  {
    LOBYTE(v38) = 0;
    ctu::cf::assign(&v38, v6, v7);
    v8 = v38;
    *(this + 1) = v38;
  }

  else
  {
    v8 = *(this + 1);
  }

  if (v8 < 2)
  {
LABEL_10:
    if (CFDictionaryGetValue(theDict, @"kRegKeyAuthRequestRand"))
    {
      v38 = 0uLL;
      v39 = 0;
      ctu::cf::assign();
      v9 = v38;
      v10 = v39;
      v11 = *(this + 1);
      if (v11)
      {
        *(this + 2) = v11;
        v34 = v9;
        operator delete(v11);
        v9 = v34;
        *(this + 1) = 0;
        *(this + 2) = 0;
        *(this + 3) = 0;
      }

      *(this + 8) = v9;
      *(this + 3) = v10;
    }

    if (!CFDictionaryGetValue(theDict, @"kRegKeyAuthRequestToken"))
    {
      goto LABEL_35;
    }

    v38 = 0uLL;
    v39 = 0;
    ctu::cf::assign();
    v12 = *(&v38 + 1);
    v13 = v38;
    v14 = v39;
    v16 = (this + 32);
    v15 = *(this + 4);
    if (v15)
    {
      *(this + 5) = v15;
      operator delete(v15);
      *v16 = 0;
      *(this + 5) = 0;
      *(this + 6) = 0;
    }

    *v16 = v13;
    v17 = 48;
    v18 = 40;
    goto LABEL_34;
  }

  if (v8 != 2)
  {
    if (v8 != 3)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  if (CFDictionaryGetValue(theDict, @"kIMSRegKeyAuthRequestNafId"))
  {
    v38 = 0uLL;
    v39 = 0;
    ctu::cf::assign();
    v19 = v38;
    v20 = v39;
    v21 = *(this + 7);
    if (v21)
    {
      *(this + 8) = v21;
      v35 = v19;
      operator delete(v21);
      v19 = v35;
      *(this + 7) = 0;
      *(this + 8) = 0;
      *(this + 9) = 0;
    }

    *(this + 56) = v19;
    *(this + 9) = v20;
  }

  if (CFDictionaryGetValue(theDict, @"kRegKeyAuthRequestRand"))
  {
    v38 = 0uLL;
    v39 = 0;
    ctu::cf::assign();
    v22 = v38;
    v23 = v39;
    v24 = *(this + 1);
    if (v24)
    {
      *(this + 2) = v24;
      v36 = v22;
      operator delete(v24);
      v22 = v36;
      *(this + 1) = 0;
      *(this + 2) = 0;
      *(this + 3) = 0;
    }

    *(this + 8) = v22;
    *(this + 3) = v23;
  }

  if (CFDictionaryGetValue(theDict, @"kIMSRegKeyAuthRequestGbaBTid"))
  {
    v38 = 0uLL;
    v39 = 0;
    ctu::cf::assign();
    v25 = v38;
    v26 = v39;
    v27 = *(this + 10);
    if (v27)
    {
      *(this + 11) = v27;
      v37 = v25;
      operator delete(v27);
      v25 = v37;
      *(this + 10) = 0;
      *(this + 11) = 0;
      *(this + 12) = 0;
    }

    *(this + 5) = v25;
    *(this + 12) = v26;
  }

  if (!CFDictionaryGetValue(theDict, @"kIMSRegKeyAuthRequestGbaKeyLifetime"))
  {
    goto LABEL_35;
  }

  v38 = 0uLL;
  v39 = 0;
  ctu::cf::assign();
  v12 = *(&v38 + 1);
  v28 = v38;
  v14 = v39;
  v30 = (this + 104);
  v29 = *(this + 13);
  if (v29)
  {
    *(this + 14) = v29;
    operator delete(v29);
    *v30 = 0;
    *(this + 14) = 0;
    *(this + 15) = 0;
  }

  *v30 = v28;
  v17 = 120;
  v18 = 112;
LABEL_34:
  *(this + v18) = v12;
  *(this + v17) = v14;
LABEL_35:
  v31 = CFDictionaryGetValue(theDict, @"kRegKeyAuthTransactionId");
  if (v31)
  {
    LODWORD(v38) = 0;
    ctu::cf::assign(&v38, v31, v32);
    *(this + 32) = v38;
  }

  return theDict != 0;
}

void sub_1E5102A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    *v11 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ims::aka::AuthSuccess::isValid(void *a1, _BYTE *a2)
{
  v3 = *a2;
  if (v3 <= 1)
  {
    if (*a2)
    {
      if (v3 == 1)
      {
        v4 = 1;
        v5 = a1;
        return *v5 != a1[v4];
      }

      return v2;
    }

LABEL_8:
    if (*a1 == a1[1] || a1[3] == a1[4])
    {
      return 0;
    }

    v5 = a1 + 6;
    v4 = 7;
    return *v5 != a1[v4];
  }

  if (v3 == 3)
  {
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v5 = a1 + 9;
    v4 = 10;
    return *v5 != a1[v4];
  }

  return v2;
}

const void **ims::aka::AuthSuccess::Serialize@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  result = ims::aka::AuthSuccess::isValid(a1, a2);
  if ((result & 1) == 0)
  {
    *a3 = 0;
    return result;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v19 = 0;
  v20 = Mutable;
  v9 = *a2;
  if (v9 <= 1)
  {
    if (*a2)
    {
      if (v9 != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_9:
    v10 = CFDataCreate(v7, *(a1 + 24), *(a1 + 32) - *(a1 + 24));
    v11 = v19;
    v19 = v10;
    v21 = v11;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v21);
    CFDictionarySetValue(v20, @"kRegKeyAuthResultInteg", v19);
    v12 = CFDataCreate(v7, *(a1 + 48), *(a1 + 56) - *(a1 + 48));
    v13 = v19;
    v19 = v12;
    v21 = v13;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v21);
    CFDictionarySetValue(v20, @"kRegKeyAuthResultCipher", v19);
LABEL_10:
    v14 = CFDataCreate(v7, *a1, *(a1 + 8) - *a1);
    v15 = v19;
    v19 = v14;
    v21 = v15;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v21);
    v16 = @"kRegKeyAuthResultResp";
LABEL_12:
    CFDictionarySetValue(v20, v16, v19);
    goto LABEL_13;
  }

  if (v9 == 2)
  {
    v17 = CFDataCreate(v7, *(a1 + 72), *(a1 + 80) - *(a1 + 72));
    v18 = v19;
    v19 = v17;
    v21 = v18;
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v21);
    v16 = @"kIMSRegKeyAuthResultExtNaf";
    goto LABEL_12;
  }

  if (v9 == 3)
  {
    goto LABEL_9;
  }

LABEL_13:
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a3, &v20);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v19);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v20);
}

void sub_1E5102C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(va);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va1);
  _Unwind_Resume(a1);
}

BOOL ims::aka::AuthSuccess::Deserialize(uint64_t a1, _BYTE *a2, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return theDict != 0;
  }

  v5 = *a2;
  if (v5 <= 1)
  {
    if (*a2)
    {
      if (v5 != 1)
      {
        return theDict != 0;
      }

LABEL_16:
      if (CFDictionaryGetValue(theDict, @"kRegKeyAuthResultResp"))
      {
        ctu::cf::assign();
        v10 = *a1;
        if (*a1)
        {
          *(a1 + 8) = v10;
          operator delete(v10);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
        }

        *a1 = 0;
        v11 = 16;
        v12 = 8;
LABEL_24:
        *(a1 + v12) = 0;
        *(a1 + v11) = 0;
        return theDict != 0;
      }

      return theDict != 0;
    }

LABEL_8:
    if (CFDictionaryGetValue(theDict, @"kRegKeyAuthResultCipher"))
    {
      ctu::cf::assign();
      v6 = 0uLL;
      v7 = *(a1 + 48);
      if (v7)
      {
        *(a1 + 56) = v7;
        operator delete(v7);
        v6 = 0uLL;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
      }

      *(a1 + 48) = v6;
      *(a1 + 64) = 0;
    }

    if (CFDictionaryGetValue(theDict, @"kRegKeyAuthResultInteg"))
    {
      ctu::cf::assign();
      v8 = 0uLL;
      v9 = *(a1 + 24);
      if (v9)
      {
        *(a1 + 32) = v9;
        operator delete(v9);
        v8 = 0uLL;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
      }

      *(a1 + 24) = v8;
      *(a1 + 40) = 0;
    }

    goto LABEL_16;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      return theDict != 0;
    }

    goto LABEL_8;
  }

  if (CFDictionaryGetValue(theDict, @"kIMSRegKeyAuthResultExtNaf"))
  {
    ctu::cf::assign();
    v14 = (a1 + 72);
    v13 = *(a1 + 72);
    if (v13)
    {
      *(a1 + 80) = v13;
      operator delete(v13);
      *v14 = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
    }

    *v14 = 0;
    v11 = 88;
    v12 = 80;
    goto LABEL_24;
  }

  return theDict != 0;
}

void sub_1E5102EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    *v11 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **ims::aka::AuthSyncFailure::Serialize@<X0>(const void **this@<X0>, void *a2@<X8>)
{
  if (*this == this[1])
  {
    *a2 = 0;
  }

  else
  {
    v3 = this;
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5 = CFDataCreate(v4, *v3, *(v3 + 8) - *v3);
    CFDictionarySetValue(Mutable, @"kRegKeyAuthResultAuts", v5);
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &Mutable);
    ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v5);
    return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&Mutable);
  }

  return this;
}

void sub_1E5102FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va);
  _Unwind_Resume(a1);
}

BOOL ims::aka::AuthSyncFailure::Deserialize(ims::aka::AuthSyncFailure *this, CFDictionaryRef theDict)
{
  if (theDict && CFDictionaryGetValue(theDict, @"kRegKeyAuthResultAuts"))
  {
    ctu::cf::assign();
    v4 = 0uLL;
    v5 = *this;
    if (*this)
    {
      *(this + 1) = v5;
      operator delete(v5);
      v4 = 0uLL;
      *this = 0;
      *(this + 1) = 0;
      *(this + 2) = 0;
    }

    *this = v4;
    *(this + 2) = 0;
  }

  return theDict != 0;
}

void sub_1E5103064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ims::aka::Response::Serialize@<X0>(ims::aka::Response *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = CFNumberCreate(v4, kCFNumberSInt8Type, this + 8);
  CFDictionarySetValue(theDict, @"kRegKeyAuthRequestContext", v11);
  v10 = CFNumberCreate(v4, kCFNumberSInt8Type, this + 9);
  CFDictionarySetValue(theDict, @"kRegKeyAuthRequestMode", v10);
  v9 = CFNumberCreate(v4, kCFNumberIntType, this + 12);
  CFDictionarySetValue(theDict, @"kRegKeyAuthResult", v9);
  v8 = CFNumberCreate(v4, kCFNumberIntType, this + 140);
  CFDictionarySetValue(theDict, @"kRegKeyAuthTransactionId", v8);
  v5 = *(this + 3);
  if (v5 == 1)
  {
    value = 0;
    ims::aka::AuthSuccess::Serialize(this + 16, this + 9, &value);
    if (value)
    {
      CFDictionarySetValue(theDict, @"kRegKeyAuthResultSuccess", value);
    }

    goto LABEL_7;
  }

  if (v5 == 2)
  {
    value = 0;
    ims::aka::AuthSyncFailure::Serialize(this + 14, &value);
    if (value)
    {
      CFDictionarySetValue(theDict, @"kRegKeyAuthResultSFailure", value);
    }

LABEL_7:
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&value);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &theDict);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v8);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v9);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v10);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v11);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&theDict);
}

void sub_1E510322C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14)
{
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a9);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&a10);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&a11);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&a12);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&a13);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&a14);
  _Unwind_Resume(a1);
}

uint64_t ims::aka::Response::Deserialize(ims::aka::Response *this, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  *(this + 3) = 0;
  Value = CFDictionaryGetValue(theDict, @"kRegKeyAuthRequestContext");
  if (Value)
  {
    v14 = 0;
    ctu::cf::assign(&v14, Value, v5);
    *(this + 8) = v14;
  }

  v6 = CFDictionaryGetValue(theDict, @"kRegKeyAuthRequestMode");
  if (v6)
  {
    v15 = 0;
    ctu::cf::assign(&v15, v6, v7);
    *(this + 9) = v15;
  }

  result = CFDictionaryGetValue(theDict, @"kRegKeyAuthResult");
  if (result)
  {
    v17 = 0;
    ctu::cf::assign(&v17, result, v9);
    *(this + 3) = v17;
    result = CFDictionaryGetValue(theDict, @"kRegKeyAuthTransactionId");
    if (result)
    {
      v16 = 0;
      ctu::cf::assign(&v16, result, v10);
      *(this + 35) = v16;
      v11 = *(this + 3);
      if (v11 == 2)
      {
        v13 = CFDictionaryGetValue(theDict, @"kRegKeyAuthResultSFailure");
        return ims::aka::AuthSyncFailure::Deserialize((this + 112), v13);
      }

      else if (v11 == 1)
      {
        v12 = CFDictionaryGetValue(theDict, @"kRegKeyAuthResultSuccess");
        return ims::aka::AuthSuccess::Deserialize(this + 16, this + 9, v12);
      }

      else
      {
        CFDictionaryGetValue(theDict, @"kRegKeyAuthResultFailure");
        return 1;
      }
    }
  }

  return result;
}

const void **ims::AuthChallengeResponse::Serialize@<X0>(ims::AuthChallengeResponse *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = CFNumberCreate(v4, kCFNumberIntType, this);
  CFDictionarySetValue(theDict, @"kRegKeyAuthType", v8);
  if (*this == 1)
  {
    v5 = *(this + 1);
    if (v5)
    {
      value = 0;
      (*(*v5 + 16))(&value);
      if (value)
      {
        CFDictionarySetValue(theDict, @"kRegKeyAuthResult", value);
      }

      ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&value);
    }
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &theDict);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v8);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&theDict);
}

void sub_1E510350C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(va);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(va1);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va2);
  _Unwind_Resume(a1);
}

int *ims::AuthChallengeResponse::Deserialize(ims::AuthChallengeResponse *this, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  *this = 0;
  result = CFDictionaryGetValue(theDict, @"kRegKeyAuthType");
  if (result)
  {
    v6 = 0;
    ctu::cf::assign(&v6, result, v4);
    v5 = v6;
    *this = v6;
    if (v5 == 2)
    {
      operator new();
    }

    if (v5 == 1)
    {
      operator new();
    }

    return 0;
  }

  return result;
}

void ims::httpDigest::Response::~Response(ims::httpDigest::Response *this)
{
  *this = &unk_1F5EF5100;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_1F5EF5100;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::vector<RTCPSDesInfo>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<RTCPSDesInfo>::__emplace_back_slow_path<RTCPSDesInfo const&>(a1, a2);
  }

  else
  {
    std::vector<RTCPSDesInfo>::__construct_one_at_end[abi:ne200100]<RTCPSDesInfo const&>(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void RTCPSDesPacket::packetize(RTCPSDesPacket *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(this + 3);
  v5 = *(this + 4);
  if (v4 == v5)
  {
    v8.__i_ = 0;
    begin = 0;
    LODWORD(v9) = 0;
    v7 = *(this + 3);
  }

  else
  {
    begin = 0;
    do
    {
      *__x = 0;
      __x[0] = *v4;
      memset(v13, 0, sizeof(v13));
      std::vector<RTCPSDesItem>::__init_with_size[abi:ne200100]<RTCPSDesItem*,RTCPSDesItem*>(v13, *(v4 + 8), *(v4 + 16), (*(v4 + 16) - *(v4 + 8)) >> 5);
      RTCPSDesInfo::packetize(__x, &v11);
      if (begin)
      {
        operator delete(begin);
      }

      begin = v11.__begin_;
      std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(a2, *(a2 + 8), v11.__begin_, v11.__end_, v11.__end_ - v11.__begin_);
      v11.__begin_ = v13;
      std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](&v11);
      v4 += 32;
    }

    while (v4 != v5);
    v4 = *(this + 3);
    v7 = *(this + 4);
    v8.__i_ = *a2;
    v9 = (*(a2 + 8) - *a2) >> 2;
  }

  v10 = (v7 - v4) >> 5;
  *(this + 12) = 0;
  *(this + 13) = v10;
  *(this + 4) = 202;
  *(this + 10) = v9;
  __x[0] = bswap32(v9) & 0xFFFF0000 | 0xCA00 | v10 & 0x1F | 0x80;
  std::vector<unsigned int>::insert(a2, v8, __x);
  if (begin)
  {
    operator delete(begin);
  }
}

void sub_1E5103A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    operator delete(v11);
  }

  v13 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

ImsOutStream *RTCPSDesPacket::toStream(RTCPSDesPacket *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "RTCP SDes Packet - ", 19);
  *(a2 + 17) = 0;
  v4 = *(this + 3);
  for (i = *(this + 4); v4 != i; v4 += 32)
  {
    v7 = 0;
    LODWORD(v7) = *v4;
    memset(v8, 0, sizeof(v8));
    std::vector<RTCPSDesItem>::__init_with_size[abi:ne200100]<RTCPSDesItem*,RTCPSDesItem*>(v8, *(v4 + 8), *(v4 + 16), (*(v4 + 16) - *(v4 + 8)) >> 5);
    RTCPSDesInfo::toStream(&v7, a2);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    v9 = v8;
    std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  return a2;
}

void sub_1E5103BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void RTCPSDesPacket::~RTCPSDesPacket(RTCPSDesPacket *this)
{
  *this = &unk_1F5EF5148;
  v1 = (this + 24);
  std::vector<RTCPSDesInfo>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_1F5EF5148;
  v2 = (this + 24);
  std::vector<RTCPSDesInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x1E69235B0](this, 0x10A1C4017A5BAB5);
}

uint64_t std::vector<RTCPSDesInfo>::__construct_one_at_end[abi:ne200100]<RTCPSDesInfo const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  result = std::vector<RTCPSDesItem>::__init_with_size[abi:ne200100]<RTCPSDesItem*,RTCPSDesItem*>(v3 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 5);
  *(a1 + 8) = v3 + 32;
  return result;
}

uint64_t std::vector<RTCPSDesInfo>::__emplace_back_slow_path<RTCPSDesInfo const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RTCPSDesInfo>>(a1, v7);
  }

  v8 = 32 * v2;
  v18 = 0;
  v19 = v8;
  v20 = (32 * v2);
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  std::vector<RTCPSDesItem>::__init_with_size[abi:ne200100]<RTCPSDesItem*,RTCPSDesItem*>(32 * v2 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 5);
  *&v20 = v20 + 32;
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v22[1] = &v24;
  v22[2] = &v25;
  v23 = 0;
  v11 = v19 + v10 - v9;
  v24 = v11;
  v25 = v11;
  if (v10 == v9)
  {
    LOBYTE(v23) = 1;
  }

  else
  {
    v12 = v10;
    v13 = v19 + v10 - v9;
    do
    {
      *v13 = *v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = 0;
      *(v13 + 8) = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      v12 += 32;
      v13 += 32;
    }

    while (v12 != v9);
    v25 = v13;
    LOBYTE(v23) = 1;
    do
    {
      v26 = (v10 + 8);
      std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](&v26);
      v10 += 32;
    }

    while (v10 != v9);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<RTCPSDesInfo>,RTCPSDesInfo*>>::~__exception_guard_exceptions[abi:ne200100](v22);
  v14 = *a1;
  *a1 = v11;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<RTCPSDesInfo>::~__split_buffer(&v18);
  return v17;
}

void sub_1E5103E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<RTCPSDesInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<RTCPSDesInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v5 = (i - 24);
    std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t XcapServerInfo::XcapServerInfo(uint64_t a1, void *a2, XcapConfig *a3, uint64_t a4, __int128 *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5EF5190;
  *(a1 + 24) = a4;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a5, *(a5 + 1));
  }

  else
  {
    v8 = *a5;
    *(a1 + 48) = *(a5 + 2);
    *(a1 + 32) = v8;
  }

  v9 = a2[1];
  *(a1 + 56) = *a2;
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  XcapConfig::XcapConfig((a1 + 72), a3);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = a1 + 472;
  *(a1 + 536) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  return a1;
}

void sub_1E5103FC4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void XcapServerInfo::~XcapServerInfo(XcapServerInfo *this)
{
  *this = &unk_1F5EF5190;
  v2 = *(this + 66);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 67);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 65);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 464, *(this + 59));
  if (*(this + 463) < 0)
  {
    operator delete(*(this + 55));
  }

  XcapConfig::~XcapConfig(this + 9);
  v5 = *(this + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void XcapServerInfo::setup(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *a2;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v7 = *(a1 + 24);
  HttpClient::create();
}

void sub_1E51041D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XcapServerInfo::sendGetRequest(uint64_t a1, std::string *a2)
{
  std::string::operator=((a1 + 440), a2);
  *(a1 + 432) = 0;
  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  (*(*a1 + 144))(a1);
  *v11 = 0u;
  v12 = 0u;
  memset(v10, 0, sizeof(v10));
  v4 = *(a1 + 432);
  std::map<std::string,std::string,HttpMessage::ciLess,std::allocator<std::pair<std::string const,std::string>>>::map[abi:ne200100](v9, a1 + 464);
  __p = 0uLL;
  v8 = 0;
  HttpRequest::HttpRequest(v10, (a1 + 400), v4, a2, v9, &__p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v9, v9[1]);
  v5 = (*(**(a1 + 512) + 24))(*(a1 + 512), v10);
  *&v10[0] = &unk_1F5EC2FF0;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[1]);
  }

  HttpMessage::~HttpMessage(v10);
  return v5;
}

uint64_t XcapServerInfo::sendPutRequest(uint64_t a1, const std::string *a2, const std::string *a3)
{
  std::string::operator=((a1 + 440), a2);
  *(a1 + 432) = 1;
  std::string::operator=((a1 + 488), a3);
  (*(*a1 + 144))(a1);
  *__p = 0u;
  v10 = 0u;
  memset(v8, 0, sizeof(v8));
  LODWORD(a3) = *(a1 + 432);
  std::map<std::string,std::string,HttpMessage::ciLess,std::allocator<std::pair<std::string const,std::string>>>::map[abi:ne200100](v7, a1 + 464);
  HttpRequest::HttpRequest(v8, (a1 + 400), a3, (a1 + 440), v7, (a1 + 488));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v7, v7[1]);
  v5 = (*(**(a1 + 512) + 24))(*(a1 + 512), v8);
  *&v8[0] = &unk_1F5EC2FF0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  HttpMessage::~HttpMessage(v8);
  return v5;
}

void sub_1E51044C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HttpRequest::~HttpRequest(va);
  _Unwind_Resume(a1);
}

uint64_t XcapServerInfo::resendRequest(XcapServerInfo *this)
{
  v2 = *(this + 108);
  v3 = *(this + 64);
  if (v2 == 1)
  {
    std::map<std::string,std::string,HttpMessage::ciLess,std::allocator<std::pair<std::string const,std::string>>>::map[abi:ne200100](v11, this + 464);
    HttpRequest::HttpRequest(v12, this + 25, 1, (this + 440), v11, (this + 488));
    v4 = (*(*v3 + 24))(v3, v12);
    v12[0] = &unk_1F5EC2FF0;
    if (v14 < 0)
    {
      operator delete(__p);
    }

    HttpMessage::~HttpMessage(v12);
    v5 = v11[1];
    v6 = v11;
  }

  else
  {
    std::map<std::string,std::string,HttpMessage::ciLess,std::allocator<std::pair<std::string const,std::string>>>::map[abi:ne200100](v10, this + 464);
    v8 = 0uLL;
    v9 = 0;
    HttpRequest::HttpRequest(v12, this + 25, v2, (this + 440), v10, &v8);
    v4 = (*(*v3 + 24))(v3, v12);
    v12[0] = &unk_1F5EC2FF0;
    if (v14 < 0)
    {
      operator delete(__p);
    }

    HttpMessage::~HttpMessage(v12);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8);
    }

    v5 = v10[1];
    v6 = v10;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v6, v5);
  return v4;
}

void sub_1E5104684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22)
{
  HttpRequest::~HttpRequest(&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a16, a17);
  _Unwind_Resume(a1);
}

void XcapServerInfo::_saveCookie(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Cookie");
    v8 = __p;
    v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 464, __p);
    std::string::operator=((v5 + 56), a2);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1E5104778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XcapServerInfo::_constructHostSuffix(XcapServerInfo *this@<X0>, std::string *a2@<X8>)
{
  v3 = (this + 104);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = *(this + 127);
  if (v4 < 0)
  {
    v5 = *(this + 13);
    v4 = *(this + 14);
  }

  else
  {
    v5 = this + 104;
  }

  if (v4 >= 1)
  {
    v6 = &v5[v4];
    v7 = v5;
    do
    {
      v8 = memchr(v7, 64, v4);
      if (!v8)
      {
        break;
      }

      if (*v8 == 64)
      {
        if (v8 != v6 && v8 - v5 != -1)
        {
          memset(&__str, 0, sizeof(__str));
          std::string::basic_string(&__str, v3, v8 - v5 + 1, 0xFFFFFFFFFFFFFFFFLL, &v37);
          v9 = XcapServerInfo::k3gppDomain;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __str.__r_.__value_.__l.__size_;
          }

          v12 = strlen(XcapServerInfo::k3gppDomain);
          if (v12)
          {
            v13 = v12;
            if (size >= v12)
            {
              v14 = p_str + size;
              v15 = *XcapServerInfo::k3gppDomain;
              v16 = size;
              v17 = p_str;
              do
              {
                v18 = v16 - v13;
                if (v18 == -1)
                {
                  break;
                }

                v19 = memchr(v17, v15, v18 + 1);
                if (!v19)
                {
                  break;
                }

                v20 = v19;
                if (!memcmp(v19, v9, v13))
                {
                  if (v20 == v14 || v20 - p_str == -1)
                  {
                    break;
                  }

                  goto LABEL_29;
                }

                v17 = (v20 + 1);
                v16 = v14 - (v20 + 1);
              }

              while (v16 >= v13);
            }

            std::string::append(a2, p_str, size);
          }

          else
          {
LABEL_29:
            v21 = strlen(XcapServerInfo::kImsPrefix);
            if (!std::string::compare(&__str, 0, v21, XcapServerInfo::kImsPrefix))
            {
              v22 = strlen(XcapServerInfo::kImsPrefix);
              std::string::basic_string(&v37, &__str, v22, 0xFFFFFFFFFFFFFFFFLL, &v39);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              __str = v37;
            }

            v23 = XcapServerInfo::k3gppDomain;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v24 = &__str;
            }

            else
            {
              v24 = __str.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v25 = __str.__r_.__value_.__l.__size_;
            }

            v26 = strlen(XcapServerInfo::k3gppDomain);
            if (v26)
            {
              v27 = v26;
              v28 = v24 + v25;
              if (v25 >= v26)
              {
                v34 = *XcapServerInfo::k3gppDomain;
                v35 = v24;
                do
                {
                  if (v25 - v27 == -1)
                  {
                    break;
                  }

                  v36 = memchr(v35, v34, v25 - v27 + 1);
                  if (!v36)
                  {
                    break;
                  }

                  v29 = v36;
                  if (!memcmp(v36, v23, v27))
                  {
                    goto LABEL_42;
                  }

                  v35 = (v29 + 1);
                  v25 = v28 - (v29 + 1);
                }

                while (v25 >= v27);
              }

              v29 = v28;
LABEL_42:
              if (v29 == v28)
              {
                v30 = -1;
              }

              else
              {
                v30 = v29 - v24;
              }
            }

            else
            {
              v30 = 0;
            }

            std::string::basic_string(&v37, &__str, 0, v30, &v39);
            if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v37;
            }

            else
            {
              v31 = v37.__r_.__value_.__r.__words[0];
            }

            if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v32 = v37.__r_.__value_.__l.__size_;
            }

            std::string::append(a2, v31, v32);
            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v37.__r_.__value_.__l.__data_);
            }

            std::string::append(a2, "pub.", 4uLL);
            v33 = strlen(XcapServerInfo::k3gppDomain);
            std::string::append(a2, XcapServerInfo::k3gppDomain, v33);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        return;
      }

      v7 = v8 + 1;
      v4 = v6 - v7;
    }

    while (v6 - v7 >= 1);
  }
}

void sub_1E5104AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipAlertInfo::SipAlertInfo(uint64_t a1, const std::string *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_1F5EBEF50;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 48) = 0;
  *(a1 + 56) = 256;
  std::string::operator=(a1, a2);
  return a1;
}

void sub_1E5104B90(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v3, *(v1 + 40));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

std::string *SipAlertInfo::SipAlertInfo(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1[1].__r_.__value_.__r.__words[0] = &unk_1F5EBEF50;
  std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&a1[1].__r_.__value_.__l.__size_, *(a2 + 32), (a2 + 40));
  a1[2].__r_.__value_.__s.__data_[9] = 1;
  a1[2].__r_.__value_.__s.__data_[8] = *(a2 + 56);
  std::string::operator=(a1, a2);
  return a1;
}

void sub_1E5104C4C(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 + 32, *(v1 + 40));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void SipVectorHeader<SipAlertInfo *>::addItem(void *a1, void *a2)
{
  v5 = a1[9];
  v4 = a1[10];
  if (v5 >= v4)
  {
    v7 = a1[8];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<SipAlertInfo *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>((a1 + 8), v11);
    }

    v12 = (8 * v8);
    *v12 = *a2;
    v6 = 8 * v8 + 8;
    v13 = a1[8];
    v14 = a1[9] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[8];
    a1[8] = v15;
    a1[9] = v6;
    a1[10] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  a1[9] = v6;
}

void SipAlertInfoHeader::~SipAlertInfoHeader(SipAlertInfoHeader *this)
{
  SipPointerVectorHeader<SipAlertInfo>::~SipPointerVectorHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipVectorHeader<SipAlertInfo *>::encodeValue(void *a1, uint64_t a2)
{
  v4 = a1[8];
  if (a1[9] != v4)
  {
    v12 = v2;
    v13 = v3;
    v7 = 0;
    v8 = 0;
    do
    {
      if (v8)
      {
        v9 = *(a2 + 8);
        v11 = 44;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v11, 1);
        *(a2 + 17) = 0;
        v4 = a1[8];
      }

      (*(*a1 + 112))(a1, v4 + v7, a2);
      ++v8;
      v4 = a1[8];
      v7 += 8;
    }

    while (v8 < (a1[9] - v4) >> 3);
  }

  return 1;
}

BOOL SipVectorHeader<SipAlertInfo *>::setValueFromString(void *a1, uint64_t a2)
{
  v4 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  while (1)
  {
    v4 = (*(*a1 + 128))(a1, a2, v4, __p, 44);
    if (v4 == -1)
    {
      break;
    }

    v6 = 0;
    if (((*(*a1 + 120))(a1, __p, &v6) & 1) == 0)
    {
      break;
    }

    SipVectorHeader<SipAlertInfo *>::addItem(a1, &v6);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v4 == -1;
}

void sub_1E5105240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipPointerVectorHeader<SipAlertInfo>::mergeHeader(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (v3 && v3[9] != v3[8])
  {
    operator new();
  }

  return v3 != 0;
}

ImsOutStream *SipPointerVectorHeader<SipAlertInfo>::itemToStream(uint64_t a1, void *a2, ImsOutStream *a3)
{
  v4 = *a2;
  (*(*a3 + 32))(a3, *a2);

  return SipParameterMap::toStream((v4 + 24), a3, 0, 0, 0, 0);
}

BOOL SipVectorHeader<SipAlertInfo *>::mergeHeader(void *a1, char **lpsrc)
{
  v3 = **lpsrc;
  v5 = v4;
  if (v4)
  {
    v6 = v4[8];
    v7 = v4[9];
    while (v6 != v7)
    {
      SipVectorHeader<SipAlertInfo *>::addItem(a1, v6++);
    }
  }

  return v5 != 0;
}

void SipVectorHeader<SipAlertInfo *>::~SipVectorHeader(SipHeader *this)
{
  *this = &unk_1F5EF53C8;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SipHeader::~SipHeader(this);
}

void SipPointerVectorHeader<SipAlertInfo>::~SipPointerVectorHeader(SipHeader *this)
{
  *this = &unk_1F5EF5330;
  v4 = this + 64;
  v2 = *(this + 8);
  v3 = *(v4 + 1);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        *(v6 + 24) = &unk_1F5EBEF50;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v6 + 32, *(v6 + 40));
        if (*(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        MEMORY[0x1E69235B0](v6, 0x10B2C406DDFD988);
        v2 = *(this + 8);
        v3 = *(this + 9);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  *this = &unk_1F5EF53C8;
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SipHeader::~SipHeader(this);
}

void SipHop::SipHop(SipHop *this, const SipHop *a2)
{
  *this = &unk_1F5EBEF00;
  SipHost::SipHost(this + 8, a2 + 8);
  *(this + 8) = &unk_1F5EBEF50;
  std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(this + 9, *(a2 + 9), a2 + 10);
  *(this + 97) = 1;
  *(this + 96) = *(a2 + 96);
}

BOOL SipHop::supportsCompression(SipHop *this)
{
  v2 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 72, "comp");
  if ((this + 80) == v2)
  {
    v3 = &ims::kEmptyString;
  }

  else
  {
    v3 = (v2 + 56);
  }

  v4 = *(v3 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(v3 + 1);
  }

  if (v4 != 7)
  {
    return 0;
  }

  if (v5 < 0)
  {
    v3 = *v3;
  }

  v6 = *v3;
  v7 = *(v3 + 3);
  return v6 == 1667721587 && v7 == 1886220131;
}

void SipHop::setSupportsCompression(SipHop *this, int a2)
{
  if (a2)
  {
    v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 72, "comp");
    std::string::operator=((v3 + 56), "sigcomp");
  }

  else
  {
    v4 = this + 64;

    SipParameterMap::clearParameter(v4, "comp");
  }
}

void SipHop::setHostPort(SipHop *this, unsigned __int16 a2)
{
  v6 = 0;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  SipHost::SipHost(v4, this + 8);
  LOWORD(v5) = a2;
  if (*(&v5 + 1))
  {
    (*(**(&v5 + 1) + 64))(*(&v5 + 1), a2);
  }

  (*(*this + 32))(this, v4);
  SipHost::~SipHost(v4);
}

void asString(const SipHop *a1)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E5105B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipHop::logStr(SipHop *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E5105C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipRouteSet::SipRouteSet(SipRouteSet *this, const SipRouteSet *a2)
{
  *(this + 8) = 0u;
  *this = &unk_1F5EF5460;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v2 = *(a2 + 1);
  if (*(a2 + 2) != v2)
  {
    SipRouteSet::addHop(this, *v2, 0, 0, **(a2 + 4));
  }
}

void sub_1E5105D78(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

SipRouteSet *SipRouteSet::operator=(SipRouteSet *a1, const SipUri ***a2)
{
  SipRouteSet::clear(a1);
  v4 = a2[1];
  if (a2[2] != v4)
  {
    SipRouteSet::addHop(a1, *v4, 0, 0, *a2[4]);
  }

  return a1;
}

void *SipRouteSet::clear(void *this)
{
  v1 = this;
  v2 = this[1];
  if (this[2] != v2)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 8 * v3);
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      this = *(v1[4] + 8 * v3);
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      ++v3;
      v2 = v1[1];
    }

    while (v3 < (v1[2] - v2) >> 3);
  }

  v1[2] = v2;
  v1[5] = v1[4];
  return this;
}

void SipRouteSet::~SipRouteSet(SipRouteSet *this)
{
  *this = &unk_1F5EF5460;
  SipRouteSet::clear(this);
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  SipRouteSet::~SipRouteSet(this);

  JUMPOUT(0x1E69235B0);
}

char *std::vector<SipUri *>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<SipUri *>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1, v14);
    }

    v16 = (8 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == v4)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 >> 2;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1, v19);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v16 = *a3;
    memcpy(v16 + 1, v4, a1[1] - v4);
    v20 = *a1;
    v21 = v16 + a1[1] - v4 + 8;
    a1[1] = v4;
    v22 = v4 - v20;
    v23 = v16 - (v4 - v20);
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    a1[1] = v21;
    a1[2] = 0;
    if (v24)
    {
      operator delete(v24);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v17 = v9 <= a3 || v4 > a3;
    v18 = 8;
    if (v17)
    {
      v18 = 0;
    }

    *v4 = *&a3[v18];
  }

  return v4;
}

void sub_1E5106334(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<SipParameterMap *>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<SipUri *>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<SipUri *>::emplace_back<SipUri *>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1E51064E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SipUri *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<SipUri *>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1, v10);
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

SipRouteSet *SipRouteSet::addHops(SipRouteSet *this, const SipRouteSet *a2, char a3, BOOL a4, BOOL a5)
{
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  if (a3)
  {
    v7 = v6 - v5;
    if ((v7 >> 3) >= 1)
    {
      SipRouteSet::addHop(this, *(*(a2 + 1) + 8 * (((v7 >> 3) & 0x7FFFFFFF) - 1)), a4, a5, *(*(a2 + 4) + 8 * (((v7 >> 3) & 0x7FFFFFFF) - 1)));
    }
  }

  else if (v6 != v5)
  {
    SipRouteSet::addHop(this, *v5, a4, a5, **(a2 + 4));
  }

  return this;
}

void SipRouteSet::allHops(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    if (*(a1 + 16) != v3)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        std::vector<SipUri *>::push_back[abi:ne200100](a2, (v3 + v5));
        ++v6;
        v3 = *(a1 + 8);
        v5 += 8;
      }

      while (v6 < (*(a1 + 16) - v3) >> 3);
    }
  }
}

void SipRouteSet::allParams(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 40) != v3)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        std::vector<SipUri *>::push_back[abi:ne200100](a2, (v3 + v5));
        ++v6;
        v3 = *(a1 + 32);
        v5 += 8;
      }

      while (v6 < (*(a1 + 40) - v3) >> 3);
    }
  }
}

ImsOutStream *SipRouteSet::toStream(SipRouteSet *this, ImsOutStream *a2)
{
  v3 = *(this + 1);
  if (*(this + 2) != v3)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ", ", 2);
        *(a2 + 17) = 0;
        v3 = *(this + 1);
      }

      SipUri::toStream(*(v3 + 8 * v5), a2, 2 * (*(*(*(this + 4) + 8 * v5) + 24) == 0));
      v6 = *(*(this + 4) + 8 * v5);
      (*(*v6 + 16))(v6, a2);
      ++v5;
      v3 = *(this + 1);
    }

    while (v5 < (*(this + 2) - v3) >> 3);
  }

  return a2;
}

BOOL SipRouteSet::fromString(SipRouteSet *a1, std::string *a2)
{
  SipRouteSet::clear(a1);
  memset(&__str, 0, sizeof(__str));
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  SipUri::SipUri(v15);
  v14[1] = 0;
  v14[2] = 256;
  v13 = v14;
  v14[0] = 0;
  v12 = &unk_1F5EBEF50;
  v4 = ims::nextTokenQ(a2, 0, &__str, 0x2Cu);
  if (v4 != -1)
  {
    UriHeaderParameterMarker = SipUriHeader::findUriHeaderParameterMarker(&__str);
    if (UriHeaderParameterMarker == -1)
    {
      if (SipUri::fromString(v15, &__str))
      {
        __p.__r_.__value_.__r.__words[2] = 0;
        v10 = 0;
        __p.__r_.__value_.__r.__words[0] = &unk_1F5EBEF50;
        __p.__r_.__value_.__l.__size_ = &__p.__r_.__value_.__r.__words[2];
        v11 = 256;
        SipRouteSet::addHop(a1, v15, 0, 0, &__p);
      }
    }

    else
    {
      std::string::basic_string(&__p, &__str, 0, UriHeaderParameterMarker, v18);
      v6 = SipUri::fromString(v15, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v6)
      {
        std::string::basic_string(&__p, &__str, UriHeaderParameterMarker + 1, 0xFFFFFFFFFFFFFFFFLL, v18);
        v7 = SipParameterMap::fromString(&v12, &__p, 0, 0);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v7)
        {
          SipRouteSet::addHop(a1, v15, 0, 0, &v12);
        }
      }
    }
  }

  v12 = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v13, v14[0]);
  SipUri::~SipUri(v15);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v4 == -1;
}

void sub_1E5106AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v20 + 8, a11);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v19 + 8, a16);
  SipUri::~SipUri(&a19);
  if (*(v21 - 97) < 0)
  {
    operator delete(*(v21 - 120));
  }

  _Unwind_Resume(a1);
}

uint64_t SipRouteSet::containsUri(SipRouteSet *this, const SipUri *a2)
{
  v2 = *(this + 1);
  if (*(this + 2) == v2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    result = SipUri::equals(*(v2 + 8 * v5), a2, 1);
    if (result)
    {
      break;
    }

    ++v5;
    v2 = *(this + 1);
  }

  while (v5 < (*(this + 2) - v2) >> 3);
  return result;
}

void SipRouteSet::logStr(SipRouteSet *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E5106C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsInternetDateTime::toString@<X0>(ImsInternetDateTime *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 18);
  v5 = *(this + 2);
  v38 = 0;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  *__p = 0u;
  v35 = 0u;
  v32 = 0u;
  *__src = 0u;
  v30 = 0u;
  v31 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  v6 = (&v30 + *(v30 - 24));
  if (v6[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v6);
    v7 = std::locale::use_facet(&v39, MEMORY[0x1E69E5318]);
    (v7->__vftable[2].~facet_0)(v7, 32);
    std::locale::~locale(&v39);
  }

  v6[1].__fmtflags_ = 48;
  v8 = MEMORY[0x1E6923340](&v30, (*(this + 9) + 1900));
  LOBYTE(v39.__locale_) = 45;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v39, 1);
  *(v9 + *(*v9 - 24) + 24) = 2;
  v10 = *(this + 8);
  v11 = MEMORY[0x1E6923340]();
  LOBYTE(v39.__locale_) = 45;
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v39, 1);
  *(v12 + *(*v12 - 24) + 24) = 2;
  v13 = *(this + 7);
  MEMORY[0x1E6923340]();
  LOBYTE(v39.__locale_) = 84;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, &v39, 1);
  *(&v31 + *(v30 - 24) + 8) = 2;
  v14 = MEMORY[0x1E6923340](&v30, *(this + 6));
  LOBYTE(v39.__locale_) = 58;
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v39, 1);
  *(v15 + *(*v15 - 24) + 24) = 2;
  v16 = *(this + 5);
  v17 = MEMORY[0x1E6923340]();
  LOBYTE(v39.__locale_) = 58;
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v39, 1);
  *(v18 + *(*v18 - 24) + 24) = 2;
  v19 = *(this + 4);
  MEMORY[0x1E6923340]();
  if ((v5 + 999) >= 0x7CF)
  {
    LOBYTE(v39.__locale_) = 46;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, &v39, 1);
    v20 = v5 / 1000;
    v21 = 100;
    do
    {
      MEMORY[0x1E69233B0](&v30, v20 / v21);
      if (v21 < 0xA)
      {
        break;
      }

      v20 %= v21;
      v21 /= 0xAu;
    }

    while (v20);
  }

  if (v4)
  {
    if (v4 >= 0)
    {
      v22 = 43;
    }

    else
    {
      v22 = 45;
    }

    LOBYTE(v39.__locale_) = v22;
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, &v39, 1);
    *(v23 + *(*v23 - 24) + 24) = 2;
    v24 = MEMORY[0x1E6923350]();
    LOBYTE(v39.__locale_) = 58;
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, &v39, 1);
    *(v25 + *(*v25 - 24) + 24) = 2;
    MEMORY[0x1E6923350]();
  }

  else
  {
    LOBYTE(v39.__locale_) = 90;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, &v39, 1);
  }

  if ((BYTE8(v36) & 0x10) != 0)
  {
    v27 = v36;
    if (v36 < __src[1])
    {
      *&v36 = __src[1];
      v27 = __src[1];
    }

    v28 = __src[0];
  }

  else
  {
    if ((BYTE8(v36) & 8) == 0)
    {
      v26 = 0;
      a2[23] = 0;
      goto LABEL_26;
    }

    v28 = *(&v31 + 1);
    v27 = *(&v32 + 1);
  }

  v26 = v27 - v28;
  if ((v27 - v28) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v26 >= 0x17)
  {
    operator new();
  }

  a2[23] = v26;
  if (v26)
  {
    memmove(a2, v28, v26);
  }

LABEL_26:
  a2[v26] = 0;
  *&v30 = *MEMORY[0x1E69E54E8];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v30 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v30 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v31);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v37);
}

void sub_1E5107204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a23);
  _Unwind_Resume(a1);
}

void ImsInternetDateTime::fromString(std::string *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = std::string::find(this, 84, 0);
  if (v6 == -1)
  {
    v6 = std::string::find(this, 116, 0);
    if (v6 == -1)
    {
      goto LABEL_6;
    }
  }

  v7 = v6;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (v6 == size - 1)
  {
LABEL_6:
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v68.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v68.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v68.__r_.__value_.__r.__words[2]) = 1073741835;
    v9 = ImsResult::operator<<<char [19]>(&v68, "DateTime missing T");
    ImsResult::ImsResult(a3, v9);
    ImsResult::~ImsResult(&v68);
    return;
  }

  memset(&v67, 0, sizeof(v67));
  std::string::basic_string(&v67, this, 0, v6, &v68);
  memset(&__str, 0, sizeof(__str));
  std::string::basic_string(&__str, this, v7 + 1, 0xFFFFFFFFFFFFFFFFLL, &v68);
  v63 = 0;
  v64 = 0;
  v65 = 0;
  ims::tokenize(&v67, &v63, 0x2Du);
  v10 = v63;
  if ((v64 - v63) != 72)
  {
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v68.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v68.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v68.__r_.__value_.__r.__words[2]) = 1073741835;
    v22 = ImsResult::operator<<<char [28]>(&v68, "not enough tokens in date: ");
    v23 = ImsResult::operator<<<std::string>(v22, &v67);
    ImsResult::ImsResult(a3, v23);
LABEL_47:
    ImsResult::~ImsResult(&v68);
    goto LABEL_48;
  }

  if (*(v63 + 23) < 0)
  {
    v10 = *v63;
  }

  *(a2 + 36) = strtoul(v10, 0, 10) - 1900;
  v11 = (v63 + 24);
  if (*(v63 + 47) < 0)
  {
    v11 = *v11;
  }

  *(a2 + 32) = strtoul(v11, 0, 10) - 1;
  v12 = (v63 + 48);
  if (*(v63 + 71) < 0)
  {
    v12 = *v12;
  }

  *(a2 + 28) = strtoul(v12, 0, 10);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = __str.__r_.__value_.__l.__size_;
  }

  if (!v13)
  {
    goto LABEL_46;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v15 = memchr(p_str, 90, v13);
  if (v15 && (v16 = v15 - p_str, v15 - p_str != -1) || (v17 = memchr(p_str, 122, v13)) != 0 && (v16 = v17 - p_str, v17 - p_str != -1))
  {
    std::string::basic_string(&v68, &__str, 0, v16, &v62);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v18 = 0;
    __str = v68;
    goto LABEL_28;
  }

  if (((v28 = memchr(p_str, 43, v13)) == 0 || (v29 = v28 - p_str, v28 - p_str == -1)) && ((v30 = memchr(p_str, 45, v13)) == 0 || (v29 = v30 - p_str, v30 - p_str == -1)) || v29 == v13 - 1)
  {
LABEL_46:
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v68.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v68.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v68.__r_.__value_.__r.__words[2]) = 1073741835;
    v31 = ImsResult::operator<<<char [25]>(&v68, "missing time zone sign: ");
    v32 = ImsResult::operator<<<std::string>(v31, &__str);
    ImsResult::ImsResult(a3, v32);
    goto LABEL_47;
  }

  v40 = p_str->__r_.__value_.__s.__data_[v29];
  memset(&v62, 0, sizeof(v62));
  std::string::basic_string(&v62, &__str, v29 + 1, 0xFFFFFFFFFFFFFFFFLL, &v61);
  v41 = v63;
  v42 = v64;
  while (v42 != v41)
  {
    v43 = *(v42 - 1);
    v42 -= 3;
    if (v43 < 0)
    {
      operator delete(*v42);
    }
  }

  v64 = v41;
  ims::tokenize(&v62, &v63, 0x3Au);
  v44 = v63;
  v45 = v64 - v63;
  if ((v64 - v63) == 48)
  {
    if (*(v63 + 23) < 0)
    {
      v44 = *v63;
    }

    v46 = strtol(v44, 0, 10);
    v47 = (v63 + 24);
    if (*(v63 + 47) < 0)
    {
      v47 = *v47;
    }

    v48 = strtol(v47, 0, 10);
    std::string::basic_string(&v68, &__str, 0, v29, &v61);
    if (v40 == 43)
    {
      v18 = 60 * (v48 + 60 * v46);
    }

    else
    {
      v18 = -60 * (v48 + 60 * v46);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v68;
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v68.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v68.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v68.__r_.__value_.__r.__words[2]) = 1073741835;
    v55 = ImsResult::operator<<<char [26]>(&v68, "invalid time zone offset ");
    v56 = ImsResult::operator<<<std::string>(v55, &v62);
    v57 = ImsResult::operator<<<char [3]>(v56, " (");
    v61 = 0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 3);
    v58 = ImsResult::operator<<<unsigned long>(v57, &v61);
    v59 = ImsResult::operator<<<char [8]>(v58, " parts)");
    ImsResult::ImsResult(a3, v59);
    ImsResult::~ImsResult(&v68);
    v18 = 0;
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v45 != 48)
  {
    goto LABEL_48;
  }

LABEL_28:
  v19 = v63;
  v20 = v64;
  while (v20 != v19)
  {
    v21 = *(v20 - 1);
    v20 -= 3;
    if (v21 < 0)
    {
      operator delete(*v20);
    }
  }

  v64 = v19;
  ims::tokenize(&__str, &v63, 0x3Au);
  v24 = v63;
  if ((v64 - v63) != 72)
  {
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v68.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v68.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v68.__r_.__value_.__r.__words[2]) = 1073741835;
    v26 = ImsResult::operator<<<char [28]>(&v68, "not enough tokens in time: ");
    v27 = ImsResult::operator<<<std::string>(v26, &__str);
    ImsResult::ImsResult(a3, v27);
    goto LABEL_47;
  }

  if (*(v63 + 23) < 0)
  {
    v24 = *v63;
  }

  *(a2 + 24) = strtoul(v24, 0, 10);
  v25 = (v63 + 24);
  if (*(v63 + 47) < 0)
  {
    v25 = *v25;
  }

  *(a2 + 20) = strtoul(v25, 0, 10);
  memset(&v68, 0, sizeof(v68));
  if (*(v63 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, *(v63 + 48), *(v63 + 56));
  }

  else
  {
    v68 = *(v63 + 48);
  }

  v33 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  v34 = v68.__r_.__value_.__r.__words[0];
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = v68.__r_.__value_.__l.__size_;
  }

  if (!v35)
  {
    v38 = 0;
    goto LABEL_103;
  }

  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &v68;
  }

  else
  {
    v36 = v68.__r_.__value_.__r.__words[0];
  }

  v37 = memchr(v36, 46, v35);
  v38 = 0;
  if (!v37)
  {
    goto LABEL_103;
  }

  v39 = v37 - v36;
  if (v39 == -1)
  {
    goto LABEL_103;
  }

  if (v39 == v35 - 1)
  {
    v38 = 0;
    goto LABEL_100;
  }

  memset(&v62, 0, sizeof(v62));
  std::string::basic_string(&v62, &v68, v39 + 1, 0xFFFFFFFFFFFFFFFFLL, &v61);
  v49 = 0;
  v50 = 0;
  v51 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v62;
  }

  else
  {
    v51 = v62.__r_.__value_.__l.__size_;
    v52 = v62.__r_.__value_.__r.__words[0];
  }

  while (1)
  {
    if (v49 >= v51)
    {
      v54 = 0;
      goto LABEL_89;
    }

    v53 = v52->__r_.__value_.__s.__data_[v49];
    if (v53 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v53 + 60) & 0x400) == 0)
    {
      break;
    }

    v54 = v53 - 48;
LABEL_89:
    v50 = v54 + 10 * v50;
    if (++v49 == 3)
    {
      goto LABEL_97;
    }
  }

  v50 = 0;
LABEL_97:
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v38 = 1000 * v50;
LABEL_100:
  std::string::basic_string(&v62, &v68, 0, v39, &v61);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v68 = v62;
  v33 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
  v34 = v62.__r_.__value_.__r.__words[0];
LABEL_103:
  if (v33 >= 0)
  {
    v60 = &v68;
  }

  else
  {
    v60 = v34;
  }

  *(a2 + 16) = strtoul(v60, 0, 10);
  *(a2 + 72) = v18;
  *a2 = timegm((a2 + 16));
  *(a2 + 8) = v38;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

LABEL_48:
  v68.__r_.__value_.__r.__words[0] = &v63;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v68);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }
}

void sub_1E5107B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  a32 = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a32);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t bambi::XmlTreeItem::XmlTreeItem(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = &unk_1F5EF5490;
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v6;
  }

  if (a3)
  {
    std::vector<bambi::XmlTreeNs>::push_back[abi:ne200100](v5, a3);
  }

  return a1;
}

void sub_1E5107C78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<bambi::XmlTreeNs>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<bambi::XmlTreeNs>::__emplace_back_slow_path<bambi::XmlTreeNs const&>(a1, a2);
  }

  else
  {
    std::vector<bambi::XmlTreeNs>::__construct_one_at_end[abi:ne200100]<bambi::XmlTreeNs const&>(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

void bambi::XmlTreeItem::~XmlTreeItem(void **this)
{
  *this = &unk_1F5EF5490;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this + 1;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void bambi::XmlTreeItem::makeNode(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1E5107E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

double bambi::XmlTreeItem::encode@<D0>(bambi::XmlTreeItem *this@<X0>, int a2@<W1>, int a3@<W2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  *__xmlIndentTreeOutput() = a3;
  v7 = xmlNewDoc("1.0");
  (*(*this + 16))(&v27, this);
  xmlDocSetRootElement(v7, *v27.__r_.__value_.__l.__data_);
  if (v27.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27.__r_.__value_.__l.__size_);
  }

  mem = 0;
  size = 0;
  xmlDocDumpFormatMemory(v7, &mem, &size, 1);
  if (mem && size)
  {
    std::string::__assign_external(a4, mem, size);
  }

  xmlFreeDoc(v7);
  free(mem);
  if (a2)
  {
    v9 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
    v10 = v9 >= 0 ? a4 : a4->__r_.__value_.__r.__words[0];
    v11 = v9 >= 0 ? SHIBYTE(a4->__r_.__value_.__r.__words[2]) : a4->__r_.__value_.__l.__size_;
    if (v11 >= 13)
    {
      v12 = v10 + v11;
      v13 = v11;
      v14 = v10;
      do
      {
        v15 = memchr(v14, 60, v13 - 12);
        if (!v15)
        {
          break;
        }

        if (*v15 == 0x6576206C6D783F3CLL && *(v15 + 5) == 0x6E6F697372657620)
        {
          if (v15 != v12 && v15 - v10 != -1)
          {
            v17 = v10;
            do
            {
              if (v11 == 1)
              {
                break;
              }

              v18 = memchr(v17, 63, v11 - 1);
              if (!v18)
              {
                break;
              }

              if (*v18 == 15935)
              {
                goto LABEL_30;
              }

              v17 = (v18 + 1);
              v11 = v12 - v17;
            }

            while (v12 - v17 > 1);
            v18 = v12;
LABEL_30:
            if (v18 == v12)
            {
              v19 = -1;
            }

            else
            {
              v19 = v18 - v10;
            }

            std::string::basic_string(&v27, a4, v19, 0xFFFFFFFFFFFFFFFFLL, &v30);
            if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(a4->__r_.__value_.__l.__data_);
            }

            *a4 = v27;
            v20 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
            if (v20 >= 0)
            {
              v21 = a4;
            }

            else
            {
              v21 = a4->__r_.__value_.__r.__words[0];
            }

            if (v20 >= 0)
            {
              v22 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
            }

            else
            {
              v22 = a4->__r_.__value_.__l.__size_;
            }

            v23 = v21 + v22;
            if (v22 >= 1)
            {
              v24 = v21;
              do
              {
                v25 = memchr(v24, 60, v22);
                if (!v25)
                {
                  break;
                }

                if (*v25 == 60)
                {
                  goto LABEL_47;
                }

                v24 = (v25 + 1);
                v22 = v23 - v24;
              }

              while (v23 - v24 > 0);
            }

            v25 = v23;
LABEL_47:
            if (v25 == v23)
            {
              v26 = -1;
            }

            else
            {
              v26 = v25 - v21;
            }

            std::string::basic_string(&v27, a4, v26, 0xFFFFFFFFFFFFFFFFLL, &v30);
            if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(a4->__r_.__value_.__l.__data_);
            }

            result = *&v27.__r_.__value_.__l.__data_;
            *a4 = v27;
          }

          return result;
        }

        v14 = (v15 + 1);
        v13 = v12 - v14;
      }

      while (v12 - v14 >= 13);
    }
  }

  return result;
}

void sub_1E5108104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

void bambi::XmlTreeItem::setName(uint64_t a1, xmlNode ***a2, uint64_t a3)
{
  v3 = **a2;
  if (*(a3 + 23) >= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = *a3;
  }

  xmlNodeSetName(v3, v4);
}

void bambi::setNsForNode(uint64_t a1, uint64_t a2, xmlNodePtr node)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    p_next = 0;
    do
    {
      if (*(v5 + 47) < 0)
      {
        if (*(v5 + 32))
        {
          v8 = *(v5 + 24);
        }

        else
        {
          v8 = 0;
        }
      }

      else if (*(v5 + 47))
      {
        v8 = (v5 + 24);
      }

      else
      {
        v8 = 0;
      }

      if (*(v5 + 23) < 0)
      {
        if (*(v5 + 8))
        {
          v9 = *v5;
        }

        else
        {
          v9 = 0;
        }
      }

      else if (*(v5 + 23))
      {
        v9 = v5;
      }

      else
      {
        v9 = 0;
      }

      v10 = xmlNewNs(node, v9, v8);
      v11 = v10;
      if (p_next)
      {
        *p_next = v10;
        v11 = v6;
      }

      v5 += 48;
      v6 = v11;
      p_next = &v10->next;
    }

    while (v5 != a2);
    if (v11)
    {

      xmlSetNs(node, v11);
    }
  }
}

xmlAttrPtr bambi::XmlTreeItem::setProperty(uint64_t a1, xmlNode ***a2, uint64_t a3, uint64_t a4)
{
  v4 = **a2;
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (*(a4 + 23) >= 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = *a4;
  }

  return xmlNewProp(v4, v5, v6);
}

xmlNodePtr bambi::XmlTreeItem::addChild(uint64_t a1, xmlNodePtr **a2, xmlNodePtr **a3)
{
  if (*a3)
  {
    return xmlAddChild(**a2, **a3);
  }

  return result;
}

void bambi::XmlTreeItem::addChild(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4)
{
  memset(v10, 0, sizeof(v10));
  if (a4)
  {
    std::vector<bambi::XmlTreeNs>::push_back[abi:ne200100](v10, a4);
  }

  v7 = a2[1];
  v8 = *a2;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 72))(a1, &v8, a3, v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v11 = v10;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_1E5108374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void bambi::XmlTreeItem::addChild(uint64_t a1, xmlNodePtr **a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 23) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = xmlNewNode(0, v6);
  bambi::setNsForNode(*a4, a4[1], v7);
  xmlAddChild(**a2, v7);
  operator new();
}

void bambi::XmlTreeItem::addTextChild(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  memset(v12, 0, sizeof(v12));
  if (a5)
  {
    std::vector<bambi::XmlTreeNs>::push_back[abi:ne200100](v12, a5);
  }

  v9 = a2[1];
  v10 = *a2;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 88))(a1, &v10, a3, a4, v12);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v13 = v12;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_1E5108510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void bambi::XmlTreeItem::addTextChild(uint64_t a1, xmlNodePtr **a2, const xmlChar *a3, const xmlChar *a4, uint64_t *a5)
{
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    a4 = *a4;
  }

  v6 = xmlNewTextChild(**a2, 0, a3, a4);
  bambi::setNsForNode(*a5, a5[1], v6);
  operator new();
}

uint64_t bambi::XmlTreeItem::addUint32TextChild(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = 0;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  *__p = 0u;
  v24 = 0u;
  v21 = 0u;
  *__src = 0u;
  v19 = 0u;
  v20 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  MEMORY[0x1E6923350](&v19, a4);
  v10 = a2[1];
  v17 = *a2;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((BYTE8(v25) & 0x10) != 0)
  {
    v12 = v25;
    if (v25 < __src[1])
    {
      *&v25 = __src[1];
      v12 = __src[1];
    }

    v13 = __src[0];
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v11 = 0;
      v16 = 0;
      goto LABEL_16;
    }

    v13 = *(&v20 + 1);
    v12 = *(&v21 + 1);
  }

  v11 = v12 - v13;
  if ((v12 - v13) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  v16 = v12 - v13;
  if (v11)
  {
    memmove(&__dst, v13, v11);
  }

LABEL_16:
  *(&__dst + v11) = 0;
  (*(*a1 + 88))(a1, &v17, a3, &__dst, a5);
  if (v16 < 0)
  {
    operator delete(__dst);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *&v19 = *MEMORY[0x1E69E54E8];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v19 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v26);
}

void sub_1E51088A8(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::ostringstream::~ostringstream(&a11, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  _Unwind_Resume(a1);
}

void bambi::XmlTreeItem::addText(int a1, xmlNode ***a2, xmlChar *content)
{
  if (content[23] < 0)
  {
    if (!*(content + 1))
    {
      return;
    }

    content = *content;
  }

  else if (!content[23])
  {
    return;
  }

  v4 = xmlNewText(content);
  v5 = **a2;

  xmlAddChild(v5, v4);
}

void std::vector<bambi::XmlTreeNs>::__construct_one_at_end[abi:ne200100]<bambi::XmlTreeNs const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  *(a1 + 8) = v4 + 48;
}

void sub_1E51089F0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<bambi::XmlTreeNs>::__emplace_back_slow_path<bambi::XmlTreeNs const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v12.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<bambi::XmlParserNamespace>>(a1, v6);
  }

  v7 = (48 * v2);
  v12.__first_ = 0;
  v12.__begin_ = v7;
  v12.__end_ = v7;
  v12.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7->first, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    v7->first.__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v7->first.__r_.__value_.__l.__data_ = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v7->second, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    v7->second.__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&v7->second.__r_.__value_.__l.__data_ = v9;
  }

  ++v12.__end_;
  std::vector<bambi::XmlTreeNs>::__swap_out_circular_buffer(a1, &v12);
  v10 = *(a1 + 8);
  std::__split_buffer<bambi::XmlTreeNs>::~__split_buffer(&v12);
  return v10;
}

void sub_1E5108B4C(_Unwind_Exception *a1, std::__split_buffer<std::pair<std::string, std::string>> *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  std::__split_buffer<bambi::XmlTreeNs>::~__split_buffer(&a10);
  _Unwind_Resume(a1);
}

void sub_1E5108BE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x1E69235B0](v1, 0x20C4093837F09);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<bambi::XmlTreeNode *,std::shared_ptr<bambi::XmlTreeNode>::__shared_ptr_default_delete<bambi::XmlTreeNode,bambi::XmlTreeNode>,std::allocator<bambi::XmlTreeNode>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<bambi::XmlTreeNode *,std::shared_ptr<bambi::XmlTreeNode>::__shared_ptr_default_delete<bambi::XmlTreeNode,bambi::XmlTreeNode>,std::allocator<bambi::XmlTreeNode>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1E69235B0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<bambi::XmlTreeNode *,std::shared_ptr<bambi::XmlTreeNode>::__shared_ptr_default_delete<bambi::XmlTreeNode,bambi::XmlTreeNode>,std::allocator<bambi::XmlTreeNode>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void BambiClientStatus::~BambiClientStatus(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t operator<<(uint64_t a1, const std::string *a2)
{
  LoggableString::LoggableString(&__p, a2);
  (*(*a1 + 40))(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1E5108D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BambiClient::BambiClient(BambiClient *this)
{
  *this = &unk_1F5EF5938;
  *(this + 1) = &unk_1F5EBEEC0;
  std::string::basic_string[abi:ne200100]<0>(object, "bambi");
  v3[0] = 0;
  v6 = 0;
  ImsLogContainer::ImsLogContainer(this + 16, object, v3);
  if (v6 == 1 && v5 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(object[0]);
  }

  *(this + 19) = &unk_1F5EF5A10;
  *(this + 20) = &unk_1F5EC3FB8;
  ims::getQueue(object);
  *(this + 22) = 0;
  *(this + 23) = 0;
  v2 = object[0];
  *(this + 24) = object[0];
  if (v2)
  {
    dispatch_retain(v2);
  }

  *(this + 25) = 0;
  ctu::OsLogLogger::OsLogLogger((this + 208), "com.apple.ipTelephony", "bambi");
  if (v2)
  {
    dispatch_release(v2);
  }

  *this = &unk_1F5EF5590;
  *(this + 1) = &unk_1F5EF56B8;
  *(this + 2) = &unk_1F5EF56E8;
  *(this + 19) = &unk_1F5EF5748;
  *(this + 20) = &unk_1F5EF5780;
  *(this + 21) = &unk_1F5EF57B0;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 216) = 0u;
  *(this + 264) = 0u;
  *(this + 70) = 1065353216;
  *(this + 74) = 0x10000;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 42) = 0;
  *(this + 86) = 1065353216;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 96) = 1065353216;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 106) = 1065353216;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 54) = this + 440;
  SipTimerContainer::SipTimerContainer((this + 456));
  *(this + 80) = 0;
  *(this + 39) = 0u;
  *(this + 696) = 0;
  *(this + 680) = 0u;
  *(this + 44) = 0u;
  *(this + 720) = 0;
  *(this + 181) = 0;
  *(this + 728) = 1;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 102) = 0;
  *(this + 412) = 257;
  *(this + 826) = 1;
}

void sub_1E5109018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  PowerAssertionLock::~PowerAssertionLock((v24 + 432));
  std::__hash_table<std::shared_ptr<BambiCall>,std::hash<std::shared_ptr<BambiCall>>,std::equal_to<std::shared_ptr<BambiCall>>,std::allocator<std::shared_ptr<BambiCall>>>::~__hash_table(v27);
  std::__hash_table<std::shared_ptr<BambiCall>,std::hash<std::shared_ptr<BambiCall>>,std::equal_to<std::shared_ptr<BambiCall>>,std::allocator<std::shared_ptr<BambiCall>>>::~__hash_table(v24 + 352);
  std::__hash_table<std::__hash_value_type<unsigned long long,BambiCallMediaStream *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BambiCallMediaStream *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BambiCallMediaStream *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BambiCallMediaStream *>>>::~__hash_table(v24 + 312);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::~__hash_table(v24 + 248);
  v29 = *(v24 + 240);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v24 + 224);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  MEMORY[0x1E69225A0](v24 + 208);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v26);
  ImsLogContainer::~ImsLogContainer(v25);
  _Unwind_Resume(a1);
}

void BambiClient::init(BambiClient *this)
{
  v2 = *(this + 28);
  *(this + 27) = 0;
  *(this + 28) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 36) = 0;
  *(this + 73) = this + 8;
  v3 = 0;
  memset(&v4, 0, sizeof(v4));
  LOBYTE(v5) = 0;
  std::string::operator=(this + 21, this + 1);
  *(this + 66) = 0;
  *(this + 134) = v3;
  std::string::operator=((this + 544), &v4);
  *(this + 568) = v5;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_1E510966C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (*(v38 - 57) < 0)
  {
    operator delete(*(v38 - 80));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN11BambiClient4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[2];
  v1 += 2;
  v3 = (*(v2 + 64))(v1);
  (*(*v1 + 16))(v1, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "system clock changed", 20);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  for (i = v1[31]; i; i = *i)
  {
    v11 = 0;
    *__p = 0u;
    v10 = 0u;
    std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](__p, i + 1);
    if (*(&v10 + 1))
    {
      v5 = *(*(&v10 + 1) + 248);
      v6 = *(*(&v10 + 1) + 256);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = *(v5 + 336);
      v8 = *(v5 + 344);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SipRegistrationClient::systemClockDidChange(v7);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (SBYTE7(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1E51098B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::pair<std::string const,std::shared_ptr<MessageSession>>::~pair(&a9);
  _Unwind_Resume(a1);
}

void BambiClient::~BambiClient(BambiClient *this)
{
  *this = &unk_1F5EF5590;
  *(this + 1) = &unk_1F5EF56B8;
  *(this + 2) = &unk_1F5EF56E8;
  *(this + 19) = &unk_1F5EF5748;
  *(this + 20) = &unk_1F5EF5780;
  *(this + 21) = &unk_1F5EF57B0;
  (*(**(this + 88) + 88))(*(this + 88));
  SipTimerContainer::cancelAllTimers((this + 456));
  v2 = *(this + 99);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 98);
      if (v5)
      {
        (*(*v5 + 88))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v6 = *(this + 83);
  if (v6)
  {
    ImsSleepWakeMonitor::stop(*(this + 83));
    MEMORY[0x1E69235B0](v6, 0x1020C40D270B852);
  }

  for (i = *(this + 33); i; i = *i)
  {
    v20 = 0;
    *__p = 0u;
    *v19 = 0u;
    std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](__p, i + 1);
    SipStack::destroy(v19[1]);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (SHIBYTE(v19[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(this + 81);
  if (v8)
  {
    SipStackConfig::~SipStackConfig(v8);
    MEMORY[0x1E69235B0]();
  }

  v9 = *(this + 86);
  *(this + 680) = 0u;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  ImsNotificationCenter::removeObserver(this + 624);
  __p[0] = this + 800;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  v10 = *(this + 99);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(this + 97);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(this + 95);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *(this + 93);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(this + 89);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(this + 86);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (*(this + 647) < 0)
  {
    operator delete(*(this + 78));
  }

  SipTimerContainer::~SipTimerContainer((this + 456));
  PowerAssertionLock::~PowerAssertionLock(this + 54);
  std::__hash_table<std::shared_ptr<BambiCall>,std::hash<std::shared_ptr<BambiCall>>,std::equal_to<std::shared_ptr<BambiCall>>,std::allocator<std::shared_ptr<BambiCall>>>::~__hash_table(this + 392);
  std::__hash_table<std::shared_ptr<BambiCall>,std::hash<std::shared_ptr<BambiCall>>,std::equal_to<std::shared_ptr<BambiCall>>,std::allocator<std::shared_ptr<BambiCall>>>::~__hash_table(this + 352);
  std::__hash_table<std::__hash_value_type<unsigned long long,BambiCallMediaStream *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,BambiCallMediaStream *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,BambiCallMediaStream *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,BambiCallMediaStream *>>>::~__hash_table(this + 312);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::~__hash_table(this + 248);
  v16 = *(this + 30);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(this + 28);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  MEMORY[0x1E69225A0](this + 208);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 22);
  *(this + 2) = &unk_1F5ED7318;
  if (*(this + 96) == 1 && *(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  BambiClient::~BambiClient(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiClient::~BambiClient(BambiClient *this)
{
  BambiClient::~BambiClient((this - 8));
}

{
  BambiClient::~BambiClient((this - 16));
}

{
  BambiClient::~BambiClient((this - 152));
}

{
  BambiClient::~BambiClient((this - 160));
}

{
  BambiClient::~BambiClient((this - 168));
}

{
  BambiClient::~BambiClient((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiClient::~BambiClient((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  BambiClient::~BambiClient((this - 152));

  JUMPOUT(0x1E69235B0);
}

{
  BambiClient::~BambiClient((this - 160));

  JUMPOUT(0x1E69235B0);
}

{
  BambiClient::~BambiClient((this - 168));

  JUMPOUT(0x1E69235B0);
}

uint64_t BambiClient::createNewStack@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = (*(*a1 + 184))(a1);
  if (!*a2)
  {
    v5 = a1[89];
    v6 = a1[88];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    SipStack::create(&v7);
  }

  return result;
}

void sub_1E510A534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  v5 = *(v3 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void BambiClient::invalidateStack(void *a1, const void **a2)
{
  v4 = a1 + 2;
  v5 = (*(a1[2] + 64))(a1 + 2);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Invalidate stack ", 17);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, a2);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  v6 = v4 + 29;
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v6, a2);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = v7[5];
  v10 = v8[6];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  *(v9 + 4562) = 1;
  if (*(v9 + 80) == 2)
  {
    SipStack::deinitialize(v9, 0, 1, 0);
LABEL_7:
    if (v10)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    return;
  }

  SipStack::destroy(v9);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = a1[32];
  v12 = v8[1];
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    if (v12 >= *&v11)
    {
      v12 %= *&v11;
    }
  }

  else
  {
    v12 &= *&v11 - 1;
  }

  v14 = *(*v6 + 8 * v12);
  do
  {
    v15 = v14;
    v14 = *v14;
  }

  while (v14 != v8);
  if (v15 == a1 + 33)
  {
    goto LABEL_30;
  }

  v16 = v15[1];
  if (v13.u32[0] > 1uLL)
  {
    if (v16 >= *&v11)
    {
      v16 %= *&v11;
    }
  }

  else
  {
    v16 &= *&v11 - 1;
  }

  if (v16 != v12)
  {
LABEL_30:
    if (!*v8)
    {
      goto LABEL_31;
    }

    v17 = *(*v8 + 1);
    if (v13.u32[0] > 1uLL)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v12)
    {
LABEL_31:
      *(*v6 + 8 * v12) = 0;
    }
  }

  v18 = *v8;
  if (*v8)
  {
    v19 = v18[1];
    if (v13.u32[0] > 1uLL)
    {
      if (v19 >= *&v11)
      {
        v19 %= *&v11;
      }
    }

    else
    {
      v19 &= *&v11 - 1;
    }

    if (v19 != v12)
    {
      *(*v6 + 8 * v19) = v15;
      v18 = *v8;
    }
  }

  *v15 = v18;
  *v8 = 0;
  --a1[34];
  v20[0] = v8;
  v20[1] = v6;
  v21 = 1;
  memset(v22, 0, sizeof(v22));
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,void *>>>>::~unique_ptr[abi:ne200100](v20);
}

void sub_1E510A860(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiClient::notifyCallsOfAccessNetworkChange(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((*(a3 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a3 + 8))
    {
      goto LABEL_23;
    }
  }

  else if (!*(a3 + 23))
  {
    goto LABEL_23;
  }

  if ((*(a3 + 47) & 0x8000000000000000) == 0)
  {
    if (*(a3 + 47))
    {
      goto LABEL_7;
    }

LABEL_23:
    v14 = a1 + 2;
    v15 = (*(a1[2] + 64))(a1 + 2);
    (*(*v14 + 16))(v14, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "notifyCallsOfAccessNetworkChange: no current access network", 59);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    return;
  }

  if (!*(a3 + 32))
  {
    goto LABEL_23;
  }

LABEL_7:
  for (i = a1[46]; i; i = *i)
  {
    v9 = i[2];
    if (v9)
    {
      v10 = v9[48];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v12 = v9[47];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }

      (*(*a1 + 184))(&v17, a1, a2);
      v13 = v17;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if (v12 == v13)
      {
        BambiCall::handleAccessNetworkChange(i[2], a3, a4, v16);
        ImsResult::~ImsResult(v16);
      }
    }
  }
}

void sub_1E510AA54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiClient::setDelegatesForStack(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, char a8)
{
  v41 = 0;
  v42 = 0;
  (*(*a1 + 184))(&v41);
  if (v41)
  {
    v15 = v41[31];
    v14 = v41[32];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v15)
    {
      if ((a8 & 1) == 0)
      {
        v16 = v15[42];
        v17 = v15[43];
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = *a3;
        v19 = a3[1];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        *(v16 + 632) = v18;
        v20 = *(v16 + 640);
        *(v16 + 640) = v19;
        if (v20)
        {
          std::__shared_weak_count::__release_weak(v20);
        }

        if (v19)
        {
          std::__shared_weak_count::__release_weak(v19);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        v21 = v15[44];
        v22 = v15[45];
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = *a4;
        v24 = a4[1];
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v25 = *(v21 + 320);
        *(v21 + 312) = v23;
        *(v21 + 320) = v24;
        if (v25)
        {
          std::__shared_weak_count::__release_weak(v25);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_weak(v24);
        }

        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }
      }

      v26 = v15[35];
      v27 = v15[36];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = *a6;
      v29 = a6[1];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = *(v26 + 232);
      *(v26 + 224) = v28;
      *(v26 + 232) = v29;
      if (v30)
      {
        std::__shared_weak_count::__release_weak(v30);
      }

      if (v29)
      {
        std::__shared_weak_count::__release_weak(v29);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      v31 = v15[37];
      v32 = v15[38];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v31)
      {
        v33 = *a7;
        v34 = a7[1];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v35 = *(v31 + 248);
        *(v31 + 240) = v33;
        *(v31 + 248) = v34;
        if (v35)
        {
          std::__shared_weak_count::__release_weak(v35);
        }

        if (v34)
        {
          std::__shared_weak_count::__release_weak(v34);
        }
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v36 = v41[35];
    v37 = v41[36];
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v36)
    {
      v38 = *a5;
      v39 = a5[1];
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v40 = *(v36 + 336);
      *(v36 + 328) = v38;
      *(v36 + 336) = v39;
      if (v40)
      {
        std::__shared_weak_count::__release_weak(v40);
      }

      if (v39)
      {
        std::__shared_weak_count::__release_weak(v39);
      }
    }

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }
}

void BambiClient::bootstrap(uint64_t a1, _DWORD *a2)
{
  *(a1 + 296) = *a2;
  v3 = *(a1 + 792);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 784);
      if (v6)
      {
        (*(*v6 + 80))(v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t BambiClient::initializeStack(void *a1, void **a2, const SipStackConfig *a3)
{
  v27 = 0;
  v28 = 0;
  (*(*a1 + 184))(&v27);
  if (v27)
  {
    SipStack::initialize(v27, a3);
    v25 = v27;
    v26 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = SDPSession::initializeCarrierTemplateSDP(&v25);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_27;
    }

    v7 = a1[27];
    if (!v7)
    {
      v15 = (*(a1[2] + 64))(a1 + 2);
      (*(a1[2] + 16))(a1 + 2, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "starting RTPManager with stack: ", 32);
      *(v15 + 17) = 0;
      v16 = *(a3 + 512);
      v17 = "Undefined RTP stack";
      if (v16 == 2)
      {
        v17 = "kRTPStackTypeBaseband";
      }

      if (v16 == 1)
      {
        v18 = "kRTPStackTypeAVC";
      }

      else
      {
        v18 = v17;
      }

      std::string::basic_string[abi:ne200100]<0>(&object, v18);
      LoggableString::LoggableString(&__p, &object);
      (*(*v15 + 40))(v15, &__p);
      (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v15 + 17) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(object.__r_.__value_.__l.__data_);
      }

      v19 = a1[23];
      if (v19)
      {
        v20 = a1[22];
        if (std::__shared_weak_count::lock(v19))
        {
          ims::getQueue(&object);
          operator new();
        }
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = *(v27 + 594);
    v9 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v7 + 280, a2);
    v10 = v7 + 288 == v9 ? 0 : *(v9 + 56);
    if (v8 == v10 || (v21 = (*(a1[2] + 64))(a1 + 2), (*(a1[2] + 16))(a1 + 2, v21), std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "media config has changed, re-initializing RTPManager", 52), *(v21 + 17) = 0, (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>), *(v21 + 17) = 0, (*(*a1[27] + 16))(a1[27], a2, *(v27 + 594), *(v27 + 296), a1[38])))
    {
      SipStack::initializeMedia(v27);
      v14 = 1;
    }

    else
    {
LABEL_27:
      v14 = 0;
    }
  }

  else
  {
    v12 = a1[2];
    v11 = a1 + 2;
    v13 = (*(v12 + 56))(v11);
    (*(*v11 + 16))(v11, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to initialize invalid SIP stack ", 39);
    *(v13 + 17) = 0;
    (*(*v13 + 32))(v13, a2);
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v14 = 0;
    *(v13 + 17) = 0;
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  return v14;
}

void sub_1E510B2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, std::__shared_weak_count *a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v27);
  if (object)
  {
    dispatch_release(object);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(a1);
}

uint64_t BambiClient::initializeLazuliStack(uint64_t a1, uint64_t a2, const SipStackConfig *a3)
{
  v17 = 0;
  v18 = 0;
  (*(*a1 + 184))(&v17);
  v6 = a1 + 16;
  v7 = (*(*(a1 + 16) + 64))(a1 + 16);
  (*(*(a1 + 16) + 16))(a1 + 16, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "BambiClient::initializeLazuliStack()", 36);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  v8 = *(a1 + 16);
  if (v17)
  {
    v9 = (*(v8 + 32))(a1 + 16);
    (*(*v6 + 16))(a1 + 16, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Stack ", 6);
    *(v9 + 17) = 0;
    (*(*v9 + 32))(v9, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " is a Lazuli stack", 18);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    v10 = v17;
    *(v17 + 4627) = *(a1 + 824);
    *(v10 + 4629) = *(a1 + 826);
    SipStack::initialize(v10, a3);
    v15 = v17;
    v16 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = SDPSession::initializeLazuliTemplateSDP(&v15);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v11)
    {
      v12 = 1;
      SipStack::setMediaInitialized(v17, 1);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = (*(v8 + 56))(a1 + 16);
    (*(*v6 + 16))(a1 + 16, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to initialize invalid SIP stack ", 39);
    *(v13 + 17) = 0;
    (*(*v13 + 32))(v13, a2);
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v12 = 0;
    *(v13 + 17) = 0;
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return v12;
}

void sub_1E510B700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void BambiClient::deinitializeStack(void *a1, uint64_t a2, int a3, BOOL a4, char a5)
{
  v14 = 0;
  v15 = 0;
  (*(*a1 + 184))(&v14);
  if (v14)
  {
    SipStack::deinitialize(v14, a3, a4, a5);
    v10 = a1[27];
    if (v10)
    {
      (*(*v10 + 24))(v10, a2);
    }
  }

  else
  {
    v12 = a1[2];
    v11 = a1 + 2;
    v13 = (*(v12 + 56))(v11);
    (*(*v11 + 16))(v11, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to deinitialize unknown SIP stack ", 41);
    *(v13 + 17) = 0;
    (*(*v13 + 32))(v13, a2);
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1E510B8D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void BambiClient::shutdownStack(void *a1, const void **a2)
{
  v13 = 0;
  v14 = 0;
  (*(*a1 + 184))(&v13);
  v5 = a1 + 2;
  v4 = a1[2];
  if (!v13)
  {
    v10 = (*(v4 + 56))(a1 + 2);
    (*(*v5 + 16))(v5, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Unable to shutdown unknown SIP stack ", 37);
    *(v10 + 17) = 0;
    (*(*v10 + 32))(v10, a2);
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    goto LABEL_12;
  }

  v6 = (*(v4 + 64))(a1 + 2);
  (*(*v5 + 16))(a1 + 2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Tearing down stack ", 19);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a2);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  BambiClient::invalidateStack(a1, a2);
  v7 = IMSClientManager::delegateForStack(a2);
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    object = v8;
  }

  else
  {
    v9 = xpc_null_create();
    object = v9;
    if (!v9)
    {
      v11 = xpc_null_create();
      v9 = 0;
      goto LABEL_10;
    }
  }

  if (MEMORY[0x1E6924740](v9) != MEMORY[0x1E69E9E80])
  {
    v11 = xpc_null_create();
LABEL_10:
    object = v11;
    goto LABEL_11;
  }

  xpc_retain(v9);
LABEL_11:
  xpc_release(v9);
  (*(*(v7 + 8) + 72))(v7 + 8, &object);
  xpc_release(object);
  object = 0;
  IMSClientManager::removeClient(a2);
LABEL_12:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_1E510BBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  xpc_release(object);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void BambiClient::setThumperEnabled(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 0;
  v7 = 0;
  (*(*a1 + 184))(&v6);
  if (v6)
  {
    v4 = *(v6 + 248);
    v5 = *(v6 + 256);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipUserAgent::setThumperEnabled(v4, a3);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E510BCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void BambiClient::setThirdPartyApp(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0;
  v5 = 0;
  (*(*a1 + 184))(&v4);
  if (v4)
  {
    *(v4 + 240) = a3;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void BambiClient::setAllowLibnetcoreForRcs(BambiClient *this, char a2)
{
  *(this + 824) = a2;
  BambiClient::sipStacks(this, &v7);
  v3 = v7;
  for (i = v8; v3 != i; v3 += 2)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v6 + 2817) == 1)
    {
      *(v6 + 4627) = a2;
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v9 = &v7;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void BambiClient::sipStacks(BambiClient *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  for (i = *(this + 33); i; i = *i)
  {
    v6 = 0;
    *__p = 0u;
    v5 = 0u;
    std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](__p, i + 1);
    std::vector<std::shared_ptr<LazuliHeader>>::push_back[abi:ne200100](a2, (&v5 + 8));
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if (SBYTE7(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void BambiClient::setAllowTls13ForRcs(BambiClient *this, char a2)
{
  *(this + 825) = a2;
  BambiClient::sipStacks(this, &v7);
  v3 = v7;
  for (i = v8; v3 != i; v3 += 2)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v6 + 2817) == 1)
    {
      *(v6 + 4628) = a2;
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v9 = &v7;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void BambiClient::setAllowTlsPQForRcs(BambiClient *this, char a2)
{
  *(this + 826) = a2;
  BambiClient::sipStacks(this, &v7);
  v3 = v7;
  for (i = v8; v3 != i; v3 += 2)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v6 + 2817) == 1)
    {
      *(v6 + 4629) = a2;
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v9 = &v7;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void BambiClient::setMute(uint64_t a1, void **a2)
{
  v3 = *(a1 + 216);
  if (v3 && (v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v3 + 280, a2), v3 + 288 != v4) && *(v4 + 56) == 1)
  {
    v5 = *(a1 + 216);

    RTPManager::setMute(v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v6 = a1 + 16;
    v8 = (*(v7 + 56))(v6);
    (*(*v6 + 16))(v6, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "No valid media manager to set mute", 34);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
  }
}

void BambiClient::startRegistration(void *a1, const void **a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  (*(*a1 + 184))(&v9);
  v6 = *(a3 + 1031);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 1016);
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *(a3 + 1055);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 1040);
  }

  if (v7)
  {
    BambiClient::updateAccessNetworkInfo(a1, a2, (a3 + 1008), 1);
  }

  else
  {
LABEL_8:
    v8 = v9;
    if (!v9)
    {
      goto LABEL_12;
    }

    ims::AccessNetwork::clear(v9 + 3432);
    ims::AccessNetwork::clear(v8 + 3504);
    ims::AccessNetwork::clear(v8 + 3576);
  }

  if (v9)
  {
    SipStack::startRegistration(v9, a3);
  }

LABEL_12:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E510C1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void BambiClient::updateAccessNetworkInfo(void *a1, const void **a2, ims::AccessNetwork *a3, char a4)
{
  v25 = 0;
  v26 = 0;
  (*(*a1 + 184))(&v25);
  v8 = v25;
  if (v25)
  {
    if (ims::AccessNetwork::isNR((v25 + 3432)) && ims::AccessNetwork::isLTE(a3))
    {
      v9 = a1[46];
      if (v9)
      {
        while (1)
        {
          v10 = v9[2];
          if (v10)
          {
            break;
          }

LABEL_34:
          v9 = *v9;
          if (!v9)
          {
            v8 = v25;
            goto LABEL_36;
          }
        }

        v11 = v10[48];
        if (v11)
        {
          v12 = std::__shared_weak_count::lock(v11);
          if (v12)
          {
            v13 = v10[47];
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
          v12 = 0;
        }

        if (*(v13 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v13 + 4432), *(v13 + 4440));
        }

        else
        {
          __p = *(v13 + 4432);
        }

        v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v16 = *(a2 + 23);
        v17 = v16;
        if (v16 < 0)
        {
          v16 = a2[1];
        }

        if (size == v16)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (v17 >= 0)
          {
            v19 = a2;
          }

          else
          {
            v19 = *a2;
          }

          v20 = memcmp(p_p, v19, size) == 0;
          if ((v14 & 0x80000000) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v20 = 0;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_30:
            if (v12)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }

            if (v20)
            {
              BambiCall::stopEPSWatchdogTimer(v9[2]);
            }

            goto LABEL_34;
          }
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_30;
      }
    }

LABEL_36:
    SipStack::updateAccessNetworkInfo(v8, a3, a4);
  }

  else
  {
    v22 = a1[2];
    v21 = a1 + 2;
    v23 = (*(v22 + 56))(v21);
    (*(*v21 + 16))(v21, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Unable to update network info for invalid stack ", 48);
    *(v23 + 17) = 0;
    (*(*v23 + 32))(v23, a2);
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v23 + 17) = 0;
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }
}

void sub_1E510C490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void BambiClient::endAllCalls(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (a1 + 16);
  v6 = (*(*(a1 + 16) + 64))(a1 + 16);
  (*(*v5 + 16))(v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Ending all calls with reason: ", 30);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a2);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v7 = v5[44];
  if (v7)
  {
    while (1)
    {
      v9 = v7[2];
      v8 = v7[3];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = *v7;
      if (!*a3)
      {
        break;
      }

      v10 = *(v9 + 48);
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        v12 = *a3;
        if (v11)
        {
          v13 = *(v9 + 47);
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          if (v13 == v12)
          {
            break;
          }
        }

        else if (!v12)
        {
          break;
        }
      }

LABEL_11:
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (!v7)
      {
        return;
      }
    }

    BambiCall::endWithReason(v9, v14);
    ImsResult::~ImsResult(v14);
    goto LABEL_11;
  }
}

void sub_1E510C65C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiClient::endOtherCalls(uint64_t a1, uint64_t a2, uint64_t *a3, BambiCall **a4)
{
  v4 = *(a1 + 368);
  if (v4)
  {
    while (1)
    {
      v8 = v4[2];
      v7 = v4[3];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v4 = *v4;
      if (v8 == *a4)
      {
        goto LABEL_12;
      }

      if (!*a3)
      {
        break;
      }

      v9 = *(v8 + 48);
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        v11 = *a3;
        if (v10)
        {
          v12 = *(v8 + 47);
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          if (v12 == v11)
          {
            break;
          }
        }

        else if (!v11)
        {
          break;
        }
      }

LABEL_12:
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (!v4)
      {
        return;
      }
    }

    BambiCall::endWithReason(v8, v13);
    ImsResult::~ImsResult(v13);
    goto LABEL_12;
  }
}

void sub_1E510C74C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiClient::updateRegisteredServices(void *a1, const void **a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v33 = 0;
  v34 = 0;
  (*(*a1 + 184))(&v33);
  if (v33)
  {
    memset(&v32, 0, sizeof(v32));
    isHandover = ims::AccessNetwork::isHandover((v33 + 3432), a4);
    v15 = SipStack::prefs(v33);
    v16 = ImsPrefs::RegisterOnServiceUpdate(v15);
    isCellularHandover = ims::AccessNetwork::isCellularHandover((v33 + 3432), a4);
    if ((v16 | isHandover))
    {
      v18 = v33;
      if (ims::AccessNetwork::isNR((v33 + 3432)) && ims::AccessNetwork::isNR(a4) && (ims::AccessNetwork::isTDD((v18 + 3432)) && ims::AccessNetwork::isFDD(a4) || ims::AccessNetwork::isFDD((v18 + 3432)) && ims::AccessNetwork::isTDD(a4)) && (v19 = SipStack::prefs(v18), ImsPrefs::SkipReRegisterWhenNetworkTypeChangedOnNrBetweenTddAndFdd(v19)))
      {
        v31 = (*(a1[2] + 64))(a1 + 2);
        (*(a1[2] + 16))(a1 + 2, v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "Will skip reregister due to NetworkTypeChangedOnNrBetweenTddAndFdd", 66);
        *(v31 + 17) = 0;
        (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v20 = 0;
        *(v31 + 17) = 0;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }

    if (isHandover)
    {
      v24 = "Handover";
    }

    else
    {
      v24 = "ServicesChanged";
    }

    std::string::operator=(&v32, v24);
    if (a3)
    {
      v25 = *(a4 + 23);
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(a4 + 8);
      }

      if (v25)
      {
        v26 = *(a4 + 47);
        if ((v26 & 0x80u) != 0)
        {
          v26 = *(a4 + 32);
        }

        if (v26)
        {
          BambiClient::updateAccessNetworkInfo(a1, a2, a4, v20);
        }
      }
    }

    v27 = SipStack::prefs(v33);
    if (ImsPrefs::ReRegisterOnCellularHandover(v27) || !isCellularHandover)
    {
      SipStack::updateRegisteredServices(v33, a3, v20, &v32, a5, a6, a7);
    }

    else
    {
      v29 = a1[2];
      v28 = a1 + 2;
      v30 = (*(v29 + 64))(v28);
      (*(*v28 + 16))(v28, v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "Skipping reregister on cellular handover", 40);
      *(v30 + 17) = 0;
      (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v30 + 17) = 0;
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v22 = a1[2];
    v21 = a1 + 2;
    v23 = (*(v22 + 56))(v21);
    (*(*v21 + 16))(v21, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "Unable to update registered services for invalid stack ", 55);
    *(v23 + 17) = 0;
    (*(*v23 + 32))(v23, a2);
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v23 + 17) = 0;
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }
}

void sub_1E510CBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void BambiClient::initializeCallToRemoteUri(void *a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, const BambiCallOptions *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  memset(&v120, 0, sizeof(v120));
  v119 = 0uLL;
  (*(*a1 + 184))(&v119);
  if (!v119)
  {
    v18 = a1[2];
    v17 = a1 + 2;
    v19 = (*(v18 + 56))(v17);
    (*(*v17 + 16))(v17, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "initializeCall: no valid SIP stack for ", 39);
    *(v19 + 17) = 0;
    (*(*v19 + 32))(v19, a2);
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    goto LABEL_54;
  }

  v73 = a3;
  if (a6)
  {
    v16 = *(a6 + 71);
    if (v16 < 0)
    {
      if (!*(a6 + 56))
      {
LABEL_21:
        v26 = (*(a1[2] + 64))(a1 + 2);
        (*(a1[2] + 16))(a1 + 2, v26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "using normal SIP stack for emergency call", 41);
        *(v26 + 17) = 0;
        (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v26 + 17) = 0;
        std::string::operator=(&v120, a2);
        (*(*a1 + 184))(v105, a1, a6 + 48);
        v27 = *v105;
        *v105 = 0uLL;
        v28 = *(&v119 + 1);
        v119 = v27;
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          if (*&v105[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v105[8]);
          }
        }

        goto LABEL_30;
      }
    }

    else if (!*(a6 + 71))
    {
      goto LABEL_21;
    }

    if (v16 >= 0)
    {
      v20 = *(a6 + 71);
    }

    else
    {
      v20 = *(a6 + 56);
    }

    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    v22 = size;
    if ((size & 0x80u) != 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    if (v20 != size)
    {
      goto LABEL_21;
    }

    v23 = v16 >= 0 ? (a6 + 48) : *(a6 + 48);
    v24 = a2->__r_.__value_.__r.__words[0];
    v25 = v22 >= 0 ? a2 : a2->__r_.__value_.__r.__words[0];
    if (memcmp(v23, v25, v20))
    {
      goto LABEL_21;
    }

    v29 = (*(a1[2] + 64))(a1 + 2);
    (*(a1[2] + 16))(a1 + 2, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "using emergency SIP stack for emergency call", 44);
    *(v29 + 17) = 0;
    (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v29 + 17) = 0;
    if (*(v119 + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(v105, *(v119 + 4432), *(v119 + 4440));
    }

    else
    {
      *v105 = *(v119 + 4432);
      *&v105[16] = *(v119 + 4448);
    }

    BambiClient::initializeStack(a1, v105, (a6 + 1752));
    if ((v105[23] & 0x80000000) != 0)
    {
      operator delete(*v105);
    }

    SipStack::updateAccessNetworkInfo(v119, (a6 + 1088), 0);
  }

LABEL_30:
  v30 = SipStack::registeredForVoice(v119);
  if (a6)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30;
  }

  if ((v31 & 1) == 0)
  {
    if (BambiClient::callCountForStack(a1, &a2->__r_.__value_.__l.__data_))
    {
      v32 = SipStack::prefs(v119);
      if (ImsPrefs::AllowSimultaneousCallsWhileUnregistered(v32))
      {
        v33 = (*(a1[2] + 32))(a1 + 2);
        (*(a1[2] + 16))(a1 + 2, v33);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "we are currently in a call.  Allowing additional outgoing call while unregistered.", 82);
        *(v33 + 17) = 0;
        (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v33 + 17) = 0;
        goto LABEL_37;
      }
    }

    v41 = a1[2];
    v40 = a1 + 2;
    v42 = (*(v41 + 56))(v40);
    (*(*v40 + 16))(v40, v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "initializeCall: not registered for voice calls", 46);
    *(v42 + 17) = 0;
    (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v42 + 17) = 0;
    if (a7)
    {
      memset(&v105[24], 0, 64);
      *v105 = &unk_1F5EBDEF8;
      *&v105[8] = &_bambiDomain;
      *&v105[16] = 1073741826;
      v43 = ImsResult::operator<<<char [31]>(v105, "not registered for voice calls");
      ImsResult::operator=(a7, v43);
      ImsResult::~ImsResult(v105);
    }

LABEL_54:
    *a8 = 0;
    a8[1] = 0;
    goto LABEL_61;
  }

LABEL_37:
  v34 = a1[95];
  if (!v34)
  {
    v35 = 0;
LABEL_56:
    v45 = a1[2];
    v44 = a1 + 2;
    v46 = (*(v45 + 56))(v44);
    (*(*v44 + 16))(v44, v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v46 + 8), "initializeCall: no call manager delegate specified", 50);
    *(v46 + 17) = 0;
    (*(*v46 + 64))(v46, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v46 + 17) = 0;
    if (!a7)
    {
      goto LABEL_59;
    }

    memset(&v105[24], 0, 64);
    *v105 = &unk_1F5EBDEF8;
    *&v105[8] = &_bambiDomain;
    *&v105[16] = 1073741826;
    v47 = ImsResult::operator<<<char [25]>(v105, "no call manager delegate");
    ImsResult::operator=(a7, v47);
    goto LABEL_58;
  }

  v35 = std::__shared_weak_count::lock(v34);
  if (!v35 || !a1[94])
  {
    goto LABEL_56;
  }

  v36 = a3;
  if (a6)
  {
    goto LABEL_41;
  }

  SipStack::carrierIdentifier(v119, v105);
  if (*ImsPrefsManager::emergencyPrefs(v105))
  {
    if ((v105[23] & 0x80000000) != 0)
    {
      operator delete(*v105);
    }

    goto LABEL_115;
  }

  v48 = a1[46];
  if (v48)
  {
    v49 = 0;
    do
    {
      if (*(v48[2] + 552))
      {
        ++v49;
      }

      v48 = *v48;
    }

    while (v48);
    v50 = v49 == 0;
  }

  else
  {
    v50 = 1;
  }

  if ((v105[23] & 0x80000000) != 0)
  {
    operator delete(*v105);
  }

  if (!v50)
  {
    v66 = a1[2];
    v65 = a1 + 2;
    v67 = (*(v66 + 32))(v65);
    (*(*v65 + 16))(v65, v67);
    v68 = ImsOutStream::operator<<(v67, "unable to initialize voice call while on an emergency call");
    (*(*v68 + 64))(v68, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v68[17] = 0;
    if (!a7)
    {
LABEL_59:
      *a8 = 0;
      a8[1] = 0;
      if (!v35)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    memset(&v105[24], 0, 64);
    *v105 = &unk_1F5EBDEF8;
    *&v105[8] = &SessionTerminatedResultDomain::_domain;
    *&v105[16] = 28;
    ImsResult::operator=(a7, v105);
LABEL_58:
    ImsResult::~ImsResult(v105);
    goto LABEL_59;
  }

LABEL_115:
  if (*(v119 + 320) == 3)
  {
    v63 = a1[2];
    v62 = a1 + 2;
    v64 = (*(v63 + 56))(v62);
    (*(*v62 + 16))(v62, v64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v64 + 8), "initializeCall: can't initialize a call while SipStack is deinitializing", 72);
    *(v64 + 17) = 0;
    (*(*v64 + 64))(v64, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v64 + 17) = 0;
    goto LABEL_59;
  }

LABEL_41:
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  memset(v114, 0, sizeof(v114));
  v113 = 0u;
  v111 = 0u;
  memset(v112, 0, sizeof(v112));
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v106 = 0u;
  memset(v105, 0, sizeof(v105));
  BambiCallOptions::BambiCallOptions(v105, a5);
  if (a6)
  {
    memset(&v104, 0, sizeof(v104));
    SipStack::carrierIdentifier(v119, &__p);
    v37 = ImsPrefsManager::emergencyPrefs(&__p.__r_.__value_.__l.__data_);
    getMatchingPrefix(&v104, (a6 + 4752), *(v37 + 88), *(v37 + 96));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v38 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v104.__r_.__value_.__l.__size_;
    }

    if (v38)
    {
      v39 = (*(a1[2] + 64))(a1 + 2);
      (*(a1[2] + 16))(a1 + 2, v39);
      LoggableString::LoggableString(&__p, (a6 + 4752));
      (*(*v39 + 40))(v39, &__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), " matched private emergency prefix ", 34);
      *(v39 + 17) = 0;
      LoggableString::LoggableString(&v102, &v104);
      (*(*v39 + 40))(v39, &v102);
      (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v39 + 17) = 0;
      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v105[1] = 1;
    }

    else
    {
      SipStack::carrierIdentifier(v119, &v102);
      v51 = ImsPrefsManager::emergencyPrefs(&v102.__r_.__value_.__l.__data_);
      getMatchingPrefix(&__p, (a6 + 4752), *(v51 + 112), *(v51 + 120));
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      v104 = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      v52 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v52 = v104.__r_.__value_.__l.__size_;
      }

      if (v52)
      {
        v53 = (*(a1[2] + 64))(a1 + 2);
        (*(a1[2] + 16))(a1 + 2, v53);
        LoggableString::LoggableString(&__p, (a6 + 4752));
        (*(*v53 + 40))(v53, &__p);
        v54 = ImsOutStream::operator<<(v53, " matched non-private emergency prefix ");
        LoggableString::LoggableString(&v102, &v104);
        (*(*v54 + 40))(v54, &v102);
        (*(*v54 + 64))(v54, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v54[17] = 0;
        if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v102.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *v105 = 1;
      }
    }

    if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v104.__r_.__value_.__l.__data_);
    }

    v36 = v73;
  }

  v55 = v119;
  if (!v119)
  {
    v57 = 0;
    goto LABEL_104;
  }

  v56 = SipStack::prefs(v119);
  if (!ImsPrefs::EnableSignalingReduction(v56))
  {
LABEL_102:
    v57 = v119;
    goto LABEL_104;
  }

  v57 = v119;
  if (*(v55 + 4376) != 1 || (*(v119 + 4504) & 1) != 0)
  {
LABEL_104:
    v101[0] = v57;
    v101[1] = *(&v119 + 1);
    if (*(&v119 + 1))
    {
      atomic_fetch_add_explicit((*(&v119 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v59 = *a4;
    v60 = a4[1];
    v100[0] = v59;
    v100[1] = v60;
    if (v60)
    {
      atomic_fetch_add_explicit((v60 + 16), 1uLL, memory_order_relaxed);
    }

    v74 = *v105;
    v75 = *&v105[8];
    v76 = *&v105[24];
    memset(&v105[8], 0, 24);
    v77 = *&v105[32];
    v78 = *&v105[48];
    *v79 = *&v105[64];
    *(&v79[1] + 5) = *&v105[77];
    v79[5] = *&v105[104];
    *&v79[3] = *&v105[88];
    memset(&v105[88], 0, 24);
    v80 = v106;
    v81 = v107;
    v106 = 0uLL;
    v82 = BYTE8(v107);
    v83 = v108;
    v84 = v109;
    v87 = *&v112[0];
    v85 = v110;
    v86 = v111;
    *&v107 = 0;
    v111 = 0uLL;
    memset(v112, 0, sizeof(v112));
    v89 = *(&v112[1] + 1);
    v88 = *(v112 + 8);
    v90 = v113;
    v113 = 0uLL;
    v92 = *(v114 + 8);
    v61 = *&v114[0];
    memset(v114, 0, sizeof(v114));
    v91 = v61;
    v93 = *(&v114[1] + 1);
    v95 = v116;
    v94 = v115;
    v115 = 0uLL;
    *&v116 = 0;
    v96 = BYTE8(v116);
    LOBYTE(v97) = 0;
    v99 = 0;
    if (BYTE8(v118) == 1)
    {
      v97 = v117;
      v98 = v118;
      *&v118 = 0;
      v117 = 0uLL;
      v99 = 1;
    }

    BambiClient::createNewCall(a8, a1, v101, v36, v100, &v74);
  }

  if (a6)
  {
    v58 = HIBYTE(v120.__r_.__value_.__r.__words[2]);
    if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v58 = v120.__r_.__value_.__l.__size_;
    }

    if (v58)
    {
      (*(*a1 + 184))(&v104, a1, &v120);
      SipStack::setConnectivityAvailable(v104.__r_.__value_.__l.__data_, 0);
      if (v104.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v104.__r_.__value_.__l.__size_);
      }

      v57 = v119;
    }

    SipStack::setConnectivityAvailable(v57, 0);
    goto LABEL_102;
  }

  v70 = a1[2];
  v69 = a1 + 2;
  v71 = (*(v70 + 48))(v69);
  (*(*v69 + 16))(v69, v71);
  v72 = ImsOutStream::operator<<(v71, "initializeCall: preventing outgoing call while in limited connectivity");
  (*(*v72 + 64))(v72, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v72[17] = 0;
  *a8 = 0;
  a8[1] = 0;
  BambiCallOptions::~BambiCallOptions(v105);
LABEL_60:
  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
LABEL_61:
  if (*(&v119 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v119 + 1));
  }

  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v120.__r_.__value_.__l.__data_);
  }
}