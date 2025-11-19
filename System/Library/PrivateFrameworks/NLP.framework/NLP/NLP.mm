uint64_t _nlpDefaultLog()
{
  if (_nlpDefaultLog::token != -1)
  {
    _nlpDefaultLog_cold_1();
  }

  return _nlpDefaultLog::log;
}

os_log_t ___nlpDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.NLP", "NLPDefaultLog");
  _nlpDefaultLog::log = result;
  return result;
}

uint64_t _nlpSignpostLog()
{
  if (_nlpSignpostLog::token != -1)
  {
    _nlpSignpostLog_cold_1();
  }

  return _nlpSignpostLog::log;
}

os_log_t ___nlpSignpostLog_block_invoke()
{
  result = os_log_create("com.apple.NLP", "NLPSignposts");
  _nlpSignpostLog::log = result;
  return result;
}

uint64_t createTextSlotWrapper(NLTextSlot *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_TextSlotWrapper)
  {
    qword_280C270B0 = 0;
    unk_280C270C0 = 0u;
    unk_280C270D0 = 0u;
    g_CFTypeID_TextSlotWrapper = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

uint64_t NLTextSlotGetRange(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return NLTextSlot::getRange(v1);
  }

  else
  {
    return -1;
  }
}

NLTextSlot *NLTextSlotGetSlotID(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return NLTextSlot::getSlotID(result);
  }

  return result;
}

NLTextSlot *NLTextSlotGetResolvedDate(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return NLTextSlot::getResolvedDate(result);
  }

  return result;
}

NLTextSlot *NLTextSlotIsAllDayEvent(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return NLTextSlot::getAllDayEventFlag(result);
  }

  return result;
}

uint64_t createTextSlotRecurrentEventWrapper(NLTextSlotRecurrentEvent *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_TextSlotRecurrentEventWrapper)
  {
    qword_280C27110 = 0;
    unk_280C27120 = 0u;
    unk_280C27130 = 0u;
    g_CFTypeID_TextSlotRecurrentEventWrapper = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

NL::AssetResource *NLTextSlotRecurrentEventGetEventStartDate(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return NL::AssetResource::URL(result);
  }

  return result;
}

NLTextSlotRecurrentEvent *NLTextSlotRecurrentEventGetEventEndDate(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return NLTextSlotRecurrentEvent::getEventEndDate(result);
  }

  return result;
}

NL::Resource *NLTextSlotRecurrentEventGetEventFrequency(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return NL::Resource::name(result);
  }

  return result;
}

uint64_t NLTextSlotRecurrentEventGetEventRange(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return NLTextStructuredEvent::getActionPhraseRange(v1);
  }

  else
  {
    return -1;
  }
}

NLTextSlotRecurrentEvent *NLTextSlotRecurrentEventIsAllDayEvent(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return NLTextSlotRecurrentEvent::getAllDayEventFlag(result);
  }

  return result;
}

uint64_t createTextStructuredEventWrapper(NLTextStructuredEvent *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_TextStructuredEventWrapper)
  {
    qword_280C272F0 = 0;
    unk_280C27300 = 0u;
    unk_280C27310 = 0u;
    g_CFTypeID_TextStructuredEventWrapper = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

uint64_t NLTextStructuredEventGetEventDescriptorRange(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return NLTextSlot::getRange(v1);
  }

  else
  {
    return -1;
  }
}

uint64_t NLTextStructuredEventGetActionPhraseRange(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return NLTextStructuredEvent::getActionPhraseRange(v1);
  }

  else
  {
    return -1;
  }
}

NL::Resource *NLTextStructuredEventGetEventFixedDateSlot(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    v2 = NL::Resource::name(result);

    return createTextSlotWrapper(v2);
  }

  return result;
}

NLTextStructuredEvent *NLTextStructuredEventGetRecurrentEvent(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    RecurrentEvent = NLTextStructuredEvent::getRecurrentEvent(result);

    return createTextSlotRecurrentEventWrapper(RecurrentEvent);
  }

  return result;
}

__CFArray *NLTextStructuredEventGetLocationRanges(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = *(a1 + 24);
  if (v3)
  {
    NLTextStructuredEvent::getLocationRanges(v3, &v8);
    v4 = v8;
    v5 = v9;
    if (v8 != v9)
    {
      do
      {
        TextSlotWrapper = createTextSlotWrapper(*v4);
        CFArrayAppendValue(Mutable, TextSlotWrapper);
        CFRelease(TextSlotWrapper);
        ++v4;
      }

      while (v4 != v5);
      v4 = v8;
    }

    if (v4)
    {
      v9 = v4;
      operator delete(v4);
    }
  }

  return Mutable;
}

void sub_22CD0C928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *NLTextStructuredEventGetPeopleRanges(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = *(a1 + 24);
  if (v3)
  {
    NLTextStructuredEvent::getPeopleRanges(v3, &v8);
    v4 = v8;
    v5 = v9;
    if (v8 != v9)
    {
      do
      {
        TextSlotWrapper = createTextSlotWrapper(*v4);
        CFArrayAppendValue(Mutable, TextSlotWrapper);
        CFRelease(TextSlotWrapper);
        ++v4;
      }

      while (v4 != v5);
      v4 = v8;
    }

    if (v4)
    {
      v9 = v4;
      operator delete(v4);
    }
  }

  return Mutable;
}

void sub_22CD0C9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t createTextSlotParserWrapper(NLTextSlotParser *a1)
{
  CFAllocatorGetDefault();
  if (!g_CFTypeID_TextSlotParserWrapper)
  {
    qword_280C27350 = 0;
    unk_280C27360 = 0u;
    unk_280C27370 = 0u;
    g_CFTypeID_TextSlotParserWrapper = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  return result;
}

const __CFDictionary *NLTextSlotParserCreate(const __CFDictionary *result)
{
  if (result)
  {
    CFDictionaryGetValue(result, kNLTextSlotParserLocaleKey[0]);
    operator new();
  }

  return result;
}

NLTextSlotParser *NLTextSlotParserCreateStructuredEvent(uint64_t a1, const __CFString *a2, const __CFTimeZone *a3)
{
  result = *(a1 + 24);
  if (result)
  {
    StructuredEvent = NLTextSlotParser::createStructuredEvent(result, a2, a3);

    return createTextStructuredEventWrapper(StructuredEvent);
  }

  return result;
}

void TextSlotWrapper::~TextSlotWrapper(TextSlotWrapper *this)
{
  TextSlotWrapper::~TextSlotWrapper(this);

  JUMPOUT(0x2318C0600);
}

{
  *this = &unk_28400F368;
  v2 = *(this + 1);
  if (v2)
  {
    NLTextSlot::~NLTextSlot(v2);
    MEMORY[0x2318C0600]();
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

void TextSlotRecurrentEventWrapper::~TextSlotRecurrentEventWrapper(TextSlotRecurrentEventWrapper *this)
{
  TextSlotRecurrentEventWrapper::~TextSlotRecurrentEventWrapper(this);

  JUMPOUT(0x2318C0600);
}

{
  *this = &unk_28400E400;
  v2 = *(this + 1);
  if (v2)
  {
    NLTextSlotRecurrentEvent::~NLTextSlotRecurrentEvent(v2);
    MEMORY[0x2318C0600]();
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

void TextStructuredEventWrapper::~TextStructuredEventWrapper(TextStructuredEventWrapper *this)
{
  TextStructuredEventWrapper::~TextStructuredEventWrapper(this);

  JUMPOUT(0x2318C0600);
}

{
  *this = &unk_28400E780;
  v2 = *(this + 1);
  if (v2)
  {
    NLTextStructuredEvent::~NLTextStructuredEvent(v2);
    MEMORY[0x2318C0600]();
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

void TextSlotParserWrapper::~TextSlotParserWrapper(TextSlotParserWrapper *this)
{
  TextSlotParserWrapper::~TextSlotParserWrapper(this);

  JUMPOUT(0x2318C0600);
}

{
  *this = &unk_28400EF90;
  v2 = *(this + 1);
  if (v2)
  {
    NLTextSlotParser::~NLTextSlotParser(v2);
    MEMORY[0x2318C0600]();
  }

  NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this);
}

void NL::SpotlightParseFormatter::SpotlightParseFormatter(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v8 = *a2;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v6 = *a3;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NL::ParseFormatter::ParseFormatter(a1, &v8, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  a1[18] = 0;
  a1[22] = 0;
  *a1 = &unk_28400E180;
  a1[21] = a1 + 22;
  a1[23] = 0;
  a1[25] = 0;
  a1[24] = a1 + 25;
  a1[19] = 0;
  a1[20] = 0;
  a1[26] = 0;
  a1[28] = 0;
  a1[27] = a1 + 28;
  a1[29] = 0;
  a1[31] = 0;
  a1[30] = a1 + 31;
  a1[34] = 0;
  a1[35] = 0;
  a1[32] = 0;
  a1[33] = a1 + 34;
  a1[37] = 0;
  a1[38] = 0;
  a1[36] = a1 + 37;
  operator new();
}

void sub_22CD0D070(_Unwind_Exception *a1)
{
  v8 = v6;
  MEMORY[0x2318C0600](v8, 0x1020C405730B0C9);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 + 288, *(v1 + 296));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1 + 264, *(v1 + 272));
  std::__tree<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>>>::destroy(v7, *(v1 + 248));
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(v5, *(v1 + 224));
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(v4, *(v1 + 200));
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(v3, *(v1 + 176));
  v10 = *(v1 + 160);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::unique_ptr<NL::SpotlightUserContext>::reset[abi:ne200100](v2, 0);
  NL::ParseFormatter::~ParseFormatter(v1);
  _Unwind_Resume(a1);
}

const void **std::unique_ptr<NL::SpotlightUserContext>::reset[abi:ne200100](const void ***a1, const void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    NL::SpotlightUserContext::~SpotlightUserContext(result);

    JUMPOUT(0x2318C0600);
  }

  return result;
}

void NL::SpotlightParseFormatter::loadDates(NL::SpotlightParseFormatter *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SENT");
  v27 = __p;
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v2 + 56, "kMDItemUserSharedSentDate");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MAILSENT");
  v27 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v3 + 56, "com_apple_mail_dateSent");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILSENT");
  v27 = __p;
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v4 + 56, "kMDItemContentCreationDate");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MESSAGESENT");
  v27 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v5 + 56, "kMDItemContentCreationDate");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MSGMESSAGESENT");
  v27 = __p;
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v6 + 56, "kMDItemContentCreationDate");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "RECEIVED");
  v27 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v7 + 56, "kMDItemUserSharedReceivedDate");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MAILRECEIVED");
  v27 = __p;
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v8 + 56, "com_apple_mail_dateReceived");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILRECEIVED");
  v27 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v9 + 56, "com_apple_mail_dateReceived");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MESSAGERECEIVED");
  v27 = __p;
  v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v10 + 56, "kMDItemDateAdded");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MSGMESSAGERECEIVED");
  v27 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v11 + 56, "kMDItemDateAdded");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "USERCREATED");
  v27 = __p;
  v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v12 + 56, "kMDItemUserCreatedDate");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "FILECREATED");
  v27 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v13 + 56, "kMDItemContentCreationDate");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "USERMODIFIED");
  v27 = __p;
  v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v14 + 56, "kMDItemUserModifiedDate");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MAILMODIFIED");
  v27 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v15 + 56, "kMDItemUsedDate");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "FILEMODIFIED");
  v27 = __p;
  v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v16 + 56, "kMDItemContentModificationDate");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "USERPRINTED");
  v27 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v17 + 56, "kMDItemUserPrintedDate");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "USERWEBVIEWED");
  v27 = __p;
  v18 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v18 + 56, "kMDItemDateAdded");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "FILEVIEWED");
  v27 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v19 + 56, "kMDItemLastUsedDate");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "WEBVIEWED");
  v27 = __p;
  v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v20 + 56, "kMDItemDateAdded");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MAILVIEWED");
  v27 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v21 + 56, "com_apple_mail_dateLastViewed");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "MAILMAILVIEWED");
  v27 = __p;
  v22 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v22 + 56, "com_apple_mail_dateLastViewed");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "FILEDOWNLOADED");
  v27 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v23 + 56, "kMDItemDownloadDate");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "FILEADDED");
  v27 = __p;
  v24 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 264, __p);
  MEMORY[0x2318C02F0](v24 + 56, "kMDItemDateAdded");
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22CD0D928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NL::SpotlightParseFormatter::load(uint64_t a1, int a2)
{
  v4 = (a1 + 224);
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a1 + 216, *(a1 + 224));
  *(a1 + 216) = v4;
  *v4 = 0;
  v5 = *(a1 + 176);
  *(a1 + 232) = 0;
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(a1 + 168, v5);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = a1 + 176;
  std::string::basic_string[abi:ne200100]<0>(v36, "TO");
  __p[0] = v36;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
  v38 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "kMDUserQueryRecipientKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "TO");
  __p[0] = v36;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
  v38 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "kMDUserQueryRecipientKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "SENTO");
  __p[0] = v36;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
  v38 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "kMDUserQueryRecipientKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "SENTO");
  __p[0] = v36;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
  v38 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "kMDUserQueryRecipientKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "RECIPIENT");
  __p[0] = v36;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
  v38 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "kMDUserQueryRecipientKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "RECIPIENT");
  __p[0] = v36;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
  v38 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "kMDUserQueryRecipientKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "FROM");
  __p[0] = v36;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
  v38 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "kMDUserQuerySenderKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "FROM");
  __p[0] = v36;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
  v38 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "kMDUserQuerySenderKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "SENDER");
  __p[0] = v36;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
  v38 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "kMDUserQuerySenderKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "SENDER");
  __p[0] = v36;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
  v38 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "kMDUserQuerySenderKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "KIND");
  __p[0] = v36;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "MailKind");
  v38 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "kMDUserQueryKindKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "KIND");
  __p[0] = v36;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "MessageKind");
  v38 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "kMDUserQueryKindKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "TITLED");
  __p[0] = v36;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v38 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "kMDUserQueryTitleKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v36, "ABOUT");
  __p[0] = v36;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 216, v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v38 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "kMDUserQueryTopicKey");
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (a2 == 1)
  {
    NL::SpotlightParseFormatter::loadMailTranslations(a1);
  }

  else if (a2 == 3)
  {
    NL::SpotlightParseFormatter::loadNotesTranslations(a1);
  }

  else
  {
    NL::SpotlightParseFormatter::loadSpotlightTranslations(a1);
  }

  NL::SpotlightParseFormatter::loadUserQueries(a1);
}

void sub_22CD0E2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NL::SpotlightParseFormatter::~SpotlightParseFormatter(NL::SpotlightParseFormatter *this)
{
  *this = &unk_28400E180;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 288, *(this + 37));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 264, *(this + 34));
  std::__tree<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>>>::destroy(this + 240, *(this + 31));
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(this + 216, *(this + 28));
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(this + 192, *(this + 25));
  std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::destroy(this + 168, *(this + 22));
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<NL::SpotlightUserContext>::reset[abi:ne200100](this + 18, 0);

  NL::ParseFormatter::~ParseFormatter(this);
}

{
  NL::SpotlightParseFormatter::~SpotlightParseFormatter(this);

  JUMPOUT(0x2318C0600);
}

__CFDictionary *NL::SpotlightParseFormatter::copyDefaultParseResult(const void **this, char a2)
{
  NL::SpotlightParseFormatter::reset(this);
  v4 = this[3];
  v5 = MEMORY[0x277CBECE8];
  if (v4 && (v6 = *(v4 + 13)) != 0)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], v6);
  }

  else
  {
    Copy = &stru_284010170;
  }

  nlp::CFScopedPtr<__CFString const*>::reset(this + 5, Copy);
  v8 = this[5];
  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = *(this[1] + 64);
  Length = CFStringGetLength(this[5]);
  v11 = 200;
  if (Length < 200)
  {
    v11 = Length;
  }

  if (Length < 801)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 == 0;
  v14 = 800;
  if (!v13)
  {
    v14 = Length;
  }

  v15.length = v9 ? v11 : v14;
  v15.location = 0;
  v16 = CFStringCreateWithSubstring(*v5, v8, v15);
  v26 = v16;
  if (v16)
  {
    v17 = v16;
    getUTF8StringFromCFString(v16, &v25);
    escapeContent(&v25);
    std::string::basic_string[abi:ne200100]<0>(&v24, "(** = %@*cdwt)");
    std::string::basic_string[abi:ne200100]<0>(__p, "%@");
    replaceAll(&v24, __p, &v25);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    CFStringFromString = createCFStringFromString(&v24);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    CFRelease(v17);
    if (CFStringFromString)
    {
      v19 = this[7];
      if (v19)
      {
        CFArrayAppendValue(v19, CFStringFromString);
      }
    }
  }

  else
  {
LABEL_26:
    CFStringFromString = 0;
  }

  v20 = NL::ParseFormatter::copyFormattedResult(this, a2);
  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  return v20;
}

void sub_22CD0E620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  nlp::CFScopedPtr<__CFString const*>::reset((v28 - 56), 0);
  _Unwind_Resume(a1);
}

void NL::SpotlightParseFormatter::reset(NL::SpotlightParseFormatter *this)
{
  v2 = *(*(this + 1) + 40);
  if (*(this + 24) != v2)
  {
    NL::SpotlightParseFormatter::load(this, v2);
  }

  NL::ParseFormatter::reset(this);
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

CFStringRef NL::SpotlightParseFormatter::copyDateRangeTerm(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a4 && a5)
  {
    if (a1 + 272 == std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 264, a2))
    {
      return 0;
    }

    v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 264, a2);
    CFStringFromString = createCFStringFromString(v10 + 56);
    if (!CFStringFromString)
    {
      return 0;
    }

    else
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"InRange(%@,%@,%@)", CFStringFromString, a4, a5, CFStringFromString);
      CFRelease(CFStringFromString);
    }
  }

  return v5;
}

