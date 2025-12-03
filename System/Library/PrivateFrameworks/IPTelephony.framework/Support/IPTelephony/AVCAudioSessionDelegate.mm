@interface AVCAudioSessionDelegate
- (AVCAudioSessionDelegate)initWithOwner:(shared_ptr<AVCAudioSession>)owner andStackController:(shared_ptr<AVCRTPStackController>)controller;
- (id).cxx_construct;
- (shared_ptr<AVCRTPStackController>)stackController;
- (void)handleRTCPPacketWithBlock:(id)block;
- (void)setOwner:(weak_ptr<AVCAudioSession>)owner;
- (void)setStackController:(shared_ptr<AVCRTPStackController>)controller;
- (void)stream:(id)stream didPause:(BOOL)pause error:(id)error;
- (void)stream:(id)stream didReceiveDTMFEventWithDigit:(char)digit;
- (void)stream:(id)stream didReceiveRTCPPackets:(id)packets;
- (void)stream:(id)stream didResume:(BOOL)resume error:(id)error;
- (void)stream:(id)stream didStart:(BOOL)start error:(id)error;
- (void)stream:(id)stream updateInputFrequencyLevel:(id)level;
- (void)stream:(id)stream updateOutputFrequencyLevel:(id)level;
- (void)streamDidRTCPTimeOut:(id)out;
- (void)streamDidRTPTimeOut:(id)out;
- (void)streamDidServerDie:(id)die;
- (void)streamDidStop:(id)stop;
- (weak_ptr<AVCAudioSession>)owner;
@end

@implementation AVCAudioSessionDelegate

- (void)stream:(id)stream didStart:(BOOL)start error:(id)error
{
  streamCopy = stream;
  errorCopy = error;
  v10 = std::string::basic_string[abi:ne200100]<0>(&v23, "avc.audio.delegate");
  v19[0] = 0;
  v22 = 0;
  v11 = ims::debug(v10, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "-[AVCAudioSessionDelegate stream:didStart:error:]", 49);
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
  v14[2] = __49__AVCAudioSessionDelegate_stream_didStart_error___block_invoke;
  v14[3] = &unk_1E8769840;
  v12 = errorCopy;
  v15 = v12;
  v13 = streamCopy;
  v16 = v13;
  selfCopy = self;
  startCopy = start;
  ims::performBlock(v14);
}

void __49__AVCAudioSessionDelegate_stream_didStart_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = std::string::basic_string[abi:ne200100]<0>(&v41, "avc.audio.delegate");
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
            MediaSessionDriver::cancelTimerForRequest((v10 + 8), 0);
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
                  AVCRTPSession<AVCAudioStream>::pauseAVCSession(v10);
                  goto LABEL_43;
                }

                LOBYTE(v14) = *(a1 + 56);
              }

              v10[353] = v14;
              v10[354] = *(a1 + 56) ^ 1;
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
              v10[354] = v20 ^ 1;
              if (*(a1 + 56) == 1 && (*(*v11 + 96))(v10 + 8) == 4)
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

        v17 = std::string::basic_string[abi:ne200100]<0>(&v41, "avc.audio.delegate");
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

  v15 = std::string::basic_string[abi:ne200100]<0>(&v41, "avc.audio.delegate");
  v33[0] = 0;
  v36 = 0;
  v16 = ims::debug(v15, v33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "-[AVCAudioSessionDelegate stream:didStart:error:]_block_invoke", 62);
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

- (void)stream:(id)stream didPause:(BOOL)pause error:(id)error
{
  streamCopy = stream;
  errorCopy = error;
  v10 = std::string::basic_string[abi:ne200100]<0>(&v23, "avc.audio.delegate");
  v19[0] = 0;
  v22 = 0;
  v11 = ims::debug(v10, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "-[AVCAudioSessionDelegate stream:didPause:error:]", 49);
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
  v14[2] = __49__AVCAudioSessionDelegate_stream_didPause_error___block_invoke;
  v14[3] = &unk_1E8769840;
  v12 = errorCopy;
  v15 = v12;
  v13 = streamCopy;
  v16 = v13;
  selfCopy = self;
  pauseCopy = pause;
  ims::performBlock(v14);
}

