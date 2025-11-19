void sub_1B5264D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&a9);
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&a13);
  _Unwind_Resume(a1);
}

uint64_t quasar::result_handler::VoiceEditingRecoveryHandler::VoiceEditingRecoveryHandler(uint64_t a1, uint64_t *a2, void *a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F2D08E58;
  v4 = *a2;
  *a2 = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  v5 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  strcpy((a1 + 56), "en_US");
  *(a1 + 48) = 0;
  *(a1 + 79) = 5;
  if (quasar::gLogLevel >= 5)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "VoiceEditingRecoveryHandler: ", 29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Created VoiceEditingRecoveryHandler", 35);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v8);
  }

  return a1;
}

void sub_1B5264EE4(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100](v2, 0);
  v6 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void quasar::result_handler::VoiceEditingRecoveryHandler::~VoiceEditingRecoveryHandler(quasar::result_handler::VoiceEditingRecoveryHandler *this)
{
  *this = &unk_1F2D08E58;
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100](this + 3, 0);
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  quasar::Bitmap::~Bitmap(this);
}

{
  quasar::result_handler::VoiceEditingRecoveryHandler::~VoiceEditingRecoveryHandler(this);

  JUMPOUT(0x1B8C85350);
}

void **quasar::result_handler::VoiceEditingRecoveryHandler::handlePartial(uint64_t a1, uint64_t a2, quasar::result_handler::Package **a3)
{
  *(a1 + 48) = 0;
  v3 = *(a1 + 16);
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  (*(*v3 + 24))(v3, a2, &v6);
  result = v6;
  v6 = 0;
  if (result)
  {
    quasar::result_handler::Package::~Package(result);
    return MEMORY[0x1B8C85350]();
  }

  return result;
}

void sub_1B52650CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void **quasar::result_handler::VoiceEditingRecoveryHandler::handleCommandCandidate(void **result, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    v5 = result;
    if (quasar::gLogLevel >= 5)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "VoiceEditingRecoveryHandler: ", 29);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(now=", 5);
      v8 = MEMORY[0x1B8C84C00](v7, a2);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") recv commandCandidate: ", 25);
      quasar::getTopChoice(*a3 + 48, 1, v45);
      if ((v46 & 0x80u) == 0)
      {
        v10 = v45;
      }

      else
      {
        v10 = v45[0];
      }

      if ((v46 & 0x80u) == 0)
      {
        v11 = v46;
      }

      else
      {
        v11 = v45[1];
      }

      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ::::: ", 7);
      quasar::topChoiceWithTimes((*a3 + 48), __p);
      if ((v44 & 0x80u) == 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      if ((v44 & 0x80u) == 0)
      {
        v15 = v44;
      }

      else
      {
        v15 = __p[1];
      }

      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utteranceStartMs=", 18);
      MEMORY[0x1B8C84C00](v17, *(*a3 + 76));
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      if (v46 < 0)
      {
        operator delete(v45[0]);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v47);
      if (quasar::gLogLevel >= 5)
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "VoiceEditingRecoveryHandler: ", 29);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "(now=", 5);
        v20 = MEMORY[0x1B8C84C00](v19, a2);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ") handleCommandCandidate: maybeCompleteCommand ", 47);
        if (*(*a3 + 368) == 1)
        {
          quasar::result_handler::operator<<(v21, *a3 + 184);
        }

        else
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "null", 4);
        }

        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v47);
      }
    }

    if (*(*a3 + 368) != 1 || *(*a3 + 344) == *(*a3 + 336))
    {
      goto LABEL_54;
    }

    v22 = (*(**(v5 + 32) + 40))(*(v5 + 32));
    if (quasar::gLogLevel >= 5)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "VoiceEditingRecoveryHandler: ", 29);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "(now=", 5);
      v25 = MEMORY[0x1B8C84C00](v24, a2);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ") handleCommandCandidate: undoEvent ", 36);
      v27 = MEMORY[0x1B8C84BD0](v26, v22);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " precedingUtterance size ", 25);
      MEMORY[0x1B8C84C30](v28, 0xAAAAAAAAAAAAAAABLL * ((*(*a3 + 192) - *(*a3 + 184)) >> 3));
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v47);
    }

    v29 = *a3;
    if (((*(v5 + 24) != 0) & v22) == 1 && *(v29 + 192) == *(v29 + 184))
    {
      if (quasar::result_handler::VoiceEditingRecoveryHandler::isMaybeCompleteCommandPackageExecutionIntentionSame(v5, a3, (v5 + 24)))
      {
        if (quasar::gLogLevel >= 5)
        {
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "VoiceEditingRecoveryHandler: ", 29);
          v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "(now=", 5);
          v32 = MEMORY[0x1B8C84C00](v31, a2);
          v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ") handleCommandCandidate: recovery for respeak ", 47);
          v45[0] = (*a3 + 184);
          quasar::operator<<<std::optional<quasar::result_handler::CommandData>>(v33, v45);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v47);
        }

        std::__optional_destruct_base<quasar::result_handler::CommandData,false>::reset[abi:ne200100](*a3 + 184);
        std::vector<quasar::result_handler::CommandData>::clear[abi:ne200100]((*a3 + 160));
        goto LABEL_54;
      }

      v29 = *a3;
    }

    if ((*(v29 + 368) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v34 = *(v29 + 336);
    if (*(v34 + 23) < 0)
    {
      if (v34[1] == 14 && **v34 == 0x6769626D61736964 && *(*v34 + 6) == 0x6E6F697461756769)
      {
        goto LABEL_54;
      }

      if (v34[1] != 4)
      {
        goto LABEL_53;
      }

      v34 = *v34;
    }

    else
    {
      v35 = *(v34 + 23);
      if (v35 != 4)
      {
        if (v35 != 14 || ((v36 = *v34, v37 = *(v34 + 6), v36 == 0x6769626D61736964) ? (v38 = v37 == 0x6E6F697461756769) : (v38 = 0), !v38))
        {
LABEL_53:
          operator new();
        }

LABEL_54:
        *(v5 + 48) = 0;
        v40 = *(v5 + 16);
        v41 = *a3;
        *a3 = 0;
        v42 = v41;
        (*(*v40 + 32))(v40, a2, &v42);
        result = v42;
        v42 = 0;
        if (result)
        {
          quasar::result_handler::Package::~Package(result);
          return MEMORY[0x1B8C85350]();
        }

        return result;
      }
    }

    if (*v34 != 1868852853)
    {
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  return result;
}

void *quasar::operator<<<std::optional<quasar::result_handler::CommandData>>(void *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*(v3 + 184) == 1)
  {
    quasar::result_handler::operator<<(a1, v3);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "null", 4);
  }

  return a1;
}

void **quasar::result_handler::VoiceEditingRecoveryHandler::handleFinalCandidate(void *a1, unsigned int a2, quasar::result_handler::Package **a3)
{
  v11 = a2;
  (*(*a1 + 72))(a1, &v11);
  v5 = a1[2];
  v6 = v11;
  v7 = *a3;
  *a3 = 0;
  v10 = v7;
  (*(*v5 + 40))(v5, v6, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    quasar::result_handler::Package::~Package(result);
    return MEMORY[0x1B8C85350](v9);
  }

  return result;
}

void **quasar::result_handler::VoiceEditingRecoveryHandler::handleFinal(uint64_t a1, uint64_t a2, quasar::result_handler::Package **a3)
{
  v6 = *a3;
  if ((*(*a3 + 80) & 1) == 0)
  {
    (*(**(a1 + 32) + 40))(*(a1 + 32));
    v6 = *a3;
  }

  *(a1 + 48) = 0;
  v7 = *(a1 + 16);
  *a3 = 0;
  v9 = v6;
  (*(*v7 + 48))(v7, a2, &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    quasar::result_handler::Package::~Package(result);
    return MEMORY[0x1B8C85350]();
  }

  return result;
}

void sub_1B5265934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void quasar::result_handler::VoiceEditingRecoveryHandler::handlePause(quasar::result_handler::VoiceEditingRecoveryHandler *this)
{
  if (quasar::gLogLevel >= 5)
  {
    memset(v5, 0, sizeof(v5));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "VoiceEditingRecoveryHandler: ", 29);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "(now=", 5);
    v4 = MEMORY[0x1B8C84C00](v3, *(this + 2));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ") handlePause", 13);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v5);
  }

  if ((*(this + 48) & 1) == 0)
  {
    (*(**(this + 4) + 40))(*(this + 4));
  }

  *(this + 48) = 0;
}

void quasar::result_handler::VoiceEditingRecoveryHandler::handleResume(quasar::result_handler::VoiceEditingRecoveryHandler *this)
{
  if (quasar::gLogLevel >= 5)
  {
    memset(v5, 0, sizeof(v5));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "VoiceEditingRecoveryHandler: ", 29);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "(now=", 5);
    v4 = MEMORY[0x1B8C84C00](v3, *(this + 2));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ") handleResume", 14);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v5);
  }

  *(this + 48) = 1;
}

uint64_t tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
LABEL_6:
      operator delete(v2);
    }
  }

  else if (*(a1 + 23) < 0)
  {
    v2 = *a1;
    goto LABEL_6;
  }

  return a1;
}

void std::__optional_storage_base<quasar::result_handler::CommandData,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<quasar::result_handler::CommandData,false> const&>(quasar::result_handler::CommandData *a1, unsigned __int8 *a2)
{
  if (*(a1 + 184) == a2[184])
  {
    if (*(a1 + 184))
    {

      quasar::result_handler::CommandData::operator=(a1, a2);
    }
  }

  else if (*(a1 + 184))
  {

    std::__optional_destruct_base<quasar::result_handler::CommandData,false>::reset[abi:ne200100](a1);
  }

  else
  {
    *(quasar::result_handler::CommandData::CommandData(a1, a2) + 184) = 1;
  }
}

uint64_t quasar::result_handler::CommandData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    std::string::operator=((a1 + 96), (a2 + 96));
    *(a1 + 120) = *(a2 + 120);
    std::string::operator=((a1 + 128), (a2 + 128));
  }

  else
  {
    std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1 + 24, *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
    std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1 + 48, *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
    std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1 + 72, *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
    std::string::operator=((a1 + 96), (a2 + 96));
    *(a1 + 120) = *(a2 + 120);
    std::string::operator=((a1 + 128), (a2 + 128));
    std::vector<quasar::result_handler::CommandInterpretation>::__assign_with_size[abi:ne200100]<quasar::result_handler::CommandInterpretation*,quasar::result_handler::CommandInterpretation*>(a1 + 152, *(a2 + 152), *(a2 + 160), 0xF83E0F83E0F83E1 * ((*(a2 + 160) - *(a2 + 152)) >> 3));
  }

  v4 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v4;
  return a1;
}

{
  std::vector<std::vector<quasar::Token>>::__vdeallocate(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::vector<std::vector<quasar::Token>>::__vdeallocate((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  std::vector<std::vector<quasar::Token>>::__vdeallocate((a1 + 48));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  std::vector<std::vector<quasar::Token>>::__vdeallocate((a1 + 72));
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v4 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v4;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v5 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v5;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  std::vector<quasar::result_handler::CommandInterpretation>::__vdeallocate((a1 + 152));
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v6 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v6;
  return a1;
}

void std::__optional_destruct_base<quasar::result_handler::CommandData,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    v4[0] = (a1 + 152);
    std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](v4);
    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    v4[0] = (a1 + 72);
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v4);
    v4[0] = (a1 + 48);
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v4);
    v4[0] = (a1 + 24);
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v4);
    v4[0] = a1;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v4);
    *(a1 + 184) = 0;
  }
}

void std::vector<quasar::result_handler::CommandInterpretation>::__assign_with_size[abi:ne200100]<quasar::result_handler::CommandInterpretation*,quasar::result_handler::CommandInterpretation*>(uint64_t a1, quasar::result_handler::CommandInterpretation *a2, quasar::result_handler::CommandInterpretation *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<quasar::result_handler::CommandInterpretation>::__vdeallocate(a1);
    if (a4 <= 0xF83E0F83E0F83ELL)
    {
      v9 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
      {
        v10 = 0xF83E0F83E0F83ELL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::result_handler::CommandInterpretation>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0xF83E0F83E0F83E1 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        quasar::result_handler::CommandInterpretation::operator=(v8, v6);
        v6 += 264;
        v8 += 11;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 -= 11;
      quasar::result_handler::CommandInterpretation::~CommandInterpretation(&v11->__r_.__value_.__l.__data_);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        quasar::result_handler::CommandInterpretation::operator=(v8, v14);
        v14 += 264;
        v8 += 11;
        v13 -= 264;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::result_handler::CommandInterpretation>,quasar::result_handler::CommandInterpretation*,quasar::result_handler::CommandInterpretation*,quasar::result_handler::CommandInterpretation*>(a1, (v6 + v12), a3, v11);
  }
}

void std::vector<quasar::result_handler::CommandInterpretation>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        quasar::result_handler::CommandInterpretation::~CommandInterpretation(v3 - 33);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<quasar::result_handler::CommandInterpretation>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF83E0F83E0F83FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::result_handler::CommandInterpretation>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::result_handler::CommandInterpretation>,quasar::result_handler::CommandInterpretation*,quasar::result_handler::CommandInterpretation*,quasar::result_handler::CommandInterpretation*>(int a1, quasar::result_handler::CommandInterpretation *a2, quasar::result_handler::CommandInterpretation *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      quasar::result_handler::CommandInterpretation::CommandInterpretation(this, v6);
      v6 = (v6 + 264);
      this += 11;
      v7 -= 264;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B5266038(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 264);
    do
    {
      quasar::result_handler::CommandInterpretation::~CommandInterpretation(v4);
      v4 = (v5 - 264);
      v2 += 264;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *quasar::result_handler::CommandInterpretation::CommandInterpretation(std::string *this, const quasar::result_handler::CommandInterpretation *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 72);
  *(&this[3].__r_.__value_.__r.__words[1] + 5) = *(a2 + 85);
  *&this[3].__r_.__value_.__l.__data_ = v7;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 4, a2 + 6);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 128), a2 + 8);
  v8 = *(a2 + 20);
  v9 = *(a2 + 166);
  this[7].__r_.__value_.__l.__size_ = 0;
  *(&this[6].__r_.__value_.__r.__words[2] + 6) = v9;
  this[6].__r_.__value_.__r.__words[2] = v8;
  this[7].__r_.__value_.__r.__words[2] = 0;
  this[8].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[7].__r_.__value_.__l.__size_, *(a2 + 22), *(a2 + 23), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 23) - *(a2 + 22)) >> 3));
  this[8].__r_.__value_.__l.__size_ = 0;
  this[8].__r_.__value_.__r.__words[2] = 0;
  this[9].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[8].__r_.__value_.__l.__size_, *(a2 + 25), *(a2 + 26), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 26) - *(a2 + 25)) >> 3));
  this[9].__r_.__value_.__l.__size_ = 0;
  this[9].__r_.__value_.__r.__words[2] = 0;
  this[10].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[9].__r_.__value_.__l.__size_, *(a2 + 28), *(a2 + 29), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 29) - *(a2 + 28)) >> 3));
  v10 = *(a2 + 31);
  *(&this[10].__r_.__value_.__r.__words[1] + 5) = *(a2 + 253);
  this[10].__r_.__value_.__l.__size_ = v10;
  return this;
}

void sub_1B52661D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::result_handler::CommandInterpretation::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  v4 = *(a2 + 85);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 85) = v4;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 96), (a2 + 96));
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 128), (a2 + 128));
  v5 = *(a2 + 160);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 160) = v5;
  if (a1 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 176), *(a2 + 176), *(a2 + 184), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 184) - *(a2 + 176)) >> 3));
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 200), *(a2 + 200), *(a2 + 208), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 208) - *(a2 + 200)) >> 3));
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 224), *(a2 + 224), *(a2 + 232), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 232) - *(a2 + 224)) >> 3));
  }

  v6 = *(a2 + 248);
  *(a1 + 253) = *(a2 + 253);
  *(a1 + 248) = v6;
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::result_handler::CommandInterpretation>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF83E0F83E0F83FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

quasar::result_handler::CommandData *quasar::result_handler::CommandData::CommandData(quasar::result_handler::CommandData *this, const quasar::result_handler::CommandData *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(this + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(this + 48, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(this + 72, *(a2 + 9), *(a2 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v4 = *(a2 + 6);
    *(this + 14) = *(a2 + 14);
    *(this + 6) = v4;
  }

  *(this + 15) = *(a2 + 15);
  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((this + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v5 = *(a2 + 8);
    *(this + 18) = *(a2 + 18);
    *(this + 8) = v5;
  }

  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  std::vector<quasar::result_handler::CommandInterpretation>::__init_with_size[abi:ne200100]<quasar::result_handler::CommandInterpretation*,quasar::result_handler::CommandInterpretation*>(this + 152, *(a2 + 19), *(a2 + 20), 0xF83E0F83E0F83E1 * ((*(a2 + 20) - *(a2 + 19)) >> 3));
  v6 = *(a2 + 44);
  *(this + 180) = *(a2 + 180);
  *(this + 44) = v6;
  return this;
}

void sub_1B526654C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::result_handler::CommandInterpretation>::__init_with_size[abi:ne200100]<quasar::result_handler::CommandInterpretation*,quasar::result_handler::CommandInterpretation*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::result_handler::CommandInterpretation>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5266638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::result_handler::Package::~Package(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

std::string *quasar::SpeakerCodeTraining::SpeakerCodeTraining(std::string *this, __int128 *a2, __int128 *a3, int a4, unsigned int a5, unsigned int a6, int a7, std::string::value_type a8, float a9, char a10, int a11, int a12, __int128 *a13)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v21 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v21;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v22 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v22;
  }

  LODWORD(this[2].__r_.__value_.__l.__data_) = a4;
  HIDWORD(this[2].__r_.__value_.__r.__words[0]) = a5;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = a6;
  HIDWORD(this[2].__r_.__value_.__r.__words[1]) = a7;
  *&this[2].__r_.__value_.__r.__words[2] = a9;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__s.__data_[0] = a8;
  this[4].__r_.__value_.__s.__data_[1] = a10;
  HIDWORD(this[4].__r_.__value_.__r.__words[0]) = a11;
  LODWORD(this[4].__r_.__value_.__r.__words[1]) = a12;
  *&this[4].__r_.__value_.__r.__words[2] = 0u;
  *&this[5].__r_.__value_.__r.__words[1] = 0u;
  *&this[6].__r_.__value_.__l.__data_ = 0u;
  *&this[6].__r_.__value_.__r.__words[2] = 0u;
  *&this[7].__r_.__value_.__r.__words[1] = 0u;
  if (*(a13 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 8, *a13, *(a13 + 1));
  }

  else
  {
    v23 = *a13;
    this[8].__r_.__value_.__r.__words[2] = *(a13 + 2);
    *&this[8].__r_.__value_.__l.__data_ = v23;
  }

  this[9].__r_.__value_.__r.__words[0] = 850045863;
  *&this[9].__r_.__value_.__r.__words[1] = 0u;
  *&this[10].__r_.__value_.__l.__data_ = 0u;
  *&this[10].__r_.__value_.__r.__words[2] = 0u;
  *(&this[11].__r_.__value_.__l.__data_ + 1) = 0u;
  if (!a7 || a9 <= 0.0 || !a5 || !a6 || (a11 - 3) <= 0xFFFFFFFD)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "batchSize > 0 && updateInterval > 0 && learningRate > 0 && initializeOption > 0 && initializeOption < 3 && recognitionInterval > 0 && Bad configuration", 153);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

  if (a6 % a5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "updateInterval % batchSize == 0 && Bad configuration", 54);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

  return this;
}

{
  return quasar::SpeakerCodeTraining::SpeakerCodeTraining(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void sub_1B5266888(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);
  if (*(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
  }

  v4 = *(v1 + 184);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 168);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 152);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v1 + 136);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(v1 + 120);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::SpeakerCodeTraining::load(uint64_t this)
{
  v1 = atomic_load((this + 280));
  if ((v1 & 1) == 0 && !*(this + 112))
  {
    v2 = *(this + 23);
    if (v2 < 0)
    {
      v2 = *(this + 8);
    }

    if (!v2 && (quasar::gLogLevel & 0x80000000) == 0)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v6 = 0u;
      v7 = 0u;
      v4 = 0u;
      v5 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Training network path must be specified.", 40);
      quasar::QuasarFatalMessage::~QuasarFatalMessage(__p);
    }

    _ZNSt3__115allocate_sharedB8ne200100IN6quasar11ModelLoaderENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return this;
}

void sub_1B5266AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void quasar::SpeakerCodeTraining::init(uint64_t a1)
{
  v1 = *(a1 + 100);
  if ((v1 - 3) > 0xFFFFFFFD)
  {
    if (v1 == 2 && !*(a1 + 104) && (quasar::gLogLevel & 0x80000000) == 0)
    {
      memset(v2, 0, sizeof(v2));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Initial size must be set if initialize option is 2(aka. all-zeros)", 66);
      quasar::QuasarFatalMessage::~QuasarFatalMessage(v2);
    }

    operator new();
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "initializeOption > 0 && initializeOption < 3 && Unrecognized initialize option");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

void quasar::SpeakerCodeTraining::resetTraining(quasar::SpeakerCodeTraining *this)
{
  if (*(this + 97) != 1)
  {
    std::allocate_shared[abi:ne200100]<std::istringstream,std::allocator<std::istringstream>,std::string &,0>();
  }

  if (quasar::gLogLevel >= 4)
  {
    memset(v4, 0, sizeof(v4));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Training is continuous, speaker code: ", 38);
    v2 = std::ostream::operator<<();
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, ", processed samples: ", 21);
    MEMORY[0x1B8C84C30](v3, *(this + 9));
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v4);
  }
}

void sub_1B52673E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  _Unwind_Resume(a1);
}

