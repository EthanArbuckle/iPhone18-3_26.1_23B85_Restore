@interface AVCRTTSessionDelegate
- (AVCRTTSessionDelegate)initWithOwner:(shared_ptr<AVCRTTSession>)a3 andStackController:(shared_ptr<AVCRTPStackController>)a4;
- (id).cxx_construct;
- (shared_ptr<AVCRTPStackController>)stackController;
- (void)setOwner:(weak_ptr<AVCRTTSession>)a3;
- (void)setStackController:(shared_ptr<AVCRTPStackController>)a3;
- (void)stream:(id)a3 didPause:(BOOL)a4 error:(id)a5;
- (void)stream:(id)a3 didResume:(BOOL)a4 error:(id)a5;
- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)streamDidRTCPTimeOut:(id)a3;
- (void)streamDidRTPTimeOut:(id)a3;
- (void)streamDidServerDie:(id)a3;
- (void)streamDidStop:(id)a3;
- (weak_ptr<AVCRTTSession>)owner;
@end

@implementation AVCRTTSessionDelegate

- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = std::string::basic_string[abi:ne200100]<0>(&v23, "avc.rtt.delegate");
  v19[0] = 0;
  v22 = 0;
  v11 = ims::debug(v10, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "-[AVCRTTSessionDelegate stream:didStart:error:]", 47);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__AVCRTTSessionDelegate_stream_didStart_error___block_invoke;
  v14[3] = &unk_1E8769840;
  v12 = v9;
  v15 = v12;
  v13 = v8;
  v16 = v13;
  v17 = self;
  v18 = a4;
  ims::performBlock(v14);
}

void __47__AVCRTTSessionDelegate_stream_didStart_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = std::string::basic_string[abi:ne200100]<0>(&v41, "avc.rtt.delegate");
    v37[0] = 0;
    v40 = 0;
    v3 = ims::error(v2, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Failed to start session ", 24);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923360](*(v3 + 8), *(a1 + 40));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " error: ", 8);
    *(v3 + 17) = 0;
    v4 = [*(a1 + 32) description];
    v5 = [v4 UTF8String];
    v6 = strlen(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v5, v6);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;

    if (v40 == 1 && v39 < 0)
    {
      operator delete(__p);
    }

    if (v43 < 0)
    {
      operator delete(v41);
    }
  }

  v7 = *(a1 + 48);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(v7 + 8);
      if (v10)
      {
        v11 = v10 + 8;
        (*(*(v10 + 1) + 152))(&v41, v10 + 8);
        if (v42)
        {
          v12 = std::__shared_weak_count::lock(v42);
          if (v12)
          {
            v13 = v41;
          }

          else
          {
            v13 = 0;
          }

          if (v42)
          {
            std::__shared_weak_count::__release_weak(v42);
          }

          if (v13)
          {
            MediaSessionDriver::cancelTimerForRequest((v10 + 8), 1);
            if (v10[355] == 1)
            {
              v10[355] = 0;
              v14 = *(a1 + 56);
              if (v14 == 1)
              {
                if ((*(*v11 + 96))(v10 + 8) == 4)
                {
                  v10[357] = 1;
LABEL_37:
                  AVCRTPSession<AVCTextStream>::pauseAVCSession(v10);
                  goto LABEL_43;
                }

                LOBYTE(v14) = *(a1 + 56);
              }

              v10[353] = v14;
              if (*(a1 + 56))
              {
                v23 = 0;
              }

              else
              {
                v24 = *(a1 + 32);
                if (v24)
                {
                  if ([v24 code] == 32005)
                  {
                    v23 = 7;
                  }

                  else
                  {
                    v23 = 9;
                  }
                }

                else
                {
                  v23 = 9;
                }
              }

              v31 = v10 + 8;
              v32 = v9;
              atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
              (*(*v13 + 16))(v13, &v31, v23);
              v22 = v32;
              if (!v32)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v20 = *(a1 + 56);
              v10[353] = v20;
              if (v20 == 1 && (*(*v11 + 96))(v10 + 8) == 4)
              {
                goto LABEL_37;
              }

              v29 = v10 + 8;
              v30 = v9;
              atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
              if (*(a1 + 56))
              {
                v21 = 0;
              }

              else
              {
                v21 = 9;
              }

              (*(*v13 + 24))(v13, &v29, v21);
              v22 = v30;
              if (!v30)
              {
                goto LABEL_43;
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
LABEL_43:
            if (v12)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }

LABEL_45:
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            return;
          }
        }

        else
        {
          v12 = 0;
        }

        v17 = std::string::basic_string[abi:ne200100]<0>(&v41, "avc.rtt.delegate");
        v25[0] = 0;
        v28 = 0;
        v18 = ims::warn(v17, v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Ignoring didStart notification received for session ", 52);
        *(v18 + 17) = 0;
        v19 = (*(*v11 + 176))(v10 + 8);
        MEMORY[0x1E69233B0](*(v18 + 8), v19);
        *(v18 + 17) = 0;
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v28 == 1 && v27 < 0)
        {
          operator delete(v26);
        }

        if (v43 < 0)
        {
          operator delete(v41);
        }

        goto LABEL_43;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = std::string::basic_string[abi:ne200100]<0>(&v41, "avc.rtt.delegate");
  v33[0] = 0;
  v36 = 0;
  v16 = ims::debug(v15, v33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "-[AVCRTTSessionDelegate stream:didStart:error:]_block_invoke", 60);
  *(v16 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " owner is null", 14);
  *(v16 + 17) = 0;
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v43 < 0)
  {
    operator delete(v41);
  }

  if (v9)
  {
    goto LABEL_45;
  }
}

