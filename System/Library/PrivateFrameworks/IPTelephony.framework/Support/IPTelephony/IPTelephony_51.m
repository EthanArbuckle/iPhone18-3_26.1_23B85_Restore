void sub_1E4FF5D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  if (a39 == 1 && a37 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 81) < 0)
  {
    operator delete(*(v51 - 104));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  _Unwind_Resume(a1);
}

void std::list<std::pair<MediaSessionQueue::Action,std::weak_ptr<MediaSessionInterface>>>::erase(uint64_t a1, uint64_t *__p)
{
  v4 = *__p;
  v3 = __p[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  --*(a1 + 16);
  v5 = __p[4];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(__p);
}

void MediaSessionQueue::setQueuedInterface(void *a1, uint64_t *a2)
{
  v4 = a1[16];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = a1[15];
      if (v7)
      {
        v8 = std::string::basic_string[abi:ne200100]<0>(v33, "rtp.queue");
        v29[0] = 0;
        v32 = 0;
        v9 = ims::debug(v8, v29);
        v10 = *(*(*a1 - 8) + 8);
        v11 = strlen((v10 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), v10 & 0x7FFFFFFFFFFFFFFFLL, v11);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "::", 2);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "setQueuedInterface", 18);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " [oldQueuedInterfaceSessionId=", 30);
        *(v9 + 17) = 0;
        v12 = (*(*v7 + 176))(v7);
        MEMORY[0x1E69233B0](*(v9 + 8), v12);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
        *(v9 + 17) = 0;
        (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v9 + 17) = 0;
        if (v32 == 1 && v31 < 0)
        {
          operator delete(__p);
        }

        if (v34 < 0)
        {
          operator delete(v33[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v13 = a2[1];
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = v14;
      v16 = *a2;
      if (*a2)
      {
        v17 = std::string::basic_string[abi:ne200100]<0>(v33, "rtp.queue");
        v25[0] = 0;
        v28 = 0;
        v18 = ims::debug(v17, v25);
        v19 = *(*(*a1 - 8) + 8);
        v20 = strlen((v19 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), v19 & 0x7FFFFFFFFFFFFFFFLL, v20);
        *(v18 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "::", 2);
        *(v18 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "setQueuedInterface", 18);
        *(v18 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " [newQueuedInterfaceSessionId=", 30);
        *(v18 + 17) = 0;
        v21 = (*(*v16 + 176))(v16);
        MEMORY[0x1E69233B0](*(v18 + 8), v21);
        *(v18 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "]", 1);
        *(v18 + 17) = 0;
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v28 == 1 && v27 < 0)
        {
          operator delete(v26);
        }

        if (v34 < 0)
        {
          operator delete(v33[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v22 = *a2;
    v23 = a2[1];
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 16), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v23 = 0;
    v22 = *a2;
  }

  v24 = a1[16];
  a1[15] = v22;
  a1[16] = v23;
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }
}

uint64_t MediaSessionQueue::sessionId(MediaSessionQueue *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 15);
      if (v5)
      {
        v6 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
        v21[0] = 0;
        v24 = 0;
        v7 = ims::debug(v6, v21);
        v8 = *(*(*this - 8) + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "sessionId", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [queuedInterfaceSessionId=", 27);
        *(v7 + 17) = 0;
        v10 = (*(*v5 + 176))(v5);
        MEMORY[0x1E69233B0](*(v7 + 8), v10);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v24 == 1 && v23 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        v11 = (*(*v5 + 176))(v5);
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return v11;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
  v17[0] = 0;
  v20 = 0;
  v13 = ims::warn(v12, v17);
  v14 = *(*(*this - 8) + 8);
  v15 = strlen((v14 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v14 & 0x7FFFFFFFFFFFFFFFLL, v15);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "::", 2);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "sessionId", 9);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " [queuedInterface=0x0]", 22);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  return 0;
}

void MediaSessionQueue::clearDelegate(MediaSessionQueue *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 15);
      if (v4)
      {
        v5 = std::string::basic_string[abi:ne200100]<0>(v22, "rtp.queue");
        v18[0] = 0;
        v21 = 0;
        v6 = ims::debug(v5, v18);
        v7 = *(*(*this - 8) + 8);
        v8 = strlen((v7 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), v7 & 0x7FFFFFFFFFFFFFFFLL, v8);
        *(v6 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "::", 2);
        *(v6 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "clearDelegate", 13);
        *(v6 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [queuedInterfaceSessionId=", 27);
        *(v6 + 17) = 0;
        v9 = (*(*v4 + 176))(v4);
        MEMORY[0x1E69233B0](*(v6 + 8), v9);
        *(v6 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
        *(v6 + 17) = 0;
        (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v6 + 17) = 0;
        if (v21 == 1 && v20 < 0)
        {
          operator delete(__p);
        }

        if (v23 < 0)
        {
          operator delete(v22[0]);
        }

        (*(*v4 + 168))(v4);
LABEL_17:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = std::string::basic_string[abi:ne200100]<0>(v22, "rtp.queue");
  v14[0] = 0;
  v17 = 0;
  v11 = ims::warn(v10, v14);
  v12 = *(*(*this - 8) + 8);
  v13 = strlen((v12 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), v12 & 0x7FFFFFFFFFFFFFFFLL, v13);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "::", 2);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "clearDelegate", 13);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " [queuedInterface=0x0]", 22);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v17 == 1 && v16 < 0)
  {
    operator delete(v15);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (v3)
  {
    goto LABEL_17;
  }
}

void MediaSessionQueue::setDelegate(void *a1, uint64_t *a2)
{
  v3 = a1[16];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[15];
      if (v6)
      {
        v7 = std::string::basic_string[abi:ne200100]<0>(v27, "rtp.queue");
        v23[0] = 0;
        v26 = 0;
        v8 = ims::debug(v7, v23);
        v9 = *(*(*a1 - 8) + 8);
        v10 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v9 & 0x7FFFFFFFFFFFFFFFLL, v10);
        *(v8 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
        *(v8 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "setDelegate", 11);
        *(v8 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [queuedInterfaceSessionId=", 27);
        *(v8 + 17) = 0;
        v11 = (*(*v6 + 176))(v6);
        MEMORY[0x1E69233B0](*(v8 + 8), v11);
        *(v8 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
        *(v8 + 17) = 0;
        (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v8 + 17) = 0;
        if (v26 == 1 && v25 < 0)
        {
          operator delete(__p);
        }

        if (v28 < 0)
        {
          operator delete(v27[0]);
        }

        v12 = a2[1];
        v21 = *a2;
        v22 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 160))(v6, &v21);
        if (v22)
        {
          std::__shared_weak_count::__release_weak(v22);
        }

LABEL_20:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = std::string::basic_string[abi:ne200100]<0>(v27, "rtp.queue");
  v17[0] = 0;
  v20 = 0;
  v14 = ims::warn(v13, v17);
  v15 = *(*(*a1 - 8) + 8);
  v16 = strlen((v15 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), v15 & 0x7FFFFFFFFFFFFFFFLL, v16);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "::", 2);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "setDelegate", 11);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " [queuedInterface=0x0]", 22);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v5)
  {
    goto LABEL_20;
  }
}

void sub_1E4FF6D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  _Unwind_Resume(a1);
}

void MediaSessionQueue::delegate(MediaSessionQueue *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 15);
      if (v7)
      {
        v8 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
        v21[0] = 0;
        v24 = 0;
        v9 = ims::debug(v8, v21);
        v10 = *(*(*this - 8) + 8);
        v11 = strlen((v10 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), v10 & 0x7FFFFFFFFFFFFFFFLL, v11);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "::", 2);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "delegate", 8);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " [queuedInterfaceSessionId=", 27);
        *(v9 + 17) = 0;
        v12 = (*(*v7 + 176))(v7);
        MEMORY[0x1E69233B0](*(v9 + 8), v12);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
        *(v9 + 17) = 0;
        (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v9 + 17) = 0;
        if (v24 == 1 && v23 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        (*(*v7 + 152))(v7);
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v13 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
  v17[0] = 0;
  v20 = 0;
  v14 = ims::warn(v13, v17);
  v15 = *(*(*this - 8) + 8);
  v16 = strlen((v15 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), v15 & 0x7FFFFFFFFFFFFFFFLL, v16);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "::", 2);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "delegate", 8);
  *(v14 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " [queuedInterface=0x0]", 22);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  *a2 = 0;
  a2[1] = 0;
}

double MediaSessionQueue::sendDTMFDigits@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[16];
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      v9 = a1[15];
      if (v9)
      {
        v10 = std::string::basic_string[abi:ne200100]<0>(v28, "rtp.queue");
        v24[0] = 0;
        v27 = 0;
        v11 = ims::debug(v10, v24);
        v12 = *(*(*a1 - 8) + 8);
        v13 = strlen((v12 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), v12 & 0x7FFFFFFFFFFFFFFFLL, v13);
        *(v11 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "::", 2);
        *(v11 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "sendDTMFDigits", 14);
        *(v11 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " [queuedInterfaceSessionId=", 27);
        *(v11 + 17) = 0;
        v14 = (*(*v9 + 176))(v9);
        MEMORY[0x1E69233B0](*(v11 + 8), v14);
        *(v11 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
        *(v11 + 17) = 0;
        (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v11 + 17) = 0;
        if (v27 == 1 && v26 < 0)
        {
          operator delete(__p);
        }

        if (v29 < 0)
        {
          operator delete(v28[0]);
        }

        (*(*v9 + 144))(v9, a2);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        return result;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v16 = std::string::basic_string[abi:ne200100]<0>(v28, "rtp.queue");
  v20[0] = 0;
  v23 = 0;
  v17 = ims::warn(v16, v20);
  v18 = *(*(*a1 - 8) + 8);
  v19 = strlen((v18 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), v18 & 0x7FFFFFFFFFFFFFFFLL, v19);
  *(v17 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "::", 2);
  *(v17 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "sendDTMFDigits", 14);
  *(v17 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " [queuedInterface=0x0]", 22);
  *(v17 + 17) = 0;
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 1073741836;
  return result;
}

double MediaSessionQueue::stopSendingDTMF@<D0>(MediaSessionQueue *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 15);
      if (v7)
      {
        v8 = std::string::basic_string[abi:ne200100]<0>(v26, "rtp.queue");
        v22[0] = 0;
        v25 = 0;
        v9 = ims::debug(v8, v22);
        v10 = *(*(*this - 8) + 8);
        v11 = strlen((v10 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), v10 & 0x7FFFFFFFFFFFFFFFLL, v11);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "::", 2);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "stopSendingDTMF", 15);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " [queuedInterfaceSessionId=", 27);
        *(v9 + 17) = 0;
        v12 = (*(*v7 + 176))(v7);
        MEMORY[0x1E69233B0](*(v9 + 8), v12);
        *(v9 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
        *(v9 + 17) = 0;
        (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v9 + 17) = 0;
        if (v25 == 1 && v24 < 0)
        {
          operator delete(__p);
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        (*(*v7 + 136))(v7);
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return result;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v14 = std::string::basic_string[abi:ne200100]<0>(v26, "rtp.queue");
  v18[0] = 0;
  v21 = 0;
  v15 = ims::warn(v14, v18);
  v16 = *(*(*this - 8) + 8);
  v17 = strlen((v16 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), v16 & 0x7FFFFFFFFFFFFFFFLL, v17);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "::", 2);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "stopSendingDTMF", 15);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " [queuedInterface=0x0]", 22);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 1073741836;
  return result;
}

double MediaSessionQueue::startSendingDTMF@<D0>(MediaSessionQueue *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 16);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 15);
      if (v9)
      {
        v10 = std::string::basic_string[abi:ne200100]<0>(v28, "rtp.queue");
        v24[0] = 0;
        v27 = 0;
        v11 = ims::debug(v10, v24);
        v12 = *(*(*this - 8) + 8);
        v13 = strlen((v12 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), v12 & 0x7FFFFFFFFFFFFFFFLL, v13);
        *(v11 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "::", 2);
        *(v11 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "startSendingDTMF", 16);
        *(v11 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " [queuedInterfaceSessionId=", 27);
        *(v11 + 17) = 0;
        v14 = (*(*v9 + 176))(v9);
        MEMORY[0x1E69233B0](*(v11 + 8), v14);
        *(v11 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
        *(v11 + 17) = 0;
        (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v11 + 17) = 0;
        if (v27 == 1 && v26 < 0)
        {
          operator delete(__p);
        }

        if (v29 < 0)
        {
          operator delete(v28[0]);
        }

        (*(*v9 + 128))(v9, a2);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        return result;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v16 = std::string::basic_string[abi:ne200100]<0>(v28, "rtp.queue");
  v20[0] = 0;
  v23 = 0;
  v17 = ims::warn(v16, v20);
  v18 = *(*(*this - 8) + 8);
  v19 = strlen((v18 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), v18 & 0x7FFFFFFFFFFFFFFFLL, v19);
  *(v17 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "::", 2);
  *(v17 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "startSendingDTMF", 16);
  *(v17 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " [queuedInterface=0x0]", 22);
  *(v17 + 17) = 0;
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 1073741836;
  return result;
}

uint64_t MediaSessionQueue::mediaSupportEnabled(void *a1, uint64_t a2)
{
  if (a2 == 2)
  {
    return 1;
  }

  v4 = a1[16];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = a1[15];
      if (v8)
      {
        v9 = std::string::basic_string[abi:ne200100]<0>(v27, "rtp.queue");
        v23[0] = 0;
        v26 = 0;
        v10 = ims::debug(v9, v23);
        v11 = *(*(*a1 - 8) + 8);
        v12 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), v11 & 0x7FFFFFFFFFFFFFFFLL, v12);
        *(v10 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
        *(v10 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "mediaSupportEnabled", 19);
        *(v10 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [queuedInterfaceSessionId=", 27);
        *(v10 + 17) = 0;
        v13 = (*(*v8 + 176))(v8);
        MEMORY[0x1E69233B0](*(v10 + 8), v13);
        *(v10 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "]", 1);
        *(v10 + 17) = 0;
        (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v10 + 17) = 0;
        if (v26 == 1 && v25 < 0)
        {
          operator delete(__p);
        }

        if (v28 < 0)
        {
          operator delete(v27[0]);
        }

        v2 = (*(*v8 + 112))(v8, a2);
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return v2;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v14 = std::string::basic_string[abi:ne200100]<0>(v27, "rtp.queue");
  v19[0] = 0;
  v22 = 0;
  v15 = ims::warn(v14, v19);
  v16 = *(*(*a1 - 8) + 8);
  v17 = strlen((v16 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), v16 & 0x7FFFFFFFFFFFFFFFLL, v17);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "::", 2);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "mediaSupportEnabled", 19);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " [queuedInterface=0x0]", 22);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(v20);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  return 0;
}

uint64_t MediaSessionQueue::mediaType(MediaSessionQueue *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 15);
      if (v5)
      {
        v6 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
        v21[0] = 0;
        v24 = 0;
        v7 = ims::debug(v6, v21);
        v8 = *(*(*this - 8) + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "mediaType", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [queuedInterfaceSessionId=", 27);
        *(v7 + 17) = 0;
        v10 = (*(*v5 + 176))(v5);
        MEMORY[0x1E69233B0](*(v7 + 8), v10);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v24 == 1 && v23 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        v11 = (*(*v5 + 104))(v5);
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return v11;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
  v17[0] = 0;
  v20 = 0;
  v13 = ims::warn(v12, v17);
  v14 = *(*(*this - 8) + 8);
  v15 = strlen((v14 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v14 & 0x7FFFFFFFFFFFFFFFLL, v15);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "::", 2);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "mediaType", 9);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " [queuedInterface=0x0]", 22);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  return 2;
}

uint64_t MediaSessionQueue::direction(MediaSessionQueue *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 15);
      if (v5)
      {
        v6 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
        v21[0] = 0;
        v24 = 0;
        v7 = ims::debug(v6, v21);
        v8 = *(*(*this - 8) + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "direction", 9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [queuedInterfaceSessionId=", 27);
        *(v7 + 17) = 0;
        v10 = (*(*v5 + 176))(v5);
        MEMORY[0x1E69233B0](*(v7 + 8), v10);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v24 == 1 && v23 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        v11 = (*(*v5 + 96))(v5);
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return v11;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
  v17[0] = 0;
  v20 = 0;
  v13 = ims::warn(v12, v17);
  v14 = *(*(*this - 8) + 8);
  v15 = strlen((v14 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v14 & 0x7FFFFFFFFFFFFFFFLL, v15);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "::", 2);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "direction", 9);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " [queuedInterface=0x0]", 22);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  return 4;
}

uint64_t MediaSessionQueue::active(MediaSessionQueue *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 15);
      if (v5)
      {
        v6 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
        v21[0] = 0;
        v24 = 0;
        v7 = ims::debug(v6, v21);
        v8 = *(*(*this - 8) + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "active", 6);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [queuedInterfaceSessionId=", 27);
        *(v7 + 17) = 0;
        v10 = (*(*v5 + 176))(v5);
        MEMORY[0x1E69233B0](*(v7 + 8), v10);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v24 == 1 && v23 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        v11 = (*(*v5 + 80))(v5);
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return v11;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
  v17[0] = 0;
  v20 = 0;
  v13 = ims::warn(v12, v17);
  v14 = *(*(*this - 8) + 8);
  v15 = strlen((v14 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v14 & 0x7FFFFFFFFFFFFFFFLL, v15);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "::", 2);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "active", 6);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " [queuedInterface=0x0]", 22);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  return 0;
}

uint64_t MediaSessionQueue::transactionPending(MediaSessionQueue *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 15);
      if (v5)
      {
        v6 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
        v21[0] = 0;
        v24 = 0;
        v7 = ims::debug(v6, v21);
        v8 = *(*(*this - 8) + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "transactionPending", 18);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [queuedInterfaceSessionId=", 27);
        *(v7 + 17) = 0;
        v10 = (*(*v5 + 176))(v5);
        MEMORY[0x1E69233B0](*(v7 + 8), v10);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v24 == 1 && v23 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        v11 = (*(*v5 + 72))(v5);
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return v11;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
  v17[0] = 0;
  v20 = 0;
  v13 = ims::warn(v12, v17);
  v14 = *(*(*this - 8) + 8);
  v15 = strlen((v14 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v14 & 0x7FFFFFFFFFFFFFFFLL, v15);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "::", 2);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "transactionPending", 18);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " [queuedInterface=0x0]", 22);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  return 0;
}

