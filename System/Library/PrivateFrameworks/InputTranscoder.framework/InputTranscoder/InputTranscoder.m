const __CFString *nlp::getUTF8StringFromCFString@<X0>(const __CFString *this@<X0>, uint64_t a2@<X8>)
{
  if (this)
  {
    v4 = this;
    CStringPtr = CFStringGetCStringPtr(this, 0x8000100u);
    if (!CStringPtr)
    {
      Length = CFStringGetLength(v4);
      CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      operator new[]();
    }

    return std::string::basic_string[abi:ne200100]<0>(a2, CStringPtr);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

CFStringRef nlp::createCFStringFromString(UInt8 *bytes, CFIndex numBytes)
{
  if (numBytes)
  {
    return CFStringCreateWithBytes(*MEMORY[0x277CBECE8], bytes, numBytes, 0x8000100u, 0);
  }

  else
  {
    return &stru_286714728;
  }
}

CFPropertyListRef nlp::createDictionaryWithContentsOfURL(CFURLRef fileURL, const __CFURL *a2, CFErrorRef *a3, __CFError **a4)
{
  v5 = a2;
  v7 = CFReadStreamCreateWithFile(*MEMORY[0x277CBECE8], fileURL);
  if (v7)
  {
    v9 = v7;
    if (CFReadStreamOpen(v7) && (!v5 ? (v11 = 0) : (v11 = 2), v12 = CFPropertyListCreateWithStream(0, v9, 0, v11, 0, 0), CFReadStreamClose(v9), v12))
    {
      v13 = CFGetTypeID(v12);
      if (v13 != CFDictionaryGetTypeID())
      {
        if (a3)
        {
          *a3 = nlp::createErrorWithMessageAndURL(@"Property list at URL is not a dictionary", fileURL, v14);
        }

        CFRelease(v12);
        goto LABEL_15;
      }
    }

    else
    {
      if (!a3)
      {
LABEL_15:
        v12 = 0;
        goto LABEL_16;
      }

      v12 = 0;
      *a3 = nlp::createErrorWithMessageAndURL(@"File at URL is not a valid property list", fileURL, v10);
    }

LABEL_16:
    CFRelease(v9);
    return v12;
  }

  v12 = 0;
  if (a3)
  {
    *a3 = nlp::createErrorWithMessageAndURL(@"File at URL is not readable", fileURL, v8);
  }

  return v12;
}

void sub_254C350B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFReadStream *>::reset(va, 0);
  _Unwind_Resume(a1);
}

CFErrorRef nlp::createErrorWithMessageAndURL(nlp *this, CFURLRef anURL, const __CFURL *a3)
{
  v4 = CFURLCopyPath(anURL);
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@: %@", this, v4);
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBEE58], v6);
  v8 = CFErrorCreate(v5, @"com.apple.NLPUtils.ErrorDomain", 0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

void sub_254C351DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(va1, 0);
  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<__CFDictionary *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFReadStream *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2797B1968, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void nlp::CFScopedPtr<__CFString const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void nlp::CFScopedPtr<__CFDictionary const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t InputTranscoder::RNNRecognizer::recognize@<X0>(unsigned int **a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v16 = 0;
  v17 = &unk_286712E88;
  v18 = &v16;
  v19 = a1;
  v20 = &v17;
  v6 = *(a2 + 8);
  v7 = *v6;
  OutputDimension = MRLNeuralNetworkGetOutputDimension();
  v9 = v19;
  *v18 = OutputDimension;
  v10 = InputTranscoder::MontrealModel::recognize(v6, *v9, v9[1] - *v9);
  v12 = v11;
  result = std::__function::__value_func<std::span<float const,18446744073709551615ul> ()(InputTranscoder::MontrealModel &)>::~__value_func[abi:ne200100](&v17);
  *a3 = v10;
  a3[1] = v12;
  v14 = v16;
  a3[2] = v4 - v5;
  a3[3] = v14;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_254C35540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::span<float const,18446744073709551615ul> ()(InputTranscoder::MontrealModel &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<InputTranscoder::RNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0,std::allocator<InputTranscoder::RNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0>,std::span<float const,18446744073709551615ul> ()(InputTranscoder::MontrealModel &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286712E88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<InputTranscoder::RNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0,std::allocator<InputTranscoder::RNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0>,std::span<float const,18446744073709551615ul> ()(InputTranscoder::MontrealModel &)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OutputDimension = MRLNeuralNetworkGetOutputDimension();
  v6 = *(a1 + 16);
  **(a1 + 8) = OutputDimension;
  v7 = *v6;
  v8 = (*(v6 + 8) - *v6) >> 2;

  return InputTranscoder::MontrealModel::recognize(a2, v7, v8);
}

uint64_t std::__function::__func<InputTranscoder::RNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0,std::allocator<InputTranscoder::RNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0>,std::span<float const,18446744073709551615ul> ()(InputTranscoder::MontrealModel &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<std::span<float const,18446744073709551615ul> ()(InputTranscoder::MontrealModel &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *_CFInit_Candidate(void *result)
{
  result[2] = &unk_286712F18;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

uint64_t _CFGetTypeID_Candidate(void)
{
  {
    unk_28143BBC0 = 0u;
    unk_28143BBB0 = 0u;
    _CFGetTypeID_Candidate(void)::typeID = _CFRuntimeRegisterClass();
  }

  return _CFGetTypeID_Candidate(void)::typeID;
}

uint64_t _CFInit_KeyCandidate(uint64_t result)
{
  *(result + 16) = &unk_286712F80;
  *(result + 24) = 0;
  return result;
}

uint64_t _CFGetTypeID_KeyCandidate(void)
{
  {
    unk_281D4DFA0 = 0u;
    unk_281D4DF90 = 0u;
    _CFGetTypeID_KeyCandidate(void)::typeID = _CFRuntimeRegisterClass();
  }

  return _CFGetTypeID_KeyCandidate(void)::typeID;
}

uint64_t _CFInit_TouchTranscoder(uint64_t result)
{
  *(result + 16) = &unk_286712FD8;
  *(result + 24) = 0;
  return result;
}

uint64_t _CFGetTypeID_TouchTranscoder(void)
{
  {
    unk_28143BB60 = 0u;
    unk_28143BB50 = 0u;
    _CFGetTypeID_TouchTranscoder(void)::typeID = _CFRuntimeRegisterClass();
  }

  return _CFGetTypeID_TouchTranscoder(void)::typeID;
}

uint64_t _CFInit_TouchTranscoderSession(uint64_t result)
{
  *(result + 16) = &unk_286713030;
  *(result + 24) = 0;
  return result;
}

uint64_t _CFGetTypeID_TouchTranscoderSession(void)
{
  {
    unk_28143BB00 = 0u;
    unk_28143BAF0 = 0u;
    _CFGetTypeID_TouchTranscoderSession(void)::typeID = _CFRuntimeRegisterClass();
  }

  return _CFGetTypeID_TouchTranscoderSession(void)::typeID;
}

uint64_t _CFInit_Decoder(uint64_t result)
{
  *(result + 16) = &unk_286713088;
  *(result + 24) = 0;
  return result;
}

uint64_t _CFGetTypeID_Decoder(void)
{
  {
    unk_281D4E000 = 0u;
    unk_281D4DFF0 = 0u;
    _CFGetTypeID_Decoder(void)::typeID = _CFRuntimeRegisterClass();
  }

  return _CFGetTypeID_Decoder(void)::typeID;
}

void Candidate::~Candidate(const void **this)
{
  *this = &unk_286712F18;
  nlp::CFScopedPtr<__CFString const*>::reset(this + 3, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 2, 0);
  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    if (*(v2 + 119) < 0)
    {
      operator delete(v2[12]);
    }

    v3 = v2[7];
    if (v3)
    {
      v2[8] = v3;
      operator delete(v3);
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(v2[3]);
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C28FE0](v2, 0x1012C40652C33EFLL);
  }
}

{
  *this = &unk_286712F18;
  nlp::CFScopedPtr<__CFString const*>::reset(this + 3, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(this + 2, 0);
  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    if (*(v2 + 119) < 0)
    {
      operator delete(v2[12]);
    }

    v3 = v2[7];
    if (v3)
    {
      v2[8] = v3;
      operator delete(v3);
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(v2[3]);
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C28FE0](v2, 0x1012C40652C33EFLL);
  }

  JUMPOUT(0x259C28FE0);
}

void KeyCandidate::~KeyCandidate(KeyCandidate *this)
{
  *this = &unk_286712F80;
  v3 = *(this + 1);
  v1 = (this + 8);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<InputTranscoder::KeyCandidateImpl>::operator()[abi:ne200100](v1, v2);
  }
}

{
  *this = &unk_286712F80;
  v3 = *(this + 1);
  v1 = (this + 8);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<InputTranscoder::KeyCandidateImpl>::operator()[abi:ne200100](v1, v2);
  }

  JUMPOUT(0x259C28FE0);
}

void std::default_delete<InputTranscoder::KeyCandidateImpl>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x259C28FE0);
  }
}

void TouchTranscoder::~TouchTranscoder(TouchTranscoder *this)
{
  v1 = *(this + 1);
  *this = &unk_286712FD8;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = *(v1 + 480);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(v1 + 464);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v1 + 448);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    InputTranscoder::TranscoderConfiguration::~TranscoderConfiguration(v1);
    MEMORY[0x259C28FE0]();
  }
}

{
  v1 = *(this + 1);
  *this = &unk_286712FD8;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = *(v1 + 480);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(v1 + 464);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v1 + 448);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    InputTranscoder::TranscoderConfiguration::~TranscoderConfiguration(v1);
    MEMORY[0x259C28FE0]();
  }

  JUMPOUT(0x259C28FE0);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void InputTranscoder::TranscoderConfiguration::~TranscoderConfiguration(void **this)
{
  v2 = this + 52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 49;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 359) < 0)
  {
    operator delete(this[42]);
  }

  if (*(this + 335) < 0)
  {
    operator delete(this[39]);
  }

  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void TouchTranscoderSession::~TouchTranscoderSession(TouchTranscoderSession *this)
{
  v2 = *(this + 1);
  *this = &unk_286713030;
  *(this + 1) = 0;
  if (v2)
  {
    InputTranscoder::TouchTranscoderSessionImpl::~TouchTranscoderSessionImpl(v2);
    MEMORY[0x259C28FE0]();
  }
}

{
  v2 = *(this + 1);
  *this = &unk_286713030;
  *(this + 1) = 0;
  if (v2)
  {
    InputTranscoder::TouchTranscoderSessionImpl::~TouchTranscoderSessionImpl(v2);
    MEMORY[0x259C28FE0]();
  }

  JUMPOUT(0x259C28FE0);
}

void InputTranscoder::TouchTranscoderSessionImpl::~TouchTranscoderSessionImpl(void **this)
{
  if (*(this + 863) < 0)
  {
    operator delete(this[105]);
  }

  if (*(this + 831) < 0)
  {
    operator delete(this[101]);
  }

  if (*(this + 807) < 0)
  {
    operator delete(this[98]);
  }

  if (*(this + 783) < 0)
  {
    operator delete(this[95]);
  }

  if (*(this + 759) < 0)
  {
    operator delete(this[92]);
  }

  if (*(this + 735) < 0)
  {
    operator delete(this[89]);
  }

  if (*(this + 711) < 0)
  {
    operator delete(this[86]);
  }

  v2 = this[85];
  this[85] = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = this[84];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[82];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[80];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  InputTranscoder::PathKeyLayoutProcessor::~PathKeyLayoutProcessor((this + 73));
  v6 = this[68];
  if (v6)
  {
    this[69] = v6;
    operator delete(v6);
  }

  v7 = this[65];
  if (v7)
  {
    this[66] = v7;
    operator delete(v7);
  }

  v8 = this[62];
  if (v8)
  {
    this[63] = v8;
    operator delete(v8);
  }

  v9 = this[59];
  if (v9)
  {
    this[60] = v9;
    operator delete(v9);
  }

  InputTranscoder::TranscoderConfiguration::~TranscoderConfiguration(this);
}

void InputTranscoder::PathKeyLayoutProcessor::~PathKeyLayoutProcessor(InputTranscoder::PathKeyLayoutProcessor *this)
{
  *this = &unk_286714208;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  InputTranscoder::PathKeyLayoutProcessor::~PathKeyLayoutProcessor(this);

  JUMPOUT(0x259C28FE0);
}

void Decoder::~Decoder(Decoder *this)
{
  v1 = *(this + 1);
  *this = &unk_286713088;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = *(v1 + 344);
    if (v2)
    {
      *(v1 + 352) = v2;
      operator delete(v2);
    }

    nlp::CFScopedPtr<MontrealNeuralNetwork *>::reset((v1 + 336), 0);
    v3 = *(v1 + 328);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    InputTranscoder::CTCDecoder::~CTCDecoder(v1);
    MEMORY[0x259C28FE0]();
  }
}

{
  v1 = *(this + 1);
  *this = &unk_286713088;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = *(v1 + 344);
    if (v2)
    {
      *(v1 + 352) = v2;
      operator delete(v2);
    }

    nlp::CFScopedPtr<MontrealNeuralNetwork *>::reset((v1 + 336), 0);
    v3 = *(v1 + 328);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    InputTranscoder::CTCDecoder::~CTCDecoder(v1);
    MEMORY[0x259C28FE0]();
  }

  JUMPOUT(0x259C28FE0);
}

void nlp::CFScopedPtr<MontrealNeuralNetwork *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void InputTranscoder::CTCDecoder::~CTCDecoder(void **this)
{
  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
  }

  v2 = this[29];
  if (v2)
  {
    this[30] = v2;
    operator delete(v2);
  }

  v9 = this + 26;
  std::vector<nlp::CFScopedPtr<_LXLexicon const*>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v3 = this[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[23];
  this[23] = 0;
  if (v4)
  {
    v5 = v4[5];
    if (v5)
    {
      v4[6] = v5;
      operator delete(v5);
    }

    v6 = v4[4];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = v4[2];
    v4[2] = 0;
    if (v7)
    {
      v8 = *v7;
      LMLanguageModelRelease();
      MEMORY[0x259C28FE0](v7, 0x80C40B8603338);
    }

    MEMORY[0x259C28FE0](v4, 0x1070C40A158EC6BLL);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<nlp::CFScopedPtr<_LXLexicon const*>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        nlp::CFScopedPtr<_LXLexicon const*>::reset(--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nlp::CFScopedPtr<_LXLexicon const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void InputTranscoder::appendFeature(int a1, int a2, const void **a3, double a4, double a5)
{
  v7 = a3[1];
  v8 = a3[2];
  if (v7 >= v8)
  {
    v10 = *a3;
    v11 = v7 - *a3;
    v12 = v11 >> 5;
    v13 = (v11 >> 5) + 1;
    if (v13 >> 59)
    {
      std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
    }

    v14 = v8 - v10;
    if (v14 >> 4 > v13)
    {
      v13 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::InputFeature>>(a3, v13);
    }

    v15 = 32 * v12;
    *v15 = a1;
    *(v15 + 8) = a4;
    *(v15 + 16) = a5;
    *(v15 + 24) = a2;
    v9 = 32 * v12 + 32;
    memcpy(0, v10, v11);
    v16 = *a3;
    *a3 = 0;
    a3[1] = v9;
    a3[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = a1;
    v7[1] = a4;
    v7[2] = a5;
    v9 = (v7 + 4);
    *(v7 + 6) = a2;
  }

  a3[1] = v9;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::InputFeature>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

__CFDictionary *InputTranscoder::InputDescriptorCreator::create(unint64_t this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v15 = a4;
  valuePtr = a3;
  v13 = this / a2;
  v14 = a5;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  v8 = CFNumberCreate(v6, kCFNumberSInt64Type, &v17);
  v9 = CFNumberCreate(v6, kCFNumberSInt64Type, &v13);
  v10 = CFNumberCreate(v6, kCFNumberSInt64Type, &v15);
  v11 = CFNumberCreate(v6, kCFNumberSInt64Type, &v14);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D2A2A8], v7);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D2A2A0], v11);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D2A2B0], v8);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D2A290], v9);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D2A288], v10);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return Mutable;
}

void sub_254C369D8(_Unwind_Exception *a1, uint64_t a2, ...)
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
  nlp::CFScopedPtr<__CFNumber const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va1, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va2, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va3, 0);
  _Unwind_Resume(a1);
}

__CFDictionary *InputTranscoder::InputDescriptorCreator::create(InputTranscoder::InputDescriptorCreator *this, uint64_t a2)
{
  valuePtr = a2;
  v8 = this;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  v5 = CFNumberCreate(v3, kCFNumberSInt64Type, &v8);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D2A298], v4);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D2A2A0], v5);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

void sub_254C36B20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<__CFNumber const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void ITDecoderCreate(void *a1)
{
  if (!a1)
  {
    theDict.__r_.__value_.__r.__words[0] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C28DC0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  CFRetain(a1);
  theDict.__r_.__value_.__r.__words[0] = a1;
  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C28DC0](v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (@"bundleURL")
  {
    Value = CFDictionaryGetValue(theDict.__r_.__value_.__l.__data_, @"bundleURL");
    v4 = Value;
    if (Value)
    {
      CFRetain(Value);
      v5 = CFGetTypeID(v4);
      if (v5 == CFURLGetTypeID())
      {
        v17 = v4;
        v6 = 1;
        goto LABEL_9;
      }

      CFRelease(v4);
    }
  }

  v6 = 0;
  LOBYTE(v17) = 0;
LABEL_9:
  v18 = v6;
  CFRelease(theDict.__r_.__value_.__l.__data_);
  v16 = 0;
  if (v6)
  {
    v7 = v17;
    v8 = CFBundleCreate(*MEMORY[0x277CBECE8], v17);
    nlp::CFScopedPtr<__CFBundle *>::acquire(&v16, v8);
    if (!v16)
    {
      __cxa_allocate_exception(0x20uLL);
      nlp::getFileSystemRepresentationFromCFURL(v7, v9);
    }
  }

  else
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.InputTranscoder-framework");
    nlp::CFScopedPtr<__CFBundle *>::acquire(&v16, BundleWithIdentifier);
  }

  Optional = InputTranscoder::getOptionalCFType<__CFString const*>(a1, @"neuralTypeKey", @"Path");
  v12 = CFStringCompare(Optional, @"Tap", 0) == kCFCompareEqualTo;
  InputTranscoder::generateConfiguration<InputTranscoder::DecoderConfiguration>(a1, v16, v12, &theDict);
  std::allocate_shared[abi:ne200100]<InputTranscoder::PlistBiMap<unsigned int,unsigned int> const,std::allocator<InputTranscoder::PlistBiMap<unsigned int,unsigned int>>,std::string const&,0>();
}

void sub_254C36F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 105) < 0)
  {
    operator delete(*(v21 - 128));
    if ((v20 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v20)
  {
LABEL_8:
    nlp::CFScopedPtr<__CFBundle *>::reset((v21 - 104), 0);
    if (a2 == 2)
    {
      v24 = __cxa_begin_catch(a1);
      if (v18)
      {
        v25 = (*(*v24 + 16))(v24);
        std::string::basic_string[abi:ne200100]<0>(&__p, v25);
        *v18 = InputTranscoder::createErrorWithMessage(&__p);
        if (a18 < 0)
        {
          operator delete(__p);
        }
      }

      __cxa_end_catch();
      if ((*(v21 - 88) & 1) == 0)
      {
        JUMPOUT(0x254C36E94);
      }

      JUMPOUT(0x254C36E88);
    }

    std::optional<applesauce::CF::URLRef>::~optional(v21 - 96);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v19);
  goto LABEL_8;
}

void nlp::CFScopedPtr<__CFBundle *>::acquire(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    nlp::CFScopedPtr<__CFBundle *>::reset(a1, cf);
  }
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void nlp::ResourceCreationException::~ResourceCreationException(std::exception *this)
{
  this->__vftable = &unk_286713258;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_286713258;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x259C28FE0);
}