void sub_22CD0E7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void *NL::SpotlightParseFormatter::copyTermForDate(uint64_t a1, uint64_t a2, void *a3, __CFCalendar **a4, int a5, __CFDictionary *a6, int a7)
{
  if (!a4)
  {
    return 0;
  }

  if (a7)
  {
    if (a6)
    {
      LODWORD(valuePtr[0]) = 42;
      v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
      v37[0] = v8;
      CFDictionarySetValue(a6, @"kMDUserQueryTypeKey", v8);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    return 0;
  }

  v13 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v37[9] = Mutable;
  if (!Mutable)
  {
    return 0;
  }

  v15 = Mutable;
  memset(v37, 0, 64);
  memset(valuePtr, 0, sizeof(valuePtr));
  NL::DatePeriod::resolveDateComponentsAsRange(a4, v37, valuePtr, a5);
  v16 = NL::DateFormatter::copyISODisplayForDateComponents((a1 + 104), a4[1], v37);
  v35 = v16;
  v18 = NL::DateFormatter::copyISODisplayForDateComponents((a1 + 104), a4[1], valuePtr);
  cf = v18;
  if (v16)
  {
    v19 = CFStringCreateWithFormat(v13, 0, @"$time.iso(%@)", v16);
  }

  else
  {
    v19 = @"0";
  }

  v33 = v19;
  if (v18)
  {
    v22 = CFStringCreateWithFormat(v13, 0, @"$time.iso(%@)", v18);
  }

  else
  {
    v22 = @"2147483647";
  }

  v32 = v22;
  if (a6)
  {
    v23 = NL::DateFormatter::copyDisplayForDate((a1 + 104), a4, a5, 0);
    v31.__r_.__value_.__r.__words[0] = v23;
    if (v23)
    {
      CFDictionarySetValue(a6, @"kMDUserQueryDateKey", v23);
    }

    if (v19)
    {
      CFDictionarySetValue(a6, @"kMDUserQueryDateStartKey", v19);
    }

    if (v22)
    {
      CFDictionarySetValue(a6, @"kMDUserQueryDateEndKey", v22);
    }

    if (v23)
    {
      CFRelease(v23);
    }
  }

  v26 = *a3;
  v24 = a3 + 1;
  v25 = v26;
  if (v26 != v24)
  {
    do
    {
      if (*(v25 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, v25[4], v25[5]);
      }

      else
      {
        v31 = *(v25 + 4);
      }

      value = NL::SpotlightParseFormatter::copyDateRangeTerm(a1, &v31.__r_.__value_.__l.__data_, v17, v19, v22);
      if (value)
      {
        v38.length = CFArrayGetCount(v15);
        v38.location = 0;
        if (!CFArrayContainsValue(v15, v38, value))
        {
          CFArrayAppendValue(v15, value);
        }

        CFRelease(value);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      v27 = v25[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v25[2];
          v29 = *v28 == v25;
          v25 = v28;
        }

        while (!v29);
      }

      v25 = v28;
    }

    while (v28 != v24);
  }

  v20 = copyDisplayTermForTerms(v15);
  if (v22)
  {
    CFRelease(v22);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  CFRelease(v15);
  return v20;
}

void sub_22CD0EB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, const void *a18, const void *a19, const void *a20, const void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a18, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a19, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a20, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a21, 0);
  nlp::CFScopedPtr<__CFArray *>::reset((v30 - 88), 0);
  _Unwind_Resume(a1);
}

void *copyDisplayTermForTerms(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!CFArrayGetCount(a1))
  {
    return 0;
  }

  if (!CFArrayGetCount(a1))
  {
    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];
  v3 = CFStringCreateByCombiningStrings(*MEMORY[0x277CBECE8], a1, @" || ");
  v8 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFArrayGetCount(a1) < 2)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = CFStringCreateWithFormat(v2, 0, @"(%@)", v4, v8);
  }

  v6 = v5;
  CFRelease(v4);
  return v6;
}

void sub_22CD0ECE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

NL::NumericValue *NL::SpotlightParseFormatter::copyTermForValue(uint64_t a1, const void **a2, const void **a3, NL::NumericValue *a4)
{
  v4 = a4;
  if (a4)
  {
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v20 = Mutable;
    if (Mutable)
    {
      v10 = Mutable;
      v19 = 0;
      memset(&v18, 0, sizeof(v18));
      if (a1 + 176 == std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 168, a2))
      {
        v14 = 0;
      }

      else
      {
        v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 168, a2);
        std::map<std::string,std::string>::map[abi:ne200100](&v16, (v11 + 56));
        if (&v17 == std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v16, a3))
        {
          v14 = 0;
        }

        else
        {
          v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v16, a3);
          std::string::operator=(&v18, (v12 + 56));
          std::string::basic_string[abi:ne200100]<0>(v22, "%@v1");
          NL::NumericValue::upper(v4, &__p);
          replaceAll(&v18, v22, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v23 < 0)
          {
            operator delete(v22[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(v22, "%@v2");
          NL::NumericValue::lower(v4, &__p);
          replaceAll(&v18, v22, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v23 < 0)
          {
            operator delete(v22[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(v22, "%@v");
          NL::NumericValue::value(v4, &__p);
          replaceAll(&v18, v22, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v23 < 0)
          {
            operator delete(v22[0]);
          }

          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &v18;
          }

          else
          {
            v13 = v18.__r_.__value_.__r.__words[0];
          }

          v14 = CFStringCreateWithCString(v8, v13, 0x8000100u);
          v19 = v14;
          v24.length = CFArrayGetCount(v10);
          v24.location = 0;
          if (!CFArrayContainsValue(v10, v24, v14))
          {
            CFArrayAppendValue(v10, v14);
          }
        }

        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v16, v17);
      }

      v4 = copyDisplayTermForTerms(v10);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
        if (!v14)
        {
LABEL_31:
          CFRelease(v10);
          return v4;
        }
      }

      else if (!v14)
      {
        goto LABEL_31;
      }

      CFRelease(v14);
      v10 = v20;
      if (v20)
      {
        goto LABEL_31;
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void sub_22CD0EF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, const void *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a9, a10);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a18, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(&a19, 0);
  _Unwind_Resume(a1);
}

uint64_t NL::SpotlightParseFormatter::copyTermForCount(uint64_t a1, const void **a2, const void **a3, int **a4, __CFDictionary *a5)
{
  if (a1 + 248 != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 240, a2))
  {
    v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 240, a2);
    std::map<std::string,NLSearchParseResultModifier>::map[abi:ne200100](&v22, (v10 + 56));
    if (&v23 == std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v22, a3))
    {
      goto LABEL_17;
    }

    valuePtr = *(std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v22, a3) + 56);
    v11 = *MEMORY[0x277CBECE8];
    v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    v20 = v12;
    if (!v12)
    {
      goto LABEL_17;
    }

    v19 = 0;
    if (a4)
    {
      v14 = *a4;
      v13 = a4[1];
      if (!v13)
      {
        if (!v14)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      if (v14)
      {
        v14 = *a4;
        v15 = a4[1];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = *v14;
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          goto LABEL_11;
        }

LABEL_10:
        v19 = *v14;
      }
    }

LABEL_11:
    v16 = CFNumberCreate(v11, kCFNumberIntType, &v19);
    v17 = v16;
    if (a5 && v16)
    {
      CFDictionarySetValue(a5, v12, v16);
    }

    else if (!v16)
    {
LABEL_16:
      CFRelease(v12);
LABEL_17:
      std::__tree<std::string>::destroy(&v22, v23);
      return 0;
    }

    CFRelease(v17);
    goto LABEL_16;
  }

  return 0;
}

void sub_22CD0F1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, const void *a12, uint64_t a13, char a14, char *a15)
{
  nlp::CFScopedPtr<__CFNumber const*>::reset(&a10, 0);
  nlp::CFScopedPtr<__CFNumber const*>::reset(&a12, 0);
  std::__tree<std::string>::destroy(&a14, a15);
  _Unwind_Resume(a1);
}

void *NL::SpotlightParseFormatter::copyTermForTranslation(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, __CFDictionary *a6)
{
  v11 = MEMORY[0x277CBECE8];
  if (a6 && a1 + 224 != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 216, a2))
  {
    v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 216, a2);
    v14 = std::map<std::string,std::string>::map[abi:ne200100](&v85, (v13 + 56));
    if (&v85.__r_.__value_.__r.__words[1] == std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v14, a3))
    {
      goto LABEL_13;
    }

    v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v85, a3);
    v16 = *v11;
    v17 = (v15 + 56);
    if (*(v15 + 79) < 0)
    {
      v17 = *v17;
    }

    v18 = CFStringCreateWithFormat(v16, 0, @"%s", v17);
    v19 = v18;
    v82.__r_.__value_.__r.__words[0] = v18;
    if (!v18)
    {
      goto LABEL_13;
    }

    if (CFStringHasPrefix(v18, @"kMDUserQueryKindKey"))
    {
      CFStringFromString = CFStringCreateWithFormat(v16, 0, @"%d", *(*(a1 + 152) + 4));
      v81.__r_.__value_.__r.__words[0] = CFStringFromString;
      if (CFStringFromString)
      {
        goto LABEL_11;
      }
    }

    else
    {
      CFStringFromString = createCFStringFromString(a5 + 24);
      v81.__r_.__value_.__r.__words[0] = CFStringFromString;
      if (CFStringFromString)
      {
LABEL_11:
        CFDictionarySetValue(a6, v19, CFStringFromString);
        CFRelease(CFStringFromString);
      }
    }

    CFRelease(v19);
LABEL_13:
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v85, v85.__r_.__value_.__l.__size_);
  }

  v74 = a5;
  alloc = *v11;
  Mutable = CFArrayCreateMutable(*v11, 0, MEMORY[0x277CBF128]);
  v84 = Mutable;
  if (!Mutable)
  {
    return 0;
  }

  v22 = Mutable;
  v83 = 0;
  memset(&v85, 0, sizeof(v85));
  std::to_string(&v82, **(a1 + 144));
  if (*(a5 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v81, *(a5 + 24), *(a5 + 32));
  }

  else
  {
    v81 = *(a5 + 24);
  }

  escapeContent(&v81);
  v24 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 168, a2);
  if (a1 + 176 == v24)
  {
    v31 = *a4;
    v30 = a4 + 1;
    v29 = v31;
    if (v31 == v30)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      v32 = 0;
      do
      {
        if (*(v29 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v80, v29[4], v29[5]);
        }

        else
        {
          v80 = *(v29 + 4);
        }

        if (v24 != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 168, &v80.__r_.__value_.__l.__data_))
        {
          v33 = v30;
          v34 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 168, &v80.__r_.__value_.__l.__data_);
          std::map<std::string,std::string>::map[abi:ne200100](&v78, (v34 + 56));
          v35 = v24;
          if (*(a2 + 23) >= 0)
          {
            v36 = *(a2 + 23);
          }

          else
          {
            v36 = *(a2 + 8);
          }

          std::string::basic_string[abi:ne200100](&v75, v36 + 1);
          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = &v75;
          }

          else
          {
            v37 = v75.__r_.__value_.__r.__words[0];
          }

          if (v36)
          {
            if (*(a2 + 23) >= 0)
            {
              v38 = a2;
            }

            else
            {
              v38 = *a2;
            }

            memmove(v37, v38, v36);
          }

          *(&v37->__r_.__value_.__l.__data_ + v36) = 46;
          v39 = *(a3 + 23);
          if (v39 >= 0)
          {
            v40 = a3;
          }

          else
          {
            v40 = *a3;
          }

          if (v39 >= 0)
          {
            v41 = *(a3 + 23);
          }

          else
          {
            v41 = *(a3 + 8);
          }

          v42 = std::string::append(&v75, v40, v41);
          v43 = *&v42->__r_.__value_.__l.__data_;
          v77 = v42->__r_.__value_.__r.__words[2];
          *__p = v43;
          v42->__r_.__value_.__l.__size_ = 0;
          v42->__r_.__value_.__r.__words[2] = 0;
          v42->__r_.__value_.__r.__words[0] = 0;
          v44 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v78, __p);
          v24 = v35;
          if (SHIBYTE(v77) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v75.__r_.__value_.__l.__data_);
          }

          if (&v79 == v44)
          {
            v55 = v32;
          }

          else
          {
            if (*(a2 + 23) >= 0)
            {
              v45 = *(a2 + 23);
            }

            else
            {
              v45 = *(a2 + 8);
            }

            std::string::basic_string[abi:ne200100](&v75, v45 + 1);
            if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v46 = &v75;
            }

            else
            {
              v46 = v75.__r_.__value_.__r.__words[0];
            }

            if (v45)
            {
              if (*(a2 + 23) >= 0)
              {
                v47 = a2;
              }

              else
              {
                v47 = *a2;
              }

              memmove(v46, v47, v45);
            }

            *(&v46->__r_.__value_.__l.__data_ + v45) = 46;
            v48 = *(a3 + 23);
            if (v48 >= 0)
            {
              v49 = a3;
            }

            else
            {
              v49 = *a3;
            }

            if (v48 >= 0)
            {
              v50 = *(a3 + 23);
            }

            else
            {
              v50 = *(a3 + 8);
            }

            v51 = std::string::append(&v75, v49, v50);
            v52 = *&v51->__r_.__value_.__l.__data_;
            v77 = v51->__r_.__value_.__r.__words[2];
            *__p = v52;
            v51->__r_.__value_.__l.__size_ = 0;
            v51->__r_.__value_.__r.__words[2] = 0;
            v51->__r_.__value_.__r.__words[0] = 0;
            v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v78, __p);
            v24 = v35;
            std::string::operator=(&v85, (v53 + 56));
            if (SHIBYTE(v77) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v75.__r_.__value_.__l.__data_);
            }

            updateTranslation(&v85, &v81, v74 + 72, &v82);
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v54 = &v85;
            }

            else
            {
              v54 = v85.__r_.__value_.__r.__words[0];
            }

            v55 = CFStringCreateWithCString(alloc, v54, 0x8000100u);
            if (v32)
            {
              CFRelease(v32);
            }

            v83 = v55;
            if (v55)
            {
              v56 = v84;
              v87.length = CFArrayGetCount(v84);
              v87.location = 0;
              if (!CFArrayContainsValue(v56, v87, v55))
              {
                CFArrayAppendValue(v56, v55);
              }
            }

            v57 = *(v74 + 71);
            if ((v57 & 0x80u) != 0)
            {
              v57 = *(v74 + 56);
            }

            if (v57)
            {
              if (*(a2 + 23) >= 0)
              {
                v58 = *(a2 + 23);
              }

              else
              {
                v58 = *(a2 + 8);
              }

              std::string::basic_string[abi:ne200100](&v75, v58 + 1);
              if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v59 = &v75;
              }

              else
              {
                v59 = v75.__r_.__value_.__r.__words[0];
              }

              if (v58)
              {
                if (*(a2 + 23) >= 0)
                {
                  v60 = a2;
                }

                else
                {
                  v60 = *a2;
                }

                memmove(v59, v60, v58);
              }

              *(&v59->__r_.__value_.__l.__data_ + v58) = 46;
              v61 = *(a3 + 23);
              if (v61 >= 0)
              {
                v62 = a3;
              }

              else
              {
                v62 = *a3;
              }

              if (v61 >= 0)
              {
                v63 = *(a3 + 23);
              }

              else
              {
                v63 = *(a3 + 8);
              }

              v64 = std::string::append(&v75, v62, v63);
              v65 = *&v64->__r_.__value_.__l.__data_;
              v77 = v64->__r_.__value_.__r.__words[2];
              *__p = v65;
              v64->__r_.__value_.__l.__size_ = 0;
              v64->__r_.__value_.__r.__words[2] = 0;
              v64->__r_.__value_.__r.__words[0] = 0;
              v66 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v78, __p);
              v24 = v35;
              std::string::operator=(&v85, (v66 + 56));
              if (SHIBYTE(v77) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v75.__r_.__value_.__l.__data_);
              }

              updateTranslation(&v85, v74 + 48, v74 + 72, &v82);
              if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v67 = &v85;
              }

              else
              {
                v67 = v85.__r_.__value_.__r.__words[0];
              }

              v28 = CFStringCreateWithCString(alloc, v67, 0x8000100u);
              if (v55)
              {
                CFRelease(v55);
              }

              v83 = v28;
              if (v28)
              {
                v68 = v84;
                v88.length = CFArrayGetCount(v84);
                v88.location = 0;
                if (!CFArrayContainsValue(v68, v88, v28))
                {
                  CFArrayAppendValue(v68, v28);
                }

                v55 = v28;
              }

              else
              {
                v55 = 0;
              }
            }

            else
            {
              v28 = v55;
            }
          }

          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v78, v79);
          v32 = v55;
          v30 = v33;
        }

        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v80.__r_.__value_.__l.__data_);
        }

        v69 = v29[1];
        if (v69)
        {
          do
          {
            v70 = v69;
            v69 = *v69;
          }

          while (v69);
        }

        else
        {
          do
          {
            v70 = v29[2];
            v71 = *v70 == v29;
            v29 = v70;
          }

          while (!v71);
        }

        v29 = v70;
      }

      while (v70 != v30);
      v22 = v84;
    }
  }

  else
  {
    v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 168, a2);
    std::map<std::string,std::string>::map[abi:ne200100](&v80, (v25 + 56));
    if (&v80.__r_.__value_.__r.__words[1] == std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v80, a3))
    {
      v28 = 0;
    }

    else
    {
      v26 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v80, a3);
      std::string::operator=(&v85, (v26 + 56));
      updateTranslation(&v85, &v81, a5 + 72, &v82);
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v85;
      }

      else
      {
        v27 = v85.__r_.__value_.__r.__words[0];
      }

      v28 = CFStringCreateWithCString(alloc, v27, 0x8000100u);
      v83 = v28;
      if (v28)
      {
        v86.length = CFArrayGetCount(v22);
        v86.location = 0;
        if (!CFArrayContainsValue(v22, v86, v28))
        {
          CFArrayAppendValue(v22, v28);
        }
      }
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v80, v80.__r_.__value_.__l.__size_);
  }

  v23 = copyDisplayTermForTerms(v22);
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
    if (v28)
    {
LABEL_138:
      CFRelease(v28);
      v22 = v84;
      if (!v84)
      {
        return v23;
      }

      goto LABEL_142;
    }
  }

  else if (v28)
  {
    goto LABEL_138;
  }

  if (v22)
  {
LABEL_142:
    CFRelease(v22);
  }

  return v23;
}

void sub_22CD0FA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&__p, 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v41 - 160), 0);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v41 - 120, *(v41 - 112));
  _Unwind_Resume(a1);
}