uint64_t MediaSessionQueue::paused(MediaSessionQueue *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 15);
      if (v5)
      {
        v6 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
        v21[0] = 0;
        v24 = 0;
        v7 = ims::debug(v6, v21);
        v8 = *(*(*this - 8) + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "paused", 6);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [queuedInterfaceSessionId=", 27);
        *(v7 + 17) = 0;
        v10 = (*(*v5 + 176))(v5);
        MEMORY[0x1E69233B0](*(v7 + 8), v10);
        *(v7 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
        *(v7 + 17) = 0;
        (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v7 + 17) = 0;
        if (v24 == 1 && v23 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        v11 = (*(*v5 + 88))(v5);
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return v11;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(v25, "rtp.queue");
  v17[0] = 0;
  v20 = 0;
  v13 = ims::warn(v12, v17);
  v14 = *(*(*this - 8) + 8);
  v15 = strlen((v14 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v14 & 0x7FFFFFFFFFFFFFFFLL, v15);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "::", 2);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "paused", 6);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " [queuedInterface=0x0]", 22);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  return 0;
}

void non-virtual thunk toMediaSessionQueue::~MediaSessionQueue(MediaSessionQueue *this)
{
  MediaSessionQueue::~MediaSessionQueue((this - 8));
}

{
  MediaSessionQueue::~MediaSessionQueue((this - 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t SipConferenceEventPackage::handleNotification(uint64_t a1, uint64_t *a2)
{
  v3 = *(*a2 + 112);
  {
    v7 = v6;
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = *(a1 + 32);
        if (v10)
        {
          (*(*v10 + 16))(v10, v7 + 32);
          v48 = 0;
          v49 = 0;
          v50 = 0;
          (*(*v7 + 56))(v7, &v48);
          v47 = 0;
          v45 = 0u;
          memset(v46, 0, sizeof(v46));
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          __src = 0u;
          v39 = 0u;
          v40 = 0u;
          *v38 = 0u;
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v38);
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Content-Type", 12);
          v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": ", 2);
          if (byte_1EE2BD23F >= 0)
          {
            v13 = &SipConferenceInfoBody::kContentType;
          }

          else
          {
            v13 = SipConferenceInfoBody::kContentType;
          }

          if (byte_1EE2BD23F >= 0)
          {
            v14 = byte_1EE2BD23F;
          }

          else
          {
            v14 = unk_1EE2BD230;
          }

          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\r\n\r\n", 4);
          if (v50 >= 0)
          {
            v17 = &v48;
          }

          else
          {
            v17 = v48;
          }

          if (v50 >= 0)
          {
            v18 = HIBYTE(v50);
          }

          else
          {
            v18 = v49;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
          v19 = SipMessage::header<SipFromHeader>(*a2);
          if (v19)
          {
            v20 = v19 + 104;
          }

          else
          {
            v20 = 0;
          }

          if ((BYTE8(v45) & 0x10) != 0)
          {
            v24 = v45;
            if (v45 < *(&__src + 1))
            {
              *&v45 = *(&__src + 1);
              v24 = *(&__src + 1);
            }

            v25 = __src;
          }

          else
          {
            if ((BYTE8(v45) & 8) == 0)
            {
              v21 = 0;
              v37 = 0;
LABEL_47:
              *(&__dst + v21) = 0;
              (*(*v10 + 24))(v10, v20, &__dst);
              if (v37 < 0)
              {
                operator delete(__dst);
              }

              v38[0] = *MEMORY[0x1E69E54D8];
              v26 = *(MEMORY[0x1E69E54D8] + 72);
              *(v38 + *(v38[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
              *&v39 = v26;
              *(&v39 + 1) = MEMORY[0x1E69E5548] + 16;
              if (SHIBYTE(v44) < 0)
              {
                operator delete(*(&v43 + 1));
              }

              *(&v39 + 1) = MEMORY[0x1E69E5538] + 16;
              std::locale::~locale(&v40);
              std::iostream::~basic_iostream();
              MEMORY[0x1E6923510](v46);
              if (SHIBYTE(v50) < 0)
              {
                operator delete(v48);
              }

LABEL_53:
              std::__shared_weak_count::__release_shared[abi:ne200100](v9);
              return 1;
            }

            v25 = *(&v40 + 1);
            v24 = *(&v41 + 1);
          }

          v21 = v24 - v25;
          if ((v24 - v25) >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v21 >= 0x17)
          {
            operator new();
          }

          v37 = v24 - v25;
          if (v21)
          {
            memmove(&__dst, v25, v21);
          }

          goto LABEL_47;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(v38, "sip.conf");
    v32[0] = 0;
    v35 = 0;
    v23 = ims::debug(v38, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "No conference call to handle notification", 41);
    *(v23 + 17) = 0;
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v23 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (SBYTE7(v39) < 0)
    {
      operator delete(v38[0]);
    }

    if (v9)
    {
      goto LABEL_53;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v38, "sip.conf");
    v28[0] = 0;
    v31 = 0;
    v22 = ims::warn(v38, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Missing body in conference event", 32);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (v31 == 1 && v30 < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v39) < 0)
    {
      operator delete(v38[0]);
    }
  }

  return 1;
}

void sub_1E4FF9890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a36, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E6923510](&a55);
  if (*(v56 - 81) < 0)
  {
    operator delete(*(v56 - 104));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  _Unwind_Resume(a1);
}

void SipConferenceEventPackage::handleSubscriptionFailed(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        (*(*v5 + 32))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipConferenceEventPackage::handleSubscriptionSuccess(SipConferenceEventPackage *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 4);
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

uint64_t SipConferenceEventPackage::determineIncomingMessageCategory(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

void SipConferenceEventPackage::~SipConferenceEventPackage(SipConferenceEventPackage *this)
{
  *this = &unk_1F5EE7740;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipEventPackage::~SipEventPackage(this);
}

{
  *this = &unk_1F5EE7740;
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipEventPackage::~SipEventPackage(this);

  JUMPOUT(0x1E69235B0);
}

std::string *SipReason::SipReason(std::string *a1, const std::string *a2, uint64_t a3, uint64_t a4)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1[1].__r_.__value_.__r.__words[0] = &unk_1F5EBEF50;
  a1[1].__r_.__value_.__r.__words[2] = 0;
  a1[1].__r_.__value_.__l.__size_ = &a1[1].__r_.__value_.__r.__words[2];
  p_size = &a1[1].__r_.__value_.__l.__size_;
  a1[2].__r_.__value_.__r.__words[0] = 0;
  LOWORD(a1[2].__r_.__value_.__r.__words[1]) = 256;
  std::string::operator=(a1, a2);
  if (!a3)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    v9 = size;
    if ((size & 0x80u) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    a3 = 200;
    if (size == 5)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = a1->__r_.__value_.__r.__words[0];
      }

      v11 = bswap64(LODWORD(v10->__r_.__value_.__l.__data_) | (v10->__r_.__value_.__s.__data_[4] << 32));
      v12 = v11 >= 0x512E383530000000;
      v13 = v11 > 0x512E383530000000;
      v14 = !v12;
      if (v13 == v14)
      {
        a3 = 16;
      }

      else
      {
        a3 = 200;
      }
    }
  }

  v25 = 0;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  *v21 = 0u;
  v22 = 0u;
  memset(__str, 0, sizeof(__str));
  std::ostringstream::basic_ostringstream[abi:ne200100](__str);
  MEMORY[0x1E6923350](__str, a3);
  std::string::basic_string[abi:ne200100]<0>(v26, "cause");
  std::ostringstream::str[abi:ne200100](__str, &__p);
  v28 = v26;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(p_size, v26);
  std::string::operator=((v15 + 56), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  *__str = *MEMORY[0x1E69E54E8];
  *&__str[*(*__str - 24)] = *(MEMORY[0x1E69E54E8] + 24);
  *&__str[8] = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  *&__str[8] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&__str[16]);
  std::ostream::~ostream();
  MEMORY[0x1E6923510](v24);
  if (*(a4 + 23) < 0)
  {
    v16 = *(a4 + 8);
    if (!v16)
    {
      return a1;
    }

    memset(&__p, 0, sizeof(__p));
    std::string::__init_copy_ctor_external(&__p, *a4, v16);
  }

  else
  {
    if (!*(a4 + 23))
    {
      return a1;
    }

    __p = *a4;
  }

  ims::addQuotes(&__p, 1);
  memset(__str, 0, 24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__str, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *__str = __p;
  }

  ims::addQuotes(__str, 1);
  std::string::basic_string[abi:ne200100]<0>(v26, "text");
  v28 = v26;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(p_size, v26);
  std::string::operator=((v17 + 56), __str);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1E4FF9F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 24) = v22;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v23, *(v21 + 40));
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(a1);
}

uint64_t SipReason::rankForProtocol(unsigned int *a1)
{
  v1 = *(a1 + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (v1 == 5)
  {
    if (v2 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = bswap64(*v8 | (*(v8 + 4) << 32));
    v10 = v9 >= 0x512E383530000000;
    v11 = v9 > 0x512E383530000000;
    v12 = !v10;
    if (v11 == v12)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (v1 == 3 && (v2 >= 0 ? (v3 = a1) : (v3 = *a1), (v4 = *v3, v5 = *(v3 + 2), v4 == 18771) ? (v6 = v5 == 80) : (v6 = 0), v6))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

unint64_t SipReason::cause(SipReason *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "cause");
  v2 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 32, __p);
  if ((this + 40) == v2)
  {
    v3 = &ims::kEmptyString;
  }

  else
  {
    v3 = (v2 + 56);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(v3 + 23) & 0x80000000) == 0)
  {
    if (!*(v3 + 23))
    {
      return 0;
    }

    return strtoul(v3, 0, 10);
  }

  if (*(v3 + 1))
  {
    v3 = *v3;
    return strtoul(v3, 0, 10);
  }

  return 0;
}

void sub_1E4FFA148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double SipReason::text@<D0>(SipReason *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "text");
  v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 32, __p);
  if ((this + 40) == v4)
  {
    v5 = &ims::kEmptyString;
  }

  else
  {
    v5 = (v4 + 56);
  }

  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    a2->__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&a2->__r_.__value_.__l.__data_ = v6;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return ims::removeQuotes(a2);
}

void sub_1E4FFA20C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void SipVectorHeader<SipReason *>::addItem(void *a1, void *a2)
{
  v5 = a1[9];
  v4 = a1[10];
  if (v5 >= v4)
  {
    v7 = a1[8];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<SipReason *>::__throw_length_error[abi:ne200100]();
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

unsigned int *SipReasonHeader::bestReason(SipReasonHeader *this)
{
  v1 = *(this + 8);
  v2 = *(this + 9);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = v1 + 8;
  v5 = 0xFFFF;
  do
  {
    v6 = *(v4 - 8);
    v7 = SipReason::rankForProtocol(v6);
    if (v3)
    {
      v8 = v7 < v5;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v5 = v7;
      v3 = v6;
    }

    if (v5)
    {
      v10 = v4 == v2;
    }

    else
    {
      v10 = 1;
    }

    v4 += 8;
  }

  while (!v10);
  return v3;
}

void SipReasonHeader::~SipReasonHeader(SipReasonHeader *this)
{
  SipPointerVectorHeader<SipReason>::~SipPointerVectorHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipVectorHeader<SipReason *>::encodeValue(void *a1, uint64_t a2)
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

BOOL SipVectorHeader<SipReason *>::setValueFromString(void *a1, uint64_t a2)
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

    SipVectorHeader<SipReason *>::addItem(a1, &v6);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v4 == -1;
}

void sub_1E4FFAA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipPointerVectorHeader<SipReason>::mergeHeader(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (v3 && v3[9] != v3[8])
  {
    operator new();
  }

  return v3 != 0;
}

ImsOutStream *SipPointerVectorHeader<SipReason>::itemToStream(uint64_t a1, __int16 **a2, ImsOutStream *a3)
{
  v4 = *a2;
  v5 = *(*a2 + 23);
  if (v5 < 0)
  {
    v5 = *(v4 + 1);
  }

  v6 = *a3 + 32;
  if (v5)
  {
    v7 = *a2;
  }

  else
  {
    v7 = &SipReason::kProtocolSip;
  }

  (*(*a3 + 32))(a3, v7);

  return SipParameterMap::toStream((v4 + 12), a3, 0, 0, 0, 0);
}

BOOL SipVectorHeader<SipReason *>::mergeHeader(void *a1, char **lpsrc)
{
  v3 = **lpsrc;
  v5 = v4;
  if (v4)
  {
    v6 = v4[8];
    v7 = v4[9];
    while (v6 != v7)
    {
      SipVectorHeader<SipReason *>::addItem(a1, v6++);
    }
  }

  return v5 != 0;
}

void SipVectorHeader<SipReason *>::~SipVectorHeader(SipHeader *this)
{
  *this = &unk_1F5EE7980;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SipHeader::~SipHeader(this);
}

void SipPointerVectorHeader<SipReason>::~SipPointerVectorHeader(SipHeader *this)
{
  *this = &unk_1F5EE78E8;
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

  *this = &unk_1F5EE7980;
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  SipHeader::~SipHeader(this);
}

char *SipIPSec3gppSecurityMechanism::matches(SipIPSec3gppSecurityMechanism *this, char **lpsrc)
{
  v3 = **lpsrc;
  if (result)
  {
    v5 = result;
    v6 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 40, &SipIPSec3gppSecurityMechanism::kParameterAlgorithm);
    v7 = this + 48;
    if ((this + 48) == v6)
    {
      v8 = &ims::kEmptyString;
    }

    else
    {
      v8 = (v6 + 56);
    }

    v9 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v5 + 40), &SipIPSec3gppSecurityMechanism::kParameterAlgorithm);
    v10 = v5 + 48;
    v11 = (v9 + 56);
    if (v5 + 48 == v9)
    {
      v11 = &ims::kEmptyString;
    }

    v12 = *(v8 + 23);
    if (v12 >= 0)
    {
      v13 = *(v8 + 23);
    }

    else
    {
      v13 = *(v8 + 1);
    }

    v14 = *(v11 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v11 + 1);
    }

    if (v13 != v14)
    {
      return 0;
    }

    v16 = v12 >= 0 ? v8 : *v8;
    v17 = v15 >= 0 ? v11 : *v11;
    if (memcmp(v16, v17, v13))
    {
      return 0;
    }

    v18 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 40, "ealg");
    v19 = (v18 + 56);
    if (v7 == v18)
    {
      v19 = &ims::kEmptyString;
    }

    v20 = *(v19 + 23);
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(v19 + 1);
    }

    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = "null";
    }

    v22 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v5 + 40), "ealg");
    v23 = (v22 + 56);
    if (v10 == v22)
    {
      v23 = &ims::kEmptyString;
    }

    v24 = *(v23 + 23);
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(v23 + 1);
    }

    if (!v24)
    {
      v23 = "null";
    }

    v25 = v21[23];
    if (v25 >= 0)
    {
      v26 = *(v21 + 23);
    }

    else
    {
      v26 = *(v21 + 1);
    }

    v27 = *(v23 + 23);
    v28 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v27 = *(v23 + 1);
    }

    if (v26 != v27)
    {
      return 0;
    }

    v29 = v25 >= 0 ? v21 : *v21;
    v30 = v28 >= 0 ? v23 : *v23;
    if (memcmp(v29, v30, v26))
    {
      return 0;
    }

    v31 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 40, "prot");
    v32 = (v31 + 56);
    if (v7 == v31)
    {
      v32 = &ims::kEmptyString;
    }

    v33 = *(v32 + 23);
    if ((v33 & 0x80u) != 0)
    {
      v33 = *(v32 + 1);
    }

    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = &SipIPSec3gppSecurityMechanism::kProtocolESP;
    }

    v35 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v5 + 40), "prot");
    v36 = (v35 + 56);
    if (v10 == v35)
    {
      v36 = &ims::kEmptyString;
    }

    v37 = *(v36 + 23);
    if ((v37 & 0x80u) != 0)
    {
      v37 = *(v36 + 1);
    }

    if (!v37)
    {
      v36 = &SipIPSec3gppSecurityMechanism::kProtocolESP;
    }

    v38 = *(v34 + 23);
    if (v38 >= 0)
    {
      v39 = *(v34 + 23);
    }

    else
    {
      v39 = *(v34 + 1);
    }

    v40 = *(v36 + 23);
    v41 = v40;
    if ((v40 & 0x80u) != 0)
    {
      v40 = *(v36 + 1);
    }

    if (v39 != v40)
    {
      return 0;
    }

    v42 = v38 >= 0 ? v34 : *v34;
    v43 = v41 >= 0 ? v36 : *v36;
    if (memcmp(v42, v43, v39))
    {
      return 0;
    }

    v44 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 40, &SipIPSec3gppSecurityMechanism::kParameterMode);
    v45 = (v44 + 56);
    if (v7 == v44)
    {
      v45 = &ims::kEmptyString;
    }

    v46 = *(v45 + 23);
    if ((v46 & 0x80u) != 0)
    {
      v46 = *(v45 + 1);
    }

    if (v46)
    {
      v47 = v45;
    }

    else
    {
      v47 = "trans";
    }

    v48 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v5 + 40), &SipIPSec3gppSecurityMechanism::kParameterMode);
    v49 = (v48 + 56);
    if (v10 == v48)
    {
      v49 = &ims::kEmptyString;
    }

    v50 = *(v49 + 23);
    if ((v50 & 0x80u) != 0)
    {
      v50 = *(v49 + 1);
    }

    if (!v50)
    {
      v49 = "trans";
    }

    v51 = v47[23];
    if (v51 >= 0)
    {
      v52 = *(v47 + 23);
    }

    else
    {
      v52 = *(v47 + 1);
    }

    v53 = *(v49 + 23);
    v54 = v53;
    if ((v53 & 0x80u) != 0)
    {
      v53 = *(v49 + 1);
    }

    if (v52 == v53)
    {
      if (v51 >= 0)
      {
        v55 = v47;
      }

      else
      {
        v55 = *v47;
      }

      if (v54 >= 0)
      {
        v56 = v49;
      }

      else
      {
        v56 = *v49;
      }

      return (memcmp(v55, v56, v52) == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void SipIPSec3gppSecurityMechanism::initializeFromTransport(SipIPSec3gppSecurityMechanism *this, const SipIPSecTransportGroup *a2)
{
  SipParameterMap::setParameter(this + 32, "spi-c", *(*(a2 + 42) + 8));
  SipParameterMap::setParameter(this + 32, "spi-s", *(*(a2 + 43) + 8));
  (*(*a2 + 176))(&v6, a2);
  v4 = (*(*v6 + 56))(v6);
  SipParameterMap::setParameter(this + 32, "port-s", v4);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  (*(*a2 + 168))(&v6, a2);
  v5 = (*(*v6 + 56))(v6);
  SipParameterMap::setParameter(this + 32, "port-c", v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4FFB504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

double SipIPSec3gppSecurityMechanism::fillIPSecAuthKey@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 40, &SipIPSec3gppSecurityMechanism::kParameterAlgorithm);
  if (a1 + 48 == v8)
  {
    v9 = &ims::kEmptyString;
  }

  else
  {
    v9 = (v8 + 56);
  }

  v10 = *(v9 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v9 + 1);
  }

  if (v10 == 13)
  {
    if (v11 >= 0)
    {
      v17 = v9;
    }

    else
    {
      v17 = *v9;
    }

    v18 = *v17;
    v19 = *(v17 + 5);
    if (v18 != 0x6168732D63616D68 || v19 != 0x36392D312D616873)
    {
      goto LABEL_24;
    }

    v16 = 20;
  }

  else
  {
    if (v10 != 11 || (v11 >= 0 ? (v12 = v9) : (v12 = *v9), (v13 = *v12, v14 = *(v12 + 3), v13 == 0x35646D2D63616D68) ? (v15 = v14 == 0x36392D35646D2D63) : (v15 = 0), !v15))
    {
LABEL_24:
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v28[0] = &unk_1F5EBDEF8;
      v28[1] = &_bambiDomain;
      v29 = 0x40000000;
      v21 = ImsResult::operator<<<char [44]>(v28, "Can't fill IPSec key for unknown algorithm ");
      v22 = ImsResult::operator<<<std::string>(v21, v9);
      ImsResult::ImsResult(a4, v22);
      ImsResult::~ImsResult(v28);
      return result;
    }

    v16 = 16;
  }

  v24 = *a3;
  v25 = *(a3 + 8) - *a3;
  if (v16 <= v25)
  {
    if (v16 < v25)
    {
      *(a3 + 8) = &v24[v16];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a3, v16 - v25);
    v24 = *a3;
  }

  *v24 = *a2;
  v26 = (*a3 + 16);
  v27 = *(a3 + 8) - v26;
  if (v27 >= 1)
  {
    bzero(v26, v27);
  }

  result = 0.0;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = &unk_1F5EBDEF8;
  *(a4 + 8) = &_bambiDomain;
  *(a4 + 16) = 0;
  return result;
}

void sub_1E4FFB728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

double SipIPSec3gppSecurityMechanism::fillIPSecEncryptionKey@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 40, "ealg");
  if (a1 + 48 == v8)
  {
    v9 = &ims::kEmptyString;
  }

  else
  {
    v9 = (v8 + 56);
  }

  v10 = *(v9 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v9 + 1);
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = "null";
  }

  v12 = *(v11 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v11 + 1);
  }

  if (v12 == 12)
  {
    if (v13 >= 0)
    {
      v20 = v11;
    }

    else
    {
      v20 = *v11;
    }

    v21 = *v20;
    v22 = *(v20 + 2);
    if (v21 != 0x336564652D736564 || v22 != 1667392301)
    {
      goto LABEL_30;
    }

    v27 = *a3;
    v28 = *(a3 + 8) - *a3;
    if (v28 > 0x17)
    {
      if (v28 != 24)
      {
        *(a3 + 8) = v27 + 24;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(a3, 24 - v28);
      v27 = *a3;
    }

    *v27 = *a2;
    *(v27 + 1) = a2[1];
    *(v27 + 2) = *a2;
  }

  else
  {
    if (v12 != 7 || (v13 >= 0 ? (v14 = v11) : (v14 = *v11), (v15 = *v14, v16 = *(v14 + 3), v15 == 762537313) ? (v17 = v16 == 1667392301) : (v17 = 0), !v17))
    {
LABEL_30:
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v29[0] = &unk_1F5EBDEF8;
      v29[1] = &_bambiDomain;
      v30 = 0x40000000;
      v24 = ImsResult::operator<<<char [49]>(v29, "Unable to generate key for encryption algorithm ");
      v25 = ImsResult::operator<<<std::string>(v24, v11);
      ImsResult::ImsResult(a4, v25);
      ImsResult::~ImsResult(v29);
      return result;
    }

    v18 = *a3;
    v19 = *(a3 + 8) - *a3;
    if (v19 > 0xF)
    {
      if (v19 != 16)
      {
        *(a3 + 8) = v18 + 16;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(a3, 16 - v19);
      v18 = *a3;
    }

    *v18 = *a2;
  }

  result = 0.0;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = &unk_1F5EBDEF8;
  *(a4 + 8) = &_bambiDomain;
  *(a4 + 16) = 0;
  return result;
}

void sub_1E4FFB98C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void SipIPSec3gppSecurityMechanism::~SipIPSec3gppSecurityMechanism(SipIPSec3gppSecurityMechanism *this)
{
  SipSecurityMechanism::~SipSecurityMechanism(this);

  JUMPOUT(0x1E69235B0);
}

void SipSecurityMechanism::~SipSecurityMechanism(SipSecurityMechanism *this)
{
  *this = &unk_1F5EDB4E8;
  *(this + 4) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 40, *(this + 6));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t SipConferenceEndpoint::setAttribute(uint64_t result, uint64_t *a2, std::string *a3)
{
  v3 = result;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
    if (v4 != 5)
    {
      if (v4 != 6)
      {
        return result;
      }

      if (*a2 != 1769238117 || *(a2 + 2) != 31092)
      {
        return result;
      }

LABEL_17:
      v8 = result + 8;

      return SipUri::fromString(v8, a3);
    }

    goto LABEL_21;
  }

  v6 = a2[1];
  if (v6 == 5)
  {
    a2 = *a2;
LABEL_21:
    if (*a2 == 1952543859 && *(a2 + 4) == 101)
    {
      result = conferenceStateFromName(a3);
      *(v3 + 416) = result;
    }

    return result;
  }

  if (v6 == 6 && **a2 == 1769238117 && *(*a2 + 4) == 31092)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t conferenceStateFromName(unsigned int *a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *(a1 + 1);
    if (v2 != 4)
    {
      if (v2 != 7)
      {
        return 0;
      }

      a1 = *a1;
      goto LABEL_8;
    }

    v8 = **a1;
    return v8 == 1819047270;
  }

  v1 = *(a1 + 23);
  if (v1 == 4)
  {
    v8 = *a1;
    return v8 == 1819047270;
  }

  if (v1 != 7)
  {
    return 0;
  }

LABEL_8:
  if (*a1 == 1953653104 && *(a1 + 3) == 1818323316)
  {
    return 2;
  }

  v4 = 1684368485;
  v5 = bswap32(*a1);
  if (v5 == 1684368485 && (v4 = 1702126948, v5 = bswap32(*(a1 + 3)), v5 == 1702126948))
  {
    v6 = 0;
  }

  else if (v5 < v4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

void SipConferenceEndpoint::setText(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    if (a2[1] != 6)
    {
      return;
    }

    a2 = *a2;
  }

  else if (v4 != 6)
  {
    return;
  }

  if (*a2 == 1952543859 && *(a2 + 2) == 29557)
  {
    memset(&__p, 0, sizeof(__p));
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    ims::chomp(&__p, "\r\n\t ", 3);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) > 9u)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) <= 0xBu)
        {
          if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 10)
          {
            p_p = &__p;
            goto LABEL_103;
          }

          if (__p.__r_.__value_.__r.__words[0] != 0x2D676E696C616964 || LOWORD(__p.__r_.__value_.__r.__words[1]) != 28265)
          {
            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 12)
        {
          if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 15)
          {
            goto LABEL_107;
          }

          if (__p.__r_.__value_.__r.__words[0] != 0x69762D646574756DLL || *(__p.__r_.__value_.__r.__words + 7) != 0x7375636F662D6169)
          {
            goto LABEL_107;
          }