void quasar::SpeakerCodeTraining::getSpeakerCodeForInference(quasar::SpeakerCodeTraining *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 216));
  if (*(this + 96) == 1)
  {
    v5 = *(this + 20);
    v4 = *(this + 21);
  }

  else
  {
    v5 = *(this + 22);
    v4 = *(this + 23);
  }

  *a2 = v5;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((this + 216));
}

void quasar::SpeakerCodeTraining::getInferenceSpeakerCode(quasar::SpeakerCodeTraining *this@<X0>, void *a2@<X8>)
{
  std::mutex::lock((this + 216));
  v4 = *(this + 21);
  *a2 = *(this + 20);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((this + 216));
}

uint64_t quasar::SpeakerCodeTraining::train(uint64_t result, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = atomic_load((result + 280));
  if ((v3 & 1) == 0)
  {
    v4 = result;
    v5 = *(result + 128);
    if (!v5 || !*(result + 144))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v31, "gradBuffer && updatedSpeakerCode && Speaker code container or gradient container does not exist");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v31);
    }

    if (*(result + 112))
    {
      kaldi::CuMatrix<float>::CuMatrix(v30, *(v5 + 20), *(v5 + 16), 0, 0, 0);
      v8 = *(a2 + 20);
      if (v8 < 2)
      {
        v48 = *(v4 + 144);
        v49 = a3;
        v31[1] = 0;
        *&v32 = 0;
        v31[0] = 0;
        std::vector<kaldi::CuMatrixBase<float> const*,std::allocator<kaldi::CuMatrixBase<float> const*>>::__init_with_size[abi:ne200100]<kaldi::CuMatrixBase<float> const* const*,kaldi::CuMatrixBase<float> const* const*>(v31, &v48, v50, 2uLL);
        (*(**(v4 + 112) + 32))(*(v4 + 112), a2, v31, v30);
        if (v31[0])
        {
          v31[1] = v31[0];
          operator delete(v31[0]);
        }
      }

      else
      {
        v9 = *(*(v4 + 128) + 16);
        kaldi::CuMatrix<float>::CuMatrix(v31, v8, v9, 0, 0, 0);
        LODWORD(v48) = 0;
        std::vector<int>::vector[abi:ne200100](v29, v8);
        kaldi::CuMatrixBase<float>::CopyRows(v31, *(v4 + 144), v29);
        v48 = v31;
        v49 = a3;
        v27 = 0;
        v28 = 0;
        __p = 0;
        std::vector<kaldi::CuMatrixBase<float> const*,std::allocator<kaldi::CuMatrixBase<float> const*>>::__init_with_size[abi:ne200100]<kaldi::CuMatrixBase<float> const* const*,kaldi::CuMatrixBase<float> const* const*>(&__p, &v48, v50, 2uLL);
        kaldi::CuMatrix<float>::CuMatrix(&v48, v8, v9, 0, 0, 0);
        (*(**(v4 + 112) + 32))(*(v4 + 112), a2, &__p, &v48);
        if (v9)
        {
          v10 = 0;
          v11 = v49;
          v12 = v50[2];
          v13 = v30[1];
          do
          {
            v14 = 0;
            v15 = 0;
            v16 = *(*&v13 + 4 * v10);
            do
            {
              v16 = *(v11 + 4 * v10 + 4 * v14) + v16;
              *(*&v13 + 4 * v10) = v16;
              ++v15;
              v14 += v12;
            }

            while (v8 != v15);
            ++v10;
          }

          while (v10 != v9);
        }

        kaldi::CuMatrix<float>::~CuMatrix(&v48);
        if (__p)
        {
          v27 = __p;
          operator delete(__p);
        }

        if (v29[0])
        {
          v29[1] = v29[0];
          operator delete(v29[0]);
        }

        kaldi::CuMatrix<float>::~CuMatrix(v31);
      }

      *(v4 + 72) = vaddq_s64(*(v4 + 72), vdupq_n_s64(v8));
      *(v4 + 88) += v8;
      if (quasar::gLogLevel >= 5)
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        *v31 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Iteration:[", 11);
        v18 = MEMORY[0x1B8C84C30](v17, *(v4 + 72));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "] done, calculated gradient: ", 29);
        std::ostream::operator<<();
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v31);
      }

      kaldi::CuMatrixBase<float>::AddMat(*(v4 + 128), v30, 111, v8, 1.0);
      if (*(v4 + 80) >= *(v4 + 56))
      {
        kaldi::CuMatrixBase<float>::AddMat(*(v4 + 144), *(v4 + 128), 111, -*(v4 + 64), 1.0);
        if (quasar::gLogLevel >= 4)
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          *v31 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Speaker code is updated: ", 25);
          v19 = std::ostream::operator<<();
          v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", processed samples: ", 21);
          v21 = MEMORY[0x1B8C84C30](v20, *(v4 + 72));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", accumulated gradient: ", 24);
          std::ostream::operator<<();
          quasar::QuasarInfoMessage::~QuasarInfoMessage(v31);
        }

        *(v4 + 80) -= *(v4 + 56);
        kaldi::CuMatrixBase<float>::SetZero(*(v4 + 128));
      }

      v22 = *(v4 + 88);
      v23 = *(v4 + 60);
      if (v22 >= v23)
      {
        if (quasar::gLogLevel >= 4)
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          *v31 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Reaches recognition interval, going to reset training and inference speaker code, processed samples: ", 101);
          v25 = MEMORY[0x1B8C84C30](v24, *(v4 + 72));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", speaker code: ", 16);
          std::ostream::operator<<();
          quasar::QuasarInfoMessage::~QuasarInfoMessage(v31);
          v23 = *(v4 + 60);
          v22 = *(v4 + 88);
        }

        *(v4 + 88) = v22 - v23;
        std::mutex::lock((v4 + 216));
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(*(v4 + 160), *(v4 + 144), 111);
        std::mutex::unlock((v4 + 216));
        quasar::SpeakerCodeTraining::resetTraining(v4);
      }

      return kaldi::CuMatrix<float>::~CuMatrix(v30);
    }
  }

  return result;
}

void sub_1B5267AD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void quasar::SpeakerCodeTraining::end(quasar::SpeakerCodeTraining *this)
{
  v1 = atomic_load(this + 280);
  if ((v1 & 1) == 0)
  {
    if (quasar::gLogLevel >= 4)
    {
      memset(v3, 0, sizeof(v3));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Training is still running, going to set end to true and end training", 68);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v3);
    }

    atomic_store(1u, this + 280);
  }
}

void quasar::SpeakerCodeTraining::start(quasar::SpeakerCodeTraining *this)
{
  v1 = atomic_load(this + 280);
  if (v1)
  {
    if (quasar::gLogLevel >= 4)
    {
      memset(v3, 0, sizeof(v3));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Training is ended, going to set end to false and resume training.", 65);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v3);
    }

    atomic_store(0, this + 280);
  }
}

uint64_t quasar::SpeakerCodeTraining::getSpeakerCode@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 152);
  *a2 = *(this + 144);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t quasar::SpeakerCodeTraining::getAccumulatedGradient@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 136);
  *a2 = *(this + 128);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

BOOL quasar::SpeakerCodeTraining::isTaskSupported(const std::string *a1, const void **a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  kaldi::SplitStringToVector(a1 + 8, ",", 1, &v6);
  std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string*>>(v5, v6, v7);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v5, a2) != 0;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v5);
  v5[0] = &v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v5);
  return v3;
}

void sub_1B5267D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a9 = &a14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

int32x2_t *quasar::SpeakerCodeTraining::batchInput(int32x2_t *result, uint64_t a2)
{
  v3 = result[6].u32[1];
  if (v3 != 1)
  {
    v4 = result;
    v5 = v3;
    v7 = *a2;
    v6 = *(a2 + 8);
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4);
    v9 = v8 / v3;
    if (v8 >= v3)
    {
      v11 = 0;
      do
      {
        kaldi::CuMatrix<float>::CuMatrix(&v34, v3, *(v7 + 48 * v3 * v11 + 16), 0, 0, 0);
        v12 = v37;
        v13 = *a2;
        if (v37 >= 1)
        {
          v14 = 0;
          v15 = v35;
          v16 = v36;
          v17 = v13 + 48 * v4[6].i32[1] * v11;
          v18 = 4 * v38;
          do
          {
            v19 = v17 + 48 * v14;
            if (*(v19 + 20) != 1)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "refMat.NumRows() == 1", 21);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v33);
            }

            if (v16 >= 1)
            {
              v20 = 0;
              v21 = *(v19 + 8);
              do
              {
                *(v15 + 4 * v20) = *(v21 + 4 * v20);
                ++v20;
              }

              while (v16 != v20);
            }

            ++v14;
            v15 += v18;
          }

          while (v14 != v12);
        }

        kaldi::CuMatrix<float>::operator=((v13 + 48 * v11), &v34);
        kaldi::CuMatrix<float>::~CuMatrix(&v34);
        ++v11;
        v7 = *a2;
        v6 = *(a2 + 8);
        v3 = v4[6].i32[1];
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4) / v3;
      }

      while (v10 > v11);
    }

    else
    {
      v10 = v8 / v3;
    }

    v22 = v8 - v9 * v5;
    if (v22)
    {
      kaldi::CuMatrix<float>::CuMatrix(&v34, v22, *(v7 + 48 * v10 + 16), 0, 0, 0);
      v23 = 0;
      v24 = *a2;
      v25 = *(a2 + 8);
      v26 = v25 - *a2;
      v27 = v35;
      v28 = v36;
      v29 = 4 * v38;
      do
      {
        v30 = v25 + 48 * (v23 - v22);
        if (*(v30 + 20) != 1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "refMat.NumRows() == 1", 21);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v33);
        }

        if (v28 >= 1)
        {
          v31 = 0;
          v32 = *(v30 + 8);
          do
          {
            *(v27 + 4 * v31) = *(v32 + 4 * v31);
            ++v31;
          }

          while (v28 != v31);
        }

        ++v23;
        v27 += v29;
      }

      while (v22 > v23);
      kaldi::CuMatrix<float>::operator=((v24 + 48 * (0xAAAAAAAAAAAAAAABLL * (v26 >> 4) / v4[6].i32[1])), &v34);
      std::vector<kaldi::CuMatrix<float>>::erase(a2, (*a2 + 48 * (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 4) / v4[6].i32[1]) + 48), *(a2 + 8));
      return kaldi::CuMatrix<float>::~CuMatrix(&v34);
    }

    else
    {
      return std::vector<kaldi::CuMatrix<float>>::erase(a2, (v7 + 48 * v10), v6);
    }
  }

  return result;
}

int32x2_t *std::vector<kaldi::CuMatrix<float>>::erase(uint64_t a1, int32x2_t *a2, int32x2_t *a3)
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
        kaldi::CuMatrix<float>::operator=(v7, v4);
        v4 += 6;
        v7 += 6;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    if (v6 != v7)
    {
      v8 = v6 - 6;
      v9 = v8;
      v10 = v8;
      do
      {
        v11 = *v10;
        v10 -= 6;
        (*(*&v11 + 16))(v9);
        v8 -= 6;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void quasar::QuasarFatalMessage::~QuasarFatalMessage(std::locale *this)
{
  v2 = quasar::QuasarFatalMessage::logger;
  std::stringbuf::str();
  (v2)(&__p, this[33].__locale_);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  this->__locale_ = *MEMORY[0x1E69E54E8];
  *(this + *(v4 - 24)) = v3[3];
  this[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&this[14]);
}

void std::__shared_ptr_emplace<kaldi::CuMatrix<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D08ED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

int32x2_t *std::__shared_ptr_emplace<kaldi::CuMatrix<float>>::__shared_ptr_emplace[abi:ne200100]<int,int,std::allocator<kaldi::CuMatrix<float>>,0>(int32x2_t *a1, unsigned int *a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D08ED0;
  kaldi::CuMatrix<float>::CuMatrix(a1 + 3, *a2, *a3, 0, 0, 0);
  return a1;
}

void *std::__shared_ptr_emplace<std::istringstream>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<std::istringstream>,0>(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D04278;
  std::istringstream::basic_istringstream[abi:ne200100](a1 + 3, a2, 8);
  return a1;
}

uint64_t std::vector<kaldi::CuMatrixBase<float> const*,std::allocator<kaldi::CuMatrixBase<float> const*>>::__init_with_size[abi:ne200100]<kaldi::CuMatrixBase<float> const* const*,kaldi::CuMatrixBase<float> const* const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuMatrixBase<float> const*,std::allocator<kaldi::CuMatrixBase<float> const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5268504(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<kaldi::CuMatrixBase<float> const*,std::allocator<kaldi::CuMatrixBase<float> const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::unordered_set<std::string>::unordered_set<std::__wrap_iter<std::string*>>(uint64_t a1, const void **a2, const void **a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, v5);
      v5 += 3;
    }

    while (v5 != a3);
  }

  return a1;
}

BOOL Vocab::isNonEvent(Vocab *this, unsigned int a2)
{
  if (!*(this + 80) && *(this + 16) == a2)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5 = 0;
  return LHash<unsigned int,float>::locate(this + 6, a2, &v5) != 0;
}

void kaldi::SnrTracker::label_noise_or_speech_frames(std::mutex *this, int64_t a2, int64_t a3, int a4)
{
  if (a2 < 0 || (v5 = a2, a2 > a3))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "Invalid frame range. Coding error.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  std::mutex::lock(this);
  std::vector<BOOL>::resize(&this[1].__m_.__opaque[24], a3, 0);
  v8 = v5;
  if (v5 < a3)
  {
    v9 = *&this[1].__m_.__opaque[24];
    do
    {
      v10 = v8 >> 6;
      v11 = 1 << v8;
      if (a4)
      {
        v12 = *(v9 + 8 * v10) | v11;
      }

      else
      {
        v12 = *(v9 + 8 * v10) & ~v11;
      }

      *(v9 + 8 * v10) = v12;
      ++v8;
    }

    while (v8 < a3);
  }

  std::mutex::unlock(this);
}

double kaldi::SnrTracker::get_snr(std::mutex *this, int a2, int a3)
{
  std::mutex::lock(this);
  if (a3 < 0)
  {
    v7 = (*this[1].__m_.__opaque - this[1].__m_.__sig) >> 2;
    v6 = v7;
  }

  else
  {
    v6 = a3 / *&this[1].__m_.__opaque[16] + a2;
    v7 = (*this[1].__m_.__opaque - this[1].__m_.__sig) >> 2;
  }

  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v8 > *&this[1].__m_.__opaque[32])
  {
    std::vector<BOOL>::resize(&this[1].__m_.__opaque[24], v8, 0);
  }

  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0.0;
  v13 = 0.0;
  do
  {
    v14 = *(this[1].__m_.__sig + 4 * v9);
    v15 = *(*&this[1].__m_.__opaque[24] + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9;
    v16 = v13 + v14;
    v17 = v12 + v14;
    if (v15)
    {
      v12 = v17;
    }

    else
    {
      v13 = v16;
    }

    if (v15)
    {
      ++v10;
    }

    else
    {
      ++v11;
    }

    ++v9;
  }

  while (v8 != v9);
  if (!v11)
  {
LABEL_27:
    v26 = 0xC059000000000000;
LABEL_28:
    v25 = *&v26;
    goto LABEL_29;
  }

  if (!v10)
  {
    v26 = 0x4059000000000000;
    goto LABEL_28;
  }

  v18 = v13 / v11;
  if (v18 < 2.22507386e-308)
  {
    v18 = 2.22507386e-308;
  }

  v19 = log10(v18) * 10.0;
  v20 = v12 / v10;
  if (v20 < 2.22507386e-308)
  {
    v20 = 2.22507386e-308;
  }

  v21 = log10(v20) * 10.0;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "signal energy (dB) = ", 21);
    v23 = MEMORY[0x1B8C84BE0](v22, v19);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " noise energy (dB) = ", 21);
    MEMORY[0x1B8C84BE0](v24, v21);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v28);
  }

  v25 = v19 - v21;
LABEL_29:
  std::mutex::unlock(this);
  return v25;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 4 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 4, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 4 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 4;
      v9 = a3 - 4 - __src;
      if (a3 - 4 != __src)
      {
        memmove(__src + 4, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>>(__src, a2, a3);
    }
  }

  return v4;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>>(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 2;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 2)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 4;
      v6 = a2 + 4;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 4;
        v8 = v6 == a3;
        v6 += 4;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 2;
    v10 = (a2 - a1) >> 2;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[4 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 4;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[4 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 2);
        v21 = v3 - ((a3 - v15) >> 2);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[4 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

void flatbuffers_2_0_6::vector_downward::~vector_downward(flatbuffers_2_0_6::vector_downward *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *this;
    if (*this)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      MEMORY[0x1B8C85310](v2, 0x1000C8077774924);
    }
  }

  *(this + 6) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

void flatbuffers_2_0_6::DefaultAllocator::deallocate(flatbuffers_2_0_6::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x1B8C85310);
  }
}

char *flatbuffers_2_0_6::Allocator::reallocate_downward(flatbuffers_2_0_6::Allocator *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::Finish(flatbuffers_2_0_6::FlatBufferBuilder *this, int a2, const char *a3, int a4)
{
  *(this + 8) = *(this + 6);
  v8 = -4;
  v9 = -8;
  if (!a4)
  {
    v9 = -4;
  }

  if (!a3)
  {
    v8 = 0;
  }

  flatbuffers_2_0_6::vector_downward::fill(this, (v9 + v8 - *(this + 10)) & (*(this + 10) - 1));
  if (a3)
  {
    flatbuffers_2_0_6::FlatBufferBuilder::PushBytes(this, a3, 4uLL);
  }

  v10 = flatbuffers_2_0_6::FlatBufferBuilder::ReferTo(this, a2);
  result = flatbuffers_2_0_6::FlatBufferBuilder::PushElement<unsigned int>(this, v10);
  if (a4)
  {
    result = flatbuffers_2_0_6::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 10));
  }

  *(this + 79) = 1;
  return result;
}