void __49__AVCAudioSessionDelegate_stream_didPause_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = std::string::basic_string[abi:ne200100]<0>(&v37, "avc.audio.delegate");
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
              *(v10 + 354) = 1;
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

        v17 = std::string::basic_string[abi:ne200100]<0>(&v37, "avc.audio.delegate");
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

  v15 = std::string::basic_string[abi:ne200100]<0>(&v37, "avc.audio.delegate");
  v29[0] = 0;
  v32 = 0;
  v16 = ims::debug(v15, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "-[AVCAudioSessionDelegate stream:didPause:error:]_block_invoke", 62);
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

- (void)stream:(id)stream didResume:(BOOL)resume error:(id)error
{
  streamCopy = stream;
  errorCopy = error;
  v10 = std::string::basic_string[abi:ne200100]<0>(&v23, "avc.audio.delegate");
  v19[0] = 0;
  v22 = 0;
  v11 = ims::debug(v10, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "-[AVCAudioSessionDelegate stream:didResume:error:]", 50);
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
  v14[2] = __50__AVCAudioSessionDelegate_stream_didResume_error___block_invoke;
  v14[3] = &unk_1E8769840;
  v12 = errorCopy;
  v15 = v12;
  v13 = streamCopy;
  v16 = v13;
  selfCopy = self;
  resumeCopy = resume;
  ims::performBlock(v14);
}

void __50__AVCAudioSessionDelegate_stream_didResume_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = std::string::basic_string[abi:ne200100]<0>(&v33, "avc.audio.delegate");
    v29[0] = 0;
    v32 = 0;
    v3 = ims::error(v2, v29);
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

    if (v32 == 1 && v31 < 0)
    {
      operator delete(__p);
    }

    if (v35 < 0)
    {
      operator delete(v33);
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
        (*(*(v10 + 8) + 152))(&v33, v10 + 8);
        if (v34)
        {
          v11 = std::__shared_weak_count::lock(v34);
          if (v11)
          {
            v12 = v33;
          }

          else
          {
            v12 = 0;
          }

          if (v34)
          {
            std::__shared_weak_count::__release_weak(v34);
          }

          if (v12)
          {
            *(v10 + 354) = 0;
            v23 = v10 + 8;
            v24 = v9;
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            if (*(a1 + 56))
            {
              v13 = 0;
            }

            else
            {
              v13 = 9;
            }

            (*(*v12 + 24))(v12, &v23, v13);
            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

LABEL_36:
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }

LABEL_38:
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            return;
          }
        }

        else
        {
          v11 = 0;
        }

        v16 = std::string::basic_string[abi:ne200100]<0>(&v33, "avc.audio.delegate");
        v19[0] = 0;
        v22 = 0;
        v17 = ims::warn(v16, v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Ignoring didResume notification received for session ", 53);
        *(v17 + 17) = 0;
        v18 = (*(*(v10 + 8) + 176))(v10 + 8);
        MEMORY[0x1E69233B0](*(v17 + 8), v18);
        *(v17 + 17) = 0;
        (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v17 + 17) = 0;
        if (v22 == 1 && v21 < 0)
        {
          operator delete(v20);
        }

        if (v35 < 0)
        {
          operator delete(v33);
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = std::string::basic_string[abi:ne200100]<0>(&v33, "avc.audio.delegate");
  v25[0] = 0;
  v28 = 0;
  v15 = ims::debug(v14, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "-[AVCAudioSessionDelegate stream:didResume:error:]_block_invoke", 63);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " owner is null", 14);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (v35 < 0)
  {
    operator delete(v33);
  }

  if (v9)
  {
    goto LABEL_38;
  }
}

- (void)streamDidStop:(id)stop
{
  stopCopy = stop;
  v5 = std::string::basic_string[abi:ne200100]<0>(&v12, "avc.audio.delegate");
  v8[0] = 0;
  v11 = 0;
  v6 = ims::debug(v5, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "-[AVCAudioSessionDelegate streamDidStop:]", 41);
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
  v7[2] = __41__AVCAudioSessionDelegate_streamDidStop___block_invoke;
  v7[3] = &unk_1E8769868;
  v7[4] = self;
  ims::performBlock(v7);
}