- (void)streamDidStop:(id)a3
{
  v4 = a3;
  v5 = std::string::basic_string[abi:ne200100]<0>(&v12, "avc.rtt.delegate");
  v8[0] = 0;
  v11 = 0;
  v6 = ims::debug(v5, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "-[AVCRTTSessionDelegate streamDidStop:]", 39);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__AVCRTTSessionDelegate_streamDidStop___block_invoke;
  v7[3] = &unk_1E8769868;
  v7[4] = self;
  ims::performBlock(v7);
}

void __39__AVCRTTSessionDelegate_streamDidStop___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(v1 + 8);
      if (v4)
      {
        v5 = v4 + 8;
        (*(*(v4 + 1) + 152))(&v23, v4 + 8);
        if (v24)
        {
          v6 = std::__shared_weak_count::lock(v24);
          if (v6)
          {
            v7 = v23;
          }

          else
          {
            v7 = 0;
          }

          if (v24)
          {
            std::__shared_weak_count::__release_weak(v24);
          }

          if (v7)
          {
            MediaSessionDriver::cancelTimerForRequest((v4 + 8), 3);
            if ((v4[355] & 1) != 0 || v4[356] == 1)
            {
              v4[356] = 0;
              (*(*v4 + 24))(v4, 0);
            }

            else
            {
              v4[353] = 0;
              v17 = v4 + 8;
              v18 = v3;
              atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
              (*(*v7 + 32))(v7, &v17, 0);
              if (v18)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v18);
              }
            }

LABEL_30:
            if (v6)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v6);
            }

LABEL_32:
            std::__shared_weak_count::__release_shared[abi:ne200100](v3);
            return;
          }
        }

        else
        {
          v6 = 0;
        }

        v10 = std::string::basic_string[abi:ne200100]<0>(&v23, "avc.rtt.delegate");
        v13[0] = 0;
        v16 = 0;
        v11 = ims::warn(v10, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Ignoring didStop notification received for session ", 51);
        *(v11 + 17) = 0;
        v12 = (*(*v5 + 176))(v5);
        MEMORY[0x1E69233B0](*(v11 + 8), v12);
        *(v11 + 17) = 0;
        (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v11 + 17) = 0;
        if (v16 == 1 && v15 < 0)
        {
          operator delete(v14);
        }

        if (v25 < 0)
        {
          operator delete(v23);
        }

        goto LABEL_30;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = std::string::basic_string[abi:ne200100]<0>(&v23, "avc.rtt.delegate");
  v19[0] = 0;
  v22 = 0;
  v9 = ims::debug(v8, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "-[AVCRTTSessionDelegate streamDidStop:]_block_invoke", 52);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " owner is null", 14);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v23);
  }

  if (v3)
  {
    goto LABEL_32;
  }
}