void escapeContent(std::string *a1)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "\\"");
  replaceAll(a1, v4, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "'");
  std::string::basic_string[abi:ne200100]<0>(__p, "'");
  replaceAll(a1, v4, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "$");
  std::string::basic_string[abi:ne200100]<0>(__p, "\\$");
  replaceAll(a1, v4, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "*");
  std::string::basic_string[abi:ne200100]<0>(__p, "\\*");
  replaceAll(a1, v4, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "+");
  std::string::basic_string[abi:ne200100]<0>(__p, "\\+");
  replaceAll(a1, v4, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v4, "=");
  std::string::basic_string[abi:ne200100]<0>(__p, "\\=");
  replaceAll(a1, v4, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_22CD0FD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void updateTranslation(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "%@v");
  replaceAll(a1, __p, a3);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "%@c");
  replaceAll(a1, __p, a2);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "%@uid");
  replaceAll(a1, __p, a4);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_22CD0FEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *NL::SpotlightParseFormatter::copyTermForEntityAndNameWithType(uint64_t a1, void *a2, int a3, const void **a4, unsigned __int8 *a5, void *a6, __CFDictionary *a7, __CFDictionary *a8, unsigned __int8 a9)
{
  std::string::basic_string[abi:ne200100]<0>(v33, "Max");
  if (startswith(a5, v33))
  {
    v17 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Min");
    v17 = startswith(a5, __p);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
    if (v17)
    {
      goto LABEL_7;
    }
  }

  else if (v17)
  {
LABEL_7:
    v18 = a2[18];
    v19 = a2[19];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    NL::SpotlightParseFormatter::copyTermForCount(a1, a4, a5, v18, a7);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "Date");
  if (endswith(a5, v33))
  {
    v22 = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Time");
    v22 = endswith(a5, __p);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
    if (v22)
    {
LABEL_19:
      v23 = a2[16];
      v24 = a2[17];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = NL::SpotlightParseFormatter::copyTermForDate(a1, v21, a6, v23, a3, a8, a9);
      if (v24)
      {
        v25 = v24;
LABEL_30:
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        return v20;
      }

      return v20;
    }
  }

  else if (v22)
  {
    goto LABEL_19;
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "Value");
  v26 = endswith(a5, v33);
  v27 = v26;
  if ((v34 & 0x80000000) == 0)
  {
    if (v26)
    {
      goto LABEL_26;
    }

    return NL::SpotlightParseFormatter::copyTermForTranslation(a1, a4, a5, a6, a2, a8);
  }

  operator delete(v33[0]);
  if (!v27)
  {
    return NL::SpotlightParseFormatter::copyTermForTranslation(a1, a4, a5, a6, a2, a8);
  }

LABEL_26:
  v28 = a2[18];
  v29 = a2[19];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = NL::SpotlightParseFormatter::copyTermForValue(a1, a4, a5, v28);
  if (v29)
  {
    v25 = v29;
    goto LABEL_30;
  }

  return v20;
}

void sub_22CD10134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
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

void NL::SpotlightParseFormatter::updateTermsWithAttributeForEntityInFormat(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, char a8)
{
  if (a2)
  {
    v9 = *a6;
    if (*a6)
    {
      v50 = 0;
      v51 = 0;
      v45 = 0;
      v46 = &v45;
      v47 = 0x3002000000;
      v48 = __Block_byref_object_copy_;
      v49 = __Block_byref_object_dispose_;
      v43[0] = 0;
      v43[1] = v43;
      v43[2] = 0x3002000000;
      v43[3] = __Block_byref_object_copy__31;
      v43[4] = __Block_byref_object_dispose__32;
      v44 = 0;
      if ((a8 & 4) != 0)
      {
        v13 = *MEMORY[0x277CBECE8];
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        v15 = v46;
        v51 = Mutable;
        v16 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        nlp::CFScopedPtr<__CFDictionary *>::reset(v15 + 5, v16);
        Count = CFArrayGetCount(a3);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
            MutableCopy = CFAttributedStringCreateMutableCopy(v13, 0, ValueAtIndex);
            v42 = MutableCopy;
            v21 = *a6;
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 1174405120;
            v37[2] = ___ZN2NL23SpotlightParseFormatter41updateTermsWithAttributeForEntityInFormatEP9__CFArrayS2_P14__CFDictionaryRKNSt3__13setINS5_12basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS5_4lessISC_EENSA_ISC_EEEENS5_10shared_ptrINS_14ParseAttributeEEERKNS_6EntityEj_block_invoke;
            v37[3] = &unk_28400D390;
            v37[4] = v43;
            v37[6] = a1;
            v37[7] = a7;
            v22 = a6[1];
            v37[8] = v21;
            v38 = v22;
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v37[5] = &v45;
            v39 = a5;
            v40 = a4;
            v41 = a2;
            NL::ParseAttribute::enumerateParseNamesWithType(v21, v37);
            if (MutableCopy)
            {
              v23 = v46[5];
              if (v23)
              {
                v24 = *(*a6 + 16);
                v25 = *(*a6 + 24);
                if (CFDictionaryGetCount(v23))
                {
                  if (CFDictionaryGetCount(v23))
                  {
                    v52.location = v24;
                    v52.length = v25;
                    CFAttributedStringSetAttributes(MutableCopy, v52, v23, 0);
                  }
                }
              }
            }

            v26 = v51;
            v53.length = CFArrayGetCount(v51);
            v53.location = 0;
            if (!CFArrayContainsValue(v26, v53, MutableCopy))
            {
              CFArrayAppendValue(v26, MutableCopy);
            }

            if (v38)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v38);
            }

            if (MutableCopy)
            {
              CFRelease(MutableCopy);
            }
          }
        }

        CFArrayRemoveAllValues(a3);
        v12 = v51;
        v54.length = CFArrayGetCount(v51);
        v54.location = 0;
        CFArrayAppendArray(a3, v12, v54);
      }

      else
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 1174405120;
        v32[2] = ___ZN2NL23SpotlightParseFormatter41updateTermsWithAttributeForEntityInFormatEP9__CFArrayS2_P14__CFDictionaryRKNSt3__13setINS5_12basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS5_4lessISC_EENSA_ISC_EEEENS5_10shared_ptrINS_14ParseAttributeEEERKNS_6EntityEj_block_invoke_34;
        v32[3] = &unk_28400D358;
        v32[4] = v43;
        v32[5] = a1;
        v32[6] = a7;
        v32[7] = v9;
        v11 = a6[1];
        v33 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = a5;
        v35 = a4;
        v36 = a2;
        NL::ParseAttribute::enumerateParseNamesWithType(v9, v32);
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        v12 = 0;
      }

      _Block_object_dispose(v43, 8);
      if (v44)
      {
        CFRelease(v44);
      }

      _Block_object_dispose(&v45, 8);
      if (v50)
      {
        CFRelease(v50);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }
  }
}

void sub_22CD105F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Block_object_dispose((v23 - 208), 8);
  nlp::CFScopedPtr<__CFString const*>::reset((v23 - 168), 0);
  _Block_object_dispose((v23 - 160), 8);
  nlp::CFScopedPtr<__CFDictionary *>::reset((v23 - 120), 0);
  nlp::CFScopedPtr<__CFArray *>::reset((v23 - 112), 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void nlp::CFScopedPtr<__CFArray *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
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

uint64_t NL::ParseAttribute::enumerateParseNamesWithType(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  if (*(result + 72) != v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    do
    {
      result = (*(a2 + 16))(a2, v2 + v5, v4[11] + v5);
      ++v6;
      v2 = v4[8];
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v4[9] - v2) >> 3) > v6);
  }

  return result;
}

void ___ZN2NL23SpotlightParseFormatter41updateTermsWithAttributeForEntityInFormatEP9__CFArrayS2_P14__CFDictionaryRKNSt3__13setINS5_12basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS5_4lessISC_EENSA_ISC_EEEENS5_10shared_ptrINS_14ParseAttributeEEERKNS_6EntityEj_block_invoke(uint64_t a1, const void **a2, unsigned __int8 *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = NL::SpotlightParseFormatter::copyTermForEntityAndNameWithType(*(a1 + 48), *(a1 + 56), *(*(a1 + 64) + 40), a2, a3, *(a1 + 80), *(a1 + 88), *(*(*(a1 + 40) + 8) + 40), *(*(a1 + 64) + 39));
  nlp::CFScopedPtr<__CFString const*>::reset((v4 + 40), v5);
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v6 = *(a1 + 96);
    v10.length = CFArrayGetCount(v6);
    v10.location = 0;
    if (!CFArrayContainsValue(v6, v10, *(*(*(a1 + 32) + 8) + 40)))
    {
      v7 = *(a1 + 96);
      v8 = *(*(*(a1 + 32) + 8) + 40);

      CFArrayAppendValue(v7, v8);
    }
  }
}

uint64_t __copy_helper_block_e8_64c47_ZTSNSt3__110shared_ptrIN2NL14ParseAttributeEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_64c47_ZTSNSt3__110shared_ptrIN2NL14ParseAttributeEEE(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN2NL23SpotlightParseFormatter41updateTermsWithAttributeForEntityInFormatEP9__CFArrayS2_P14__CFDictionaryRKNSt3__13setINS5_12basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS5_4lessISC_EENSA_ISC_EEEENS5_10shared_ptrINS_14ParseAttributeEEERKNS_6EntityEj_block_invoke_34(uint64_t a1, const void **a2, unsigned __int8 *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = NL::SpotlightParseFormatter::copyTermForEntityAndNameWithType(*(a1 + 40), *(a1 + 48), *(*(a1 + 56) + 40), a2, a3, *(a1 + 72), *(a1 + 80), 0, *(*(a1 + 56) + 39));
  nlp::CFScopedPtr<__CFString const*>::reset((v4 + 40), v5);
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v6 = *(a1 + 88);
    v10.length = CFArrayGetCount(v6);
    v10.location = 0;
    if (!CFArrayContainsValue(v6, v10, *(*(*(a1 + 32) + 8) + 40)))
    {
      v7 = *(a1 + 88);
      v8 = *(*(*(a1 + 32) + 8) + 40);

      CFArrayAppendValue(v7, v8);
    }
  }
}

uint64_t __copy_helper_block_e8_56c47_ZTSNSt3__110shared_ptrIN2NL14ParseAttributeEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c47_ZTSNSt3__110shared_ptrIN2NL14ParseAttributeEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