void __41__AVCAudioSessionDelegate_streamDidStop___block_invoke(uint64_t a1)
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
            MediaSessionDriver::cancelTimerForRequest((v4 + 8), 2);
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

        v10 = std::string::basic_string[abi:ne200100]<0>(&v23, "avc.audio.delegate");
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

  v8 = std::string::basic_string[abi:ne200100]<0>(&v23, "avc.audio.delegate");
  v19[0] = 0;
  v22 = 0;
  v9 = ims::debug(v8, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "-[AVCAudioSessionDelegate streamDidStop:]_block_invoke", 54);
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

- (void)streamDidRTPTimeOut:(id)out
{
  outCopy = out;
  v5 = std::string::basic_string[abi:ne200100]<0>(&v12, "avc.audio.delegate");
  v8[0] = 0;
  v11 = 0;
  v6 = ims::debug(v5, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "-[AVCAudioSessionDelegate streamDidRTPTimeOut:]", 47);
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
  v7[2] = __47__AVCAudioSessionDelegate_streamDidRTPTimeOut___block_invoke;
  v7[3] = &unk_1E8769868;
  v7[4] = self;
  ims::performBlock(v7);
}

void __47__AVCAudioSessionDelegate_streamDidRTPTimeOut___block_invoke(uint64_t a1)
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

        v11 = std::string::basic_string[abi:ne200100]<0>(&v24, "avc.audio.delegate");
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

  v9 = std::string::basic_string[abi:ne200100]<0>(&v24, "avc.audio.delegate");
  v20[0] = 0;
  v23 = 0;
  v10 = ims::debug(v9, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "-[AVCAudioSessionDelegate streamDidRTPTimeOut:]_block_invoke", 60);
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

- (void)streamDidRTCPTimeOut:(id)out
{
  outCopy = out;
  v5 = std::string::basic_string[abi:ne200100]<0>(&v12, "avc.audio.delegate");
  v8[0] = 0;
  v11 = 0;
  v6 = ims::debug(v5, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "-[AVCAudioSessionDelegate streamDidRTCPTimeOut:]", 48);
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
  v7[2] = __48__AVCAudioSessionDelegate_streamDidRTCPTimeOut___block_invoke;
  v7[3] = &unk_1E8769868;
  v7[4] = self;
  ims::performBlock(v7);
}

void __48__AVCAudioSessionDelegate_streamDidRTCPTimeOut___block_invoke(uint64_t a1)
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

        v11 = std::string::basic_string[abi:ne200100]<0>(&v24, "avc.audio.delegate");
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

  v9 = std::string::basic_string[abi:ne200100]<0>(&v24, "avc.audio.delegate");
  v20[0] = 0;
  v23 = 0;
  v10 = ims::debug(v9, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "-[AVCAudioSessionDelegate streamDidRTCPTimeOut:]_block_invoke", 61);
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

- (void)stream:(id)stream didReceiveDTMFEventWithDigit:(char)digit
{
  streamCopy = stream;
  v7 = std::string::basic_string[abi:ne200100]<0>(&v15, "avc.audio.delegate");
  v11[0] = 0;
  v14 = 0;
  v8 = ims::debug(v7, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "-[AVCAudioSessionDelegate stream:didReceiveDTMFEventWithDigit:]", 63);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__AVCAudioSessionDelegate_stream_didReceiveDTMFEventWithDigit___block_invoke;
  v9[3] = &unk_1E876C540;
  digitCopy = digit;
  v9[4] = self;
  ims::performBlock(v9);
}

void __63__AVCAudioSessionDelegate_stream_didReceiveDTMFEventWithDigit___block_invoke()
{
  std::string::basic_string[abi:ne200100]<0>(v3, "avc.audio.delegate");
  v1[0] = 0;
  v2 = 0;
  v0 = ims::debug(v3, v1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v0 + 8), "DTMF digit received: ", 21);
  *(v0 + 17) = 0;
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  ImsStringOutStream::ImsStringOutStream(v4);
}

- (void)stream:(id)stream didReceiveRTCPPackets:(id)packets
{
  streamCopy = stream;
  packetsCopy = packets;
  v8 = std::string::basic_string[abi:ne200100]<0>(&v19, "avc.audio.delegate");
  v15[0] = 0;
  v18 = 0;
  v9 = ims::debug(v8, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "-[AVCAudioSessionDelegate stream:didReceiveRTCPPackets:]", 56);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  v10 = objc_autoreleasePoolPush();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__AVCAudioSessionDelegate_stream_didReceiveRTCPPackets___block_invoke;
  v12[3] = &unk_1E876C590;
  v11 = packetsCopy;
  v13 = v11;
  selfCopy = self;
  ims::performBlock(v12);

  objc_autoreleasePoolPop(v10);
}