uint64_t ITDecoderClearNeuralNetworkBuffer(uint64_t a1)
{
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v2 = _nlpSignpostLog::log;
  v3 = os_signpost_id_generate(v2);

  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v4 = _nlpSignpostLog::log;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_254C34000, v5, OS_SIGNPOST_EVENT, v3, "ITDecoderClearNeuralNetworkBuffer", &unk_254C6731B, v8, 2u);
  }

  v6 = *(*(a1 + 24) + 336);
  return MRLNeuralNetworkClear();
}

void *ITDecoderSetLinguisticContext(void *result, char *a2, unint64_t a3)
{
  v3 = *(result[3] + 184);
  if (v3)
  {
    return std::vector<unsigned int>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>((v3 + 40), a2, &a2[4 * a3], a3);
  }

  return result;
}

void ITDecoderEnumerateCandidates(uint64_t a1, unsigned int *a2, unint64_t a3, void *a4)
{
  v14[4] = *MEMORY[0x277D85DE8];
  ptr = a3;
  v12 = a4;
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v6 = _nlpSignpostLog::log;
  v7 = os_signpost_id_make_with_pointer(v6, &ptr);

  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v8 = _nlpSignpostLog::log;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_254C34000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ITDecoderEnumerateCandidates", &unk_254C6731B, buf, 2u);
  }

  *buf = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10 = *(a1 + 24);
  v14[0] = &unk_286713130;
  v14[1] = &v12;
  v14[3] = v14;
  InputTranscoder::DecoderImpl::enumerateCandidates(v10, a2, ptr);
}

void sub_254C375E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ITDecoderEnumerateCandidatesWithOptions(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4, void *a5)
{
  v15[4] = *MEMORY[0x277D85DE8];
  ptr = a3;
  v13 = a5;
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v7 = _nlpSignpostLog::log;
  v8 = os_signpost_id_make_with_pointer(v7, &ptr);

  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v9 = _nlpSignpostLog::log;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_254C34000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ITDecoderEnumerateCandidates", &unk_254C6731B, v12, 2u);
  }

  v11 = *(a1 + 24);
  v15[0] = &unk_2867131C0;
  v15[1] = &v13;
  v15[3] = v15;
  InputTranscoder::DecoderImpl::enumerateCandidates(v11, a2, ptr);
}

void sub_254C37840(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(std::unique_ptr<InputTranscoder::CandidateImpl>,BOOL &)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2797B1970, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *nlp::ResourceCreationException::ResourceCreationException(void *a1, __int128 *a2)
{
  *a1 = &unk_286713258;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

uint64_t nlp::ResourceCreationException::what(nlp::ResourceCreationException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

const void *InputTranscoder::getOptionalCFType<__CFString const*>(const __CFDictionary *a1, const __CFString *a2, const void *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    a3 = v6;
    if (v7 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v10, "Malformed dictionary: invalid type for key=");
      InputTranscoder::makeDictionaryErrorMessage(a2, v10, &v11);
      nlp::ResourceCreationException::ResourceCreationException(exception, &v11);
    }
  }

  return a3;
}

void sub_254C37B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void InputTranscoder::makeDictionaryErrorMessage(const __CFString *this@<X1>, uint64_t a2@<X0>, std::string *a3@<X8>)
{
  nlp::getUTF8StringFromCFString(this, &v9);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::string::insert(&v9, 0, v6, v7);
  *a3 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_254C37C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InputTranscoder::DecoderConfiguration::~DecoderConfiguration(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::optional<applesauce::CF::URLRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void nlp::CFScopedPtr<__CFBundle *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void *std::__shared_ptr_emplace<InputTranscoder::PlistBiMap<unsigned int,unsigned int> const,std::allocator<InputTranscoder::PlistBiMap<unsigned int,unsigned int>>>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<InputTranscoder::PlistBiMap<unsigned int,unsigned int>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2867130E0;
  InputTranscoder::PlistBiMap<unsigned int,unsigned int>::PlistBiMap((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<InputTranscoder::PlistBiMap<unsigned int,unsigned int> const,std::allocator<InputTranscoder::PlistBiMap<unsigned int,unsigned int>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867130E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C28FE0);
}

uint64_t *std::unique_ptr<InputTranscoder::DecoderImpl>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 344);
    if (v3)
    {
      *(v2 + 352) = v3;
      operator delete(v3);
    }

    nlp::CFScopedPtr<MontrealNeuralNetwork *>::reset((v2 + 336), 0);
    v4 = *(v2 + 328);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    InputTranscoder::CTCDecoder::~CTCDecoder(v2);

    JUMPOUT(0x259C28FE0);
  }

  return result;
}

uint64_t std::__function::__func<ITDecoderEnumerateCandidates::$_0,std::allocator<ITDecoderEnumerateCandidates::$_0>,void ()(std::unique_ptr<InputTranscoder::CandidateImpl>,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286713130;
  a2[1] = v2;
  return result;
}

uint64_t *std::__function::__func<ITDecoderEnumerateCandidates::$_0,std::allocator<ITDecoderEnumerateCandidates::$_0>,void ()(std::unique_ptr<InputTranscoder::CandidateImpl>,BOOL &)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v7 = 0;
  v8[0] = v3;
  CFAllocatorGetDefault();
  _CFGetTypeID_Candidate();
  Instance = _CFRuntimeCreateInstance();
  v5 = v8[0];
  v8[0] = 0;
  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](Instance + 3, v5);
  v8[1] = Instance;
  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](v8, 0);
  (*(**(a1 + 8) + 16))();
  if (Instance)
  {
    CFRelease(Instance);
  }

  return std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](&v7, 0);
}

void sub_254C3806C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  nlp::CFScopedPtr<__Candidate *>::reset(va1, 0);
  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ITDecoderEnumerateCandidates::$_0,std::allocator<ITDecoderEnumerateCandidates::$_0>,void ()(std::unique_ptr<InputTranscoder::CandidateImpl>,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 119) < 0)
    {
      operator delete(*(v2 + 96));
    }

    v3 = *(v2 + 56);
    if (v3)
    {
      *(v2 + 64) = v3;
      operator delete(v3);
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    JUMPOUT(0x259C28FE0);
  }

  return result;
}

void nlp::CFScopedPtr<__Candidate *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<InputTranscoder::CandidateImpl>,BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<ITDecoderEnumerateCandidatesWithOptions::$_0,std::allocator<ITDecoderEnumerateCandidatesWithOptions::$_0>,void ()(std::unique_ptr<InputTranscoder::CandidateImpl>,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2867131C0;
  a2[1] = v2;
  return result;
}

uint64_t *std::__function::__func<ITDecoderEnumerateCandidatesWithOptions::$_0,std::allocator<ITDecoderEnumerateCandidatesWithOptions::$_0>,void ()(std::unique_ptr<InputTranscoder::CandidateImpl>,BOOL &)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v7 = 0;
  v8[0] = v3;
  CFAllocatorGetDefault();
  _CFGetTypeID_Candidate();
  Instance = _CFRuntimeCreateInstance();
  v5 = v8[0];
  v8[0] = 0;
  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](Instance + 3, v5);
  v8[1] = Instance;
  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](v8, 0);
  (*(**(a1 + 8) + 16))();
  if (Instance)
  {
    CFRelease(Instance);
  }

  return std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](&v7, 0);
}

void sub_254C38398(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  nlp::CFScopedPtr<__Candidate *>::reset(va1, 0);
  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ITDecoderEnumerateCandidatesWithOptions::$_0,std::allocator<ITDecoderEnumerateCandidatesWithOptions::$_0>,void ()(std::unique_ptr<InputTranscoder::CandidateImpl>,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void InputTranscoder::LexiconContainer::addLexicon(void *a1, CFTypeRef cf, int a3)
{
  v6 = CFRetain(cf);
  v8 = a1[3];
  v7 = a1[4];
  if (v8 >= v7)
  {
    v10 = a1[2];
    v11 = v8 - v10;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
    }

    v13 = v7 - v10;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v33[4] = a1 + 2;
    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      goto LABEL_35;
    }

    v15 = (8 * v11);
    v16 = &v15[-(v8 - v10)];
    *v15 = v6;
    v9 = v15 + 1;
    if (v10 != v8)
    {
      v17 = v10;
      v18 = v16;
      do
      {
        v19 = *v17;
        *v17++ = 0;
        *v18++ = v19;
      }

      while (v17 != v8);
      do
      {
        nlp::CFScopedPtr<_LXLexicon const*>::reset(v10++, 0);
      }

      while (v10 != v8);
      v10 = a1[2];
    }

    a1[2] = v16;
    a1[3] = v9;
    v20 = a1[4];
    a1[4] = 0;
    v33[2] = v10;
    v33[3] = v20;
    v33[0] = v10;
    v33[1] = v10;
    std::__split_buffer<nlp::CFScopedPtr<_LXLexicon const*>>::~__split_buffer(v33);
  }

  else
  {
    *v8 = v6;
    v9 = v8 + 1;
  }

  a1[3] = v9;
  if (a3)
  {
    return;
  }

  v22 = a1[6];
  v21 = a1[7];
  if (v22 >= v21)
  {
    v24 = a1[5];
    v25 = v22 - v24;
    v26 = (v22 - v24) >> 3;
    v27 = v26 + 1;
    if ((v26 + 1) >> 61)
    {
      std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
    }

    v28 = v21 - v24;
    if (v28 >> 2 > v27)
    {
      v27 = v28 >> 2;
    }

    if (v28 >= 0x7FFFFFFFFFFFFFF8)
    {
      v29 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v27;
    }

    if (!v29)
    {
      v30 = (v22 - v24) >> 3;
      v31 = (8 * v26);
      v32 = (8 * v26 - 8 * v30);
      *v31 = cf;
      v23 = v31 + 1;
      memcpy(v32, v24, v25);
      a1[5] = v32;
      a1[6] = v23;
      a1[7] = 0;
      if (v24)
      {
        operator delete(v24);
      }

      goto LABEL_32;
    }

    if (!(v29 >> 61))
    {
      operator new();
    }

LABEL_35:
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *v22 = cf;
  v23 = v22 + 8;
LABEL_32:
  a1[6] = v23;
}

const void **InputTranscoder::LexiconContainer::removeLexicon(const void ***a1, const void *a2, int a3)
{
  v11 = a2;
  v5 = (a1 + 2);
  v6 = std::remove[abi:ne200100]<std::__wrap_iter<nlp::CFScopedPtr<_LXLexicon const*> *>,_LXLexicon const*>(a1[2], a1[3], &v11);
  result = std::vector<nlp::CFScopedPtr<_LXLexicon const*>>::erase(v5, v6, *(v5 + 8));
  if (!a3)
  {
    v9 = a1[5];
    v8 = a1[6];
    if (v9 != v8)
    {
      while (*v9 != v11)
      {
        if (++v9 == v8)
        {
          return result;
        }
      }

      if (v9 != v8)
      {
        v10 = v9 + 1;
        if (v9 + 1 != v8)
        {
          do
          {
            if (*v10 != v11)
            {
              *v9++ = *v10;
            }

            ++v10;
          }

          while (v10 != v8);
          v8 = a1[6];
        }
      }

      if (v9 != v8)
      {
        a1[6] = v9;
      }
    }
  }

  return result;
}

void InputTranscoder::LexiconContainer::createRootCursors(InputTranscoder::LexiconContainer *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    v6 = (this + 64);
    do
    {
      v7 = *v2;
      RootCursor = LXLexiconCreateRootCursor();
      v9 = RootCursor;
      v17 = RootCursor;
      v10 = *(this + 5);
      v11 = *(this + 6);
      if (v10 != v11)
      {
        while (*v10 != *v2)
        {
          if (++v10 == v11)
          {
            v10 = *(this + 6);
            break;
          }
        }
      }

      v12 = v10 == v11;
      if ((*(this + 87) & 0x8000000000000000) != 0)
      {
        if (!*(this + 9))
        {
LABEL_17:
          v17 = 0;
          cf = RootCursor;
          v16 = v10 == v11;
          std::vector<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>::push_back[abi:ne200100](a2, &cf);
          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_19;
        }

        v13 = *v6;
      }

      else if (!*(this + 87))
      {
        goto LABEL_17;
      }

      v14 = LXCursorCreateByAdvancingWithUTF8();
      if (v14)
      {
        cf = v14;
        v16 = v12;
        std::vector<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>::push_back[abi:ne200100](a2, &cf);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (v9)
      {
        CFRelease(v9);
      }

LABEL_19:
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_254C3886C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  v5 = va_arg(va1, void);
  nlp::CFScopedPtr<_LXCursor const*>::reset(va, 0);
  nlp::CFScopedPtr<_LXCursor const*>::reset(va1, 0);
  std::vector<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void ***std::vector<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>::push_back[abi:ne200100](const void ***result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = (v5 - *result) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v21[4] = result;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>>(result, v12);
    }

    v13 = v9;
    v14 = 16 * v9;
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    *(v14 + 8) = *(a2 + 8);
    v16 = v14 - 16 * v13;
    if (v8 != v5)
    {
      v17 = v8;
      v18 = v16;
      do
      {
        v19 = *v17;
        *v17 = 0;
        *v18 = v19;
        *(v18 + 8) = *(v17 + 8);
        v17 += 2;
        v18 += 16;
      }

      while (v17 != v5);
      do
      {
        nlp::CFScopedPtr<_LXCursor const*>::reset(v8, 0);
        v8 += 2;
      }

      while (v8 != v5);
      v8 = *v3;
    }

    v7 = v14 + 16;
    *v3 = v16;
    v3[1] = (v14 + 16);
    v20 = v3[2];
    v3[2] = 0;
    v21[2] = v8;
    v21[3] = v20;
    v21[0] = v8;
    v21[1] = v8;
    result = std::__split_buffer<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>::~__split_buffer(v21);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    *(v5 + 8) = *(a2 + 8);
    v7 = (v5 + 2);
  }

  v3[1] = v7;
  return result;
}

uint64_t InputTranscoder::LexiconContainer::createAdvancedCursor(void *a1, uint64_t a2, int a3)
{
  v7 = a3;
  v3 = (*(**a1 + 32))(*a1, &v7);
  if (*(v3 + 23) >= 0)
  {
    v5 = *(v3 + 23);
  }

  else
  {
    v4 = *v3;
    v5 = *(v3 + 8);
  }

  return LXCursorCreateByAdvancingWithUTF8();
}

uint64_t InputTranscoder::LexiconContainer::isPresentInLexicon(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  CFStringFromString = nlp::createCFStringFromString(v4, v5);
  v7 = CFStringFromString;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v8 == v9)
  {
    v12 = 0;
    if (!CFStringFromString)
    {
      goto LABEL_16;
    }

LABEL_15:
    CFRelease(v7);
    goto LABEL_16;
  }

  v10 = v8 + 8;
  do
  {
    v11 = *(v10 - 8);
    LXLexiconEnumerateEntriesForString();
    v12 = *(v16 + 24);
    if (v12)
    {
      break;
    }

    v13 = v10 == v9;
    v10 += 8;
  }

  while (!v13);
  if (v7)
  {
    goto LABEL_15;
  }

LABEL_16:
  _Block_object_dispose(&v15, 8);
  return v12;
}

void sub_254C38BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN15InputTranscoder16LexiconContainer18isPresentInLexiconERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  v8 = v5;
  nlp::getUTF8StringFromCFString(v5, &__p);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  *a3 = 1;
  if (v7 < 0)
  {
    operator delete(__p);
    if (!v5)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    CFRelease(v5);
  }
}