BOOL NL::SpotlightParseFormatter::updateParseResultForIntentAtIndex(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 160);
  *(a1 + 152) = v7;
  *(a1 + 160) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v96 = 0;
  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v95 = Mutable;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3002000000;
  v92 = __Block_byref_object_copy__36;
  v93 = __Block_byref_object_dispose__37;
  theArray = 0;
  v66 = 0;
  v94 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
  v83 = 0;
  v84 = &v83;
  v85 = 0x3002000000;
  v86 = __Block_byref_object_copy__36;
  v87 = __Block_byref_object_dispose__37;
  v88 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3002000000;
  v80 = __Block_byref_object_copy__36;
  v81 = __Block_byref_object_dispose__37;
  v82 = 0;
  v75 = 0;
  v76 = 0;
  v67 = a1;
  if ((a4 & 2) != 0)
  {
    v66 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
    v76 = v66;
    theArray = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
    v75 = theArray;
  }

  if ((a4 & 4) != 0)
  {
    v11 = v78;
    v12 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
    nlp::CFScopedPtr<__CFArray *>::reset(v11 + 5, v12);
    v13 = v84;
    v14 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
    nlp::CFScopedPtr<__CFArray *>::reset(v13 + 5, v14);
    v15 = CFAttributedStringCreateMutable(v9, 0);
    v100.__r_.__value_.__r.__words[0] = v15;
    v105.length = CFAttributedStringGetLength(v15);
    v105.location = 0;
    CFAttributedStringReplaceString(v15, v105, *(v67 + 40));
    CFArrayAppendValue(v84[5], v15);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  v62 = (*(*a2 + 48) - *(*a2 + 40)) >> 4;
  if (v62 < 1)
  {
    v62 = 0;
  }

  else
  {
    v61 = v9;
    for (i = 0; i != v62; ++i)
    {
      v17 = (*(*a2 + 40) + 16 * i);
      v18 = *v17;
      v19 = v17[1];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v64 = v19;
      v21 = *v18;
      v20 = *(v18 + 8);
      while (v21 != v20)
      {
        if ((a4 & 4) != 0)
        {
          v22 = v78[5];
          v23 = v84[5];
          v108.length = CFArrayGetCount(v23);
          v108.location = 0;
          CFArrayAppendArray(v22, v23, v108);
          CFArrayRemoveAllValues(v84[5]);
        }

        v24 = *v21;
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 1174405120;
        v70[2] = ___ZN2NL23SpotlightParseFormatter33updateParseResultForIntentAtIndexENSt3__110shared_ptrINS_11ParseIntentEEElj_block_invoke;
        v70[3] = &unk_28400D320;
        v70[4] = &v89;
        v70[5] = &v77;
        v26 = *a2;
        v25 = a2[1];
        v70[7] = v67;
        v70[8] = v26;
        v71 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v73 = a4;
        v74 = (a4 & 4) >> 2;
        v72 = v21;
        v70[6] = &v83;
        NL::ParseAttribute::enumerateEntities(v24, v70);
        if ((a4 & 4) != 0 && CFArrayGetCount(v78[5]))
        {
          CFArrayRemoveAllValues(v78[5]);
        }

        if (v71)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v71);
        }

        v21 += 2;
      }

      if ((a4 & 2) != 0)
      {
        Count = CFArrayGetCount(v90[5]);
        if (Count >= 1)
        {
          for (j = 0; j != Count; ++j)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v90[5], j);
            if (ValueAtIndex)
            {
              updateRankingTermsWithTerm(*(v67 + 72), v66, v75, ValueAtIndex, a3, i);
            }
          }

          theArray = v75;
        }

        if (CFArrayGetCount(theArray))
        {
          CFArrayRemoveAllValues(v66);
          v66 = v76;
          theArray = v75;
          v109.length = CFArrayGetCount(v75);
          v109.location = 0;
          CFArrayAppendArray(v66, theArray, v109);
          CFArrayRemoveAllValues(theArray);
        }
      }

      if (CFArrayGetCount(v90[5]))
      {
        v30 = copyDisplayTermForTerms(v90[5]);
        if (v96)
        {
          CFRelease(v96);
        }

        v96 = v30;
        if (v30)
        {
          v31 = v95;
          v106.length = CFArrayGetCount(v95);
          v106.location = 0;
          if (!CFArrayContainsValue(v31, v106, v30))
          {
            CFArrayAppendValue(v31, v30);
          }
        }

        CFArrayRemoveAllValues(v90[5]);
      }

      if (v64)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v64);
      }
    }

    Mutable = v95;
    v9 = v61;
  }

  v32 = CFArrayGetCount(Mutable);
  if (v32)
  {
    v33 = CFStringCreateByCombiningStrings(v9, Mutable, @" && ");
    cf = v33;
    if (v33)
    {
      CFArrayAppendValue(*(v67 + 56), v33);
      if ((a4 & 2) != 0)
      {
        updateRankingTermsWithTerm(*(v67 + 72), v66, v75, 0, a3, v62);
        updateRankingTermsWithQuery(*(v67 + 72), cf, a3 + v62 + 101);
      }

      v34 = *(*(v67 + 8) + 40);
      if (!CFPreferencesGetAppBooleanValue(@"NLSearchDisableDefault", *MEMORY[0x277CBF008], 0) && (v34 > 8 || ((1 << v34) & 0x188) == 0))
      {
        v44 = *(v67 + 40);
        if (!v44)
        {
          goto LABEL_117;
        }

        v45 = *(*(v67 + 8) + 64);
        Length = CFStringGetLength(*(v67 + 40));
        v47 = 200;
        if (Length < 200)
        {
          v47 = Length;
        }

        if (Length < 801)
        {
          v48 = 1;
        }

        else
        {
          v48 = v45;
        }

        v49 = v48 == 0;
        v50 = 800;
        if (!v49)
        {
          v50 = Length;
        }

        v51.length = v45 ? v47 : v50;
        v51.location = 0;
        v52 = CFStringCreateWithSubstring(v9, v44, v51);
        v53 = v52;
        v101 = v52;
        if (v52)
        {
          getUTF8StringFromCFString(v52, &v100);
          escapeContent(&v100);
          std::string::basic_string[abi:ne200100]<0>(&v99, "(kMDItemSubject=%@*cwd || kMDItemTitle=%@*cwd || kMDItemTopic=%@*cwd || kMDItemTextContent=%@*cd)");
          std::string::basic_string[abi:ne200100]<0>(v97, "%@");
          replaceAll(&v99, v97, &v100);
          if (v98 < 0)
          {
            operator delete(v97[0]);
          }

          CFStringFromString = createCFStringFromString(&v99);
          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v100.__r_.__value_.__l.__data_);
          }

          CFRelease(v53);
        }

        else
        {
LABEL_117:
          CFStringFromString = 0;
        }

        if (v96)
        {
          CFRelease(v96);
        }

        v96 = CFStringFromString;
        if (CFStringFromString)
        {
          v60 = *(v67 + 56);
          if (v60)
          {
            CFArrayAppendValue(v60, CFStringFromString);
          }

          if ((a4 & 2) != 0)
          {
            updateRankingTermsWithQuery(*(v67 + 72), v96, a3 + v62 + 1);
          }
        }
      }
    }

    if ((a4 & 8) == 0)
    {
      goto LABEL_94;
    }

    v35 = *(v67 + 80);
    v36 = *(v67 + 152);
    v37 = *(v67 + 160);
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a3 || !v35)
    {
LABEL_92:
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

LABEL_94:
      if ((a4 & 4) != 0)
      {
        v55 = CFArrayGetCount(v84[5]);
        if (v55 >= 1)
        {
          for (k = 0; k != v55; ++k)
          {
            v57 = CFArrayGetValueAtIndex(v84[5], k);
            v58 = *(v67 + 64);
            v107.length = CFArrayGetCount(v58);
            v107.location = 0;
            if (!CFArrayContainsValue(v58, v107, v57))
            {
              CFArrayAppendValue(*(v67 + 64), v57);
            }
          }
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_102;
    }

    v38 = *(v36 + 4);
    valuePtr = 1;
    v104[0] = v38;
    v39 = CFNumberCreate(v9, kCFNumberSInt32Type, &valuePtr);
    v100.__r_.__value_.__r.__words[0] = v39;
    v40 = CFNumberCreate(v9, kCFNumberSInt32Type, v104);
    v99.__r_.__value_.__r.__words[0] = v40;
    if (v40 && v39)
    {
      CFDictionarySetValue(v35, v40, v39);
    }

    if (*(v36 + 8))
    {
      v104[0] = *(v36 + 8);
      v102 = 2;
      v41 = CFNumberCreate(v9, kCFNumberSInt32Type, v104);
      v97[0] = v41;
      v42 = CFNumberCreate(v9, kCFNumberSInt32Type, &v102);
      v43 = v42;
      v101 = v42;
      if (v41)
      {
        if (!v42)
        {
LABEL_87:
          CFRelease(v41);
          goto LABEL_88;
        }

        CFDictionaryAddValue(v35, v41, v42);
      }

      else if (!v42)
      {
        goto LABEL_88;
      }

      CFRelease(v43);
      if (v41)
      {
        goto LABEL_87;
      }
    }

LABEL_88:
    if (v40)
    {
      CFRelease(v40);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    goto LABEL_92;
  }

LABEL_102:
  if (v75)
  {
    CFRelease(v75);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  _Block_object_dispose(&v77, 8);
  if (v82)
  {
    CFRelease(v82);
  }

  _Block_object_dispose(&v83, 8);
  if (v88)
  {
    CFRelease(v88);
  }

  _Block_object_dispose(&v89, 8);
  if (v94)
  {
    CFRelease(v94);
  }

  if (v95)
  {
    CFRelease(v95);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  return v32 != 0;
}

void sub_22CD11300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, const void *a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, const void *a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, const void *a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, const void *a49)
{
  if (*(v49 - 153) < 0)
  {
    operator delete(*(v49 - 176));
  }

  if (*(v49 - 129) < 0)
  {
    operator delete(*(v49 - 152));
  }

  nlp::CFScopedPtr<__CFString const*>::reset((v49 - 128), 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a17, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(&a30, 0);
  nlp::CFScopedPtr<__CFArray *>::reset(&a31, 0);
  _Block_object_dispose(&a32, 8);
  nlp::CFScopedPtr<__CFArray *>::reset(&a37, 0);
  _Block_object_dispose(&a38, 8);
  nlp::CFScopedPtr<__CFArray *>::reset(&a43, 0);
  _Block_object_dispose(&a44, 8);
  nlp::CFScopedPtr<__CFArray *>::reset(&a49, 0);
  nlp::CFScopedPtr<__CFArray *>::reset((v49 - 216), 0);
  nlp::CFScopedPtr<__CFString const*>::reset((v49 - 208), 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t NL::ParseAttribute::enumerateEntities(void *a1, uint64_t a2)
{
  v4 = a1[14];
  v3 = a1[15];
  if (v3 == v4)
  {
    result = (*(a2 + 16))(a2, a1[6]);
    v8 = a1[6];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v13 = ___ZNK2NL14ParseAttribute17enumerateEntitiesEU13block_pointerFvRKNS_6EntityEE_block_invoke;
    v14 = &unk_27873FC80;
    v15 = a2;
    v9 = *(v8 + 160);
    v10 = *(v8 + 168);
    while (v9 != v10)
    {
      v11 = *v9;
      v9 += 2;
      result = (v13)(v12, v11);
    }
  }

  else
  {
    do
    {
      v5 = *v4;
      v4 += 2;
      result = (*(a2 + 16))(a2, v5);
    }

    while (v4 != v3);
  }

  return result;
}

void ___ZN2NL23SpotlightParseFormatter33updateParseResultForIntentAtIndexENSt3__110shared_ptrINS_11ParseIntentEEElj_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = *(a1 + 56);
  v7 = *(v6 + 88);
  std::set<std::string>::set[abi:ne200100](v14, (*(a1 + 64) + 16));
  v8 = *(a1 + 80);
  v9 = v8[1];
  v13[0] = *v8;
  v13[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  NL::SpotlightParseFormatter::updateTermsWithAttributeForEntityInFormat(v6, v4, v5, v7, v14, v13, a2, *(a1 + 88));
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__tree<std::string>::destroy(v14, v14[1]);
  if (*(a1 + 92) == 1)
  {
    if (CFArrayGetCount(*(*(*(a1 + 40) + 8) + 40)))
    {
      v10 = *(a1 + 40);
      v11 = *(*(*(a1 + 48) + 8) + 40);
      v12 = *(*(v10 + 8) + 40);
      v15.length = CFArrayGetCount(v12);
      v15.location = 0;
      CFArrayAppendArray(v11, v12, v15);
    }
  }
}

void sub_22CD11728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::__tree<std::string>::destroy(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_64c44_ZTSNSt3__110shared_ptrIN2NL11ParseIntentEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_64c44_ZTSNSt3__110shared_ptrIN2NL11ParseIntentEEE(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void updateRankingTermsWithTerm(__CFDictionary *a1, CFArrayRef theArray, __CFArray *a3, const __CFString *a4, uint64_t a5, uint64_t a6)
{
  if (a1 && theArray)
  {
    if (a6 >= 2)
    {
      if (CFArrayGetCount(theArray))
      {
        valuePtr = a6 + a5 + 100;
        v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, &valuePtr);
        if (v12)
        {
          v13 = v12;
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
              if (!CFDictionaryContainsKey(a1, ValueAtIndex))
              {
                CFDictionarySetValue(a1, ValueAtIndex, v13);
              }
            }
          }

          CFRelease(v13);
        }
      }
    }

    if (a4)
    {
      valuePtr = a6 + a5;
      v17 = *MEMORY[0x277CBECE8];
      v18 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, &valuePtr);
      if (!CFDictionaryContainsKey(a1, a4))
      {
        CFDictionarySetValue(a1, a4, v18);
      }

      v19 = CFArrayGetCount(theArray);
      v20 = v19;
      if (v19)
      {
        if (v19 >= 1)
        {
          v21 = 0;
          do
          {
            v22 = CFArrayGetValueAtIndex(theArray, v21);
            v23 = CFStringCreateWithFormat(v17, 0, @"%@ && %@", v22, a4);
            if (v23)
            {
              CFArrayAppendValue(a3, v23);
              CFRelease(v23);
            }

            ++v21;
          }

          while (v20 != v21);
        }
      }

      else
      {
        CFArrayAppendValue(theArray, a4);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }
  }
}

void sub_22CD1195C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nlp::CFScopedPtr<__CFNumber const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void updateRankingTermsWithQuery(__CFDictionary *a1, const __CFString *a2, uint64_t a3)
{
  valuePtr = a3;
  if (a1 && !CFDictionaryContainsKey(a1, a2))
  {
    v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(a1, a2, v5);
      CFRelease(v6);
    }
  }
}

__CFDictionary *NL::SpotlightParseFormatter::copyParseResult(uint64_t a1, int **a2, uint64_t a3)
{
  NL::SpotlightParseFormatter::reset(a1);
  v6 = *(*(a1 + 24) + 104);
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = **a2;
  if (v7 <= 0)
  {
    goto LABEL_21;
  }

  *(a1 + 48) = v7;
  Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], v6);
  nlp::CFScopedPtr<__CFString const*>::reset((a1 + 40), Copy);
  if (!CFStringGetLength(*(a1 + 40)))
  {
    goto LABEL_21;
  }

  v9 = (*(*a2 + 2) - *(*a2 + 1)) >> 4;
  if (v9 < 1)
  {
    goto LABEL_21;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *(*a2 + 1);
    v13 = *(v12 + 16 * v10);
    v14 = *(v12 + 16 * v10 + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v13;
    if (NL::ParseIntent::confidence(v13) >= 1)
    {
      v19 = v18;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      updated = NL::SpotlightParseFormatter::updateParseResultForIntentAtIndex(a1, &v19, v10, a3);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      v11 |= updated;
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    ++v10;
  }

  while (v9 != v10);
  if (v11)
  {

    return NL::ParseFormatter::copyFormattedResult(a1, a3);
  }

  else
  {
LABEL_21:
    v17 = *(*a1 + 24);

    return v17(a1, a3);
  }
}

void sub_22CD11BF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void NL::SpotlightParseFormatter::loadUserQueries(NLAbstractOrthographyConvertor **this)
{
  v57[2] = *MEMORY[0x277D85DE8];
  if (*(this[1] + 2))
  {
    NLAbstractOrthographyConvertor::~NLAbstractOrthographyConvertor(this[18]);
  }

  v2 = NL::SpotlightUserContext::copyUserNames(this[18]);
  v55 = v2;
  if (v2)
  {
    v3 = v2;
    if (CFSetGetCount(v2))
    {
      v4 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v54 = Mutable;
      if (Mutable)
      {
        Count = CFSetGetCount(v3);
        v46 = &v44;
        MEMORY[0x28223BE20]();
        v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
        if (v7 >= 0x200)
        {
          v9 = 512;
        }

        else
        {
          v9 = v7;
        }

        bzero(&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
        CFSetGetValues(v3, v8);
        if (Count >= 1)
        {
          v10 = v8;
          v11 = Count;
          do
          {
            v12 = CFStringCreateWithFormat(v4, 0, @"kMDItemAuthors=%@cwd", *v10);
            __str.__r_.__value_.__r.__words[0] = v12;
            CFArrayAppendValue(Mutable, v12);
            if (v12)
            {
              CFRelease(v12);
            }

            ++v10;
            --v11;
          }

          while (v11);
        }

        v13 = CFStringCreateByCombiningStrings(v4, Mutable, @" || ");
        v14 = v13;
        v53 = v13;
        if (v13)
        {
          getUTF8StringFromCFString(v13, &__str);
          std::operator+<char>();
          v15 = std::string::append(&v51, ")");
          size = v15->__r_.__value_.__l.__size_;
          v45 = v15->__r_.__value_.__r.__words[0];
          v57[0] = size;
          *(v57 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
          v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          std::string::basic_string[abi:ne200100]<0>(v49, "MSGMESSAGESENT");
          v47[0] = v49;
          v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v49);
          std::string::basic_string[abi:ne200100]<0>(v47, "SENDER.HasUserSent");
          v56 = v47;
          v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, v47);
          v20 = v19;
          if (*(v19 + 79) < 0)
          {
            operator delete(*(v19 + 56));
          }

          v21 = v57[0];
          *(v20 + 56) = v45;
          *(v20 + 64) = v21;
          *(v20 + 71) = *(v57 + 7);
          *(v20 + 79) = v17;
          if (v48 < 0)
          {
            operator delete(v47[0]);
          }

          if (v50 < 0)
          {
            operator delete(v49[0]);
          }

          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        CFArrayRemoveAllValues(Mutable);
        if (Count >= 1)
        {
          v22 = Count;
          do
          {
            v23 = CFStringCreateWithFormat(v4, 0, @"kMDItemUserSharedReceivedRecipient=%@cwd", *v8);
            __str.__r_.__value_.__r.__words[0] = v23;
            CFArrayAppendValue(Mutable, v23);
            if (v23)
            {
              CFRelease(v23);
            }

            ++v8;
            --v22;
          }

          while (v22);
        }

        v24 = CFStringCreateByCombiningStrings(v4, Mutable, @" || ");
        if (v14)
        {
          CFRelease(v14);
        }

        v53 = v24;
        if (v24)
        {
          getUTF8StringFromCFString(v24, &__str);
          if (Count < 2)
          {
            std::string::basic_string[abi:ne200100]<0>(&v51, "MAILRECEIVED");
            v49[0] = &v51;
            v39 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), &v51.__r_.__value_.__l.__data_);
            std::string::basic_string[abi:ne200100]<0>(v49, "RECIPIENT.HasUserReceived");
            v47[0] = v49;
            v40 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v39 + 56, v49);
            std::string::operator=((v40 + 56), &__str);
            if (v50 < 0)
            {
              operator delete(v49[0]);
            }

            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            std::string::basic_string[abi:ne200100]<0>(&v51, "MESSAGERECEIVED");
            v49[0] = &v51;
            v41 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), &v51.__r_.__value_.__l.__data_);
            std::string::basic_string[abi:ne200100]<0>(v49, "RECIPIENT.HasUserReceived");
            v47[0] = v49;
            v42 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v41 + 56, v49);
            std::string::operator=((v42 + 56), &__str);
          }

          else
          {
            std::operator+<char>();
            v25 = std::string::append(&v51, ")");
            v26 = v25->__r_.__value_.__r.__words[0];
            v57[0] = v25->__r_.__value_.__l.__size_;
            *(v57 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
            v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            std::string::basic_string[abi:ne200100]<0>(v49, "MAILRECEIVED");
            v47[0] = v49;
            v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v49);
            std::string::basic_string[abi:ne200100]<0>(v47, "RECIPIENT.HasUserReceived");
            v56 = v47;
            v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, v47);
            v30 = v29;
            if (*(v29 + 79) < 0)
            {
              operator delete(*(v29 + 56));
            }

            v31 = v57[0];
            *(v30 + 56) = v26;
            *(v30 + 64) = v31;
            *(v30 + 71) = *(v57 + 7);
            *(v30 + 79) = v27;
            if (v48 < 0)
            {
              operator delete(v47[0]);
            }

            if (v50 < 0)
            {
              operator delete(v49[0]);
            }

            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            std::operator+<char>();
            v32 = std::string::append(&v51, ")");
            v33 = v32->__r_.__value_.__r.__words[0];
            v57[0] = v32->__r_.__value_.__l.__size_;
            *(v57 + 7) = *(&v32->__r_.__value_.__r.__words[1] + 7);
            v34 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
            v32->__r_.__value_.__l.__size_ = 0;
            v32->__r_.__value_.__r.__words[2] = 0;
            v32->__r_.__value_.__r.__words[0] = 0;
            std::string::basic_string[abi:ne200100]<0>(v49, "MESSAGERECEIVED");
            v47[0] = v49;
            v35 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v49);
            std::string::basic_string[abi:ne200100]<0>(v47, "RECIPIENT.HasUserReceived");
            v56 = v47;
            v36 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v35 + 56, v47);
            v37 = v36;
            if (*(v36 + 79) < 0)
            {
              operator delete(*(v36 + 56));
            }

            v38 = v57[0];
            *(v37 + 56) = v33;
            *(v37 + 64) = v38;
            *(v37 + 71) = *(v57 + 7);
            *(v37 + 79) = v34;
            if (v48 < 0)
            {
              operator delete(v47[0]);
            }
          }

          if (v50 < 0)
          {
            operator delete(v49[0]);
          }

          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          CFRelease(v24);
        }

        CFRelease(Mutable);
      }
    }

    CFRelease(v3);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void sub_22CD1230C(_Unwind_Exception *a1)
{
  if (*(v3 - 225) < 0)
  {
    operator delete(*(v3 - 248));
  }

  if (*(v3 - 201) < 0)
  {
    operator delete(*(v3 - 224));
  }

  if (v2 < 0)
  {
    operator delete(v1);
  }

  if (*(v3 - 177) < 0)
  {
    operator delete(*(v3 - 200));
  }

  if (*(v3 - 153) < 0)
  {
    operator delete(*(v3 - 176));
  }

  nlp::CFScopedPtr<__CFString const*>::reset((v3 - 152), 0);
  nlp::CFScopedPtr<__CFArray *>::reset((v3 - 144), 0);
  nlp::CFScopedPtr<__CFSet const*>::reset((v3 - 136), 0);
  _Unwind_Resume(a1);
}