void __56__AVCAudioSessionDelegate_stream_didReceiveRTCPPackets___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v49 = [v1 count];
    if (v49)
    {
      v2 = 0;
      v43 = v79;
      do
      {
        v3 = [*(a1 + 32) objectAtIndex:{v2, v43}];
        v4 = v3;
        if (v3)
        {
          v5 = [v3 packetType];
          switch(v5)
          {
            case 200:
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v47 = v4;
                v21 = v4;
                v22 = [v21 NTPMostSignificantWord];
                v23 = [v21 NTPLeastSignificantWord];
                v24 = [v21 RTPTimestamp];
                v25 = [v21 packetsSent];
                v26 = [v21 octetsSent];
                v88 = 0;
                v89 = &v88;
                v90 = 0x7812000000;
                v91 = __Block_byref_object_copy__6;
                v92 = __Block_byref_object_dispose__6;
                v93 = "";
                v94 = 0u;
                v95 = 0u;
                __p = 0u;
                v97 = 0u;
                v98 = 0;
                v27 = [v21 SSRC];
                BYTE8(v94) = 0;
                WORD6(v94) = 0;
                LODWORD(v95) = 0;
                WORD2(v95) = 0;
                *&v94 = &unk_1F5EF0658;
                *(&v95 + 1) = __PAIR64__(v22, v27);
                *&__p = __PAIR64__(v24, v23);
                *(&__p + 1) = __PAIR64__(v26, v25);
                v98 = 0;
                v97 = 0uLL;
                v28 = *(a1 + 40);
                v87[0] = MEMORY[0x1E69E9820];
                v87[1] = 3221225472;
                v87[2] = __56__AVCAudioSessionDelegate_stream_didReceiveRTCPPackets___block_invoke_16;
                v87[3] = &unk_1E876C568;
                v87[4] = v28;
                v87[5] = &v88;
                [v28 handleRTCPPacketWithBlock:v87];
                v29 = [v21 receiverReport];
                v30 = v29;
                if (v29)
                {
                  v45 = [v29 reportedSourceSSRC];
                  v44 = [v30 fractionLost];
                  v31 = [v30 cumulativePacketsLost];
                  v32 = [v30 extendedHighestSequenceNumber];
                  v33 = [v30 interarrivalJitter];
                  v34 = [v30 lastSRTimestamp];
                  v35 = [v30 delaySinceLastSR];
                  *&v80[0] = 0;
                  *(&v80[0] + 1) = v80;
                  *&v80[1] = 0x6812000000;
                  *(&v80[1] + 1) = __Block_byref_object_copy__17;
                  v81 = __Block_byref_object_dispose__18;
                  v82 = "";
                  v83 = 0u;
                  v84 = 0u;
                  v85 = 0u;
                  v86 = 0;
                  v36 = [v21 SSRC];
                  BYTE8(v83) = 0;
                  WORD6(v83) = 0;
                  LODWORD(v84) = 0;
                  WORD2(v84) = 0;
                  *&v83 = &unk_1F5EF3398;
                  DWORD2(v84) = v36;
                  v86 = 0;
                  v85 = 0uLL;
                  BYTE7(v65) = 0;
                  *(&v65 + 5) = 0;
                  LODWORD(v65) = v45;
                  BYTE4(v65) = v44;
                  *(&v65 + 1) = __PAIR64__(v32, v31);
                  *&v66 = __PAIR64__(v34, v33);
                  DWORD2(v66) = v35;
                  std::vector<RTCPReceiverReport>::push_back[abi:ne200100](*(&v80[0] + 1) + 80, &v65);
                  v37 = *(a1 + 40);
                  v78[0] = MEMORY[0x1E69E9820];
                  v78[1] = 3221225472;
                  v79[0] = __56__AVCAudioSessionDelegate_stream_didReceiveRTCPPackets___block_invoke_20;
                  v79[1] = &unk_1E876C568;
                  v79[2] = v37;
                  v79[3] = v80;
                  [v37 handleRTCPPacketWithBlock:v78];
                  _Block_object_dispose(v80, 8);
                  *&v83 = &unk_1F5EF3398;
                  if (v85)
                  {
                    *(&v85 + 1) = v85;
                    operator delete(v85);
                  }
                }

                _Block_object_dispose(&v88, 8);
                *&v94 = &unk_1F5EF0658;
                if (v97)
                {
                  *(&v97 + 1) = v97;
                  operator delete(v97);
                }

                goto LABEL_30;
              }

              std::string::basic_string[abi:ne200100]<0>(&v88, "avc.audio.delegate");
              v99[0] = 0;
              v102 = 0;
              v40 = ims::error(&v88, v99);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "Packet type is not AVCRTCPSenderReport", 38);
              *(v40 + 17) = 0;
              (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v40 + 17) = 0;
              if (v102 == 1 && v101 < 0)
              {
                v11 = v100;
                goto LABEL_16;
              }

              break;
            case 201:
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v47 = v4;
                v12 = v4;
                v46 = [v12 reportedSourceSSRC];
                v13 = [v12 fractionLost];
                v14 = [v12 cumulativePacketsLost];
                v15 = [v12 extendedHighestSequenceNumber];
                v16 = [v12 interarrivalJitter];
                v17 = [v12 lastSRTimestamp];
                v18 = [v12 delaySinceLastSR];
                v88 = 0;
                v89 = &v88;
                v90 = 0x6812000000;
                v91 = __Block_byref_object_copy__17;
                v92 = __Block_byref_object_dispose__18;
                v93 = "";
                v94 = 0u;
                v95 = 0u;
                __p = 0u;
                *&v97 = 0;
                v19 = [v12 SSRC];
                BYTE8(v94) = 0;
                WORD6(v94) = 0;
                LODWORD(v95) = 0;
                WORD2(v95) = 0;
                *&v94 = &unk_1F5EF3398;
                DWORD2(v95) = v19;
                *&v97 = 0;
                __p = 0uLL;
                BYTE7(v80[0]) = 0;
                *(v80 + 5) = 0;
                LODWORD(v80[0]) = v46;
                BYTE4(v80[0]) = v13;
                *(&v80[0] + 1) = __PAIR64__(v15, v14);
                *&v80[1] = __PAIR64__(v17, v16);
                DWORD2(v80[1]) = v18;
                std::vector<RTCPReceiverReport>::push_back[abi:ne200100]((v89 + 10), v80);
                v20 = *(a1 + 40);
                v73[0] = MEMORY[0x1E69E9820];
                v73[1] = 3221225472;
                v73[2] = __56__AVCAudioSessionDelegate_stream_didReceiveRTCPPackets___block_invoke_2;
                v73[3] = &unk_1E876C568;
                v73[4] = v20;
                v73[5] = &v88;
                [v20 handleRTCPPacketWithBlock:v73];
                _Block_object_dispose(&v88, 8);
                *&v94 = &unk_1F5EF3398;
                if (__p)
                {
                  *(&__p + 1) = __p;
                  operator delete(__p);
                }

LABEL_30:
                v4 = v47;
                goto LABEL_58;
              }

              std::string::basic_string[abi:ne200100]<0>(&v88, "avc.audio.delegate");
              v74[0] = 0;
              v77 = 0;
              v39 = ims::error(&v88, v74);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "Packet type is not AVCRTCPReceiverReport", 40);
              *(v39 + 17) = 0;
              (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v39 + 17) = 0;
              if (v77 == 1 && v76 < 0)
              {
                v11 = v75;
                goto LABEL_16;
              }

              break;
            case 202:
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v6 = v4;
                memset(&v68, 0, sizeof(v68));
                std::string::basic_string[abi:ne200100]<0>(&v68, "");
                v7 = [v6 text];
                v8 = v7;
                if (v7)
                {
                  std::string::__assign_external(&v68, [v7 UTF8String]);
                }

                memset(v80, 0, sizeof(v80));
                v9 = [v6 type];
                if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&__str, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
                }

                else
                {
                  __str = v68;
                }

                RTCPSDesItem::RTCPSDesItem(v80, v9, &__str);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                v65 = 0u;
                v66 = 0u;
                LODWORD(v65) = [v6 SSRC];
                v66 = 0uLL;
                *(&v65 + 1) = 0;
                v62 = v80[0];
                v63 = BYTE4(v80[0]);
                if (SHIBYTE(v80[1]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v64, *(&v80[0] + 1), *&v80[1]);
                }

                else
                {
                  v64 = *(v80 + 8);
                }

                std::vector<RTCPSDesItem>::push_back[abi:ne200100](&v65 + 1, &v62);
                if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v64.__r_.__value_.__l.__data_);
                }

                v89 = 0;
                v90 = 0;
                v88 = &unk_1F5EF5148;
                v92 = 0;
                v93 = 0;
                v91 = 0;
                v60 = v65;
                memset(v61, 0, sizeof(v61));
                std::vector<RTCPSDesItem>::__init_with_size[abi:ne200100]<RTCPSDesItem*,RTCPSDesItem*>(v61, *(&v65 + 1), v66, (v66 - *(&v65 + 1)) >> 5);
                std::vector<RTCPSDesInfo>::push_back[abi:ne200100](&v91, &v60);
                v103[0] = v61;
                std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](v103);
                v42 = *(a1 + 40);
                v59[0] = MEMORY[0x1E69E9820];
                v59[1] = 3221225472;
                v59[2] = __56__AVCAudioSessionDelegate_stream_didReceiveRTCPPackets___block_invoke_3;
                v59[3] = &unk_1E8769868;
                v59[4] = v42;
                [v42 handleRTCPPacketWithBlock:v59];
                v88 = &unk_1F5EF5148;
                v103[0] = &v91;
                std::vector<RTCPSDesInfo>::__destroy_vector::operator()[abi:ne200100](v103);
                v88 = &v65 + 8;
                std::vector<RTCPSDesItem>::__destroy_vector::operator()[abi:ne200100](&v88);
                if (SHIBYTE(v80[1]) < 0)
                {
                  operator delete(*(&v80[0] + 1));
                }

                if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v68.__r_.__value_.__l.__data_);
                }

                goto LABEL_58;
              }

              std::string::basic_string[abi:ne200100]<0>(&v88, "avc.audio.delegate");
              v69[0] = 0;
              v72 = 0;
              v41 = ims::error(&v88, v69);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "Packet type is not AVCRTCPSourceDescription", 43);
              *(v41 + 17) = 0;
              (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v41 + 17) = 0;
              if (v72 != 1 || (v71 & 0x80000000) == 0)
              {
                break;
              }

              v11 = v70;
              goto LABEL_16;
            default:
              v48 = v4;
              std::string::basic_string[abi:ne200100]<0>(&v88, "avc.audio.delegate");
              v55[0] = 0;
              v58 = 0;
              v38 = ims::debug(&v88, v55);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "Ignoring RTCP packet at index: ", 31);
              *(v38 + 17) = 0;
              MEMORY[0x1E6923370](*(v38 + 8), v2);
              *(v38 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), " with Type: ", 12);
              *(v38 + 17) = 0;
              MEMORY[0x1E6923340](*(v38 + 8), [v48 packetType]);
              *(v38 + 17) = 0;
              (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v38 + 17) = 0;
              if (v58 == 1 && v57 < 0)
              {
                operator delete(v56);
              }

              v4 = v48;
              if ((SHIBYTE(v90) & 0x80000000) == 0)
              {
                goto LABEL_58;
              }