void *flatbuffers_2_0_6::FlatBufferBuilder::PushBytes(void *this, const unsigned __int8 *__src, unint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = this[7];
    if (v6 - this[8] < a3)
    {
      flatbuffers_2_0_6::vector_downward::reallocate(this, a3);
      v6 = v5[7];
    }

    v5[7] = v6 - a3;
    *(v5 + 10) += a3;

    return memcpy((v6 - a3), __src, a3);
  }

  return this;
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::PushElement<unsigned int>(flatbuffers_2_0_6::vector_downward *this, int a2)
{
  if (*(this + 10) <= 3uLL)
  {
    *(this + 10) = 4;
  }

  flatbuffers_2_0_6::vector_downward::fill(this, -*(this + 10) & 3);
  v5 = a2;
  flatbuffers_2_0_6::vector_downward::push_small<unsigned int>(this, &v5);
  return *(this + 10);
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::ReferTo(flatbuffers_2_0_6::FlatBufferBuilder *this, int a2)
{
  if (*(this + 10) <= 3uLL)
  {
    *(this + 10) = 4;
  }

  flatbuffers_2_0_6::vector_downward::fill(this, -*(this + 10) & 3);
  return (*(this + 10) - a2 + 4);
}

void *flatbuffers_2_0_6::vector_downward::fill(void *this, unint64_t a2)
{
  if (a2)
  {
    v3 = this;
    v4 = this[7];
    if (v4 - this[8] < a2)
    {
      this = flatbuffers_2_0_6::vector_downward::reallocate(this, a2);
      v4 = v3[7];
    }

    v5 = 0;
    v3[7] = v4 - a2;
    *(v3 + 10) += a2;
    do
    {
      *(v3[7] + v5++) = 0;
    }

    while (a2 != v5);
  }

  return this;
}

uint64_t flatbuffers_2_0_6::vector_downward::reallocate(flatbuffers_2_0_6::vector_downward *this, unint64_t a2)
{
  v3 = *(this + 4);
  v4 = *(this + 10);
  v5 = *(this + 6);
  v6 = *(this + 8) - v5;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = *(this + 2);
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (*(this + 3) + v3 + v7 - 1) & -*(this + 3);
  *(this + 4) = v8;
  v9 = *this;
  if (v5)
  {
    if (!v9)
    {
      v12 = &unk_1F2D08F30;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v5, v3, v8, v4, v6);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_1F2D08F30;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = result + *(this + 4) - v4;
  *(this + 6) = result;
  *(this + 7) = v11;
  *(this + 8) = result + v6;
  return result;
}

void *flatbuffers_2_0_6::vector_downward::push_small<unsigned int>(void *this, _DWORD *a2)
{
  v3 = this;
  v4 = this[7];
  if ((v4 - this[8]) <= 3)
  {
    this = flatbuffers_2_0_6::vector_downward::reallocate(this, 4uLL);
    v4 = v3[7];
  }

  *(v3 + 10) += 4;
  *(v4 - 4) = *a2;
  v3[7] = v4 - 4;
  return this;
}

_BYTE *flatbuffers_2_0_6::FlatBufferBuilder::AddElement<int>(_BYTE *this, uint64_t a2, int a3, int a4)
{
  v5 = this;
  if (a3 != a4 || this[88] == 1)
  {
    v6 = flatbuffers_2_0_6::FlatBufferBuilder::PushElement<unsigned int>(this, a3);

    return flatbuffers_2_0_6::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return this;
}

void *flatbuffers_2_0_6::FlatBufferBuilder::TrackField(void *this, uint64_t a2, unsigned int a3)
{
  v5 = this;
  v6 = this[8];
  if (this[7] - v6 <= 7uLL)
  {
    this = flatbuffers_2_0_6::vector_downward::reallocate(this, 8uLL);
    v6 = v5[8];
  }

  *v6 = a3 | (a2 << 32);
  v5[8] += 8;
  ++*(v5 + 18);
  if (*(v5 + 38) < a2)
  {
    *(v5 + 38) = a2;
  }

  return this;
}

_BYTE *flatbuffers_2_0_6::FlatBufferBuilder::AddElement<float>(_BYTE *this, uint64_t a2, float a3, float a4)
{
  v5 = this;
  if (a3 != a4 || this[88] == 1)
  {
    v6 = flatbuffers_2_0_6::FlatBufferBuilder::PushElement<float>(this, a3);

    return flatbuffers_2_0_6::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return this;
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::PushElement<float>(flatbuffers_2_0_6::vector_downward *this, float a2)
{
  if (*(this + 10) <= 3uLL)
  {
    *(this + 10) = 4;
  }

  flatbuffers_2_0_6::vector_downward::fill(this, -*(this + 10) & 3);
  v5 = a2;
  flatbuffers_2_0_6::vector_downward::push_small<float>(this, &v5);
  return *(this + 10);
}

float flatbuffers_2_0_6::vector_downward::push_small<float>(flatbuffers_2_0_6::vector_downward *this, float *a2)
{
  v4 = *(this + 7);
  if ((v4 - *(this + 8)) <= 3)
  {
    flatbuffers_2_0_6::vector_downward::reallocate(this, 4uLL);
    v4 = *(this + 7);
  }

  result = *a2;
  *(v4 - 4) = *a2;
  *(this + 7) = v4 - 4;
  *(this + 10) += 4;
  return result;
}

flatbuffers_2_0_6::FlatBufferBuilder *flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(flatbuffers_2_0_6::FlatBufferBuilder *result, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = flatbuffers_2_0_6::FlatBufferBuilder::ReferTo(result, a3);

    return flatbuffers_2_0_6::FlatBufferBuilder::AddElement<int>(v4, a2, v5, 0);
  }

  return result;
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::EndTable(flatbuffers_2_0_6::FlatBufferBuilder *this, __int16 a2)
{
  v4 = flatbuffers_2_0_6::FlatBufferBuilder::PushElement<unsigned int>(this, 0);
  if ((*(this + 38) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(this + 38) + 2);
  }

  *(this + 38) = v5;
  flatbuffers_2_0_6::vector_downward::fill_big(this, v5);
  v6 = v4 - a2;
  v8 = *(this + 7);
  v7 = *(this + 8);
  *(v8 + 1) = v6;
  *v8 = *(this + 38);
  v9 = *(this + 18);
  v10 = (v7 - 8 * v9);
  if (v9)
  {
    v11 = (v7 - 8 * v9);
    do
    {
      *&v8[v11[2]] = v4 - *v11;
      v11 += 4;
    }

    while (v11 < v7);
  }

  *(this + 8) = v10;
  *(this + 18) = 0;
  *(this + 38) = 0;
  v12 = *(this + 10);
  if ((*(this + 89) & 1) == 0 || (v13 = *(this + 6), v13 >= v10))
  {
LABEL_13:
    v17 = v12;
LABEL_14:
    if ((v8 - v10) <= 3)
    {
      flatbuffers_2_0_6::vector_downward::reallocate(this, 4uLL);
      v10 = *(this + 8);
    }

    *v10 = v17;
    *(this + 8) = v10 + 4;
    goto LABEL_17;
  }

  v14 = *v8;
  v15 = v13 + *(this + 4);
  while (1)
  {
    v16 = *v13;
    if (v14 == *&v15[-v16] && !memcmp(&v15[-v16], v8, v14))
    {
      break;
    }

    if (++v13 >= v10)
    {
      goto LABEL_13;
    }
  }

  v8 += (v12 - v4);
  *(this + 7) = v8;
  *(this + 10) = v4;
  v12 = v16;
  v17 = v4;
  if (v16 == v4)
  {
    goto LABEL_14;
  }

LABEL_17:
  *(*(this + 6) + *(this + 4) - v4) = v12 - v4;
  *(this + 78) = 0;
  return v4;
}

void flatbuffers_2_0_6::vector_downward::fill_big(flatbuffers_2_0_6::vector_downward *this, unint64_t a2)
{
  v4 = *(this + 7);
  if (a2)
  {
    if (&v4[-*(this + 8)] < a2)
    {
      flatbuffers_2_0_6::vector_downward::reallocate(this, a2);
      v4 = *(this + 7);
    }

    v4 -= a2;
    *(this + 7) = v4;
    *(this + 10) += a2;
  }

  bzero(v4, a2);
}

void *flatbuffers_2_0_6::FlatBufferBuilder::StartVector(flatbuffers_2_0_6::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  *(this + 78) = 1;
  v5 = a3 * a2;
  if (*(this + 10) <= 3uLL)
  {
    *(this + 10) = 4;
  }

  flatbuffers_2_0_6::vector_downward::fill(this, (-*(this + 10) - v5) & 3);
  if (*(this + 10) < a3)
  {
    *(this + 10) = a3;
  }

  v6 = (a3 - 1) & (-*(this + 10) - v5);

  return flatbuffers_2_0_6::vector_downward::fill(this, v6);
}

uint64_t flatbuffers_2_0_6::FlatBufferBuilder::CreateString(flatbuffers_2_0_6::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  if (*(this + 10) <= 3uLL)
  {
    *(this + 10) = 4;
  }

  flatbuffers_2_0_6::vector_downward::fill(this, (~a3 - *(this + 10)) & 3);
  flatbuffers_2_0_6::vector_downward::fill(this, 1uLL);
  flatbuffers_2_0_6::FlatBufferBuilder::PushBytes(this, a2, a3);
  flatbuffers_2_0_6::FlatBufferBuilder::PushElement<unsigned int>(this, a3);
  return *(this + 10);
}

void *flatbuffers_2_0_6::FlatBufferBuilder::AddElement<signed char>(void *this, uint64_t a2, int a3, int a4)
{
  v5 = this;
  if (a3 != a4 || *(this + 88) == 1)
  {
    if (!this[10])
    {
      this[10] = 1;
    }

    v6 = a3;
    flatbuffers_2_0_6::vector_downward::push_small<signed char>(this, &v6);
    return flatbuffers_2_0_6::FlatBufferBuilder::TrackField(v5, a2, *(v5 + 40));
  }

  return this;
}

void *flatbuffers_2_0_6::vector_downward::push_small<signed char>(void *this, _BYTE *a2)
{
  v3 = this;
  v4 = this[7];
  if (v4 == this[8])
  {
    this = flatbuffers_2_0_6::vector_downward::reallocate(this, 1uLL);
    v4 = v3[7];
  }

  v3[7] = v4 - 1;
  ++*(v3 + 10);
  *(v4 - 1) = *a2;
  return this;
}

void flatbuffers_2_0_6::FlatBufferBuilder::~FlatBufferBuilder(flatbuffers_2_0_6::FlatBufferBuilder *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    std::__tree<int>::destroy(*(this + 12), *(v2 + 8));
    MEMORY[0x1B8C85350](v2, 0x1060C40C2B13FB5);
  }

  flatbuffers_2_0_6::vector_downward::~vector_downward(this);
}

void std::__shared_ptr_emplace<quasar::PDecTranslator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D08F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::vector<quasar::TranslationPhrase>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::TranslationPhrase>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::TranslationPhrase>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 184;
    do
    {
      v7 = (v4 + 160);
      std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v7);
      v5 = *(v4 + 136);
      if (v5)
      {
        *(v4 + 144) = v5;
        operator delete(v5);
      }

      if (*(v4 + 104) == 1)
      {
        v7 = (v4 + 80);
        std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v7);
      }

      if (*(v4 + 72) == 1 && *(v4 + 71) < 0)
      {
        operator delete(*(v4 + 48));
      }

      if (*(v4 + 47) < 0)
      {
        operator delete(*(v4 + 24));
      }

      v7 = v4;
      std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&v7);
      v6 = v4 - 16;
      v4 -= 200;
    }

    while (v6 != v3);
  }

  a1[1] = v3;
}

_BYTE *kaldi::quasar::AbstractAttribute::ToString@<X0>(kaldi::quasar::AbstractAttribute *this@<X0>, _BYTE *a2@<X8>)
{
  if (this >= 8)
  {
    v6 = this;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Invalid Category given ", 23);
    MEMORY[0x1B8C84C00](v5, v6);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  v3 = off_1E7C1A810[this];

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

_BYTE *kaldi::quasar::AbstractAttribute::ToString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 >= 4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Invalid level given ", 20);
    MEMORY[0x1B8C84C00](v4, a1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  v2 = off_1E7C1A850[a1];

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 >= 9)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Invalid info given ", 19);
    MEMORY[0x1B8C84C00](v4, a1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  v2 = off_1E7C1A870[a1];

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 >= 3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Invalid source given ", 21);
    MEMORY[0x1B8C84C00](v4, a1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  v2 = off_1E7C1A8B8[a1];

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t kaldi::quasar::StringAttribute::ToString(kaldi::quasar::StringAttribute *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  kaldi::quasar::AbstractAttribute::ToString(*(this + 2), __p);
  if ((v17 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v3 = v17;
  }

  else
  {
    v3 = __p[1];
  }

  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v2, v3);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "_", 1);
  v6 = MEMORY[0x1B8C84C00](v5, *(this + 3));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "_", 1);
  v10 = *(this + 2);
  v9 = this + 16;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v12, v13);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v18[0] = *MEMORY[0x1E69E54D8];
  v14 = *(MEMORY[0x1E69E54D8] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v19 = v14;
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v23);
}

uint64_t kaldi::quasar::StringAttribute::Hash(kaldi::quasar::StringAttribute *this)
{
  v3 = *(this + 2);
  v1 = this + 16;
  v2 = v3;
  v4 = v1[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(v1 + 1);
  }

  if (v5 >= 0)
  {
    v2 = v1;
  }

  for (result = 0; v4; --v4)
  {
    v7 = *v2++;
    result = v7 + 7853 * result;
  }

  return result;
}

BOOL kaldi::quasar::StringAttribute::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 40))(a2) != 3 || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v4 = *(a1 + 39);
  if (v4 >= 0)
  {
    v5 = *(a1 + 39);
  }

  else
  {
    v5 = *(a1 + 24);
  }

  v6 = *(a2 + 39);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 24);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  v9 = (a1 + 16);
  v8 = v10;
  if (v4 >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v14 = *(a2 + 16);
  v13 = (a2 + 16);
  v12 = v14;
  if (v7 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  return memcmp(v11, v15, v5) == 0;
}

uint64_t kaldi::quasar::FloatAttribute::ToString(kaldi::quasar::FloatAttribute *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  kaldi::quasar::AbstractAttribute::ToString(*(this + 2), __p);
  if ((v14 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v3 = v14;
  }

  else
  {
    v3 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v2, v3);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "_", 1);
  v5 = MEMORY[0x1B8C84C00](v4, *(this + 3));
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "_", 1);
  MEMORY[0x1B8C84C00](v6, *(this + 4));
  v7 = *(this + 3);
  if (v7)
  {
    kaldi::quasar::MinEntropyPartitioning::GetRange(v7, *(this + 4));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "_[", 2);
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "--", 2);
    v9 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ")", 1);
  }

  else
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "_", 1);
    MEMORY[0x1B8C84C00](v10, *(this + 4));
  }

  std::stringbuf::str();
  v15[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v11;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v20);
}

void sub_1B526A260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::BaseAttribute::ToString(kaldi::quasar::BaseAttribute *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v16);
  kaldi::quasar::AbstractAttribute::ToString(*(this + 5), &__p);
  if ((v15 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v15 & 0x80u) == 0)
  {
    v3 = v15;
  }

  else
  {
    v3 = v14;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, p_p, v3);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "_", 1);
  kaldi::quasar::AbstractAttribute::ToString(*(this + 2), &__p);
  if ((v15 & 0x80u) == 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  if ((v15 & 0x80u) == 0)
  {
    v6 = v15;
  }

  else
  {
    v6 = v14;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "_", 1);
  kaldi::quasar::AbstractAttribute::ToString(*(this + 4), &__p);
  if ((v15 & 0x80u) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if ((v15 & 0x80u) == 0)
  {
    v9 = v15;
  }

  else
  {
    v9 = v14;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "_", 1);
  MEMORY[0x1B8C84C00](v10, *(this + 3));
  std::stringbuf::str();
  v16[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v16 + *(v16[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v17 = v11;
  v18 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v21);
}

void sub_1B526A5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::BaseAttribute::ToString(kaldi::quasar::BaseAttribute *this, const kaldi::quasar::ErrorProfile *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  kaldi::quasar::AbstractAttribute::ToString(*(this + 5), &__p);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "_", 1);
  kaldi::quasar::AbstractAttribute::ToString(*(this + 2), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "_", 1);
  kaldi::quasar::AbstractAttribute::ToString(*(this + 4), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = *(this + 4);
  if (v12 == 2)
  {
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "_", 1);
    kaldi::quasar::ErrorProfile::ToPhoneString(a2, *(this + 3), &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    if (v12 != 3)
    {
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "_", 1);
      MEMORY[0x1B8C84C00](v16, *(this + 3));
      goto LABEL_42;
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "_", 1);
    kaldi::quasar::ErrorProfile::ToWordString(a2, *(this + 3), &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_42:
  std::stringbuf::str();
  v20[0] = *MEMORY[0x1E69E54D8];
  v17 = *(MEMORY[0x1E69E54D8] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v21 = v17;
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v25);
}

void sub_1B526A948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::ContextAttribute::ToString(kaldi::quasar::ContextAttribute *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
  kaldi::quasar::AbstractAttribute::ToString(*(this + 2), &__p);
  if ((v12 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v3 = v12;
  }

  else
  {
    v3 = v11;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, p_p, v3);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "_", 1);
  (***(this + 2))(&__p);
  if ((v12 & 0x80u) == 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v6 = v12;
  }

  else
  {
    v6 = v11;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "_", 1);
  MEMORY[0x1B8C84C00](v7, *(this + 3));
  std::stringbuf::str();
  v13[0] = *MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 72);
  *(v13 + *(v13[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v14 = v8;
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v18);
}

void sub_1B526AC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::ContextAttribute::ToString(kaldi::quasar::ContextAttribute *this, const kaldi::quasar::ErrorProfile *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  kaldi::quasar::AbstractAttribute::ToString(*(this + 2), &__p);
  if ((v13 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v12;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, p_p, v4);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "_", 1);
  (*(**(this + 2) + 8))(&__p);
  if ((v13 & 0x80u) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = v12;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "_", 1);
  MEMORY[0x1B8C84C00](v8, *(this + 3));
  std::stringbuf::str();
  v14[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v15 = v9;
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v19);
}

void sub_1B526AF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::WordConfusion::ToString(kaldi::quasar::WordConfusion *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  kaldi::quasar::AbstractAttribute::ToString(*(this + 2), __p);
  if ((v11 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v3 = v11;
  }

  else
  {
    v3 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v2, v3);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 6) != *(this + 5))
  {
    v4 = 0;
    do
    {
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "_", 1);
      MEMORY[0x1B8C84C00](v5, *(*(this + 5) + 4 * v4++));
    }

    while (v4 < (*(this + 6) - *(this + 5)) >> 2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "--", 2);
  v6 = *(this + 2);
  if (*(this + 3) != v6)
  {
    v7 = 0;
    do
    {
      if (v7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "_", 1);
        v6 = *(this + 2);
      }

      MEMORY[0x1B8C84C00](&v13, *(v6 + 4 * v7++));
      v6 = *(this + 2);
    }

    while (v7 < (*(this + 3) - v6) >> 2);
  }

  std::stringbuf::str();
  v12[0] = *MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v13 = v8;
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v17);
}

void sub_1B526B250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::WordConfusion::ToString(kaldi::quasar::WordConfusion *this, const kaldi::quasar::ErrorProfile *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  kaldi::quasar::AbstractAttribute::ToString(*(this + 2), &__p);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(this + 6) != *(this + 5))
  {
    v6 = 0;
    do
    {
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "_", 1);
      kaldi::quasar::ErrorProfile::ToWordString(a2, *(*(this + 5) + 4 * v6), &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &__p;
      }

      else
      {
        v8 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v9 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v6;
    }

    while (v6 < (*(this + 6) - *(this + 5)) >> 2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "--", 2);
  v10 = *(this + 2);
  if (*(this + 3) != v10)
  {
    v11 = 0;
    do
    {
      if (v11)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "_", 1);
        v10 = *(this + 2);
      }

      kaldi::quasar::ErrorProfile::ToWordString(a2, *(v10 + 4 * v11), &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &__p;
      }

      else
      {
        v12 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v12, v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v11;
      v10 = *(this + 2);
    }

    while (v11 < (*(this + 3) - v10) >> 2);
  }

  std::stringbuf::str();
  v17[0] = *MEMORY[0x1E69E54D8];
  v14 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v14;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v22);
}

void sub_1B526B584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::WordConfusion::Hash(kaldi::quasar::WordConfusion *this)
{
  v1 = *(this + 5);
  v2 = *(this + 6);
  if (v1 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v4 = *v1++;
    result = v4 + 7853 * result;
  }

  while (v1 != v2);
  return result;
}

BOOL kaldi::quasar::WordConfusion::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 40))(a2) == 6 && (v4 = *(a1 + 16), v5 = *(a1 + 24) - v4, v6 = *(a2 + 16), v5 == *(a2 + 24) - v6) && (v7 = *(a1 + 40), v8 = *(a1 + 48) - v7, v9 = *(a2 + 40), v8 == *(a2 + 48) - v9) && *(a1 + 64) == *(a2 + 64) && !memcmp(v4, v6, v5))
  {
    return memcmp(v7, v9, v8) == 0;
  }

  else
  {
    return 0;
  }
}

void kaldi::quasar::AttributeWrapper::~AttributeWrapper(kaldi::quasar::AttributeWrapper *this)
{
  *this = &unk_1F2D08FE0;
  if (((*(**(this + 2) + 56))(*(this + 2)) & 1) == 0)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 72))(v2);
    }
  }
}