void NL::SpotlightParseFormatter::loadMailTranslations(NL::ParserContext **this)
{
  updateNLPResultModifierTranslations((this + 21), (this + 30));
  updateNLPUserActionTranslations((this + 21));
  updateMailFileTypeTranslations((this + 21));
  updateMailAttachmentTranslations((this + 21));
  updateMailTransportTranslations((this + 21));
  updateNLPValueTranslations((this + 21));
  if (NL::ParserContext::languageIsCJ(this[1]))
  {
    updateSpotlightSenderReceiverTranslations_Tokenize((this + 21));
  }

  else
  {
    updateSpotlightSenderReceiverTranslations((this + 21));
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "CONTAINER");
  __p[0] = v72;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "ChatClient");
  v74 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "kMDItemContentType=com.apple.ichat.transcript");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "CONTAINER");
  __p[0] = v72;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "MailClient");
  v74 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "(kMDItemContentType=com.apple.mail.emlx || kMDItemContentType=public.email-message)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "CONTAINER");
  __p[0] = v72;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "MessageClient");
  v74 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "(_kMDItemGroupId=1 || kMDItemContentType=com.apple.ichat.transcript)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "FACEBOOKED");
  __p[0] = v72;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "FacebookImageKind");
  v74 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "kMDItemUserSharedSentTransport=facebook*cwd && _kMDItemGroupId=13");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "ABOUT");
  __p[0] = v72;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v74 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "(kMDItemTextContent=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "ABOUT");
  __p[0] = v72;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v74 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "(kMDItemTextContent=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "TOPICMOD");
  __p[0] = v72;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v74 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "(kMDItemTextContent=%@c*cwd || kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "TITLED");
  __p[0] = v72;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v74 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "(kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "TITLED");
  __p[0] = v72;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v74 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "(kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "TITLED");
  __p[0] = v72;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v74 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "(kMDItemFSName=%@c*cwd || kMDItemTitle=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "ENTITLED");
  __p[0] = v72;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v74 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "(kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "ENTITLED");
  __p[0] = v72;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "OpenText");
  v74 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "(kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "ENTITLED");
  __p[0] = v72;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v74 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "(kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "ENTITLED");
  __p[0] = v72;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "NameText");
  v74 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "(kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "ENTITLED");
  __p[0] = v72;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "DateText");
  v74 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "(kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "ENTITLED");
  __p[0] = v72;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v74 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "(kMDItemFSName=%@c*cwd || kMDItemTitle=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "FILETITLED");
  __p[0] = v72;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v74 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "(_kMDItemGroupId=5 || _kMDItemGroupId=7 || _kMDItemGroupId=10 || _kMDItemGroupId=11 || _kMDItemGroupId=12 || _kMDItemGroupId=13 || _kMDItemGroupId=14 || _kMDItemGroupId=16 || _kMDItemGroupId=18 || (_kMDItemGroupId=15 && kMDItemContentTypeTree=public.directory)) && (kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "FILETITLED");
  __p[0] = v72;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "OpenText");
  v74 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "(_kMDItemGroupId=5 || _kMDItemGroupId=7 || _kMDItemGroupId=10 || _kMDItemGroupId=11 || _kMDItemGroupId=12 || _kMDItemGroupId=13 || _kMDItemGroupId=14 || _kMDItemGroupId=16 || _kMDItemGroupId=18 || (_kMDItemGroupId=15 && kMDItemContentTypeTree=public.directory)) && (kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "FILETITLED");
  __p[0] = v72;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v74 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "(_kMDItemGroupId=5 || _kMDItemGroupId=7 || _kMDItemGroupId=10 || _kMDItemGroupId=11 || _kMDItemGroupId=12 || _kMDItemGroupId=13 || _kMDItemGroupId=14 || _kMDItemGroupId=16 || _kMDItemGroupId=18 || (_kMDItemGroupId=15 && kMDItemContentTypeTree=public.directory)) && (kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "FILETITLED");
  __p[0] = v72;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v74 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "(_kMDItemGroupId=5 || _kMDItemGroupId=7 || _kMDItemGroupId=10 || _kMDItemGroupId=11 || _kMDItemGroupId=12 || _kMDItemGroupId=13 || _kMDItemGroupId=14 || _kMDItemGroupId=16 || _kMDItemGroupId=18 || (_kMDItemGroupId=15 && kMDItemContentTypeTree=public.directory)) && (kMDItemFSName=%@c*cwd || kMDItemTitle=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "FILENAMED");
  __p[0] = v72;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v74 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "(kMDItemFSName=%@c*cwd || kMDItemTitle=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "READMOD");
  __p[0] = v72;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Read");
  v74 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "com_apple_mail_read=%@v");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "REPLYMOD");
  __p[0] = v72;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Reply");
  v74 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "com_apple_mail_repliedTo=%@v");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "REPLYMOD");
  __p[0] = v72;
  v48 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Replied");
  v74 = __p;
  v49 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48 + 56, __p);
  MEMORY[0x2318C02F0](v49 + 56, "com_apple_mail_repliedTo=%@v");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "REPLIED");
  __p[0] = v72;
  v50 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Reply");
  v74 = __p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v50 + 56, __p);
  MEMORY[0x2318C02F0](v51 + 56, "com_apple_mail_repliedTo=%@v");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "REPLIED");
  __p[0] = v72;
  v52 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Replied");
  v74 = __p;
  v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v52 + 56, __p);
  MEMORY[0x2318C02F0](v53 + 56, "com_apple_mail_repliedTo=%@v");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "IGNOREMOD");
  __p[0] = v72;
  v54 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasIgnored");
  v74 = __p;
  v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v54 + 56, __p);
  MEMORY[0x2318C02F0](v55 + 56, "(com_apple_mail_repliedTo=0 || com_apple_mail_read=0)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "FLAGMOD");
  __p[0] = v72;
  v56 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "FlagColor");
  v74 = __p;
  v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v56 + 56, __p);
  MEMORY[0x2318C02F0](v57 + 56, "com_apple_mail_flagColor=%@v");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "FLAGGED");
  __p[0] = v72;
  v58 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "FlagColor");
  v74 = __p;
  v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v58 + 56, __p);
  MEMORY[0x2318C02F0](v59 + 56, "com_apple_mail_flagColor=%@v");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "FLAGMOD");
  __p[0] = v72;
  v60 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasFlagged");
  v74 = __p;
  v61 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v60 + 56, __p);
  MEMORY[0x2318C02F0](v61 + 56, "com_apple_mail_flagged=%@v");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "FLAGMOD");
  __p[0] = v72;
  v62 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Flag");
  v74 = __p;
  v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v62 + 56, __p);
  MEMORY[0x2318C02F0](v63 + 56, "com_apple_mail_flagged=%@v");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "FLAGGED");
  __p[0] = v72;
  v64 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Flag");
  v74 = __p;
  v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v64 + 56, __p);
  MEMORY[0x2318C02F0](v65 + 56, "com_apple_mail_flagged=%@v");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "SUBJECTMOD");
  __p[0] = v72;
  v66 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "Subject");
  v74 = __p;
  v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v66 + 56, __p);
  MEMORY[0x2318C02F0](v67 + 56, "(kMDItemSubject!=*cwd || kMDItemSubject=cwd)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v72, "QUOTED");
  __p[0] = v72;
  v68 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v72);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v74 = __p;
  v69 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v68 + 56, __p);
  MEMORY[0x2318C02F0](v69 + 56, "(** = %@c*cdw)");
  if (v71 < 0)
  {
    operator delete(__p[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }
}

void sub_22CD13A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NL::SpotlightParseFormatter::loadNotesTranslations(NL::ParserContext **this)
{
  updateNLPValueTranslations((this + 21));
  updateNLPResultModifierTranslations((this + 21), (this + 30));
  updateNotesFileTypeTranslations((this + 21));
  updateNotesAttachmentTranslations((this + 21));
  updateSpotlightTransportTranslations((this + 21));
  std::string::basic_string[abi:ne200100]<0>(v126, "ABOUT");
  __p[0] = v126;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v128 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "(kMDItemDisplayName=%@c*cwd || kMDItemTextContent=%@c*cwd)");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "ABOUT");
  __p[0] = v126;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "DateText");
  v128 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "(kMDItemDisplayName=%@c*cwd || kMDItemTextContent=%@c*cwd)");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "ABOUT");
  __p[0] = v126;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "NameText");
  v128 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "(kMDItemDisplayName=%@c*cwd || kMDItemTextContent=%@c*cwd)");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "ABOUT");
  __p[0] = v126;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v128 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "(kMDItemDisplayName=%@c*cwd || kMDItemTextContent=%@c*cwd)");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "TOPICMOD");
  __p[0] = v126;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v128 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "(kMDItemDisplayName=%@c*cwd || kMDItemTextContent=%@c*cwd)");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "TITLED");
  __p[0] = v126;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v128 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "kMDItemDisplayName=%@c*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "TITLED");
  __p[0] = v126;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "NameText");
  v128 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "kMDItemDisplayName=%@c*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "TITLED");
  __p[0] = v126;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "DateText");
  v128 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "kMDItemDisplayName=%@c*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "TITLED");
  __p[0] = v126;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v128 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "kMDItemDisplayName=%@c*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "TITLED");
  __p[0] = v126;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v128 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "kMDItemDisplayName=%@c*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "ENTITLED");
  __p[0] = v126;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v128 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "kMDItemDisplayName=%@c*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "ENTITLED");
  __p[0] = v126;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "NameText");
  v128 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "kMDItemDisplayName=%@c*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "ENTITLED");
  __p[0] = v126;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "DateText");
  v128 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "kMDItemDisplayName=%@c*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "ENTITLED");
  __p[0] = v126;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v128 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "kMDItemDisplayName=%@c*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "ENTITLED");
  __p[0] = v126;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v128 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "kMDItemDisplayName=%@c*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "FILETITLED");
  __p[0] = v126;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v128 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "(kMDItemAttachmentTypes=*cwd && kMDItemDisplayName=%@c*cwd)");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "FILETITLED");
  __p[0] = v126;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v128 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "(kMDItemAttachmentTypes=*cwd && kMDItemDisplayName=%@c*cwd)");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "FILETITLED");
  __p[0] = v126;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v128 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "(kMDItemAttachmentTypes=*cwd && kMDItemDisplayName=%@c*cwd)");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "FILENAMED");
  __p[0] = v126;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v128 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "kMDItemDisplayName=%@c*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "QUOTED");
  __p[0] = v126;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v128 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "** = %@c*cdw");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "SHATED");
  __p[0] = v126;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasShared");
  v128 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "kMDItemAuthors=*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "SENT");
  __p[0] = v126;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasShared");
  v128 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "kMDItemAuthors=*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVED");
  __p[0] = v126;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasShared");
  v128 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "kMDItemAuthors=*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "FILECREATED");
  __p[0] = v126;
  v48 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
  v128 = __p;
  v49 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48 + 56, __p);
  MEMORY[0x2318C02F0](v49 + 56, "kMDItemAuthors=%@c*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "SHARED");
  __p[0] = v126;
  v50 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasUserShared");
  v128 = __p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v50 + 56, __p);
  MEMORY[0x2318C02F0](v51 + 56, "kMDItemAuthors=*cwd");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  if (NL::ParserContext::languageIsCJ(this[1]))
  {
    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVED");
    __p[0] = v126;
    v52 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
    v128 = __p;
    v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v52 + 56, __p);
    MEMORY[0x2318C02F0](v53 + 56, "kMDItemAuthors=%@c*cwdt");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVED");
    __p[0] = v126;
    v54 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
    v128 = __p;
    v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v54 + 56, __p);
    MEMORY[0x2318C02F0](v55 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVED");
    __p[0] = v126;
    v56 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
    v128 = __p;
    v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v56 + 56, __p);
    MEMORY[0x2318C02F0](v57 + 56, "kMDItemAuthors=%@c*cwdt");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVED");
    __p[0] = v126;
    v58 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
    v128 = __p;
    v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v58 + 56, __p);
    MEMORY[0x2318C02F0](v59 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVED");
    __p[0] = v126;
    v60 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasUserReceived");
    v128 = __p;
    v61 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v60 + 56, __p);
    MEMORY[0x2318C02F0](v61 + 56, "kMDItemAuthors=*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENT");
    __p[0] = v126;
    v62 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasUserSent");
    v128 = __p;
    v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v62 + 56, __p);
    MEMORY[0x2318C02F0](v63 + 56, "kMDItemAuthors=*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENT");
    __p[0] = v126;
    v64 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
    v128 = __p;
    v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v64 + 56, __p);
    MEMORY[0x2318C02F0](v65 + 56, "kMDItemAuthors=%@c*cwdt");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENT");
    __p[0] = v126;
    v66 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
    v128 = __p;
    v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v66 + 56, __p);
    MEMORY[0x2318C02F0](v67 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENT");
    __p[0] = v126;
    v68 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
    v128 = __p;
    v69 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v68 + 56, __p);
    MEMORY[0x2318C02F0](v69 + 56, "kMDItemAuthors=%@c*cwdt");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENT");
    __p[0] = v126;
    v70 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
    v128 = __p;
    v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v70 + 56, __p);
    MEMORY[0x2318C02F0](v71 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENTFROM");
    __p[0] = v126;
    v72 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
    v128 = __p;
    v73 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v72 + 56, __p);
    MEMORY[0x2318C02F0](v73 + 56, "kMDItemAuthors=%@c*cwdt");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENTFROM");
    __p[0] = v126;
    v74 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
    v128 = __p;
    v75 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v74 + 56, __p);
    MEMORY[0x2318C02F0](v75 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "FROMTO");
    __p[0] = v126;
    v76 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
    v128 = __p;
    v77 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v76 + 56, __p);
    MEMORY[0x2318C02F0](v77 + 56, "kMDItemAuthors=%@c*cwdt");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "FROMTO");
    __p[0] = v126;
    v78 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
    v128 = __p;
    v79 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v78 + 56, __p);
    MEMORY[0x2318C02F0](v79 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "AUTHORED");
    __p[0] = v126;
    v80 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
    v128 = __p;
    v81 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v80 + 56, __p);
    MEMORY[0x2318C02F0](v81 + 56, "(kMDItemAuthors=%@c*cwdt || kMDItemAuthorEmailAddresses=%@c)");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVED");
    __p[0] = v126;
    v82 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
    v128 = __p;
    v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v82 + 56, __p);
    MEMORY[0x2318C02F0](v83 + 56, "kMDItemAuthors=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVED");
    __p[0] = v126;
    v84 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
    v128 = __p;
    v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v84 + 56, __p);
    MEMORY[0x2318C02F0](v85 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVED");
    __p[0] = v126;
    v86 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
    v128 = __p;
    v87 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v86 + 56, __p);
    MEMORY[0x2318C02F0](v87 + 56, "kMDItemAuthors=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVED");
    __p[0] = v126;
    v88 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
    v128 = __p;
    v89 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v88 + 56, __p);
    MEMORY[0x2318C02F0](v89 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVED");
    __p[0] = v126;
    v90 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasUserReceived");
    v128 = __p;
    v91 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v90 + 56, __p);
    MEMORY[0x2318C02F0](v91 + 56, "kMDItemAuthors=*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVEDFROM");
    __p[0] = v126;
    v92 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
    v128 = __p;
    v93 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v92 + 56, __p);
    MEMORY[0x2318C02F0](v93 + 56, "kMDItemAuthors=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVEDFROM");
    __p[0] = v126;
    v94 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
    v128 = __p;
    v95 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v94 + 56, __p);
    MEMORY[0x2318C02F0](v95 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVEDFROM");
    __p[0] = v126;
    v96 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
    v128 = __p;
    v97 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v96 + 56, __p);
    MEMORY[0x2318C02F0](v97 + 56, "kMDItemAuthors=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVEDFROM");
    __p[0] = v126;
    v98 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
    v128 = __p;
    v99 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v98 + 56, __p);
    MEMORY[0x2318C02F0](v99 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "RECEIVEDFROM");
    __p[0] = v126;
    v100 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.HasUserReceived");
    v128 = __p;
    v101 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v100 + 56, __p);
    MEMORY[0x2318C02F0](v101 + 56, "kMDItemAuthors=*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENT");
    __p[0] = v126;
    v102 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.HasUserSent");
    v128 = __p;
    v103 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v102 + 56, __p);
    MEMORY[0x2318C02F0](v103 + 56, "kMDItemAuthors=*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENT");
    __p[0] = v126;
    v104 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.Contact");
    v128 = __p;
    v105 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v104 + 56, __p);
    MEMORY[0x2318C02F0](v105 + 56, "kMDItemAuthors=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENT");
    __p[0] = v126;
    v106 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "SENDER.EmailAddress");
    v128 = __p;
    v107 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v106 + 56, __p);
    MEMORY[0x2318C02F0](v107 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENT");
    __p[0] = v126;
    v108 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.Contact");
    v128 = __p;
    v109 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v108 + 56, __p);
    MEMORY[0x2318C02F0](v109 + 56, "kMDItemAuthors=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENT");
    __p[0] = v126;
    v110 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "RECIPIENT.EmailAddress");
    v128 = __p;
    v111 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v110 + 56, __p);
    MEMORY[0x2318C02F0](v111 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENTFROM");
    __p[0] = v126;
    v112 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
    v128 = __p;
    v113 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v112 + 56, __p);
    MEMORY[0x2318C02F0](v113 + 56, "kMDItemAuthors=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "SENTFROM");
    __p[0] = v126;
    v114 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
    v128 = __p;
    v115 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v114 + 56, __p);
    MEMORY[0x2318C02F0](v115 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "FROMTO");
    __p[0] = v126;
    v116 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
    v128 = __p;
    v117 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v116 + 56, __p);
    MEMORY[0x2318C02F0](v117 + 56, "kMDItemAuthors=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "FROMTO");
    __p[0] = v126;
    v118 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
    v128 = __p;
    v119 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v118 + 56, __p);
    MEMORY[0x2318C02F0](v119 + 56, "kMDItemAuthorEmailAddress=%@c*cwd");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v126, "AUTHORED");
    __p[0] = v126;
    v120 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
    std::string::basic_string[abi:ne200100]<0>(__p, "Contact");
    v128 = __p;
    v121 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v120 + 56, __p);
    MEMORY[0x2318C02F0](v121 + 56, "(kMDItemAuthors=%@c*cwd || kMDItemAuthorEmailAddresses=%@c)");
    if (v125 < 0)
    {
      operator delete(__p[0]);
    }

    if (v127 < 0)
    {
      operator delete(v126[0]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v126, "AUTHORED");
  __p[0] = v126;
  v122 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v126);
  std::string::basic_string[abi:ne200100]<0>(__p, "EmailAddress");
  v128 = __p;
  v123 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v122 + 56, __p);
  MEMORY[0x2318C02F0](v123 + 56, "kMDItemAuthorEmailAddresses=%@c");
  if (v125 < 0)
  {
    operator delete(__p[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }
}

void sub_22CD161F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NL::SpotlightParseFormatter::loadSpotlightTranslations(NL::ParserContext **this)
{
  updateNLPUserActionTranslations((this + 21));
  updateNLPValueTranslations((this + 21));
  updateNLPResultModifierTranslations((this + 21), (this + 30));
  updateSpotlightFileTypeTranslations((this + 21));
  updateSpotlightAttachmentTranslations((this + 21));
  updateSpotlightTransportTranslations((this + 21));
  if (NL::ParserContext::languageIsCJ(this[1]))
  {
    updateSpotlightSenderReceiverTranslations_Tokenize((this + 21));
  }

  else
  {
    updateSpotlightSenderReceiverTranslations((this + 21));
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "COMPANY");
  __p[0] = v88;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Bundle");
  v90 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "kMDItemCFBundleIdentifier=*%@c*cwd");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "COMPANYMOD");
  __p[0] = v88;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Bundle");
  v90 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "kMDItemCFBundleIdentifier=*%@c*cwd");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "CONTAINER");
  __p[0] = v88;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "ChatClient");
  v90 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "kMDItemContentType=com.apple.ichat.transcript");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "CONTAINER");
  __p[0] = v88;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "MailClient");
  v90 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "(kMDItemContentType=com.apple.mail.emlx || kMDItemContentType=public.email-message)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "CONTAINER");
  __p[0] = v88;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "MessageClient");
  v90 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "(_kMDItemGroupId=1 || kMDItemContentType=com.apple.ichat.transcript)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "FACEBOOKED");
  __p[0] = v88;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "FacebookImageKind");
  v90 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "kMDItemUserSharedSentTransport=facebook*cwd && _kMDItemGroupId=13");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "ABOUT");
  __p[0] = v88;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v90 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "(kMDItemTextContent=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "ABOUT");
  __p[0] = v88;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v90 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "(kMDItemTextContent=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "TOPICMOD");
  __p[0] = v88;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v90 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "(kMDItemTextContent=%@c*cwd || kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "ALBUM");
  __p[0] = v88;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v90 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "(kMDItemAlbum=%@c*cwd || kMDItemTitle=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "ALBUM");
  __p[0] = v88;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v90 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "(kMDItemAlbum=%@c*cwd || kMDItemTitle=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "IMAGEALBUM");
  __p[0] = v88;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v90 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "(kMDItemAlbum=%@c*cwd || kMDItemTitle=%@c*cwd) && _kMDItemGroupId=13");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "ALBUM");
  __p[0] = v88;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageKind");
  v90 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "_kMDItemGroupId=13");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "ALBUM");
  __p[0] = v88;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageAlbum");
  v90 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "_kMDItemGroupId=13");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "ALBUM");
  __p[0] = v88;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageAlbumKind");
  v90 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "_kMDItemGroupId=13");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "TITLEMOD");
  __p[0] = v88;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v90 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "(kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd || kMDItemAlbum=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "TITLED");
  __p[0] = v88;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v90 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "(kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "TITLED");
  __p[0] = v88;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v90 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "(kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "TITLED");
  __p[0] = v88;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v90 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "(kMDItemFSName=%@c*cwd || kMDItemTitle=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "ENTITLED");
  __p[0] = v88;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v90 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "(kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "ENTITLED");
  __p[0] = v88;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v90 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "(kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "ENTITLED");
  __p[0] = v88;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v90 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "(kMDItemFSName=%@c*cwd || kMDItemTitle=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "FILETITLED");
  __p[0] = v88;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v90 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "(_kMDItemGroupId=5 || _kMDItemGroupId=7 || _kMDItemGroupId=10 || _kMDItemGroupId=11 || _kMDItemGroupId=12 || _kMDItemGroupId=13 || _kMDItemGroupId=14 || _kMDItemGroupId=16 || _kMDItemGroupId=18 || (_kMDItemGroupId=15 && kMDItemContentTypeTree=public.directory)) && (kMDItemTitle=%@c*cwd || kMDItemSubject=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "FILETITLED");
  __p[0] = v88;
  v48 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v90 = __p;
  v49 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48 + 56, __p);
  MEMORY[0x2318C02F0](v49 + 56, "(_kMDItemGroupId=5 || _kMDItemGroupId=7 || _kMDItemGroupId=10 || _kMDItemGroupId=11 || _kMDItemGroupId=12 || _kMDItemGroupId=13 || _kMDItemGroupId=14 || _kMDItemGroupId=16 || _kMDItemGroupId=18 || (_kMDItemGroupId=15 && kMDItemContentTypeTree=public.directory)) && (kMDItemFSName=%@c*cwd || kMDItemTitle=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "FILENAMED");
  __p[0] = v88;
  v50 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v90 = __p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v50 + 56, __p);
  MEMORY[0x2318C02F0](v51 + 56, "(kMDItemFSName=%@c*cwd || kMDItemTitle=%@c*cwd || kMDItemDisplayName=%@c*cwd || com_apple_mail_attachmentNames=%@c*cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "IGNOREMOD");
  __p[0] = v88;
  v52 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasIgnored");
  v90 = __p;
  v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v52 + 56, __p);
  MEMORY[0x2318C02F0](v53 + 56, "(com_apple_mail_repliedTo=0 || com_apple_mail_read=0)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "READMOD");
  __p[0] = v88;
  v54 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Read");
  v90 = __p;
  v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v54 + 56, __p);
  MEMORY[0x2318C02F0](v55 + 56, "com_apple_mail_read=%@v");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "REPLYMOD");
  __p[0] = v88;
  v56 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Reply");
  v90 = __p;
  v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v56 + 56, __p);
  MEMORY[0x2318C02F0](v57 + 56, "com_apple_mail_repliedTo=%@v");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "REPLYMOD");
  __p[0] = v88;
  v58 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Replied");
  v90 = __p;
  v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v58 + 56, __p);
  MEMORY[0x2318C02F0](v59 + 56, "com_apple_mail_repliedTo=%@v");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "REPLIED");
  __p[0] = v88;
  v60 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Reply");
  v90 = __p;
  v61 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v60 + 56, __p);
  MEMORY[0x2318C02F0](v61 + 56, "com_apple_mail_repliedTo=%@v");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "REPLIED");
  __p[0] = v88;
  v62 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Replied");
  v90 = __p;
  v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v62 + 56, __p);
  MEMORY[0x2318C02F0](v63 + 56, "com_apple_mail_repliedTo=%@v");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "FLAGMOD");
  __p[0] = v88;
  v64 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "FlagColor");
  v90 = __p;
  v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v64 + 56, __p);
  MEMORY[0x2318C02F0](v65 + 56, "com_apple_mail_flagColor=%@v");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "FLAGGED");
  __p[0] = v88;
  v66 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "FlagColor");
  v90 = __p;
  v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v66 + 56, __p);
  MEMORY[0x2318C02F0](v67 + 56, "com_apple_mail_flagColor=%@v");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "FLAGMOD");
  __p[0] = v88;
  v68 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasFlagged");
  v90 = __p;
  v69 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v68 + 56, __p);
  MEMORY[0x2318C02F0](v69 + 56, "com_apple_mail_flagged=%@v");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "FLAGGED");
  __p[0] = v88;
  v70 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Flag");
  v90 = __p;
  v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v70 + 56, __p);
  MEMORY[0x2318C02F0](v71 + 56, "com_apple_mail_flagged=%@v");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "TAGMOD");
  __p[0] = v88;
  v72 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasTagged");
  v90 = __p;
  v73 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v72 + 56, __p);
  MEMORY[0x2318C02F0](v73 + 56, "kMDItemUserTags=*cwd");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "TAGGED");
  __p[0] = v88;
  v74 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Text");
  v90 = __p;
  v75 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v74 + 56, __p);
  MEMORY[0x2318C02F0](v75 + 56, "kMDItemUserTags=%@c*cwd");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "TAGGED");
  __p[0] = v88;
  v76 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "OpenText");
  v90 = __p;
  v77 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v76 + 56, __p);
  MEMORY[0x2318C02F0](v77 + 56, "kMDItemUserTags=%@c*cwd");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "TAGGED");
  __p[0] = v88;
  v78 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "TagColor");
  v90 = __p;
  v79 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v78 + 56, __p);
  MEMORY[0x2318C02F0](v79 + 56, "kMDItemUserTags=%@v*cwd");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "QUOTED");
  __p[0] = v88;
  v80 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "QuotedText");
  v90 = __p;
  v81 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v80 + 56, __p);
  MEMORY[0x2318C02F0](v81 + 56, "(** = %@c*cdw)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "ORIENTATION");
  __p[0] = v88;
  v82 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Orientation");
  v90 = __p;
  v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v82 + 56, __p);
  MEMORY[0x2318C02F0](v83 + 56, "kMDItemOrientation=%@v");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v88, "SUBJECTMOD");
  __p[0] = v88;
  v84 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 21), v88);
  std::string::basic_string[abi:ne200100]<0>(__p, "Subject");
  v90 = __p;
  v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v84 + 56, __p);
  MEMORY[0x2318C02F0](v85 + 56, "(kMDItemSubject!=*cwd || kMDItemSubject=cwd)");
  if (v87 < 0)
  {
    operator delete(__p[0]);
  }

  if (v89 < 0)
  {
    operator delete(v88[0]);
  }
}