LABEL_35:
              operator delete(v88);
              goto LABEL_58;
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v88, "avc.audio.delegate");
          v51[0] = 0;
          v54 = 0;
          v10 = ims::debug(&v88, v51);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "NULL Packet at index: ", 22);
          *(v10 + 17) = 0;
          MEMORY[0x1E6923370](*(v10 + 8), v2);
          *(v10 + 17) = 0;
          (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v10 + 17) = 0;
          if (v54 == 1 && v53 < 0)
          {
            v11 = v52;
LABEL_16:
            operator delete(v11);
          }
        }

        if (SHIBYTE(v90) < 0)
        {
          goto LABEL_35;
        }

LABEL_58:

        ++v2;
      }

      while (v49 != v2);
    }
  }
}

void __56__AVCAudioSessionDelegate_stream_didReceiveRTCPPackets___block_invoke_16(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 8);
      if (v6)
      {
        v7 = *(v6 + 40);
        v8 = *(v6 + 48);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RTPManager::logRemoteRTCPSRPacket(v7, (*(*(a1 + 40) + 8) + 48));
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void __56__AVCAudioSessionDelegate_stream_didReceiveRTCPPackets___block_invoke_20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 8);
      if (v6)
      {
        v7 = *(v6 + 40);
        v8 = *(v6 + 48);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RTPManager::logRemoteRTCPRRPacket(v7, (*(*(a1 + 40) + 8) + 48), 0);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void __56__AVCAudioSessionDelegate_stream_didReceiveRTCPPackets___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 8);
      if (v6)
      {
        v7 = *(v6 + 40);
        v8 = *(v6 + 48);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RTPManager::logRemoteRTCPRRPacket(v7, (*(*(a1 + 40) + 8) + 48), 0);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void __56__AVCAudioSessionDelegate_stream_didReceiveRTCPPackets___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 8);
      if (v5)
      {
        v6 = *(v5 + 40);
        v7 = *(v5 + 48);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RTPManager::logSdesRTCPTime(v6);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

- (void)streamDidServerDie:(id)die
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__AVCAudioSessionDelegate_streamDidServerDie___block_invoke;
  v3[3] = &unk_1E8769868;
  v3[4] = self;
  ims::performBlock(v3);
}