void sub_254C38CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<nlp::CFScopedPtr<_LXLexicon const*>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    nlp::CFScopedPtr<_LXLexicon const*>::reset((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::vector<nlp::CFScopedPtr<_LXLexicon const*>>::erase(uint64_t a1, const void **a2, const void **a3)
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
        v8 = *v4;
        *v4++ = 0;
        nlp::CFScopedPtr<_LXLexicon const*>::reset(v7++, v8);
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      nlp::CFScopedPtr<_LXLexicon const*>::reset(--v6, 0);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

const void **std::remove[abi:ne200100]<std::__wrap_iter<nlp::CFScopedPtr<_LXLexicon const*> *>,_LXLexicon const*>(const void **a1, const void **a2, const void **a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (*v3 != *a3)
    {
      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 1; i != a2; ++i)
      {
        v8 = *i;
        if (*i != *a3)
        {
          *i = 0;
          nlp::CFScopedPtr<_LXLexicon const*>::reset(v3++, v8);
        }
      }
    }
  }

  return v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    nlp::CFScopedPtr<_LXCursor const*>::reset((i - 16), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 2;
        nlp::CFScopedPtr<_LXCursor const*>::reset(v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nlp::CFScopedPtr<_LXCursor const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void InputTranscoder::RecognizerFactory::makeRecognizer(int *a1)
{
  v1 = *a1;
  if (*a1 <= 1)
  {
    if (!v1)
    {
      operator new();
    }

    if (v1 == 1)
    {
      operator new();
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
    operator new();
  }

  __cxa_allocate_exception(0x20uLL);
  operator new();
}

void sub_254C3912C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t InputTranscoder::InputProcessor::InputProcessor(uint64_t a1, InputTranscoder::PathKeyLayoutProcessor *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  InputTranscoder::InputProcessor::processInput(a1, this, a4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_254C39208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a15);
  v17 = *(v15 + 24);
  if (v17)
  {
    *(v15 + 32) = v17;
    operator delete(v17);
  }

  v18 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void InputTranscoder::InputProcessor::processInput(uint64_t a1, InputTranscoder::PathKeyLayoutProcessor *this, uint64_t a3, char *a4)
{
  v8 = *(a3 + 372);
  v9 = *(a3 + 361);
  InputTranscoder::PathKeyLayoutProcessor::input_stream_for_path(this, *(a1 + 48), __src);
  v10 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v10;
    operator delete(v10);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *__src;
  *(a1 + 16) = v47;
  v11 = *(a3 + 80);
  if ((v11 - 3) < 2)
  {
    __src[0] = 0;
    __src[1] = 0;
    v47 = 0;
    v18 = a4[23];
    if (v18 < 0)
    {
      v25 = a4;
      a4 = *a4;
      v18 = *(v25 + 1);
      if (v18)
      {
        goto LABEL_13;
      }
    }

    else if (a4[23])
    {
LABEL_13:
      v19 = *(a3 + 372);
      while (1)
      {
        v20 = __tolower(*a4);
        v21 = v20;
        if (v20 <= 0x7F)
        {
          if ((*(MEMORY[0x277D85DE0] + 4 * v20 + 60) & 0x4000) != 0)
          {
LABEL_16:
            v42 = 5;
            strcpy(v41, "space");
            v22 = *(*(**(this + 1) + 32))(*(this + 1), v41);
            if (v42 < 0)
            {
              v23 = v41;
LABEL_21:
              operator delete(*v23);
              goto LABEL_22;
            }

            goto LABEL_22;
          }
        }

        else if (__maskrune(v20, 0x4000uLL))
        {
          goto LABEL_16;
        }

        v40 = 1;
        v39[0] = v21;
        v39[1] = 0;
        v22 = *(*(**(this + 1) + 32))(*(this + 1), v39);
        if (v40 < 0)
        {
          v23 = v39;
          goto LABEL_21;
        }

LABEL_22:
        v43 = v22;
        std::vector<unsigned int>::push_back[abi:ne200100](__src, &v43);
        std::vector<unsigned int>::push_back[abi:ne200100](__src, &v43);
        LODWORD(v38[0]) = 0;
        std::vector<float>::vector[abi:ne200100](&__p, v19);
        *(__p + v22) = 1065353216;
        std::vector<std::vector<float>>::push_back[abi:ne200100](a1 + 56, &__p);
        v48 = 0;
        std::vector<float>::vector[abi:ne200100](v38, v19);
        *(v38[0] + v22) = 1065353216;
        std::vector<std::vector<float>>::push_back[abi:ne200100](a1 + 56, v38);
        if (v38[0])
        {
          v38[1] = v38[0];
          operator delete(v38[0]);
        }

        if (__p)
        {
          v45 = __p;
          operator delete(__p);
        }

        ++a4;
        if (!--v18)
        {
          v13 = __src[0];
          goto LABEL_33;
        }
      }
    }

    v13 = 0;
LABEL_33:
    if (__src == a1)
    {
      goto LABEL_55;
    }

    v26 = __src[1];
    v27 = __src[1] - v13;
    v28 = *(a1 + 16);
    v29 = *a1;
    if ((v28 - *a1) < (__src[1] - v13))
    {
      v30 = v27 >> 2;
      if (v29)
      {
        *(a1 + 8) = v29;
        operator delete(v29);
        v28 = 0;
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      if (!(v30 >> 62))
      {
        v31 = v28 >> 1;
        if (v28 >> 1 <= v30)
        {
          v31 = v27 >> 2;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v32 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        std::vector<float>::__vallocate[abi:ne200100](a1, v32);
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v33 = *(a1 + 8);
    v34 = v33 - v29;
    if (v33 - v29 >= v27)
    {
      if (__src[1] != v13)
      {
        memmove(v29, v13, v27);
      }

      v36 = &v29[v27];
    }

    else
    {
      v35 = v13 + v34;
      if (v33 != v29)
      {
        memmove(*a1, v13, v34);
        v33 = *(a1 + 8);
      }

      if (v26 != v35)
      {
        memmove(v33, v35, v26 - v35);
      }

      v36 = &v33[v26 - v35];
    }

    *(a1 + 8) = v36;
LABEL_54:
    v13 = __src[0];
LABEL_55:
    if (v13)
    {
      __src[1] = v13;
      operator delete(v13);
    }

    return;
  }

  if (v11 != 1)
  {
    if (v11 != 2)
    {
      return;
    }

    v12 = *(a3 + 372);
    (**this)(__src, this, *(a1 + 48), 0, v12, *(a3 + 361), v12);
    v13 = __src[0];
    v14 = __src[1];
    if (__src[0] == __src[1])
    {
      goto LABEL_55;
    }

    do
    {
      v15 = *v13;
      v16 = v13[6];
      v37 = *(v13 + 2);
      LODWORD(v38[0]) = 0;
      std::vector<float>::vector[abi:ne200100](&__p, v12 + 5);
      v17 = __p;
      *(__p + v15) = 1065353216;
      v17[v16] = 1065353216;
      v45[-1] = vcvt_f32_f64(v37);
      std::vector<std::vector<float>>::push_back[abi:ne200100](a1 + 56, &__p);
      if (__p)
      {
        v45 = __p;
        operator delete(__p);
      }

      v13 += 8;
    }

    while (v13 != v14);
    goto LABEL_54;
  }

  InputTranscoder::PathKeyLayoutProcessor::input_stream_for_path(this, *(a1 + 48), __src);
  v24 = *(a1 + 24);
  if (v24)
  {
    *(a1 + 32) = v24;
    operator delete(v24);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *__src;
  *(a1 + 40) = v47;
}

void sub_254C396C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = 24 * v6;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = 24 * v6 + 24;
    v11 = *a1;
    v12 = *(a1 + 8) - *a1;
    v13 = 24 * v6 - v12;
    memcpy((v10 - v12), *a1, v12);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  *(a1 + 8) = v5;
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void *InputTranscoder::InputProcessor::flattenedFeatures@<X0>(InputTranscoder::InputProcessor *this@<X0>, uint64_t a2@<X8>)
{
  v4 = ((*(this + 8) - *(this + 7)) >> 3) * ((*(*(this + 7) + 8) - **(this + 7)) >> 2);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  result = std::vector<float>::reserve(a2, 0xAAAAAAAAAAAAAAABLL * v4);
  v7 = *(this + 7);
  v6 = *(this + 8);
  while (v7 != v6)
  {
    result = std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(a2, *(a2 + 8), *v7, v7[1], (v7[1] - *v7) >> 2);
    v7 += 3;
  }

  return result;
}

void sub_254C39A10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<float>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_254C39BC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void ITTouchTranscoderSessionEnumerateCandidates(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v3 = os_signpost_id_generate(_nlpSignpostLog::log);
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = _nlpSignpostLog::log;
    if (os_signpost_enabled(_nlpSignpostLog::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254C34000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "ITTouchTranscoderSessionEnumerateCandidates", &unk_254C6731B, buf, 2u);
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = *(a1 + 24);
  *buf = &unk_286713280;
  v11 = &v9;
  v12 = buf;
  InputTranscoder::TouchTranscoderSessionImpl::enumerateCandidates(v6, Mutable);
  std::__function::__value_func<BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)>::~__value_func[abi:ne200100](buf);
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = _nlpSignpostLog::log;
    if (os_signpost_enabled(_nlpSignpostLog::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254C34000, v7, OS_SIGNPOST_INTERVAL_END, v3, "ITTouchTranscoderSessionEnumerateCandidates", &unk_254C6731B, buf, 2u);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_254C3A150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ITTouchTranscoderSessionEnumerateCandidatesWithOptions(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v5 = os_signpost_id_generate(_nlpSignpostLog::log);
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = _nlpSignpostLog::log;
    if (os_signpost_enabled(_nlpSignpostLog::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254C34000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ITTouchTranscoderSessionEnumerateCandidates", &unk_254C6731B, buf, 2u);
    }
  }

  v7 = *(a1 + 24);
  *buf = &unk_286713310;
  v12 = &v10;
  v13 = buf;
  InputTranscoder::TouchTranscoderSessionImpl::enumerateCandidates(v7, a2);
  std::__function::__value_func<BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)>::~__value_func[abi:ne200100](buf);
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = _nlpSignpostLog::log;
    if (os_signpost_enabled(_nlpSignpostLog::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254C34000, v8, OS_SIGNPOST_INTERVAL_END, v5, "ITTouchTranscoderSessionEnumerateCandidates", &unk_254C6731B, buf, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_254C3A358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ITTouchTranscoderSessionEnumerateKeyCandidatesForLastTouch(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v3 = os_signpost_id_generate(_nlpSignpostLog::log);
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = _nlpSignpostLog::log;
    if (os_signpost_enabled(_nlpSignpostLog::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254C34000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "ITTouchTranscoderSessionEnumerateKeyCandidatesForLastTouch", &unk_254C6731B, buf, 2u);
    }
  }

  v5 = *(a1 + 24);
  *buf = &unk_286713390;
  v8 = &v6;
  v9 = buf;
  InputTranscoder::TouchTranscoderSessionImpl::enumerateKeyCandidatesForLastTouch(v5);
}

void sub_254C3A52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(std::unique_ptr<InputTranscoder::KeyCandidateImpl>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ITTouchTranscoderSessionEnumerateCandidates::$_0,std::allocator<ITTouchTranscoderSessionEnumerateCandidates::$_0>,BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286713280;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ITTouchTranscoderSessionEnumerateCandidates::$_0,std::allocator<ITTouchTranscoderSessionEnumerateCandidates::$_0>,BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v10 = 0;
  v8 = 0;
  v9[0] = v3;
  CFAllocatorGetDefault();
  _CFGetTypeID_Candidate();
  Instance = _CFRuntimeCreateInstance();
  v5 = v9[0];
  v9[0] = 0;
  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](Instance + 3, v5);
  v9[1] = Instance;
  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](v9, 0);
  (*(**(a1 + 8) + 16))(**(a1 + 8), Instance);
  v6 = v10;
  if (Instance)
  {
    CFRelease(Instance);
  }

  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](&v8, 0);
  return v6;
}

void sub_254C3A6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
{
  nlp::CFScopedPtr<__Candidate *>::reset(&a11, 0);
  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](&a9, 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ITTouchTranscoderSessionEnumerateCandidates::$_0,std::allocator<ITTouchTranscoderSessionEnumerateCandidates::$_0>,BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<ITTouchTranscoderSessionEnumerateCandidatesWithOptions::$_0,std::allocator<ITTouchTranscoderSessionEnumerateCandidatesWithOptions::$_0>,BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286713310;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ITTouchTranscoderSessionEnumerateCandidatesWithOptions::$_0,std::allocator<ITTouchTranscoderSessionEnumerateCandidatesWithOptions::$_0>,BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v10 = 0;
  v8 = 0;
  v9[0] = v3;
  CFAllocatorGetDefault();
  _CFGetTypeID_Candidate();
  Instance = _CFRuntimeCreateInstance();
  v5 = v9[0];
  v9[0] = 0;
  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](Instance + 3, v5);
  v9[1] = Instance;
  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](v9, 0);
  (*(**(a1 + 8) + 16))(**(a1 + 8), Instance);
  v6 = v10;
  if (Instance)
  {
    CFRelease(Instance);
  }

  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](&v8, 0);
  return v6;
}

void sub_254C3A8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
{
  nlp::CFScopedPtr<__Candidate *>::reset(&a11, 0);
  std::unique_ptr<InputTranscoder::CandidateImpl>::reset[abi:ne200100](&a9, 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ITTouchTranscoderSessionEnumerateCandidatesWithOptions::$_0,std::allocator<ITTouchTranscoderSessionEnumerateCandidatesWithOptions::$_0>,BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ITTouchTranscoderSessionEnumerateKeyCandidatesForLastTouch::$_0,std::allocator<ITTouchTranscoderSessionEnumerateKeyCandidatesForLastTouch::$_0>,BOOL ()(std::unique_ptr<InputTranscoder::KeyCandidateImpl>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286713390;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ITTouchTranscoderSessionEnumerateKeyCandidatesForLastTouch::$_0,std::allocator<ITTouchTranscoderSessionEnumerateKeyCandidatesForLastTouch::$_0>,BOOL ()(std::unique_ptr<InputTranscoder::KeyCandidateImpl>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v10 = 0;
  v9[0] = 0;
  CFAllocatorGetDefault();
  _CFGetTypeID_KeyCandidate();
  Instance = _CFRuntimeCreateInstance();
  v5 = Instance[3];
  Instance[3] = v3;
  if (v5)
  {
    std::default_delete<InputTranscoder::KeyCandidateImpl>::operator()[abi:ne200100]((Instance + 3), v5);
  }

  v9[1] = 0;
  v9[2] = Instance;
  (*(**(a1 + 8) + 16))();
  v6 = v10;
  CFRelease(Instance);
  v7 = v9[0];
  v9[0] = 0;
  if (v7)
  {
    std::default_delete<InputTranscoder::KeyCandidateImpl>::operator()[abi:ne200100](v9, v7);
  }

  return v6;
}

void sub_254C3AAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
{
  nlp::CFScopedPtr<__KeyCandidate *>::reset(&a11);
  v12 = a9;
  a9 = 0;
  if (v12)
  {
    std::default_delete<InputTranscoder::KeyCandidateImpl>::operator()[abi:ne200100](&a9, v12);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ITTouchTranscoderSessionEnumerateKeyCandidatesForLastTouch::$_0,std::allocator<ITTouchTranscoderSessionEnumerateKeyCandidatesForLastTouch::$_0>,BOOL ()(std::unique_ptr<InputTranscoder::KeyCandidateImpl>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void nlp::CFScopedPtr<__KeyCandidate *>::reset(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

uint64_t std::__function::__value_func<BOOL ()(std::unique_ptr<InputTranscoder::KeyCandidateImpl>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void InputTranscoder::CRNNRecognizer::recognize(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2[6];
  v4 = *v2;
  v3 = v2[1];
  v6 = 0;
  v5 = InputTranscoder::InputDescriptorCreator::create((a2[4] - a2[3]) >> 2, 2uLL, 5, 1, 1);
  operator new();
}

void sub_254C3AD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<InputTranscoder::CRNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0,std::allocator<InputTranscoder::CRNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0>,std::span<float const,18446744073709551615ul> ()(InputTranscoder::MontrealModel &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286713460;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<InputTranscoder::CRNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0,std::allocator<InputTranscoder::CRNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0>,std::span<float const,18446744073709551615ul> ()(InputTranscoder::MontrealModel &)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OutputDimension = MRLNeuralNetworkGetOutputDimension();
  v6 = *(a1 + 16);
  **(a1 + 8) = OutputDimension;
  v7 = *v6;
  v8 = (*(v6 + 8) - *v6) >> 2;
  v9 = **(a1 + 24);

  return InputTranscoder::MontrealModel::recognize(a2, v7, v8);
}

uint64_t std::__function::__func<InputTranscoder::CRNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0,std::allocator<InputTranscoder::CRNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0>,std::span<float const,18446744073709551615ul> ()(InputTranscoder::MontrealModel &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void InputTranscoder::LRNNRecognizer::recognize(int a1, InputTranscoder::InputProcessor *this)
{
  __p[7] = *MEMORY[0x277D85DE8];
  InputTranscoder::InputProcessor::flattenedFeatures(this, __p);
  v3 = *(this + 7);
  v4 = (0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - v3) >> 3));
  v6 = 0;
  cf = InputTranscoder::InputDescriptorCreator::create(v4, (v3[1] - *v3) >> 2);
  operator new();
}

void sub_254C3B01C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<InputTranscoder::LRNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0,std::allocator<InputTranscoder::LRNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0>,std::span<float const,18446744073709551615ul> ()(InputTranscoder::MontrealModel &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286713520;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<InputTranscoder::LRNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0,std::allocator<InputTranscoder::LRNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0>,std::span<float const,18446744073709551615ul> ()(InputTranscoder::MontrealModel &)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OutputDimension = MRLNeuralNetworkGetOutputDimension();
  v6 = *(a1 + 16);
  **(a1 + 8) = OutputDimension;
  v7 = *v6;
  v8 = (*(v6 + 8) - *v6) >> 2;
  v9 = **(a1 + 24);
  v10 = **(a1 + 32);

  return InputTranscoder::MontrealModel::recognize(a2, v7, v8);
}

uint64_t std::__function::__func<InputTranscoder::LRNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0,std::allocator<InputTranscoder::LRNNRecognizer::recognize(InputTranscoder::InputProcessor const&,InputTranscoder::TranscoderMediator &)::$_0>,std::span<float const,18446744073709551615ul> ()(InputTranscoder::MontrealModel &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *ITCandidateGetString(uint64_t a1)
{
  v3 = (a1 + 32);
  result = *(a1 + 32);
  if (!result)
  {
    v4 = *(a1 + 24);
    v5 = v4[23];
    if (v5 < 0)
    {
      v4 = *v4;
      v5 = *(*(a1 + 24) + 8);
    }

    CFStringFromString = nlp::createCFStringFromString(v4, v5);
    nlp::CFScopedPtr<__CFString const*>::reset(v3, CFStringFromString);
    return *v3;
  }

  return result;
}

const void *ITCandidateGetStrokedPath(uint64_t a1)
{
  v3 = (a1 + 40);
  result = *(a1 + 40);
  if (!result)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 47);
    if (v5 < 0)
    {
      v6 = *(v4 + 24);
      v5 = *(v4 + 32);
    }

    else
    {
      v6 = (v4 + 24);
    }

    CFStringFromString = nlp::createCFStringFromString(v6, v5);
    nlp::CFScopedPtr<__CFString const*>::reset(v3, CFStringFromString);
    return *v3;
  }

  return result;
}

uint64_t ITCandidateEnumerateTokenIDs(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  v3 = *(v2 + 56);
  for (i = *(v2 + 64); v3 != i; result = (*(a2 + 16))(a2, v6))
  {
    v6 = *v3++;
  }

  return result;
}

CFStringRef ITKeyCandidateCreateString(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1[23];
  if (v2 < 0)
  {
    v4 = v1;
    v1 = *v1;
    v2 = *(v4 + 1);
  }

  return nlp::createCFStringFromString(v1, v2);
}

CFStringRef ITCandidateCopyPrefix(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 119);
  if (v2 < 0)
  {
    return nlp::createCFStringFromString(*(v1 + 96), *(v1 + 104));
  }

  else
  {
    return nlp::createCFStringFromString((v1 + 96), v2);
  }
}

uint64_t supportsLocaleAndLayout(const void *a1, const __CFString *a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"locale", a1);
  v7 = isTranscoderConfigurationSupported(a2, a3, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

void sub_254C3B434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFDictionary *>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t ITTouchTranscoderSupportsConfiguration(const __CFDictionary *a1)
{
  Optional = InputTranscoder::getOptionalCFType<__CFString const*>(a1, @"keyboardLayoutName", &stru_286714728);
  TypingModeForTranscoder = extractTypingModeForTranscoder(a1);

  return isTranscoderConfigurationSupported(Optional, TypingModeForTranscoder, a1);
}

uint64_t isTranscoderConfigurationSupported(const __CFString *a1, uint64_t a2, __CFDictionary *a3)
{
  ResourceBundle = createResourceBundle(a3);
  v31 = ResourceBundle;
  InputTranscoder::generateConfiguration<InputTranscoder::TranscoderConfiguration>(a3, ResourceBundle, a2, v24);
  if (v26)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v21, v29, v30, 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 3));
    if (a1)
    {
      nlp::getUTF8StringFromCFString(a1, __p);
      v7 = v21;
      v8 = v22;
      v9 = v20;
      if (v21 != v22)
      {
        if ((v20 & 0x80u) == 0)
        {
          v10 = v20;
        }

        else
        {
          v10 = __p[1];
        }

        if ((v20 & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        while (1)
        {
          v12 = *(v7 + 23);
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(v7 + 8);
          }

          if (v12 == v10)
          {
            v14 = v13 >= 0 ? v7 : *v7;
            if (!memcmp(v14, v11, v10))
            {
              break;
            }
          }

          v7 += 24;
          if (v7 == v8)
          {
            v7 = v8;
            break;
          }
        }
      }

      LODWORD(v15) = v7 != v8;
      if ((v9 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      LODWORD(v15) = 1;
    }

    v16 = v28;
    if ((v28 & 0x80u) != 0)
    {
      v16 = v27;
    }

    if (v16)
    {
      v17 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v17 = v24[1];
      }

      if (v17)
      {
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    __p[0] = &v21;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  else
  {
    v15 = 0;
  }

  InputTranscoder::TranscoderConfiguration::~TranscoderConfiguration(v24);
  CFRelease(ResourceBundle);
  return v15;
}

void sub_254C3B6A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  *(v6 - 72) = va;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v6 - 72));
  InputTranscoder::TranscoderConfiguration::~TranscoderConfiguration(va1);
  nlp::CFScopedPtr<__CFBundle *>::reset((v6 - 80), 0);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x254C3B680);
  }

  _Unwind_Resume(a1);
}

void ITTouchTranscoderCreateWithKeyboardLayout(const __CFDictionary *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  mach_continuous_time();
  ResourceBundle = createResourceBundle(a1);
  TypingModeForTranscoder = extractTypingModeForTranscoder(a1);
  InputTranscoder::generateConfiguration<InputTranscoder::TranscoderConfiguration>(a1, ResourceBundle, TypingModeForTranscoder, v4);
  if (v4[96])
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  std::string::basic_string[abi:ne200100]<0>(buf, "Transcoder's configuration [common.useNeuralEngineKey] disallows creation of transcoder object");
  nlp::ResourceCreationException::ResourceCreationException(exception, buf);
}

void sub_254C3BC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFErrorRef *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
    if ((v22 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v22)
  {
LABEL_7:
    InputTranscoder::TranscoderConfiguration::~TranscoderConfiguration(&__p);
    nlp::CFScopedPtr<__CFBundle *>::reset((v23 - 176), 0);
    if (a2 == 1)
    {
      v26 = __cxa_begin_catch(a1);
      if (a10)
      {
        v27 = (*(*v26 + 16))(v26);
        std::string::basic_string[abi:ne200100]<0>(&__p, v27);
        *a10 = InputTranscoder::createErrorWithMessage(&__p);
        if (a21 < 0)
        {
          operator delete(__p);
        }
      }

      __cxa_end_catch();
      JUMPOUT(0x254C3BBB4);
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v21);
  goto LABEL_7;
}

void sub_254C3BF3C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x254C3BCE4);
}

CFBundleRef createResourceBundle(const __CFDictionary *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3002000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  if (CFDictionaryContainsKey(a1, @"bundleURL"))
  {
    Value = CFDictionaryGetValue(a1, @"bundleURL");
    v4 = CFGetTypeID(Value);
    if (v4 != CFURLGetTypeID())
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v21, "Malformed options dictionary: bundle URL must be a CFURLRef");
      nlp::ResourceCreationException::ResourceCreationException(exception, &v21);
    }

    cf = 0;
    nlp::CFScopedPtr<__CFURL const*>::acquire(&cf, Value);
  }

  else
  {
    cf = 0;
  }

  if (v16[5])
  {
    if (_nlpDefaultLog::token != -1)
    {
      dispatch_once(&_nlpDefaultLog::token, &__block_literal_global_2);
    }

    if (os_log_type_enabled(_nlpDefaultLog::log, OS_LOG_TYPE_DEBUG))
    {
      nlp::getFileSystemRepresentationFromCFURL(v16[5], v5);
    }
  }

  else
  {
    v6 = InputTranscoder::copyLocale(a1, v2);
    if (!v6)
    {
      v12 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v21, "Malformed options dictionary - missing or invalid locale");
      nlp::ResourceCreationException::ResourceCreationException(v12, &v21);
    }

    InputTranscoder::enumerateLDAssets();
    if (!v16[5])
    {
      v13 = __cxa_allocate_exception(0x20uLL);
      v14 = MEMORY[0x259C28970](v6);
      nlp::getUTF8StringFromCFString(v14, &buf);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Unable to locate bundle for locale=", &buf, &v21);
      nlp::ResourceCreationException::ResourceCreationException(v13, &v21);
    }

    CFRelease(v6);
  }

  v7 = CFBundleCreate(*MEMORY[0x277CBECE8], v16[5]);
  if (!v7)
  {
    __cxa_allocate_exception(0x20uLL);
    nlp::getFileSystemRepresentationFromCFURL(v16[5], v10);
  }

  _Block_object_dispose(&v15, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_254C3C344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v12 = va_arg(va1, const void *);
  if (*(v10 - 65) < 0)
  {
    operator delete(*(v10 - 88));
  }

  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
    if ((v8 & 1) == 0)
    {
LABEL_8:
      nlp::CFScopedPtr<__CFLocale const*>::reset(va, 0);
      _Block_object_dispose(va1, 8);
      nlp::CFScopedPtr<__CFURL const*>::reset((v9 + 40), 0);
      _Unwind_Resume(a1);
    }
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v7);
  goto LABEL_8;
}

void sub_254C3C51C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<InputTranscoder::TouchTranscoderSessionImpl>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t ITTouchTranscoderClearNeuralNetworkBuffer(uint64_t a1)
{
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v2 = os_signpost_id_generate(_nlpSignpostLog::log);
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = _nlpSignpostLog::log;
    if (os_signpost_enabled(_nlpSignpostLog::log))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_254C34000, v3, OS_SIGNPOST_EVENT, v2, "ITTouchTranscoderClearNeuralNetworkBuffer", &unk_254C6731B, v5, 2u);
    }
  }

  return InputTranscoder::TouchTranscoderImpl::clearNeuralNetworkBuffer(*(a1 + 24));
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254C3C848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void ___ZL20createResourceBundlePK14__CFDictionary_block_invoke(uint64_t a1, const void *a2, int a3, int a4, CFStringRef theString1, _BYTE *a6)
{
  if (CFStringCompare(theString1, *MEMORY[0x277D23668], 0) == kCFCompareEqualTo)
  {
    nlp::CFScopedPtr<__CFURL const*>::acquire((*(*(a1 + 32) + 8) + 40), a2);
    *a6 = 1;
  }
}

void nlp::CFScopedPtr<__CFURL const*>::acquire(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    nlp::CFScopedPtr<__CFURL const*>::reset(a1, cf);
  }
}

void nlp::CFScopedPtr<__CFURL const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFLocale const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void ***std::unique_ptr<InputTranscoder::CTCDecoder>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    InputTranscoder::CTCDecoder::~CTCDecoder(v2);
    MEMORY[0x259C28FE0]();
  }

  return a1;
}

uint64_t *std::unique_ptr<InputTranscoder::MontrealModel>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      *(v2 + 16) = v3;
      operator delete(v3);
    }

    nlp::CFScopedPtr<MontrealNeuralNetwork *>::reset(v2, 0);
    MEMORY[0x259C28FE0](v2, 0xA0C403705585FLL);
  }

  return a1;
}