- (void)streamDidServerDie:(id)a3
{
  v4 = a3;
  v5 = std::string::basic_string[abi:ne200100]<0>(&v12, "avc.rtt.delegate");
  v8[0] = 0;
  v11 = 0;
  v6 = ims::debug(v5, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "AVCRTTSessionDelegate::", 23);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "-[AVCRTTSessionDelegate streamDidServerDie:]", 44);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AVCRTTSessionDelegate_streamDidServerDie___block_invoke;
  v7[3] = &unk_1E8769868;
  v7[4] = self;
  ims::performBlock(v7);
}

void __44__AVCRTTSessionDelegate_streamDidServerDie___block_invoke(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(v28, "avc.rtt.delegate");
  v24[0] = 0;
  v27 = 0;
  v3 = ims::error(v2, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "streamDidServerDie callback triggered. ---> AVCONFERENCED HAS CRASHED!!! <---.", 78);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  v4 = *(*(a1 + 32) + 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v18[0] = &unk_1F5EBDEF8;
  v18[1] = &_bambiDomain;
  v19 = 1073741845;
  (*(*v4 + 56))(v4, v18);
  ImsResult::~ImsResult(v18);
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(v5 + 8);
      if (v8)
      {
        v10 = *(v8 + 40);
        v9 = *(v8 + 48);
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v10)
        {
          v11 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v10 + 280, (v8 + 64));
          if (v10 + 288 == v11 || *(v11 + 56) != 1)
          {
            (*(**(*(a1 + 32) + 24) + 32))(*(*(a1 + 32) + 24), v8 + 64, 0);
          }
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

LABEL_24:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(v28, "avc.rtt.delegate");
  v14[0] = 0;
  v17 = 0;
  v13 = ims::debug(v12, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "-[AVCRTTSessionDelegate streamDidServerDie:]_block_invoke", 57);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " owner is null", 14);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v17 == 1 && v16 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v7)
  {
    goto LABEL_24;
  }
}

- (void)stream:(id)a3 didPause:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = std::string::basic_string[abi:ne200100]<0>(&v23, "avc.rtt.delegate");
  v19[0] = 0;
  v22 = 0;
  v11 = ims::debug(v10, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "-[AVCRTTSessionDelegate stream:didPause:error:]", 47);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__AVCRTTSessionDelegate_stream_didPause_error___block_invoke;
  v14[3] = &unk_1E8769840;
  v12 = v9;
  v15 = v12;
  v13 = v8;
  v16 = v13;
  v17 = self;
  v18 = a4;
  ims::performBlock(v14);
}