void __46__AVCAudioSessionDelegate_streamDidServerDie___block_invoke(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(v28, "avc.audio.delegate");
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

  v12 = std::string::basic_string[abi:ne200100]<0>(v28, "avc.audio.delegate");
  v14[0] = 0;
  v17 = 0;
  v13 = ims::debug(v12, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "-[AVCAudioSessionDelegate streamDidServerDie:]_block_invoke", 59);
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

- (void)stream:(id)stream updateInputFrequencyLevel:(id)level
{
  levelCopy = level;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AVCAudioSessionDelegate_stream_updateInputFrequencyLevel___block_invoke;
  v7[3] = &unk_1E876C590;
  v7[4] = self;
  v8 = levelCopy;
  v6 = levelCopy;
  ims::performBlock(v7);
}

void __60__AVCAudioSessionDelegate_stream_updateInputFrequencyLevel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(v2 + 8);
      if (v5)
      {
        v7 = v5[5];
        v6 = v5[6];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v7)
        {
          v8 = *(a1 + 40);
          if (v8)
          {
            v23 = *(a1 + 40);
            CFRetain(v8);
            v22 = &unk_1F5EE1298;
            v9 = (*(v5[1] + 176))();
            RTPManager::sendInputFrequencyLevelUpdate(v7, v9, v23);
            ims::CFType::~CFType(&v22);
          }
        }

        else
        {
          v12 = std::string::basic_string[abi:ne200100]<0>(&v22, "avc.audio.delegate");
          v14[0] = 0;
          v17 = 0;
          v13 = ims::warn(v12, v14);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "No RTPManager found!", 20);
          *(v13 + 17) = 0;
          (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v13 + 17) = 0;
          if (v17 == 1 && v16 < 0)
          {
            operator delete(v15);
          }

          if (v24 < 0)
          {
            operator delete(v22);
          }
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

LABEL_24:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = std::string::basic_string[abi:ne200100]<0>(&v22, "avc.audio.delegate");
  v18[0] = 0;
  v21 = 0;
  v11 = ims::debug(v10, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "-[AVCAudioSessionDelegate stream:updateInputFrequencyLevel:]_block_invoke", 73);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " owner is null", 14);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v22);
  }

  if (v4)
  {
    goto LABEL_24;
  }
}