{
  kaldi::quasar::AttributeWrapper::~AttributeWrapper(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t *kaldi::quasar::AttributeFactory::CreateStringAttribute(kaldi::quasar::AttributeFactory *a1, int a2, __int128 *a3)
{
  kaldi::quasar::StringAttribute::StringAttribute(v6, a2, a3);
  Attribute = kaldi::quasar::AttributeFactory::GetAttribute(a1, v6);
  v6[0] = &unk_1F2D09108;
  if (v7 < 0)
  {
    operator delete(v6[2]);
  }

  return Attribute;
}

void sub_1B526B814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *kaldi::quasar::AttributeFactory::GetAttribute(kaldi::quasar::AttributeFactory *this, kaldi::quasar::AbstractAttribute *a2)
{
  v6 = a2;
  v3 = std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::find<kaldi::quasar::AbstractAttribute *>(this + 1, &v6);
  if (!v3)
  {
    v5 = (*(*v6 + 32))(v6);
    kaldi::quasar::AttributeFactory::AddAttribute(this, v5);
  }

  return v3[3];
}

void kaldi::quasar::StringAttribute::~StringAttribute(void **this)
{
  *this = &unk_1F2D09108;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F2D09108;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t *kaldi::quasar::AttributeFactory::CreateBaseAttribute(kaldi::quasar::AttributeFactory *a1, int a2, int a3, int a4, int a5)
{
  v7 = a4;
  v8 = a2;
  v6 = &unk_1F2D091F8;
  v9 = a3;
  v10 = a5;
  return kaldi::quasar::AttributeFactory::GetAttribute(a1, &v6);
}

uint64_t *kaldi::quasar::AttributeFactory::CreateContextAttribute(kaldi::quasar::AttributeFactory *a1, int a2, int a3, unsigned int a4, unsigned int a5)
{
  v10 = 0;
  v11 = a2;
  v9 = &unk_1F2D091F8;
  v12 = __PAIR64__(a5, a4);
  Attribute = kaldi::quasar::AttributeFactory::GetAttribute(a1, &v9);
  v10 = 2;
  v11 = a3;
  v9 = &unk_1F2D09288;
  v12 = Attribute;
  return kaldi::quasar::AttributeFactory::GetAttribute(a1, &v9);
}

uint64_t *kaldi::quasar::AttributeFactory::CreateWordConfusionAttribute(kaldi::quasar::AttributeFactory *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  kaldi::quasar::WordConfusion::WordConfusion(v7, a2, a3, a4);
  Attribute = kaldi::quasar::AttributeFactory::GetAttribute(a1, v7);
  kaldi::quasar::WordConfusion::~WordConfusion(v7);
  return Attribute;
}

void sub_1B526BA50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::quasar::WordConfusion::~WordConfusion(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::AttributeFactory::~AttributeFactory(kaldi::quasar::AttributeFactory *this)
{
  *this = &unk_1F2D09040;
  for (i = *(this + 3); i; i = *i)
  {
    v3 = i[3];
    if (v3)
    {
      (*(*v3 + 72))(v3);
    }
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 8);
}

{
  kaldi::quasar::AttributeFactory::~AttributeFactory(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::WordConfusion::~WordConfusion(kaldi::quasar::WordConfusion *this)
{
  kaldi::quasar::WordConfusion::~WordConfusion(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D09300;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

uint64_t kaldi::quasar::StringAttribute::StringAttribute(uint64_t a1, int a2, __int128 *a3)
{
  *(a1 + 8) = 1;
  *(a1 + 12) = a2;
  *a1 = &unk_1F2D09108;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v4;
  }

  return a1;
}

uint64_t kaldi::quasar::WordConfusion::WordConfusion(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  *(a1 + 8) = 8;
  *a1 = &unk_1F2D09300;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 16, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 40, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 64) = a2;
  return a1;
}

void sub_1B526C1A8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeWrapper *>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeWrapper *>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeWrapper *>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,kaldi::quasar::AttributeWrapper *>>>::__emplace_unique_key_args<kaldi::quasar::AbstractAttribute *,std::piecewise_construct_t const&,std::tuple<kaldi::quasar::AbstractAttribute * const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = (*(**a2 + 16))();
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

  if (((*(*v11[2] + 24))(v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void QuasarITNImpl::formatWords(uint64_t a1@<X0>, uint64_t a2@<X1>, std::wstring *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, std::wstring *a9@<X8>)
{
  v17 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(v28, "");
  std::string::basic_string[abi:ne200100]<0>(v26, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v21 = 0;
  (*(*v17 + 16))(&v25, v17, a2, v28, v26, a5, __p, a4, a7, v21, a6);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (&v25 != a3)
  {
    std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a3, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_, 0x6DB6DB6DB6DB6DB7 * ((v25.__r_.__value_.__l.__size_ - v25.__r_.__value_.__r.__words[0]) >> 5));
  }

  v18 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(v28, "");
  (*(*v18 + 48))(v18, &v25, a5, v28, 0, a8);
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  v20 = a9->__r_.__value_.__r.__words[0];
  size = a9->__r_.__value_.__l.__size_;
  if (a9->__r_.__value_.__r.__words[0] != size)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v28, "\x1F");
      std::string::basic_string[abi:ne200100]<0>(v26, "");
      quasar::replaceAll(v20, v28, v26);
      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      v20 += 224;
    }

    while (v20 != size);
  }

  if (a8)
  {
    quasar::QuasarTextProc::updateHammeredItnWithEmojiAlternativeName(*(a1 + 8), &v25, a9);
  }

  v28[0] = &v25;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v28);
}

void sub_1B526C708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  a22 = a12;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = &a19;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void sub_1B526C888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  quasar::SystemConfig::~SystemConfig(va);
  _Unwind_Resume(a1);
}

void sub_1B526C954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  quasar::SystemConfig::~SystemConfig(va);
  _Unwind_Resume(a1);
}

void SpeechITN::emojiPhraseWithoutKeyword(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double SpeechITN::getEndsOfSentencePunctuations@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  return result;
}

void QuasarITNImpl::~QuasarITNImpl(QuasarITNImpl *this)
{
  v2 = *(this + 1);
  *this = &unk_1F2D09398;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_1F2D09398;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::DecoderPassData::DecoderPassData(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, char a8, char a9, uint64_t *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, char a19, char a20, uint64_t *a21, char a22)
{
  *a1 = *a4;
  v26 = a4[1];
  *(a1 + 8) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *a5;
  v27 = a5[1];
  *(a1 + 24) = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = *a6;
  v28 = a6[1];
  *(a1 + 40) = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *a7;
  v29 = a7[1];
  *(a1 + 56) = v29;
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = *a13;
  v30 = a13[1];
  *(a1 + 72) = v30;
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }

  v31 = *a6;
  if (*a6)
  {
    *(a1 + 80) = *(v31 + 32);
    v32 = *(v31 + 40);
    *(a1 + 88) = v32;
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  kaldi::SilencePhoneSet::SilencePhoneSet((a1 + 96));
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 208) = 1;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = quasar::Location::UNDEFINED_COORDINATES;
  *(a1 + 384) = 0;
  *(a1 + 376) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 368) = a1 + 376;
  *(a1 + 408) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 1065353216;
  *(a1 + 472) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = *a3;
  v33 = a3[1];
  *(a1 + 528) = v33;
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 536) = *a2;
  v34 = a2[1];
  *(a1 + 544) = v34;
  if (v34)
  {
    atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 552) = 0;
  *(a1 + 556) = 0;
  *(a1 + 560) = 0;
  *(a1 + 561) = a8;
  *(a1 + 562) = a9;
  *(a1 + 568) = 0;
  *(a1 + 584) = 0;
  *(a1 + 576) = 0;
  std::vector<std::weak_ptr<quasar::Decoder>>::__init_with_size[abi:ne200100]<std::weak_ptr<quasar::Decoder>*,std::weak_ptr<quasar::Decoder>*>(a1 + 568, *a10, a10[1], (a10[1] - *a10) >> 4);
  *(a1 + 592) = *a11;
  v35 = a11[1];
  *(a1 + 600) = v35;
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  quasar::PhonesetMapping::PhonesetMapping((a1 + 608), a12);
  if (*(a12 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 632), *a12, *(a12 + 8));
  }

  else
  {
    v36 = *a12;
    *(a1 + 648) = *(a12 + 16);
    *(a1 + 632) = v36;
  }

  *(a1 + 656) = 0;
  *(a1 + 660) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = a14;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 1065353216;
  *(a1 + 720) = a15;
  *(a1 + 728) = 0;
  *(a1 + 744) = 0;
  *(a1 + 736) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 728, *a16, a16[1], 0xAAAAAAAAAAAAAAABLL * ((a16[1] - *a16) >> 3));
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 752, *a17, a17[1], 0xAAAAAAAAAAAAAAABLL * ((a17[1] - *a17) >> 3));
  *(a1 + 792) = 0;
  *(a1 + 776) = 0u;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 776, *a18, a18[1], 0xAAAAAAAAAAAAAAABLL * ((a18[1] - *a18) >> 3));
  *(a1 + 800) = a19;
  *(a1 + 801) = a20;
  *(a1 + 808) = 0;
  *(a1 + 824) = 0;
  *(a1 + 816) = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1 + 808, *a21, a21[1], 0xAAAAAAAAAAAAAAABLL * ((a21[1] - *a21) >> 3));
  *(a1 + 832) = -1;
  *(a1 + 836) = 0;
  *(a1 + 837) = a22;
  return a1;
}

{
  return quasar::DecoderPassData::DecoderPassData(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void sub_1B526CE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, void **a12)
{
  if (*(v12 + 631) < 0)
  {
    operator delete(*v13);
  }

  v16 = *(v12 + 600);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  a12 = a10;
  std::vector<std::weak_ptr<quasar::Decoder>>::__destroy_vector::operator()[abi:ne200100](&a12);
  v17 = *(v12 + 544);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(v12 + 528);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  a12 = v14 + 31;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a12);
  v19 = *(v12 + 464);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a11);
  v20 = *(v12 + 400);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__tree<int>::destroy((v14 + 15), *(v12 + 376));
  v21 = *(v12 + 344);
  if (v21)
  {
    *(v12 + 352) = v21;
    operator delete(v21);
  }

  a12 = v14 + 9;
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  v22 = *(v12 + 296);
  if (v22)
  {
    *(v12 + 304) = v22;
    operator delete(v22);
  }

  a12 = v14 + 3;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a12 = v14;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a12);
  v23 = *(v12 + 224);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v24 = *(v12 + 192);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v25 = *(v12 + 176);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  kaldi::SilencePhoneSet::~SilencePhoneSet((v12 + 96));
  v26 = *(v12 + 88);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = *(v12 + 72);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(v12 + 56);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v29 = *(v12 + 40);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v12 + 24);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v12 + 8);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::Decoder::Decoder(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F2D093F8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v3;
  }

  quasar::SystemConfig::Version::Version((a1 + 32));
  *(a1 + 40) = 0xC800000190;
  *(a1 + 48) = 0;
  *(a1 + 56) = 256;
  *(a1 + 120) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = a1 + 120;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 176) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = a1 + 296;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = a1 + 320;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 452) = 100;
  return a1;
}

void sub_1B526D1B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::NumArcs<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(uint64_t a1)
{
  if ((*(*a1 + 160))(a1) < 1)
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = 0;
  do
  {
    v3 = v3 + (*(*a1 + 40))(a1, v2);
    v2 = (v2 + 1);
  }

  while (v2 < (*(*a1 + 160))(a1));
  return v3;
}

uint64_t quasar::Decoder::isLikelyWithPhoeticName(const std::string *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "~w00");
  quasar::splitAndTrimNoEmpty(a1, &__p, &v27);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v2 = v27;
  for (i = v28; v2 != i; ++v2)
  {
    v4 = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
    if (v4 < 0)
    {
      v5 = v2->__r_.__value_.__r.__words[0];
      size = v2->__r_.__value_.__l.__size_;
    }

    else
    {
      v5 = v2;
      size = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
    }

    if (size >= 1)
    {
      v7 = v5 + size;
      v8 = v5;
      do
      {
        v9 = memchr(v8, 92, size);
        if (!v9)
        {
          break;
        }

        if (*v9 == 92)
        {
          if (v9 != v7 && v9 - v5 != -1)
          {
            if ((v4 & 0x80000000) != 0)
            {
              v10 = v2->__r_.__value_.__r.__words[0];
              v4 = v2->__r_.__value_.__l.__size_;
            }

            else
            {
              v10 = v2;
            }

            v11 = v10 + v4;
            if (v4 >= 1)
            {
              v12 = v10;
              do
              {
                v13 = memchr(v12, 92, v4);
                if (!v13)
                {
                  break;
                }

                if (*v13 == 92)
                {
                  goto LABEL_24;
                }

                v12 = (v13 + 1);
                v4 = v11 - v12;
              }

              while (v11 - v12 > 0);
            }

            v13 = v11;
LABEL_24:
            if (v13 == v11)
            {
              v14 = 0;
            }

            else
            {
              v14 = v13 - v10 + 1;
            }

            std::string::basic_string(&__p, v2, v14, 0xFFFFFFFFFFFFFFFFLL, &v29);
            v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v16 = __p.__r_.__value_.__r.__words[0];
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
              v18 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v18 = __p.__r_.__value_.__l.__size_;
            }

            v19 = p_p + v18;
            if (v18 >= 1)
            {
              v20 = p_p;
              do
              {
                v21 = memchr(v20, 92, v18);
                if (!v21)
                {
                  break;
                }

                if (*v21 == 92)
                {
                  goto LABEL_39;
                }

                v20 = (v21 + 1);
                v18 = v19 - v20;
              }

              while (v19 - v20 > 0);
            }

            v21 = v19;
LABEL_39:
            v22 = v21 == v19 || v21 - p_p == -1;
            v23 = v22;
            if (v15 < 0)
            {
              operator delete(v16);
            }

            if (!v23)
            {
              v24 = 1;
              goto LABEL_50;
            }
          }

          break;
        }

        v8 = (v9 + 1);
        size = v7 - v8;
      }

      while (v7 - v8 >= 1);
    }
  }

  v24 = 0;
LABEL_50:
  __p.__r_.__value_.__r.__words[0] = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  return v24;
}

void sub_1B526D498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::Decoder::splitLmePartialResult(std::vector<std::wstring> *a1, uint64_t **a2)
{
  v101 = 0;
  v102 = 0;
  v103 = 0;
  begin = a1->__begin_;
  end = a1->__end_;
  if (a1->__begin_ == end)
  {
    goto LABEL_145;
  }

  do
  {
    v4 = a2;
    v5 = *(begin + 23);
    v6 = *begin;
    v7 = *(begin + 8);
    if (v5 >= 0)
    {
      v8 = begin;
    }

    else
    {
      v8 = *begin;
    }

    if (v5 >= 0)
    {
      v9 = *(begin + 23);
    }

    else
    {
      v9 = *(begin + 8);
    }

    if (v9 < 9)
    {
      goto LABEL_35;
    }

    v10 = v8;
    v11 = &v8[v9];
    v12 = v9;
    v13 = v8;
    while (1)
    {
      v14 = memchr(v13, 92, v12 - 8);
      if (!v14)
      {
        goto LABEL_35;
      }

      if (*v14 == 0x746361746E6F635CLL && v14[8] == 45)
      {
        break;
      }

      v13 = (v14 + 1);
      v12 = v11 - v13;
      if (v11 - v13 < 9)
      {
        goto LABEL_35;
      }
    }

    if (v14 == v11 || v14 - v8 == -1)
    {
      goto LABEL_35;
    }

    v16 = v9;
    v17 = v8;
    while (v16 != 3)
    {
      v18 = memchr(v17, 126, v16 - 3);
      if (!v18)
      {
        break;
      }

      if (*v18 == 808482686)
      {
        if (v18 == v11 || v18 - v8 == -1)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }

      v17 = v18 + 1;
      v16 = v11 - v17;
      if (v11 - v17 < 4)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
LABEL_27:
      v19 = memchr(v10, 95, v9);
      if (!v19)
      {
        goto LABEL_35;
      }

      if (*v19 == 95)
      {
        break;
      }

      v10 = (v19 + 1);
      v9 = v11 - (v19 + 1);
      if (v9 < 1)
      {
        goto LABEL_35;
      }
    }

    if (v19 == v11 || v19 - v8 == -1)
    {
LABEL_35:
      a2 = v4;
LABEL_36:
      std::vector<std::string>::push_back[abi:ne200100](&v101, begin);
      goto LABEL_37;
    }

LABEL_33:
    if ((v5 & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__str, v6, v7);
    }

    else
    {
      v20 = *begin;
      __str.__end_ = *(begin + 16);
      *&__str.__first_ = v20;
    }

    a2 = v4;
    isLikelyWithPhoeticName = quasar::Decoder::isLikelyWithPhoeticName(&__str);
    v22 = isLikelyWithPhoeticName;
    if (SHIBYTE(__str.__end_) < 0)
    {
      operator delete(__str.__first_);
      if (v22)
      {
        goto LABEL_36;
      }
    }

    else if (isLikelyWithPhoeticName)
    {
      goto LABEL_36;
    }

    memset(&v100, 0, sizeof(v100));
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v95[0] = 0;
    v95[1] = 0;
    v96 = 0;
    v23 = *(v4 + 23);
    if (v23 < 0)
    {
      if (v4[1] != 17)
      {
        goto LABEL_56;
      }

      v24 = *v4;
    }

    else
    {
      v24 = v4;
      if (v23 != 17)
      {
        goto LABEL_56;
      }
    }

    v25 = *v24;
    v26 = v24[1];
    v27 = *(v24 + 16);
    if (v25 == 0x724F686372616553 && v26 == 0x6E6967617373654DLL && v27 == 103)
    {
      memset(&__str, 0, 24);
      v34 = quasar::QsrText::SingletonInstance(isLikelyWithPhoeticName);
      quasar::QsrText::decodeQsrText(v34, begin, &__str);
      std::string::basic_string[abi:ne200100]<0>(v92, " ");
      quasar::splitAndTrimNoEmpty(&__str, v92, &__p);
      std::vector<std::string>::__vdeallocate(&v100);
      v100 = __p;
      memset(&__p, 0, sizeof(__p));
      p_p = &__p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
      if (SHIBYTE(v93) < 0)
      {
        operator delete(v92[0]);
      }

      if (SHIBYTE(__str.__end_) < 0)
      {
        operator delete(__str.__first_);
      }

      goto LABEL_67;
    }

LABEL_56:
    std::string::basic_string[abi:ne200100]<0>(&__p, "~w00");
    quasar::splitAndTrimNoEmpty(begin, &__p, &__str);
    std::vector<std::string>::__vdeallocate(&v100);
    *&v100.__begin_ = *&__str.__first_;
    v100.__end_cap_.__value_ = __str.__end_;
    memset(&__str, 0, 24);
    v92[0] = &__str;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v92);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }

    v32 = v100.__begin_;
    v31 = v100.__end_;
    while (v32 != v31)
    {
      memset(&__str, 0, 24);
      v33 = quasar::QsrText::SingletonInstance(v30);
      quasar::QsrText::decodeQsrText(v33, v32, &__str);
      v30 = std::string::operator=(v32, &__str);
      if (SHIBYTE(__str.__end_) < 0)
      {
        operator delete(__str.__first_);
      }

      ++v32;
    }

LABEL_67:
    v35 = -1431655765 * ((v100.__end_ - v100.__begin_) >> 3);
    while ((--v35 & 0x80000000) == 0)
    {
      v36 = v35 & 0x7FFFFFFF;
      v37 = &v100.__begin_[v35 & 0x7FFFFFFF];
      v38 = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
      if ((v38 & 0x8000000000000000) != 0)
      {
        v39 = v37->__r_.__value_.__r.__words[0];
        size = v37->__r_.__value_.__l.__size_;
        if (!size)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v39 = &v100.__begin_[v35 & 0x7FFFFFFF];
        size = SHIBYTE(v37->__r_.__value_.__r.__words[2]);
        if (!*(&v37->__r_.__value_.__s + 23))
        {
          goto LABEL_116;
        }
      }

      v41 = v39 + size;
      v42 = v39;
      v43 = v41;
      do
      {
        v44 = v42;
        v45 = v42;
        while (1)
        {
          v46 = *v45++;
          if (v46 == 92)
          {
            break;
          }

          v44 = v45;
          if (v45 == v41)
          {
            v44 = v43;
            goto LABEL_79;
          }
        }

        v42 = (v44 + 1);
        v43 = v44;
      }

      while (v45 != v41);
LABEL_79:
      if (v44 != v41 && v44 - v39 != -1)
      {
        if ((v38 & 0x80000000) != 0)
        {
          v47 = v37->__r_.__value_.__r.__words[0];
          v38 = v37->__r_.__value_.__l.__size_;
        }

        else
        {
          v47 = &v100.__begin_[v35 & 0x7FFFFFFF];
        }

        v48 = v47 + v38;
        if (v38)
        {
          v49 = v47;
          v50 = (v47 + v38);
          do
          {
            v51 = v49;
            v52 = v49;
            while (1)
            {
              v53 = *v52++;
              if (v53 == 92)
              {
                break;
              }

              v51 = v52;
              if (v52 == v48)
              {
                v51 = v50;
                goto LABEL_93;
              }
            }

            v49 = (&v51->__r_.__value_.__l.__data_ + 1);
            v50 = v51;
          }

          while (v52 != v48);
        }

        else
        {
          v51 = v47;
        }

LABEL_93:
        v54 = v51 - v47;
        if (v51 == v48)
        {
          v55 = -1;
        }

        else
        {
          v55 = v54;
        }

        std::string::basic_string(&__str, v37, v55, 0xFFFFFFFFFFFFFFFFLL, &__p);
        if (SHIBYTE(v96) < 0)
        {
          operator delete(v95[0]);
        }

        *v95 = *&__str.__first_;
        v96 = __str.__end_;
        v56 = &v100.__begin_[v36];
        v57 = SHIBYTE(v56->__r_.__value_.__r.__words[2]);
        if ((v57 & 0x8000000000000000) != 0)
        {
          v58 = v56->__r_.__value_.__r.__words[0];
          v57 = v56->__r_.__value_.__l.__size_;
        }

        else
        {
          v58 = &v100.__begin_[v36];
        }

        v59 = v58 + v57;
        if (v57)
        {
          v60 = v58;
          v61 = (v58 + v57);
          do
          {
            v62 = v60;
            v63 = v60;
            while (1)
            {
              v64 = *v63++;
              if (v64 == 92)
              {
                break;
              }

              v62 = v63;
              if (v63 == v59)
              {
                v62 = v61;
                goto LABEL_110;
              }
            }

            v60 = (&v62->__r_.__value_.__l.__data_ + 1);
            v61 = v62;
          }

          while (v63 != v59);
        }

        else
        {
          v62 = v58;
        }

LABEL_110:
        v65 = v62 - v58;
        if (v62 == v59)
        {
          v66 = -1;
        }

        else
        {
          v66 = v65;
        }

        std::string::basic_string(&__str, v56, 0, v66, &__p);
        v67 = &v100.__begin_[v36];
        if (SHIBYTE(v67->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v67->__r_.__value_.__l.__data_);
        }

        v68 = *&__str.__first_;
        v67->__r_.__value_.__r.__words[2] = __str.__end_;
        *&v67->__r_.__value_.__l.__data_ = v68;
      }

LABEL_116:
      v30 = std::vector<std::string>::push_back[abi:ne200100](&v97, v95);
    }

    v69 = v98 - 24;
    if (v97 != v98 && v69 > v97)
    {
      v71 = v97 + 24;
      do
      {
        v72 = *(v71 - 8);
        v73 = *(v71 - 24);
        v74 = *(v69 + 16);
        *(v71 - 24) = *v69;
        *(v71 - 8) = v74;
        *v69 = v73;
        *(v69 + 16) = v72;
        v69 -= 24;
        v75 = v71 >= v69;
        v71 += 24;
      }

      while (!v75);
    }

    v76 = v100.__begin_;
    if (v100.__end_ != v100.__begin_)
    {
      v77 = 0;
      v78 = 0;
      do
      {
        memset(&__p, 0, sizeof(__p));
        v79 = quasar::QsrText::SingletonInstance(v30);
        quasar::QsrText::encodeTokenQsrText(v79, &v76[v77], &__p);
        v30 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p.__begin_, (v97 + v77 * 24), v92);
        v80 = v102;
        if (v102 >= v103)
        {
          v82 = 0xAAAAAAAAAAAAAAABLL * ((v102 - v101) >> 3);
          v83 = v82 + 1;
          if (v82 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v103 - v101) >> 3) > v83)
          {
            v83 = 0x5555555555555556 * ((v103 - v101) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v103 - v101) >> 3) >= 0x555555555555555)
          {
            v84 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v84 = v83;
          }

          __str.__end_cap_.__value_ = &v101;
          if (v84)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v101, v84);
          }

          v85 = 8 * ((v102 - v101) >> 3);
          v86 = *v92;
          *(v85 + 16) = v93;
          *v85 = v86;
          v92[1] = 0;
          v93 = 0;
          v92[0] = 0;
          v87 = (24 * v82 - (v102 - v101));
          memcpy(v87, v101, v102 - v101);
          v88 = v101;
          v89 = v103;
          v101 = v87;
          v102 = (24 * v82 + 24);
          v103 = 0;
          __str.__end_ = v88;
          __str.__end_cap_.__value_ = v89;
          __str.__first_ = v88;
          __str.__begin_ = v88;
          std::__split_buffer<std::string>::~__split_buffer(&__str);
          v102 = (24 * v82 + 24);
          if (SHIBYTE(v93) < 0)
          {
            operator delete(v92[0]);
          }
        }

        else
        {
          v81 = *v92;
          v102->__r_.__value_.__r.__words[2] = v93;
          *&v80->__r_.__value_.__l.__data_ = v81;
          v102 = v80 + 1;
        }

        if (SHIBYTE(__p.__end_cap_.__value_) < 0)
        {
          operator delete(__p.__begin_);
        }

        ++v78;
        v76 = v100.__begin_;
        ++v77;
      }

      while (v78 != 0xAAAAAAAAAAAAAAABLL * ((v100.__end_ - v100.__begin_) >> 3));
    }

    if (SHIBYTE(v96) < 0)
    {
      operator delete(v95[0]);
    }

    __str.__first_ = &v97;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
    __str.__first_ = &v100;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