LABEL_52:
          v9 = 3;
          goto LABEL_109;
        }

        if (__p.__r_.__value_.__r.__words[0] != 0x656E6E6F63736964 || LODWORD(__p.__r_.__value_.__r.__words[1]) != 1684370531)
        {
          goto LABEL_107;
        }

LABEL_115:
        v9 = 9;
        goto LABEL_109;
      }

      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 7)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 8)
        {
          if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 9)
          {
            goto LABEL_107;
          }

          if (__p.__r_.__value_.__r.__words[0] != 0x657463656E6E6F63 || __p.__r_.__value_.__s.__data_[8] != 100)
          {
            goto LABEL_107;
          }

LABEL_36:
          v9 = 1;
          goto LABEL_109;
        }

        if (__p.__r_.__value_.__r.__words[0] != 0x676E697472656C61)
        {
          goto LABEL_107;
        }

LABEL_101:
        v9 = 5;
        goto LABEL_109;
      }

      if (LODWORD(__p.__r_.__value_.__l.__data_) != 1747807855 || *(__p.__r_.__value_.__r.__words + 3) != 1684828008)
      {
        if (LODWORD(__p.__r_.__value_.__l.__data_) != 1684956528 || *(__p.__r_.__value_.__r.__words + 3) != 1735289188)
        {
          goto LABEL_107;
        }

LABEL_86:
        v9 = 4;
        goto LABEL_109;
      }

LABEL_114:
      v9 = 2;
      goto LABEL_109;
    }

    if (__p.__r_.__value_.__l.__size_ > 11)
    {
      if (__p.__r_.__value_.__l.__size_ == 12)
      {
        if (*__p.__r_.__value_.__l.__data_ == 0x656E6E6F63736964 && *(__p.__r_.__value_.__r.__words[0] + 8) == 1684370531)
        {
          goto LABEL_115;
        }
      }

      else if (__p.__r_.__value_.__l.__size_ == 15 && *__p.__r_.__value_.__l.__data_ == 0x69762D646574756DLL && *(__p.__r_.__value_.__r.__words[0] + 7) == 0x7375636F662D6169)
      {
        goto LABEL_52;
      }
    }

    else if (__p.__r_.__value_.__l.__size_ == 7)
    {
      if (*__p.__r_.__value_.__l.__data_ == 1747807855 && *(__p.__r_.__value_.__r.__words[0] + 3) == 1684828008)
      {
        goto LABEL_114;
      }

      if (*__p.__r_.__value_.__l.__data_ == 1684956528 && *(__p.__r_.__value_.__r.__words[0] + 3) == 1735289188)
      {
        goto LABEL_86;
      }
    }

    else if (__p.__r_.__value_.__l.__size_ == 9 && *__p.__r_.__value_.__l.__data_ == 0x657463656E6E6F63 && *(__p.__r_.__value_.__r.__words[0] + 8) == 100)
    {
      goto LABEL_36;
    }

    if (__p.__r_.__value_.__l.__size_ != 8 || *__p.__r_.__value_.__l.__data_ != 0x676E697472656C61)
    {
      if (__p.__r_.__value_.__l.__size_ == 11)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
LABEL_103:
        v20 = p_p->__r_.__value_.__r.__words[0];
        v21 = *(p_p->__r_.__value_.__r.__words + 3);
        if (v20 == 0x2D676E696C616964 && v21 == 0x74756F2D676E696CLL)
        {
          v9 = 7;
          goto LABEL_109;
        }

        goto LABEL_107;
      }

      if (__p.__r_.__value_.__l.__size_ != 10 || (*__p.__r_.__value_.__l.__data_ == 0x2D676E696C616964 ? (v19 = *(__p.__r_.__value_.__r.__words[0] + 8) == 28265) : (v19 = 0), !v19))
      {
LABEL_107:
        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "disconnecting"))
        {
          *(a1 + 448) = 0;
LABEL_111:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          return;
        }

        v9 = 8;
LABEL_109:
        *(a1 + 448) = v9;
        goto LABEL_111;
      }

LABEL_100:
      v9 = 6;
      goto LABEL_109;
    }

    goto LABEL_101;
  }
}

void sub_1E4FFC1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipConferenceEndpoint::createChild(uint64_t a1, unsigned int *a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (*(a2 + 1) != 6)
    {
      return 0;
    }

    a2 = *a2;
  }

  else if (v2 != 6)
  {
    return 0;
  }

  v3 = bswap64(*a2 | (*(a2 + 2) << 32));
  v4 = v3 >= 0x7374617475730000;
  v5 = v3 > 0x7374617475730000;
  v6 = !v4;
  if (v5 != v6)
  {
    return 0;
  }

  return result;
}

uint64_t SipConferenceEndpoint::parseChild(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    if (*(a2 + 8) != 12)
    {
      return bambi::XmlParserItem::parseChild(a1, a2, a3);
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (v3 != 12)
    {
      return bambi::XmlParserItem::parseChild(a1, a2, a3);
    }
  }

  v5 = *v4;
  v6 = *(v4 + 8);
  if (v5 != 0x2D79616C70736964 || v6 != 1954047348)
  {
    return bambi::XmlParserItem::parseChild(a1, a2, a3);
  }

  return (*(*a1 + 72))();
}

_BYTE *SipConferenceEndpoint::statusAsString@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) > 8)
  {
    v2 = "unknown";
  }

  else
  {
    v2 = off_1E876BDC0[a1 - 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void SipConferenceUser::~SipConferenceUser(SipConferenceUser *this)
{
  *this = &unk_1F5EE7AE0;
  v2 = *(this + 57);
  v3 = *(this + 58);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 57);
  }

  if (v2)
  {
    *(this + 58) = v2;
    operator delete(v2);
  }

  if (*(this + 447) < 0)
  {
    operator delete(*(this + 53));
  }

  SipUri::~SipUri((this + 8));
}

{
  SipConferenceUser::~SipConferenceUser(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipConferenceUser::setAttribute(uint64_t result, uint64_t *a2, std::string *a3)
{
  v3 = result;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
    if (v4 != 5)
    {
      if (v4 != 6)
      {
        return result;
      }

      if (*a2 != 1769238117 || *(a2 + 2) != 31092)
      {
        return result;
      }

LABEL_17:
      v8 = result + 8;

      return SipUri::fromString(v8, a3);
    }

    goto LABEL_21;
  }

  v6 = a2[1];
  if (v6 == 5)
  {
    a2 = *a2;
LABEL_21:
    if (*a2 == 1952543859 && *(a2 + 4) == 101)
    {
      result = conferenceStateFromName(a3);
      *(v3 + 416) = result;
    }

    return result;
  }

  if (v6 == 6 && **a2 == 1769238117 && *(*a2 + 4) == 31092)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t SipConferenceUser::parseChild(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    if (*(a2 + 8) != 12)
    {
      return bambi::XmlParserItem::parseChild(a1, a2, a3);
    }

    v4 = *a2;
  }

  else
  {
    v4 = a2;
    if (v3 != 12)
    {
      return bambi::XmlParserItem::parseChild(a1, a2, a3);
    }
  }

  v5 = *v4;
  v6 = *(v4 + 8);
  if (v5 != 0x2D79616C70736964 || v6 != 1954047348)
  {
    return bambi::XmlParserItem::parseChild(a1, a2, a3);
  }

  return (*(*a1 + 72))();
}

uint64_t SipConferenceUser::createChild(uint64_t a1, uint64_t **a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 8)
    {
      return 0;
    }

    a2 = *a2;
  }

  else if (v2 != 8)
  {
    return 0;
  }

  if (*a2 == 0x746E696F70646E65)
  {
    operator new();
  }

  return 0;
}

uint64_t SipConferenceUsers::createChild(uint64_t a1, uint64_t **a2)
{
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    if (a2[1] != 4)
    {
      return 0;
    }

    a2 = *a2;
  }

  else if (v2 != 4)
  {
    return 0;
  }

  if (*a2 == 1919251317)
  {
    operator new();
  }

  return 0;
}

uint64_t SipConferenceUsers::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 != v5)
  {
    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = *(a1 + 8);
  }

  *(a1 + 16) = v4;
  v6 = *(a2 + 8);
  if (v6 != *(a2 + 16))
  {
    v7 = *v6;
    operator new();
  }

  return a1;
}

void SipConferenceUsers::~SipConferenceUsers(SipConferenceUsers *this)
{
  *this = &unk_1F5EE7B50;
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  SipConferenceUsers::~SipConferenceUsers(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipConferenceDescription::parseChild(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    v5 = a2[1];
    if (v5 != 7)
    {
      if (v5 != 12)
      {
        if (v5 != 18)
        {
          return bambi::XmlParserItem::parseChild(a1, a2, a3);
        }

        v4 = *a2;
LABEL_10:
        v6 = *v4;
        v7 = v4[1];
        v8 = *(v4 + 8);
        if (v6 == 0x2D6D756D6978616DLL && v7 == 0x756F632D72657375 && v8 == 29806)
        {
          return (*(*a1 + 80))();
        }

        return bambi::XmlParserItem::parseChild(a1, a2, a3);
      }

      if (**a2 != 0x2D79616C70736964 || *(*a2 + 8) != 1954047348)
      {
        return bambi::XmlParserItem::parseChild(a1, a2, a3);
      }

      goto LABEL_36;
    }

    if (**a2 != 1784837491 || *(*a2 + 3) != 1952671082)
    {
      return bambi::XmlParserItem::parseChild(a1, a2, a3);
    }

LABEL_42:
    v15 = *a1;
    return (*(v15 + 72))();
  }

  v3 = *(a2 + 23);
  if (v3 == 7)
  {
    if (*a2 != 1784837491 || *(a2 + 3) != 1952671082)
    {
      return bambi::XmlParserItem::parseChild(a1, a2, a3);
    }

    goto LABEL_42;
  }

  if (v3 != 12)
  {
    v4 = a2;
    if (v3 != 18)
    {
      return bambi::XmlParserItem::parseChild(a1, a2, a3);
    }

    goto LABEL_10;
  }

  if (*a2 != 0x2D79616C70736964 || *(a2 + 2) != 1954047348)
  {
    return bambi::XmlParserItem::parseChild(a1, a2, a3);
  }

LABEL_36:
  v15 = *a1;
  return (*(v15 + 72))();
}

void SipConferenceInfo::SipConferenceInfo(SipConferenceInfo *this, const SipConferenceInfo *a2)
{
  *this = &unk_1F5EE7BC0;
  SipUri::SipUri((this + 8));
  *(this + 54) = &unk_1F5EE7B50;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 58) = this;
  *(this + 59) = &unk_1F5EE7C48;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  SipUri::operator=((this + 8), a2 + 8);
  *(this + 52) = *(a2 + 52);
  *(this + 53) = *(a2 + 53);
  SipConferenceUsers::operator=(this + 432, a2 + 432);
}

void sub_1E4FFCF28(_Unwind_Exception *a1)
{
  SipConferenceDescription::~SipConferenceDescription(v3);
  SipConferenceUsers::~SipConferenceUsers(v2);
  SipUri::~SipUri((v1 + 8));
  _Unwind_Resume(a1);
}

void SipConferenceDescription::~SipConferenceDescription(void **this)
{
  *this = &unk_1F5EE7C48;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F5EE7C48;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5EE7C48;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t SipConferenceInfo::setAttribute(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = result;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v4 = *(a2 + 23);
    if (v4 != 5)
    {
      if (v4 != 6)
      {
        if (v4 != 7)
        {
          return result;
        }

        goto LABEL_10;
      }

      if (*a2 != 1769238117 || *(a2 + 2) != 31092)
      {
        return result;
      }

      goto LABEL_36;
    }

    if (*a2 != 1952543859 || *(a2 + 4) != 101)
    {
      return result;
    }

LABEL_44:
    result = conferenceStateFromName(a3);
    *(v3 + 416) = result;
    return result;
  }

  v5 = a2[1];
  if (v5 == 5)
  {
    if (**a2 != 1952543859 || *(*a2 + 4) != 101)
    {
      return result;
    }

    goto LABEL_44;
  }

  if (v5 != 6)
  {
    if (v5 != 7)
    {
      return result;
    }

    a2 = *a2;
LABEL_10:
    if (*a2 == 1936876918 && *(a2 + 3) == 1852795251)
    {
      if (*(a3 + 23) >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = *a3;
      }

      result = strtoul(v7, 0, 10);
      *(v3 + 420) = result;
    }

    return result;
  }

  if (**a2 != 1769238117 || *(*a2 + 4) != 31092)
  {
    return result;
  }

LABEL_36:
  v11 = result + 8;

  return SipUri::fromString(v11, a3);
}

uint64_t SipConferenceInfo::createChild(uint64_t a1, unint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = a2[1];
    if (v3 != 5)
    {
      if (v3 != 22)
      {
        return 0;
      }

      a2 = *a2;
      goto LABEL_8;
    }

    if (**a2 != 1919251317 || *(*a2 + 4) != 115)
    {
      return 0;
    }

    return a1 + 432;
  }

  v2 = *(a2 + 23);
  if (v2 == 5)
  {
    if (*a2 != 1919251317 || *(a2 + 4) != 115)
    {
      return 0;
    }

    return a1 + 432;
  }

  if (v2 != 22)
  {
    return 0;
  }

LABEL_8:
  v4 = 0x636F6E666572656ELL;
  v5 = bswap64(*a2);
  if (v5 == 0x636F6E666572656ELL && (v4 = 0x63652D6465736372, v5 = bswap64(a2[1]), v5 == 0x63652D6465736372) && (v4 = 0x6372697074696F6ELL, v5 = bswap64(*(a2 + 14)), v5 == 0x6372697074696F6ELL))
  {
    v6 = 0;
  }

  else if (v5 < v4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return a1 + 472;
  }
}

void SipConferenceEndpoint::~SipConferenceEndpoint(void **this)
{
  *this = &unk_1F5EE7A70;
  if (*(this + 447) < 0)
  {
    operator delete(this[53]);
  }

  SipUri::~SipUri((this + 1));
}