void __47__AVCRTTSessionDelegate_stream_didPause_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = std::string::basic_string[abi:ne200100]<0>(&v37, "avc.rtt.delegate");
    v33[0] = 0;
    v36 = 0;
    v3 = ims::error(v2, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Failed to pause session ", 24);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923360](*(v3 + 8), *(a1 + 40));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " error: ", 8);
    *(v3 + 17) = 0;
    v4 = [*(a1 + 32) description];
    v5 = [v4 UTF8String];
    v6 = strlen(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v5, v6);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;

    if (v36 == 1 && v35 < 0)
    {
      operator delete(__p);
    }

    if (v39 < 0)
    {
      operator delete(v37);
    }
  }

  v7 = *(a1 + 48);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(v7 + 8);
      if (v10)
      {
        (*(*(v10 + 8) + 152))(&v37, v10 + 8);
        if (v38)
        {
          v11 = std::__shared_weak_count::lock(v38);
          if (v11)
          {
            v12 = v37;
          }

          else
          {
            v12 = 0;
          }

          if (v38)
          {
            std::__shared_weak_count::__release_weak(v38);
          }

          if (v12)
          {
            if (*(v10 + 357) == 1)
            {
              *(v10 + 357) = 0;
              v27 = v10 + 8;
              v28 = v9;
              atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
              if (*(a1 + 56))
              {
                v13 = 0;
              }

              else
              {
                v13 = 9;
              }

              (*(*v12 + 16))(v12, &v27, v13);
              v14 = v28;
              if (!v28)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v25 = v10 + 8;
              v26 = v9;
              atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
              if (*(a1 + 56))
              {
                v20 = 0;
              }

              else
              {
                v20 = 9;
              }

              (*(*v12 + 24))(v12, &v25, v20);
              v14 = v26;
              if (!v26)
              {
                goto LABEL_42;
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
LABEL_42:
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }

LABEL_44:
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            return;
          }
        }

        else
        {
          v11 = 0;
        }

        v17 = std::string::basic_string[abi:ne200100]<0>(&v37, "avc.rtt.delegate");
        v21[0] = 0;
        v24 = 0;
        v18 = ims::warn(v17, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Ignoring didPause notification received for session ", 52);
        *(v18 + 17) = 0;
        v19 = (*(*(v10 + 8) + 176))(v10 + 8);
        MEMORY[0x1E69233B0](*(v18 + 8), v19);
        *(v18 + 17) = 0;
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v24 == 1 && v23 < 0)
        {
          operator delete(v22);
        }

        if (v39 < 0)
        {
          operator delete(v37);
        }

        goto LABEL_42;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = std::string::basic_string[abi:ne200100]<0>(&v37, "avc.rtt.delegate");
  v29[0] = 0;
  v32 = 0;
  v16 = ims::debug(v15, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "-[AVCRTTSessionDelegate stream:didPause:error:]_block_invoke", 60);
  *(v16 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " owner is null", 14);
  *(v16 + 17) = 0;
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v39 < 0)
  {
    operator delete(v37);
  }

  if (v9)
  {
    goto LABEL_44;
  }
}

- (void)stream:(id)a3 didResume:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = std::string::basic_string[abi:ne200100]<0>(&v23, "avc.rtt.delegate");
  v19[0] = 0;
  v22 = 0;
  v11 = ims::debug(v10, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "-[AVCRTTSessionDelegate stream:didResume:error:]", 48);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__AVCRTTSessionDelegate_stream_didResume_error___block_invoke;
  v14[3] = &unk_1E8769840;
  v12 = v9;
  v15 = v12;
  v13 = v8;
  v16 = v13;
  v17 = self;
  v18 = a4;
  ims::performBlock(v14);
}

void __48__AVCRTTSessionDelegate_stream_didResume_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = std::string::basic_string[abi:ne200100]<0>(&v35, "avc.rtt.delegate");
    v31[0] = 0;
    v34 = 0;
    v3 = ims::error(v2, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Failed to resume session ", 25);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923360](*(v3 + 8), *(a1 + 40));
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " error: ", 8);
    *(v3 + 17) = 0;
    v4 = [*(a1 + 32) description];
    v5 = [v4 UTF8String];
    v6 = strlen(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v5, v6);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;

    if (v34 == 1 && v33 < 0)
    {
      operator delete(__p);
    }

    if (v37 < 0)
    {
      operator delete(v35);
    }
  }

  v7 = *(a1 + 48);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(v7 + 8);
      if (v10)
      {
        v12 = *(v10 + 8);
        v11 = v10 + 8;
        (*(v12 + 152))(&v35, v11);
        if (v36)
        {
          v13 = std::__shared_weak_count::lock(v36);
          if (v13)
          {
            v14 = v35;
          }

          else
          {
            v14 = 0;
          }

          if (v36)
          {
            std::__shared_weak_count::__release_weak(v36);
          }

          if (v14)
          {
            v25 = v11;
            v26 = v9;
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            if (*(a1 + 56))
            {
              v15 = 0;
            }

            else
            {
              v15 = 9;
            }

            (*(*v14 + 24))(v14, &v25, v15);
            if (v26)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }

LABEL_36:
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

LABEL_38:
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            return;
          }
        }

        else
        {
          v13 = 0;
        }

        v18 = std::string::basic_string[abi:ne200100]<0>(&v35, "avc.rtt.delegate");
        v21[0] = 0;
        v24 = 0;
        v19 = ims::warn(v18, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Ignoring didResume notification received for session ", 53);
        *(v19 + 17) = 0;
        v20 = (*(*v11 + 176))(v11);
        MEMORY[0x1E69233B0](*(v19 + 8), v20);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v19 + 17) = 0;
        if (v24 == 1 && v23 < 0)
        {
          operator delete(v22);
        }

        if (v37 < 0)
        {
          operator delete(v35);
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = std::string::basic_string[abi:ne200100]<0>(&v35, "avc.rtt.delegate");
  v27[0] = 0;
  v30 = 0;
  v17 = ims::debug(v16, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "-[AVCRTTSessionDelegate stream:didResume:error:]_block_invoke", 61);
  *(v17 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " owner is null", 14);
  *(v17 + 17) = 0;
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v37 < 0)
  {
    operator delete(v35);
  }

  if (v9)
  {
    goto LABEL_38;
  }
}