void **std::unique_ptr<InputTranscoder::TouchTranscoderSessionImpl>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    InputTranscoder::TouchTranscoderSessionImpl::~TouchTranscoderSessionImpl(result);

    JUMPOUT(0x259C28FE0);
  }

  return result;
}

uint64_t std::default_delete<InputTranscoder::TranscoderMediator>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::unique_ptr<InputTranscoder::CTCDecoder>::~unique_ptr[abi:ne200100]((result + 16));
    std::unique_ptr<InputTranscoder::MontrealModel>::~unique_ptr[abi:ne200100](v1 + 1);
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x259C28FE0);
  }

  return result;
}

void std::__shared_ptr_emplace<InputTranscoder::PlistBiMap<std::string,unsigned int> const,std::allocator<InputTranscoder::PlistBiMap<std::string,unsigned int>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867135A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C28FE0);
}

void std::__shared_ptr_emplace<InputTranscoder::PlistBiMap<unsigned int,std::string> const,std::allocator<InputTranscoder::PlistBiMap<unsigned int,std::string>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867135F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C28FE0);
}

void std::__shared_ptr_pointer<InputTranscoder::TranscoderMediator  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C28FE0);
}

uint64_t std::__shared_ptr_pointer<InputTranscoder::TranscoderMediator  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::unique_ptr<InputTranscoder::TouchTranscoderImpl>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 480);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 464);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v2 + 448);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    InputTranscoder::TranscoderConfiguration::~TranscoderConfiguration(v2);

    JUMPOUT(0x259C28FE0);
  }

  return result;
}

std::string *InputTranscoder::CTCDecoder::CTCDecoder(std::string *this, uint64_t a2, std::string::size_type *a3, uint64_t **a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    v8 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 16);
    *&this->__r_.__value_.__l.__data_ = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v9 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    *&this[1].__r_.__value_.__l.__data_ = v9;
  }

  *&this[2].__r_.__value_.__l.__data_ = *(a2 + 48);
  v10 = *(a2 + 64);
  v11 = *(a2 + 80);
  v12 = *(a2 + 112);
  *&this[4].__r_.__value_.__l.__data_ = *(a2 + 96);
  *&this[4].__r_.__value_.__r.__words[2] = v12;
  *&this[2].__r_.__value_.__r.__words[2] = v10;
  *&this[3].__r_.__value_.__r.__words[1] = v11;
  v13 = *(a2 + 128);
  v14 = *(a2 + 144);
  v15 = *(a2 + 160);
  LODWORD(this[7].__r_.__value_.__r.__words[1]) = *(a2 + 176);
  *&this[6].__r_.__value_.__l.__data_ = v14;
  *&this[6].__r_.__value_.__r.__words[2] = v15;
  *&this[5].__r_.__value_.__r.__words[1] = v13;
  InputTranscoder::LMScorer::makeLMScorer(a4, a2, &this[7].__r_.__value_.__r.__words[2]);
  v16 = a3[1];
  this[8].__r_.__value_.__r.__words[0] = *a3;
  this[8].__r_.__value_.__l.__size_ = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  this[11].__r_.__value_.__l.__size_ = 0;
  *&this[10].__r_.__value_.__l.__data_ = 0u;
  *&this[10].__r_.__value_.__r.__words[2] = 0u;
  *&this[8].__r_.__value_.__r.__words[2] = 0u;
  *&this[9].__r_.__value_.__r.__words[1] = 0u;
  if (*(a2 + 48) == 1)
  {
    InputTranscoder::makeStaticLexicon(a2, &cf);
    InputTranscoder::LexiconContainer::addLexicon(this[8].__r_.__value_.__r.__words, cf, 0);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return this;
}

void sub_254C3D094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

std::string *InputTranscoder::CTCDecoder::CTCDecoder(std::string *a1, uint64_t a2, uint64_t **a3)
{
  v4[0] = 0;
  v4[1] = 0;
  return InputTranscoder::CTCDecoder::CTCDecoder(a1, a2, v4, a3);
}

void InputTranscoder::CTCDecoder::makeTrieRoot(InputTranscoder::CTCDecoder *this)
{
  if (*(this + 26) != *(this + 27))
  {
    operator new();
  }

  operator new();
}

void InputTranscoder::CTCDecoder::setLexiconPrefix(uint64_t a1, std::string *__str)
{
  if (*(a1 + 208) != *(a1 + 216))
  {
    std::string::operator=((a1 + 256), __str);
  }

  v4 = *(a1 + 184);
  if (v4)
  {

    InputTranscoder::LMScorer::setContext(v4, __str);
  }
}

void InputTranscoder::CTCDecoder::forwardOneTimeStep(uint64_t a1, InputTranscoder *this, const float *a3, uint64_t a4, uint64_t *a5)
{
  InputTranscoder::getPrunedLogProbs(this, a3, *(a1 + 72), *(a1 + 80), *(a1 + 104), *(a1 + 108), &v57);
  v7 = v57;
  if (v58 != v57)
  {
    v8 = 0;
    v10 = *a5;
    v9 = a5[1];
    do
    {
      v11 = &v7[8 * v8];
      v12 = *v11;
      if (v12 >= *(a1 + 124) && v12 <= *(a1 + 128))
      {
        v13 = v11[1];
        v14 = (v9 - v10) >> 3;
        v15 = *(a1 + 88);
        if (v14 <= v15)
        {
          v19 = -1.79769313e308;
        }

        else
        {
          v59 = InputTranscoder::PathTrie::prefixCompare;
          v16 = 126 - 2 * __clz(v15);
          if (v15)
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::PathTrie const*,InputTranscoder::PathTrie const*),InputTranscoder::PathTrie**,false>(v10, (v10 + 8 * v15), &v59, v17, 1);
          v10 = *a5;
          v18 = *(*(*a5 + 8 * v15 - 8) + 64);
          v19 = v18 + logf(*(this + *(a1 + 100))) - fmax(*(a1 + 56), 0.0);
          v9 = a5[1];
        }

        if (v9 == v10)
        {
          v9 = v10;
        }

        else if (*(a1 + 88))
        {
          v20 = 0;
          v21 = v13;
          while (1)
          {
            if (v14 > v15 && *(*(v10 + 8 * v20) + 64) + v21 < v19)
            {
              goto LABEL_69;
            }

            v22 = *(a1 + 108);
            if (v12 != v22 || v20 < *(a1 + 112))
            {
              break;
            }

LABEL_65:
            ++v20;
            v10 = *a5;
            v9 = a5[1];
            if (v20 >= (v9 - *a5) >> 3 || v20 >= *(a1 + 88))
            {
              goto LABEL_69;
            }
          }

          v23 = *(v10 + 8 * v20);
          if (v12 == *(a1 + 100))
          {
            v24 = *(v23 + 48);
            v25 = *(v23 + 64) + v21;
            if (v24 > -1.79769313e308)
            {
              if (v25 <= -1.79769313e308)
              {
                v25 = *(v23 + 48);
              }

              else
              {
                if (v24 >= v25)
                {
                  v26 = *(v23 + 48);
                }

                else
                {
                  v26 = *(v23 + 64) + v21;
                }

                v27 = exp(v24 - v26);
                v28 = exp(v25 - v26);
                v25 = v26 + log(v27 + v28);
              }
            }

            *(v23 + 48) = v25;
            goto LABEL_65;
          }

          if (v12 == *(v23 + 72))
          {
            v29 = *(v23 + 56);
            v30 = *(v23 + 40) + v21;
            if (v29 > -1.79769313e308)
            {
              if (v30 <= -1.79769313e308)
              {
                v30 = *(v23 + 56);
              }

              else
              {
                if (v29 >= v30)
                {
                  v31 = *(v23 + 56);
                }

                else
                {
                  v31 = *(v23 + 40) + v21;
                }

                v32 = exp(v29 - v31);
                v33 = exp(v30 - v31);
                v30 = v31 + log(v32 + v33);
              }
            }

            *(v23 + 56) = v30;
          }

          v34 = (*(*v23 + 24))(v23, v12, a4, v12 == v22, a1 + 192, *(a1 + 120));
          if (!v34)
          {
            goto LABEL_65;
          }

          v35 = *(v10 + 8 * v20);
          if (v12 == *(v35 + 72))
          {
            v36 = *(v35 + 32);
            v37 = v36 <= -1.79769313e308;
            v38 = v36 + v21;
            if (v37)
            {
              v39 = -1.79769313e308;
            }

            else
            {
              v39 = v38;
            }
          }

          else
          {
            v39 = *(v35 + 64) + v21;
          }

          if (*(a1 + 208) == *(a1 + 216))
          {
            v42 = *(a1 + 184);
            if (v42)
            {
              InputTranscoder::LMScorer::fillNgram(v42, v34, a1 + 280, 10);
              v43 = *(a1 + 316);
              v44 = **(*(a1 + 184) + 16);
              LMLanguageModelConditionalProbability();
              v46 = v45 * 2.30258512;
              v47 = v34[7];
              v48 = *(*(a1 + 184) + 8) + v46 * **(a1 + 184);
            }

            else
            {
              v47 = v34[7];
              v48 = *(a1 + 56);
            }

            v50 = v39 + v48;
            if (v47 > -1.79769313e308)
            {
              if (v50 <= -1.79769313e308)
              {
                v50 = v47;
              }

              else
              {
                if (v47 >= v50)
                {
                  v51 = v47;
                }

                else
                {
                  v51 = v39 + v48;
                }

                v52 = v47 - v51;
LABEL_62:
                v53 = exp(v52);
                v54 = exp(v50 - v51);
                v50 = v51 + log(v53 + v54);
              }
            }
          }

          else
          {
            if (v12 == *(a1 + 108))
            {
              (*(*v35 + 40))(v35);
              v41 = (a1 + 160);
            }

            else
            {
              (*(*v34 + 32))(v34);
              v41 = (a1 + 56);
            }

            v49 = v34[7];
            v50 = v39 + *v41 + v40 * *(a1 + 52);
            if (v49 > -1.79769313e308)
            {
              if (v50 > -1.79769313e308)
              {
                if (v49 >= v50)
                {
                  v51 = v34[7];
                }

                else
                {
                  v51 = v39 + *v41 + v40 * *(a1 + 52);
                }

                v52 = v49 - v51;
                goto LABEL_62;
              }

              v50 = v34[7];
            }
          }

          v34[7] = v50;
          goto LABEL_65;
        }
      }

LABEL_69:
      ++v8;
      v7 = v57;
    }

    while (v8 < (v58 - v57) >> 3);
  }

  if (v7)
  {
    v58 = v7;
    operator delete(v7);
  }
}

void sub_254C3D7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InputTranscoder::CTCDecoder::decode(InputTranscoder::CTCDecoder *a1, uint64_t a2, uint64_t a3)
{
  ptr = a3;
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v4 = os_signpost_id_make_with_pointer(_nlpSignpostLog::log, &ptr);
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  spid = v4;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = _nlpSignpostLog::log;
    if (os_signpost_enabled(_nlpSignpostLog::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254C34000, v5, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CTCDecode", &unk_254C6731B, buf, 2u);
    }
  }

  InputTranscoder::CTCDecoder::makeTrieRoot(a1);
}

void sub_254C3DC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  *(v23 - 88) = &a14;
  std::vector<InputTranscoder::CTCOutput>::__destroy_vector::operator()[abi:ne200100]((v23 - 88));
  a14 = &a17;
  std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__destroy_vector::operator()[abi:ne200100](&a14);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  (*(*v22 + 8))(v22);
  _Unwind_Resume(a1);
}

void std::vector<InputTranscoder::PathTrie *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::PathTrie *>>(a1, v10);
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

void InputTranscoder::CTCDecoder::decode(InputTranscoder::CTCDecoder *this, const float *a2, uint64_t a3)
{
  ptr = a3;
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  v4 = os_signpost_id_make_with_pointer(_nlpSignpostLog::log, &ptr);
  if (_nlpSignpostLog::token != -1)
  {
    dispatch_once(&_nlpSignpostLog::token, &__block_literal_global_3);
  }

  spid = v4;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = _nlpSignpostLog::log;
    if (os_signpost_enabled(_nlpSignpostLog::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_254C34000, v5, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CTCDecode", &unk_254C6731B, buf, 2u);
    }
  }

  InputTranscoder::CTCDecoder::makeTrieRoot(this);
}

void sub_254C3E2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  std::vector<InputTranscoder::CTCOutput>::__destroy_vector::operator()[abi:ne200100](&a11);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  (*(*v17 + 8))(v17);
  _Unwind_Resume(a1);
}