{
  *this = &unk_1F5EE7A70;
  if (*(this + 447) < 0)
  {
    operator delete(this[53]);
  }

  SipUri::~SipUri((this + 1));

  JUMPOUT(0x1E69235B0);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SipConferenceEndpoint *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void LazuliGroupModification::~LazuliGroupModification(LazuliGroupModification *this)
{
  *this = &unk_1F5EE7D18;
  *(this + 17) = &unk_1F5EE7D78;
  xpc_release(*(this + 34));
  *(this + 34) = 0;
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  v2 = *(this + 28);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  MEMORY[0x1E69225A0](this + 176);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 18);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  LazuliGroupModification::~LazuliGroupModification(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toLazuliGroupModification::~LazuliGroupModification(LazuliGroupModification *this)
{
  LazuliGroupModification::~LazuliGroupModification((this - 136));
}

{
  LazuliGroupModification::~LazuliGroupModification((this - 136));

  JUMPOUT(0x1E69235B0);
}

void LazuliGroupModification::init(ImsResult *a1, std::chrono::steady_clock::time_point *a2, uint64_t a3, uint64_t a4, const std::string *a5, uint64_t a6)
{
  SipDialog::sipSession(*a3, v42);
  v12 = v42[1];
  if (v42[1])
  {
    v13 = std::__shared_weak_count::lock(v42[1]);
    if (v13)
    {
      v14 = v42[0];
    }

    else
    {
      v14 = 0;
    }

    std::__shared_weak_count::__release_weak(v12);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (*(*a3 + 2960) != 1)
  {
    v17 = 0;
LABEL_29:
    memset(&v42[3], 0, 64);
    v42[0] = &unk_1F5EBDEF8;
    v42[1] = &_bambiDomain;
    LODWORD(v42[2]) = 0x40000000;
    v25 = ImsResult::operator<<<char [40]>(v42, "No fork for group modification for trx ");
    v26 = ImsResult::operator<<<std::string>(v25, &a2[23]);
    v27 = ImsLogContainer::logResult(a2, v26);
    ImsResult::ImsResult(a1, v27);
LABEL_30:
    ImsResult::~ImsResult(v42);
    goto LABEL_31;
  }

  v15 = *(*a3 + 2944);
  v16 = *(v15 + 56);
  v17 = *(v15 + 64);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v16)
  {
    goto LABEL_29;
  }

  if (!v14)
  {
    memset(&v42[3], 0, 64);
    v42[0] = &unk_1F5EBDEF8;
    v42[1] = &_bambiDomain;
    LODWORD(v42[2]) = 0x40000000;
    v28 = ImsResult::operator<<<char [46]>(v42, "No SipSession for group modification for trx ");
    v29 = ImsResult::operator<<<std::string>(v28, &a2[23]);
    v30 = ImsLogContainer::logResult(a2, v29);
    ImsResult::ImsResult(a1, v30);
    goto LABEL_30;
  }

  v31 = v16;
  v32 = a6;
  v33 = a5;
  a2[29].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v18 = *a4;
  if (*(a4 + 8) - *a4 != 408)
  {
    memset(v42, 0, 24);
    std::string::basic_string[abi:ne200100]<0>(__p, ", ");
    ims::join<std::__wrap_iter<SipUri const*>>();
  }

  memset(v42, 0, 408);
  SipUri::SipUri(v42, v18);
  v19 = (*(a2->__d_.__rep_ + 64))(a2);
  (*(a2->__d_.__rep_ + 16))(a2, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "refer/", 6);
  *(v19 + 17) = 0;
  (*(*v19 + 32))(v19, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " ", 1);
  *(v19 + 17) = 0;
  (*(v42[0] + 5))(v42, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " for group ", 11);
  *(v19 + 17) = 0;
  (*(*(*a3 + 240) + 40))(*a3 + 240, v19);
  (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v19 + 17) = 0;
  rep = a2[19].__d_.__rep_;
  if (!rep || (v21 = a2[18].__d_.__rep_, (v22 = std::__shared_weak_count::lock(rep)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v40 = v21;
  v41 = v22;
  atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  v23 = *(a3 + 8);
  v38 = *a3;
  v39 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = v31;
  v37 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = *(v32 + 8);
  __p[3] = *v32;
  v35 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSession::lazuliRefer(v14, v42, v33, a1);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  std::__shared_weak_count::__release_weak(v41);
  SipUri::~SipUri(v42);
LABEL_31:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1E4FFDCD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  _Unwind_Resume(exception_object);
}

void LazuliGroupModification::initAdd(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  *(a1 + 212) = 1;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  v9[0] = *a4;
  v9[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LazuliGroupModification::init(&v11, a1, v10, a3, "INVITE", v9);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if ((*(**(&v11 + 1) + 24))(*(&v11 + 1), v12))
  {
    v7 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Group Chat add participant(s) failure: ", 39);
    *(v7 + 17) = 0;
    (*(v11 + 16))(&v11, v7);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  LazuliGroupModification::setState(a1, v8);
  ImsResult::~ImsResult(&v11);
}

void sub_1E4FFDFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void LazuliGroupModification::setState(std::__shared_weak_count **a1, int a2)
{
  v2 = *(a1 + 52);
  if (v2 != a2)
  {
    *(a1 + 52) = a2;
    v5 = ((*a1)[2].__shared_weak_owners_)(a1);
    ((*a1)->__shared_weak_owners_)(a1, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "state change for ", 17);
    *(v5 + 17) = 0;
    operator<<(v5, *(a1 + 53));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " from ", 6);
    *(v5 + 17) = 0;
    operator<<(v5, v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " to ", 4);
    *(v5 + 17) = 0;
    v6 = operator<<(v5, a2);
    (*(*v5 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if ((a1[26] & 0xFFFFFFFE) == 2)
    {
      v7 = a1[28];
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = a1[27];
          if (v10)
          {
            object = 0;
            memset(__p, 0, sizeof(__p));
            *v14 = 0u;
            v15 = 0u;
            if (*(a1 + 207) < 0)
            {
              std::string::__init_copy_ctor_external(v14, a1[23], a1[24]);
            }

            else
            {
              *v14 = *(a1 + 23);
              *&v15 = a1[25];
            }

            DWORD2(v15) = *(a1 + 53);
            HIDWORD(v15) = a2;
            v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
            v12 = *(a1 + 60);
            LODWORD(__p[0]) = ((v11.__d_.__rep_ - a1[29]) / 1000000.0);
            HIDWORD(__p[0]) = v12;
            if (*(a1 + 271) < 0)
            {
              std::string::__init_copy_ctor_external(&__p[1], a1[31], a1[32]);
            }

            else
            {
              *&__p[1] = *(a1 + 31);
              __p[3] = a1[33];
            }

            v13 = a1[34];
            object = v13;
            if (v13)
            {
              xpc_retain(v13);
            }

            else
            {
              object = xpc_null_create();
            }

            MessageSession::handleParticipantStateChange(v10, v14);
            xpc_release(object);
            object = 0;
            if (SHIBYTE(__p[3]) < 0)
            {
              operator delete(__p[1]);
            }

            if (SBYTE7(v15) < 0)
            {
              operator delete(v14[0]);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }
      }
    }
  }
}

void sub_1E4FFE22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void LazuliGroupModification::initRemove(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  *(a1 + 212) = 2;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  v9[0] = *a4;
  v9[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LazuliGroupModification::init(&v11, a1, v10, a3, &SipRequest::kMethodBye, v9);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if ((*(**(&v11 + 1) + 24))(*(&v11 + 1), v12))
  {
    v7 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Group Chat remove participant(s) failure: ", 42);
    *(v7 + 17) = 0;
    (*(v11 + 16))(&v11, v7);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  LazuliGroupModification::setState(a1, v8);
  ImsResult::~ImsResult(&v11);
}

void sub_1E4FFE450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void LazuliGroupModification::addParticipants(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<LazuliGroupModification,std::allocator<LazuliGroupModification>,LazuliGroupModification::EnforcePrivateConstructor,std::weak_ptr<MessageSession> &,ClientConfig const&,std::string const&,std::shared_ptr<SipDialog> &,0>();
}

void sub_1E4FFE53C(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(exception_object);
}

void LazuliGroupModification::removeParticipants(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<LazuliGroupModification,std::allocator<LazuliGroupModification>,LazuliGroupModification::EnforcePrivateConstructor,std::weak_ptr<MessageSession> &,ClientConfig const&,std::string const&,std::shared_ptr<SipDialog> &,0>();
}

void sub_1E4FFE624(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operator<<(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  switch(a2)
  {
    case 3:
      v4 = "ResponseError";
      v5 = 13;
      break;
    case 2:
      v4 = "ResponseSuccess";
      v5 = 15;
      break;
    case 1:
      v4 = "RequestSent";
      v5 = 11;
      break;
    default:
      v4 = "??";
      v5 = 2;
      break;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v5);
  *(a1 + 17) = 0;
  return a1;
}

{
  v3 = *(a1 + 8);
  if (a2 == 2)
  {
    v4 = "Remove";
    v5 = 6;
  }

  else if (a2 == 1)
  {
    v4 = "Add";
    v5 = 3;
  }

  else
  {
    v4 = "??";
    v5 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v5);
  *(a1 + 17) = 0;
  return a1;
}

void LazuliGroupModification::handleResponse(std::__shared_weak_count **a1, uint64_t a2)
{
  v4 = ((*a1)[2].__shared_weak_owners_)(a1);
  ((*a1)->__shared_weak_owners_)(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "group modification action ", 26);
  *(v4 + 17) = 0;
  operator<<(v4, *(a1 + 53));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " result ", 8);
  *(v4 + 17) = 0;
  (*(*a2 + 16))(a2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " for ", 5);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a1 + 23);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  *(a1 + 60) = *(a2 + 16);
  if ((*(**(a2 + 8) + 24))(*(a2 + 8)))
  {
    v5 = *(a1 + 60);
    (*(**(a2 + 8) + 16))(&v23);
    if (*(a1 + 271) < 0)
    {
      operator delete(a1[31]);
    }

    *(a1 + 31) = v23;
    a1[33] = v24;
  }

  v21 = 0;
  v22 = 0;
  SipResultDomain::responseFromResult(a2, &v21);
  v6 = xpc_array_create(0, 0);
  v7 = MEMORY[0x1E69E9E50];
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1E6924740](v6) == v7)
    {
      xpc_retain(v6);
      v8 = v6;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v9 = xpc_null_create();
  v10 = a1[34];
  a1[34] = v8;
  xpc_release(v10);
  xpc_release(v9);
  if (v21)
  {
    v23 = 0uLL;
    v24 = 0;
    SipResponse::warningHeaderItems(v21, &v23);
    v12 = *(&v23 + 1);
    for (i = v23; i != v12; i = (i + 24))
    {
      memset(&__p, 0, sizeof(__p));
      if (*(i + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *i, *(i + 1));
      }

      else
      {
        v13 = *i;
        __p.__r_.__value_.__r.__words[2] = *(i + 2);
        *&__p.__r_.__value_.__l.__data_ = v13;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v15 = xpc_string_create(p_p);
      if (!v15)
      {
        v15 = xpc_null_create();
      }

      xpc_array_append_value(a1[34], v15);
      xpc_release(v15);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v16 = ((*a1)[2].__shared_weak_owners_)(a1);
    ((*a1)->__shared_weak_owners_)(a1, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "SIP response for lazuli group modification has Warnings? ", 57);
    *(v16 + 17) = 0;
    if (MEMORY[0x1E6924740](a1[34]) == v7 && xpc_array_get_count(a1[34]))
    {
      v17 = "true";
    }

    else
    {
      v17 = "false";
    }

    v18 = strlen(v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), v17, v18);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    __p.__r_.__value_.__r.__words[0] = &v23;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  if ((*(**(a2 + 8) + 24))(*(a2 + 8), *(a2 + 16)))
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  LazuliGroupModification::setState(a1, v19);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_1E4FFEBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void ParticipantStateChangeParams::~ParticipantStateChangeParams(xpc_object_t *this)
{
  xpc_release(this[8]);
  this[8] = 0;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t ims::SharedLoggable<LazuliGroupModification>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<LazuliGroupModification>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void *std::__shared_ptr_emplace<LazuliGroupModification>::__shared_ptr_emplace[abi:ne200100]<LazuliGroupModification::EnforcePrivateConstructor,std::weak_ptr<MessageSession> &,ClientConfig const&,std::string const&,std::shared_ptr<SipDialog> &,std::allocator<LazuliGroupModification>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EE7E98;
  std::construct_at[abi:ne200100]<LazuliGroupModification,LazuliGroupModification::EnforcePrivateConstructor,std::weak_ptr<MessageSession> &,ClientConfig const&,std::string const&,std::shared_ptr<SipDialog> &,LazuliGroupModification*>((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void std::__shared_ptr_emplace<LazuliGroupModification>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE7E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<LazuliGroupModification,LazuliGroupModification::EnforcePrivateConstructor,std::weak_ptr<MessageSession> &,ClientConfig const&,std::string const&,std::shared_ptr<SipDialog> &,LazuliGroupModification*>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a6 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v20, "group.modification");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v25, a4);
  ImsLogContainer::ImsLogContainer(a1, &v20, v25);
  if (v28 == 1 && v27 < 0)
  {
    operator delete(__p);
  }

  if (v21.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(v20);
  }

  std::string::basic_string[abi:ne200100]<0>(v23, "group.modification");
  *&v20 = *a4;
  DWORD2(v20) = *(a4 + 8);
  if (*(a4 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(a4 + 16), *(a4 + 24));
  }

  else
  {
    v21 = *(a4 + 16);
  }

  v22 = *(a4 + 40);
  ims::getQueue(&v32);
  ClientConfig::getLogTag(&v20, &v29);
  if ((v24 & 0x80u) == 0)
  {
    v12 = v23;
  }

  else
  {
    v12 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v13 = v24;
  }

  else
  {
    v13 = v23[1];
  }

  v14 = std::string::insert(&v29, 0, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v31 = v14->__r_.__value_.__r.__words[2];
  v30 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v31 >= 0)
  {
    v16 = &v30;
  }

  else
  {
    v16 = v30;
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v17 = v32;
  *(a1 + 160) = v32;
  if (v17)
  {
    dispatch_retain(v17);
  }

  *(a1 + 168) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 176), "com.apple.ipTelephony", v16);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  *(a1 + 136) = &unk_1F5EE7E70;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  *a1 = &unk_1F5EE7D18;
  *(a1 + 136) = &unk_1F5EE7D78;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 184), *a5, *(a5 + 1));
  }

  else
  {
    v18 = *a5;
    *(a1 + 200) = *(a5 + 2);
    *(a1 + 184) = v18;
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = v10;
  *(a1 + 224) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = xpc_null_create();
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return a1;
}

void MediaSessionQueuedCollectionIterator::MediaSessionQueuedCollectionIterator(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = v4;
  *(a1 + *(v4 - 24)) = a2[2];
  MediaSessionCollection::MediaSessionCollection((a1 + 1));
  a1[1] = &unk_1F5EE8910;
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 24)) = a2[3];
  a1[1] = &unk_1F5EC30C0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = (a1 + 3);
  operator new();
}

void sub_1E4FFF7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MediaSessionCollection *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  shared_owners = v29[6].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_weak(shared_owners);
  }

  std::__list_imp<std::pair<MediaSessionQueue::Action,std::weak_ptr<MediaSessionInterface>>>::clear(v32);
  MediaSessionInterface::~MediaSessionInterface(v31);
  MEMORY[0x1E69225A0](&v29[8].__shared_weak_owners_);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(&v29[7].__shared_owners_);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__shared_weak_count::~__shared_weak_count(v29);
  operator delete(v35);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<MediaSessionInterface>>>>::destroy((v28 - 1), *v28);
  MediaSessionCollection::~MediaSessionCollection(a10);
  _Unwind_Resume(a1);
}

void MediaSessionSRVCCHandover::MediaSessionSRVCCHandover(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  ims::SharedLoggable<RTPSharedPointerBase>::SharedLoggable(a1 + 21);
  v7 = *a2;
  v8 = a2[1];
  v12 = v7;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  MediaSessionQueuedCollectionIterator::MediaSessionQueuedCollectionIterator(a1, off_1F5EE8018);
}

void sub_1E4FFFADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::__tree<unsigned int>::destroy(v26, *(v25 + 128));
  MediaSessionQueuedCollectionIterator::~MediaSessionQueuedCollectionIterator(v25, off_1F5EE8018);
  MEMORY[0x1E69225A0](v25 + 208);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v25 + 176));
  _Unwind_Resume(a1);
}

void MediaSessionSRVCCHandover::~MediaSessionSRVCCHandover(MediaSessionSRVCCHandover *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[5];
  *(this + 1) = &unk_1F5EE7F78;
  std::string::basic_string[abi:ne200100]<0>(v10, "rtp.srvcc");
  v6[0] = 0;
  v9 = 0;
  v5 = ims::debug(v10, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "~MediaSessionSRVCCHandover", 26);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  std::__tree<unsigned int>::destroy(this + 120, *(this + 16));
  MediaSessionQueuedCollectionIterator::~MediaSessionQueuedCollectionIterator(this, a2 + 1);
}

void MediaSessionSRVCCHandover::~MediaSessionSRVCCHandover(MediaSessionSRVCCHandover *this)
{
  MEMORY[0x1E69225A0](v2 + 208);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 22);
}

{
  MediaSessionSRVCCHandover::~MediaSessionSRVCCHandover(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toMediaSessionSRVCCHandover::~MediaSessionSRVCCHandover(MediaSessionSRVCCHandover *this)
{
  MediaSessionSRVCCHandover::~MediaSessionSRVCCHandover((this - 8));
}

{
  MediaSessionSRVCCHandover::~MediaSessionSRVCCHandover((this - 8));

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toMediaSessionSRVCCHandover::~MediaSessionSRVCCHandover(MediaSessionSRVCCHandover *this)
{
  MediaSessionSRVCCHandover::~MediaSessionSRVCCHandover((this + *(*this - 24)));
}

{
  MediaSessionSRVCCHandover::~MediaSessionSRVCCHandover((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

void MediaSessionSRVCCHandover::srvccHandoverStarted(MediaSessionSRVCCHandover *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v12, "rtp.srvcc");
  v10[0] = 0;
  v11 = 0;
  v3 = ims::debug(v2, v10);
  if (this)
  {
    v4 = v3;
    v5 = *(*(*this - 8) + 8);
    v6 = *(v3 + 8);
    v7 = strlen((v5 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, v7);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "::", 2);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "srvccHandoverStarted", 20);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " [activeSessionId=", 18);
    *(v4 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v9, ", ");
    v8 = *(this + 15);
    ims::join<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>();
  }

  __cxa_bad_typeid();
}

void sub_1E5000114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a30 == 1 && a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionSRVCCHandover::srvccHandoverFailed(MediaSessionSRVCCHandover *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v12, "rtp.srvcc");
  v10[0] = 0;
  v11 = 0;
  v3 = ims::debug(v2, v10);
  if (this)
  {
    v4 = v3;
    v5 = *(*(*this - 8) + 8);
    v6 = *(v3 + 8);
    v7 = strlen((v5 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, v7);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "::", 2);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "srvccHandoverFailed", 19);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " [activeSessionId=", 18);
    *(v4 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v9, ", ");
    v8 = *(this + 15);
    ims::join<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>();
  }

  __cxa_bad_typeid();
}

void sub_1E5000504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *MediaSessionSRVCCHandover::srvccHandoverCompleted(MediaSessionSRVCCHandover *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v25, "rtp.srvcc");
  v21[0] = 0;
  v24 = 0;
  v3 = ims::debug(v2, v21);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v4 = v3;
  v5 = *(*(*this - 8) + 8);
  v6 = *(v3 + 8);
  v7 = strlen((v5 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, v7);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "::", 2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "srvccHandoverCompleted", 22);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " [stackId=", 10);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, this + 144);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "]", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v24 == 1 && v23 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v25);
  }

  v8 = *(this + 13);
  if (v8)
  {
    RTPSharedPointerBase::getShared<MediaSessionCollectionIterator>(this, &v17);
    (*(*v8 + 152))(&v19, v8, &v17);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  result = *(this + 7);
  if (result)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    (*(*result + 80))(&v25);
    v10 = v26;
    if (v26 != &v25)
    {
      v11 = 0;
      do
      {
        v12 = v10[2];
        (*(**(this + 7) + 24))(&v15);
        v14 = v15;
        v13 = v16;
        v15 = 0;
        v16 = 0;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        if (v14)
        {
          (*(*v14 + 24))(v14, 0);
        }

        v10 = v10[1];
        v11 = v13;
      }

      while (v10 != &v25);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    return std::__list_imp<unsigned long long>::clear(&v25);
  }

  return result;
}

void sub_1E5000878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionSRVCCHandover::remove(MediaSessionSRVCCHandover *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(block, "rtp.srvcc");
  v18[0] = 0;
  v21 = 0;
  v6 = ims::debug(block, v18);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v7 = v6;
  v8 = *(*(*this - 8) + 8);
  v9 = *(v6 + 8);
  v10 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v8 & 0x7FFFFFFFFFFFFFFFLL, v10);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "remove", 6);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " collection=", 12);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923310](*(v7 + 8), *(this + 7));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(block[0]);
  }

  *a3 = 0;
  a3[1] = 0;
  MediaSessionQueuedCollectionIterator::remove(this, a2);
  if (!(*(**(this + 7) + 56))(*(this + 7)))
  {
    v11 = *(this + 13);
    v12 = *(this + 14);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(*this - 24);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1174405120;
    v16[2] = ___ZN25MediaSessionSRVCCHandover6removeEy_block_invoke;
    v16[3] = &__block_descriptor_tmp_56;
    v14 = this + v13;
    v16[4] = v11;
    v17 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = 0;
    v29 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v28, v14 + 1);
    v15 = *(v14 + 3);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    v23 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke_1;
    v24 = &unk_1F5EE8A18;
    v26 = v28;
    v27 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = v16;
    dispatch_async(v15, block);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_1E5000C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  v32 = *(v30 + 8);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN25MediaSessionSRVCCHandover6removeEy_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        RTPManager::srvccHandoverCompleted(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

uint64_t __copy_helper_block_e8_32c35_ZTSNSt3__18weak_ptrI10RTPManagerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c35_ZTSNSt3__18weak_ptrI10RTPManagerEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t MediaSessionSRVCCHandover::MediaSessionSRVCCQueue::terminate(MediaSessionSRVCCHandover::MediaSessionSRVCCQueue *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 15);
      if (v4)
      {
        v5 = std::string::basic_string[abi:ne200100]<0>(v23, "rtp.srvcc");
        v19[0] = 0;
        v22 = 0;
        v6 = ims::debug(v5, v19);
        v7 = *(*(*this - 8) + 8);
        v8 = strlen((v7 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), v7 & 0x7FFFFFFFFFFFFFFFLL, v8);
        *(v6 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "::", 2);
        *(v6 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "terminate", 9);
        *(v6 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
        *(v6 + 17) = 0;
        v9 = (*(*v4 + 176))(v4);
        MEMORY[0x1E69233B0](*(v6 + 8), v9);
        *(v6 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
        *(v6 + 17) = 0;
        (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v6 + 17) = 0;
        if (v22 == 1 && v21 < 0)
        {
          operator delete(__p);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }

        (*(*v4 + 24))(v4, 0);
LABEL_17:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        return 1;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = std::string::basic_string[abi:ne200100]<0>(v23, "rtp.srvcc");
  v15[0] = 0;
  v18 = 0;
  v11 = ims::debug(v10, v15);
  v12 = *(*(*this - 8) + 8);
  v13 = strlen((v12 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), v12 & 0x7FFFFFFFFFFFFFFFLL, v13);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "::", 2);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "terminate", 9);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " [sessionId=0]", 14);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    operator delete(v16);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v3)
  {
    goto LABEL_17;
  }

  return 1;
}