LABEL_37:
    begin += 24;
  }

  while (begin != end);
LABEL_145:
  if (&v101 != a1)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a1, v101, v102, 0xAAAAAAAAAAAAAAABLL * ((v102 - v101) >> 3));
  }

  __str.__first_ = &v101;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
}

void sub_1B526DCF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char ***a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char **a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 121) < 0)
  {
    operator delete(*(v38 - 144));
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  a25 = &a31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a25);
  a31 = &a34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a31);
  a34 = &a38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

uint64_t quasar::Decoder::reportResults(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  if (quasar::Decoder::getLinearOutputSymbolSequenceWithDuration<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>(a1, &v55, 0, a4, &v54, 0, 0, 0, (*a2 + 1024)))
  {
    v7 = *a2;
    *(v7 + 160) = *(*a2 + 160) | v54;
    quasar::SymbolTableList::lookup(*(v7 + 488), &v55, (v7 + 48), v7 + 72, 1);
    v8 = *a2;
    if (!*(*a2 + 640))
    {
      v9 = *(v8 + 56);
      v10 = v9 - *(v8 + 48);
      if (v10)
      {
        v11 = &v55[12 * (-1431655765 * (v10 >> 3) - 1)];
        v12 = v11[1];
        v13 = v11[2];
        v14 = *(v11 + 3);
        v37 = 0uLL;
        v38 = 0;
        if (*(v9 - 1) < 0)
        {
          std::string::__init_copy_ctor_external(&v36, *(v9 - 24), *(v9 - 16));
        }

        else
        {
          v15 = *(v9 - 24);
          v36.__r_.__value_.__r.__words[2] = *(v9 - 8);
          *&v36.__r_.__value_.__l.__data_ = v15;
        }

        std::string::basic_string[abi:ne200100]<0>(&v34, "");
        memset(v33, 0, sizeof(v33));
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        quasar::Token::Token(v39, &v36, 0, v12, v13, 1, 0, &v37, v14, &v34, v33, 0, __p, 0, 0, 0);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = v33;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
        if (SHIBYTE(v35) < 0)
        {
          operator delete(v34);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        isPrintable = quasar::Token::isPrintable(v39);
        v18 = DWORD1(v41);
        if (!isPrintable)
        {
          v18 = 0;
        }

        *(*a2 + 640) = v18;
        if (SBYTE7(v49) < 0)
        {
          operator delete(v48);
        }

        if (SBYTE7(v47) < 0)
        {
          operator delete(v46);
        }

        *&v34 = &v45[8];
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v34);
        if ((v45[7] & 0x80000000) != 0)
        {
          operator delete(v44);
        }

        *&v34 = &v43[8];
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v34);
        if ((v43[7] & 0x80000000) != 0)
        {
          operator delete(v42);
        }

        if (SBYTE7(v40) < 0)
        {
          operator delete(v39[0]);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(v37);
        }

        v8 = *a2;
      }
    }

    if (*(v8 + 1112) == 1)
    {
      v20 = v55;
      v19 = v56;
      if (v56 != v55)
      {
        v21 = 0;
        v22 = *(v8 + 1116);
        v23 = *(v8 + 1120);
        do
        {
          *v39 = *v20;
          *&v41 = 0;
          v40 = 0uLL;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v40, *(v20 + 2), *(v20 + 3), (*(v20 + 3) - *(v20 + 2)) >> 2);
          *(&v41 + 1) = *(v20 + 5);
          v24 = HIDWORD(v39[0]);
          if (v40)
          {
            *(&v40 + 1) = v40;
            operator delete(v40);
          }

          v21 += v24;
          v20 += 12;
        }

        while (v20 != v19);
        v8 = *a2;
        v25 = v55 + 2 * (*(*a2 + 56) - *(*a2 + 48));
        *(v25 - 11) += v23 - v22 - v21;
      }
    }

    if (*(v8 + 1104) == 1)
    {
      quasar::Decoder::splitLmePartialResult((v8 + 48), (*(*a3 + 24) + 80));
    }

    if (*(a4 + 561) == 1)
    {
      v26 = *a2;
      if ((*(*a2 + 1105) & 1) == 0)
      {
        v27 = *(v26 + 576);
        v28 = *(*a3 + 12);
        v39[0] = 0;
        v39[1] = 0;
        *&v40 = 0;
        v37 = 0uLL;
        v38 = 0;
        v34 = 0uLL;
        v35 = 0;
        LOWORD(v30) = 0;
        (*(*v27 + 24))(v27, v26 + 48, v28, 1, 0, 0, v39, &v37, &v34, v30, v26 + 1152);
        v33[0] = &v34;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v33);
        *&v34 = &v37;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v34);
        *&v37 = v39;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v37);
      }
    }

    v16 = 0;
  }

  else
  {
    if (quasar::gLogLevel >= 5)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      memset(v45, 0, sizeof(v45));
      v44 = 0u;
      v42 = 0u;
      memset(v43, 0, sizeof(v43));
      v40 = 0u;
      v41 = 0u;
      *v39 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Linear Output Failed", 20);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v39);
    }

    v16 = 2;
  }

  v39[0] = &v55;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](v39);
  return v16;
}

void sub_1B526E260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  a41 = v41 - 136;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&a41);
  _Unwind_Resume(a1);
}

uint64_t quasar::Decoder::getLinearOutputSymbolSequenceWithDuration<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,int>(uint64_t a1, uint64_t *a2, float32x2_t *a3, void *a4, _BYTE *a5, void **a6, kaldi::LatticeScoreCache *a7, int a8, const void **a9)
{
  *a5 = 0;
  if (a9)
  {
    a9[1] = *a9;
  }

  v133 = 0;
  v134 = 0;
  v135 = 0;
  v129 = 0;
  v130 = 0;
  v128 = 0;
  v15 = (*(*a1 + 24))(a1);
  if (v15 != -1)
  {
    v16 = a4[27];
    v89 = a2;
    if (v16)
    {
      v93 = *(v16 + 24);
    }

    else
    {
      v93 = 0;
    }

    v86 = a3;
    v87 = a5;
    v95 = (*(**(*a4 + 16) + 32))(*(*a4 + 16));
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v122 = 0u;
    v123 = 0u;
    v121 = 0u;
    __p = 0;
    v119 = 0;
    v120 = 0;
    v21 = a6;
    if (a6)
    {
      v22 = 1;
    }

    else
    {
      v22 = a8;
    }

    if (a7)
    {
      v23 = a8;
    }

    else
    {
      v23 = 0;
    }

    v90 = v23;
    v91 = v22;
    v24 = 1.0;
    v25 = 0.0;
    v26 = 0.0;
    v96 = 0.0;
    v27 = 0.0;
    v28 = a9;
    v29 = v93;
    while (1)
    {
      (*(*a1 + 32))(&v117, a1, v15);
      v30 = *(&v117 + 1);
      v32 = v117;
      LODWORD(v114[0]) = HIDWORD(v32);
      LODWORD(v31) = v32;
      v97[0] = v117;
      v137 = 2139095040;
      v136 = INFINITY;
      v33.n128_u32[0] = v117;
      if (*&v117 != INFINITY)
      {
        break;
      }

      v33.n128_u32[0] = v114[0];
      if (*v114 != v136)
      {
        break;
      }

      if ((*(*a1 + 40))(a1, v15, *v114) != 1)
      {
        goto LABEL_90;
      }

      v116 = 0;
      (*(*a1 + 136))(a1, v15, v114);
      if (v114[0])
      {
        v34 = (*(*v114[0] + 32))(v114[0]);
      }

      else
      {
        v34 = (v114[1] + 20 * v116);
      }

      v35 = v34[2];
      v36 = v34[3];
      v37 = *(v34 + 1);
      if (v37)
      {
        v38 = v37 == v29;
      }

      else
      {
        v38 = 1;
      }

      if (v38)
      {
        v39 = v34[3];
        v40 = *(v34 + 2);
      }

      else
      {
        if (v20)
        {
          v41 = 0.001;
          if (v24 != 0.0)
          {
            v41 = v24;
          }

          if (!*(a4 + 552))
          {
            v41 = 0.0;
          }

          v127 = v41;
          v42 = v20;
          v124 = v18;
          v125 = (v20 - v19) * v95;
          if (v20 > v19)
          {
            while (*(&v123 + 1))
            {
              v43 = *(*(*(&v121 + 1) + (((v123 + *(&v123 + 1) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v123 + *(&v123 + 1) - 1) & 0x3FF));
              --*(&v123 + 1);
              std::deque<int>::__maybe_remove_back_spare[abi:ne200100](&v121, 1);
              if (!kaldi::SilencePhoneSet::isSilencePhone((a4 + 12), v43))
              {
                break;
              }

              if (--v42 <= v19)
              {
                v42 = v19;
                break;
              }
            }
          }

          v126 = v42 * v95;
          *v97 = v121;
          v98 = v122;
          v121 = 0u;
          v122 = 0u;
          v99 = v123;
          v123 = 0u;
          v131 = v96;
          v132 = v27;
          std::vector<fst::symbol_outT<int>>::push_back[abi:ne200100](&v133, &v124);
          std::deque<int>::~deque[abi:ne200100](v97);
          v18 = *(v34 + 1);
          v96 = 0.0;
          v27 = 0.0;
          v40 = *(v34 + 2);
          v39 = v34[3];
          v21 = a6;
          v29 = v93;
        }

        else
        {
          v40 = *(v34 + 2);
          v39 = v34[3];
          v18 = *(v34 + 1);
        }

        v24 = round(exp(-v39) * 1000.0);
        v19 = v20;
      }

      *v97 = *v34;
      v97[2] = v40;
      *&v97[3] = v39;
      *&v98 = v34[4];
      v20 += quasar::arcConsumesAFrame<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(v97, a4);
      if (a4[4])
      {
        v44 = a4[10];
        if (v44)
        {
          if (*v34)
          {
            v97[0] = kaldi::TransitionModel::TransitionIdToPhone(v44, *v34);
            std::deque<int>::push_back(&v121, v97);
            isSilencePhone = kaldi::SilencePhoneSet::isSilencePhone((a4 + 12), v97[0]);
            if (!(isSilencePhone | !kaldi::TransitionModel::IsFinal(a4[10], *v34)))
            {
              std::vector<int>::push_back[abi:ne200100](&__p, v97);
            }

            if (v28)
            {
              std::vector<int>::push_back[abi:ne200100](v28, v97);
            }

            if (v91)
            {
              v46 = *(*(a4[10] + 96) + 4 * *v34);
              if (v21)
              {
                v48 = v21[1];
                v47 = v21[2];
                if (v48 >= v47)
                {
                  v88 = *(*(a4[10] + 96) + 4 * *v34);
                  v50 = *v21;
                  v51 = v48 - *v21;
                  v52 = v51 >> 3;
                  v53 = (v51 >> 3) + 1;
                  if (v53 >> 61)
                  {
                    std::vector<int>::__throw_length_error[abi:ne200100]();
                  }

                  v54 = v47 - v50;
                  if (v54 >> 2 > v53)
                  {
                    v53 = v54 >> 2;
                  }

                  v55 = v54 >= 0x7FFFFFFFFFFFFFF8;
                  v56 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v55)
                  {
                    v56 = v53;
                  }

                  if (v56)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,BOOL>>>(a6, v56);
                  }

                  v21 = a6;
                  v57 = 8 * v52;
                  *v57 = v88;
                  *(v57 + 4) = isSilencePhone;
                  v49 = 8 * v52 + 8;
                  memcpy(0, v50, v51);
                  v58 = *a6;
                  *a6 = 0;
                  a6[1] = v49;
                  a6[2] = 0;
                  if (v58)
                  {
                    operator delete(v58);
                  }

                  v29 = v93;
                  v46 = v88;
                }

                else
                {
                  *v48 = v46;
                  v48[4] = isSilencePhone;
                  v49 = (v48 + 8);
                }

                v21[1] = v49;
              }
            }

            else
            {
              v46 = -1;
            }

            if (v90)
            {
              Score = kaldi::LatticeScoreCache::GetScore(a7, (v20 - 1), v46);
              v60 = v27 + Score;
              v61 = v96;
              v62 = v96 + Score;
              if (!isSilencePhone)
              {
                v61 = v62;
              }

              v96 = v61;
              if (isSilencePhone)
              {
                v27 = v60;
              }
            }

            v28 = a9;
          }
        }
      }

      v15 = *(v34 + 4);
      if (v114[0])
      {
        (*(*v114[0] + 8))(v114[0]);
      }

      else if (v115)
      {
        --*v115;
      }

      v25 = v25 + v35;
      v26 = v26 + v36;
    }

    if (v20)
    {
      v63 = 0.001;
      if (v24 != 0.0)
      {
        v63 = v24;
      }

      if (!*(a4 + 552))
      {
        v63 = 0.0;
      }

      v127 = v63;
      v124 = v18;
      v125 = (v20 - v19) * v95;
      if (v20 > v19)
      {
        while (*(&v123 + 1))
        {
          v64 = *(*(*(&v121 + 1) + (((v123 + *(&v123 + 1) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v123 + *(&v123 + 1) - 1) & 0x3FF));
          --*(&v123 + 1);
          std::deque<int>::__maybe_remove_back_spare[abi:ne200100](&v121, 1);
          if (!kaldi::SilencePhoneSet::isSilencePhone((a4 + 12), v64))
          {
            break;
          }

          if (--v20 <= v19)
          {
            v20 = v19;
            break;
          }
        }
      }

      v126 = v20 * v95;
      *v97 = v121;
      v98 = v122;
      v121 = 0u;
      v122 = 0u;
      v99 = v123;
      v123 = 0u;
      v131 = v96;
      v132 = v27;
      std::vector<fst::symbol_outT<int>>::push_back[abi:ne200100](&v133, &v124);
      std::deque<int>::~deque[abi:ne200100](v97);
    }

    if ((*(*a1 + 40))(a1, v15, v33))
    {
LABEL_90:
      v17 = 0;
      goto LABEL_134;
    }

    if (v89 && &v133 != v89)
    {
      std::vector<fst::symbol_outT<int>>::__assign_with_size[abi:ne200100]<fst::symbol_outT<int>*,fst::symbol_outT<int>*>(v89, v133, v134, 0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 4));
    }

    if (v86)
    {
      *v86 = v25 + v31;
      v86[1] = v26 + v30;
    }

    if (a4[27])
    {
      v65 = *v89;
      v66 = __p;
      if (__p == v119)
      {
LABEL_115:
        v74 = v89[1];
        if (v65 != v74)
        {
          v75 = a4[27];
          v17 = 1;
          while (1)
          {
            v76 = *v65;
            if (*v65)
            {
              if (v76 != *(v75 + 24))
              {
                break;
              }
            }

LABEL_119:
            v65 += 48;
            if (v65 == v74)
            {
              goto LABEL_134;
            }
          }

          for (i = *(v75 + 40); i; i = *i)
          {
            v78 = *(i + 7);
            if (v76 >= v78)
            {
              if (v78 >= v76)
              {
                goto LABEL_119;
              }

              ++i;
            }
          }

          if (quasar::gLogLevel >= 4)
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            *v97 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v97);
            v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "Phone sequencing failed; Ran out of phones, probably because ", 61);
            v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "the last word got clipped in the audio. ", 40);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Lattice word alignment and confidence computation will also fail.", 65);
            quasar::QuasarInfoMessage::~QuasarInfoMessage(v97);
            v74 = v89[1];
          }

          v17 = 1;
          *v87 = 1;
          v81 = *v89;
          if (*v89 == v74)
          {
            goto LABEL_134;
          }

          do
          {
            *(v81 + 24) = *(v81 + 16);
            v81 += 48;
          }

          while (v81 != v74);
        }
      }

      else
      {
        while (1)
        {
          v67 = v89[1];
          if (v65 != v67)
          {
            v68 = a4[27];
            v69 = (v68 + 40);
            do
            {
              v70 = *v65;
              if (*v65 && v70 != *(v68 + 24))
              {
                v71 = *v69;
                if (!*v69)
                {
                  break;
                }

                v72 = v68 + 40;
                do
                {
                  if (*(v71 + 28) >= v70)
                  {
                    v72 = v71;
                  }

                  v71 = *(v71 + 8 * (*(v71 + 28) < v70));
                }

                while (v71);
                if (v72 == v69 || v70 < *(v72 + 28))
                {
                  break;
                }
              }

              v65 += 48;
            }

            while (v65 != v67);
          }

          if (v65 == v67)
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100]((v65 + 16), v66);
          if ((kaldi::WordBoundaryInfo::TypeOfPhone(a4[27], *v66) & 0xFFFFFFFE) == 2)
          {
            v73 = 48;
          }

          else
          {
            v73 = 0;
          }

          v65 += v73;
          if (++v66 == v119)
          {
            goto LABEL_115;
          }
        }

        if (quasar::gLogLevel >= 4)
        {
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          *v97 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v97);
          v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "Phone sequencing failed; ran out of words for unknown reasons. ", 63);
          v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "Lattice word alignment and confidence computation will also fail. ", 66);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "PLEASE FILE A RADAR", 19);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(v97);
          v67 = v89[1];
        }

        for (j = *v89; j != v67; j += 48)
        {
          *(j + 24) = *(j + 16);
        }
      }
    }

    else if (quasar::gLogLevel >= 4)
    {
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      *v97 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v97);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "No word boundary info found. Cannot give proper phone sequence.", 63);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v97);
    }

    v17 = 1;
LABEL_134:
    if (__p)
    {
      v119 = __p;
      operator delete(__p);
    }

    std::deque<int>::~deque[abi:ne200100](&v121);
    goto LABEL_137;
  }

  if (a2)
  {
    std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100](a2);
  }

  if (a3)
  {
    *a3 = vneg_f32(0x7F0000007FLL);
  }

  v17 = 1;
LABEL_137:
  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  *v97 = &v133;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](v97);
  return v17;
}

void sub_1B526EE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<int>::~deque[abi:ne200100](&a65);
  v67 = *(v65 - 216);
  if (v67)
  {
    *(v65 - 208) = v67;
    operator delete(v67);
  }

  *(v65 - 232) = v65 - 184;
  std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100]((v65 - 232));
  _Unwind_Resume(a1);
}