void InputTranscoder::LexiconContainer::~LexiconContainer(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  v2 = this[5];
  if (v2)
  {
    this[6] = v2;
    operator delete(v2);
  }

  v4 = this + 2;
  std::vector<nlp::CFScopedPtr<_LXLexicon const*>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = this[1];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void InputTranscoder::CTCConfiguration::~CTCConfiguration(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned int const*>,std::__wrap_iter<unsigned int const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::PathTrie const*,InputTranscoder::PathTrie const*),InputTranscoder::PathTrie**,false>(uint64_t result, int8x16_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v124 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = (*a3)(a2[-1].i64[1], v10->i64[0]);
      if (result)
      {
        v78 = v10->i64[0];
        v10->i64[0] = a2[-1].i64[1];
LABEL_105:
        a2[-1].i64[1] = v78;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v81 = &v10->u64[1];
      v83 = v10 == a2 || v81 == a2;
      if (a5)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v10;
          do
          {
            v87 = *v85;
            v86 = v85[1];
            v85 = v81;
            result = (*a3)(v86, v87);
            if (result)
            {
              v88 = *v85;
              v89 = v84;
              while (1)
              {
                *(&v10->i64[1] + v89) = *(v10->i64 + v89);
                if (!v89)
                {
                  break;
                }

                result = (*a3)(v88, *(&v10->i64[-1] + v89));
                v89 -= 8;
                if ((result & 1) == 0)
                {
                  v90 = (&v10->i64[1] + v89);
                  goto LABEL_127;
                }
              }

              v90 = v10;
LABEL_127:
              *v90 = v88;
            }

            v81 = (v85 + 1);
            v84 += 8;
          }

          while (v85 + 1 != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v119 = v9->i64[0];
          v118 = v9->i64[1];
          v9 = v81;
          result = (*a3)(v118, v119);
          if (result)
          {
            v120 = v9->i64[0];
            v121 = v9;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
              result = (*a3)(v120, *(v122 - 2));
            }

            while ((result & 1) != 0);
            *v121 = v120;
          }

          v81 = &v9->u64[1];
        }

        while (&v9->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v91 = (v11 - 2) >> 1;
        v125 = v91;
        do
        {
          v92 = v91;
          if (v125 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = &v9->i64[v93];
            if (2 * v91 + 2 < v11 && (*a3)(*v94, v94[1]))
            {
              ++v94;
              v93 = 2 * v92 + 2;
            }

            v95 = &v9->i64[v92];
            result = (*a3)(*v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v125 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = &v9->i64[v98];
                v99 = 2 * v93 + 2;
                if (v99 < v11 && (*a3)(*v94, v94[1]))
                {
                  ++v94;
                  v98 = v99;
                }

                result = (*a3)(*v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v100 = v124;
        do
        {
          v101 = v100;
          v102 = 0;
          v126 = v9->i64[0];
          v103 = v9;
          do
          {
            v104 = &v103[v102];
            v105 = v104 + 1;
            v106 = (2 * v102) | 1;
            v107 = 2 * v102 + 2;
            if (v107 >= v11)
            {
              v102 = (2 * v102) | 1;
            }

            else
            {
              v109 = v104[2];
              v108 = v104 + 2;
              result = (*a3)(*(v108 - 1), v109);
              if (result)
              {
                v105 = v108;
                v102 = v107;
              }

              else
              {
                v102 = v106;
              }
            }

            *v103 = *v105;
            v103 = v105;
          }

          while (v102 <= ((v11 - 2) >> 1));
          v100 = v101 - 1;
          if (v105 == v101 - 1)
          {
            *v105 = v126;
          }

          else
          {
            *v105 = *v100;
            *v100 = v126;
            v110 = (v105 - v9 + 8) >> 3;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = &v9->i64[v112 >> 1];
              result = (*a3)(*v114, *v105);
              if (result)
              {
                v115 = *v105;
                do
                {
                  v116 = v114;
                  *v105 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = &v9->i64[v113];
                  result = (*a3)(*v114, v115);
                  v105 = v116;
                }

                while ((result & 1) != 0);
                *v116 = v115;
              }
            }
          }

          v111 = v11-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = (v13)(v9->i64[0], v9->i64[v12]);
      v18 = (*a3)(a2[-1].i64[1], v9->i64[0]);
      if (v17)
      {
        v19 = v9->i64[v12];
        if (v18)
        {
          v9->i64[v12] = a2[-1].i64[1];
          a2[-1].i64[1] = v19;
        }

        else
        {
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v19;
          if ((*a3)(a2[-1].i64[1]))
          {
            v31 = v9->i64[0];
            v9->i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v9->i64[0];
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v22;
        if ((*a3)(v9->i64[0], v9->i64[v12]))
        {
          v23 = v9->i64[v12];
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = (v13)(v9->i64[v12], v9->i64[0]);
    v15 = (*a3)(a2[-1].i64[1], v9->i64[v12]);
    if (v14)
    {
      v16 = v9->i64[0];
      if (v15)
      {
        v9->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v16;
      }

      else
      {
        v9->i64[0] = v9->i64[v12];
        v9->i64[v12] = v16;
        if ((*a3)(a2[-1].i64[1]))
        {
          v24 = v9->i64[v12];
          v9->i64[v12] = a2[-1].i64[1];
          a2[-1].i64[1] = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v9->i64[v12];
      v9->i64[v12] = a2[-1].i64[1];
      a2[-1].i64[1] = v20;
      if ((*a3)(v9->i64[v12], v9->i64[0]))
      {
        v21 = v9->i64[0];
        v9->i64[0] = v9->i64[v12];
        v9->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = (*a3)(v9->i64[v12 - 1], v9->i64[1]);
    v27 = (*a3)(a2[-1].i64[0], v9->i64[v12 - 1]);
    if (v26)
    {
      v28 = v9->i64[1];
      if (v27)
      {
        v9->i64[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        v9->i64[1] = v9->i64[v25];
        v9->i64[v25] = v28;
        if ((*a3)(a2[-1].i64[0]))
        {
          v32 = v9->i64[v25];
          v9->i64[v25] = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v9->i64[v25];
      v9->i64[v25] = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if ((*a3)(v9->i64[v25], v9->i64[1]))
      {
        v30 = v9->i64[1];
        v9->i64[1] = v9->i64[v25];
        v9->i64[v25] = v30;
      }
    }

    v33 = v12 + 1;
    v34 = (*a3)(v9->i64[v12 + 1], v9[1].i64[0]);
    v35 = (*a3)(a2[-2].i64[1], v9->i64[v12 + 1]);
    if (v34)
    {
      v36 = v9[1].i64[0];
      if (v35)
      {
        v9[1].i64[0] = a2[-2].i64[1];
        a2[-2].i64[1] = v36;
      }

      else
      {
        v9[1].i64[0] = v9->i64[v33];
        v9->i64[v33] = v36;
        if ((*a3)(a2[-2].i64[1]))
        {
          v39 = v9->i64[v33];
          v9->i64[v33] = a2[-2].i64[1];
          a2[-2].i64[1] = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v9->i64[v33];
      v9->i64[v33] = a2[-2].i64[1];
      a2[-2].i64[1] = v37;
      if ((*a3)(v9->i64[v33], v9[1].i64[0]))
      {
        v38 = v9[1].i64[0];
        v9[1].i64[0] = v9->i64[v33];
        v9->i64[v33] = v38;
      }
    }

    v40 = (*a3)(v9->i64[v12], v9->i64[v25]);
    v41 = (*a3)(v9->i64[v33], v9->i64[v12]);
    if ((v40 & 1) == 0)
    {
      v43 = v9->i64[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v9->i64[v12] = v9->i64[v33];
      v9->i64[v33] = v43;
      v44 = v9->i64[v25];
      v45 = (*a3)();
      v43 = v9->i64[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v9->i64[v25];
      v9->i64[v25] = v43;
      v9->i64[v12] = v46;
      goto LABEL_53;
    }

    v42 = v9->i64[v25];
    if (v41)
    {
      v9->i64[v25] = v9->i64[v33];
      v9->i64[v33] = v42;
      v43 = v9->i64[v12];
    }

    else
    {
      v9->i64[v25] = v9->i64[v12];
      v9->i64[v12] = v42;
      v47 = (*a3)(v9->i64[v33]);
      v43 = v9->i64[v12];
      if (v47)
      {
        v46 = v9->i64[v33];
        v9->i64[v12] = v46;
        v9->i64[v33] = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = v9->i64[0];
    v9->i64[0] = v43;
    v9->i64[v12] = v48;
LABEL_55:
    --a4;
    v49 = v9->i64[0];
    if (a5 & 1) != 0 || (v50 = (*a3)(v9[-1].i64[1], v9->i64[0]), v49 = v9->i64[0], (v50))
    {
      v51 = 0;
      do
      {
        v52 = (*a3)(v9->i64[++v51], v49);
      }

      while ((v52 & 1) != 0);
      v53 = (v9 + v51 * 8);
      v54 = a2;
      if (v51 == 1)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = v54[-1].i64[1];
          v54 = (v54 - 8);
        }

        while (((*a3)(v56, v49) & 1) == 0);
      }

      else
      {
        do
        {
          v55 = v54[-1].i64[1];
          v54 = (v54 - 8);
        }

        while (!(*a3)(v55, v49));
      }

      if (v53 >= v54)
      {
        v62 = (v53 - 8);
      }

      else
      {
        v57 = &v9->i64[v51];
        v58 = v54;
        do
        {
          v59 = *v57;
          *v57 = *v58;
          *v58 = v59;
          do
          {
            v60 = v57[1];
            ++v57;
          }

          while (((*a3)(v60, v49) & 1) != 0);
          do
          {
            v61 = *--v58;
          }

          while (!(*a3)(v61, v49));
        }

        while (v57 < v58);
        v62 = (v57 - 1);
        a2 = v124;
      }

      if (v62 != v9)
      {
        v9->i64[0] = v62->i64[0];
      }

      v62->i64[0] = v49;
      if (v53 < v54)
      {
        goto LABEL_78;
      }

      v63 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::PathTrie const*,InputTranscoder::PathTrie const*),InputTranscoder::PathTrie**>(v9, v62, a3);
      v10 = &v62->u64[1];
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::PathTrie const*,InputTranscoder::PathTrie const*),InputTranscoder::PathTrie**>(&v62->i64[1], a2, a3);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_78:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::PathTrie const*,InputTranscoder::PathTrie const*),InputTranscoder::PathTrie**,false>(v9, v62, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v62->u64[1];
      }
    }

    else
    {
      result = (*a3)(v9->i64[0], a2[-1].i64[1]);
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = (*a3)(v49, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = &v9->u64[1];
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 8);
          result = (*a3)(v49, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v49, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!(*a3)(v49, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v49, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v9)
      {
        v9->i64[0] = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::PathTrie const*,InputTranscoder::PathTrie const*),InputTranscoder::PathTrie**,0>(v10, &v10->i64[1], v10[1].i64, &a2[-1].i64[1], a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::PathTrie const*,InputTranscoder::PathTrie const*),InputTranscoder::PathTrie**,0>(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = (*a3)(a2[-1].i64[1], v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v72;
      result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v73 = v10[1].i64[0];
      v74 = v10->i64[1];
      v10[1].i64[0] = v10[1].i64[1];
      v10[1].i64[1] = v73;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v76 = v10->i64[1];
      v75 = v10[1].i64[0];
      v77 = v10->i64[0];
      v10->i64[1] = v75;
      v10[1].i64[0] = v76;
      result = (*a3)(v75, v77);
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  v79 = (*a3)(v10->i64[1], v10->i64[0]);
  result = (*a3)(a2[-1].i64[1], v10->i64[1]);
  if ((v79 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v117 = v10->i64[1];
    v10->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v117;
    result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_166:
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v80 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v80;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v80;
    result = (*a3)(a2[-1].i64[1]);
    if (result)
    {
      v78 = v10->i64[1];
      v10->i64[1] = a2[-1].i64[1];
      goto LABEL_105;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::PathTrie const*,InputTranscoder::PathTrie const*),InputTranscoder::PathTrie**,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::PathTrie const*,InputTranscoder::PathTrie const*),InputTranscoder::PathTrie**>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = (*a3)(a1[1], *a1);
        v16 = (*a3)(*(a2 - 1), a1[1]);
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v17;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::PathTrie const*,InputTranscoder::PathTrie const*),InputTranscoder::PathTrie**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::PathTrie const*,InputTranscoder::PathTrie const*),InputTranscoder::PathTrie**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        v10 = a1[1];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v12 = a1[1];
        v11 = a1[2];
        v13 = *a1;
        a1[1] = v11;
        a1[2] = v12;
        v14 = (*a3)(v11, v13);
        break;
      default:
        goto LABEL_17;
    }

    if (v14)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = (*a3)(a1[1], *a1);
  v19 = a1 + 2;
  v20 = (*a3)(a1[2], a1[1]);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[2];
      a1[2] = v21;
    }

    else
    {
      v25 = a1[2];
      *a1 = a1[1];
      a1[1] = v21;
      if ((*a3)(v25))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v20)
  {
    v23 = a1[1];
    v24 = *a1;
    a1[1] = a1[2];
    a1[2] = v23;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v26 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    if ((*a3)(*v26, *v19))
    {
      v29 = *v26;
      v30 = v27;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 24) = *(a1 + v30 + 16);
        if (v30 == -16)
        {
          break;
        }

        v30 -= 8;
        if (((*a3)(v29, *(v31 + 1)) & 1) == 0)
        {
          v32 = (a1 + v30 + 24);
          goto LABEL_40;
        }
      }

      v32 = a1;
LABEL_40:
      *v32 = v29;
      if (++v28 == 8)
      {
        return v26 + 1 == a2;
      }
    }

    v19 = v26;
    v27 += 8;
    if (++v26 == a2)
    {
      return 1;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::PathTrie *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::PathTrie const*,InputTranscoder::PathTrie const*),std::__wrap_iter<InputTranscoder::PathTrie**>>(uint64_t result, int8x16_t *a2, int8x16_t *a3, unsigned int (**a4)(uint64_t))
{
  if (a3 == a2)
  {
    return result;
  }

  v5 = a3;
  v7 = result;
  while (1)
  {
    v8 = (v5 - v7) >> 3;
    if (v8 < 2)
    {
      return result;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 2)
    {
      result = (*a4)(v5[-1].i64[1], v7->i64[0]);
      if (!result)
      {
        return result;
      }

      v36 = v7->i64[0];
      v7->i64[0] = v5[-1].i64[1];
      goto LABEL_88;
    }

    if (v8 <= 7)
    {
      while (v7 != &v5[-1].u64[1])
      {
        v37 = v7;
        v7 = (v7 + 8);
        if (v37 != v5 && v7 != v5)
        {
          v38 = v7;
          v39 = v37;
          v40 = v7;
          do
          {
            v41 = *v40++;
            result = (*a4)(v41, *v39);
            if (result)
            {
              v39 = v38;
            }

            v38 = v40;
          }

          while (v40 != v5);
          if (v39 != v37)
          {
            v42 = *v37;
            *v37 = *v39;
            *v39 = v42;
          }
        }
      }

      return result;
    }

    v9 = &v7->i64[(v5 - v7) >> 4];
    v10 = (*a4)(*v9, v7->i64[0]);
    v11 = (v5 - 8);
    v12 = (*a4)(v5[-1].i64[1], *v9);
    if (v10)
    {
      v13 = v7->i64[0];
      if (v12)
      {
        v7->i64[0] = v11->i64[0];
        v11->i64[0] = v13;
      }

      else
      {
        v7->i64[0] = *v9;
        *v9 = v13;
        if ((*a4)(v11->i64[0]))
        {
          v16 = *v9;
          *v9 = v11->i64[0];
          v11->i64[0] = v16;
        }
      }

LABEL_15:
      v17 = 1;
      goto LABEL_17;
    }

    if (v12)
    {
      v14 = *v9;
      *v9 = v11->i64[0];
      v11->i64[0] = v14;
      if ((*a4)(*v9, v7->i64[0]))
      {
        v15 = v7->i64[0];
        v7->i64[0] = *v9;
        *v9 = v15;
      }

      goto LABEL_15;
    }

    v17 = 0;
LABEL_17:
    result = (*a4)(v7->i64[0], *v9);
    if (result)
    {
      v18 = &v5[-1].u64[1];
LABEL_25:
      v20 = &v7->i64[1];
      if (&v7->u64[1] >= v18)
      {
        v22 = &v7->i64[1];
      }

      else
      {
        v21 = &v7->i64[1];
        while (1)
        {
          v22 = v21 - 1;
          do
          {
            v23 = v22[1];
            ++v22;
          }

          while (((*a4)(v23, *v9) & 1) != 0);
          v21 = v22 + 1;
          do
          {
            v24 = *--v18;
            result = (*a4)(v24, *v9);
          }

          while (!result);
          if (v22 >= v18)
          {
            break;
          }

          v25 = *v22;
          *v22 = *v18;
          *v18 = v25;
          ++v17;
          if (v22 == v9)
          {
            v9 = v18;
          }
        }
      }

      if (v22 != v9)
      {
        result = (*a4)(*v9, *v22);
        if (result)
        {
          v26 = *v22;
          *v22 = *v9;
          *v9 = v26;
          ++v17;
        }
      }

      if (v22 == a2)
      {
        return result;
      }

      if (!v17)
      {
        if (v22 <= a2)
        {
          v29 = (v22 + 1);
          while (v29 != v5)
          {
            result = (*a4)(v29->i64[0], v29[-1].i64[1]);
            v29 = (v29 + 8);
            if (result)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          while (v20 != v22)
          {
            result = (*a4)(*v20, *(v20 - 1));
            ++v20;
            if (result)
            {
              goto LABEL_41;
            }
          }
        }

        return result;
      }

LABEL_41:
      if (v22 <= a2)
      {
        v27 = (v22 + 1);
      }

      else
      {
        v5 = v22;
        v27 = v7;
      }
    }

    else
    {
      v18 = &v5[-1].u64[1];
      while (--v18 != v7)
      {
        result = (*a4)(*v18, *v9);
        if (result)
        {
          v19 = v7->i64[0];
          v7->i64[0] = *v18;
          *v18 = v19;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_25;
        }
      }

      v28 = &v7->i64[1];
      result = (*a4)(v7->i64[0], v11->i64[0]);
      if ((result & 1) == 0)
      {
        while (v28 != v11)
        {
          result = (*a4)(v7->i64[0], *v28);
          if (result)
          {
            v30 = *v28;
            *v28++ = v11->i64[0];
            v11->i64[0] = v30;
            goto LABEL_57;
          }

          ++v28;
        }

        return result;
      }

LABEL_57:
      if (v28 == v11)
      {
        return result;
      }

      while (1)
      {
        v27 = (v28 - 1);
        do
        {
          v31 = v27->i64[1];
          v27 = (v27 + 8);
        }

        while (!(*a4)(v7->i64[0], v31));
        v28 = &v27->i64[1];
        do
        {
          v32 = v11[-1].i64[1];
          v11 = (v11 - 8);
          result = (*a4)(v7->i64[0], v32);
        }

        while ((result & 1) != 0);
        if (v27 >= v11)
        {
          break;
        }

        v33 = v27->i64[0];
        v27->i64[0] = v11->i64[0];
        v11->i64[0] = v33;
      }

      if (v27 > a2)
      {
        return result;
      }
    }

    v7 = v27;
    if (v5 == a2)
    {
      return result;
    }
  }

  v34 = (*a4)(v7->i64[1], v7->i64[0]);
  result = (*a4)(v5[-1].i64[1], v7->i64[1]);
  if ((v34 & 1) == 0)
  {
    if (result)
    {
      v43 = v7->i64[1];
      v7->i64[1] = v5[-1].i64[1];
      v5[-1].i64[1] = v43;
      result = (*a4)(v7->i64[1], v7->i64[0]);
      if (result)
      {
        *v7 = vextq_s8(*v7, *v7, 8uLL);
      }
    }

    return result;
  }

  v35 = v7->i64[0];
  if (result)
  {
    v7->i64[0] = v5[-1].i64[1];
    v5[-1].i64[1] = v35;
    return result;
  }

  v7->i64[0] = v7->i64[1];
  v7->i64[1] = v35;
  result = (*a4)(v5[-1].i64[1]);
  if (result)
  {
    v36 = v7->i64[1];
    v7->i64[1] = v5[-1].i64[1];
LABEL_88:
    v5[-1].i64[1] = v36;
  }

  return result;
}

void std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 72;
        std::__destroy_at[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>,0>(v3);
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

void std::__destroy_at[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>,0>(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 72;
        std::__destroy_at[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<InputTranscoder::CTCOutput>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<InputTranscoder::CTCOutput>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<InputTranscoder::CTCOutput>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void InputTranscoder::LMScorer::~LMScorer(InputTranscoder::LMScorer *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    v5 = *v4;
    LMLanguageModelRelease();
    MEMORY[0x259C28FE0](v4, 0x80C40B8603338);
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

BOOL InputTranscoder::PathTrie::prefixCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
  if (v2 == v3)
  {
    return *(a1 + 72) < *(a2 + 72);
  }

  else
  {
    return v2 > v3;
  }
}

void InputTranscoder::PathTrie::~PathTrie(InputTranscoder::PathTrie *this)
{
  *this = &unk_2867136A0;
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
  InputTranscoder::PathTrie::~PathTrie(this);

  JUMPOUT(0x259C28FE0);
}

uint64_t InputTranscoder::PathTrie::remove(uint64_t this)
{
  *(this + 84) = 0;
  if (*(this + 8) == *(this + 16))
  {
    v2 = this;
    v3 = *(this + 88);
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);
    if (v4 == v5)
    {
      goto LABEL_11;
    }

    v6 = v5 - v4 - 8;
    v7 = *(v3 + 8);
    while (*(*v7 + 72) != *(this + 72))
    {
      v7 += 8;
      v6 -= 8;
      if (v7 == v5)
      {
        goto LABEL_10;
      }
    }

    v8 = *(this + 88);
    if (v7 + 8 != v5)
    {
      memmove(v7, (v7 + 8), v6);
      v8 = v2[11];
      v4 = *(v8 + 8);
    }

    *(v3 + 16) = v7 + v6;
    v5 = *(v8 + 16);
    v3 = v8;
LABEL_10:
    if (v4 == v5)
    {
LABEL_11:
      if ((*(v3 + 84) & 1) == 0)
      {
        InputTranscoder::PathTrie::remove(v3);
      }
    }

    v9 = *(*v2 + 8);

    return v9(v2);
  }

  return this;
}

uint64_t InputTranscoder::PathTrie::getPath(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = *(a1 + 72);
  if (v4 == -1)
  {
    v5 = a2[1];
  }

  else
  {
    v5 = a2[1];
    do
    {
      v6 = a2[2];
      if (v5 >= v6)
      {
        v7 = *a2;
        v8 = v5 - *a2;
        v9 = (v8 >> 2) + 1;
        if (v9 >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v10 = v6 - v7;
        if (v10 >> 1 > v9)
        {
          v9 = v10 >> 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v9;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2, v11);
        }

        v12 = (4 * (v8 >> 2));
        *v12 = v4;
        v5 = v12 + 1;
        memcpy(0, v7, v8);
        v13 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v5++ = v4;
      }

      a2[1] = v5;
      v3 = *(v3 + 88);
      v4 = *(v3 + 72);
    }

    while (v4 != -1);
  }

  v14 = *a2;
  v15 = v5 - 1;
  if (*a2 != v5 && v15 > v14)
  {
    v17 = (v14 + 1);
    do
    {
      v18 = *(v17 - 4);
      *(v17 - 4) = *v15;
      *v15-- = v18;
      v19 = v17 >= v15;
      v17 += 4;
    }

    while (!v19);
  }

  return v3;
}

int64x2_t *InputTranscoder::PathTrie::getPathTrie(InputTranscoder::PathTrie *this, int a2, unsigned int a3, BOOL a4, float a5, const InputTranscoder::LexiconContainer *a6)
{
  v6 = *(this + 1);
  v7 = *(this + 2);
  if (v6 != v7)
  {
    while ((*v6)[4].i32[2] != a2)
    {
      if (++v6 == v7)
      {
        goto LABEL_8;
      }
    }
  }

  if (v6 == v7)
  {
LABEL_8:
    operator new();
  }

  v8 = *v6;
  if (((*v6)[5].i8[4] & 1) == 0)
  {
    v9 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v8[2] = v9;
    v8[3] = v9;
    v8[5].i8[4] = 1;
  }

  return v8;
}

void InputTranscoder::PathTrie::iterateToVec(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84) == 1)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    *(a1 + 32) = v4;
    *(a1 + 40) = v5;
    if (v4 > -1.79769313e308)
    {
      if (v5 <= -1.79769313e308)
      {
        v5 = v4;
      }

      else
      {
        if (v4 >= v5)
        {
          v6 = v4;
        }

        else
        {
          v6 = v5;
        }

        v7 = exp(v4 - v6);
        v8 = exp(v5 - v6);
        v5 = v6 + log(v7 + v8);
      }
    }

    *(a1 + 64) = v5;
    *(a1 + 48) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v10 = *(a2 + 8);
    v9 = *(a2 + 16);
    if (v10 >= v9)
    {
      v12 = (v10 - *a2) >> 3;
      if ((v12 + 1) >> 61)
      {
        std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
      }

      v13 = v9 - *a2;
      v14 = v13 >> 2;
      if (v13 >> 2 <= (v12 + 1))
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::PathTrie *>>(a2, v15);
      }

      *(8 * v12) = a1;
      v11 = 8 * v12 + 8;
      v16 = *(a2 + 8) - *a2;
      v17 = (8 * v12 - v16);
      memcpy(v17, *a2, v16);
      v18 = *a2;
      *a2 = v17;
      *(a2 + 8) = v11;
      *(a2 + 16) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v10 = a1;
      v11 = (v10 + 1);
    }

    *(a2 + 8) = v11;
  }

  v20 = *(a1 + 8);
  v19 = *(a1 + 16);
  while (v20 != v19)
  {
    v21 = *v20++;
    InputTranscoder::PathTrie::iterateToVec(v21, a2);
  }
}

__n128 InputTranscoder::LexiconPathTrie::LexiconPathTrie(int64x2_t *a1, uint64_t a2, __int32 a3, __int32 a4, uint64_t a5, __n128 *a6)
{
  a1->i64[1] = 0;
  a1[1].i64[0] = 0;
  a1[1].i64[1] = 0;
  v6 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  a1[2] = v6;
  a1[3] = v6;
  a1[4].i64[0] = 0xFFEFFFFFFFFFFFFFLL;
  a1[4].i32[2] = a3;
  a1[4].i32[3] = a4;
  if (a5)
  {
    v7 = *(a5 + 80) + 1;
  }

  else
  {
    v7 = 1;
  }

  a1[5].i32[0] = v7;
  a1[5].i8[4] = 1;
  a1[5].i64[1] = a5;
  a1[6].i64[0] = a2;
  a1->i64[0] = &unk_286713700;
  a1[6].i64[1] = 0;
  a1[7].i64[0] = 0;
  a1[7].i64[1] = 0;
  result = *a6;
  *(a1 + 104) = *a6;
  a1[7].i64[1] = a6[1].n128_i64[0];
  a6->n128_u64[0] = 0;
  a6->n128_u64[1] = 0;
  a6[1].n128_u64[0] = 0;
  return result;
}

int64x2_t *InputTranscoder::LexiconPathTrie::getPathTrie(InputTranscoder::LexiconPathTrie *this, int a2, unsigned int a3, int a4, __n128 a5, const InputTranscoder::LexiconContainer *a6)
{
  v8 = *(this + 1);
  v9 = *(this + 2);
  if (v8 != v9)
  {
    while ((*v8)[4].i32[2] != a2)
    {
      if (++v8 == v9)
      {
        goto LABEL_8;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_8:
    if (*(a6 + 2) == *(a6 + 3))
    {
      return 0;
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v32 = 0;
      if (a4)
      {
        if ((*(*this + 16))(this, a5))
        {
          InputTranscoder::LexiconContainer::createRootCursors(a6, &v34);
          *__p = v34;
          v12 = v35;
          v35 = 0;
          v34 = 0uLL;
          v32 = v12;
          v33 = &v34;
          std::vector<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>::__destroy_vector::operator()[abi:ne200100](&v33);
        }
      }

      else
      {
        v14 = *(this + 13);
        v13 = *(this + 14);
        while (v14 != v13)
        {
          AdvancedCursor = InputTranscoder::LexiconContainer::createAdvancedCursor(a6, *v14, a2);
          if (AdvancedCursor)
          {
            v16 = __p[1];
            if (__p[1] >= v32)
            {
              v18 = __p[0];
              v19 = (__p[1] - __p[0]) >> 4;
              v20 = v19 + 1;
              if ((v19 + 1) >> 60)
              {
                std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
              }

              v21 = v32 - __p[0];
              if ((v32 - __p[0]) >> 3 > v20)
              {
                v20 = v21 >> 3;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFF0)
              {
                v22 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v22 = v20;
              }

              v37 = __p;
              if (v22)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>>(__p, v22);
              }

              v23 = (__p[1] - __p[0]) >> 4;
              v24 = 16 * v19;
              *v24 = AdvancedCursor;
              *(v24 + 8) = *(v14 + 8);
              v25 = (v24 - 16 * v23);
              if (v18 != v16)
              {
                v26 = v18;
                v27 = v25;
                do
                {
                  v28 = *v26;
                  *v26 = 0;
                  *v27 = v28;
                  v27[8] = *(v26 + 8);
                  v26 += 2;
                  v27 += 16;
                }

                while (v26 != v16);
                do
                {
                  nlp::CFScopedPtr<_LXCursor const*>::reset(v18, 0);
                  v18 += 2;
                }

                while (v18 != v16);
                v18 = __p[0];
              }

              v17 = (v24 + 16);
              __p[0] = v25;
              __p[1] = (v24 + 16);
              v29 = v32;
              v32 = 0;
              v35 = v18;
              v36 = v29;
              *&v34 = v18;
              *(&v34 + 1) = v18;
              std::__split_buffer<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>::~__split_buffer(&v34);
            }

            else
            {
              *__p[1] = AdvancedCursor;
              *(v16 + 8) = *(v14 + 8);
              v17 = v16 + 2;
            }

            __p[1] = v17;
          }

          v14 += 16;
        }
      }

      if (__p[0] != __p[1])
      {
        operator new();
      }

      v10 = 0;
      *&v34 = __p;
      std::vector<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>::__destroy_vector::operator()[abi:ne200100](&v34);
    }
  }

  else
  {
    v10 = *v8;
    if (((*v8)[5].i8[4] & 1) == 0)
    {
      v11 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v10[2] = v11;
      v10[3] = v11;
      v10[5].i8[4] = 1;
    }
  }

  return v10;
}

void sub_254C40698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  std::vector<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void InputTranscoder::LexiconPathTrie::getPrefixCompletions(void *a1, uint64_t a2, const std::string *a3)
{
  v6 = a1[12];
  v7 = *(v6 + 140);
  v8 = *(v6 + 152);
  v9 = *(v6 + 164);
  v10 = logf(*(v6 + 168));
  v11 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = a3->__r_.__value_.__r.__words[0];
  }

  if (v11 >= 0)
  {
    size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (size >= 1)
  {
    v14 = v12 + size;
    v15 = v12;
    do
    {
      v16 = memchr(v15, 32, size);
      if (!v16)
      {
        break;
      }

      if (*v16 == 32)
      {
        if (v16 != v14 && v16 - v12 != -1)
        {
          std::string::basic_string(&v31, a3, 0, v16 - v12 + 1, v29);
          goto LABEL_17;
        }

        break;
      }

      v15 = (v16 + 1);
      size = v14 - v15;
    }

    while (v14 - v15 >= 1);
  }

  std::string::basic_string[abi:ne200100]<0>(&v31, "");
LABEL_17:
  v17 = a1[13];
  for (i = a1[14]; v17 != i; v17 += 2)
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2000000000;
    v30 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2000000000;
    v28 = *(v17 + 8);
    v19 = *v17;
    if (!LXCursorIsRoot())
    {
      v20 = *v17;
      v23 = v9;
      v24 = v10;
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v31;
      }

      v25 = v8;
      v22 = a2;
      v26 = v7;
      LXCursorEnumerateEntriesRecursively();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v29, 8);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

void sub_254C408F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  if (*(v30 - 137) < 0)
  {
    operator delete(*(v30 - 160));
  }

  _Unwind_Resume(a1);
}

void ___ZNK15InputTranscoder15LexiconPathTrie20getPrefixCompletionsERNSt3__16vectorINS_20CTCSurfaceFormOutputENS1_9allocatorIS3_EEEERKNS1_12basic_stringIcNS1_11char_traitsIcEENS4_IcEEEE_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = *(v4 + 64);
  v6 = *(a1 + 88);
  LXEntryGetProbability();
  v8 = v5 + v6 * (v7 * 2.30258512);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v8 = v8 + *(a1 + 92);
  }

  v9 = LXEntryCopyString();
  cf = v9;
  if (v9)
  {
    nlp::getUTF8StringFromCFString(v9, &v71);
    size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v71;
    }

    else
    {
      v11 = v71.__r_.__value_.__r.__words[0];
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v71.__r_.__value_.__l.__size_;
    }

    v12 = (v11 + size);
    if (size)
    {
      v13 = size - 1;
      v14 = MEMORY[0x277D85DE0];
      while (1)
      {
        v15 = v11->__r_.__value_.__s.__data_[0];
        if (!((v15 & 0x80000000) != 0 ? __maskrune(v15, 0x500uLL) : *(v14 + 4 * v15 + 60) & 0x500))
        {
          break;
        }

        v11 = (v11 + 1);
        --v13;
        if (v11 == v12)
        {
          goto LABEL_92;
        }
      }

      if (v11 == v12 || (&v11->__r_.__value_.__l.__data_ + 1) == v12)
      {
        v12 = v11;
      }

      else
      {
        v50 = 1;
        v12 = v11;
        do
        {
          v51 = v11->__r_.__value_.__s.__data_[v50];
          if ((v51 & 0x80000000) != 0)
          {
            v52 = __maskrune(v51, 0x500uLL);
          }

          else
          {
            v52 = *(v14 + 4 * v51 + 60) & 0x500;
          }

          if (v52)
          {
            v12->__r_.__value_.__s.__data_[0] = v11->__r_.__value_.__s.__data_[v50];
            v12 = (v12 + 1);
          }

          ++v50;
          --v13;
        }

        while (v13);
      }
    }

LABEL_92:
    v57 = &v71 + HIBYTE(v71.__r_.__value_.__r.__words[2]);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v71;
    }

    else
    {
      v57 = (v71.__r_.__value_.__r.__words[0] + v71.__r_.__value_.__l.__size_);
      v58 = v71.__r_.__value_.__r.__words[0];
    }

    std::string::erase(&v71, v12 - v58, v57 - v12);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = (&v71 + HIBYTE(v71.__r_.__value_.__r.__words[2]));
    }

    else
    {
      v59 = (v71.__r_.__value_.__r.__words[0] + v71.__r_.__value_.__l.__size_);
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v71;
    }

    else
    {
      v60 = v71.__r_.__value_.__r.__words[0];
    }

    while (v60 != v59)
    {
      v60->__r_.__value_.__s.__data_[0] = __tolower(v60->__r_.__value_.__s.__data_[0]);
      v60 = (v60 + 1);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v71, "");
  }

  v17 = *(a1 + 79);
  if (v17 >= 0)
  {
    v18 = (a1 + 56);
  }

  else
  {
    v18 = *(a1 + 56);
  }

  if (v17 >= 0)
  {
    v19 = *(a1 + 79);
  }

  else
  {
    v19 = *(a1 + 64);
  }

  v20 = std::string::insert(&v71, 0, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  __sz.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&__sz.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  v23 = *(a1 + 96);
  v22 = *(a1 + 100);
  v24 = SHIBYTE(__sz.__r_.__value_.__r.__words[2]);
  v25 = __sz.__r_.__value_.__l.__size_;
  if ((__sz.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = SHIBYTE(__sz.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __sz.__r_.__value_.__l.__size_;
  }

  v27 = v26 - *(v4 + 80);
  if (v27 >= 3)
  {
    v28 = 3;
  }

  else
  {
    v28 = v27;
  }

  v29 = *(a1 + 80);
  v31 = *v29;
  v30 = v29[1];
  if ((SHIBYTE(__sz.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    std::string::__init_copy_ctor_external(&v68, __sz.__r_.__value_.__l.__data_, __sz.__r_.__value_.__l.__size_);
  }

  else
  {
    v68 = __sz;
  }

  if (v31 != v30)
  {
    while (1)
    {
      if (*(v31 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v71, *v31, *(v31 + 1));
      }

      else
      {
        v32 = *v31;
        v71.__r_.__value_.__r.__words[2] = *(v31 + 2);
        *&v71.__r_.__value_.__l.__data_ = v32;
      }

      if (*(v31 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v31 + 3), *(v31 + 4));
      }

      else
      {
        v33 = *(v31 + 24);
        __p.__r_.__value_.__r.__words[2] = *(v31 + 5);
        *&__p.__r_.__value_.__l.__data_ = v33;
      }

      v73 = v31[3];
      v34 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = v71.__r_.__value_.__l.__size_;
      }

      v36 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
      if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v68.__r_.__value_.__l.__size_;
      }

      if (v35 == v36)
      {
        if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v71;
        }

        else
        {
          v37 = v71.__r_.__value_.__r.__words[0];
        }

        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &v68;
        }

        else
        {
          v38 = v68.__r_.__value_.__r.__words[0];
        }

        v39 = memcmp(v37, v38, v35) == 0;
      }

      else
      {
        v39 = 0;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((*(&v71.__r_.__value_.__s + 23) & 0x80) != 0)
        {
LABEL_61:
          operator delete(v71.__r_.__value_.__l.__data_);
          if (v39)
          {
            break;
          }

          goto LABEL_62;
        }
      }

      else if (v34 < 0)
      {
        goto LABEL_61;
      }

      if (v39)
      {
        break;
      }

LABEL_62:
      v31 += 4;
      if (v31 == v30)
      {
        v31 = v30;
        break;
      }
    }
  }

  v40 = v8 - v23;
  v41 = (v22 * v28);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v42 = v40 - v41;
  v43 = *(a1 + 80);
  v44 = *(v43 + 8);
  if (v31 == v44)
  {
    v46 = *(*(a1 + 32) + 8);
    v47 = *(v43 + 16);
    if (v31 >= v47)
    {
      v53 = (v31 - *v43) >> 6;
      if ((v53 + 1) >> 58)
      {
        std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
      }

      v54 = v47 - *v43;
      v55 = v54 >> 5;
      if (v54 >> 5 <= (v53 + 1))
      {
        v55 = v53 + 1;
      }

      if (v54 >= 0x7FFFFFFFFFFFFFC0)
      {
        v56 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v55;
      }

      __p.__r_.__value_.__l.__size_ = *(a1 + 80);
      if (v56)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::CTCSurfaceFormOutput>>(v43, v56);
      }

      v62 = v53 << 6;
      v71.__r_.__value_.__r.__words[0] = 0;
      v71.__r_.__value_.__l.__size_ = v62;
      v71.__r_.__value_.__r.__words[2] = v62;
      __p.__r_.__value_.__r.__words[0] = 0;
      v63 = *(v46 + 24);
      if (v24 < 0)
      {
        std::string::__init_copy_ctor_external(v62, __sz.__r_.__value_.__l.__data_, v25);
        v65 = v71.__r_.__value_.__r.__words[2];
      }

      else
      {
        v64 = *&__sz.__r_.__value_.__l.__data_;
        *(v62 + 16) = *(&__sz.__r_.__value_.__l + 2);
        *v62 = v64;
        v65 = v62;
      }

      *(v62 + 24) = 0;
      *(v62 + 32) = 0;
      *(v62 + 40) = 0;
      *(v62 + 48) = v42;
      *(v62 + 56) = 257;
      *(v62 + 58) = 0;
      *(v62 + 59) = v63;
      *(v62 + 60) = 0;
      v71.__r_.__value_.__r.__words[2] = v65 + 64;
      std::vector<InputTranscoder::CTCSurfaceFormOutput>::__swap_out_circular_buffer(v43, &v71);
      v61 = *(v43 + 8);
      std::__split_buffer<InputTranscoder::CTCSurfaceFormOutput>::~__split_buffer(&v71);
    }

    else
    {
      v48 = *(v46 + 24);
      if (v24 < 0)
      {
        std::string::__init_copy_ctor_external(*(v43 + 8), __sz.__r_.__value_.__l.__data_, v25);
      }

      else
      {
        v49 = *&__sz.__r_.__value_.__l.__data_;
        *(v44 + 16) = *(&__sz.__r_.__value_.__l + 2);
        *v44 = v49;
      }

      *(v44 + 24) = 0;
      *(v44 + 32) = 0;
      *(v44 + 40) = 0;
      *(v44 + 48) = v42;
      *(v44 + 56) = 257;
      *(v44 + 58) = 0;
      *(v44 + 59) = v48;
      *(v44 + 60) = 0;
      v61 = v44 + 64;
      *(v43 + 8) = v44 + 64;
    }

    *(v43 + 8) = v61;
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v45 = *(v31 + 6);
    if (v45 < v42)
    {
      v45 = v42;
    }

    *(v31 + 6) = v45;
    *(v31 + 59) &= *(*(*(a1 + 32) + 8) + 24);
  }

  if (*(*(*(a1 + 40) + 8) + 24) == *(a1 + 104))
  {
    *a3 = 1;
  }

  if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__sz.__r_.__value_.__l.__data_);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v66 = *MEMORY[0x277D85DE8];
}

void sub_254C40FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  *(v30 + 8) = v31;
  operator delete(__p);
  nlp::CFScopedPtr<__CFString const*>::reset(&a24, 0);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v2 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v2;
  }
}

void __destroy_helper_block_e8_56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }
}

BOOL InputTranscoder::LexiconPathTrie::isValidWord(InputTranscoder::LexiconPathTrie *this)
{
  v1 = *(this + 13);
  v2 = *(this + 14);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 16;
  do
  {
    v4 = *(v3 - 16);
    HasEntries = LXCursorHasEntries();
    v7 = HasEntries == 0;
    result = HasEntries != 0;
    v7 = !v7 || v3 == v2;
    v3 += 16;
  }

  while (!v7);
  return result;
}

uint64_t InputTranscoder::LexiconPathTrie::containsOnlyDynamicLexiconCursors(InputTranscoder::LexiconPathTrie *this)
{
  v2 = *(this + 13);
  v1 = *(this + 14);
  if (v2 == v1)
  {
    return 1;
  }

  v3 = v2 + 16;
  do
  {
    result = *(v3 - 8);
    v5 = result != 1 || v3 == v1;
    v3 += 16;
  }

  while (!v5);
  return result;
}

double InputTranscoder::LexiconPathTrie::getLexiconConditionalProbability(InputTranscoder::LexiconPathTrie *this)
{
  v1 = *(this + 13);
  v2 = *(this + 14);
  if (v1 == v2)
  {
    v11 = -1.79769313e308;
    v12 = *(this + 13);
  }

  else
  {
    v4 = -INFINITY;
    do
    {
      v5 = 1.0;
      if (*(v1 + 8) == 1)
      {
        v5 = (*(*this + 64))(this);
      }

      v6 = *v1;
      LXCursorConditionalProbability();
      v8 = logf(v5) + v7 * 2.30258512;
      if (v4 == -INFINITY)
      {
        v4 = v8;
      }

      else if (v8 != -INFINITY)
      {
        if (v4 >= v8)
        {
          v9 = v4;
        }

        else
        {
          v9 = v8;
        }

        if (v4 < v8)
        {
          v8 = v4;
        }

        v10 = expf(v8 - v9);
        v4 = v9 + log1pf(v10);
      }

      v1 += 2;
    }

    while (v1 != v2);
    v11 = v4;
    v1 = *(this + 13);
    v12 = *(this + 14);
  }

  return v11 - logf(((v12 - v1) >> 4));
}

double InputTranscoder::LexiconPathTrie::getLexiconTerminationProbability(InputTranscoder::LexiconPathTrie *this)
{
  v1 = *(this + 13);
  v2 = *(this + 14);
  if (v1 == v2)
  {
    v11 = -1.79769313e308;
    v12 = *(this + 13);
  }

  else
  {
    v4 = -INFINITY;
    do
    {
      v5 = 1.0;
      if (*(v1 + 8) == 1)
      {
        v5 = (*(*this + 64))(this);
      }

      v6 = *v1;
      LXCursorTerminationProbability();
      v8 = logf(v5) + v7 * 2.30258512;
      if (v4 == -INFINITY)
      {
        v4 = v8;
      }

      else if (v8 != -INFINITY)
      {
        if (v4 >= v8)
        {
          v9 = v4;
        }

        else
        {
          v9 = v8;
        }

        if (v4 < v8)
        {
          v8 = v4;
        }

        v10 = expf(v8 - v9);
        v4 = v9 + log1pf(v10);
      }

      v1 += 2;
    }

    while (v1 != v2);
    v11 = v4;
    v1 = *(this + 13);
    v12 = *(this + 14);
  }

  return v11 - logf(((v12 - v1) >> 4));
}

long double InputTranscoder::LexiconPathTrie::getLexiconPrefixProbability(InputTranscoder::LexiconPathTrie *this)
{
  v1 = (*(*this + 40))(this);
  v2 = 1.0 - exp(v1) + 2.22044605e-16;

  return log(v2);
}

void InputTranscoder::LexiconPathTrie::~LexiconPathTrie(InputTranscoder::LexiconPathTrie *this)
{
  *this = &unk_286713700;
  v2 = (this + 104);
  std::vector<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>::__destroy_vector::operator()[abi:ne200100](&v2);
  InputTranscoder::PathTrie::~PathTrie(this);
}

{
  *this = &unk_286713700;
  v2 = (this + 104);
  std::vector<std::pair<nlp::CFScopedPtr<_LXCursor const*>,BOOL>>::__destroy_vector::operator()[abi:ne200100](&v2);
  InputTranscoder::PathTrie::~PathTrie(this);
  MEMORY[0x259C28FE0]();
}

void std::vector<InputTranscoder::CTCSurfaceFormOutput>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v10 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 24) = v10;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      *(v8 + 48) = *(v7 + 48);
      v7 += 64;
      v8 += 64;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput,0>(v4);
      v4 += 64;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::CTCSurfaceFormOutput>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__destroy_at[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__split_buffer<InputTranscoder::CTCSurfaceFormOutput>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::__destroy_at[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput,0>(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

os_log_t ___ZN15InputTranscoderL6loggerEv_block_invoke()
{
  result = os_log_create("com.apple.InputTranscoder", "PathTrie");
  _MergedGlobals = result;
  return result;
}

void InputTranscoder::createInternalLanguageModel(UInt8 *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v48 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if ((a1[23] & 0x80u) == 0)
  {
    v5 = a1[23];
  }

  else
  {
    a1 = *a1;
    v5 = v4;
  }

  CFStringFromString = nlp::createCFStringFromString(a1, v5);
  v38 = CFStringFromString;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFLocaleCreate(*MEMORY[0x277CBECE8], CFStringFromString);
  v37 = v8;
  v9 = v2[23];
  if ((v9 & 0x80) == 0)
  {
    if (v9 != 2)
    {
      if (v9 == 7)
      {
        v10 = *v2 == 1210935418 && *(v2 + 3) == 1936613704;
        v11 = InputTranscoder::isSyllableLanguageModel;
        if (v10)
        {
          goto LABEL_28;
        }

        v12 = *v2;
        v13 = *(v2 + 3);
        goto LABEL_19;
      }

LABEL_27:
      v11 = InputTranscoder::isCharacterLanguageModel;
      goto LABEL_28;
    }

LABEL_26:
    v11 = InputTranscoder::isKanaCharacterLanguageModel;
    if (*v2 == 24938)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v14 = *(v2 + 1);
  if (v14 == 2)
  {
    v2 = *v2;
    goto LABEL_26;
  }

  if (v14 != 7)
  {
    goto LABEL_27;
  }

  v15 = *v2;
  v16 = **v2 == 1210935418 && *(*v2 + 3) == 1936613704;
  v11 = InputTranscoder::isSyllableLanguageModel;
  if (v16)
  {
    goto LABEL_28;
  }

  v12 = *v15;
  v13 = *(v15 + 3);
LABEL_19:
  v17 = v12 == 1210935418 && v13 == 1953390920;
  v11 = InputTranscoder::isSyllableLanguageModel;
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_28:
  v31 = 0;
  v32 = &v31;
  v33 = 0x3002000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  cf = 0;
  v41 = MEMORY[0x277D85DD0];
  v42 = 0x40000000;
  v43 = ___ZN15InputTranscoder27createInternalLanguageModelERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
  v44 = &unk_2797B1A28;
  v47 = v11;
  v45 = &v31;
  v46 = v11;
  InputTranscoder::enumerateLDAssets();
  v18 = v32[5];
  if (v18)
  {
    v19 = CFURLCreateCopyDeletingPathExtension(v7, v18);
    PathComponent = CFURLCopyLastPathComponent(v19);
    v21 = CFURLCreateCopyDeletingLastPathComponent(v7, v32[5]);
    v22 = v21;
    if (v19 && PathComponent && v21)
    {
      Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, *MEMORY[0x277D230E0], v8);
      CFDictionarySetValue(Mutable, *MEMORY[0x277D23090], PathComponent);
      CFDictionarySetValue(Mutable, *MEMORY[0x277D230A0], v22);
      v24 = *MEMORY[0x277CBED10];
      CFDictionarySetValue(Mutable, *MEMORY[0x277D23118], *MEMORY[0x277CBED10]);
      CFDictionarySetValue(Mutable, *MEMORY[0x277D23078], v24);
      CFDictionarySetValue(Mutable, *MEMORY[0x277D230D8], v24);
      if (LMLanguageModelCreate())
      {
        operator new();
      }

      if (qword_28143BC40 != -1)
      {
        dispatch_once(&qword_28143BC40, &__block_literal_global_0);
      }

      v27 = _MergedGlobals_0;
      if (os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_ERROR))
      {
        v30 = v32[5];
        *buf = 138412290;
        v40 = v30;
        _os_log_error_impl(&dword_254C34000, v27, OS_LOG_TYPE_ERROR, "Unable to load language model from bundle URL=%@", buf, 0xCu);
      }

      *a2 = 0;
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      if (qword_28143BC40 != -1)
      {
        dispatch_once(&qword_28143BC40, &__block_literal_global_0);
      }

      v26 = _MergedGlobals_0;
      if (os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_ERROR))
      {
        v29 = v32[5];
        *buf = 138412290;
        v40 = v29;
        _os_log_error_impl(&dword_254C34000, v26, OS_LOG_TYPE_ERROR, "Unable to parse language model bundle URL=%@", buf, 0xCu);
      }

      *a2 = 0;
      if (!v22)
      {
        goto LABEL_52;
      }
    }

    CFRelease(v22);
LABEL_52:
    if (PathComponent)
    {
      CFRelease(PathComponent);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    goto LABEL_56;
  }

  if (qword_28143BC40 != -1)
  {
    dispatch_once(&qword_28143BC40, &__block_literal_global_0);
  }

  v25 = _MergedGlobals_0;
  if (os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v40 = CFStringFromString;
    _os_log_error_impl(&dword_254C34000, v25, OS_LOG_TYPE_ERROR, "Unable to locate internal language model for locale=%@", buf, 0xCu);
  }

  *a2 = 0;
LABEL_56:
  _Block_object_dispose(&v31, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_254C41C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL InputTranscoder::isSyllableLanguageModel(const __CFString *this, const __CFString *a2, const __CFURL *a3)
{
  if (CFStringCompare(this, *MEMORY[0x277D23688], 0))
  {
    return 0;
  }

  PathComponent = CFURLCopyLastPathComponent(a2);
  v4 = CFStringCompare(PathComponent, @"syllablenew.lm", 0) == kCFCompareEqualTo;
  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  return v4;
}

void sub_254C41DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

BOOL InputTranscoder::isKanaCharacterLanguageModel(const __CFString *this, const __CFString *a2, const __CFURL *a3)
{
  if (CFStringCompare(this, *MEMORY[0x277D23660], 0))
  {
    return 0;
  }

  PathComponent = CFURLCopyLastPathComponent(a2);
  v4 = CFStringCompare(PathComponent, @"kana.lm", 0) == kCFCompareEqualTo;
  if (PathComponent)
  {
    CFRelease(PathComponent);
  }

  return v4;
}

void sub_254C41E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void ___ZN15InputTranscoder27createInternalLanguageModelERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if ((*(a1 + 40))(a5))
  {
    nlp::CFScopedPtr<__CFURL const*>::acquire((*(*(a1 + 32) + 8) + 40), a2);
    if (a6)
    {
      *a6 = 1;
    }
  }
}

os_log_t ___ZN15InputTranscoderL6loggerEv_block_invoke_0()
{
  result = os_log_create("com.apple.InputTranscoder", "LanguageModelFactory");
  _MergedGlobals_0 = result;
  return result;
}

InputTranscoder::TranscoderConfiguration *InputTranscoder::TouchTranscoderImpl::TouchTranscoderImpl(InputTranscoder::TranscoderConfiguration *a1, const InputTranscoder::TranscoderConfiguration *a2, void *a3, void *a4, void *a5)
{
  result = InputTranscoder::TranscoderConfiguration::TranscoderConfiguration(a1, a2);
  v9 = a3[1];
  *(result + 55) = *a3;
  *(result + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  *(result + 57) = *a4;
  *(result + 58) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a5[1];
  *(result + 59) = *a5;
  *(result + 60) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t InputTranscoder::TouchTranscoderImpl::addLexicon(uint64_t a1, const void *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 472);
  v5[0] = &unk_286713800;
  v5[1] = a2;
  v5[3] = v5;
  InputTranscoder::LexiconContainer::addLexicon((*(v2 + 16) + 192), a2, 1);
  result = std::__function::__value_func<void ()(InputTranscoder::CTCDecoder &)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_254C420E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(InputTranscoder::CTCDecoder &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t InputTranscoder::TouchTranscoderImpl::removeLexicon(uint64_t a1, const void *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 472);
  v5[0] = &unk_286713880;
  v5[1] = a2;
  v5[3] = v5;
  InputTranscoder::LexiconContainer::removeLexicon((*(v2 + 16) + 192), a2, 1);
  result = std::__function::__value_func<void ()(InputTranscoder::CTCDecoder &)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_254C42188(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(InputTranscoder::CTCDecoder &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t InputTranscoder::TouchTranscoderImpl::clearNeuralNetworkBuffer(InputTranscoder::TouchTranscoderImpl *this)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v1 = *(this + 59);
  v5[0] = &unk_286713900;
  v5[3] = v5;
  v2 = **(v1 + 8);
  MRLNeuralNetworkClear();
  result = std::__function::__value_func<void ()(InputTranscoder::MontrealModel &)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_254C4222C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(InputTranscoder::MontrealModel &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

InputTranscoder::TranscoderConfiguration *InputTranscoder::TranscoderConfiguration::TranscoderConfiguration(InputTranscoder::TranscoderConfiguration *this, const InputTranscoder::TranscoderConfiguration *a2)
{
  InputTranscoder::CommonConfiguration::CommonConfiguration(this, a2);
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v4 = *(a2 + 104);
    *(this + 15) = *(a2 + 15);
    *(this + 104) = v4;
  }

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

  *(this + 152) = *(a2 + 152);
  v6 = *(a2 + 168);
  v7 = *(a2 + 184);
  v8 = *(a2 + 200);
  *(this + 216) = *(a2 + 216);
  *(this + 200) = v8;
  *(this + 184) = v7;
  *(this + 168) = v6;
  v9 = *(a2 + 232);
  v10 = *(a2 + 248);
  v11 = *(a2 + 264);
  *(this + 70) = *(a2 + 70);
  *(this + 264) = v11;
  *(this + 248) = v10;
  *(this + 232) = v9;
  if (*(a2 + 311) < 0)
  {
    std::string::__init_copy_ctor_external(this + 12, *(a2 + 36), *(a2 + 37));
  }

  else
  {
    v12 = *(a2 + 18);
    *(this + 38) = *(a2 + 38);
    *(this + 18) = v12;
  }

  if (*(a2 + 335) < 0)
  {
    std::string::__init_copy_ctor_external(this + 13, *(a2 + 39), *(a2 + 40));
  }

  else
  {
    v13 = *(a2 + 312);
    *(this + 41) = *(a2 + 41);
    *(this + 312) = v13;
  }

  if (*(a2 + 359) < 0)
  {
    std::string::__init_copy_ctor_external(this + 14, *(a2 + 42), *(a2 + 43));
  }

  else
  {
    v14 = *(a2 + 21);
    *(this + 44) = *(a2 + 44);
    *(this + 21) = v14;
  }

  v15 = *(a2 + 360);
  *(this + 372) = *(a2 + 372);
  *(this + 360) = v15;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 392, *(a2 + 49), *(a2 + 50), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 50) - *(a2 + 49)) >> 3));
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 54) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 416, *(a2 + 52), *(a2 + 53), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 53) - *(a2 + 52)) >> 3));
  return this;
}

void sub_254C42408(_Unwind_Exception *a1)
{
  if (*(v1 + 335) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 311) < 0)
  {
    operator delete(*(v1 + 288));
  }

  InputTranscoder::CTCConfiguration::~CTCConfiguration((v1 + 104));
  InputTranscoder::CommonConfiguration::~CommonConfiguration(v1);
  _Unwind_Resume(a1);
}

std::string *InputTranscoder::CommonConfiguration::CommonConfiguration(std::string *this, __int128 *a2)
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

  LODWORD(this[1].__r_.__value_.__l.__data_) = *(a2 + 6);
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    this[2].__r_.__value_.__r.__words[0] = *(a2 + 6);
    *&this[1].__r_.__value_.__r.__words[1] = v5;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    this[3].__r_.__value_.__r.__words[0] = *(a2 + 9);
    *&this[2].__r_.__value_.__r.__words[1] = v6;
  }

  v7 = a2[5];
  this[4].__r_.__value_.__s.__data_[0] = *(a2 + 96);
  *&this[3].__r_.__value_.__r.__words[1] = v7;
  return this;
}

void sub_254C42558(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void InputTranscoder::CommonConfiguration::~CommonConfiguration(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderImpl::addLexicon(_LXLexicon const*)::$_0,std::allocator<InputTranscoder::TouchTranscoderImpl::addLexicon(_LXLexicon const*)::$_0>,void ()(InputTranscoder::CTCDecoder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286713800;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderImpl::addLexicon(_LXLexicon const*)::$_0,std::allocator<InputTranscoder::TouchTranscoderImpl::addLexicon(_LXLexicon const*)::$_0>,void ()(InputTranscoder::CTCDecoder &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(InputTranscoder::CTCDecoder &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderImpl::removeLexicon(_LXLexicon const*)::$_0,std::allocator<InputTranscoder::TouchTranscoderImpl::removeLexicon(_LXLexicon const*)::$_0>,void ()(InputTranscoder::CTCDecoder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286713880;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderImpl::removeLexicon(_LXLexicon const*)::$_0,std::allocator<InputTranscoder::TouchTranscoderImpl::removeLexicon(_LXLexicon const*)::$_0>,void ()(InputTranscoder::CTCDecoder &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderImpl::clearNeuralNetworkBuffer(void)::$_0,std::allocator<InputTranscoder::TouchTranscoderImpl::clearNeuralNetworkBuffer(void)::$_0>,void ()(InputTranscoder::MontrealModel &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(InputTranscoder::MontrealModel &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void InputTranscoder::PathResampler::~PathResampler(InputTranscoder::PathResampler *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }
}

void InputTranscoder::TouchTranscoderSessionImpl::TouchTranscoderSessionImpl(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = InputTranscoder::TranscoderConfiguration::TranscoderConfiguration(a1, a2);
  *(v10 + 55) = 0x402E000000000000;
  *(v10 + 112) = 2;
  *(v10 + 452) = 1;
  *(v10 + 57) = 0x3FE0000000000000;
  *(v10 + 464) = 0;
  *(v10 + 572) = 0;
  *(v10 + 472) = 0u;
  *(v10 + 488) = 0u;
  *(v10 + 504) = 0u;
  *(v10 + 520) = 0u;
  *(v10 + 536) = 0u;
  *(v10 + 552) = 0u;
  *(v10 + 568) = 0;
  v11 = a2 + 336;
  if (*(a2 + 359) < 0)
  {
    v14 = *(a2 + 344);
    if (v14 <= 11)
    {
      if (v14 != 8)
      {
        if (v14 != 10)
        {
          goto LABEL_50;
        }

        if (**v11 != 0x4B7473657261654ELL || *(*v11 + 8) != 31077)
        {
          goto LABEL_50;
        }

        goto LABEL_53;
      }

      v19 = *v11;
LABEL_44:
      if (*v19 == 0x79654B69746C754DLL)
      {
        v18 = 3;
        goto LABEL_54;
      }

      goto LABEL_50;
    }

    if (v14 != 12)
    {
      if (v14 != 15)
      {
        goto LABEL_50;
      }

      if (**v11 != 0x4B7473657261654ELL || *(*v11 + 7) != 0x6B6E55724F79654BLL)
      {
        goto LABEL_50;
      }

      goto LABEL_35;
    }

    if (**v11 != 0x6E69736F6C636E45 || *(*v11 + 8) != 2036681575)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v12 = *(a2 + 359);
    if (v12 <= 0xB)
    {
      if (v12 != 8)
      {
        if (v12 != 10 || (*v11 == 0x4B7473657261654ELL ? (v13 = *(a2 + 344) == 31077) : (v13 = 0), !v13))
        {
LABEL_50:
          if (qword_28143BC50 != -1)
          {
            dispatch_once(&qword_28143BC50, &__block_literal_global_1);
          }

          v22 = _MergedGlobals_1;
          if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_ERROR))
          {
            if (*(a2 + 359) >= 0)
            {
              v29 = a2 + 336;
            }

            else
            {
              v29 = *(a2 + 336);
            }

            v30 = 136315138;
            v31 = v29;
            _os_log_error_impl(&dword_254C34000, v22, OS_LOG_TYPE_ERROR, "Invalid key matching policy: '%s'. Using NearestKey...", &v30, 0xCu);
          }
        }

LABEL_53:
        v18 = 0;
        goto LABEL_54;
      }

      v19 = (a2 + 336);
      goto LABEL_44;
    }

    if (v12 != 12)
    {
      if (v12 != 15)
      {
        goto LABEL_50;
      }

      if (*v11 != 0x4B7473657261654ELL || *(a2 + 343) != 0x6B6E55724F79654BLL)
      {
        goto LABEL_50;
      }

LABEL_35:
      v18 = 1;
      goto LABEL_54;
    }

    if (*v11 != 0x6E69736F6C636E45 || *(a2 + 344) != 2036681575)
    {
      goto LABEL_50;
    }
  }

  v18 = 2;
LABEL_54:
  v23 = *(a2 + 360);
  *(a1 + 584) = &unk_286714208;
  v24 = a3[1];
  *(a1 + 592) = *a3;
  *(a1 + 600) = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = a5[1];
  *(a1 + 608) = *a5;
  *(a1 + 616) = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 624) = v18;
  *(a1 + 628) = v23;
  v26 = a3[1];
  *(a1 + 632) = *a3;
  *(a1 + 640) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  v27 = a4[1];
  *(a1 + 648) = *a4;
  *(a1 + 656) = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = a5[1];
  *(a1 + 664) = *a5;
  *(a1 + 672) = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  InputTranscoder::RecognizerFactory::makeRecognizer((a1 + 80));
}

void sub_254C42E30(_Unwind_Exception *a1)
{
  v4 = *(v1 + 672);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 656);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 640);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  InputTranscoder::PathKeyLayoutProcessor::~PathKeyLayoutProcessor(v2);
  InputTranscoder::PathResampler::~PathResampler((v1 + 440));
  InputTranscoder::TranscoderConfiguration::~TranscoderConfiguration(v1);
  _Unwind_Resume(a1);
}

double InputTranscoder::TouchTranscoderSessionImpl::setLinguisticContext(InputTranscoder::TouchTranscoderSessionImpl *this, const __CFString *a2)
{
  nlp::getUTF8StringFromCFString(a2, &v5);
  v3 = (this + 688);
  if (*(this + 711) < 0)
  {
    operator delete(*v3);
  }

  result = *&v5;
  *v3 = v5;
  *(this + 88) = v6;
  return result;
}

uint64_t InputTranscoder::TouchTranscoderSessionImpl::clear(uint64_t this)
{
  *(this + 480) = *(this + 472);
  *(this + 504) = *(this + 496);
  *(this + 528) = *(this + 520);
  *(this + 552) = *(this + 544);
  *(this + 568) = 0;
  *(this + 572) = 0;
  if (*(this + 735) < 0)
  {
    **(this + 712) = 0;
    *(this + 720) = 0;
  }

  else
  {
    *(this + 712) = 0;
    *(this + 735) = 0;
  }

  if (*(this + 759) < 0)
  {
    **(this + 736) = 0;
    *(this + 744) = 0;
  }

  else
  {
    *(this + 736) = 0;
    *(this + 759) = 0;
  }

  return this;
}

void InputTranscoder::TouchTranscoderSessionImpl::typingModeString(InputTranscoder::TouchTranscoderSessionImpl *this, uint64_t a2)
{
  if (!a2)
  {
    v3 = "ContinuousPath";
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v3 = "TapTyping";
LABEL_5:

    std::string::basic_string[abi:ne200100]<0>(this, v3);
    return;
  }

  std::to_string(&v6, a2);
  v4 = std::string::insert(&v6, 0, "Unknown typing mode: ", 0x15uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  *(this + 2) = *(&v4->__r_.__value_.__l + 2);
  *this = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_254C42FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InputTranscoder::TouchTranscoderSessionImpl::addEventWithKeyInfo(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 664);
  operator new();
}

void sub_254C4398C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InputTranscoder::TouchTranscoderSessionImpl::setPrefix(std::string *this, const __CFString *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  nlp::getUTF8StringFromCFString(a2, &v13);
  v3 = &this[29].__r_.__value_.__r.__words[2];
  if (this[30].__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(*v3);
  }

  *v3 = v13;
  this[30].__r_.__value_.__l.__size_ = v14;
  data = this[30].__r_.__value_.__s.__data_[15];
  if ((data & 0x8000000000000000) != 0)
  {
    data = this[30].__r_.__value_.__l.__data_;
    if (!data)
    {
      goto LABEL_21;
    }

    v5 = *v3;
  }

  else
  {
    if (!this[30].__r_.__value_.__s.__data_[15])
    {
      goto LABEL_21;
    }

    v5 = &this[29].__r_.__value_.__s.__data_[16];
  }

  v6 = data[v5 - 1];
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x4000uLL))
    {
      goto LABEL_21;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x4000) == 0)
  {
    goto LABEL_21;
  }

  if (qword_28143BC50 != -1)
  {
    dispatch_once(&qword_28143BC50, &__block_literal_global_1);
  }

  v7 = _MergedGlobals_1;
  if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
  {
    v12 = &this[29].__r_.__value_.__s.__data_[16];
    if (this[30].__r_.__value_.__s.__data_[15] < 0)
    {
      v12 = *v3;
    }

    LODWORD(v13) = 136315138;
    *(&v13 + 4) = v12;
    _os_log_debug_impl(&dword_254C34000, v7, OS_LOG_TYPE_DEBUG, "sync_with_input_from_UI detected. Pushing prefix %s to previousWord.", &v13, 0xCu);
  }

  v8 = this + 35;
  std::string::operator=(this + 35, (this + 712));
  v9 = SHIBYTE(this[35].__r_.__value_.__r.__words[2]);
  if (v9 < 0)
  {
    v10 = this[35].__r_.__value_.__l.__size_ - 1;
    v8 = this[35].__r_.__value_.__l.__data_;
    this[35].__r_.__value_.__l.__size_ = v10;
  }

  else
  {
    v10 = v9 - 1;
    *(&this[35].__r_.__value_.__s + 23) = v10 & 0x7F;
  }

  v8->__r_.__value_.__s.__data_[v10] = 0;
  if (this[30].__r_.__value_.__s.__data_[15] < 0)
  {
    *this[29].__r_.__value_.__r.__words[2] = 0;
    this[30].__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    this[29].__r_.__value_.__s.__data_[16] = 0;
    this[30].__r_.__value_.__s.__data_[15] = 0;
  }

LABEL_21:
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t InputTranscoder::TouchTranscoderSessionImpl::textAcceptedFromUI(InputTranscoder::TouchTranscoderSessionImpl *this, const __CFString *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    nlp::getUTF8StringFromCFString(a2, &v7);
    v3 = (this + 840);
    if (*(this + 863) < 0)
    {
      operator delete(*v3);
    }

    *v3 = v7;
    *(this + 107) = v8;
    if (qword_28143BC50 != -1)
    {
      dispatch_once(&qword_28143BC50, &__block_literal_global_1);
    }

    v4 = _MergedGlobals_1;
    if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
    {
      if (*(this + 863) < 0)
      {
        v3 = *v3;
      }

      LODWORD(v7) = 136315138;
      *(&v7 + 4) = v3;
      _os_log_debug_impl(&dword_254C34000, v4, OS_LOG_TYPE_DEBUG, "textAcceptedFromUI - Previous Word=[%s]", &v7, 0xCu);
    }

    std::string::operator=((this + 808), (this + 784));
  }

  result = InputTranscoder::TouchTranscoderSessionImpl::clear(this);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::vector<InputTranscoder::CTCSurfaceFormOutput>::erase(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v15 = a2;
    }

    else
    {
      v6 = *a1;
      v7 = -*a1;
      v8 = *a1 + a3;
      v9 = *a1 + a2;
      do
      {
        v10 = v9 + v7;
        if (*(v9 + v7 + 23) < 0)
        {
          operator delete(*v10);
        }

        v11 = (v8 + v7);
        v12 = *(v8 + v7);
        *(v10 + 16) = *(v8 + v7 + 16);
        *v10 = v12;
        v11[23] = 0;
        *v11 = 0;
        if (*(v10 + 47) < 0)
        {
          operator delete(*(v10 + 24));
        }

        v13 = v8 + v7;
        v14 = *(v8 + v7 + 24);
        *(v10 + 40) = *(v8 + v7 + 40);
        *(v10 + 24) = v14;
        *(v13 + 47) = 0;
        *(v13 + 24) = 0;
        *(v9 + v7 + 48) = *(v8 + v7 + 48);
        v8 += 64;
        v9 += 64;
      }

      while (v8 + v7 != v5);
      v5 = a1[1];
      v15 = v9 - v6;
    }

    while (v5 != v15)
    {
      v5 -= 64;
      std::__destroy_at[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput,0>(v5);
    }

    a1[1] = v15;
  }

  return a2;
}

uint64_t InputTranscoder::TouchTranscoderSessionImpl::updateCondenseFormForCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,ITTypingMode)const::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL InputTranscoder::CTCSurfaceFormOutputOrderByCondensedFormThenScore(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 24);
  v3 = (a2 + 24);
  v4 = *(a1 + 47);
  if (v4 >= 0)
  {
    v5 = *(a1 + 47);
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = *(a2 + 47);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 32);
  }

  if (v5 == v6 && (v4 >= 0 ? (v10 = (a1 + 24)) : (v10 = *v2), (v11 = *v3, v7 >= 0) ? (v12 = (a2 + 24)) : (v12 = *v3), !memcmp(v10, v12, v5)))
  {
    return *(a1 + 48) > *(a2 + 48);
  }

  else
  {
    return (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, v3) & 0x80u) != 0;
  }
}