void MediaSessionQMISRVCCHandover::MediaSessionQMISRVCCHandover(uint64_t *a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  ims::SharedLoggable<RTPSharedPointerBase>::SharedLoggable(a1 + 21);
  v8 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a3 + 1;
  v11 = a3[1];
  v16 = *a3;
  v17 = v11;
  if (a3[2])
  {
    *(v11 + 16) = &v17;
    *a3 = v10;
    *v10 = 0;
    a3[2] = 0;
  }

  else
  {
    v16 = &v17;
  }

  v12 = *a4;
  v13 = a4[1];
  v14 = v12;
  v15 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = v8;
  v22 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = v12;
  v20 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  MediaSessionQueuedCollectionIterator::MediaSessionQueuedCollectionIterator(a1, off_1F5EE81B8);
}

void sub_1E50014CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  std::__tree<unsigned int>::destroy(v37, *(v34 + 128));
  MediaSessionQueuedCollectionIterator::~MediaSessionQueuedCollectionIterator(v34, off_1F5EE81B8);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  std::__tree<unsigned int>::destroy(&a21, a22);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  MEMORY[0x1E69225A0](v34 + 208);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v34 + 176));
  _Unwind_Resume(a1);
}

void MediaSessionQMISRVCCHandover::~MediaSessionQMISRVCCHandover(MediaSessionQMISRVCCHandover *this)
{
  *this = &unk_1F5EE8088;
  *(this + 21) = &unk_1F5EE8190;
  *(this + 1) = &unk_1F5EE8110;
  std::string::basic_string[abi:ne200100]<0>(v9, "rtp.srvcc");
  v5[0] = 0;
  v8 = 0;
  v2 = ims::debug(v9, v5);
  v3 = *(*(*this - 8) + 8);
  v4 = strlen((v3 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), v3 & 0x7FFFFFFFFFFFFFFFLL, v4);
  *(v2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), " destroyed", 10);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  MediaSessionSRVCCHandover::~MediaSessionSRVCCHandover(this, off_1F5EE81B0);
  MEMORY[0x1E69225A0](this + 208);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 22);
}

{
  MediaSessionQMISRVCCHandover::~MediaSessionQMISRVCCHandover(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toMediaSessionQMISRVCCHandover::~MediaSessionQMISRVCCHandover(MediaSessionQMISRVCCHandover *this)
{
  MediaSessionQMISRVCCHandover::~MediaSessionQMISRVCCHandover((this - 8));
}

{
  MediaSessionQMISRVCCHandover::~MediaSessionQMISRVCCHandover((this - 8));

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toMediaSessionQMISRVCCHandover::~MediaSessionQMISRVCCHandover(MediaSessionQMISRVCCHandover *this)
{
  MediaSessionQMISRVCCHandover::~MediaSessionQMISRVCCHandover((this + *(*this - 24)));
}

{
  MediaSessionQMISRVCCHandover::~MediaSessionQMISRVCCHandover((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

void *MediaSessionQMISRVCCHandover::srvccHandoverStarted(MediaSessionQMISRVCCHandover *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v19, "rtp.srvcc");
  v15[0] = 0;
  v18 = 0;
  v2 = ims::debug(&v19, v15);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v3 = v2;
  v4 = *(*(*this - 8) + 8);
  v5 = *(v2 + 8);
  v6 = strlen((v4 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v4 & 0x7FFFFFFFFFFFFFFFLL, v6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "::", 2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "srvccHandoverStarted", 20);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [stackId=", 10);
  *(v3 + 17) = 0;
  (*(*v3 + 32))(v3, this + 144);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " collection=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923310](*(v3 + 8), *(this + 7));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  (*(**(this + 7) + 80))(&v19);
  v7 = v20;
  if (v20 != &v19)
  {
    v8 = 0;
    do
    {
      v9 = v7[2];
      (*(**(this + 7) + 24))(&v13);
      v11 = v13;
      v10 = v14;
      v13 = 0;
      v14 = 0;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }

      (*(*v11 + 40))(v11, 0);
      v7 = v7[1];
      v8 = v10;
    }

    while (v7 != &v19);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  return std::__list_imp<unsigned long long>::clear(&v19);
}

void sub_1E5001B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionQMISRVCCHandover::srvccHandoverFailed(MediaSessionQMISRVCCHandover *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v12, "rtp.srvcc");
  v10[0] = 0;
  v11 = 0;
  v3 = ims::debug(v2, v10);
  if (this)
  {
    v4 = v3;
    v5 = *(*(*this - 8) + 8);
    v6 = *(v3 + 8);
    v7 = strlen((v5 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, v7);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "::", 2);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "srvccHandoverFailed", 19);
    *(v4 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " [sessionId=", 12);
    *(v4 + 17) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v9, ", ");
    v8 = *(this + 15);
    ims::join<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>();
  }

  __cxa_bad_typeid();
}

void sub_1E5001F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::__list_imp<unsigned long long>::clear((v31 - 88));
  _Unwind_Resume(a1);
}

void MediaSessionSRVCCHandover::MediaSessionSRVCCQueue::~MediaSessionSRVCCQueue(MediaSessionSRVCCHandover::MediaSessionSRVCCQueue *this)
{
  *this = &unk_1F5EE8200;
  *(this + 18) = &unk_1F5EE83E8;
  *(this + 1) = &unk_1F5EE8300;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v8, "rtp.srvcc.queue");
  v4[0] = 0;
  v7 = 0;
  v3 = ims::debug(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~MediaSessionSRVCCQueue", 23);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  MediaSessionQueue::~MediaSessionQueue(this, off_1F5EE8408);
  MEMORY[0x1E69225A0](this + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 19);
}

{
  MediaSessionSRVCCHandover::MediaSessionSRVCCQueue::~MediaSessionSRVCCQueue(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toMediaSessionSRVCCHandover::MediaSessionSRVCCQueue::~MediaSessionSRVCCQueue(MediaSessionSRVCCHandover::MediaSessionSRVCCQueue *this)
{
  MediaSessionSRVCCHandover::MediaSessionSRVCCQueue::~MediaSessionSRVCCQueue((this - 8));
}

{
  MediaSessionSRVCCHandover::MediaSessionSRVCCQueue::~MediaSessionSRVCCQueue((this - 8));

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toMediaSessionSRVCCHandover::MediaSessionSRVCCQueue::~MediaSessionSRVCCQueue(MediaSessionSRVCCHandover::MediaSessionSRVCCQueue *this)
{
  MediaSessionSRVCCHandover::MediaSessionSRVCCQueue::~MediaSessionSRVCCQueue((this + *(*this - 24)));
}

{
  MediaSessionSRVCCHandover::MediaSessionSRVCCQueue::~MediaSessionSRVCCQueue((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

void MediaSessionCollection::MediaSessionCollection(MediaSessionCollection *this)
{
  *this = &unk_1F5EC1738;
  v1 = std::string::basic_string[abi:ne200100]<0>(&v7, "rtp.collection");
  v3[0] = 0;
  v6 = 0;
  v2 = ims::debug(v1, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "MediaSessionCollection", 22);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v6 == 1 && v5 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }
}

void sub_1E50022DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void std::__shared_ptr_emplace<MediaSessionQueue>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE8980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void sub_1E50027EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  shared_owners = v26[6].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_weak(shared_owners);
  }

  std::__list_imp<std::pair<MediaSessionQueue::Action,std::weak_ptr<MediaSessionInterface>>>::clear(v29);
  MediaSessionInterface::~MediaSessionInterface(v28);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  MEMORY[0x1E69225A0](&v26[8].__shared_weak_owners_);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(&v26[7].__shared_owners_);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::~__shared_weak_count(v26);
  operator delete(v32);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<MediaSessionSRVCCHandover::MediaSessionSRVCCQueue>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE89D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ims::join<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E5002AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

uint64_t SipStack::SipStack(uint64_t a1, uint64_t *a2, char a3, const std::string *a4, uint64_t a5)
{
  std::string::basic_string[abi:ne200100]<0>(&v36, "sip.stack");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v31, a5);
  ImsLogContainer::ImsLogContainer(a1, &v36, v31);
  if (v34 == 1 && v33 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  *(a1 + 136) = &unk_1F5EBEEC0;
  *(a1 + 144) = &unk_1F5EE8C98;
  std::string::basic_string[abi:ne200100]<0>(v29, "sip.stack");
  v25 = *a5;
  v26 = *(a5 + 8);
  if (*(a5 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *(a5 + 16), *(a5 + 24));
  }

  else
  {
    v27 = *(a5 + 16);
  }

  v28 = *(a5 + 40);
  ims::getQueue(&v37);
  ClientConfig::getLogTag(&v25, &v35);
  if ((v30 & 0x80u) == 0)
  {
    v10 = v29;
  }

  else
  {
    v10 = v29[0];
  }

  if ((v30 & 0x80u) == 0)
  {
    v11 = v30;
  }

  else
  {
    v11 = v29[1];
  }

  v12 = std::string::insert(&v35, 0, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v36;
  }

  else
  {
    v14 = v36.__r_.__value_.__r.__words[0];
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v15 = v37;
  *(a1 + 176) = v37;
  if (v15)
  {
    dispatch_retain(v15);
  }

  *(a1 + 184) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 192), "com.apple.ipTelephony", v14);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v15)
  {
    dispatch_release(v15);
  }

  *(a1 + 152) = &unk_1F5EE8CC8;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  *a1 = &unk_1F5EE8A58;
  *(a1 + 136) = &unk_1F5EE8AE0;
  *(a1 + 144) = &unk_1F5EE8B10;
  *(a1 + 152) = &unk_1F5EE8B40;
  v16 = *a5;
  *(a1 + 208) = *(a5 + 8);
  *(a1 + 200) = v16;
  if (*(a5 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 216), *(a5 + 16), *(a5 + 24));
  }

  else
  {
    v17 = *(a5 + 16);
    *(a1 + 232) = *(a5 + 32);
    *(a1 + 216) = v17;
  }

  v18 = *(a5 + 40);
  *(a1 + 248) = 0u;
  *(a1 + 240) = v18;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  SipStackConfig::SipStackConfig((a1 + 328));
  *(a1 + 2920) = 0;
  SipTimerContainer::SipTimerContainer((a1 + 2928));
  *(a1 + 3096) = 0u;
  std::operator+<char>();
  ImsPowerAssertion::ImsPowerAssertion(a1 + 3112, &v36);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  *(a1 + 3144) = 0u;
  BambiAccessBarring::BambiAccessBarring((a1 + 3160));
  *(a1 + 3488) = 0;
  *(a1 + 3496) = 0;
  *(a1 + 3560) = 0;
  *(a1 + 3568) = 0;
  *(a1 + 3504) = 0u;
  *(a1 + 3520) = 0u;
  *(a1 + 3536) = 0u;
  *(a1 + 3552) = 0;
  *(a1 + 3632) = 0;
  *(a1 + 3640) = 0;
  *(a1 + 3624) = 0;
  *(a1 + 3576) = 0u;
  *(a1 + 3592) = 0u;
  *(a1 + 3608) = 0u;
  *(a1 + 3648) = 0;
  *(a1 + 3664) = 0;
  *(a1 + 3656) = 0;
  *(a1 + 3480) = 0;
  *(a1 + 3448) = 0u;
  *(a1 + 3464) = 0u;
  *(a1 + 3416) = 0u;
  *(a1 + 3432) = 0u;
  ims::NetworkConfig::NetworkConfig((a1 + 3672));
  *(a1 + 4328) = 0u;
  *(a1 + 4344) = 0u;
  *(a1 + 4296) = 0u;
  *(a1 + 4312) = 0u;
  *(a1 + 4264) = 0u;
  *(a1 + 4280) = 0u;
  *(a1 + 4360) = 257;
  *(a1 + 4372) = 0;
  *(a1 + 4376) = 65792;
  *(a1 + 4380) = 0;
  *(a1 + 4384) = 0u;
  *(a1 + 4400) = 0u;
  *(a1 + 4416) = 0u;
  *(a1 + 4432) = 0u;
  *(a1 + 4448) = 0u;
  *(a1 + 4464) = 0u;
  *(a1 + 4480) = 0u;
  *(a1 + 4496) = 0;
  *(a1 + 4504) = 1;
  *(a1 + 4564) = 0;
  *(a1 + 4512) = 0u;
  *(a1 + 4528) = 0u;
  *(a1 + 4544) = 0u;
  *(a1 + 4559) = 0;
  *(a1 + 4576) = 0u;
  *(a1 + 4592) = 0u;
  *(a1 + 4608) = 0u;
  *(a1 + 4624) = 16777217;
  *(a1 + 4628) = 257;
  *(a1 + 4632) = 0;
  *(a1 + 4640) = 0;
  *(a1 + 4648) = 0;
  *(a1 + 296) = a3;
  *(a1 + 297) = -1;
  std::string::operator=((a1 + 4432), a4);
  *(a1 + 3056) = a1 + 136;
  std::string::operator=((a1 + 2976), (a1 + 8));
  v19 = *a5;
  *(a1 + 3008) = *(a5 + 8);
  *(a1 + 3000) = v19;
  std::string::operator=((a1 + 3016), (a5 + 16));
  *(a1 + 3040) = *(a5 + 40);
  v21 = *a2;
  v20 = a2[1];
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3144) = v21;
  v22 = *(a1 + 3152);
  *(a1 + 3152) = v20;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  *(a1 + 3888) = 0;
  *(a1 + 3968) = 1;
  v23 = *(a1 + 3424);
  *(a1 + 3416) = 0;
  *(a1 + 3424) = 0;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  return a1;
}

void sub_1E5003084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  MEMORY[0x1E69225A0](v40 + 192);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v40 + 160));
  ImsLogContainer::~ImsLogContainer(v40);
  _Unwind_Resume(a1);
}

void SipStack::init(SipStack *this)
{
  v6 = *MEMORY[0x1E69E9840];
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v1, this + 20);
  v3 = v1;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  SipUserAgent::create(buf);
}

void sub_1E50039E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<SipStack,std::allocator<SipStack>,std::shared_ptr<BambiCallHandler> &,BOOL &,std::string const&,ClientConfig const&,0>();
}

void sub_1E5003B34(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::destroy(SipStack *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(this + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v16;
    (*(*this + 80))(v16, this);
    if (v17 < 0)
    {
      v3 = v16[0];
    }

    if (*(this + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, *(this + 554), *(this + 555));
    }

    else
    {
      v14 = *(this + 4432);
    }

    __p = v14;
    memset(&v14, 0, sizeof(v14));
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 141558531;
    v19 = 1752392040;
    v20 = 2081;
    v21 = v3;
    v22 = 2080;
    v23 = p_p;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdestroy %s", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }

  v5 = *(this + 34);
  *(this + 33) = 0;
  *(this + 34) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 36);
  *(this + 35) = 0;
  *(this + 36) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 428);
  v8 = 0uLL;
  *(this + 3416) = 0u;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    v8 = 0uLL;
  }

  v9 = *(this + 565);
  *(this + 282) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 567);
  *(this + 283) = 0u;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 365);
  if (v11)
  {
    SipStackConfig::~SipStackConfig(v11);
    MEMORY[0x1E69235B0]();
    *(this + 365) = 0;
  }

  v12 = *(this + 32);
  *(this + 31) = 0;
  *(this + 32) = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E5003D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::~SipStack(SipStack *this)
{
  *this = &unk_1F5EE8A58;
  *(this + 17) = &unk_1F5EE8AE0;
  *(this + 18) = &unk_1F5EE8B10;
  *(this + 19) = &unk_1F5EE8B40;
  SipStack::destroy(this);
  v2 = *(this + 577);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 575);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 573);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 569);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 567);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 565);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 4503) < 0)
  {
    operator delete(*(this + 560));
  }

  if (*(this + 4479) < 0)
  {
    operator delete(*(this + 557));
  }

  if (*(this + 4455) < 0)
  {
    operator delete(*(this + 554));
  }

  if (*(this + 4431) < 0)
  {
    operator delete(*(this + 551));
  }

  if (*(this + 4407) < 0)
  {
    operator delete(*(this + 548));
  }

  ims::StackConfig::~StackConfig(this + 456);
  if (*(this + 3623) < 0)
  {
    operator delete(*(this + 450));
  }

  if (*(this + 3599) < 0)
  {
    operator delete(*(this + 447));
  }

  if (*(this + 3551) < 0)
  {
    operator delete(*(this + 441));
  }

  if (*(this + 3527) < 0)
  {
    operator delete(*(this + 438));
  }

  if (*(this + 3479) < 0)
  {
    operator delete(*(this + 432));
  }

  if (*(this + 3455) < 0)
  {
    operator delete(*(this + 429));
  }

  v8 = *(this + 428);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  BambiAccessBarring::~BambiAccessBarring((this + 3160));
  v9 = *(this + 394);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  ImsPowerAssertion::~ImsPowerAssertion(this + 389);
  v10 = *(this + 388);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  SipTimerContainer::~SipTimerContainer((this + 2928));
  SipStackConfig::~SipStackConfig(this + 41);
  v11 = *(this + 39);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 36);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 34);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 32);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  MEMORY[0x1E69225A0](this + 192);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 20);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  SipStack::~SipStack(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipStack::~SipStack(SipStack *this)
{
  SipStack::~SipStack((this - 136));
}

{
  SipStack::~SipStack((this - 144));
}

{
  SipStack::~SipStack((this - 152));
}

{
  SipStack::~SipStack((this - 136));

  JUMPOUT(0x1E69235B0);
}

{
  SipStack::~SipStack((this - 144));

  JUMPOUT(0x1E69235B0);
}

{
  SipStack::~SipStack((this - 152));

  JUMPOUT(0x1E69235B0);
}

void SipStack::handleTimer(SipStack *this, uint64_t a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = this + 4096;
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v6 == 14)
  {
    v7 = *a2;
    if (v5 >= 0)
    {
      v7 = a2;
    }

    v8 = *v7;
    v9 = *(v7 + 6);
    v10 = v8 == 0x696E49616964654DLL && v9 == 0x72656D695474696ELL;
    if (v10 && *(this + 80) == 1)
    {
      *(this + 80) = 0;
      *(this + 4626) = 0;
      v11 = *(this + 388);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = *(this + 387);
          if (v14)
          {
            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v54, this + 20);
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v46 = &unk_1F5EBDEF8;
            v47 = &_bambiDomain;
            v48 = 1073741830;
            v15 = ImsResult::operator<<<char [21]>(&v46, "media init timed out");
            (*(*v14 + 16))(v14, &v54, v15);
            ImsResult::~ImsResult(&v46);
            if (v55)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v55);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }

      ImsPowerAssertion::deinitialize(this + 3112);
      goto LABEL_74;
    }
  }

  if (v5 < 0)
  {
    if (*(a2 + 8) != 22)
    {
      goto LABEL_32;
    }

    v16 = *a2;
  }

  else
  {
    v16 = a2;
    if (v5 != 22)
    {
      goto LABEL_32;
    }
  }

  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 14);
  if (v17 == 0x697463656E6E6F43 && v18 == 0x7473794879746976 && v19 == 0x7369736572657473)
  {
    v30 = *MEMORY[0x1E69E9840];

    SipStack::handleConnectivityHysteresisTimeout(this);
    return;
  }