void sub_1B526F76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<fst::symbol_outT<int>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<fst::symbol_outT<int>>>::__emplace_back_slow_path<std::vector<fst::symbol_outT<int>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<fst::symbol_outT<int>>>::__construct_one_at_end[abi:ne200100]<std::vector<fst::symbol_outT<int>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void quasar::Decoder::phoneIds2Str(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  if (a1[1] != *a1)
  {
    (*(**a3 + 88))(&v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
    kaldi::quasar::Lexicon::BasifyPhone(a2);
    for (i = *a1 + 4; i != a1[1]; i += 4)
    {
      (*(**a3 + 88))(&v13);
      kaldi::quasar::Lexicon::BasifyPhone(&v13);
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      v8 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v13.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::operator+<char>();
        if ((v12 & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        if ((v12 & 0x80u) == 0)
        {
          v10 = v12;
        }

        else
        {
          v10 = __p[1];
        }

        std::string::append(a2, v9, v10);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        v8 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      }

      if (v8 < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1B526F950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void quasar::CopyConfidencesFromHwcnToResultChoices(uint64_t **a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  kaldi::WordHypLattice::RetrieveConfidenceByTokens(*(*a2 + 224), &v66);
  v65[0] = 0;
  v65[1] = 0;
  v64 = v65;
  v4 = *(*a2 + 224);
  v5 = *(v4 + 40);
  for (i = *(v4 + 48); v5 != i; ++v5)
  {
    v7 = *v5;
    std::optional<std::string>::value_or[abi:ne200100]<std::string&>(*v5 + 464, *v5 + 264, &__p);
    p_p = &__p;
    v8 = (std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v64, &__p.__r_.__value_.__l.__data_) + 56);
    if (v8 != (v7 + 168))
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v8, *(v7 + 168), *(v7 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 176) - *(v7 + 168)) >> 3));
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v9 = *a1;
  v53 = a1[1];
  if (*a1 != v53)
  {
    do
    {
      v11 = *v9;
      v10 = v9[1];
      v54 = v9;
      v55 = v10;
      while (v11 != v10)
      {
        quasar::getNormWord(v11, &__p);
        if (&v67 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v66, &__p.__r_.__value_.__l.__data_))
        {
          p_p = v11;
          v12 = std::__tree<std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v66, v11);
        }

        else
        {
          quasar::getNormWord(v11, &p_p);
          p_p_p = &p_p;
          v12 = std::__tree<std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<kaldi::TimestampsAndConfidence>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v66, &p_p);
          if (SHIBYTE(v63) < 0)
          {
            operator delete(p_p);
          }
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v13 = *(v12 + 56);
        v14 = *(v12 + 64);
        if (v13 != v14)
        {
          v15 = 0;
          do
          {
            v16 = v15;
            v15 = v13;
            if (v16)
            {
              if ((v17 = *(v11 + 28), v18 = *(v11 + 36), v19 = (vabds_f32(*v13, v17) + vabds_f32(*v13 + *(v13 + 4), v18)) * 0.5, v20 = (vabds_f32(*v16, v17) + vabds_f32(*v16 + *(v16 + 4), v18)) * 0.5, v19 != v20) && (COERCE_INT(fabs(v19 - v20)) > 2139095039 || vabds_f32(v19, v20) > ((fabsf(v19) + fabsf(v20)) * 0.1)) || (v15 = v13, *(v13 + 8) <= *(v16 + 8)))
              {
                v15 = v16;
                if (v19 < v20)
                {
                  v15 = v13;
                }
              }
            }

            v13 += 16;
          }

          while (v13 != v14);
          if (v15)
          {
            v21 = *(v15 + 8) * 1000.0;
            *(v11 + 40) = v21;
          }
        }

        quasar::getNormWord(v11, &__p);
        v22 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v64, &__p.__r_.__value_.__l.__data_);
        if (v65 == v22)
        {
          p_p_p = v11;
          v23 = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v64, v11);
        }

        else
        {
          quasar::getNormWord(v11, v59);
          p_p_p = v59;
          v23 = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v64, v59);
        }

        p_p = 0;
        v62 = 0;
        v63 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&p_p, *(v23 + 56), *(v23 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(v23 + 64) - *(v23 + 56)) >> 3));
        if (v65 != v22 && v60 < 0)
        {
          operator delete(v59[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "_B");
        std::string::basic_string[abi:ne200100]<0>(v70, "_E");
        std::string::basic_string[abi:ne200100]<0>(v71, "_I");
        std::string::basic_string[abi:ne200100]<0>(v72, "_S");
        p_p_p = 0;
        v57 = 0;
        v58 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&p_p_p, &__p, &v73, 4uLL);
        for (j = 0; j != -96; j -= 24)
        {
          if (v72[j + 23] < 0)
          {
            operator delete(*&v72[j]);
          }
        }

        v25 = p_p;
        v26 = v62;
        if (v62 == p_p)
        {
          v52 = 0xAAAAAAAAAAAAAAABLL * ((v62 - p_p) >> 3);
        }

        else
        {
          v27 = 0;
          do
          {
            v29 = p_p_p;
            v28 = v57;
            if (p_p_p == v57)
            {
              v30 = -1;
            }

            else
            {
              while (!quasar::endsWith(p_p + 3 * v27, v29))
              {
                v29 += 3;
                if (v29 == v28)
                {
                  v30 = -1;
                  v25 = p_p;
                  goto LABEL_77;
                }
              }

              v25 = p_p;
              v31 = p_p + 24 * v27;
              v32 = v31[23];
              if ((v32 & 0x8000000000000000) != 0)
              {
                v31 = *v31;
                v32 = *(p_p + 3 * v27 + 1);
              }

              v33 = *(v29 + 23);
              if (v33 >= 0)
              {
                v34 = v29;
              }

              else
              {
                v34 = *v29;
              }

              if (v33 < 0)
              {
                v33 = v29[1];
              }

              if (v32)
              {
                v35 = v33 == 0;
              }

              else
              {
                v35 = 1;
              }

              if (v35)
              {
                if (v33)
                {
                  v30 = -1;
                }

                else
                {
                  v30 = v32;
                }
              }

              else
              {
                v36 = &v31[v32];
                v39 = *v34;
                v37 = v34 + 1;
                v38 = v39;
                v40 = v33 - 1;
                v41 = v31;
                v42 = v36;
                do
                {
                  v43 = v41 + 1;
                  while (*v41 != v38)
                  {
                    ++v41;
                    ++v43;
                    if (v41 == v36)
                    {
                      goto LABEL_74;
                    }
                  }

                  v44 = v40;
                  v45 = v37;
                  while (v44)
                  {
                    if (v43 == v36)
                    {
                      goto LABEL_74;
                    }

                    v47 = *v43++;
                    v46 = v47;
                    v48 = *v45++;
                    --v44;
                    if (v46 != v48)
                    {
                      goto LABEL_73;
                    }
                  }

                  v42 = v41;
LABEL_73:
                  ++v41;
                }

                while (v41 != v36);
LABEL_74:
                v49 = v42 - v31;
                if (v42 == v36)
                {
                  v30 = -1;
                }

                else
                {
                  v30 = v49;
                }
              }
            }

LABEL_77:
            std::string::basic_string(&__p, &v25[v27], 0, v30, &v68);
            v50 = p_p + 24 * v27;
            if (v50[23] < 0)
            {
              operator delete(*v50);
            }

            v51 = *&__p.__r_.__value_.__l.__data_;
            *(v50 + 2) = *(&__p.__r_.__value_.__l + 2);
            *v50 = v51;
            ++v27;
            v25 = p_p;
            v26 = v62;
            v52 = 0xAAAAAAAAAAAAAAABLL * ((v62 - p_p) >> 3);
          }

          while (v52 > v27);
        }

        if ((v11 + 72) != &p_p)
        {
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v11 + 72), v25, v26, v52);
        }

        __p.__r_.__value_.__r.__words[0] = &p_p_p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
        __p.__r_.__value_.__r.__words[0] = &p_p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
        v11 += 224;
        v10 = v55;
      }

      v9 = v54 + 3;
    }

    while (v54 + 3 != v53);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(&v64, v65[0]);
  std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::destroy(&v66, v67);
}

void std::optional<std::string>::value_or[abi:ne200100]<std::string&>(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      *&a3->__r_.__value_.__l.__data_ = *a1;
      v3 = *(a1 + 16);
LABEL_6:
      a3->__r_.__value_.__r.__words[2] = v3;
      return;
    }

    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 8));
  }

  else
  {
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      v3 = *(a2 + 16);
      goto LABEL_6;
    }

    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }
}

void quasar::Decoder::calculateNBest(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(*a2 + 456) == 1)
  {
    if (quasar::gLogLevel >= 4)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Skipping calculateNBest since we already did it (e.g. eager, CTC-prefix-beam-search)", 84);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v7);
    }
  }

  else
  {
    *(*a2 + 456) = 1;
    quasar::Decoder::calculateNBestHwcn(a1, a2, a3);
    v5 = *(a1 + 553) == 1 && *(*a2 + 368) != 0;
    if (quasar::gLogLevel >= 5)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v7);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "hasHwcnPrimaryResultChoices=", 28);
      MEMORY[0x1B8C84BD0](v6, v5);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v7);
    }

    if (!v5)
    {
      operator new();
    }
  }
}

void sub_1B527061C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void quasar::Decoder::calculateNBestHwcn(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(*a2 + 376);
  *(v5 + 368) = 0;
  *(v5 + 376) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *a2;
  v8 = *(*a2 + 416);
  *(v7 + 408) = 0;
  *(v7 + 416) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *a2;
  v10 = *(*a2 + 432);
  *(v9 + 424) = 0;
  *(v9 + 432) = 0;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(*a2 + 224);
  if (v11)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    kaldi::WordHypLattice::GetNBestPath(v11, &v45, a3, *(a1 + 556));
    v42 = 0;
    v43 = 0;
    v44 = 0;
    if (*(a1 + 560) == 1)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      memset(v38, 0, sizeof(v38));
      kaldi::WordHypLattice::GetBestPath(*(*a2 + 224), &v39, v38);
      __p[0] = 0;
      __p[1] = 0;
      v37 = 0;
      v12 = v39;
      v13 = v40;
      if (v39 != v40)
      {
        v14 = 0;
        do
        {
          v15 = *(*a2 + 224);
          v16 = *v12;
          v17 = *(v15 + 40);
          if (v16 >= (*(v15 + 48) - v17) >> 3)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          if (v14 >= v37)
          {
            v18 = (v14 - __p[0]) >> 3;
            if ((v18 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v19 = (v37 - __p[0]) >> 2;
            if (v19 <= v18 + 1)
            {
              v19 = v18 + 1;
            }

            if (v37 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
            {
              v20 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v19;
            }

            if (v20)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(__p, v20);
            }

            v21 = (8 * v18);
            *v21 = *(v17 + 8 * v16);
            v14 = (8 * v18 + 8);
            v22 = v21 - (__p[1] - __p[0]);
            memcpy(v22, __p[0], __p[1] - __p[0]);
            v23 = __p[0];
            __p[0] = v22;
            __p[1] = v14;
            v37 = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v14 = *(v17 + 8 * v16);
            v14 += 8;
          }

          __p[1] = v14;
          ++v12;
        }

        while (v12 != v13);
      }

      v24 = v43;
      if (v43 >= v44)
      {
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 3);
        v26 = v25 + 1;
        if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v44 - v42) >> 3) > v26)
        {
          v26 = 0x5555555555555556 * ((v44 - v42) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v44 - v42) >> 3) >= 0x555555555555555)
        {
          v27 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v27 = v26;
        }

        *&v50 = &v42;
        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(&v42, v27);
        }

        v28 = (8 * ((v43 - v42) >> 3));
        *v28 = 0;
        v28[1] = 0;
        v28[2] = 0;
        *v28 = *__p;
        v28[2] = v37;
        __p[1] = 0;
        v37 = 0;
        v29 = 24 * v25 + 24;
        v30 = v28 - (v43 - v42);
        memcpy(v30, v42, v43 - v42);
        v31 = v42;
        v32 = v44;
        v42 = v30;
        v43 = v29;
        v44 = 0;
        *&v49 = v31;
        *(&v49 + 1) = v32;
        *&v48 = v31;
        *(&v48 + 1) = v31;
        std::__split_buffer<std::vector<int>>::~__split_buffer(&v48);
        v43 = v29;
      }

      else
      {
        *v43 = 0;
        *(v24 + 1) = 0;
        *(v24 + 2) = 0;
        *v24 = *__p;
        *(v24 + 2) = v37;
        v43 = v24 + 24;
      }

      *&v48 = v38;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v48);
      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }
    }

    v34 = v45;
    v33 = v46;
    while (v34 != v33)
    {
      std::vector<std::vector<kaldi::WordHypLattice::Arc *>>::emplace_back<std::vector<kaldi::WordHypLattice::Arc *>>(&v42, v34);
      v34 += 24;
    }

    operator new();
  }

  if (quasar::gLogLevel >= 4)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "No HWCN computed, so skipping nbestV2", 37);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v48);
  }
}

uint64_t quasar::ProcessHypotheses<1ul,0l,-1l>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const void **a5)
{
  v10 = (*(**(*a1 + 16) + 32))(*(*a1 + 16));
  v66 = *(a1 + 552);
  v67 = v10;
  v68 = a2;
  *(*a2 + 1008) = *(*a2 + 1000);
  v11 = *a3;
  if (a3[1] != *a3)
  {
    v12 = 0;
    while (1)
    {
      v13 = (v11 + 24 * v12);
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      std::vector<std::pair<int,int>>::reserve(&v96, 0x2E8BA2E8BA2E8BA3 * ((v13[1] - *v13) >> 3));
      v90[0] = a1;
      v90[1] = v68;
      v91 = v12 == 0;
      v92 = v67;
      v93 = v66;
      v94 = &v99;
      v95 = &v96;
      memset(&v89, 0, sizeof(v89));
      std::vector<int>::reserve(&v89, 0x2E8BA2E8BA2E8BA3 * ((v13[1] - *v13) >> 3));
      v87 = 0uLL;
      v88 = 0;
      std::vector<quasar::Token>::reserve(&v87, 0x2E8BA2E8BA2E8BA3 * ((v13[1] - *v13) >> 3));
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v14)
      {
        v16 = 0;
        v17 = 0.0;
      }

      else
      {
        v16 = 0;
        v17 = 0.0;
        do
        {
          quasar::ProcessHypotheses<1ul,0l,-1l>(quasar::DecoderPassData const&,std::shared_ptr<quasar::DecoderChainOutput> const&,std::vector<quasar::CalculateJoinedNBest<1ul>::HypothesisVector,std::allocator<quasar::CalculateJoinedNBest<1ul>::HypothesisVector>> const&,std::vector<std::vector<quasar::Token>> *,std::vector<double> *,kaldi::LatticeScoreCache *)::{lambda(quasar::NBestToken<1ul> const&)#1}::operator()(v90, v15, v69);
          v18 = *(&v81 + 3);
          v19 = *&v82;
          if (quasar::Token::isPrintable(v69))
          {
            std::vector<int>::push_back[abi:ne200100](&v89.__begin_, v15);
            std::vector<quasar::Token>::push_back[abi:ne200100](&v87, v69);
            v20 = a1[27];
            if (!v20)
            {
              goto LABEL_14;
            }

            v23 = *(v20 + 40);
            v21 = v20 + 40;
            v22 = v23;
            if (!v23)
            {
              goto LABEL_14;
            }

            v24 = *v15;
            v25 = v21;
            do
            {
              if (*(v22 + 28) >= v24)
              {
                v25 = v22;
              }

              v22 = *(v22 + 8 * (*(v22 + 28) < v24));
            }

            while (v22);
            if (v25 == v21 || v24 < *(v25 + 28))
            {
LABEL_14:
              ++v16;
            }
          }

          if (SBYTE7(v81) < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v79) < 0)
          {
            operator delete(v78[0]);
          }

          v86[0] = &v76 + 1;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v86);
          if (SBYTE7(v76) < 0)
          {
            operator delete(v75[0]);
          }

          v86[0] = &v73 + 1;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v86);
          if (SBYTE7(v73) < 0)
          {
            operator delete(v72[0]);
          }

          if (SBYTE7(v70) < 0)
          {
            operator delete(v69[0]);
          }

          v17 = v17 + (v18 + v19);
          v15 += 22;
        }

        while (v15 != v14);
      }

      if (v87 != *(&v87 + 1))
      {
        *(*(&v87 + 1) - 180) = 0;
      }

      if (!v12)
      {
        quasar::calculateEosLikelihood(a1, v68, &v87, &v89.__begin_);
        quasar::calculateNumTokensExcludingTriggerPhrase(a1, v68, &v87);
      }

      v26 = (*(*a1[21] + 120))(a1[21]);
      v27 = a1[27];
      if (!v26 || !v27)
      {
        break;
      }

      v86[0] = &v99;
      v86[1] = &v96;
      v86[2] = a1;
      if (v16 > (v97 - v96) >> 3)
      {
        if (quasar::gLogLevel >= 4)
        {
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          *__p = 0u;
          v81 = 0u;
          *v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          *v75 = 0u;
          *v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          *v69 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v69);
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "Phone sequencing failed; Ran out of phones, probably because ", 61);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "the last word got clipped in the audio. ", 40);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Lattice word alignment and confidence computation will also fail.", 65);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(v69);
        }

        *(*v68 + 160) = 1;
        goto LABEL_42;
      }

      if (v16 >= (v97 - v96) >> 3)
      {
        v55 = v87;
        if (*(&v87 + 1) != v87)
        {
          v56 = 0;
          do
          {
            v57 = a1[27];
            v60 = *(v57 + 40);
            v58 = v57 + 40;
            v59 = v60;
            if (!v60)
            {
              goto LABEL_84;
            }

            v61 = v89.__begin_[v56];
            v62 = v58;
            do
            {
              if (*(v59 + 28) >= v61)
              {
                v62 = v59;
              }

              v59 = *(v59 + 8 * (*(v59 + 28) < v61));
            }

            while (v59);
            if (v62 == v58 || v61 < *(v62 + 28))
            {
LABEL_84:
              quasar::ProcessHypotheses<1ul,0l,-1l>(quasar::DecoderPassData const&,std::shared_ptr<quasar::DecoderChainOutput> const&,std::vector<quasar::CalculateJoinedNBest<1ul>::HypothesisVector,std::allocator<quasar::CalculateJoinedNBest<1ul>::HypothesisVector>> const&,std::vector<std::vector<quasar::Token>> *,std::vector<double> *,kaldi::LatticeScoreCache *)::{lambda(unsigned long)#1}::operator()(v86, 0);
              v63 = v55 + 224 * v56;
              if (*(v63 + 71) < 0)
              {
                operator delete(*(v63 + 48));
              }

              v64 = *v69;
              *(v63 + 64) = v70;
              *(v63 + 48) = v64;
              quasar::PhonesetMapping::getIpaPhoneSequence((a1 + 76), v63 + 48);
            }

            ++v56;
          }

          while (v56 < 0x6DB6DB6DB6DB6DB7 * ((*(&v87 + 1) - v87) >> 5));
        }

        goto LABEL_42;
      }

      if (quasar::gLogLevel >= 4)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        *__p = 0u;
        v81 = 0u;
        *v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        *v75 = 0u;
        *v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        *v69 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v69);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "Phone sequencing failed; ran out of words for unknown reasons. ", 63);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Lattice word alignment and confidence computation will also fail. ", 66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "PLEASE FILE A RADAR", 19);
LABEL_41:
        quasar::QuasarInfoMessage::~QuasarInfoMessage(v69);
      }

LABEL_42:
      v30 = *(a4 + 8);
      v31 = *(a4 + 16);
      if (v30 >= v31)
      {
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *a4) >> 3);
        v34 = v33 + 1;
        if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v35 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *a4) >> 3);
        if (2 * v35 > v34)
        {
          v34 = 2 * v35;
        }

        if (v35 >= 0x555555555555555)
        {
          v36 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v36 = v34;
        }

        *&v71 = a4;
        if (v36)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a4, v36);
        }

        v39 = 24 * v33;
        *v39 = 0;
        *(v39 + 8) = 0;
        *(v39 + 16) = 0;
        *v39 = v87;
        *(v39 + 16) = v88;
        v87 = 0uLL;
        v88 = 0;
        v32 = 24 * v33 + 24;
        v40 = *(a4 + 8) - *a4;
        v41 = v39 - v40;
        memcpy((v39 - v40), *a4, v40);
        v42 = *a4;
        *a4 = v41;
        *(a4 + 8) = v32;
        v43 = *(a4 + 16);
        *(a4 + 16) = 0;
        *&v70 = v42;
        *(&v70 + 1) = v43;
        v69[0] = v42;
        v69[1] = v42;
        std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(v69);
      }

      else
      {
        *v30 = 0;
        v30[1] = 0;
        v30[2] = 0;
        *v30 = v87;
        v30[2] = v88;
        v87 = 0uLL;
        v88 = 0;
        v32 = (v30 + 3);
      }

      *(a4 + 8) = v32;
      v45 = a5[1];
      v44 = a5[2];
      if (v45 >= v44)
      {
        v47 = *a5;
        v48 = v45 - *a5;
        v49 = (v48 >> 3) + 1;
        if (v49 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v50 = v44 - v47;
        if (v50 >> 2 > v49)
        {
          v49 = v50 >> 2;
        }

        v51 = v50 >= 0x7FFFFFFFFFFFFFF8;
        v52 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v51)
        {
          v52 = v49;
        }

        if (v52)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a5, v52);
        }

        v53 = (8 * (v48 >> 3));
        *v53 = v17;
        v46 = v53 + 1;
        memcpy(0, v47, v48);
        v54 = *a5;
        *a5 = 0;
        a5[1] = v46;
        a5[2] = 0;
        if (v54)
        {
          operator delete(v54);
        }
      }

      else
      {
        *v45 = v17;
        v46 = v45 + 1;
      }

      a5[1] = v46;
      v69[0] = &v87;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v69);
      if (v89.__begin_)
      {
        v89.__end_ = v89.__begin_;
        operator delete(v89.__begin_);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      if (v99)
      {
        v100 = v99;
        operator delete(v99);
      }

      ++v12;
      v11 = *a3;
      if (v12 >= 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3))
      {
        return 1;
      }
    }

    if (v27 || quasar::gLogLevel < 4)
    {
      goto LABEL_42;
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    *__p = 0u;
    v81 = 0u;
    *v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    *v75 = 0u;
    *v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    *v69 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v69);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "No word boundary info found. Cannot give proper phone sequence.", 63);
    goto LABEL_41;
  }

  return 1;
}