- (void)streamDidRTPTimeOut:(id)a3
{
  v4 = a3;
  v5 = std::string::basic_string[abi:ne200100]<0>(&v12, "avc.rtt.delegate");
  v8[0] = 0;
  v11 = 0;
  v6 = ims::debug(v5, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "-[AVCRTTSessionDelegate streamDidRTPTimeOut:]", 45);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__AVCRTTSessionDelegate_streamDidRTPTimeOut___block_invoke;
  v7[3] = &unk_1E8769868;
  v7[4] = self;
  ims::performBlock(v7);
}

void __45__AVCRTTSessionDelegate_streamDidRTPTimeOut___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(v1 + 8);
      if (v4)
      {
        v6 = *(v4 + 8);
        v5 = v4 + 8;
        (*(v6 + 152))(&v24, v5);
        if (v25)
        {
          v7 = std::__shared_weak_count::lock(v25);
          if (v7)
          {
            v8 = v24;
          }

          else
          {
            v8 = 0;
          }

          if (v25)
          {
            std::__shared_weak_count::__release_weak(v25);
          }

          if (v8)
          {
            v18 = v5;
            v19 = v3;
            atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
            (*(*v8 + 40))(v8, &v18, 5);
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }

LABEL_27:
            if (v7)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v7);
            }

LABEL_29:
            std::__shared_weak_count::__release_shared[abi:ne200100](v3);
            return;
          }
        }

        else
        {
          v7 = 0;
        }

        v11 = std::string::basic_string[abi:ne200100]<0>(&v24, "avc.rtt.delegate");
        v14[0] = 0;
        v17 = 0;
        v12 = ims::warn(v11, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Ignoring RTP timeout notification received for session ", 55);
        *(v12 + 17) = 0;
        v13 = (*(*v5 + 176))(v5);
        MEMORY[0x1E69233B0](*(v12 + 8), v13);
        *(v12 + 17) = 0;
        (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v12 + 17) = 0;
        if (v17 == 1 && v16 < 0)
        {
          operator delete(v15);
        }

        if (v26 < 0)
        {
          operator delete(v24);
        }

        goto LABEL_27;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = std::string::basic_string[abi:ne200100]<0>(&v24, "avc.rtt.delegate");
  v20[0] = 0;
  v23 = 0;
  v10 = ims::debug(v9, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "-[AVCRTTSessionDelegate streamDidRTPTimeOut:]_block_invoke", 58);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " owner is null", 14);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v24);
  }

  if (v3)
  {
    goto LABEL_29;
  }
}

- (void)streamDidRTCPTimeOut:(id)a3
{
  v4 = a3;
  v5 = std::string::basic_string[abi:ne200100]<0>(&v12, "avc.rtt.delegate");
  v8[0] = 0;
  v11 = 0;
  v6 = ims::debug(v5, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "-[AVCRTTSessionDelegate streamDidRTCPTimeOut:]", 46);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AVCRTTSessionDelegate_streamDidRTCPTimeOut___block_invoke;
  v7[3] = &unk_1E8769868;
  v7[4] = self;
  ims::performBlock(v7);
}