LABEL_32:
  v22 = qword_1EE2BD518;
  if (byte_1EE2BD527 >= 0)
  {
    v22 = byte_1EE2BD527;
  }

  if (v6 == v22)
  {
    v23 = v5 >= 0 ? a2 : *a2;
    v24 = byte_1EE2BD527 >= 0 ? &kAccessNetworkRefreshDelayTimer : kAccessNetworkRefreshDelayTimer;
    if (!memcmp(v23, v24, v6))
    {
      IPTelephonyManager::getBambiClient(&v46);
      v31 = v46;
      ims::AccessNetworks::AccessNetworks(&v35, (this + 3432));
      BambiClient::notifyCallsOfAccessNetworkChange(v31, this + 4432, &v35, 0);
      if (v45 < 0)
      {
        operator delete(__p);
      }

      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v41 < 0)
      {
        operator delete(v40);
      }

      if (v39 < 0)
      {
        operator delete(v38);
      }

      if (v37 < 0)
      {
        operator delete(v36);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      goto LABEL_74;
    }
  }

  v25 = qword_1EE2BBE88;
  if (byte_1EE2BBE97 >= 0)
  {
    v25 = byte_1EE2BBE97;
  }

  if (v6 != v25 || (v5 >= 0 ? (v26 = a2) : (v26 = *a2), byte_1EE2BBE97 >= 0 ? (v27 = &kWaitForDeregistrationTimer) : (v27 = kWaitForDeregistrationTimer), memcmp(v26, v27, v6) || (v28 = v4[464], v4[464] = 0, *(this + 80) != 3)))
  {
LABEL_74:
    v32 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!v28)
  {
    v33 = *(this + 24);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(&v46, this);
      v34 = v49 >= 0 ? &v46 : v46;
      *buf = 141558275;
      v57 = 1752392040;
      v58 = 2081;
      v59 = v34;
      _os_log_impl(&dword_1E4C3F000, v33, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sregistration terminated, but I wasn't waiting for deregistration", buf, 0x16u);
      if (v49 < 0)
      {
        operator delete(v46);
      }
    }

    goto LABEL_74;
  }

  v29 = *MEMORY[0x1E69E9840];

  SipStack::internalDeinitialize(this, 1);
}

SipStack *SipStack::handleConnectivityHysteresisTimeout(SipStack *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = this + 4096;
  if ((*(this + 4504) & 1) == 0)
  {
    v2 = this;
    *(this + 4504) = 1;
    v3 = *(this + 24);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v2 + 80))(__p, v2);
      v4 = v10 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v12 = 1752392040;
      v13 = 2081;
      v14 = v4;
      _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sConnectivity hysteresis timer expired, dropping registration", buf, 0x16u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v5 = *(v2 + 31);
    v6 = *(v5 + 336);
    v7 = *(v5 + 344);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v6 + 176))(v6, 17, 0, 1);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    SipTransportLayer::removeConnections(*(v2 + 35), 0, 1, 1);
    v1[536] = 1;
    SipStack::reportDeferralMetric(v2);
  }

  v8 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1E50047D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::internalDeinitialize(SipStack *this, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(this + 80) != 3)
  {
    goto LABEL_46;
  }

  v3 = this + 4096;
  if (a2 && *(this + 4560) == 1)
  {
    v4 = *(this + 24);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    (*(*this + 80))(&__p, this);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
    *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
    v6 = "%{private, mask.hash}swaiting for deregistration before deinitializing";
    goto LABEL_15;
  }

  if (*(this + 4561) == 1)
  {
    v4 = *(this + 24);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    (*(*this + 80))(&__p, this);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
    *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v7;
    v6 = "%{private, mask.hash}salready in internalDeinitialize";
LABEL_15:
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, v6, &buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_46;
  }

  *(this + 4561) = 1;
  if (*(this + 2817) == 1)
  {
    SipStack::cleanUpLazuliMessagesAndSessions(this);
  }

  *(this + 80) = 0;
  BambiDeregisterHandler::stop(*(this + 566));
  v3[530] = 0;
  SipTimerContainer::cancelAllTimers((this + 2928));
  SipUserAgent::deinitialize(*(this + 31));
  SipTransactionLayer::deinitialize(*(this + 33));
  SipTransportLayer::deinitialize(*(this + 35));
  *(this + 297) = -1;
  v8 = *(this + 39);
  *(this + 38) = 0;
  *(this + 39) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v3[464] = 0;
  v9 = *(this + 569);
  *(this + 284) = 0u;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v17 = 0;
  v18 = 0;
  IPTelephonyManager::getBambiClient(&v17, v9);
  v10 = v17;
  if (*(this + 296) == 1)
  {
    std::vector<std::string>::clear[abi:ne200100]((v17 + 800));
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v15, this + 20);
  (*(*v10 + 216))(v10, &v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  SipStack::carrierIdentifier(this, &__p);
  v11 = (this + 4432);
  if (v3[359] < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *(this + 554), *(this + 555));
  }

  else
  {
    *&buf.__r_.__value_.__l.__data_ = *v11;
    buf.__r_.__value_.__r.__words[2] = *(this + 556);
  }

  ImsPrefsManager::unsubscribe(&__p.__r_.__value_.__l.__data_, &buf.__r_.__value_.__l.__data_);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = *(this + 365);
  if (v12)
  {
    if (v3[359] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 554), *(this + 555));
      v12 = *(this + 365);
    }

    else
    {
      *&__p.__r_.__value_.__l.__data_ = *v11;
      __p.__r_.__value_.__r.__words[2] = *(this + 556);
    }

    BambiClient::initializeStack(v10, &__p, v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v13 = *(this + 365);
    if (v13)
    {
      SipStackConfig::~SipStackConfig(v13);
      MEMORY[0x1E69235B0]();
    }

    *(this + 365) = 0;
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v3[465] = 0;
LABEL_46:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E5004B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  *(v25 + 465) = 0;
  _Unwind_Resume(exception_object);
}

void SipStack::initialize(SipStack *this, const SipStackConfig *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  ImsPowerAssertion::initialize((this + 3112), 300.0, *(a2 + 512) == 2, v37);
  ImsResult::~ImsResult(v37);
  *(this + 4562) = 0;
  v4 = *(this + 80);
  if ((v4 - 1) >= 2)
  {
    if (v4 == 3)
    {
      v26 = *(this + 365);
      v27 = *(this + 24);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      if (v26)
      {
        if (!v28)
        {
          goto LABEL_223;
        }

        (*(*this + 80))(v38, this);
        if (v40 >= 0)
        {
          v29 = v38;
        }

        else
        {
          v29 = *v38;
        }

        buf = 141558275;
        buf_4 = 1752392040;
        buf_12 = 2081;
        buf_14 = v29;
        _os_log_impl(&dword_1E4C3F000, v27, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swe already have an initialize pending. Hang on.", &buf, 0x16u);
        if (v40 < 0)
        {
          operator delete(*v38);
        }

        v26 = *(this + 365);
        if (v26)
        {
LABEL_223:
          SipStackConfig::~SipStackConfig(v26);
          MEMORY[0x1E69235B0]();
        }
      }

      else if (v28)
      {
        (*(*this + 80))(v38, this);
        v33 = v40 >= 0 ? v38 : *v38;
        buf = 141558275;
        buf_4 = 1752392040;
        buf_12 = 2081;
        buf_14 = v33;
        _os_log_impl(&dword_1E4C3F000, v27, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdeferring initialization until we've finished previous deinitialize", &buf, 0x16u);
        if (v40 < 0)
        {
          operator delete(*v38);
        }
      }

      operator new();
    }

LABEL_231:
    v31 = *(this + 24);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 80))(v38, this);
      v32 = v40 >= 0 ? v38 : *v38;
      buf = 141558275;
      buf_4 = 1752392040;
      buf_12 = 2081;
      buf_14 = v32;
      _os_log_impl(&dword_1E4C3F000, v31, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sinitializing", &buf, 0x16u);
      if (v40 < 0)
      {
        operator delete(*v38);
      }
    }

    ++*(this + 1141);
    *(this + 80) = 1;
    SipStackConfig::operator=(this + 328, a2);
  }

  if (*a2 != *(this + 82)
    || *(a2 + 1) != *(this + 83)
    || *(a2 + 2) != *(this + 84)
    || *(a2 + 3) != *(this + 85)
    || *(a2 + 4) != *(this + 86)
    || *(a2 + 5) != *(this + 87)
    || *(a2 + 6) != *(this + 88)
    || *(a2 + 7) != *(this + 89)
    || *(a2 + 35) != *(this + 363)
    || *(a2 + 33) != *(this + 361)
    || *(a2 + 34) != *(this + 362)
    || *(a2 + 32) != *(this + 360)
    || *(a2 + 9) != *(this + 91)
    || *(a2 + 40) != *(this + 368)
    || *(a2 + 41) != *(this + 369)
    || !SipUri::equals((a2 + 48), (this + 376), 1)
    || *(a2 + 456) != *(this + 784)
    || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 58, this + 99)
    || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 61, this + 102)
    || !std::operator==[abi:ne200100]<std::string,unsigned int,std::less<std::string>,std::allocator<std::pair<std::string const,unsigned int>>>(a2 + 65, *(this + 106), *(this + 108))
    || *(a2 + 544) != *(this + 872)
    || *(a2 + 545) != *(this + 873)
    || *(a2 + 546) != *(this + 874)
    || *(a2 + 547) != *(this + 875)
    || *(a2 + 548) != *(this + 876)
    || !SipParameterMap::operator==(a2 + 69, this + 880)
    || *(a2 + 148) != *(this + 230)
    || *(a2 + 149) != *(this + 231)
    || *(a2 + 150) != *(this + 232)
    || *(a2 + 151) != *(this + 233)
    || *(a2 + 608) != *(this + 936)
    || *(a2 + 609) != *(this + 937)
    || *(a2 + 610) != *(this + 938)
    || *(a2 + 611) != *(this + 939)
    || *(a2 + 612) != *(this + 940)
    || *(a2 + 613) != *(this + 941)
    || *(a2 + 614) != *(this + 942)
    || *(a2 + 615) != *(this + 943)
    || *(a2 + 616) != *(this + 944)
    || *(a2 + 617) != *(this + 945)
    || *(a2 + 618) != *(this + 946)
    || *(a2 + 619) != *(this + 947)
    || *(a2 + 620) != *(this + 948)
    || *(a2 + 621) != *(this + 949)
    || *(a2 + 622) != *(this + 950)
    || *(a2 + 156) != *(this + 238)
    || *(a2 + 628) != *(this + 956)
    || *(a2 + 158) != *(this + 240)
    || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 80, this + 121)
    || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 83, this + 124)
    || *(a2 + 688) != *(this + 1016)
    || *(a2 + 689) != *(this + 1017)
    || !SipResponseCodeMap::operator==(a2 + 87, this + 1024)
    || !SipResponseCodeMap::operator==(a2 + 91, this + 1056)
    || !SipResponseCodeMap::operator==(a2 + 95, this + 1088)
    || *(a2 + 792) != *(this + 1120)
    || *(a2 + 793) != *(this + 1121)
    || *(a2 + 199) != *(this + 281)
    || *(a2 + 200) != *(this + 282)
    || *(a2 + 201) != *(this + 283)
    || *(a2 + 202) != *(this + 284)
    || *(a2 + 812) != *(this + 1140)
    || *(a2 + 813) != *(this + 1141)
    || *(a2 + 814) != *(this + 1142)
    || *(a2 + 815) != *(this + 1143)
    || !SipAuthConfig::operator==(a2 + 168, this + 209)
    || *(a2 + 816) != *(this + 1144)
    || *(a2 + 205) != *(this + 287)
    || !SipResponseCodeMap::operator==(a2 + 103, this + 1152)
    || *(a2 + 856) != *(this + 1184)
    || *(a2 + 857) != *(this + 1185)
    || *(a2 + 858) != *(this + 1186)
    || *(a2 + 859) != *(this + 1187)
    || *(a2 + 215) != *(this + 297)
    || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 108, this + 149)
    || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 111, this + 152)
    || *(a2 + 912) != *(this + 1240)
    || *(a2 + 913) != *(this + 1241)
    || *(a2 + 914) != *(this + 1242)
    || *(a2 + 915) != *(this + 1243)
    || *(a2 + 918) != *(this + 1246)
    || *(a2 + 919) != *(this + 1247)
    || *(a2 + 920) != *(this + 1248)
    || *(a2 + 921) != *(this + 1249)
    || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 116, this + 157)
    || *(a2 + 238) != *(this + 320)
    || *(a2 + 922) != *(this + 1250)
    || *(a2 + 956) != *(this + 1284)
    || *(a2 + 916) != *(this + 1244)
    || *(a2 + 917) != *(this + 1245)
    || *(a2 + 957) != *(this + 1285)
    || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 120, this + 161)
    || *(a2 + 984) != *(this + 1312)
    || *(a2 + 985) != *(this + 1313)
    || *(a2 + 986) != *(this + 1314)
    || !SipResponseCodeMap::operator==(a2 + 124, this + 1320)
    || *(a2 + 1120) != *(this + 1448)
    || *(a2 + 1121) != *(this + 1449)
    || *(a2 + 1122) != *(this + 1450)
    || *(a2 + 281) != *(this + 363)
    || *(a2 + 143) != *(this + 184)
    || !std::equal[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(*(a2 + 141), a2 + 142, *(this + 182))
    || *(a2 + 1152) != *(this + 1480)
    || *(a2 + 1153) != *(this + 1481)
    || *(a2 + 1154) != *(this + 1482)
    || *(a2 + 1155) != *(this + 1483)
    || *(a2 + 1156) != *(this + 1484)
    || !SipResponseCodeMap::operator==(a2 + 148, this + 1512)
    || *(a2 + 987) != *(this + 1315)
    || *(a2 + 1216) != *(this + 1544)
    || *(a2 + 155) != *(this + 196)
    || !std::equal[abi:ne200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>,std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(*(a2 + 153), a2 + 154, *(this + 194))
    || !SipResponseCodeMap::operator==(a2 + 136, this + 1416)
    || !SpamCategoryMap::operator==(a2 + 156, this + 197)
    || !SpamRiskMap::operator==(a2 + 1272, this + 1600)
    || !SipResponseCodeMap::operator==(a2 + 164, this + 1640))
  {
    goto LABEL_224;
  }

  v5 = *(a2 + 1423);
  if (v5 >= 0)
  {
    v6 = *(a2 + 1423);
  }

  else
  {
    v6 = *(a2 + 176);
  }

  v7 = *(this + 1751);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(this + 217);
  }

  if (v6 != v7)
  {
    goto LABEL_224;
  }

  v9 = v5 >= 0 ? (a2 + 1400) : *(a2 + 175);
  v10 = *(this + 216);
  v11 = v8 >= 0 ? (this + 1728) : *(this + 216);
  if (memcmp(v9, v11, v6) || !SipUri::equals((a2 + 1424), (this + 1752), 1) || *(a2 + 916) != *(this + 1080) || *(a2 + 917) != *(this + 1081) || *(a2 + 1837) != *(this + 2165) || *(a2 + 1989) != *(this + 2317) || *(a2 + 1838) != *(this + 2166) || *(a2 + 1839) != *(this + 2167) || *(a2 + 1841) != *(this + 2169) || *(a2 + 461) != *(this + 543) || *(a2 + 462) != *(this + 544) || *(a2 + 463) != *(this + 545) || *(a2 + 466) != *(this + 548) || *(a2 + 1840) != *(this + 2168) || *(a2 + 474) != *(this + 556) || *(a2 + 475) != *(this + 557) || *(a2 + 476) != *(this + 558) || !std::operator==[abi:ne200100]<SipSecurityAgreementConfig,std::allocator<SipSecurityAgreementConfig>>(*(a2 + 239), *(a2 + 240), *(this + 280), *(this + 281)) || *(a2 + 1936) != *(this + 2264) || *(a2 + 1937) != *(this + 2265) || *(a2 + 1938) != *(this + 2266) || *(a2 + 485) != *(this + 567) || !ImsResultSet::operator==(a2 + 243, this + 2272) || *(a2 + 494) != *(this + 576) || *(a2 + 1980) != *(this + 2308) || *(a2 + 1981) != *(this + 2309) || *(a2 + 1982) != *(this + 2310) || *(a2 + 496) != *(this + 578) || *(a2 + 1988) != *(this + 2316) || *(a2 + 1990) != *(this + 2318) || *(a2 + 1836) != *(this + 2164) || !ImsServiceClasses::operator==(a2 + 500, this + 582) || *(a2 + 498) != *(this + 580) || *(a2 + 1996) != *(this + 2324) || *(a2 + 1997) != *(this + 2325) || *(a2 + 1998) != *(this + 2326) || *(a2 + 510) != *(this + 592) || *(a2 + 2044) != *(this + 2372))
  {
    goto LABEL_224;
  }

  v12 = *(a2 + 2439);
  if (v12 >= 0)
  {
    v13 = *(a2 + 2439);
  }

  else
  {
    v13 = *(a2 + 303);
  }

  v14 = *(this + 2767);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(this + 344);
  }

  if (v13 != v14 || (v12 >= 0 ? (v16 = a2 + 2416) : (v16 = *(a2 + 302)), (v17 = *(this + 343), v15 >= 0) ? (v18 = this + 2744) : (v18 = *(this + 343)), memcmp(v16, v18, v13) || *(a2 + 610) != *(this + 692) || *(a2 + 2444) != *(this + 2772) || *(a2 + 2445) != *(this + 2773) || *(a2 + 2446) != *(this + 2774) || *(a2 + 2447) != *(this + 2775) || *(a2 + 2448) != *(this + 2776) || *(a2 + 309) != *(this + 350) || !std::equal[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(*(a2 + 307), a2 + 308, *(this + 348)) || *(a2 + 2480) != *(this + 2808) || *(a2 + 2481) != *(this + 2809) || *(a2 + 621) != *(this + 703) || *(a2 + 2488) != *(this + 2816) || !BambiCallTerminationReasonsBase::operator==(a2 + 2056, this + 2384) || !BambiCallTerminationReasonsBase::operator==(a2 + 2224, this + 2552) || *(a2 + 512) != *(this + 594) || *(a2 + 2489) != *(this + 2817) || !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 312, this + 353) || *(a2 + 2520) != *(this + 2848) || *(a2 + 2521) != *(this + 2849) || *(a2 + 2522) != *(this + 2850)))
  {
LABEL_224:
    v20 = *(this + 24);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
LABEL_230:
      *(this + 4625) = 1;
      SipStack::deinitialize(this, 0, 0, 0);
      goto LABEL_231;
    }