void sub_1B5271A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void **a48, uint64_t a49, uint64_t a50, char a51)
{
  a48 = &a51;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a48);
  v53 = *(v51 - 240);
  if (v53)
  {
    *(v51 - 232) = v53;
    operator delete(v53);
  }

  v54 = *(v51 - 168);
  if (v54)
  {
    *(v51 - 160) = v54;
    operator delete(v54);
  }

  v55 = *(v51 - 144);
  if (v55)
  {
    *(v51 - 136) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::ProcessHypotheses<1ul,-1l,0l>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const void **a5)
{
  v10 = (*(**(*a1 + 16) + 32))(*(*a1 + 16));
  v66 = *(a1 + 552);
  v67 = v10;
  v68 = a2;
  *(*a2 + 1008) = *(*a2 + 1000);
  v11 = *a3;
  if (a3[1] != *a3)
  {
    v12 = 0;
    while (1)
    {
      v13 = (v11 + 24 * v12);
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      std::vector<std::pair<int,int>>::reserve(&v96, 0x2E8BA2E8BA2E8BA3 * ((v13[1] - *v13) >> 3));
      v90[0] = a1;
      v90[1] = v68;
      v91 = v12 == 0;
      v92 = v67;
      v93 = v66;
      v94 = &v99;
      v95 = &v96;
      memset(&v89, 0, sizeof(v89));
      std::vector<int>::reserve(&v89, 0x2E8BA2E8BA2E8BA3 * ((v13[1] - *v13) >> 3));
      v87 = 0uLL;
      v88 = 0;
      std::vector<quasar::Token>::reserve(&v87, 0x2E8BA2E8BA2E8BA3 * ((v13[1] - *v13) >> 3));
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v14)
      {
        v16 = 0;
        v17 = 0.0;
      }

      else
      {
        v16 = 0;
        v17 = 0.0;
        do
        {
          quasar::ProcessHypotheses<1ul,-1l,0l>(quasar::DecoderPassData const&,std::shared_ptr<quasar::DecoderChainOutput> const&,std::vector<quasar::CalculateJoinedNBest<1ul>::HypothesisVector,std::allocator<quasar::CalculateJoinedNBest<1ul>::HypothesisVector>> const&,std::vector<std::vector<quasar::Token>> *,std::vector<double> *,kaldi::LatticeScoreCache *)::{lambda(quasar::NBestToken<1ul> const&)#1}::operator()(v90, v15, v69);
          v18 = *(&v81 + 3);
          v19 = *&v82;
          if (quasar::Token::isPrintable(v69))
          {
            std::vector<int>::push_back[abi:ne200100](&v89.__begin_, v15);
            std::vector<quasar::Token>::push_back[abi:ne200100](&v87, v69);
            v20 = a1[27];
            if (!v20)
            {
              goto LABEL_14;
            }

            v23 = *(v20 + 40);
            v21 = v20 + 40;
            v22 = v23;
            if (!v23)
            {
              goto LABEL_14;
            }

            v24 = *v15;
            v25 = v21;
            do
            {
              if (*(v22 + 28) >= v24)
              {
                v25 = v22;
              }

              v22 = *(v22 + 8 * (*(v22 + 28) < v24));
            }

            while (v22);
            if (v25 == v21 || v24 < *(v25 + 28))
            {
LABEL_14:
              ++v16;
            }
          }

          if (SBYTE7(v81) < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v79) < 0)
          {
            operator delete(v78[0]);
          }

          v86[0] = &v76 + 1;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v86);
          if (SBYTE7(v76) < 0)
          {
            operator delete(v75[0]);
          }

          v86[0] = &v73 + 1;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v86);
          if (SBYTE7(v73) < 0)
          {
            operator delete(v72[0]);
          }

          if (SBYTE7(v70) < 0)
          {
            operator delete(v69[0]);
          }

          v17 = v17 + (v18 + v19);
          v15 += 22;
        }

        while (v15 != v14);
      }

      if (v87 != *(&v87 + 1))
      {
        *(*(&v87 + 1) - 180) = 0;
      }

      if (!v12)
      {
        quasar::calculateEosLikelihood(a1, v68, &v87, &v89.__begin_);
        quasar::calculateNumTokensExcludingTriggerPhrase(a1, v68, &v87);
      }

      v26 = (*(*a1[21] + 120))(a1[21]);
      v27 = a1[27];
      if (!v26 || !v27)
      {
        break;
      }

      v86[0] = &v99;
      v86[1] = &v96;
      v86[2] = a1;
      if (v16 > (v97 - v96) >> 3)
      {
        if (quasar::gLogLevel >= 4)
        {
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          *__p = 0u;
          v81 = 0u;
          *v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          *v75 = 0u;
          *v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          *v69 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v69);
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "Phone sequencing failed; Ran out of phones, probably because ", 61);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "the last word got clipped in the audio. ", 40);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Lattice word alignment and confidence computation will also fail.", 65);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(v69);
        }

        *(*v68 + 160) = 1;
        goto LABEL_42;
      }

      if (v16 >= (v97 - v96) >> 3)
      {
        v55 = v87;
        if (*(&v87 + 1) != v87)
        {
          v56 = 0;
          do
          {
            v57 = a1[27];
            v60 = *(v57 + 40);
            v58 = v57 + 40;
            v59 = v60;
            if (!v60)
            {
              goto LABEL_84;
            }

            v61 = v89.__begin_[v56];
            v62 = v58;
            do
            {
              if (*(v59 + 28) >= v61)
              {
                v62 = v59;
              }

              v59 = *(v59 + 8 * (*(v59 + 28) < v61));
            }

            while (v59);
            if (v62 == v58 || v61 < *(v62 + 28))
            {
LABEL_84:
              quasar::ProcessHypotheses<1ul,-1l,0l>(quasar::DecoderPassData const&,std::shared_ptr<quasar::DecoderChainOutput> const&,std::vector<quasar::CalculateJoinedNBest<1ul>::HypothesisVector,std::allocator<quasar::CalculateJoinedNBest<1ul>::HypothesisVector>> const&,std::vector<std::vector<quasar::Token>> *,std::vector<double> *,kaldi::LatticeScoreCache *)::{lambda(unsigned long)#1}::operator()(v86, 0);
              v63 = v55 + 224 * v56;
              if (*(v63 + 71) < 0)
              {
                operator delete(*(v63 + 48));
              }

              v64 = *v69;
              *(v63 + 64) = v70;
              *(v63 + 48) = v64;
              quasar::PhonesetMapping::getIpaPhoneSequence((a1 + 76), v63 + 48);
            }

            ++v56;
          }

          while (v56 < 0x6DB6DB6DB6DB6DB7 * ((*(&v87 + 1) - v87) >> 5));
        }

        goto LABEL_42;
      }

      if (quasar::gLogLevel >= 4)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        *__p = 0u;
        v81 = 0u;
        *v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        *v75 = 0u;
        *v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        *v69 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v69);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "Phone sequencing failed; ran out of words for unknown reasons. ", 63);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Lattice word alignment and confidence computation will also fail. ", 66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "PLEASE FILE A RADAR", 19);
LABEL_41:
        quasar::QuasarInfoMessage::~QuasarInfoMessage(v69);
      }

LABEL_42:
      v30 = *(a4 + 8);
      v31 = *(a4 + 16);
      if (v30 >= v31)
      {
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *a4) >> 3);
        v34 = v33 + 1;
        if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v35 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *a4) >> 3);
        if (2 * v35 > v34)
        {
          v34 = 2 * v35;
        }

        if (v35 >= 0x555555555555555)
        {
          v36 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v36 = v34;
        }

        *&v71 = a4;
        if (v36)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a4, v36);
        }

        v39 = 24 * v33;
        *v39 = 0;
        *(v39 + 8) = 0;
        *(v39 + 16) = 0;
        *v39 = v87;
        *(v39 + 16) = v88;
        v87 = 0uLL;
        v88 = 0;
        v32 = 24 * v33 + 24;
        v40 = *(a4 + 8) - *a4;
        v41 = v39 - v40;
        memcpy((v39 - v40), *a4, v40);
        v42 = *a4;
        *a4 = v41;
        *(a4 + 8) = v32;
        v43 = *(a4 + 16);
        *(a4 + 16) = 0;
        *&v70 = v42;
        *(&v70 + 1) = v43;
        v69[0] = v42;
        v69[1] = v42;
        std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(v69);
      }

      else
      {
        *v30 = 0;
        v30[1] = 0;
        v30[2] = 0;
        *v30 = v87;
        v30[2] = v88;
        v87 = 0uLL;
        v88 = 0;
        v32 = (v30 + 3);
      }

      *(a4 + 8) = v32;
      v45 = a5[1];
      v44 = a5[2];
      if (v45 >= v44)
      {
        v47 = *a5;
        v48 = v45 - *a5;
        v49 = (v48 >> 3) + 1;
        if (v49 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v50 = v44 - v47;
        if (v50 >> 2 > v49)
        {
          v49 = v50 >> 2;
        }

        v51 = v50 >= 0x7FFFFFFFFFFFFFF8;
        v52 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v51)
        {
          v52 = v49;
        }

        if (v52)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a5, v52);
        }

        v53 = (8 * (v48 >> 3));
        *v53 = v17;
        v46 = v53 + 1;
        memcpy(0, v47, v48);
        v54 = *a5;
        *a5 = 0;
        a5[1] = v46;
        a5[2] = 0;
        if (v54)
        {
          operator delete(v54);
        }
      }

      else
      {
        *v45 = v17;
        v46 = v45 + 1;
      }

      a5[1] = v46;
      v69[0] = &v87;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v69);
      if (v89.__begin_)
      {
        v89.__end_ = v89.__begin_;
        operator delete(v89.__begin_);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      if (v99)
      {
        v100 = v99;
        operator delete(v99);
      }

      ++v12;
      v11 = *a3;
      if (v12 >= 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3))
      {
        return 1;
      }
    }

    if (v27 || quasar::gLogLevel < 4)
    {
      goto LABEL_42;
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    *__p = 0u;
    v81 = 0u;
    *v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    *v75 = 0u;
    *v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    *v69 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v69);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "No word boundary info found. Cannot give proper phone sequence.", 63);
    goto LABEL_41;
  }

  return 1;
}

void sub_1B52722A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void **a48, uint64_t a49, uint64_t a50, char a51)
{
  a48 = &a51;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a48);
  v53 = *(v51 - 240);
  if (v53)
  {
    *(v51 - 232) = v53;
    operator delete(v53);
  }

  v54 = *(v51 - 168);
  if (v54)
  {
    *(v51 - 160) = v54;
    operator delete(v54);
  }

  v55 = *(v51 - 144);
  if (v55)
  {
    *(v51 - 136) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::ProcessHypotheses<0ul,-1l,-1l>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, const void **a5)
{
  v10 = (*(**(*a1 + 16) + 32))(*(*a1 + 16));
  v66 = *(a1 + 552);
  v67 = v10;
  v68 = a2;
  *(*a2 + 1008) = *(*a2 + 1000);
  v11 = *a3;
  if (a3[1] != *a3)
  {
    v12 = 0;
    while (1)
    {
      v13 = (v11 + 24 * v12);
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      std::vector<std::pair<int,int>>::reserve(&v96, 0x2E8BA2E8BA2E8BA3 * ((v13[1] - *v13) >> 3));
      v90[0] = a1;
      v90[1] = v68;
      v91 = v12 == 0;
      v92 = v67;
      v93 = v66;
      v94 = &v99;
      v95 = &v96;
      memset(&v89, 0, sizeof(v89));
      std::vector<int>::reserve(&v89, 0x2E8BA2E8BA2E8BA3 * ((v13[1] - *v13) >> 3));
      v87 = 0uLL;
      v88 = 0;
      std::vector<quasar::Token>::reserve(&v87, 0x2E8BA2E8BA2E8BA3 * ((v13[1] - *v13) >> 3));
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v14)
      {
        v16 = 0;
        v17 = 0.0;
      }

      else
      {
        v16 = 0;
        v17 = 0.0;
        do
        {
          quasar::ProcessHypotheses<0ul,-1l,-1l>(quasar::DecoderPassData const&,std::shared_ptr<quasar::DecoderChainOutput> const&,std::vector<quasar::CalculateJoinedNBest<0ul>::HypothesisVector,std::allocator<quasar::CalculateJoinedNBest<0ul>::HypothesisVector>> const&,std::vector<std::vector<quasar::Token>> *,std::vector<double> *,kaldi::LatticeScoreCache *)::{lambda(quasar::NBestToken<0ul> const&)#1}::operator()(v90, v15, v69);
          v18 = *(&v81 + 3);
          v19 = *&v82;
          if (quasar::Token::isPrintable(v69))
          {
            std::vector<int>::push_back[abi:ne200100](&v89.__begin_, v15);
            std::vector<quasar::Token>::push_back[abi:ne200100](&v87, v69);
            v20 = a1[27];
            if (!v20)
            {
              goto LABEL_14;
            }

            v23 = *(v20 + 40);
            v21 = v20 + 40;
            v22 = v23;
            if (!v23)
            {
              goto LABEL_14;
            }

            v24 = *v15;
            v25 = v21;
            do
            {
              if (*(v22 + 28) >= v24)
              {
                v25 = v22;
              }

              v22 = *(v22 + 8 * (*(v22 + 28) < v24));
            }

            while (v22);
            if (v25 == v21 || v24 < *(v25 + 28))
            {
LABEL_14:
              ++v16;
            }
          }

          if (SBYTE7(v81) < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v79) < 0)
          {
            operator delete(v78[0]);
          }

          v86[0] = &v76 + 1;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v86);
          if (SBYTE7(v76) < 0)
          {
            operator delete(v75[0]);
          }

          v86[0] = &v73 + 1;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v86);
          if (SBYTE7(v73) < 0)
          {
            operator delete(v72[0]);
          }

          if (SBYTE7(v70) < 0)
          {
            operator delete(v69[0]);
          }

          v17 = v17 + (v18 + v19);
          v15 += 22;
        }

        while (v15 != v14);
      }

      if (v87 != *(&v87 + 1))
      {
        *(*(&v87 + 1) - 180) = 0;
      }

      if (!v12)
      {
        quasar::calculateEosLikelihood(a1, v68, &v87, &v89.__begin_);
        quasar::calculateNumTokensExcludingTriggerPhrase(a1, v68, &v87);
      }

      v26 = (*(*a1[21] + 120))(a1[21]);
      v27 = a1[27];
      if (!v26 || !v27)
      {
        break;
      }

      v86[0] = &v99;
      v86[1] = &v96;
      v86[2] = a1;
      if (v16 > (v97 - v96) >> 3)
      {
        if (quasar::gLogLevel >= 4)
        {
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          *__p = 0u;
          v81 = 0u;
          *v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          *v75 = 0u;
          *v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          *v69 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v69);
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "Phone sequencing failed; Ran out of phones, probably because ", 61);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "the last word got clipped in the audio. ", 40);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Lattice word alignment and confidence computation will also fail.", 65);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(v69);
        }

        *(*v68 + 160) = 1;
        goto LABEL_42;
      }

      if (v16 >= (v97 - v96) >> 3)
      {
        v55 = v87;
        if (*(&v87 + 1) != v87)
        {
          v56 = 0;
          do
          {
            v57 = a1[27];
            v60 = *(v57 + 40);
            v58 = v57 + 40;
            v59 = v60;
            if (!v60)
            {
              goto LABEL_84;
            }

            v61 = v89.__begin_[v56];
            v62 = v58;
            do
            {
              if (*(v59 + 28) >= v61)
              {
                v62 = v59;
              }

              v59 = *(v59 + 8 * (*(v59 + 28) < v61));
            }

            while (v59);
            if (v62 == v58 || v61 < *(v62 + 28))
            {
LABEL_84:
              quasar::ProcessHypotheses<0ul,-1l,-1l>(quasar::DecoderPassData const&,std::shared_ptr<quasar::DecoderChainOutput> const&,std::vector<quasar::CalculateJoinedNBest<0ul>::HypothesisVector,std::allocator<quasar::CalculateJoinedNBest<0ul>::HypothesisVector>> const&,std::vector<std::vector<quasar::Token>> *,std::vector<double> *,kaldi::LatticeScoreCache *)::{lambda(unsigned long)#1}::operator()(v86, 0);
              v63 = v55 + 224 * v56;
              if (*(v63 + 71) < 0)
              {
                operator delete(*(v63 + 48));
              }

              v64 = *v69;
              *(v63 + 64) = v70;
              *(v63 + 48) = v64;
              quasar::PhonesetMapping::getIpaPhoneSequence((a1 + 76), v63 + 48);
            }

            ++v56;
          }

          while (v56 < 0x6DB6DB6DB6DB6DB7 * ((*(&v87 + 1) - v87) >> 5));
        }

        goto LABEL_42;
      }

      if (quasar::gLogLevel >= 4)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        *__p = 0u;
        v81 = 0u;
        *v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        *v75 = 0u;
        *v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        *v69 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v69);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "Phone sequencing failed; ran out of words for unknown reasons. ", 63);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Lattice word alignment and confidence computation will also fail. ", 66);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "PLEASE FILE A RADAR", 19);
LABEL_41:
        quasar::QuasarInfoMessage::~QuasarInfoMessage(v69);
      }

LABEL_42:
      v30 = *(a4 + 8);
      v31 = *(a4 + 16);
      if (v30 >= v31)
      {
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *a4) >> 3);
        v34 = v33 + 1;
        if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v35 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *a4) >> 3);
        if (2 * v35 > v34)
        {
          v34 = 2 * v35;
        }

        if (v35 >= 0x555555555555555)
        {
          v36 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v36 = v34;
        }

        *&v71 = a4;
        if (v36)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a4, v36);
        }

        v39 = 24 * v33;
        *v39 = 0;
        *(v39 + 8) = 0;
        *(v39 + 16) = 0;
        *v39 = v87;
        *(v39 + 16) = v88;
        v87 = 0uLL;
        v88 = 0;
        v32 = 24 * v33 + 24;
        v40 = *(a4 + 8) - *a4;
        v41 = v39 - v40;
        memcpy((v39 - v40), *a4, v40);
        v42 = *a4;
        *a4 = v41;
        *(a4 + 8) = v32;
        v43 = *(a4 + 16);
        *(a4 + 16) = 0;
        *&v70 = v42;
        *(&v70 + 1) = v43;
        v69[0] = v42;
        v69[1] = v42;
        std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(v69);
      }

      else
      {
        *v30 = 0;
        v30[1] = 0;
        v30[2] = 0;
        *v30 = v87;
        v30[2] = v88;
        v87 = 0uLL;
        v88 = 0;
        v32 = (v30 + 3);
      }

      *(a4 + 8) = v32;
      v45 = a5[1];
      v44 = a5[2];
      if (v45 >= v44)
      {
        v47 = *a5;
        v48 = v45 - *a5;
        v49 = (v48 >> 3) + 1;
        if (v49 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v50 = v44 - v47;
        if (v50 >> 2 > v49)
        {
          v49 = v50 >> 2;
        }

        v51 = v50 >= 0x7FFFFFFFFFFFFFF8;
        v52 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v51)
        {
          v52 = v49;
        }

        if (v52)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a5, v52);
        }

        v53 = (8 * (v48 >> 3));
        *v53 = v17;
        v46 = v53 + 1;
        memcpy(0, v47, v48);
        v54 = *a5;
        *a5 = 0;
        a5[1] = v46;
        a5[2] = 0;
        if (v54)
        {
          operator delete(v54);
        }
      }

      else
      {
        *v45 = v17;
        v46 = v45 + 1;
      }

      a5[1] = v46;
      v69[0] = &v87;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v69);
      if (v89.__begin_)
      {
        v89.__end_ = v89.__begin_;
        operator delete(v89.__begin_);
      }

      if (v96)
      {
        v97 = v96;
        operator delete(v96);
      }

      if (v99)
      {
        v100 = v99;
        operator delete(v99);
      }

      ++v12;
      v11 = *a3;
      if (v12 >= 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3))
      {
        return 1;
      }
    }

    if (v27 || quasar::gLogLevel < 4)
    {
      goto LABEL_42;
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    *__p = 0u;
    v81 = 0u;
    *v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    *v75 = 0u;
    *v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    *v69 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v69);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "No word boundary info found. Cannot give proper phone sequence.", 63);
    goto LABEL_41;
  }

  return 1;
}

void sub_1B5272B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void **a48, uint64_t a49, uint64_t a50, char a51)
{
  a48 = &a51;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a48);
  v53 = *(v51 - 240);
  if (v53)
  {
    *(v51 - 232) = v53;
    operator delete(v53);
  }

  v54 = *(v51 - 168);
  if (v54)
  {
    *(v51 - 160) = v54;
    operator delete(v54);
  }

  v55 = *(v51 - 144);
  if (v55)
  {
    *(v51 - 136) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<kaldi::WordHypLattice::Arc *>>::emplace_back<std::vector<kaldi::WordHypLattice::Arc *>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy((v11 - v12), *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    v15 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    std::__split_buffer<std::vector<int>>::~__split_buffer(v17);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  *(a1 + 8) = v6;
  return v6 - 24;
}

std::string *quasar::calculateLmeInfo(std::string *result, int a2, unsigned int a3, uint64_t a4)
{
  if ((a3 & 0x80000000) == 0)
  {
    v4 = result;
    v5 = result->__r_.__value_.__r.__words[0];
    size = result->__r_.__value_.__l.__size_;
    if (result->__r_.__value_.__r.__words[0] != size)
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((size - v5) >> 3) <= a3)
      {
        memset(v15, 0, sizeof(v15));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "symbolTableId=", 14);
        v12 = MEMORY[0x1B8C84C00](v11, a3);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", but lmeInfos.size()=", 22);
        MEMORY[0x1B8C84C30](v13, 0xCCCCCCCCCCCCCCCDLL * ((v4->__words[1] - v4->__words[0]) >> 3));
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v15);
      }

      v9 = 5 * a3;
      result = std::string::operator=((a4 + 144), (v5 + 40 * a3 + 16));
      v10 = (v4->__words[0] + 8 * v9);
      *(a4 + 168) = *v10;
      if (a2)
      {
        if (v10[2])
        {
          v10[2] = 2;
        }
      }
    }
  }

  return result;
}