- (void)stream:(id)stream updateOutputFrequencyLevel:(id)level
{
  levelCopy = level;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__AVCAudioSessionDelegate_stream_updateOutputFrequencyLevel___block_invoke;
  v7[3] = &unk_1E876C590;
  v7[4] = self;
  v8 = levelCopy;
  v6 = levelCopy;
  ims::performBlock(v7);
}

void __61__AVCAudioSessionDelegate_stream_updateOutputFrequencyLevel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(v2 + 8);
      if (v5)
      {
        v7 = v5[5];
        v6 = v5[6];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v7)
        {
          v8 = *(a1 + 40);
          if (v8)
          {
            v23 = *(a1 + 40);
            CFRetain(v8);
            v22 = &unk_1F5EE1298;
            v9 = (*(v5[1] + 176))();
            RTPManager::sendOutputFrequencyLevelUpdate(v7, v9, v23);
            ims::CFType::~CFType(&v22);
          }
        }

        else
        {
          v12 = std::string::basic_string[abi:ne200100]<0>(&v22, "avc.audio.delegate");
          v14[0] = 0;
          v17 = 0;
          v13 = ims::warn(v12, v14);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "No RTPManager found!", 20);
          *(v13 + 17) = 0;
          (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v13 + 17) = 0;
          if (v17 == 1 && v16 < 0)
          {
            operator delete(v15);
          }

          if (v24 < 0)
          {
            operator delete(v22);
          }
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