void InputTranscoder::TouchTranscoderSessionImpl::enumerateCandidates(uint64_t a1, const __CFDictionary *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (qword_28143BC50 != -1)
  {
    dispatch_once(&qword_28143BC50, &__block_literal_global_1);
  }

  v4 = _MergedGlobals_1;
  if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
  {
    InputTranscoder::TouchTranscoderSessionImpl::typingModeString(&v32, *(a1 + 88));
    v16 = v32.__r_.__value_.__r.__words[0];
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v32;
    }

    v17 = (a1 + 712);
    if (*(a1 + 735) < 0)
    {
      v17 = *v17;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v16;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v17;
    _os_log_debug_impl(&dword_254C34000, v4, OS_LOG_TYPE_DEBUG, "%s enumerateCandidates - Prefix = %s", &buf, 0x16u);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  Optional = InputTranscoder::getOptionalCFType<__CFString const*>(a2, @"exactTypedString", &stru_286714728);
  nlp::getUTF8StringFromCFString(Optional, &buf);
  InputTranscoder::splitAtLastWord(&buf, &v32);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v6 = InputTranscoder::getOptionalCFType<__CFString const*>(a2, @"previousTypedString", &stru_286714728);
  nlp::getUTF8StringFromCFString(v6, &v29);
  v7 = InputTranscoder::getOptionalCFType<__CFString const*>(a2, @"previousCandidateString", &stru_286714728);
  nlp::getUTF8StringFromCFString(v7, v27);
  InputTranscoder::removeSpace(&v32, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v9 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v9 = v27[1];
  }

  if (size == v9)
  {
    v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v11 = (v28 & 0x80u) == 0 ? v27 : v27[0];
    if (!memcmp(v10, v11, size) && *(a1 + 88) && *(a1 + 80) == 4)
    {
      v13 = *(a1 + 664);
      buf.__r_.__value_.__r.__words[0] = &unk_286713CA0;
      buf.__r_.__value_.__l.__size_ = &v29;
      p_buf = &buf;
      isPresentInLexicon = InputTranscoder::LexiconContainer::isPresentInLexicon(*(v13 + 16) + 192, &v29);
      v15 = std::__function::__value_func<BOOL ()(InputTranscoder::CTCDecoder &)>::~__value_func[abi:ne200100](&buf);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!v32.__r_.__value_.__l.__size_)
        {
          goto LABEL_19;
        }
      }

      else if (!*(&v32.__r_.__value_.__s + 23))
      {
        goto LABEL_19;
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        if (!v30)
        {
          goto LABEL_19;
        }
      }

      else if (!v31)
      {
        goto LABEL_19;
      }

      if ((isPresentInLexicon & 1) == 0)
      {
        if (v31 >= 0)
        {
          v18 = v31;
        }

        else
        {
          v18 = v30;
        }

        v19 = &buf;
        std::string::basic_string[abi:ne200100](v15, v18 + 1);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = buf.__r_.__value_.__r.__words[0];
        }

        if (v18)
        {
          if (v31 >= 0)
          {
            v20 = &v29;
          }

          else
          {
            v20 = v29;
          }

          memmove(v19, v20, v18);
        }

        *(&v19->__r_.__value_.__l.__data_ + v18) = 32;
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v33;
        }

        else
        {
          v21 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v33.__r_.__value_.__l.__size_;
        }

        v23 = std::string::append(&buf, v21, v22);
        v24 = v23->__r_.__value_.__r.__words[0];
        v34[0] = v23->__r_.__value_.__l.__size_;
        *(v34 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
        v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if (*(a1 + 807) < 0)
        {
          operator delete(*(a1 + 784));
        }

        *(a1 + 784) = v24;
        *(a1 + 792) = v34[0];
        *(a1 + 799) = *(v34 + 7);
        *(a1 + 807) = v25;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        *(a1 + 834) = 1;
        InputTranscoder::TouchTranscoderSessionImpl::enumerateCandidatesImpl(a1, a2);
      }
    }
  }