void quasar::calculateEosLikelihood(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int **a4)
{
  v5 = *(*a2 + 656);
  if (!v5 || *a3 == a3[1] || *(*a2 + 1096) != 9.0)
  {
    return;
  }

  if (*(a1 + 801) == 1)
  {
    v9 = *(a1 + 808);
    v10 = *(a1 + 816);
    if (v9 != v10)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        LODWORD(v20) = -1;
        v11 |= quasar::isTokenSpanPrefixOf(v9, a3, 1, &v20);
        LODWORD(v20) = -1;
        isTokenSpanPrefixOf = quasar::isTokenSpanPrefixOf(a3, v9, 1, &v20);
        if (v20 >= 0)
        {
          v14 = isTokenSpanPrefixOf;
        }

        else
        {
          v14 = 0;
        }

        v12 |= v14;
        v9 += 3;
      }

      while (v9 != v10);
      if (!(v12 & 1 | ((*(a1 + 801) & v11 & 1) == 0)))
      {
        return;
      }
    }

    v5 = *(*a2 + 656);
  }

  v15 = (**v5)(v5);
  v17 = *a4;
  v16 = a4[1];
  while (v17 != v16)
  {
    if (((*(**(*a2 + 656) + 32))(*(*a2 + 656), v15, *v17, v37) & 1) == 0)
    {
      if (quasar::gLogLevel >= 2)
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "The refeeding of word sequence should not fail.", 47);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&v20);
      }

      return;
    }

    v15 = v38;
    ++v17;
  }

  if (v15 != -1)
  {
    v18 = (*(**(*a2 + 656) + 56))(*(*a2 + 656));
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v18 = 9.0;
    }

    *(*a2 + 1096) = v18;
    if (quasar::gLogLevel >= 4)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "End of sentence likelihood is: ", 31);
      MEMORY[0x1B8C84BE0](v19, *(*a2 + 1096));
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v20);
    }
  }
}

void quasar::calculateNumTokensExcludingTriggerPhrase(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  if (*a3 != v3)
  {
    v6 = *a2;
    if (!*(*a2 + 1108))
    {
      if (*(a1 + 801) != 1 || (v7 = *(a1 + 808), v8 = *(a1 + 816), v7 == v8))
      {
LABEL_10:
        *(v6 + 1108) = -1227133513 * ((v3 - v4) >> 5);
        if (quasar::gLogLevel < 4)
        {
          return;
        }

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Setting number of tokens excluding trigger phrase (request is not voice trigger or raise to speak): ", 100);
        MEMORY[0x1B8C84C00](v10, *(*a2 + 1108));
      }

      else
      {
        while (1)
        {
          v30 = -1;
          if (quasar::isTokenSpanPrefixOf(v7, a3, 1, &v30))
          {
            *(*a2 + 1108) = 0;
            if (quasar::gLogLevel < 4)
            {
              return;
            }

            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v18 = 0u;
            v19 = 0u;
            v16 = 0u;
            v17 = 0u;
            v14 = 0u;
            v15 = 0u;
            v13 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
            v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Setting number of tokens excluding trigger phrase (resultChoice is a prefix of a trigger phrase): ", 98);
            MEMORY[0x1B8C84C00](v11, *(*a2 + 1108));
            goto LABEL_12;
          }

          v30 = -1;
          if (quasar::isTokenSpanPrefixOf(a3, v7, 1, &v30))
          {
            if ((v30 & 0x80000000) == 0)
            {
              break;
            }
          }

          v7 += 3;
          if (v7 == v8)
          {
            v4 = *a3;
            v3 = a3[1];
            v6 = *a2;
            goto LABEL_10;
          }
        }

        *(*a2 + 1108) = -1227133513 * ((a3[1] - *a3) >> 5) - v30;
        if (quasar::gLogLevel < 4)
        {
          return;
        }

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Setting number of tokens excluding trigger phrase: ", 51);
        MEMORY[0x1B8C84C00](v12, *(*a2 + 1108));
      }

LABEL_12:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v13);
    }
  }
}

uint64_t quasar::Decoder::runChain(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = a3;
  v11 = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    v12 = 0;
    v13 = -1;
    while (1)
    {
      v14 = *v11;
      v15 = v11[1];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      {
        v13 = v12;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          v13 = v12;
LABEL_10:
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      else if (v15)
      {
        goto LABEL_10;
      }

      v11 += 2;
      ++v12;
      v10 = a1[1];
      if (v11 == v10)
      {
        v11 = *a1;
        v5 = a5;
        v7 = a3;
        goto LABEL_14;
      }
    }
  }

  v13 = -1;
LABEL_14:
  if (v11 == v10)
  {
    return 0;
  }

  v16 = 0;
  for (i = v11 + 2; ; i += 2)
  {
    v18 = quasar::Decoder::run(*v11, v7, a4, v5, a2, v11 == *a1, v10 == i);
    v19 = *(a2 + 24);
    if (!v19)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v19 + 48))(v19) ? 1 : v18;
    if (result)
    {
      break;
    }

    v11 += 2;
    ++v16;
    v10 = a1[1];
    if (v11 == v10)
    {
      return 0;
    }
  }

  if (v13 != -1 && v16 <= v13)
  {
    *(v7 + 836) = 1;
  }

  return result;
}

void quasar::Decoder::calculateStabilityMetrics(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  *a5 = 0;
  *a4 = 0;
  if (a1[1] != *a1)
  {
    memset(&v6[3], 0, 24);
    std::string::basic_string[abi:ne200100]<0>(&__p, " ");
    quasar::split(a2, &__p, 1, v6);
  }

  if (quasar::gLogLevel >= 4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "empty partial results!", 22);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
  }
}

void sub_1B5273E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  a40 = &a31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a40);
  a40 = &a34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a40);
  a40 = &a37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void quasar::Decoder::~Decoder(quasar::Decoder *this)
{
  *this = &unk_1F2D093F8;
  v2 = *(this + 55);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 53);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 50);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
  }

  quasar::SpeechModelInfo::~SpeechModelInfo((this + 64));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

double quasar::Decoder::getDecoderTypeName@<D0>(std::string *this@<X0>, uint64_t a2@<X8>)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a2, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    *a2 = *this;
  }

  v4 = std::string::rfind(this, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (v4 != -1)
  {
    std::string::basic_string(&v7, this, v4 + 1, 0xFFFFFFFFFFFFFFFFLL, &v8);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v7;
    v6 = std::string::find(a2, 58, 0);
    if (v6 != -1)
    {
      std::string::basic_string(&v7, a2, 0, v6, &v8);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      result = *&v7.__r_.__value_.__l.__data_;
      *a2 = v7;
    }
  }

  return result;
}

void sub_1B5274138(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::Decoder::createDecoder(std::string *this@<X0>, void *a2@<X8>)
{
  if (quasar::gLogLevel >= 5)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    memset(__p, 0, sizeof(__p));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Building Decoder ", 17);
    v5 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v5 >= 0)
    {
      v6 = this;
    }

    else
    {
      v6 = this->__r_.__value_.__r.__words[0];
    }

    if (v5 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, size);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  quasar::Decoder::getDecoderTypeName(this, __p);
  *a2 = 0;
  a2[1] = 0;
  if ((HIBYTE(__p[2]) & 0x80) != 0)
  {
    v11 = __p[1];
    if (__p[1] != 20)
    {
      if (__p[1] == 24)
      {
LABEL_57:
        if (*__p[0] == 0x2D6563697474616CLL && *(__p[0] + 1) == 0x6D6C2D6D6C676962 && *(__p[0] + 2) == 0x7265747361662D65)
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineLatticeBiglmLmeFasterDecoder,std::allocator<quasar::OnlineLatticeBiglmLmeFasterDecoder>,std::string const&,0>();
        }

        goto LABEL_109;
      }

      goto LABEL_24;
    }

    v8 = __p[0];
  }

  else
  {
    v8 = __p;
    if (HIBYTE(__p[2]) <= 0x13u)
    {
      if (HIBYTE(__p[2]) != 17)
      {
LABEL_12:
        if (HIBYTE(__p[2]) != 18)
        {
          goto LABEL_109;
        }

LABEL_13:
        if (__p[0] != 0x2D6563697474616CLL || __p[1] != 0x6F637365722D6D6CLL || LOWORD(__p[2]) != 25970)
        {
          goto LABEL_109;
        }

LABEL_21:
        std::allocate_shared[abi:ne200100]<quasar::OnlineLmRescoringDecoder,std::allocator<quasar::OnlineLmRescoringDecoder>,std::string const&,0>();
      }

      goto LABEL_102;
    }

    if (HIBYTE(__p[2]) != 20)
    {
      if (HIBYTE(__p[2]) != 21)
      {
        goto LABEL_109;
      }

      v14 = __p[0] == 0x2D6563697474616CLL && __p[1] == 0x65722D656C616373;
      if (!v14 || *(&__p[1] + 5) != 0x65726F637365722DLL)
      {
        goto LABEL_109;
      }

LABEL_46:
      std::allocate_shared[abi:ne200100]<quasar::OnlineLatticeRescalingDecoder,std::allocator<quasar::OnlineLatticeRescalingDecoder>,std::string const&,0>();
    }
  }

  v16 = *v8;
  v17 = v8[1];
  v18 = *(v8 + 4);
  if (v16 == 0x2D6563697474616CLL && v17 == 0x61662D6D6C676962 && v18 == 1919251571)
  {
    std::allocate_shared[abi:ne200100]<quasar::OnlineLatticeBiglmFasterDecoder,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder>,std::string const&,0>();
  }

  v11 = __p[1];
  if ((HIBYTE(__p[2]) & 0x80) != 0 && __p[1] == 24)
  {
    goto LABEL_57;
  }

  if ((HIBYTE(__p[2]) & 0x80) == 0)
  {
LABEL_68:
    if (HIBYTE(__p[2]) != 17)
    {
      if (HIBYTE(__p[2]) == 18)
      {
        goto LABEL_13;
      }

      if (HIBYTE(__p[2]) != 20 || (__p[0] == 0x2D6563697474616CLL ? (v23 = __p[1] == 0x696C612D64726F77) : (v23 = 0), v23 ? (v24 = LODWORD(__p[2]) == 1919250023) : (v24 = 0), !v24))
      {
LABEL_109:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "error-blamer"))
        {
          std::allocate_shared[abi:ne200100]<quasar::ErrorBlamingDecoder,std::allocator<quasar::ErrorBlamingDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "lattice-confidence"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineLatticeConfidenceDecoder,std::allocator<quasar::OnlineLatticeConfidenceDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "lattice-faster"))
        {
          std::allocate_shared[abi:ne200100]<quasar::LatticeFasterDecoder,std::allocator<quasar::LatticeFasterDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "keyword-spotting-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineKeywordSpottingDecoder,std::allocator<quasar::OnlineKeywordSpottingDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "seeva-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineSeevaDecoder,std::allocator<quasar::OnlineSeevaDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "seeva-step-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineSeevaStepDecoder,std::allocator<quasar::OnlineSeevaStepDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "seeva-step-biglm-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineSeevaStepBigLmDecoder,std::allocator<quasar::OnlineSeevaStepBigLmDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "seeva-greedy-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::SeevaGreedyDecoder,std::allocator<quasar::SeevaGreedyDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "seeva-batch-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::SeevaBatchDecoder,std::allocator<quasar::SeevaBatchDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "las-beam-search-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineLASBeamSearchDecoder,std::allocator<quasar::OnlineLASBeamSearchDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "las-speculative-beam-search-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineLASSpeculativeBeamSearchDecoder,std::allocator<quasar::OnlineLASSpeculativeBeamSearchDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "las-lm-rescoring-beam-search-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineLASLmRescoringBeamSearchDecoder,std::allocator<quasar::OnlineLASLmRescoringBeamSearchDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "las-lm-rescoring-speculative-beam-search-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder,std::allocator<quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "transducer-beam-search-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineTransducerBeamSearchDecoder,std::allocator<quasar::OnlineTransducerBeamSearchDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "transducer-graph-search-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineTransducerGraphSearchDecoder,std::allocator<quasar::OnlineTransducerGraphSearchDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "system-combination-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::SystemCombinationDecoder,std::allocator<quasar::SystemCombinationDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "confusion-network-combiner"))
        {
          std::allocate_shared[abi:ne200100]<quasar::ConfusionNetworkCombinerDecoder,std::allocator<quasar::ConfusionNetworkCombinerDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "phonetic-match"))
        {
          std::allocate_shared[abi:ne200100]<quasar::PhoneticMatchDecoder,std::allocator<quasar::PhoneticMatchDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "fingerprint-detector"))
        {
          std::allocate_shared[abi:ne200100]<quasar::FingerprintDetector,std::allocator<quasar::FingerprintDetector>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "audio-analytics-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineAudioAnalyticsDecoder,std::allocator<quasar::OnlineAudioAnalyticsDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "watermark-detector"))
        {
          std::allocate_shared[abi:ne200100]<quasar::WatermarkDetector,std::allocator<quasar::WatermarkDetector>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "audio-analytics-only"))
        {
          std::allocate_shared[abi:ne200100]<quasar::AudioAnalyticsDecoder,std::allocator<quasar::AudioAnalyticsDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "lattice-rnn-mitigator"))
        {
          std::allocate_shared[abi:ne200100]<quasar::LatticeRnnMitigator,std::allocator<quasar::LatticeRnnMitigator>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "lattice-confidence2"))
        {
          std::allocate_shared[abi:ne200100]<quasar::HwcnConfidence,std::allocator<quasar::HwcnConfidence>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "e2e-asr-confidence"))
        {
          std::allocate_shared[abi:ne200100]<quasar::E2EAsrConfidence,std::allocator<quasar::E2EAsrConfidence>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "watermark-detector2"))
        {
          std::allocate_shared[abi:ne200100]<quasar::WatermarkDetector2,std::allocator<quasar::WatermarkDetector2>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "lattice-biglm-lme-ftm-faster"))
        {
          std::allocate_shared[abi:ne200100]<quasar::LatticeLmeFtmDecoder,std::allocator<quasar::LatticeLmeFtmDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "AED-rescorer"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineAEDRescoringDecoder,std::allocator<quasar::OnlineAEDRescoringDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "force-aligner"))
        {
          std::allocate_shared[abi:ne200100]<quasar::ForceAlignDecoder,std::allocator<quasar::ForceAlignDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "realign-am-fusion-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::RealignAmFusionDecoder,std::allocator<quasar::RealignAmFusionDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "ctc-prefix-beam-search-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlinePrefixBeamSearchDecoder,std::allocator<quasar::OnlinePrefixBeamSearchDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "AED-beam-search-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::AEDBeamSearchDecoder,std::allocator<quasar::AEDBeamSearchDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "rescoring-deliberation"))
        {
          std::allocate_shared[abi:ne200100]<quasar::RescoringDeliberationDecoder,std::allocator<quasar::RescoringDeliberationDecoder>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "embedding-retranslation-decoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineEmbeddingRetranslationDecoder,std::allocator<quasar::OnlineEmbeddingRetranslationDecoder>,std::string const&,0>();
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        v35 = std::string::append(&v44, " in ");
        v36 = *&v35->__r_.__value_.__l.__data_;
        v45.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v45.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        v37 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
        if (v37 >= 0)
        {
          v38 = this;
        }

        else
        {
          v38 = this->__r_.__value_.__r.__words[0];
        }

        if (v37 >= 0)
        {
          v39 = HIBYTE(this->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v39 = this->__r_.__value_.__l.__size_;
        }

        v40 = std::string::append(&v45, v38, v39);
        v41 = *&v40->__r_.__value_.__l.__data_;
        v46.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
        *&v46.__r_.__value_.__l.__data_ = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        v42 = std::string::append(&v46, "");
        v43 = *&v42->__r_.__value_.__l.__data_;
        v48 = v42->__r_.__value_.__r.__words[2];
        v47 = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        quasar::PTree::Error::Error(exception, &v47);
      }

LABEL_122:
      std::allocate_shared[abi:ne200100]<quasar::OnlineLatticeWordAlignmentDecoder,std::allocator<quasar::OnlineLatticeWordAlignmentDecoder>,std::string const&,0>();
    }

    goto LABEL_101;
  }

LABEL_24:
  if (v11 > 19)
  {
    if (v11 != 20)
    {
      if (v11 != 21)
      {
        goto LABEL_109;
      }

      if (*__p[0] == 0x2D6563697474616CLL && *(__p[0] + 1) == 0x65722D656C616373 && *(__p[0] + 13) == 0x65726F637365722DLL)
      {
        goto LABEL_46;
      }

      if ((HIBYTE(__p[2]) & 0x80) != 0)
      {
        goto LABEL_109;
      }

      goto LABEL_68;
    }

    if (*__p[0] == 0x2D6563697474616CLL && *(__p[0] + 1) == 0x696C612D64726F77 && *(__p[0] + 4) == 1919250023)
    {
      goto LABEL_122;
    }

    if ((HIBYTE(__p[2]) & 0x80) != 0)
    {
      goto LABEL_109;
    }

    if (HIBYTE(__p[2]) != 17)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v11 == 17)
    {
      v8 = __p[0];
      goto LABEL_102;
    }

    if (v11 != 18)
    {
      goto LABEL_109;
    }

    if (*__p[0] == 0x2D6563697474616CLL && *(__p[0] + 1) == 0x6F637365722D6D6CLL && *(__p[0] + 8) == 25970)
    {
      goto LABEL_21;
    }

    if (HIBYTE(__p[2]) != 17)
    {
      goto LABEL_109;
    }
  }

LABEL_101:
  v8 = __p;
LABEL_102:
  v29 = *v8;
  v30 = v8[1];
  v31 = *(v8 + 16);
  if (v29 == 0x2D6563697474616CLL && v30 == 0x656E67696C616572 && v31 == 114)
  {
    std::allocate_shared[abi:ne200100]<quasar::OnlineLatticeRealignmentDecoder,std::allocator<quasar::OnlineLatticeRealignmentDecoder>,std::string const&,0>();
  }

  goto LABEL_109;
}

void sub_1B5274BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v44 & 1) == 0)
    {
LABEL_12:
      v46 = *(v42 + 8);
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      if (a42 < 0)
      {
        operator delete(a37);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v44)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v43);
  goto LABEL_12;
}

void quasar::TokenInfo::~TokenInfo(quasar::TokenInfo *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 34) = v2;
    operator delete(v2);
  }

  v3 = *(this + 30);
  if (v3)
  {
    *(this + 31) = v3;
    operator delete(v3);
  }

  quasar::Token::~Token(this);
}

void std::vector<quasar::TokenInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::TokenInfo>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::TokenInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, quasar::Token *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::TokenInfo>>::destroy[abi:ne200100]<quasar::TokenInfo,0>(a1, i))
  {
    i = (i - 288);
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<quasar::TokenInfo>>::destroy[abi:ne200100]<quasar::TokenInfo,0>(int a1, quasar::Token *this)
{
  v3 = *(this + 33);
  if (v3)
  {
    *(this + 34) = v3;
    operator delete(v3);
  }

  v4 = *(this + 30);
  if (v4)
  {
    *(this + 31) = v4;
    operator delete(v4);
  }

  quasar::Token::~Token(this);
}

uint64_t std::vector<std::weak_ptr<quasar::Decoder>>::__init_with_size[abi:ne200100]<std::weak_ptr<quasar::Decoder>*,std::weak_ptr<quasar::Decoder>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5274EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::weak_ptr<quasar::Decoder>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::weak_ptr<quasar::Decoder>>,std::weak_ptr<quasar::Decoder>*,std::weak_ptr<quasar::Decoder>*,std::weak_ptr<quasar::Decoder>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::weak_ptr<quasar::Decoder>>,std::weak_ptr<quasar::Decoder>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::weak_ptr<quasar::Decoder>>,std::weak_ptr<quasar::Decoder>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::weak_ptr<quasar::Decoder>>,std::weak_ptr<quasar::Decoder>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::weak_ptr<quasar::Decoder>>,std::weak_ptr<quasar::Decoder>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v1 -= 16;
  }
}

uint64_t std::vector<fst::symbol_outT<int>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::symbol_outT<int>>::__emplace_back_slow_path<fst::symbol_outT<int> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::symbol_outT<int>>::__construct_one_at_end[abi:ne200100]<fst::symbol_outT<int> const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

BOOL quasar::arcConsumesAFrame<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(_DWORD *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    return 0;
  }

  if (*a1)
  {
    return 1;
  }

  v3 = a1[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 216);
  if (!v4)
  {
    return 1;
  }

  v7 = *(v4 + 40);
  v5 = v4 + 40;
  v6 = v7;
  if (!v7)
  {
    return 1;
  }

  v8 = v5;
  do
  {
    if (*(v6 + 28) >= v3)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < v3));
  }

  while (v6);
  return v8 == v5 || v3 < *(v8 + 28);
}

uint64_t std::vector<fst::symbol_outT<int>>::__construct_one_at_end[abi:ne200100]<fst::symbol_outT<int> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(v4 + 40) = *(a2 + 40);
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<fst::symbol_outT<int>>::__emplace_back_slow_path<fst::symbol_outT<int> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::symbol_outT<int>>>(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v7 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(v7 + 40) = *(a2 + 40);
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::symbol_outT<int>>,fst::symbol_outT<int>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B5275270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::symbol_outT<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::symbol_outT<int>>,fst::symbol_outT<int>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(a4 + 40) = *(v6 + 40);
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        *(v5 + 24) = v7;
        operator delete(v7);
      }

      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::symbol_outT<int>>,fst::symbol_outT<int>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::symbol_outT<int>>,fst::symbol_outT<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>,fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::vector<fst::symbol_outT<int>>::__assign_with_size[abi:ne200100]<fst::symbol_outT<int>*,fst::symbol_outT<int>*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<fst::symbol_outT<int>>::__vdeallocate(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      std::vector<fst::symbol_outT<int>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<fst::symbol_outT<int> *,fst::symbol_outT<int> *,fst::symbol_outT<int> *>(&v17, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v15 = *(v14 - 32);
        if (v15)
        {
          *(v14 - 24) = v15;
          operator delete(v15);
        }

        v14 -= 48;
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<fst::symbol_outT<int> *,fst::symbol_outT<int> *,fst::symbol_outT<int> *>(&v16, a2, a2 + v11, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<fst::symbol_outT<int>>,fst::symbol_outT<int>*,fst::symbol_outT<int>*,fst::symbol_outT<int>*>(a1, a2 + v11, a3, a1[1]);
  }
}

void std::vector<fst::symbol_outT<int>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}