LABEL_24:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = std::string::basic_string[abi:ne200100]<0>(&v22, "avc.audio.delegate");
  v18[0] = 0;
  v21 = 0;
  v11 = ims::debug(v10, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "-[AVCAudioSessionDelegate stream:updateOutputFrequencyLevel:]_block_invoke", 74);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " owner is null", 14);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v22);
  }

  if (v4)
  {
    goto LABEL_24;
  }
}

- (AVCAudioSessionDelegate)initWithOwner:(shared_ptr<AVCAudioSession>)owner andStackController:(shared_ptr<AVCRTPStackController>)controller
{
  var1 = owner.var1;
  var0 = owner.var0;
  v15.receiver = self;
  v15.super_class = AVCAudioSessionDelegate;
  v6 = [(AVCAudioSessionDelegate *)&v15 init:owner.var0];
  v7 = v6;
  if (v6)
  {
    v9 = *var0;
    v8 = *(var0 + 1);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
    }

    cntrl = v6->owner.__cntrl_;
    v7->owner.__ptr_ = v9;
    v7->owner.__cntrl_ = v8;
    if (cntrl)
    {
      std::__shared_weak_count::__release_weak(cntrl);
    }

    v12 = *var1;
    v11 = *(var1 + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v7->stackController.__cntrl_;
    v7->stackController.__ptr_ = v12;
    v7->stackController.__cntrl_ = v11;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  return v7;
}

- (void)handleRTCPPacketWithBlock:(id)block
{
  blockCopy = block;
  v5 = std::string::basic_string[abi:ne200100]<0>(v28, "avc.audio.delegate");
  v24[0] = 0;
  v27 = 0;
  v6 = ims::debug(v5, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "-[AVCAudioSessionDelegate handleRTCPPacketWithBlock:]", 53);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  cntrl = self->owner.__cntrl_;
  if (cntrl)
  {
    v8 = std::__shared_weak_count::lock(cntrl);
    if (v8)
    {
      ptr = self->owner.__ptr_;
      if (ptr)
      {
        v10 = *(ptr + 5);
        v11 = *(ptr + 6);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v10)
        {
          blockCopy[2](blockCopy);
        }

        else
        {
          v14 = std::string::basic_string[abi:ne200100]<0>(v28, "avc.audio.delegate");
          v16[0] = 0;
          v19 = 0;
          v15 = ims::warn(v14, v16);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "No RTPManager available for incoming RTCP", 41);
          *(v15 + 17) = 0;
          (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v15 + 17) = 0;
          if (v19 == 1 && v18 < 0)
          {
            operator delete(v17);
          }

          if (v29 < 0)
          {
            operator delete(v28[0]);
          }
        }

        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

LABEL_28:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        goto LABEL_29;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(v28, "avc.audio.delegate");
  v20[0] = 0;
  v23 = 0;
  v13 = ims::debug(v12, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "-[AVCAudioSessionDelegate handleRTCPPacketWithBlock:]", 53);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " owner is null", 14);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (v8)
  {
    goto LABEL_28;
  }

LABEL_29:
}

- (weak_ptr<AVCAudioSession>)owner
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

- (void)setOwner:(weak_ptr<AVCAudioSession>)owner
{
  v4 = *owner.__ptr_;
  v3 = *(owner.__ptr_ + 1);
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

- (void)setStackController:(shared_ptr<AVCRTPStackController>)controller
{
  v4 = *controller.__ptr_;
  v3 = *(controller.__ptr_ + 1);
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