LABEL_225:
    (*(*this + 80))(v38, this);
    if (v40 >= 0)
    {
      v30 = v38;
    }

    else
    {
      v30 = *v38;
    }

    buf = 141558275;
    buf_4 = 1752392040;
    buf_12 = 2081;
    buf_14 = v30;
    _os_log_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sconfig changed. Reinitializing.", &buf, 0x16u);
    if (v40 < 0)
    {
      operator delete(*v38);
    }

    goto LABEL_230;
  }

  v19 = MsrpTransportConfig::operator==(a2 + 2552, this + 2880);
  v20 = *(this + 24);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (!v19)
  {
    if (!v21)
    {
      goto LABEL_230;
    }

    goto LABEL_225;
  }

  if (v21)
  {
    (*(*this + 80))(v38, this);
    v22 = v40 >= 0 ? v38 : *v38;
    buf = 141558275;
    buf_4 = 1752392040;
    buf_12 = 2081;
    buf_14 = v22;
    _os_log_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sconfig hasn't changed. Not reinitializing.", &buf, 0x16u);
    if (v40 < 0)
    {
      operator delete(*v38);
    }
  }

  v23 = *(this + 388);
  if (v23)
  {
    v24 = std::__shared_weak_count::lock(v23);
    if (v24)
    {
      v25 = *(this + 387);
      if (v25)
      {
        if (*(this + 80) == 2)
        {
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v35, this + 20);
          v44 = 0u;
          v43 = 0u;
          v42 = 0u;
          v41 = 0u;
          *v38 = &unk_1F5EBDEF8;
          *&v38[8] = &_bambiDomain;
          v39 = 0;
          (*(*v25 + 16))(v25, &v35, v38);
          ImsResult::~ImsResult(v38);
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }
        }
      }
    }
  }

  else
  {
    v24 = 0;
  }

  ImsPowerAssertion::deinitialize(this + 3112);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void sub_1E50066B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::deinitialize(SipStack *this, int a2, BOOL a3, char a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = *(this + 80);
  if (v6 != 3)
  {
    if (v6)
    {
      v9 = *(this + 24);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 80))(__p, this);
        v10 = v37 >= 0 ? __p : *__p;
        *buf = 141558275;
        *&buf[4] = 1752392040;
        v33 = 2081;
        v34 = v10;
        _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdeinitializing sip stack", buf, 0x16u);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(*__p);
        }
      }

      *(this + 80) = 3;
      BambiAccessBarring::reset((this + 3160));
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(__p, this + 20);
      v11 = *&__p[8];
      if (*&__p[8])
      {
        atomic_fetch_add_explicit((*&__p[8] + 16), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (a2)
      {
        v12 = *(this + 31);
        v14 = *(v12 + 336);
        v13 = *(v12 + 344);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          v15 = *(v14 + 712);
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        else
        {
          v15 = *(v14 + 712);
        }

        if (v15 == 2)
        {
          v16 = *(this + 24);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = buf;
            (*(*this + 80))(buf, this);
            if (v35 < 0)
            {
              v17 = *buf;
            }

            v18 = SipStack::prefs(this);
            v19 = ImsPrefs::DeregistrationWaitTimeoutMilliseconds(v18);
            std::to_string(&v28, v19);
            if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v20 = &v28;
            }

            else
            {
              v20 = v28.__r_.__value_.__r.__words[0];
            }

            *__p = 141558531;
            *&__p[4] = 1752392040;
            *&__p[12] = 2081;
            *&__p[14] = v17;
            v37 = 2080;
            v38 = v20;
            _os_log_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}swaiting %s ms for deregistration before deinitializing", __p, 0x20u);
            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28.__r_.__value_.__l.__data_);
            }

            if (v35 < 0)
            {
              operator delete(*buf);
            }
          }

          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v31 = 0;
          operator new();
        }
      }

      v21 = *(this + 24);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 80))(buf, this);
        v22 = v35;
        v23 = *buf;
        if (a2)
        {
          v24 = "not registered. Continuing with deinitialization.";
        }

        else
        {
          v24 = "can't wait for deregistration.";
        }

        std::string::basic_string[abi:ne200100]<0>(&v28, v24);
        v25 = buf;
        if (v22 < 0)
        {
          v25 = v23;
        }

        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v28;
        }

        else
        {
          v26 = v28.__r_.__value_.__r.__words[0];
        }

        *__p = 141558531;
        *&__p[4] = 1752392040;
        *&__p[12] = 2081;
        *&__p[14] = v25;
        v37 = 2080;
        v38 = v26;
        _os_log_impl(&dword_1E4C3F000, v21, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s", __p, 0x20u);
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        if (v35 < 0)
        {
          operator delete(*buf);
        }
      }

      SipStack::internalDeinitialize(this, a2);
      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }

    else if ((a4 & 1) == 0)
    {
      IPTelephonyManager::getBambiClient(__p, this);
      v7 = *__p;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v29, this + 20);
      (*(*v7 + 216))(v7, &v29);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (*&__p[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
      }
    }

    goto LABEL_53;
  }

  if (a2)
  {
LABEL_53:
    v27 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = *MEMORY[0x1E69E9840];

  SipStack::internalDeinitialize(this, 0);
}

void sub_1E5006D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipStack::prefs(SipStack *this)
{
  SipStack::carrierIdentifier(this, &__p);
  v1 = ImsPrefsManager::prefs(&__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_1E5006E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::setMediaAppId(SipStack *this, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(this + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = __p;
    (*(*this + 80))(__p, this);
    if (v14 < 0)
    {
      v5 = __p[0];
    }

    std::to_string(&v12, *(this + 297));
    v6 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
    v7 = v12.__r_.__value_.__r.__words[0];
    std::to_string(&v11, a2);
    v8 = &v12;
    if (v6 < 0)
    {
      v8 = v7;
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v11;
    }

    else
    {
      v9 = v11.__r_.__value_.__r.__words[0];
    }

    *buf = 141558787;
    v16 = 1752392040;
    v17 = 2081;
    v18 = v5;
    v19 = 2080;
    v20 = v8;
    v21 = 2080;
    v22 = v9;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}supdating appId from: %s to: %s", buf, 0x2Au);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 297) = a2;
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E5006FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipStack::registered(SipStack *this)
{
  v1 = *(this + 31);
  v3 = *(v1 + 336);
  v2 = *(v1 + 344);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(v3 + 712);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *(v3 + 712);
  }

  return v4 == 2;
}

void SipStack::cleanUpLazuliMessagesAndSessions(SipStack *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(&__p, this);
    v3 = v10 >= 0 ? &__p : __p;
    *buf = 141558275;
    v12 = 1752392040;
    v13 = 2081;
    v14 = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sClean up all lazuli messages and sessions", buf, 0x16u);
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  v4 = *(this + 31);
  v5 = *(v4 + 296);
  v6 = *(v4 + 304);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    SipLazuliManager::endAllMessages(v5);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  IPTelephonyManager::getCallManager(v5, &__p);
  IMSCallManager::terminateAllLazuliSessions(__p);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E50071CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::initializeMedia(SipStack *this)
{
  IPTelephonyManager::getBambiClient(&v6, this);
  v2 = v6;
  if (*(this + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 554), *(this + 555));
  }

  else
  {
    __p = *(this + 4432);
  }

  v3 = *(this + 2372);
  v4 = *(this + 594);
  BambiClient::initializeMediaApplicationId(v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E5007298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::createRequestFromTemplate(uint64_t a1@<X0>, char a2@<W2>, void *a3@<X8>)
{
  v6 = *(a1 + 248);
  ims::AccessNetwork::isWifi((a1 + 3432));
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 296);
  }

  SipMessageEncodingMap::createRequestFromTemplate(v6 + 384, a3);
}

void SipStack::dumpState(SipStack *this, ImsOutStream *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  ims::getStaticLoggerFor("state", &v42);
  size = v42.__r_.__value_.__l.__size_;
  ctu::OsLogContext::~OsLogContext(&v42);
  if (os_log_type_enabled(size, OS_LOG_TYPE_INFO))
  {
    if (*(this + 4455) < 0)
    {
      std::string::__init_copy_ctor_external(&v42, *(this + 554), *(this + 555));
    }

    else
    {
      v42 = *(this + 4432);
    }

    v5 = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
    v6 = v42.__r_.__value_.__r.__words[0];
    SipStack::carrierIdentifier(this, &__p);
    v7 = &v42;
    if (v5 < 0)
    {
      v7 = v6;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v44 = v7;
    v45 = 2080;
    v46 = p_p;
    _os_log_impl(&dword_1E4C3F000, size, OS_LOG_TYPE_INFO, "#I ----- SIP Stack %s (%s) -----", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  ims::getStaticLoggerFor("state", &v42);
  v9 = v42.__r_.__value_.__l.__size_;
  ctu::OsLogContext::~OsLogContext(&v42);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (*(this + 784))
    {
      v10 = "primary";
    }

    else
    {
      v10 = "secondary";
    }

    LODWORD(v42.__r_.__value_.__l.__data_) = 136315138;
    *(v42.__r_.__value_.__r.__words + 4) = v10;
    _os_log_impl(&dword_1E4C3F000, v9, OS_LOG_TYPE_INFO, "#I Device Type: %s", &v42, 0xCu);
  }

  ims::getStaticLoggerFor("state", &v42);
  v11 = v42.__r_.__value_.__l.__size_;
  ctu::OsLogContext::~OsLogContext(&v42);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if (*(this + 2817))
    {
      v12 = "Lazuli";
    }

    else
    {
      v12 = "IMS";
    }

    LODWORD(v42.__r_.__value_.__l.__data_) = 136315138;
    *(v42.__r_.__value_.__r.__words + 4) = v12;
    _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_INFO, "#I Stack Type: %s", &v42, 0xCu);
  }

  ims::getStaticLoggerFor("state", &v42);
  v13 = v42.__r_.__value_.__l.__size_;
  ctu::OsLogContext::~OsLogContext(&v42);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    if (*(this + 2848))
    {
      v14 = "Yes";
    }

    else
    {
      v14 = "No";
    }

    LODWORD(v42.__r_.__value_.__l.__data_) = 136315138;
    *(v42.__r_.__value_.__r.__words + 4) = v14;
    _os_log_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_INFO, "#I Transient: %s", &v42, 0xCu);
  }

  ims::getStaticLoggerFor("state", &v42);
  v15 = v42.__r_.__value_.__l.__size_;
  ctu::OsLogContext::~OsLogContext(&v42);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    if (*(this + 2849))
    {
      v16 = "Yes";
    }

    else
    {
      v16 = "No";
    }

    LODWORD(v42.__r_.__value_.__l.__data_) = 136315138;
    *(v42.__r_.__value_.__r.__words + 4) = v16;
    _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_INFO, "#I PrivateRelay: %s", &v42, 0xCu);
  }

  ims::getStaticLoggerFor("state", &v42);
  v17 = v42.__r_.__value_.__l.__size_;
  ctu::OsLogContext::~OsLogContext(&v42);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    LOWORD(v42.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_INFO, "#I Access Network Info:", &v42, 2u);
  }

  ims::AccessNetworks::log((this + 3432), a2, 4);
  if (*(this + 31))
  {
    ims::getStaticLoggerFor("state", &v42);
    v18 = v42.__r_.__value_.__l.__size_;
    ctu::OsLogContext::~OsLogContext(&v42);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = SipUserAgent::config(*(this + 31));
      asString((v19 + 512));
    }

    if ((*(this + 503) & 0x8000000000000000) != 0)
    {
      if (*(this + 61))
      {
        goto LABEL_41;
      }
    }

    else if (*(this + 503))
    {
LABEL_41:
      ims::getStaticLoggerFor("state", &v42);
      v20 = v42.__r_.__value_.__l.__size_;
      ctu::OsLogContext::~OsLogContext(&v42);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        SipUri::asString(this + 376, &v42);
        v21 = (v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v42 : v42.__r_.__value_.__r.__words[0];
        LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
        *(__p.__r_.__value_.__r.__words + 4) = v21;
        _os_log_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_INFO, "#I Conference Server: %s", &__p, 0xCu);
        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v42.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_50;
    }

    ims::getStaticLoggerFor("state", &v42);
    v22 = v42.__r_.__value_.__l.__size_;
    ctu::OsLogContext::~OsLogContext(&v42);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(v42.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_INFO, "#I Conference Server:  none", &v42, 2u);
    }
  }

LABEL_50:
  ims::getStaticLoggerFor("state", &v42);
  v23 = v42.__r_.__value_.__l.__size_;
  ctu::OsLogContext::~OsLogContext(&v42);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = *(this + 4504) ? "true" : "false";
    std::string::basic_string[abi:ne200100]<0>(&v42, v24);
    v25 = (v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v42 : v42.__r_.__value_.__r.__words[0];
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v25;
    _os_log_impl(&dword_1E4C3F000, v23, OS_LOG_TYPE_INFO, "#I Connectivity: %s", &__p, 0xCu);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  ims::getStaticLoggerFor("state", &v42);
  v26 = v42.__r_.__value_.__l.__size_;
  ctu::OsLogContext::~OsLogContext(&v42);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    std::to_string(&v42, *(this + 1093));
    v27 = (v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v42 : v42.__r_.__value_.__r.__words[0];
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v27;
    _os_log_impl(&dword_1E4C3F000, v26, OS_LOG_TYPE_INFO, "#I SIM Instance: %s", &__p, 0xCu);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  v28 = *(this + 31);
  if (v28)
  {
    v29 = *(v28 + 336);
    v30 = *(v28 + 344);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v29)
    {
      SipRegistrationClient::printRegistrationInfo(v29, a2);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    SipTransportLayer::printTransportInfo(*(this + 35), a2);
    SipTransactionLayer::printTransactions(*(this + 33), a2);
    v31 = *(this + 31);
    v33 = *(v31 + 248);
    v32 = *(v31 + 256);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v33)
    {
      SipDialogManager::printSubscriptions(v33, a2);
      ims::getStaticLoggerFor("state", &v42);
      v34 = v42.__r_.__value_.__l.__size_;
      ctu::OsLogContext::~OsLogContext(&v42);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        LOWORD(v42.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_1E4C3F000, v34, OS_LOG_TYPE_INFO, "#I All Dialogs:", &v42, 2u);
      }

      SipDialogManager::printDialogs(v33, a2);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }
  }

  ims::getStaticLoggerFor("state", &v42);
  v35 = v42.__r_.__value_.__l.__size_;
  ctu::OsLogContext::~OsLogContext(&v42);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    LOWORD(v42.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_1E4C3F000, v35, OS_LOG_TYPE_INFO, "#I Delegates:", &v42, 2u);
  }

  v36 = (this + 4432);
  if (*(this + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, *(this + 554), *(this + 555));
  }

  else
  {
    *&v42.__r_.__value_.__l.__data_ = *v36;
    v42.__r_.__value_.__r.__words[2] = *(this + 556);
  }

  v37 = IMSClientManager::delegateForStack(&v42.__r_.__value_.__l.__data_);
  v38 = v37;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
    if (!v38)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  if (v37)
  {
LABEL_89:
    (*(*v38 + 240))(v38, a2);
  }

LABEL_90:
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  if (*(this + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, *(this + 554), *(this + 555));
  }

  else
  {
    *&v42.__r_.__value_.__l.__data_ = *v36;
    v42.__r_.__value_.__r.__words[2] = *(this + 556);
  }

  IMSClientManager::lazuliDelegateForStack(&v42.__r_.__value_.__l.__data_, &__p);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    LazuliDelegate::dumpState(__p.__r_.__value_.__l.__data_, a2);
  }

  ims::getStaticLoggerFor("state", &v42);
  v39 = v42.__r_.__value_.__l.__size_;
  ctu::OsLogContext::~OsLogContext(&v42);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    LOWORD(v42.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_1E4C3F000, v39, OS_LOG_TYPE_INFO, "#I ----- END -----", &v42, 2u);
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void sub_1E5007C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::reportDeferralMetric(SipStack *this)
{
  v2 = *(this + 31);
  v3 = *(v2 + 336);
  v4 = *(v2 + 344);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 4240);
  if (v5)
  {
    LODWORD(v5) = (*(*v5 + 32))(v5);
  }

  *(this + 1162) = v5;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v6 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  v7 = off_1EE2BBBC0;
  if (!off_1EE2BBBC0)
  {
    IMSMetricsManager::create_default_global(v6);
  }

  if (*(&off_1EE2BBBC0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v8, this + 20);
  IMSMetricsManager::logSignalingReduction(v7, &v8);
}

void SipStack::setConnectivityAvailable(SipStack *this, uint64_t a2)
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = *(this + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(v83, this);
    v5 = v83[23];
    v6 = *v83;
    if (a2)
    {
      v7 = "true";
    }

    else
    {
      v7 = "false";
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v7);
    v8 = v83;
    if (v5 < 0)
    {
      v8 = v6;
    }

    if ((SBYTE7(v75) & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 141558531;
    *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    *&v79 = v9;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sConnectivity reported: %s", &buf, 0x20u);
    if (SBYTE7(v75) < 0)
    {
      operator delete(__p[0]);
    }

    if (v83[23] < 0)
    {
      operator delete(*v83);
    }
  }

  if (*(this + 296) == 1)
  {
    v10 = *(this + 24);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_133;
    }

    (*(*this + 80))(&buf, this);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    *v83 = 141558275;
    *&v83[4] = 1752392040;
    *&v83[12] = 2081;
    *&v83[14] = p_buf;
    v12 = "%{private, mask.hash}sNot updating connectivity for emergency stack";
    goto LABEL_26;
  }

  if (*(this + 4504) == a2)
  {
    v10 = *(this + 24);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_133;
    }

    (*(*this + 80))(&buf, this);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &buf;
    }

    else
    {
      v13 = buf.__r_.__value_.__r.__words[0];
    }

    *v83 = 141558275;
    *&v83[4] = 1752392040;
    *&v83[12] = 2081;
    *&v83[14] = v13;
    v12 = "%{private, mask.hash}sNot updating connectivity when status hasn't changed";
LABEL_26:
    _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, v12, v83, 0x16u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = buf.__r_.__value_.__r.__words[0];
LABEL_28:
      operator delete(v14);
      goto LABEL_133;
    }

    goto LABEL_133;
  }

  *(this + 4504) = a2;
  v15 = *(this + 31);
  v16 = *(v15 + 336);
  v17 = *(v15 + 344);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v16 + 296))(v16, a2, 0);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = SipStack::prefs(this);
  v19 = ImsPrefs::LimitedConnectivityHysteresisTimeoutSeconds(v18);
  v20 = SipStack::prefs(this);
  v21 = ImsPrefs::LimitedConnectivityHysteresisFromRegistration(v20);
  v22 = SipStack::prefs(this);
  if (!ImsPrefs::EnableSignalingReduction(v22) || *(this + 4376) != 1)
  {
    goto LABEL_133;
  }

  if (a2)
  {
    if (v19 != 0 && !v21)
    {
      std::string::basic_string[abi:ne200100]<0>(&buf, "ConnectivityHysteresis");
      SipTimerContainer::cancelTimer(this + 366, &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      *(this + 4632) = 0;
      SipStack::reportDeferralMetric(this);
    }

    goto LABEL_133;
  }

  v23 = *(this + 24);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(&buf, this);
    v24 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    *v83 = 141558275;
    *&v83[4] = 1752392040;
    *&v83[12] = 2081;
    *&v83[14] = v24;
    _os_log_impl(&dword_1E4C3F000, v23, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sEntering limited connectivity, pending transactions may be terminated", v83, 0x16u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v25 = *(this + 33);
  v26 = (*(*this + 64))(this);
  (*(*this + 16))(this, v26);
  SipTransactionLayer::printTransactions(v25, v26);
  v27 = *(this + 33);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  buf.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
  buf.__r_.__value_.__l.__size_ = &_bambiDomain;
  LODWORD(buf.__r_.__value_.__r.__words[2]) = 1073741847;
  v84 = 0;
  memset(v83, 0, sizeof(v83));
  std::unordered_map<std::string,std::shared_ptr<SipClientTransaction>>::unordered_map(v83, v27 + 280);
  v71 = v27;
  v76 = 0;
  *__p = 0u;
  v75 = 0u;
  std::unordered_map<std::string,std::shared_ptr<SipServerTransaction>>::unordered_map(__p, v27 + 320);
  v28 = *&v83[16];
  if (*&v83[16])
  {
    v29 = v27 + 32;
    do
    {
      v31 = v28[5];
      v30 = v28[6];
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v31)
      {
        v32 = v31[33];
        v33 = v31[34];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = (*(*v32 + 120))(v32);
        v35 = *(v34 + 23);
        v36 = v35;
        if ((v35 & 0x80u) != 0)
        {
          v35 = *(v34 + 8);
        }

        if (v35 == 8)
        {
          if (v36 >= 0)
          {
            v37 = v34;
          }

          else
          {
            v37 = *v34;
          }

          v38 = *v37 != *"REGISTER";
          if (!v33)
          {
            goto LABEL_64;
          }

LABEL_63:
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          goto LABEL_64;
        }

        v38 = 1;
        if (v33)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v38 = 0;
      }

LABEL_64:
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (v38)
      {
        v39 = (*(*v31 + 136))(v31);
        v40 = *(*v29 + 64);
        if (v39)
        {
          v41 = v40(v29);
          (*(*v29 + 16))(v29, v41);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "forcing termination of completed transaction ", 45);
          *(v41 + 17) = 0;
          (*(*v31 + 144))(v72, v31);
          (*(*v41 + 40))(v41, v72);
          (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v41 + 17) = 0;
          if (v73 < 0)
          {
            operator delete(v72[0]);
          }

          (*(*v31 + 32))(v31, 7);
        }

        else
        {
          v42 = v40(v29);
          (*(*v29 + 16))(v29, v42);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "Error out transaction ", 22);
          *(v42 + 17) = 0;
          (*(*v31 + 144))(v72, v31);
          (*(*v42 + 40))(v42, v72);
          (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v42 + 17) = 0;
          if (v73 < 0)
          {
            operator delete(v72[0]);
          }

          (*(*v31 + 104))(v31, &buf);
        }
      }

      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      v28 = *v28;
    }

    while (v28);
  }

  v43 = v75;
  if (v75)
  {
    v44 = v71 + 32;
    do
    {
      v46 = v43[5];
      v45 = v43[6];
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v46)
      {
        v47 = v46[33];
        v48 = v46[34];
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v49 = (*(*v47 + 120))(v47);
        v50 = *(v49 + 23);
        v51 = v50;
        if ((v50 & 0x80u) != 0)
        {
          v50 = *(v49 + 8);
        }

        if (v50 == 8)
        {
          if (v51 >= 0)
          {
            v52 = v49;
          }

          else
          {
            v52 = *v49;
          }

          v53 = *v52 != *"REGISTER";
          if (!v48)
          {
            goto LABEL_95;
          }

LABEL_94:
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          goto LABEL_95;
        }

        v53 = 1;
        if (v48)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v53 = 0;
      }

LABEL_95:
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      if (v53)
      {
        v54 = (*(*v46 + 136))(v46);
        v55 = *(*v44 + 64);
        if (v54)
        {
          v56 = v55(v44);
          (*(*v44 + 16))(v44, v56);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "forcing termination of completed transaction ", 45);
          *(v56 + 17) = 0;
          (*(*v46 + 152))(v72, v46);
          (*(*v56 + 40))(v56, v72);
          (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v56 + 17) = 0;
          if (v73 < 0)
          {
            operator delete(v72[0]);
          }

          (*(*v46 + 32))(v46, 7);
        }

        else
        {
          v57 = v55(v44);
          (*(*v44 + 16))(v44, v57);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), "Error out transaction ", 22);
          *(v57 + 17) = 0;
          (*(*v46 + 152))(v72, v46);
          (*(*v57 + 40))(v57, v72);
          (*(*v57 + 64))(v57, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v57 + 17) = 0;
          if (v73 < 0)
          {
            operator delete(v72[0]);
          }

          (*(*v46 + 104))(v46, &buf);
        }
      }

      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      v43 = *v43;
    }

    while (v43);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(__p);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(v83);
  ImsResult::~ImsResult(&buf);
  if (v19 != 0 && !v21)
  {
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&buf, this + 20);
    size = buf.__r_.__value_.__l.__size_;
    if (buf.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((buf.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](size);
      atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "ConnectivityHysteresis");
    if (size)
    {
      atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v77 = 0;
    operator new();
  }

  v58 = *(this + 31);
  if (v58)
  {
    v60 = *(v58 + 336);
    v59 = *(v58 + 344);
    if (!v59)
    {
      if (!v60)
      {
        goto LABEL_121;
      }

      goto LABEL_120;
    }

    atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
    if (v60)
    {
      v61 = *(this + 31);
      v60 = *(v61 + 336);
      v62 = *(v61 + 344);
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        *(this + 580) = 1000 * *(v60 + 680);
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        goto LABEL_121;
      }

LABEL_120:
      *(this + 580) = 1000 * *(v60 + 680);
    }
  }