LABEL_19:
  std::string::operator=((a1 + 784), &v33);
  *(a1 + 834) = 0;
  InputTranscoder::TouchTranscoderSessionImpl::enumerateCandidatesImpl(a1, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (v31 < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_254C44310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27)
{
  if (*(v27 - 89) < 0)
  {
    operator delete(*(v27 - 112));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  InputTranscoder::CTCConfiguration::~CTCConfiguration(&a27);
  _Unwind_Resume(a1);
}

void InputTranscoder::TouchTranscoderSessionImpl::enumerateCandidatesImpl(uint64_t a1, const __CFDictionary *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  theDict = a2;
  v3 = *(a1 + 568);
  v4 = *(a1 + 456);
  v46[0] = *(a1 + 440);
  v46[1] = v4;
  InputTranscoder::Path::Path(&v47, (a1 + 472));
  InputTranscoder::Path::Path(v51, (a1 + 520));
  v54 = *(a1 + 568);
  v55 = *(a1 + 576);
  if ((v3 & 1) == 0)
  {
    InputTranscoder::PathResampler::finalize(v46);
  }

  if (!*(a1 + 88) && (v48 - v47) < 0x41)
  {
    goto LABEL_62;
  }

  InputTranscoder::toLower(a1 + 784, buf);
  v5 = (a1 + 760);
  if (*(a1 + 783) < 0)
  {
    operator delete(*v5);
  }

  *v5 = *buf;
  *(a1 + 776) = *&buf[16];
  if (*(a1 + 88) != 1)
  {
LABEL_24:
    *(a1 + 832) = CFDictionaryContainsKey(theDict, @"normalizeAutoCorrectionsSeparately") != 0;
    *(a1 + 833) = CFDictionaryContainsKey(theDict, @"appendTopEnumeratedPrefixes") != 0;
    if (*(a1 + 807) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, *(a1 + 784), *(a1 + 792));
    }

    else
    {
      v40 = *(a1 + 784);
    }

    InputTranscoder::InputProcessor::InputProcessor(&v41, (a1 + 584), &v47, a1, &v40);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    v37 = 0;
    v38 = 0;
    v39 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v37, v41, v42, (v42 - v41) >> 2);
    if (v38 == v37)
    {
      v14 = 0;
      v15 = 0;
      v36 = 0u;
      v35 = 0u;
    }

    else
    {
      v13 = *(a1 + 664);
      (***(a1 + 680))(&v35);
      v15 = *(&v36 + 1);
      v14 = v36;
    }

    v34 = v35;
    v32 = v14;
    v33 = v15;
    if (!*(&v35 + 1) && v38 != v37)
    {
      if (_nlpDefaultLog::token != -1)
      {
        dispatch_once(&_nlpDefaultLog::token, &__block_literal_global_2);
      }

      v20 = _nlpDefaultLog::log;
      if (os_log_type_enabled(_nlpDefaultLog::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_254C34000, v20, OS_LOG_TYPE_ERROR, "call to model returned empty probabilities.", buf, 2u);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      *buf = &v45;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](buf);
      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      goto LABEL_62;
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    v27 = 0uLL;
    v28 = 0;
    memset(v26, 0, sizeof(v26));
    v16 = *(a1 + 240);
    if (v16)
    {
      v59 = v26;
      std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::CTCSurfaceFormOutput>>(v26, v16);
    }

    v17 = (a1 + 712);
    v18 = *(a1 + 735);
    if (v18 < 0)
    {
      v18 = *(a1 + 720);
      if (!v18)
      {
        goto LABEL_55;
      }

      v19 = *v17;
    }

    else
    {
      if (!*(a1 + 735))
      {
        goto LABEL_55;
      }

      v19 = a1 + 712;
    }

    v21 = *(v19 + v18 - 1);
    if ((v21 & 0x80000000) != 0)
    {
      if (!__maskrune(v21, 0x4000uLL))
      {
        goto LABEL_55;
      }
    }

    else if ((*(MEMORY[0x277D85DE0] + 4 * v21 + 60) & 0x4000) == 0)
    {
      goto LABEL_55;
    }

    if (qword_28143BC50 != -1)
    {
      dispatch_once(&qword_28143BC50, &__block_literal_global_1);
    }

    v22 = _MergedGlobals_1;
    if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
    {
      v25 = a1 + 712;
      if (*(a1 + 735) < 0)
      {
        v25 = *v17;
      }

      *buf = 136315394;
      *&buf[4] = "clearPrefixIfEndingWithSpace";
      *&buf[12] = 2080;
      *&buf[14] = v25;
      _os_log_debug_impl(&dword_254C34000, v22, OS_LOG_TYPE_DEBUG, "%s: prefix = [%s]", buf, 0x16u);
    }

    if (*(a1 + 735) < 0)
    {
      **(a1 + 712) = 0;
      *(a1 + 720) = 0;
    }

    else
    {
      *(a1 + 712) = 0;
      *(a1 + 735) = 0;
    }

LABEL_55:
    v23 = *(a1 + 664);
    v57 = 0;
    operator new();
  }

  v6 = *(a1 + 807);
  if (v6 < 0)
  {
    v7 = *(a1 + 784);
    v6 = *(a1 + 792);
    if (!v6)
    {
      goto LABEL_21;
    }

LABEL_12:
    v8 = MEMORY[0x277D85DE0];
    while (1)
    {
      v9 = *v7;
      v10 = (v9 & 0x80000000) != 0 ? __maskrune(*v7, 0x100uLL) : *(v8 + 4 * v9 + 60) & 0x100;
      if (v9 != 32 && v10 == 0)
      {
        goto LABEL_62;
      }

      ++v7;
      if (!--v6)
      {
        goto LABEL_21;
      }
    }
  }

  v7 = (a1 + 784);
  if (*(a1 + 807))
  {
    goto LABEL_12;
  }

LABEL_21:
  v12 = *(a1 + 783);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v12 = *(a1 + 768);
  }

  if (v12 > 2)
  {
    goto LABEL_24;
  }

LABEL_62:
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  v24 = *MEMORY[0x277D85DE8];
}