void sub_22CD17F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void updateNLPUserActionTranslations(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v34, "USERPRINTED");
  __p[0] = v34;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "PRINTED.HasPrinted");
  v36 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "kMDItemUserPrintedUserHandle=*");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "USERPRINTED");
  __p[0] = v34;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasUserPrinted");
  v36 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "kMDItemUserPrintedUserHandle=%@uid");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "USERCREATED");
  __p[0] = v34;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "CREATED.HasCreated");
  v36 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "kMDItemUserCreatedUserHandle=*");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "USERCREATED");
  __p[0] = v34;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasUserCreated");
  v36 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "kMDItemUserCreatedUserHandle=%@uid");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "MAILMODIFIED");
  __p[0] = v34;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "MODIFIED.HasModified");
  v36 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "kMDItemUserModifiedUserHandle=*");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "FILEMODIFIED");
  __p[0] = v34;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "MODIFIED.HasModified");
  v36 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "kMDItemUserModifiedUserHandle=*");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "USERMODIFIED");
  __p[0] = v34;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "MODIFIED.HasModified");
  v36 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "kMDItemUserModifiedUserHandle=*");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "USERMODIFIED");
  __p[0] = v34;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasUserModified");
  v36 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "kMDItemUserModifiedUserHandle=%@uid");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "USERWEBVIEWED");
  __p[0] = v34;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "VIEWED.HasViewed");
  v36 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "InRange(kMDItemDateAdded,0,2147483647)");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "USERWEBVIEWED");
  __p[0] = v34;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "VIEWED.HasUserViewed");
  v36 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "InRange(kMDItemDateAdded,0,2147483647)");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "USERWEBVIEWED");
  __p[0] = v34;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "VIEWED.HasDownloaded");
  v36 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "InRange(kMDItemDateAdded,0,2147483647)");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "USERWEBVIEWED");
  __p[0] = v34;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "DOWNLOADED.HasDownloaded");
  v36 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "InRange(kMDItemDateAdded,0,2147483647)");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "USERMAILVIEWED");
  __p[0] = v34;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "VIEWED.HasViewed");
  v36 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "InRange(com_apple_mail_dateLastViewed,0,2147483647)");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "USERMAILVIEWED");
  __p[0] = v34;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "VIEWED.HasViewed");
  v36 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "InRange(com_apple_mail_dateLastViewed,0,2147483647)");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v34, "USERDOWNLOADED");
  __p[0] = v34;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v34);
  std::string::basic_string[abi:ne200100]<0>(__p, "DOWNLOADED.HasDownloaded");
  v36 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "InRange(kMDItemDownloadDate,0,2147483647)");
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }
}

void sub_22CD18A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void updateNLPValueTranslations(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v64, "PAGECOUNT");
  __p[0] = v64;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagecountValue");
  v66 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "kMDItemNumberOfPages=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "EQUALTO");
  __p[0] = v64;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagecountValue");
  v66 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "kMDItemNumberOfPages=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "GREATEREQUAL");
  __p[0] = v64;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagecountValue");
  v66 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "kMDItemNumberOfPages>=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "GREATER");
  __p[0] = v64;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagecountValue");
  v66 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "kMDItemNumberOfPages>%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "LESSEQUAL");
  __p[0] = v64;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagecountValue");
  v66 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "kMDItemNumberOfPages<=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "LESS");
  __p[0] = v64;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagecountValue");
  v66 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "kMDItemNumberOfPages<%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "FILESIZE");
  __p[0] = v64;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "FilesizeValue");
  v66 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "(kMDItemPhysicalSize>=%@v1 && kMDItemPhysicalSize<=%@v2)");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "EQUALTO");
  __p[0] = v64;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "FilesizeValue");
  v66 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "(kMDItemPhysicalSize>=%@v1 && kMDItemPhysicalSize<=%@v2)");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "GREATEREQUAL");
  __p[0] = v64;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "FilesizeValue");
  v66 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "kMDItemPhysicalSize>=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "GREATER");
  __p[0] = v64;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "FilesizeValue");
  v66 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "kMDItemPhysicalSize>%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "LESSEQUAL");
  __p[0] = v64;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "FilesizeValue");
  v66 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "kMDItemPhysicalSize<=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "LESS");
  __p[0] = v64;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "FilesizeValue");
  v66 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "kMDItemPhysicalSize<%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "LASTING");
  __p[0] = v64;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "DurationValue");
  v66 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "(kMDItemDurationSeconds>=%@v1 && kMDItemDurationSeconds<=%@v2)");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "EQUALTO");
  __p[0] = v64;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "DurationValue");
  v66 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "(kMDItemDurationSeconds>=%@v1 && kMDItemDurationSeconds<=%@v2)");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "GREATEREQUAL");
  __p[0] = v64;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "DurationValue");
  v66 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "kMDItemDurationSeconds>=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "GREATER");
  __p[0] = v64;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "DurationValue");
  v66 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "kMDItemDurationSeconds>%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "LESSEQUAL");
  __p[0] = v64;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "DurationValue");
  v66 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "kMDItemDurationSeconds<=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "LESS");
  __p[0] = v64;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "DurationValue");
  v66 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "kMDItemDurationSeconds<%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "ALTITUDE");
  __p[0] = v64;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "AltitudeValue");
  v66 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "(kMDItemAltitude>=%@v1 && kMDItemAltitude<=%@v2)");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "EQUALTO");
  __p[0] = v64;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "AltitudeValue");
  v66 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "(kMDItemAltitude>=%@v1 && kMDItemAltitude<=%@v2)");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "GREATEREQUAL");
  __p[0] = v64;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "AltitudeValue");
  v66 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "kMDItemAltitude>=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "GREATER");
  __p[0] = v64;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "AltitudeValue");
  v66 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "kMDItemAltitude>%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "LESSEQUAL");
  __p[0] = v64;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "AltitudeValue");
  v66 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "kMDItemAltitude<=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "LESS");
  __p[0] = v64;
  v48 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "AltitudeValue");
  v66 = __p;
  v49 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48 + 56, __p);
  MEMORY[0x2318C02F0](v49 + 56, "kMDItemAltitude<%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "PHOTOISO");
  __p[0] = v64;
  v50 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "IsoValue");
  v66 = __p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v50 + 56, __p);
  MEMORY[0x2318C02F0](v51 + 56, "kMDItemISOSpeed=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "EQUALTO");
  __p[0] = v64;
  v52 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "IsoValue");
  v66 = __p;
  v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v52 + 56, __p);
  MEMORY[0x2318C02F0](v53 + 56, "kMDItemISOSpeed=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "GREATEREQUAL");
  __p[0] = v64;
  v54 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "IsoValue");
  v66 = __p;
  v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v54 + 56, __p);
  MEMORY[0x2318C02F0](v55 + 56, "kMDItemISOSpeed>=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "GREATER");
  __p[0] = v64;
  v56 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "IsoValue");
  v66 = __p;
  v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v56 + 56, __p);
  MEMORY[0x2318C02F0](v57 + 56, "kMDItemISOSpeed>%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "LESSEQUAL");
  __p[0] = v64;
  v58 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "IsoValue");
  v66 = __p;
  v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v58 + 56, __p);
  MEMORY[0x2318C02F0](v59 + 56, "kMDItemISOSpeed<=%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v64, "LESS");
  __p[0] = v64;
  v60 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v64);
  std::string::basic_string[abi:ne200100]<0>(__p, "IsoValue");
  v66 = __p;
  v61 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v60 + 56, __p);
  MEMORY[0x2318C02F0](v61 + 56, "kMDItemISOSpeed<%@v");
  if (v63 < 0)
  {
    operator delete(__p[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }
}

void sub_22CD19DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void updateNLPResultModifierTranslations(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v18, "COUNT");
  __p[0] = v18;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v18);
  std::string::basic_string[abi:ne200100]<0>(__p, "MaxCount");
  v20 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "");
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "COUNT");
  __p[0] = v18;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v18);
  std::string::basic_string[abi:ne200100]<0>(__p, "MinCount");
  v20 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "");
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "PERIOD");
  __p[0] = v18;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v18);
  std::string::basic_string[abi:ne200100]<0>(__p, "MaxTime");
  v20 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "");
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "PERIOD");
  __p[0] = v18;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v18);
  std::string::basic_string[abi:ne200100]<0>(__p, "MinTime");
  v20 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "");
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "COUNT");
  __p[0] = v18;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v18);
  std::string::basic_string[abi:ne200100]<0>(__p, "MaxCount");
  v20 = __p;
  *(std::__tree<std::__value_type<std::string,NLSearchParseResultModifier>,std::__map_value_compare<std::string,std::__value_type<std::string,NLSearchParseResultModifier>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NLSearchParseResultModifier>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p) + 56) = 2;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "COUNT");
  __p[0] = v18;
  v13 = std::__tree<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v18);
  std::string::basic_string[abi:ne200100]<0>(__p, "MinCount");
  v20 = __p;
  *(std::__tree<std::__value_type<std::string,NLSearchParseResultModifier>,std::__map_value_compare<std::string,std::__value_type<std::string,NLSearchParseResultModifier>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NLSearchParseResultModifier>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v13 + 56, __p) + 56) = 1;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "PERIOD");
  __p[0] = v18;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v18);
  std::string::basic_string[abi:ne200100]<0>(__p, "MaxTime");
  v20 = __p;
  *(std::__tree<std::__value_type<std::string,NLSearchParseResultModifier>,std::__map_value_compare<std::string,std::__value_type<std::string,NLSearchParseResultModifier>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NLSearchParseResultModifier>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p) + 56) = 2;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "PERIOD");
  __p[0] = v18;
  v15 = std::__tree<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,NLSearchParseResultModifier>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v18);
  std::string::basic_string[abi:ne200100]<0>(__p, "MinTime");
  v20 = __p;
  *(std::__tree<std::__value_type<std::string,NLSearchParseResultModifier>,std::__map_value_compare<std::string,std::__value_type<std::string,NLSearchParseResultModifier>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,NLSearchParseResultModifier>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v15 + 56, __p) + 56) = 1;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_22CD1A478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void updateSpotlightFileTypeTranslations(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "ChatKind");
  v152 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "kMDItemContentType=com.apple.ichat.transcript");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "MailKind");
  v152 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "(kMDItemContentType=com.apple.mail.emlx || kMDItemContentType=public.email-message)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "MessageKind");
  v152 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "(_kMDItemGroupId=1 || kMDItemContentType=com.apple.ichat.transcript)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageKind");
  v152 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "_kMDItemGroupId=13");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageAttachment");
  v152 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "(_kMDItemGroupId=13 && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatKind");
  v152 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "kMDItemContentType=public.jpeg");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatKind");
  v152 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "kMDItemContentType=public.png");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatKind");
  v152 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "kMDItemContentType=public.tiff");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatKind");
  v152 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "kMDItemContentType=com.compuserve.gif");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatAttachment");
  v152 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "(kMDItemContentType=public.jpeg && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatAttachment");
  v152 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "(kMDItemContentType=public.png && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatAttachment");
  v152 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "(kMDItemContentType=public.tiff && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatAttachment");
  v152 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "(kMDItemContentType=com.compuserve.gif && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioKind");
  v152 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "_kMDItemGroupId=10");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioAttachment");
  v152 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "(_kMDItemGroupId=10 && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatKind");
  v152 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "kMDItemContentType=aif*cwd");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatKind");
  v152 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "kMDItemContentType=public.aac");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatKind");
  v152 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "kMDItemContentType=public.mp3");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatAttachment");
  v152 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "(kMDItemContentType=public.aac && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatAttachment");
  v152 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "(kMDItemContentType=aif*cwd && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatAttachment");
  v152 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "(kMDItemContentType=public.mp3 && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoKind");
  v152 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "_kMDItemGroupId=7");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoFormatKind");
  v152 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "(kMDItemContentType=%@c*cwd || kMDItemFSName=*%@ccwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v48 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatKind");
  v152 = __p;
  v49 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48 + 56, __p);
  MEMORY[0x2318C02F0](v49 + 56, "kMDItemContentType=com.apple.quicktime-movie");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v50 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatKind");
  v152 = __p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v50 + 56, __p);
  MEMORY[0x2318C02F0](v51 + 56, "kMDItemContentType=com.apple.m4v-video");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v52 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoAttachment");
  v152 = __p;
  v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v52 + 56, __p);
  MEMORY[0x2318C02F0](v53 + 56, "(_kMDItemGroupId=7 && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v54 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoFormatAttachment");
  v152 = __p;
  v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v54 + 56, __p);
  MEMORY[0x2318C02F0](v55 + 56, "((kMDItemContentType=%@c*cwd || kMDItemFSName=*%@ccwd) && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v56 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatAttachment");
  v152 = __p;
  v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v56 + 56, __p);
  MEMORY[0x2318C02F0](v57 + 56, "(kMDItemContentType=com.apple.quicktime-movie && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v58 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatAttachment");
  v152 = __p;
  v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v58 + 56, __p);
  MEMORY[0x2318C02F0](v59 + 56, "(kMDItemContentType=com.apple.m4v-video && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v60 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationKind");
  v152 = __p;
  v61 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v60 + 56, __p);
  MEMORY[0x2318C02F0](v61 + 56, "_kMDItemGroupId=12");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v62 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationAttachment");
  v152 = __p;
  v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v62 + 56, __p);
  MEMORY[0x2318C02F0](v63 + 56, "(_kMDItemGroupId=12 && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v64 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatKind");
  v152 = __p;
  v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v64 + 56, __p);
  MEMORY[0x2318C02F0](v65 + 56, "kMDItemContentType=com.apple.iwork.key*cwd");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v66 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatKind");
  v152 = __p;
  v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v66 + 56, __p);
  MEMORY[0x2318C02F0](v67 + 56, "kMDItemContentType=com.microsoft.powerpoint.ppt*cwd");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v68 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatAttachment");
  v152 = __p;
  v69 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v68 + 56, __p);
  MEMORY[0x2318C02F0](v69 + 56, "(kMDItemContentType=com.apple.iwork.key*cwd && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v70 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatAttachment");
  v152 = __p;
  v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v70 + 56, __p);
  MEMORY[0x2318C02F0](v71 + 56, "(kMDItemContentType=com.microsoft.powerpoint.ppt*cwd && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v72 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetKind");
  v152 = __p;
  v73 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v72 + 56, __p);
  MEMORY[0x2318C02F0](v73 + 56, "_kMDItemGroupId=16");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v74 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetAttachment");
  v152 = __p;
  v75 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v74 + 56, __p);
  MEMORY[0x2318C02F0](v75 + 56, "(_kMDItemGroupId=16 && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v76 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatKind");
  v152 = __p;
  v77 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v76 + 56, __p);
  MEMORY[0x2318C02F0](v77 + 56, "kMDItemContentType=com.microsoft.excel.xlscwd");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v78 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatAttachment");
  v152 = __p;
  v79 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v78 + 56, __p);
  MEMORY[0x2318C02F0](v79 + 56, "(kMDItemContentType=com.microsoft.excel.xlscwd && && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v80 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentKind");
  v152 = __p;
  v81 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v80 + 56, __p);
  MEMORY[0x2318C02F0](v81 + 56, "(_kMDItemGroupId=11 || _kMDItemGroupId=12 || _kMDItemGroupId=14 || _kMDItemGroupId=15 || _kMDItemGroupId=16)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v82 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentAttachment");
  v152 = __p;
  v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v82 + 56, __p);
  MEMORY[0x2318C02F0](v83 + 56, "((_kMDItemGroupId=11 || _kMDItemGroupId=12 || _kMDItemGroupId=14 || _kMDItemGroupId=15 || _kMDItemGroupId=16) && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v84 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentKind");
  v152 = __p;
  v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v84 + 56, __p);
  MEMORY[0x2318C02F0](v85 + 56, "(kMDItemContentType=com.apple.iwork*cwd || kMDItemContentType=com.microsoft.*cwd || kMDItemContentType=org.openxmlformats*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v86 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentAttachment");
  v152 = __p;
  v87 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v86 + 56, __p);
  MEMORY[0x2318C02F0](v87 + 56, "((kMDItemContentType=com.apple.iwork*cwd || kMDItemContentType=com.microsoft.*cwd || kMDItemContentType=org.openxmlformats*cwd) && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v88 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentKind");
  v152 = __p;
  v89 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v88 + 56, __p);
  MEMORY[0x2318C02F0](v89 + 56, "(kMDItemContentType=com.apple.iwork.pages.* || kMDItemContentType=com.microsoft.word.doc || kMDItemContentType=org.openxmlformats.word*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v90 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatKind");
  v152 = __p;
  v91 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v90 + 56, __p);
  MEMORY[0x2318C02F0](v91 + 56, "(kMDItemContentType=com.microsoft.word.doc*cwd || kMDItemContentType=org.openxmlformats.word*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v92 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentAttachment");
  v152 = __p;
  v93 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v92 + 56, __p);
  MEMORY[0x2318C02F0](v93 + 56, "((kMDItemContentType=com.apple.iwork.pages.* || kMDItemContentType=com.microsoft.word.doc || kMDItemContentType=org.openxmlformats.word*cwd) && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v94 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatAttachment");
  v152 = __p;
  v95 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v94 + 56, __p);
  MEMORY[0x2318C02F0](v95 + 56, "((kMDItemContentType=com.microsoft.word.doc*cwd || kMDItemContentType=org.openxmlformats.word*cwd) && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v96 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatKind");
  v152 = __p;
  v97 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v96 + 56, __p);
  MEMORY[0x2318C02F0](v97 + 56, "kMDItemContentType=public.rtf");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v98 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatKind");
  v152 = __p;
  v99 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v98 + 56, __p);
  MEMORY[0x2318C02F0](v99 + 56, "(kMDItemContentType=public.plain-text || kMDItemFSName=*txtcwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v100 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatAttachment");
  v152 = __p;
  v101 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v100 + 56, __p);
  MEMORY[0x2318C02F0](v101 + 56, "(kMDItemContentType=public.rtf && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v102 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatAttachment");
  v152 = __p;
  v103 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v102 + 56, __p);
  MEMORY[0x2318C02F0](v103 + 56, "((kMDItemContentType=public.plain-text || kMDItemFSName=*txtcwd) && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v104 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileKind");
  v152 = __p;
  v105 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v104 + 56, __p);
  MEMORY[0x2318C02F0](v105 + 56, "(_kMDItemGroupId=5 || _kMDItemGroupId=7 || _kMDItemGroupId=10 || _kMDItemGroupId=11 || _kMDItemGroupId=12 || _kMDItemGroupId=13 || _kMDItemGroupId=14 || _kMDItemGroupId=16 || _kMDItemGroupId=18 || (_kMDItemGroupId=15 && kMDItemContentTypeTree=public.directory))");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v106 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileAttachment");
  v152 = __p;
  v107 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v106 + 56, __p);
  MEMORY[0x2318C02F0](v107 + 56, "((_kMDItemGroupId=5 || _kMDItemGroupId=7 || _kMDItemGroupId=10 || _kMDItemGroupId=11 || _kMDItemGroupId=12 || _kMDItemGroupId=13 || _kMDItemGroupId=14 || _kMDItemGroupId=16 || _kMDItemGroupId=18 || (_kMDItemGroupId=15 && kMDItemContentTypeTree=public.directory)) && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v108 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatKind");
  v152 = __p;
  v109 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v108 + 56, __p);
  MEMORY[0x2318C02F0](v109 + 56, "(kMDItemContentType=tar*cwd || kMDItemContentType=zip*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v110 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatKind");
  v152 = __p;
  v111 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v110 + 56, __p);
  MEMORY[0x2318C02F0](v111 + 56, "kMDItemContentType=com.sun.java-source");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v112 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatAttachment");
  v152 = __p;
  v113 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v112 + 56, __p);
  MEMORY[0x2318C02F0](v113 + 56, "((kMDItemContentType=tar*cwd || kMDItemContentType=zip*cwd) && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v114 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatAttachment");
  v152 = __p;
  v115 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v114 + 56, __p);
  MEMORY[0x2318C02F0](v115 + 56, "(kMDItemContentType=com.sun.java-source && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v116 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventKind");
  v152 = __p;
  v117 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v116 + 56, __p);
  MEMORY[0x2318C02F0](v117 + 56, "kMDItemContentType=public.calendar-event");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v118 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatKind");
  v152 = __p;
  v119 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v118 + 56, __p);
  MEMORY[0x2318C02F0](v119 + 56, "kMDItemContentType=com.apple.ical.ics");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v120 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventAttachment");
  v152 = __p;
  v121 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v120 + 56, __p);
  MEMORY[0x2318C02F0](v121 + 56, "(kMDItemContentType=public.calendar-event && && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v122 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatAttachment");
  v152 = __p;
  v123 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v122 + 56, __p);
  MEMORY[0x2318C02F0](v123 + 56, "(kMDItemContentType=com.apple.ical.ics && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v124 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsKind");
  v152 = __p;
  v125 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v124 + 56, __p);
  MEMORY[0x2318C02F0](v125 + 56, "kMDItemContentType=public.vcard");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v126 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatKind");
  v152 = __p;
  v127 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126 + 56, __p);
  MEMORY[0x2318C02F0](v127 + 56, "kMDItemContentType=public.vcard");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v128 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsAttachment");
  v152 = __p;
  v129 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v128 + 56, __p);
  MEMORY[0x2318C02F0](v129 + 56, "(kMDItemContentType=public.vcard && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v130 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatAttachment");
  v152 = __p;
  v131 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v130 + 56, __p);
  MEMORY[0x2318C02F0](v131 + 56, "(kMDItemContentType=public.vcard && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v132 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatKind");
  v152 = __p;
  v133 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v132 + 56, __p);
  MEMORY[0x2318C02F0](v133 + 56, "_kMDItemGroupId=11");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v134 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatAttachment");
  v152 = __p;
  v135 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v134 + 56, __p);
  MEMORY[0x2318C02F0](v135 + 56, "(_kMDItemGroupId=11 && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v136 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatKind");
  v152 = __p;
  v137 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v136 + 56, __p);
  MEMORY[0x2318C02F0](v137 + 56, "kMDItemContentType=com.apple.pkpasscwd");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v138 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatAttachment");
  v152 = __p;
  v139 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v138 + 56, __p);
  MEMORY[0x2318C02F0](v139 + 56, "(kMDItemContentType=com.apple.pkpasscwd && kMDItemWhereFroms=message*cwd)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v140 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v152 = __p;
  v141 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v140 + 56, __p);
  MEMORY[0x2318C02F0](v141 + 56, "kMDItemFSName=%@c*cwd");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v142 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "NotesKind");
  v152 = __p;
  v143 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v142 + 56, __p);
  MEMORY[0x2318C02F0](v143 + 56, "(kMDItemContentType=com.apple.notes.*record || kMDItemKind=notes*cwdt)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v144 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "ApplicationKind");
  v152 = __p;
  v145 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v144 + 56, __p);
  MEMORY[0x2318C02F0](v145 + 56, "_kMDItemGroupId=8");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v150, "KIND");
  __p[0] = v150;
  v146 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v150);
  std::string::basic_string[abi:ne200100]<0>(__p, "WebsiteKind");
  v152 = __p;
  v147 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v146 + 56, __p);
  MEMORY[0x2318C02F0](v147 + 56, "(kMDItemContentType=com.apple.safari.history || kMDItemContentType=com.apple.safari.bookmark)");
  if (v149 < 0)
  {
    operator delete(__p[0]);
  }

  if (v151 < 0)
  {
    operator delete(v150[0]);
  }
}