void __46__AVCRTTSessionDelegate_streamDidRTCPTimeOut___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(v1 + 8);
      if (v4)
      {
        v6 = *(v4 + 8);
        v5 = v4 + 8;
        (*(v6 + 152))(&v24, v5);
        if (v25)
        {
          v7 = std::__shared_weak_count::lock(v25);
          if (v7)
          {
            v8 = v24;
          }

          else
          {
            v8 = 0;
          }

          if (v25)
          {
            std::__shared_weak_count::__release_weak(v25);
          }

          if (v8)
          {
            v18 = v5;
            v19 = v3;
            atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
            (*(*v8 + 40))(v8, &v18, 6);
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }

LABEL_27:
            if (v7)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v7);
            }

LABEL_29:
            std::__shared_weak_count::__release_shared[abi:ne200100](v3);
            return;
          }
        }

        else
        {
          v7 = 0;
        }

        v11 = std::string::basic_string[abi:ne200100]<0>(&v24, "avc.rtt.delegate");
        v14[0] = 0;
        v17 = 0;
        v12 = ims::warn(v11, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Ignoring RTCP timeout notification received for session ", 56);
        *(v12 + 17) = 0;
        v13 = (*(*v5 + 176))(v5);
        MEMORY[0x1E69233B0](*(v12 + 8), v13);
        *(v12 + 17) = 0;
        (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v12 + 17) = 0;
        if (v17 == 1 && v16 < 0)
        {
          operator delete(v15);
        }

        if (v26 < 0)
        {
          operator delete(v24);
        }

        goto LABEL_27;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = std::string::basic_string[abi:ne200100]<0>(&v24, "avc.rtt.delegate");
  v20[0] = 0;
  v23 = 0;
  v10 = ims::debug(v9, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "-[AVCRTTSessionDelegate streamDidRTCPTimeOut:]_block_invoke", 59);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " owner is null", 14);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v24);
  }

  if (v3)
  {
    goto LABEL_29;
  }
}

- (AVCRTTSessionDelegate)initWithOwner:(shared_ptr<AVCRTTSession>)a3 andStackController:(shared_ptr<AVCRTPStackController>)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = std::string::basic_string[abi:ne200100]<0>(&v23, "avc.rtt.sessiondelegate");
  v19[0] = 0;
  v22 = 0;
  v8 = ims::debug(v7, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "-[AVCRTTSessionDelegate initWithOwner:andStackController:]", 58);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  v18.receiver = self;
  v18.super_class = AVCRTTSessionDelegate;
  v9 = [(AVCRTTSessionDelegate *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v12 = *var0;
    v11 = *(var0 + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
    }

    cntrl = v9->owner.__cntrl_;
    v10->owner.__ptr_ = v12;
    v10->owner.__cntrl_ = v11;
    if (cntrl)
    {
      std::__shared_weak_count::__release_weak(cntrl);
    }

    v15 = *var1;
    v14 = *(var1 + 1);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = v10->stackController.__cntrl_;
    v10->stackController.__ptr_ = v15;
    v10->stackController.__cntrl_ = v14;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  return v10;
}

- (weak_ptr<AVCRTTSession>)owner
{
  cntrl = self->owner.__cntrl_;
  *v2 = self->owner.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 2, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setOwner:(weak_ptr<AVCRTTSession>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  cntrl = self->owner.__cntrl_;
  self->owner.__ptr_ = v4;
  self->owner.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_weak(cntrl);
  }
}

- (shared_ptr<AVCRTPStackController>)stackController
{
  cntrl = self->stackController.__cntrl_;
  *v2 = self->stackController.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setStackController:(shared_ptr<AVCRTPStackController>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->stackController.__cntrl_;
  self->stackController.__ptr_ = v4;
  self->stackController.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end