LABEL_121:
  v64 = *(this + 24);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(v83, this);
    v65 = v83[23];
    v66 = *v83;
    if (v21)
    {
      v67 = "be";
    }

    else
    {
      v67 = "NOT be";
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v67);
    v68 = v83;
    if (v65 < 0)
    {
      v68 = v66;
    }

    if ((SBYTE7(v75) & 0x80u) == 0)
    {
      v69 = __p;
    }

    else
    {
      v69 = __p[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 141558531;
    *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v68;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    *&v79 = v69;
    _os_log_impl(&dword_1E4C3F000, v64, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNOT using connectivity hysteresis timer.  Hysteresis from Registration will %s used.", &buf, 0x20u);
    if (SBYTE7(v75) < 0)
    {
      operator delete(__p[0]);
    }

    if (v83[23] < 0)
    {
      v14 = *v83;
      goto LABEL_28;
    }
  }

LABEL_133:
  v70 = *MEMORY[0x1E69E9840];
}

void sub_1E5008CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 121) < 0)
  {
    operator delete(*(v33 - 144));
  }

  _Unwind_Resume(exception_object);
}

void SipStack::internalStartRegistration(SipStack *this, const SipRegistrationConfig *a2)
{
  *(this + 4624) = 1;
  v4 = *(this + 31);
  v5 = *(v4 + 336);
  v6 = *(v4 + 344);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipRegistrationClient::registerWithConfig(v5, a2, "Initial", 0);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    IPTelephonyManager::getBambiClient(&v13);
    v7 = v13;
    if (ims::AccessNetwork::isLTE((this + 3432)))
    {
      v8 = "NonVoiceLTE";
    }

    else
    {
      v8 = "NoLTE";
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v8);
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v9, this + 20);
    BambiClient::endAllCalls(v7, __p, &v9);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }
}

void sub_1E5008F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::startRegistration(SipStack *this, const SipRegistrationConfig *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(this + 566);
  if (v4[30].i32[0] == 1)
  {
    v4[30].i32[1] = 0;
  }

  else
  {
    BambiDeregisterHandler::stop(v4);
  }

  v5 = SipStack::prefs(this);
  if (ImsPrefs::AllowMultipleAddressesPerProxy(v5))
  {
    for (i = *a2; i != *(a2 + 1); i += 408)
    {
      if (!*(i + 48))
      {
        bzero(__p, 0x688uLL);
        SipRegistrationConfig::SipRegistrationConfig(__p, a2);
        IPTelephonyManager::getBambiClient(&v13);
        v10 = *(v13 + 680);
        v11 = *(v13 + 688);
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        v12 = SipStack::prefs(this);
        ImsPrefs::MaxProxyResolveAttempts(v12);
        operator new();
      }
    }
  }

  v7 = *(this + 24);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 80))(__p, this);
    v8 = v15 >= 0 ? __p : __p[0];
    buf[0] = 141558275;
    *&buf[1] = 1752392040;
    v17 = 2081;
    v18 = v8;
    _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sno proxies need resolving", buf, 0x16u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  SipStack::internalStartRegistration(this, a2);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E50092F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN8SipStack17startRegistrationERK21SipRegistrationConfig_block_invoke(void *a1, SipUri **a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        bzero(v8, 0x688uLL);
        SipRegistrationConfig::SipRegistrationConfig(v8, (a1 + 7));
        if (v8 != a2)
        {
          std::vector<SipUri>::__assign_with_size[abi:ne200100]<SipUri*,SipUri*>(v8, *a2, a2[1], 0xFAFAFAFAFAFAFAFBLL * ((a2[1] - *a2) >> 3));
        }

        SipStack::internalStartRegistration(v5, v8);
        SipRegistrationConfig::~SipRegistrationConfig(v8);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

void __copy_helper_block_e8_40c32_ZTSNSt3__18weak_ptrI8SipStackEE56c27_ZTS21SipRegistrationConfig(void *a1, void *a2)
{
  v2 = a2[6];
  a1[5] = a2[5];
  a1[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  SipRegistrationConfig::SipRegistrationConfig((a1 + 7), (a2 + 7));
}

void sub_1E50094D4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c32_ZTSNSt3__18weak_ptrI8SipStackEE56c27_ZTS21SipRegistrationConfig(uint64_t a1)
{
  SipRegistrationConfig::~SipRegistrationConfig((a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void SipStack::endRegistration(SipStack *this)
{
  v2 = (this + 3416);
  v3 = *(this + 428);
  *v2 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 365);
  if (v4)
  {
    SipStackConfig::~SipStackConfig(v4);
    MEMORY[0x1E69235B0]();
  }

  *(this + 365) = 0;
  if (*(this + 80) == 3)
  {
    IPTelephonyManager::getBambiClient(&v23);
    v5 = v23;
    std::string::basic_string[abi:ne200100]<0>(__p, "Deinitializing");
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v19, this + 20);
    BambiClient::endAllCalls(v5, __p, &v19);
    v6 = v20;
    if (!v20)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  IPTelephonyManager::getBambiClient(&v23);
  v16 = v23;
  std::string::basic_string[abi:ne200100]<0>(__p, "Deregistering");
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v17, this + 20);
  BambiClient::endAllCalls(v16, __p, &v17);
  v6 = v18;
  if (v18)
  {
LABEL_7:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_8:
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v7 = *(this + 31);
  v8 = *(v7 + 280);
  v9 = *(v7 + 288);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipMessageManager::endAllMessages(v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  SipStack::cleanUpLazuliMessagesAndSessions(this);
  v10 = *(this + 31);
  v11 = *(v10 + 248);
  v12 = *(v10 + 256);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialogManager::cancelAllSubscriptions(v11);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 31);
  v14 = *(v13 + 336);
  v15 = *(v13 + 344);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipRegistrationClient::deregister(v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1E50096CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 24);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::terminateLazuliRegistration(uint64_t a1, int a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN8SipStack27terminateLazuliRegistrationE29RegistrationTerminationReason_block_invoke;
  v4[3] = &__block_descriptor_tmp_21;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v8, (a1 + 160));
  v3 = *(a1 + 176);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI8SipStackE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1F5EE8FF8;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void ___ZN8SipStack27terminateLazuliRegistrationE29RegistrationTerminationReason_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 248);
  if (v2)
  {
    v4 = *(v2 + 336);
    v5 = *(v2 + 344);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v4)
    {
      (*(*v4 + 176))(v4, *(a1 + 40), 0, 0);
      SipTransportLayer::removeConnections(*(v1 + 280), 0, 1, 1);
    }

    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E50098FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::handleRegistrationActive(SipStack *this)
{
  SipStack::refreshAccessNetwork(this);
  BambiAccessBarring::registrationStateChanged((this + 3160), 1);
  IPTelephonyManager::getBambiClient(&v11, v2);
  v3 = v11;
  if (*(this + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *(this + 554), *(this + 555));
  }

  else
  {
    v10 = *(this + 4432);
  }

  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4[0] = &unk_1F5EBDEF8;
  v4[1] = &_bambiDomain;
  v5 = 0;
  BambiClient::notifyCallsOfRegistrationChange(v3, &v10, v4, 0);
  ImsResult::~ImsResult(v4);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1E5009A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = *(v10 - 24);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::refreshAccessNetwork(SipStack *this)
{
  v21 = *MEMORY[0x1E69E9840];
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v18, this + 20);
  v2 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = SipStack::prefs(this);
  refreshed = ImsPrefs::AccessNetworkRefreshDelayMilliseconds(v3);
  if (refreshed >= 1)
  {
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = 0;
    operator new();
  }

  IPTelephonyManager::getBambiClient(&v18, refreshed);
  v5 = v18;
  ims::AccessNetworks::AccessNetworks(&v7, (this + 3432));
  BambiClient::notifyCallsOfAccessNetworkChange(v5, this + 4432, &v7, 0);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E5009C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  ims::AccessNetworks::~AccessNetworks(&a9);
  v12 = *(v10 - 96);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  _Unwind_Resume(a1);
}

void SipStack::handleRegistrationError(SipStack *this)
{
  v1 = this;
  v20 = *MEMORY[0x1E69E9840];
  if (*(this + 3981) != 1)
  {
    goto LABEL_11;
  }

  v2 = *(this + 31);
  v3 = *(v2 + 336);
  this = *(v2 + 344);
  if (this)
  {
    atomic_fetch_add_explicit(this + 1, 1uLL, memory_order_relaxed);
    v4 = *(v3 + 712);
    std::__shared_weak_count::__release_shared[abi:ne200100](this);
  }

  else
  {
    v4 = *(v3 + 712);
  }

  if (v4 == 2 && (v5 = SipStack::prefs(v1), this = ImsPrefs::ReRegisterOnCellularHandover(v5), this) && (v6 = SipStack::prefs(v1), this = ImsPrefs::RequireRegistrationOnEPSFallback(v6), this) && (this = ims::AccessNetwork::isLTE((v1 + 3432)), this))
  {
    v7 = *(v1 + 24);
    this = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (this)
    {
      (*(*v1 + 80))(&v18, v1);
      v11 = (v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v18 : v18.__r_.__value_.__r.__words[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v11;
      _os_log_error_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sPending calls will be dropped due to registration error!", buf, 0x16u);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

    v8 = 1;
  }

  else
  {
LABEL_11:
    v8 = 0;
  }

  IPTelephonyManager::getBambiClient(buf, this);
  v9 = *buf;
  if (*(v1 + 4455) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(v1 + 554), *(v1 + 555));
  }

  else
  {
    v18 = *(v1 + 4432);
  }

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12[0] = &unk_1F5EBDEF8;
  v12[1] = &_bambiDomain;
  v13 = 0x40000000;
  BambiClient::notifyCallsOfRegistrationChange(v9, &v18, v12, v8);
  ImsResult::~ImsResult(v12);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E5009EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v28 = *(v26 - 56);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::handleRegistrationTerminated(SipStack *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = this + 4096;
  BambiAccessBarring::registrationStateChanged((this + 3160), 0);
  BambiDeregisterHandler::stop(*(this + 566));
  SipTimerContainer::cancelAllTimers((this + 2928));
  v3 = v2[464];
  v2[464] = 0;
  v2[528] = 1;
  if (*(this + 80) == 3)
  {
    v4 = *(this + 24);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        (*(*this + 80))(&__p, this);
        v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 141558275;
        *&buf[4] = 1752392040;
        *&buf[12] = 2081;
        *&buf[14] = v6;
        _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sregistration terminated. Continuing to deinitialize.", buf, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZN8SipStack28handleRegistrationTerminatedEv_block_invoke;
      v17[3] = &__block_descriptor_tmp_22_0;
      v17[4] = this;
      *buf = 0;
      *&buf[8] = 0;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(buf, this + 20);
      v7 = *(this + 22);
      __p.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
      __p.__r_.__value_.__l.__size_ = 1174405120;
      __p.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI8SipStackE15execute_wrappedEU13block_pointerFvvE_block_invoke;
      v19 = &unk_1F5EE8FF8;
      v21 = *buf;
      v22 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
      }

      v20 = v17;
      dispatch_async(v7, &__p);
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    else if (v5)
    {
      (*(*this + 80))(&__p, this);
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v8;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sregistration terminated, but I wasn't waiting for deregistration", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  IPTelephonyManager::getBambiClient(buf);
  v9 = *buf;
  if (v2[359] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 554), *(this + 555));
  }

  else
  {
    __p = *(this + 4432);
  }

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11[0] = &unk_1F5EBDEF8;
  v11[1] = &_bambiDomain;
  v12 = 1073741839;
  BambiClient::notifyCallsOfRegistrationChange(v9, &__p, v11, 0);
  ImsResult::~ImsResult(v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E500A288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void SipStack::updateRegisteredServices(int8x8_t *a1, int a2, int a3, std::string *a4, uint64_t a5, uint64_t a6, int a7)
{
  v43 = *MEMORY[0x1E69E9840];
  v14 = a1 + 427;
  if ((SipStack::configuredServices(a1) != a2 || SipStack::allRegisteredServices(a1) != a2) && (v14[136].i8[0] & 1) == 0)
  {
    v15 = a1[24];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 80))(&__p, a1);
      v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v16;
      _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sIMS services changed during limited connectivity mode, exiting...", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v14[136].i8[0] = 1;
    v17 = a1[31];
    v18 = *(*&v17 + 336);
    v19 = *(*&v17 + 344);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v18 + 296))(v18, 1, 1);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "ConnectivityHysteresis");
    SipTimerContainer::cancelTimer(a1 + 366, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v20 = a1[24];
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v21)
    {
      v22 = buf;
      (*(*a1 + 80))(buf, a1);
      if (v40 < 0)
      {
        v22 = *buf;
      }

      LoggableString::LoggableString(&v36, a4);
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
      }

      else
      {
        v37 = v36;
      }

      v38 = v37;
      memset(&v37, 0, sizeof(v37));
      v24 = &v38;
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v38.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 141558531;
      *(__p.__r_.__value_.__r.__words + 4) = 1752392040;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2081;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v22;
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
      v42 = v24;
      _os_log_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sreason for updateRegisteredServices: %s", &__p, 0x20u);
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (v40 < 0)
      {
        operator delete(*buf);
      }
    }

    v25 = *(a5 + 23);
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(a5 + 8);
    }

    if (v25)
    {
      std::string::operator=(&a1[548], a5);
    }

    v26 = *(a6 + 23);
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(a6 + 8);
    }

    if (v26)
    {
      std::string::operator=(&a1[551], a6);
    }

    v27 = a1[428];
    *v14 = 0;
    v14[1] = 0;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    BambiDeregisterHandler::handleUpdateRegistration(*&a1[566]);
    v28 = a1[31];
    v29 = *(*&v28 + 336);
    v30 = *(*&v28 + 344);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipRegistrationClient::updateServiceMask(v29, a2, a3, a4, a7);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if ((a2 & 1) == 0)
    {
      IPTelephonyManager::getBambiClient(buf);
      v31 = *buf;
      if (ims::AccessNetwork::isLTE(&a1[429]))
      {
        v32 = "NonVoiceLTE";
      }

      else
      {
        v32 = "NoLTE";
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, v32);
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v34, &a1[20]);
      BambiClient::endAllCalls(v31, &__p, &v34);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }
  }

  else
  {
    if (v21)
    {
      (*(*a1 + 80))(&__p, a1);
      v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v23;
      _os_log_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sservices revoked, deregistering", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    BambiDeregisterHandler::handleEndRegistration(*&a1[566], 0);
    SipStack::cleanUpLazuliMessagesAndSessions(a1);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void sub_1E500A7F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipStack::configuredServices(SipStack *this)
{
  v1 = *(this + 31);
  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 336);
  v2 = *(v1 + 344);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v4 = *(v3 + 1336);
    if (!v2)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v4 = 0;
  if (v2)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v4;
}

uint64_t SipStack::allRegisteredServices(SipStack *this)
{
  v1 = *(this + 31);
  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 336);
  v2 = *(v1 + 344);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v4 = *(v3 + 1304);
    if (!v2)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v4 = 0;
  if (v2)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v4;
}

void SipStack::handleSRVCCRequested(SipStack *this)
{
  v1 = *(this + 566);
  v2 = SipStack::prefs(this);
  v3 = 1000 * ImsPrefs::SRVCCCleanupTimeoutSeconds(v2);

  BambiDeregisterHandler::start(v1, 1, v3);
}

void SipStack::handleFallbackRequested(SipStack *this)
{
  v1 = *(this + 566);
  v2 = SipStack::prefs(this);
  v3 = 1000 * ImsPrefs::CSFBDeregisterTimeoutSeconds(v2);

  BambiDeregisterHandler::start(v1, 2, v3);
}

void SipStack::initiateEmergencyRedial(SipStack *this)
{
  if (*(this + 296) == 1)
  {
    v1 = *(this + 31);
    v2 = *(v1 + 336);
    v3 = *(v1 + 344);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v2 + 176))(v2, 20, -1, 0);
    if (v3)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1E500AA84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipStack::registeredForVoice(SipStack *this)
{
  v1 = *(this + 31);
  v3 = *(v1 + 336);
  v2 = *(v1 + 344);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v3[326];
    v5 = v3[334];
    v6 = v3[178];
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = v3[326];
    v5 = v3[334];
    v6 = v3[178];
  }

  return (v6 == 2) & v4 & v5;
}

uint64_t SipStack::registeredForSms(SipStack *this)
{
  v1 = *(this + 31);
  v3 = *(v1 + 336);
  v2 = *(v1 + 344);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v3[326];
    v5 = v3[334];
    v6 = v3[178];
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = v3[326];
    v5 = v3[334];
    v6 = v3[178];
  }

  if (v6 == 2)
  {
    return ((v4 & v5) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL SipStack::isRegistrationLimitedAccess(SipStack *this)
{
  v1 = *(this + 31);
  v3 = *(v1 + 336);
  v2 = *(v1 + 344);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(v3 + 3840);
    if (v4)
    {
      v5 = (v4 + 448);
    }

    else
    {
      v5 = &SipRegistrationMode::kModeNormal;
    }

    v6 = *v5;
    v7 = SipRegistrationMode::kModeLimitedAccess;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v8 = *(v3 + 3840);
    if (v8)
    {
      v9 = (v8 + 448);
    }

    else
    {
      v9 = &SipRegistrationMode::kModeNormal;
    }

    v6 = *v9;
    v7 = SipRegistrationMode::kModeLimitedAccess;
  }

  return v6 == v7;
}

uint64_t SipStack::isMultisimEnabled(SipStack *this)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  IPTelephonyManager::getBambiClient(&v10);
  BambiClient::sipStacks(v10, &v12);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v1 = v12;
  v2 = v13;
  if (v12 != v13)
  {
    v3 = 0;
    do
    {
      if (!*v1)
      {
        goto LABEL_12;
      }

      v4 = *(*v1 + 248);
      v6 = *(v4 + 336);
      v5 = *(v4 + 344);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = *(v6 + 712);
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      else
      {
        v7 = *(v6 + 712);
      }

      if (v7 == 2)
      {
        v8 = 1;
        if (v3)
        {
          goto LABEL_15;
        }
      }

      else
      {
LABEL_12:
        v8 = v3;
      }

      v1 += 16;
      v3 = v8;
    }

    while (v1 != v2);
  }

  v8 = 0;
LABEL_15:
  v10 = &v12;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v10);
  return v8;
}

void sub_1E500ACDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}