void sub_22CD1D1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void updateSpotlightAttachmentTranslations(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v2 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "MailClient");
  v286 = __p;
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 56, __p);
  MEMORY[0x2318C02F0](v3 + 56, "(kMDItemContentType=com.apple.mail.emlx || kMDItemContentType=public.email-message)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v4 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "Attachment");
  v286 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v4 + 56, __p);
  MEMORY[0x2318C02F0](v5 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v6 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "Attachment");
  v286 = __p;
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v6 + 56, __p);
  MEMORY[0x2318C02F0](v7 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v8 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasAttached");
  v286 = __p;
  v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v8 + 56, __p);
  MEMORY[0x2318C02F0](v9 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v10 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "HasAttachment");
  v286 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v10 + 56, __p);
  MEMORY[0x2318C02F0](v11 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v12 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "MailAttachment");
  v286 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 56, __p);
  MEMORY[0x2318C02F0](v13 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v14 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageKind");
  v286 = __p;
  v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 56, __p);
  MEMORY[0x2318C02F0](v15 + 56, "com_apple_mail_attachmentTypes=public.image");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v16 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatKind");
  v286 = __p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v16 + 56, __p);
  MEMORY[0x2318C02F0](v17 + 56, "com_apple_mail_attachmentSpecificTypes=com.compuserve.gif");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v18 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatKind");
  v286 = __p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v18 + 56, __p);
  MEMORY[0x2318C02F0](v19 + 56, "com_apple_mail_attachmentSpecificTypes=public.png");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v20 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatKind");
  v286 = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v20 + 56, __p);
  MEMORY[0x2318C02F0](v21 + 56, "com_apple_mail_attachmentSpecificTypes=public.tiff");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v22 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatKind");
  v286 = __p;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v22 + 56, __p);
  MEMORY[0x2318C02F0](v23 + 56, "com_apple_mail_attachmentSpecificTypes=public.jpeg");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v24 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageAttachment");
  v286 = __p;
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v24 + 56, __p);
  MEMORY[0x2318C02F0](v25 + 56, "com_apple_mail_attachmentTypes=public.image");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v26 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatAttachment");
  v286 = __p;
  v27 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26 + 56, __p);
  MEMORY[0x2318C02F0](v27 + 56, "com_apple_mail_attachmentSpecificTypes=com.compuserve.gif");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v28 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatAttachment");
  v286 = __p;
  v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v28 + 56, __p);
  MEMORY[0x2318C02F0](v29 + 56, "com_apple_mail_attachmentSpecificTypes=public.png");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v30 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatAttachment");
  v286 = __p;
  v31 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30 + 56, __p);
  MEMORY[0x2318C02F0](v31 + 56, "com_apple_mail_attachmentSpecificTypes=public.tiff");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v32 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatAttachment");
  v286 = __p;
  v33 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v32 + 56, __p);
  MEMORY[0x2318C02F0](v33 + 56, "com_apple_mail_attachmentSpecificTypes=public.jpeg");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v34 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageKind");
  v286 = __p;
  v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v34 + 56, __p);
  MEMORY[0x2318C02F0](v35 + 56, "com_apple_mail_attachmentTypes=public.image");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v36 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatKind");
  v286 = __p;
  v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v36 + 56, __p);
  MEMORY[0x2318C02F0](v37 + 56, "com_apple_mail_attachmentSpecificTypes=com.compuserve.gif");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v38 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatKind");
  v286 = __p;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v38 + 56, __p);
  MEMORY[0x2318C02F0](v39 + 56, "com_apple_mail_attachmentSpecificTypes=public.png");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v40 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatKind");
  v286 = __p;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v40 + 56, __p);
  MEMORY[0x2318C02F0](v41 + 56, "com_apple_mail_attachmentSpecificTypes=public.tiff");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v42 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatKind");
  v286 = __p;
  v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v42 + 56, __p);
  MEMORY[0x2318C02F0](v43 + 56, "com_apple_mail_attachmentSpecificTypes=public.jpeg");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v44 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "ImageAttachment");
  v286 = __p;
  v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v44 + 56, __p);
  MEMORY[0x2318C02F0](v45 + 56, "com_apple_mail_attachmentTypes=public.image");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v46 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "GifImageFormatAttachment");
  v286 = __p;
  v47 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v46 + 56, __p);
  MEMORY[0x2318C02F0](v47 + 56, "com_apple_mail_attachmentSpecificTypes=com.compuserve.gif");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v48 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PngImageFormatAttachment");
  v286 = __p;
  v49 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v48 + 56, __p);
  MEMORY[0x2318C02F0](v49 + 56, "com_apple_mail_attachmentSpecificTypes=public.png");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v50 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "TiffImageFormatAttachment");
  v286 = __p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v50 + 56, __p);
  MEMORY[0x2318C02F0](v51 + 56, "com_apple_mail_attachmentSpecificTypes=public.tiff");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v52 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "JpgImageFormatAttachment");
  v286 = __p;
  v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v52 + 56, __p);
  MEMORY[0x2318C02F0](v53 + 56, "com_apple_mail_attachmentSpecificTypes=public.jpeg");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v54 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioKind");
  v286 = __p;
  v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v54 + 56, __p);
  MEMORY[0x2318C02F0](v55 + 56, "com_apple_mail_attachmentTypes=public.audio");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v56 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatKind");
  v286 = __p;
  v57 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v56 + 56, __p);
  MEMORY[0x2318C02F0](v57 + 56, "com_apple_mail_attachmentSpecificTypes=public.aac-audio");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v58 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatKind");
  v286 = __p;
  v59 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v58 + 56, __p);
  MEMORY[0x2318C02F0](v59 + 56, "com_apple_mail_attachmentSpecificTypes=public.aif*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v60 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatKind");
  v286 = __p;
  v61 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v60 + 56, __p);
  MEMORY[0x2318C02F0](v61 + 56, "com_apple_mail_attachmentSpecificTypes=public.mp3");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v62 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioAttachment");
  v286 = __p;
  v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v62 + 56, __p);
  MEMORY[0x2318C02F0](v63 + 56, "com_apple_mail_attachmentTypes=public.audio");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v64 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatAttachment");
  v286 = __p;
  v65 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v64 + 56, __p);
  MEMORY[0x2318C02F0](v65 + 56, "com_apple_mail_attachmentSpecificTypes=public.aac-audio");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v66 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatAttachment");
  v286 = __p;
  v67 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v66 + 56, __p);
  MEMORY[0x2318C02F0](v67 + 56, "com_apple_mail_attachmentSpecificTypes=public.aif*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v68 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatAttachment");
  v286 = __p;
  v69 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v68 + 56, __p);
  MEMORY[0x2318C02F0](v69 + 56, "com_apple_mail_attachmentSpecificTypes=public.mp3");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v70 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioKind");
  v286 = __p;
  v71 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v70 + 56, __p);
  MEMORY[0x2318C02F0](v71 + 56, "com_apple_mail_attachmentTypes=public.audio");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v72 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatKind");
  v286 = __p;
  v73 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v72 + 56, __p);
  MEMORY[0x2318C02F0](v73 + 56, "com_apple_mail_attachmentSpecificTypes=public.aac-audio");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v74 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatKind");
  v286 = __p;
  v75 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v74 + 56, __p);
  MEMORY[0x2318C02F0](v75 + 56, "com_apple_mail_attachmentSpecificTypes=public.aif*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v76 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatKind");
  v286 = __p;
  v77 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v76 + 56, __p);
  MEMORY[0x2318C02F0](v77 + 56, "com_apple_mail_attachmentSpecificTypes=public.mp3");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v78 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "AudioAttachment");
  v286 = __p;
  v79 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v78 + 56, __p);
  MEMORY[0x2318C02F0](v79 + 56, "com_apple_mail_attachmentTypes=public.audio");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v80 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "AacAudioFormatAttachment");
  v286 = __p;
  v81 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v80 + 56, __p);
  MEMORY[0x2318C02F0](v81 + 56, "com_apple_mail_attachmentSpecificTypes=public.aac-audio");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v82 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "AiffAudioFormatAttachment");
  v286 = __p;
  v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v82 + 56, __p);
  MEMORY[0x2318C02F0](v83 + 56, "com_apple_mail_attachmentSpecificTypes=public.aif*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v84 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp3AudioFormatAttachment");
  v286 = __p;
  v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v84 + 56, __p);
  MEMORY[0x2318C02F0](v85 + 56, "com_apple_mail_attachmentSpecificTypes=public.mp3");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v86 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoKind");
  v286 = __p;
  v87 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v86 + 56, __p);
  MEMORY[0x2318C02F0](v87 + 56, "com_apple_mail_attachmentTypes=public.movie");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v88 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatKind");
  v286 = __p;
  v89 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v88 + 56, __p);
  MEMORY[0x2318C02F0](v89 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.quicktime-movie");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v90 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatKind");
  v286 = __p;
  v91 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v90 + 56, __p);
  MEMORY[0x2318C02F0](v91 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.m4v-video");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v92 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoAttachment");
  v286 = __p;
  v93 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v92 + 56, __p);
  MEMORY[0x2318C02F0](v93 + 56, "com_apple_mail_attachmentTypes=public.movie");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v94 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatAttachment");
  v286 = __p;
  v95 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v94 + 56, __p);
  MEMORY[0x2318C02F0](v95 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.quicktime-movie");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v96 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatAttachment");
  v286 = __p;
  v97 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v96 + 56, __p);
  MEMORY[0x2318C02F0](v97 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.m4v-video");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v98 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoKind");
  v286 = __p;
  v99 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v98 + 56, __p);
  MEMORY[0x2318C02F0](v99 + 56, "com_apple_mail_attachmentTypes=public.movie");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v100 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatKind");
  v286 = __p;
  v101 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v100 + 56, __p);
  MEMORY[0x2318C02F0](v101 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.quicktime-movie");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v102 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatKind");
  v286 = __p;
  v103 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v102 + 56, __p);
  MEMORY[0x2318C02F0](v103 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.m4v-video");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v104 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "VideoAttachment");
  v286 = __p;
  v105 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v104 + 56, __p);
  MEMORY[0x2318C02F0](v105 + 56, "com_apple_mail_attachmentTypes=public.movie");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v106 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "MovVideoFormatAttachment");
  v286 = __p;
  v107 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v106 + 56, __p);
  MEMORY[0x2318C02F0](v107 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.quicktime-movie");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v108 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "Mp4VideoFormatAttachment");
  v286 = __p;
  v109 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v108 + 56, __p);
  MEMORY[0x2318C02F0](v109 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.m4v-video");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v110 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationKind");
  v286 = __p;
  v111 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v110 + 56, __p);
  MEMORY[0x2318C02F0](v111 + 56, "(com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key || com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v112 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatKind");
  v286 = __p;
  v113 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v112 + 56, __p);
  MEMORY[0x2318C02F0](v113 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v114 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatKind");
  v286 = __p;
  v115 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v114 + 56, __p);
  MEMORY[0x2318C02F0](v115 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v116 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationAttachment");
  v286 = __p;
  v117 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v116 + 56, __p);
  MEMORY[0x2318C02F0](v117 + 56, "(com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key || com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v118 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatAttachment");
  v286 = __p;
  v119 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v118 + 56, __p);
  MEMORY[0x2318C02F0](v119 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v120 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatAttachment");
  v286 = __p;
  v121 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v120 + 56, __p);
  MEMORY[0x2318C02F0](v121 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v122 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationKind");
  v286 = __p;
  v123 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v122 + 56, __p);
  MEMORY[0x2318C02F0](v123 + 56, "(com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key || com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v124 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatKind");
  v286 = __p;
  v125 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v124 + 56, __p);
  MEMORY[0x2318C02F0](v125 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v126 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatKind");
  v286 = __p;
  v127 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v126 + 56, __p);
  MEMORY[0x2318C02F0](v127 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v128 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PresentationAttachment");
  v286 = __p;
  v129 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v128 + 56, __p);
  MEMORY[0x2318C02F0](v129 + 56, "(com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key || com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v130 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "KeyPresentationFormatAttachment");
  v286 = __p;
  v131 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v130 + 56, __p);
  MEMORY[0x2318C02F0](v131 + 56, "com_apple_mail_attachmentSpecificTypes=com.apple.iwork.keynote.key");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v132 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PptPresentationFormatAttachment");
  v286 = __p;
  v133 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v132 + 56, __p);
  MEMORY[0x2318C02F0](v133 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.powerpoint.ppt || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.presentationml.presentation)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v134 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetKind");
  v286 = __p;
  v135 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v134 + 56, __p);
  MEMORY[0x2318C02F0](v135 + 56, "(com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.sffnumbers || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.numbers || com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v136 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatKind");
  v286 = __p;
  v137 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v136 + 56, __p);
  MEMORY[0x2318C02F0](v137 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v138 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetAttachment");
  v286 = __p;
  v139 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v138 + 56, __p);
  MEMORY[0x2318C02F0](v139 + 56, "(com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.sffnumbers || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.numbers || com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v140 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatAttachment");
  v286 = __p;
  v141 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v140 + 56, __p);
  MEMORY[0x2318C02F0](v141 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v142 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetKind");
  v286 = __p;
  v143 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v142 + 56, __p);
  MEMORY[0x2318C02F0](v143 + 56, "(com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.sffnumbers || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.numbers || com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v144 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatKind");
  v286 = __p;
  v145 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v144 + 56, __p);
  MEMORY[0x2318C02F0](v145 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v146 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "SpreadsheetAttachment");
  v286 = __p;
  v147 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v146 + 56, __p);
  MEMORY[0x2318C02F0](v147 + 56, "(com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.sffnumbers || com_apple_mail_attachmentTypes==com.apple.iwork.numbers.numbers || com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v148 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "XlsSpreadsheetFormatAttachment");
  v286 = __p;
  v149 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v148 + 56, __p);
  MEMORY[0x2318C02F0](v149 + 56, "(com_apple_mail_attachmentSpecificTypes=com.microsoft.excel.xls || com_apple_mail_attachmentSpecificTypes=org.openxmlformats.spreadsheetml.sheet)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v150 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentKind");
  v286 = __p;
  v151 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v150 + 56, __p);
  MEMORY[0x2318C02F0](v151 + 56, "(com_apple_mail_attachmentKinds=PDF*cwd || com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.word*cwd || com_apple_mail_attachmentTypes=public.plain-text || com_apple_mail_attachmentTypes=public.rtf)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v152 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentKind");
  v286 = __p;
  v153 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v152 + 56, __p);
  MEMORY[0x2318C02F0](v153 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork.pages.* || com_apple_mail_attachmentTypes=com.microsoft.word.doc || com_apple_mail_attachmentTypes=org.openxmlformats.word*)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v154 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentKind");
  v286 = __p;
  v155 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v154 + 56, __p);
  MEMORY[0x2318C02F0](v155 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.*cwd || com_apple_mail_attachmentTypes=org.openxmlformats*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v156 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatKind");
  v286 = __p;
  v157 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v156 + 56, __p);
  MEMORY[0x2318C02F0](v157 + 56, "(com_apple_mail_attachmentSpecificTypes=microsoft.word.doc*cwd || com_apple_mail_attachmentSpecificTypes=openxmlformats.word*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v158 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentAttachment");
  v286 = __p;
  v159 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v158 + 56, __p);
  MEMORY[0x2318C02F0](v159 + 56, "(com_apple_mail_attachmentKinds=PDF*cwd || com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.word*cwd || com_apple_mail_attachmentTypes=public.plain-text || com_apple_mail_attachmentTypes=public.rtf)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v160 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentAttachment");
  v286 = __p;
  v161 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v160 + 56, __p);
  MEMORY[0x2318C02F0](v161 + 56, "(com_apple_mail_attachmentTypes=com.microsoft.word.doc || com_apple_mail_attachmentTypes=com.apple.iwork.pages.*)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v162 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentAttachment");
  v286 = __p;
  v163 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v162 + 56, __p);
  MEMORY[0x2318C02F0](v163 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.*cwd || com_apple_mail_attachmentTypes=org.openxmlformats*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v164 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatAttachment");
  v286 = __p;
  v165 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v164 + 56, __p);
  MEMORY[0x2318C02F0](v165 + 56, "(com_apple_mail_attachmentSpecificTypes=microsoft.word.doc*cwd || com_apple_mail_attachmentSpecificTypes=openxmlformats.word*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v166 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentKind");
  v286 = __p;
  v167 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v166 + 56, __p);
  MEMORY[0x2318C02F0](v167 + 56, "(com_apple_mail_attachmentKinds=PDF*cwd || com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.word*cwd || com_apple_mail_attachmentTypes=public.plain-text || com_apple_mail_attachmentTypes=public.rtf)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v168 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentKind");
  v286 = __p;
  v169 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v168 + 56, __p);
  MEMORY[0x2318C02F0](v169 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork.pages.* || com_apple_mail_attachmentTypes=com.microsoft.word.doc || com_apple_mail_attachmentTypes=org.openxmlformats.word*)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v170 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentKind");
  v286 = __p;
  v171 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v170 + 56, __p);
  MEMORY[0x2318C02F0](v171 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.*cwd || com_apple_mail_attachmentTypes=org.openxmlformats*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v172 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatKind");
  v286 = __p;
  v173 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v172 + 56, __p);
  MEMORY[0x2318C02F0](v173 + 56, "(com_apple_mail_attachmentSpecificTypes=microsoft.word.doc*cwd || com_apple_mail_attachmentSpecificTypes=openxmlformats.word*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v174 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocumentAttachment");
  v286 = __p;
  v175 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v174 + 56, __p);
  MEMORY[0x2318C02F0](v175 + 56, "(com_apple_mail_attachmentKinds=PDF*cwd || com_apple_mail_attachmentTypes=public.presentation || com_apple_mail_attachmentTypes=public.spreadsheet || com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.word*cwd || com_apple_mail_attachmentTypes=public.plain-text || com_apple_mail_attachmentTypes=public.rtf)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v176 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PagesDocumentAttachment");
  v286 = __p;
  v177 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v176 + 56, __p);
  MEMORY[0x2318C02F0](v177 + 56, "(com_apple_mail_attachmentTypes=com.microsoft.word.doc || com_apple_mail_attachmentTypes=com.apple.iwork.pages.*)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v178 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "IworkDocumentAttachment");
  v286 = __p;
  v179 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v178 + 56, __p);
  MEMORY[0x2318C02F0](v179 + 56, "(com_apple_mail_attachmentTypes=com.apple.iwork*cwd || com_apple_mail_attachmentTypes=com.microsoft.*cwd || com_apple_mail_attachmentTypes=org.openxmlformats*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v180 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "DocDocumentFormatAttachment");
  v286 = __p;
  v181 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v180 + 56, __p);
  MEMORY[0x2318C02F0](v181 + 56, "(com_apple_mail_attachmentSpecificTypes=microsoft.word.doc*cwd || com_apple_mail_attachmentSpecificTypes=openxmlformats.word*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v182 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatKind");
  v286 = __p;
  v183 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v182 + 56, __p);
  MEMORY[0x2318C02F0](v183 + 56, "(com_apple_mail_attachmentSpecificTypes=rtf*cwd || com_apple_mail_attachmentSpecificTypes=rtf*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v184 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatAttachment");
  v286 = __p;
  v185 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v184 + 56, __p);
  MEMORY[0x2318C02F0](v185 + 56, "(com_apple_mail_attachmentSpecificTypes=rtf*cwd || com_apple_mail_attachmentSpecificTypes=rtf*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v186 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatKind");
  v286 = __p;
  v187 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v186 + 56, __p);
  MEMORY[0x2318C02F0](v187 + 56, "(com_apple_mail_attachmentSpecificTypes=rtf*cwd || com_apple_mail_attachmentSpecificTypes=rtf*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v188 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "RtfTextFormatAttachment");
  v286 = __p;
  v189 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v188 + 56, __p);
  MEMORY[0x2318C02F0](v189 + 56, "(com_apple_mail_attachmentSpecificTypes=rtf*cwd || com_apple_mail_attachmentSpecificTypes=rtf*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v190 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatKind");
  v286 = __p;
  v191 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v190 + 56, __p);
  MEMORY[0x2318C02F0](v191 + 56, "com_apple_mail_attachmentSpecificTypes=public.plain-text");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v192 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatAttachment");
  v286 = __p;
  v193 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v192 + 56, __p);
  MEMORY[0x2318C02F0](v193 + 56, "com_apple_mail_attachmentSpecificTypes=public.plain-text");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v194 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatKind");
  v286 = __p;
  v195 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v194 + 56, __p);
  MEMORY[0x2318C02F0](v195 + 56, "com_apple_mail_attachmentSpecificTypes=public.plain-text");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v196 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "TxtTextFormatAttachment");
  v286 = __p;
  v197 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v196 + 56, __p);
  MEMORY[0x2318C02F0](v197 + 56, "com_apple_mail_attachmentSpecificTypes=public.plain-text");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v198 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileKind");
  v286 = __p;
  v199 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v198 + 56, __p);
  MEMORY[0x2318C02F0](v199 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v200 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatKind");
  v286 = __p;
  v201 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v200 + 56, __p);
  MEMORY[0x2318C02F0](v201 + 56, "(com_apple_mail_attachmentSpecificTypes=tar*cwd || com_apple_mail_attachmentSpecificTypes=zip*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v202 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatKind");
  v286 = __p;
  v203 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v202 + 56, __p);
  MEMORY[0x2318C02F0](v203 + 56, "com_apple_mail_attachmentSpecificTypes=java*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v204 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileAttachment");
  v286 = __p;
  v205 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v204 + 56, __p);
  MEMORY[0x2318C02F0](v205 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v206 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatAttachment");
  v286 = __p;
  v207 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v206 + 56, __p);
  MEMORY[0x2318C02F0](v207 + 56, "(com_apple_mail_attachmentSpecificTypes=tar*cwd || com_apple_mail_attachmentSpecificTypes=zip*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v208 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatAttachment");
  v286 = __p;
  v209 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v208 + 56, __p);
  MEMORY[0x2318C02F0](v209 + 56, "com_apple_mail_attachmentSpecificTypes=java*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v210 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileKind");
  v286 = __p;
  v211 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v210 + 56, __p);
  MEMORY[0x2318C02F0](v211 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v212 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatKind");
  v286 = __p;
  v213 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v212 + 56, __p);
  MEMORY[0x2318C02F0](v213 + 56, "(com_apple_mail_attachmentSpecificTypes=tar*cwd || com_apple_mail_attachmentSpecificTypes=zip*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v214 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatKind");
  v286 = __p;
  v215 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v214 + 56, __p);
  MEMORY[0x2318C02F0](v215 + 56, "com_apple_mail_attachmentSpecificTypes=java*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v216 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "FileAttachment");
  v286 = __p;
  v217 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v216 + 56, __p);
  MEMORY[0x2318C02F0](v217 + 56, "com_apple_mail_attachmentKinds=*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v218 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "TarFileFormatAttachment");
  v286 = __p;
  v219 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v218 + 56, __p);
  MEMORY[0x2318C02F0](v219 + 56, "(com_apple_mail_attachmentSpecificTypes=tar*cwd || com_apple_mail_attachmentSpecificTypes=zip*cwd)");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v220 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "JavaFileFormatAttachment");
  v286 = __p;
  v221 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v220 + 56, __p);
  MEMORY[0x2318C02F0](v221 + 56, "com_apple_mail_attachmentSpecificTypes=java*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v222 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventKind");
  v286 = __p;
  v223 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v222 + 56, __p);
  MEMORY[0x2318C02F0](v223 + 56, "com_apple_mail_attachmentTypes=public.calendar-eventcwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v224 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatKind");
  v286 = __p;
  v225 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v224 + 56, __p);
  MEMORY[0x2318C02F0](v225 + 56, "com_apple_mail_attachmentSpecificTypes=*ics*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v226 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventAttachment");
  v286 = __p;
  v227 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v226 + 56, __p);
  MEMORY[0x2318C02F0](v227 + 56, "com_apple_mail_attachmentTypes=public.calendar-eventcwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v228 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatAttachment");
  v286 = __p;
  v229 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v228 + 56, __p);
  MEMORY[0x2318C02F0](v229 + 56, "com_apple_mail_attachmentSpecificTypes=*ics*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v230 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventKind");
  v286 = __p;
  v231 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v230 + 56, __p);
  MEMORY[0x2318C02F0](v231 + 56, "com_apple_mail_attachmentTypes=public.calendar-eventcwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v232 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatKind");
  v286 = __p;
  v233 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v232 + 56, __p);
  MEMORY[0x2318C02F0](v233 + 56, "com_apple_mail_attachmentSpecificTypes=*ics*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v234 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "EventAttachment");
  v286 = __p;
  v235 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v234 + 56, __p);
  MEMORY[0x2318C02F0](v235 + 56, "com_apple_mail_attachmentTypes=public.calendar-eventcwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v236 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "IcsEventFormatAttachment");
  v286 = __p;
  v237 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v236 + 56, __p);
  MEMORY[0x2318C02F0](v237 + 56, "com_apple_mail_attachmentSpecificTypes=*ics*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v238 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsKind");
  v286 = __p;
  v239 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v238 + 56, __p);
  MEMORY[0x2318C02F0](v239 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v240 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatKind");
  v286 = __p;
  v241 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v240 + 56, __p);
  MEMORY[0x2318C02F0](v241 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v242 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsAttachment");
  v286 = __p;
  v243 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v242 + 56, __p);
  MEMORY[0x2318C02F0](v243 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v244 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatAttachment");
  v286 = __p;
  v245 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v244 + 56, __p);
  MEMORY[0x2318C02F0](v245 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v246 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsKind");
  v286 = __p;
  v247 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v246 + 56, __p);
  MEMORY[0x2318C02F0](v247 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v248 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatKind");
  v286 = __p;
  v249 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v248 + 56, __p);
  MEMORY[0x2318C02F0](v249 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v250 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactsAttachment");
  v286 = __p;
  v251 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v250 + 56, __p);
  MEMORY[0x2318C02F0](v251 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v252 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "VcfContactsFormatAttachment");
  v286 = __p;
  v253 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v252 + 56, __p);
  MEMORY[0x2318C02F0](v253 + 56, "com_apple_mail_attachmentSpecificTypes=public.vcard");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v254 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatKind");
  v286 = __p;
  v255 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v254 + 56, __p);
  MEMORY[0x2318C02F0](v255 + 56, "com_apple_mail_attachmentTypes=com.apple.pkpasscwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v256 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatAttachment");
  v286 = __p;
  v257 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v256 + 56, __p);
  MEMORY[0x2318C02F0](v257 + 56, "com_apple_mail_attachmentTypes=com.apple.pkpasscwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v258 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatKind");
  v286 = __p;
  v259 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v258 + 56, __p);
  MEMORY[0x2318C02F0](v259 + 56, "com_apple_mail_attachmentTypes=com.apple.pkpasscwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v260 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PassDocumentFormatAttachment");
  v286 = __p;
  v261 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v260 + 56, __p);
  MEMORY[0x2318C02F0](v261 + 56, "com_apple_mail_attachmentTypes=com.apple.pkpasscwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v262 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatKind");
  v286 = __p;
  v263 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v262 + 56, __p);
  MEMORY[0x2318C02F0](v263 + 56, "com_apple_mail_attachmentKinds=PDF*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v264 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatAttachment");
  v286 = __p;
  v265 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v264 + 56, __p);
  MEMORY[0x2318C02F0](v265 + 56, "com_apple_mail_attachmentKinds=PDF*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v266 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatKind");
  v286 = __p;
  v267 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v266 + 56, __p);
  MEMORY[0x2318C02F0](v267 + 56, "com_apple_mail_attachmentKinds=PDF*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v268 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "PdfDocumentFormatAttachment");
  v286 = __p;
  v269 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v268 + 56, __p);
  MEMORY[0x2318C02F0](v269 + 56, "com_apple_mail_attachmentKinds=PDF*cwd");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v270 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v286 = __p;
  v271 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v270 + 56, __p);
  MEMORY[0x2318C02F0](v271 + 56, "com_apple_mail_attachmentNames=%@c");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v272 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "Filename");
  v286 = __p;
  v273 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v272 + 56, __p);
  MEMORY[0x2318C02F0](v273 + 56, "com_apple_mail_attachmentNames=%@c");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v274 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookKind");
  v286 = __p;
  v275 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v274 + 56, __p);
  MEMORY[0x2318C02F0](v275 + 56, "com_apple_mail_attachmentKinds=org.idpf.epub-container");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHED");
  __p[0] = v284;
  v276 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookAttachment");
  v286 = __p;
  v277 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v276 + 56, __p);
  MEMORY[0x2318C02F0](v277 + 56, "com_apple_mail_attachmentKinds=org.idpf.epub-container");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v278 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookKind");
  v286 = __p;
  v279 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v278 + 56, __p);
  MEMORY[0x2318C02F0](v279 + 56, "com_apple_mail_attachmentKinds=org.idpf.epub-container");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v284, "ATTACHMOD");
  __p[0] = v284;
  v280 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, v284);
  std::string::basic_string[abi:ne200100]<0>(__p, "BookAttachment");
  v286 = __p;
  v281 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v280 + 56, __p);
  MEMORY[0x2318C02F0](v281 + 56, "com_apple_mail_attachmentKinds=org.idpf.epub-container");
  if (v283 < 0)
  {
    operator delete(__p[0]);
  }

  if (v285 < 0)
  {
    operator delete(v284[0]);
  }
}