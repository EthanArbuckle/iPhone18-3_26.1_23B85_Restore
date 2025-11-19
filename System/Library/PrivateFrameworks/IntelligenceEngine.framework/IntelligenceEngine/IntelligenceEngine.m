uint64_t _GLOBAL__sub_I_status_cc()
{
  google::protobuf::util::Status::OK = 0;
  qword_280AF3930 = 0;
  unk_280AF3938 = 0;
  qword_280AF3928 = 0;
  __cxa_atexit(google::protobuf::util::Status::~Status, &google::protobuf::util::Status::OK, &dword_254C81000);
  google::protobuf::util::Status::CANCELLED = 1;
  qword_280AF3DD8 = 0;
  unk_280AF3DE0 = 0;
  qword_280AF3DD0 = 0;
  __cxa_atexit(google::protobuf::util::Status::~Status, &google::protobuf::util::Status::CANCELLED, &dword_254C81000);
  google::protobuf::util::Status::UNKNOWN = 2;
  qword_280AF3A88 = 0;
  unk_280AF3A90 = 0;
  qword_280AF3A80 = 0;

  return __cxa_atexit(google::protobuf::util::Status::~Status, &google::protobuf::util::Status::UNKNOWN, &dword_254C81000);
}

uint64_t _GLOBAL__sub_I_dialogtypes_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::ARRAY_SUFFIX, "[]");
  v0 = MEMORY[0x277D82640];

  return __cxa_atexit(v0, siri::intelligence::ARRAY_SUFFIX, &dword_254C81000);
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

uint64_t _GLOBAL__sub_I_configuration_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::Configuration::TEMPLATES_DIR, "Templates");
  v0 = MEMORY[0x277D82640];

  return __cxa_atexit(v0, siri::intelligence::Configuration::TEMPLATES_DIR, &dword_254C81000);
}

uint64_t _GLOBAL__sub_I_simplekey_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(YAML::TokenNames, "DIRECTIVE");
  std::string::basic_string[abi:ne200100]<0>(&YAML::TokenNames[24], "DOC_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF4FE8, "DOC_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5000, "BLOCK_SEQ_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5018, "BLOCK_MAP_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5030, "BLOCK_SEQ_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5048, "BLOCK_MAP_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5060, "BLOCK_ENTRY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5078, "FLOW_SEQ_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5090, "FLOW_MAP_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF50A8, "FLOW_SEQ_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF50C0, "FLOW_MAP_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF50D8, "FLOW_MAP_COMPACT");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF50F0, "FLOW_ENTRY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5108, "KEY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5120, "VALUE");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5138, "ANCHOR");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5150, "ALIAS");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5168, "TAG");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5180, "SCALAR");

  return __cxa_atexit(__cxx_global_array_dtor, 0, &dword_254C81000);
}

void sub_254C823BC(_Unwind_Exception *exception_object)
{
  while (1)
  {
    v4 = *(v2 - 1);
    v2 -= 3;
    if (v4 < 0)
    {
      operator delete(*v2);
    }

    if (v2 == v1)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t _GLOBAL__sub_I_scantoken_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(YAML::TokenNames, "DIRECTIVE");
  std::string::basic_string[abi:ne200100]<0>(&YAML::TokenNames[24], "DOC_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF51C8, "DOC_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF51E0, "BLOCK_SEQ_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF51F8, "BLOCK_MAP_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5210, "BLOCK_SEQ_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5228, "BLOCK_MAP_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5240, "BLOCK_ENTRY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5258, "FLOW_SEQ_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5270, "FLOW_MAP_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5288, "FLOW_SEQ_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF52A0, "FLOW_MAP_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF52B8, "FLOW_MAP_COMPACT");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF52D0, "FLOW_ENTRY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF52E8, "KEY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5300, "VALUE");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5318, "ANCHOR");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5330, "ALIAS");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5348, "TAG");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5360, "SCALAR");

  return __cxa_atexit(__cxx_global_array_dtor_0, 0, &dword_254C81000);
}

void sub_254C82610(_Unwind_Exception *exception_object)
{
  while (1)
  {
    v4 = *(v2 - 1);
    v2 -= 3;
    if (v4 < 0)
    {
      operator delete(*v2);
    }

    if (v2 == v1)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t _GLOBAL__sub_I_behaviorhandler_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::IE_GLOBAL_SCOPE, "__global__");
  v0 = MEMORY[0x277D82640];

  return __cxa_atexit(v0, siri::intelligence::IE_GLOBAL_SCOPE, &dword_254C81000);
}

uint64_t _GLOBAL__sub_I_singledocparser_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(YAML::TokenNames, "DIRECTIVE");
  std::string::basic_string[abi:ne200100]<0>(&YAML::TokenNames[24], "DOC_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF53A8, "DOC_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF53C0, "BLOCK_SEQ_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF53D8, "BLOCK_MAP_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF53F0, "BLOCK_SEQ_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5408, "BLOCK_MAP_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5420, "BLOCK_ENTRY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5438, "FLOW_SEQ_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5450, "FLOW_MAP_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5468, "FLOW_SEQ_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5480, "FLOW_MAP_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5498, "FLOW_MAP_COMPACT");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF54B0, "FLOW_ENTRY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF54C8, "KEY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF54E0, "VALUE");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF54F8, "ANCHOR");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5510, "ALIAS");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5528, "TAG");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5540, "SCALAR");

  return __cxa_atexit(__cxx_global_array_dtor_1, 0, &dword_254C81000);
}

void sub_254C828C4(_Unwind_Exception *exception_object)
{
  while (1)
  {
    v4 = *(v2 - 1);
    v2 -= 3;
    if (v4 < 0)
    {
      operator delete(*v2);
    }

    if (v2 == v1)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t _GLOBAL__sub_I_memoryclass_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::Memory::BOOLEAN_SET, "true");
  v0 = MEMORY[0x277D82640];
  __cxa_atexit(MEMORY[0x277D82640], &siri::intelligence::Memory::BOOLEAN_SET, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::Memory::BOOLEAN_UNSET, "false");
  __cxa_atexit(v0, &siri::intelligence::Memory::BOOLEAN_UNSET, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::Memory::NUMBER_ZERO, "0");
  __cxa_atexit(v0, siri::intelligence::Memory::NUMBER_ZERO, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::Memory::STRING_UNSET, &str_6_1);

  return __cxa_atexit(v0, siri::intelligence::Memory::STRING_UNSET, &dword_254C81000);
}

uint64_t _GLOBAL__sub_I_scanner_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(YAML::TokenNames, "DIRECTIVE");
  std::string::basic_string[abi:ne200100]<0>(&YAML::TokenNames[24], "DOC_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5588, "DOC_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF55A0, "BLOCK_SEQ_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF55B8, "BLOCK_MAP_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF55D0, "BLOCK_SEQ_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF55E8, "BLOCK_MAP_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5600, "BLOCK_ENTRY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5618, "FLOW_SEQ_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5630, "FLOW_MAP_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5648, "FLOW_SEQ_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5660, "FLOW_MAP_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5678, "FLOW_MAP_COMPACT");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5690, "FLOW_ENTRY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF56A8, "KEY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF56C0, "VALUE");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF56D8, "ANCHOR");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF56F0, "ALIAS");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5708, "TAG");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5720, "SCALAR");

  return __cxa_atexit(__cxx_global_array_dtor_2, 0, &dword_254C81000);
}

void sub_254C82C00(_Unwind_Exception *exception_object)
{
  while (1)
  {
    v4 = *(v2 - 1);
    v2 -= 3;
    if (v4 < 0)
    {
      operator delete(*v2);
    }

    if (v2 == v1)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t _GLOBAL__sub_I_validator_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::sIntentRenameChange, "1.4.5");
  v0 = MEMORY[0x277D82640];

  return __cxa_atexit(v0, siri::intelligence::sIntentRenameChange, &dword_254C81000);
}

uint64_t _GLOBAL__sub_I_validationresult_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_NO_VERSION, "no-version");
  v0 = MEMORY[0x277D82640];
  __cxa_atexit(MEMORY[0x277D82640], &siri::intelligence::CODE_NO_VERSION, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_NO_META_NAME, "no-meta-name");
  __cxa_atexit(v0, &siri::intelligence::CODE_NO_META_NAME, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_NO_VAR_NAME, "no-var-name");
  __cxa_atexit(v0, &siri::intelligence::CODE_NO_VAR_NAME, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_NO_VAR_TYPE, "no-var-type");
  __cxa_atexit(v0, &siri::intelligence::CODE_NO_VAR_TYPE, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_NO_PARAM, "no-param");
  __cxa_atexit(v0, &siri::intelligence::CODE_NO_PARAM, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::CODE_NO_CATI_NAME, "no-cati-name");
  __cxa_atexit(v0, siri::intelligence::CODE_NO_CATI_NAME, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::CODE_NO_CATI_GUID, "no-cati-guid");
  __cxa_atexit(v0, siri::intelligence::CODE_NO_CATI_GUID, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::CODE_DUPE_PRODUCER, "dupe-producer");
  __cxa_atexit(v0, siri::intelligence::CODE_DUPE_PRODUCER, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_FUTURE_VERSION, "future-version");
  __cxa_atexit(v0, &siri::intelligence::CODE_FUTURE_VERSION, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_UNDEF_VAR, "undef-var");
  __cxa_atexit(v0, &siri::intelligence::CODE_UNDEF_VAR, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_UNDEF_RESPONSE, "undef-response");
  __cxa_atexit(v0, &siri::intelligence::CODE_UNDEF_RESPONSE, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_UNDEF_INPUT, "undef-input");
  __cxa_atexit(v0, &siri::intelligence::CODE_UNDEF_INPUT, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_UNDEF_CONDITION, "undef-condition");
  __cxa_atexit(v0, &siri::intelligence::CODE_UNDEF_CONDITION, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_UNDEF_INTENT, "undef-intent");
  __cxa_atexit(v0, &siri::intelligence::CODE_UNDEF_INTENT, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_UNDEF_FUNC, "undef-func");
  __cxa_atexit(v0, &siri::intelligence::CODE_UNDEF_FUNC, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_UNDEF_PARAM, "undef-param");
  __cxa_atexit(v0, &siri::intelligence::CODE_UNDEF_PARAM, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_INVALID_NAME, "invalid-name");
  __cxa_atexit(v0, &siri::intelligence::CODE_INVALID_NAME, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_INVALID_ID, "invalid-id");
  __cxa_atexit(v0, &siri::intelligence::CODE_INVALID_ID, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::CODE_INVALID_CAT_ID, "invalid-cat-id");
  __cxa_atexit(v0, siri::intelligence::CODE_INVALID_CAT_ID, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::CODE_INVALID_PATTERN_ID, "invalid-pattern-id");
  __cxa_atexit(v0, siri::intelligence::CODE_INVALID_PATTERN_ID, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_NO_ID, "no-id");
  __cxa_atexit(v0, &siri::intelligence::CODE_NO_ID, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_NO_CAT_ID, "no-cat-id");
  __cxa_atexit(v0, &siri::intelligence::CODE_NO_CAT_ID, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_NO_PATTERN_ID, "no-pattern-id");
  __cxa_atexit(v0, &siri::intelligence::CODE_NO_PATTERN_ID, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_NO_RESPONSE_ID, "no-response-id");
  __cxa_atexit(v0, &siri::intelligence::CODE_NO_RESPONSE_ID, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_NO_OPERATOR, "no-operator");
  __cxa_atexit(v0, &siri::intelligence::CODE_NO_OPERATOR, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_NO_EFFECT, "no-effect");
  __cxa_atexit(v0, &siri::intelligence::CODE_NO_EFFECT, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_INVALID_OPERATOR, "invalid-operator");
  __cxa_atexit(v0, &siri::intelligence::CODE_INVALID_OPERATOR, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_EMPTY_EXPR, "empty-expr");
  __cxa_atexit(v0, &siri::intelligence::CODE_EMPTY_EXPR, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_INVALID_TYPE, "invalid-type");
  __cxa_atexit(v0, &siri::intelligence::CODE_INVALID_TYPE, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_TYPE_MISMATCH, "type-mismatch");
  __cxa_atexit(v0, &siri::intelligence::CODE_TYPE_MISMATCH, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_MULTI_DEFS, "multi-defs");
  __cxa_atexit(v0, &siri::intelligence::CODE_MULTI_DEFS, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_FILE_NOT_FOUND, "file-not-found");
  __cxa_atexit(v0, &siri::intelligence::CODE_FILE_NOT_FOUND, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_YAML_PARSE, "yaml-parse");
  __cxa_atexit(v0, &siri::intelligence::CODE_YAML_PARSE, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_DUPE_ID, "dupe-id");
  __cxa_atexit(v0, &siri::intelligence::CODE_DUPE_ID, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_READ_ONLY, "read-only");
  __cxa_atexit(v0, &siri::intelligence::CODE_READ_ONLY, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_DEPRECATED, "deprecated");
  __cxa_atexit(v0, &siri::intelligence::CODE_DEPRECATED, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_INFINITE_LOOP, "infinite-loop");
  __cxa_atexit(v0, &siri::intelligence::CODE_INFINITE_LOOP, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::CODE_UNUSED, "unused");
  __cxa_atexit(v0, &siri::intelligence::CODE_UNUSED, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::CODE_UTTER_DUPE, "utter-dupe");
  __cxa_atexit(v0, siri::intelligence::CODE_UTTER_DUPE, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::CODE_UTTER_NUM, "utter-num");
  __cxa_atexit(v0, siri::intelligence::CODE_UTTER_NUM, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::CODE_UTTER_EMPTY, "utter-empty");

  return __cxa_atexit(v0, siri::intelligence::CODE_UTTER_EMPTY, &dword_254C81000);
}

uint64_t _GLOBAL__sub_I_nlgenerator_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(FALLBACK_EVENT_ID, "fallback");
  v0 = MEMORY[0x277D82640];

  return __cxa_atexit(v0, FALLBACK_EVENT_ID, &dword_254C81000);
}

uint64_t _GLOBAL__sub_I_flowgraph_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::IE_GLOBAL_SCOPE, "__global__");
  v0 = MEMORY[0x277D82640];

  return __cxa_atexit(v0, &siri::intelligence::IE_GLOBAL_SCOPE, &dword_254C81000);
}

uint64_t _GLOBAL__sub_I_parser_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(YAML::TokenNames, "DIRECTIVE");
  std::string::basic_string[abi:ne200100]<0>(&YAML::TokenNames[24], "DOC_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5768, "DOC_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5780, "BLOCK_SEQ_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5798, "BLOCK_MAP_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF57B0, "BLOCK_SEQ_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF57C8, "BLOCK_MAP_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF57E0, "BLOCK_ENTRY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF57F8, "FLOW_SEQ_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5810, "FLOW_MAP_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5828, "FLOW_SEQ_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5840, "FLOW_MAP_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5858, "FLOW_MAP_COMPACT");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5870, "FLOW_ENTRY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5888, "KEY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF58A0, "VALUE");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF58B8, "ANCHOR");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF58D0, "ALIAS");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF58E8, "TAG");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5900, "SCALAR");

  return __cxa_atexit(__cxx_global_array_dtor_4, 0, &dword_254C81000);
}

void sub_254C83624(_Unwind_Exception *exception_object)
{
  while (1)
  {
    v4 = *(v2 - 1);
    v2 -= 3;
    if (v4 < 0)
    {
      operator delete(*v2);
    }

    if (v2 == v1)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t _GLOBAL__sub_I_executionstate_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::IE_GLOBAL_SCOPE, "__global__");
  v0 = MEMORY[0x277D82640];

  return __cxa_atexit(v0, siri::intelligence::IE_GLOBAL_SCOPE, &dword_254C81000);
}

uint64_t _GLOBAL__sub_I_tag_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(YAML::TokenNames, "DIRECTIVE");
  std::string::basic_string[abi:ne200100]<0>(&YAML::TokenNames[24], "DOC_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5948, "DOC_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5960, "BLOCK_SEQ_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5978, "BLOCK_MAP_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5990, "BLOCK_SEQ_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF59A8, "BLOCK_MAP_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF59C0, "BLOCK_ENTRY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF59D8, "FLOW_SEQ_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF59F0, "FLOW_MAP_START");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5A08, "FLOW_SEQ_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5A20, "FLOW_MAP_END");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5A38, "FLOW_MAP_COMPACT");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5A50, "FLOW_ENTRY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5A68, "KEY");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5A80, "VALUE");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5A98, "ANCHOR");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5AB0, "ALIAS");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5AC8, "TAG");
  std::string::basic_string[abi:ne200100]<0>(byte_280AF5AE0, "SCALAR");

  return __cxa_atexit(__cxx_global_array_dtor_5, 0, &dword_254C81000);
}

void sub_254C838D8(_Unwind_Exception *exception_object)
{
  while (1)
  {
    v4 = *(v2 - 1);
    v2 -= 3;
    if (v4 < 0)
    {
      operator delete(*v2);
    }

    if (v2 == v1)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t _GLOBAL__sub_I_intelligence_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&qword_280AF4930, "__global__");
  v0 = MEMORY[0x277D82640];
  __cxa_atexit(MEMORY[0x277D82640], &qword_280AF4930, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&qword_280AF4948, "default");
  __cxa_atexit(v0, &qword_280AF4948, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::IE_GLOBAL_CURRENT_ACTIVITY, "global.currentActivity");
  __cxa_atexit(v0, siri::intelligence::IE_GLOBAL_CURRENT_ACTIVITY, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::IE_GLOBAL_PREVIOUS_ACTIVITY, "global.previousActivity");
  __cxa_atexit(v0, siri::intelligence::IE_GLOBAL_PREVIOUS_ACTIVITY, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::IE_GLOBAL_ACTIVE_INTENTS, "global.activeIntents");
  __cxa_atexit(v0, siri::intelligence::IE_GLOBAL_ACTIVE_INTENTS, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(siri::intelligence::IE_GLOBAL_ACTIVE_LOCAL_INTENTS, "global.activeLocalIntents");
  __cxa_atexit(v0, siri::intelligence::IE_GLOBAL_ACTIVE_LOCAL_INTENTS, &dword_254C81000);
  std::string::basic_string[abi:ne200100]<0>(&siri::intelligence::IE_RECOVER_FROM_DEAD_END, "recoverFromDeadEnd");

  return __cxa_atexit(v0, &siri::intelligence::IE_RECOVER_FROM_DEAD_END, &dword_254C81000);
}

void google::protobuf::internal::VerifyVersion(google::protobuf::internal *this, google::protobuf::internal *a2, const std::string::value_type *a3, const char *a4)
{
  if (a2 > 3010000)
  {
    LODWORD(v21) = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/stubs/common.cc";
    v23 = 75;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program requires version ");
    google::protobuf::internal::VersionString(a2, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v7 = &v18;
    }

    else
    {
      v7 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v8 = v20;
    }

    else
    {
      v8 = v19;
    }

    std::string::append(&v24, v7, v8);
    std::string::append(&v24, " of the Protocol Buffer runtime library, but the installed version is ");
    google::protobuf::internal::VersionString(0x2DEDD0, &__p);
    if ((v17 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v10 = v17;
    }

    else
    {
      v10 = v16;
    }

    std::string::append(&v24, p_p, v10);
    std::string::append(&v24, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    google::protobuf::internal::LogMessage::Finish(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  if (this < 3010000)
  {
    LODWORD(v21) = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/stubs/common.cc";
    v23 = 86;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program was compiled against version ");
    google::protobuf::internal::VersionString(this, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v11 = &v18;
    }

    else
    {
      v11 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v12 = v20;
    }

    else
    {
      v12 = v19;
    }

    std::string::append(&v24, v11, v12);
    std::string::append(&v24, " of the Protocol Buffer runtime library, which is not compatible with the installed version (");
    google::protobuf::internal::VersionString(0x2DEDD0, &__p);
    if ((v17 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v14 = v17;
    }

    else
    {
      v14 = v16;
    }

    std::string::append(&v24, v13, v14);
    std::string::append(&v24, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    google::protobuf::internal::LogMessage::Finish(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }
}

void sub_254C83E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::LogMessage::LogMessage(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, const std::string::value_type *a2)
{
  std::string::append(a1 + 1, a2);
  return a1;
}

{
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  std::string::append(a1 + 1, a2, v4);
  return a1;
}

unint64_t google::protobuf::internal::VersionString@<X0>(google::protobuf::internal *this@<X0>, _BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d.%d.%d", this / 1000000, this / 1000 % 1000, this % 1000);
  __str[127] = 0;
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v4] = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void google::protobuf::internal::LogMessage::~LogMessage(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

uint64_t google::protobuf::internal::DefaultLogHandler(uint64_t result, const char *a2, int a3, uint64_t a4)
{
  if ((result & 0x80000000) == 0)
  {
    v4 = MEMORY[0x277D85DF8];
    if (*(a4 + 23) >= 0)
    {
      v5 = a4;
    }

    else
    {
      v5 = *a4;
    }

    fprintf(*MEMORY[0x277D85DF8], "[libprotobuf %s %s:%d] %s\n", google::protobuf::internal::DefaultLogHandler(google::protobuf::LogLevel,char const*,int,std::string const&)::level_names[result], a2, a3, v5);
    v6 = *v4;

    return fflush(v6);
  }

  return result;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *google::protobuf::internal::LogMessage::operator<<(std::string *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%lu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

const char **google::protobuf::internal::LogMessage::Finish(const char **this)
{
  v1 = this;
  if (*this == 3)
  {
    v2 = 3;
  }

  else
  {
    v3 = atomic_load(&google::protobuf::internal::log_silencer_count_);
    if (v3 > 0)
    {
      goto LABEL_6;
    }

    v2 = *this;
  }

  this = google::protobuf::internal::log_handler_(v2, v1[1], *(v1 + 4), (v1 + 3));
LABEL_6:
  if (*v1 == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    google::protobuf::FatalException::FatalException(exception, v1[1], *(v1 + 4), v1 + 3);
  }

  return this;
}

void google::protobuf::internal::OnShutdownRun(google::protobuf::internal *this, void (*a2)(const void *), const void *a3)
{
  v5 = google::protobuf::internal::ShutdownData::get(this);
  std::mutex::lock((v5 + 24));
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *v5) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
    }

    v11 = v6 - *v5;
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

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<void (*)(void const*),void const*>>>(v5, v12);
    }

    v13 = (16 * v9);
    *v13 = this;
    v13[1] = a2;
    v8 = 16 * v9 + 16;
    v14 = *(v5 + 8) - *v5;
    v15 = (16 * v9 - v14);
    memcpy(v15, *v5, v14);
    v16 = *v5;
    *v5 = v15;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = this;
    v7[1] = a2;
    v8 = (v7 + 2);
  }

  *(v5 + 8) = v8;

  std::mutex::unlock((v5 + 24));
}

uint64_t google::protobuf::internal::ShutdownData::get(google::protobuf::internal::ShutdownData *this)
{
  {
    operator new();
  }

  return google::protobuf::internal::ShutdownData::get(void)::data;
}

void google::protobuf::FatalException::~FatalException(std::exception *this)
{
  this->__vftable = &unk_286718C40;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

{
  google::protobuf::FatalException::~FatalException(this);

  JUMPOUT(0x259C29D90);
}

uint64_t google::protobuf::FatalException::what(google::protobuf::FatalException *this)
{
  result = this + 24;
  if (*(this + 47) < 0)
  {
    return *result;
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2797B2F68, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t google::protobuf::FatalException::FatalException(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_286718C40;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
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

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C29C90](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_254C8483C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<void (*)(void const*),void const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void google::protobuf::util::Status::~Status(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C29B90](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C29BA0](v13);
  return a1;
}

void sub_254C84B28(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C29BA0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x254C84B08);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_254C84D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t google::protobuf::io::ZeroCopyOutputStream::WriteAliasedRaw(google::protobuf::io::ZeroCopyOutputStream *this, const void *a2)
{
  google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream.cc", 47);
  v2 = google::protobuf::internal::LogMessage::operator<<(v5, "This ZeroCopyOutputStream doesn't support aliasing. Reaching here usually means a ZeroCopyOutputStream implementation bug.");
  google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_254C84EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<int>::Reserve(a1, v4);
    google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a1, *a2);
    if (*a1 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1198);
      v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v6 = google::protobuf::RepeatedField<int>::elements(a1);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1177);
      v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<int>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }

  return a1;
}

void sub_254C84FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_6:
    v6 = (a1 + 2);
    goto LABEL_7;
  }

  v5 = (google::protobuf::RepeatedField<int>::elements(a1) - 8);
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = (google::protobuf::RepeatedField<int>::elements(a1) - 8);
  v2 = 2 * a1[1];
LABEL_7:
  v7 = *v6;
  if (v2 <= a2)
  {
    v2 = a2;
  }

  if (v2 <= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = v2;
  }

  v9 = 4 * v8;
  if (v7)
  {
    v10 = v9 + 15;
    if (v7[14])
    {
      google::protobuf::Arena::OnArenaAllocation(v7, MEMORY[0x277D827A0], v10 & 0x3FFFFFFF8);
    }

    Aligned = google::protobuf::internal::ArenaImpl::AllocateAligned(v7, v10 & 0x3FFFFFFF8);
  }

  else
  {
    Aligned = operator new(v9 + 8);
  }

  *Aligned = v7;
  a1[1] = v8;
  *(a1 + 1) = Aligned + 1;
  google::protobuf::RepeatedField<int>::elements(a1);
  if (*a1 >= 1)
  {
    v12 = google::protobuf::RepeatedField<int>::elements(a1);
    memcpy(v12, v5 + 1, 4 * *a1);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t google::protobuf::RepeatedField<int>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1153);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_254C85208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1197);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1198);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

void sub_254C852E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1176);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1177);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

void sub_254C853C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<int>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

void google::protobuf::RepeatedField<int>::InternalSwap(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1323);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: this != other: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 4))
  {
    v5 = (google::protobuf::RepeatedField<int>::elements(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (*(a2 + 4))
  {
    v7 = (google::protobuf::RepeatedField<int>::elements(a2) - 8);
  }

  else
  {
    v7 = (a2 + 8);
  }

  if (v6 != *v7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1324);
    v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: GetArenaNoVirtual() == other->GetArenaNoVirtual(): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v9 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  LODWORD(v9) = *a1;
  *a1 = *a2;
  *a2 = v9;
  LODWORD(v9) = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
}

void sub_254C85558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 300);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_254C855EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1279);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<int>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<int>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1177);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<int>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }
}

void sub_254C85714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(google::protobuf::internal::ArenaImpl **this)
{
  v1 = *this;
  if (v1)
  {
    google::protobuf::internal::ArenaImpl::SpaceAllocated(v1);
  }
}

void google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          MEMORY[0x259C29D90](v5, 0x1012C40EC159624);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254C85904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

__n128 google::protobuf::internal::RepeatedPtrFieldBase::Add<google::protobuf::RepeatedPtrField<std::string>::TypeHandler,(void *)0>(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
LABEL_8:
    if (v5 <= v6)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v6 - v5 + 1);
      v4 = *(a1 + 16);
    }

    goto LABEL_10;
  }

  v5 = *(a1 + 8);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(a1 + 8) = v5 + 1;
    v7 = *&v4[2 * v5 + 2];
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = *a2;
    *(v7 + 16) = a2[1].n128_u64[0];
    *v7 = result;
    a2[1].n128_u8[7] = 0;
    a2->n128_u8[0] = 0;
    return result;
  }

  if (v6 == *(a1 + 12))
  {
    goto LABEL_8;
  }

LABEL_10:
  ++*v4;
  v9 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v9[14])
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v9, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
  result = *a2;
  AlignedAndAddCleanup[1].n128_u64[0] = a2[1].n128_u64[0];
  *AlignedAndAddCleanup = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16) + 8 * v11;
  *(a1 + 8) = v11 + 1;
  *(v12 + 8) = AlignedAndAddCleanup;
  return result;
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v2 = *(a1 + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254C85B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(a1, v5);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_254C85C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::Reserve(unsigned int *this, int a2)
{
  v2 = this[2];
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v4);
  }

  return this;
}

void google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (this == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 2422);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: this != other: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*this != *a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 2423);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: GetArenaNoVirtual() == other->GetArenaNoVirtual(): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  LODWORD(v6) = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  LODWORD(v6) = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
}

void sub_254C85D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(uint64_t this, int a2, int a3)
{
  v3 = *(this + 16);
  if (v3)
  {
    v4 = a3 + a2;
    LODWORD(v5) = *v3;
    if (a3 + a2 < *v3)
    {
      v6 = v4;
      v7 = 8 * v4 - 8 * a3 + 8;
      do
      {
        *(v3 + v7) = *&v3[2 * v6++ + 2];
        v3 = *(this + 16);
        v5 = *v3;
        v7 += 8;
      }

      while (v6 < v5);
    }

    *(this + 8) -= a3;
    *v3 = v5 - a3;
  }

  return this;
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = v2 + a2;
  v5 = *(this + 2);
  if (v3 < v2 + a2)
  {
    v7 = *this;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      v11 = v10 + 15;
      if (v7[14])
      {
        google::protobuf::Arena::OnArenaAllocation(*this, MEMORY[0x277D827A0], v11 & 0x7FFFFFFF8);
      }

      Aligned = google::protobuf::internal::ArenaImpl::AllocateAligned(v7, v11 & 0x7FFFFFFF8);
    }

    else
    {
      Aligned = operator new(v10 + 8);
    }

    *(this + 2) = Aligned;
    *(this + 3) = v9;
    if (v5 && (v13 = *v5, v13 >= 1))
    {
      memcpy(Aligned + 2, v5 + 2, 8 * v13);
      Aligned = *(this + 2);
      *Aligned = *v5;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *Aligned = 0;
      if (!v7)
      {
LABEL_17:
        operator delete(v5);
        Aligned = *(this + 2);
      }
    }

    v2 = *(this + 2);
    v5 = Aligned;
  }

  return &v5[2 * v2 + 2];
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(std::string *result, std::string **a2, const std::string **a3, signed int a4, signed int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = std::string::operator=(v15, v13);
      --v10;
    }

    while (v10);
  }

  v16 = a4 - a5;
  if (a4 > a5)
  {
    v17 = *v9;
    v18 = &a3[a5];
    v19 = &a2[a5];
    do
    {
      v20 = *v18;
      if (!v17)
      {
        operator new();
      }

      if (v17[14])
      {
      }

      AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v17, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
      AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
      AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
      AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
      result = std::string::operator=(AlignedAndAddCleanup, v20);
      *v19++ = AlignedAndAddCleanup;
      ++v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(google::protobuf::internal::EpsCopyInputStream *this, const char **a2, int a3)
{
  v6 = *a2;
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.h", 208);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: *ptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = *a2;
  }

  if (v6 >= *this)
  {
    if (&v6[-*(this + 1)] == *(this + 7))
    {
      v8 = 1;
    }

    else
    {
      *a2 = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v6, a3);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_254C860B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_254C86228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(atomic_ullong **a1)
{
  v2 = *a1;
  if ((*a1 & 1) == 0)
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator new();
  }

  v2 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 24);
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (*(v2 + 112))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v2, 0x20uLL, google::protobuf::internal::arena_destruct_object<google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::Container>);
  result = 0.0;
  *AlignedAndAddCleanup = 0u;
  *(AlignedAndAddCleanup + 16) = 0u;
  *a1 = (AlignedAndAddCleanup | 1);
  *(AlignedAndAddCleanup + 24) = v2;
  return result;
}

const std::string::value_type *google::protobuf::internal::EpsCopyInputStream::ReadString(uint64_t a1, std::string::value_type *__s, int a3, std::string *a4)
{
  if (*(a1 + 8) - __s + 16 >= a3)
  {
    v6 = a3;
    MEMORY[0x259C299E0](a4, __s, a3);
    return &__s[v6];
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::ReadStringFallback(a1, __s, a3, a4);
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

google::protobuf::io::FileInputStream *google::protobuf::io::FileInputStream::FileInputStream(google::protobuf::io::FileInputStream *this, int a2, int a3)
{
  *this = &unk_286718C98;
  *(this + 1) = &unk_286718CD8;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 28) = 0;
  google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(this + 32, this + 8, a3);
  return this;
}

BOOL google::protobuf::io::FileInputStream::CopyingFileInputStream::Close(google::protobuf::io::FileInputStream::CopyingFileInputStream *this)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 117);
    v2 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  *(this + 13) = 1;
  if (v3)
  {
    *(this + 4) = *__error();
  }

  return v3 == 0;
}

void sub_254C869A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(google::protobuf::io::FileInputStream::CopyingFileInputStream *this)
{
  *this = &unk_286718CD8;
  if (*(this + 12) == 1 && !google::protobuf::io::FileInputStream::CopyingFileInputStream::Close(this))
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 2, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 111);
    v2 = google::protobuf::internal::LogMessage::operator<<(v6, "close() failed: ");
    v3 = strerror(*(this + 4));
    v4 = google::protobuf::internal::LogMessage::operator<<(v2, v3);
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }
}

{
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(this);

  JUMPOUT(0x259C29D90);
}

uint64_t google::protobuf::io::anonymous namespace::close_no_eintr(google::protobuf::io::_anonymous_namespace_ *this)
{
  v1 = this;
  do
  {
    v2 = close(v1);
  }

  while ((v2 & 0x80000000) != 0 && *__error() == 4);
  return v2;
}

ssize_t google::protobuf::io::FileInputStream::CopyingFileInputStream::Read(google::protobuf::io::FileInputStream::CopyingFileInputStream *this, void *a2, int a3)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 132);
    v6 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  while (1)
  {
    v7 = read(*(this + 2), a2, a3);
    if ((v7 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      *(this + 4) = *__error();
      return v7;
    }
  }

  return v7;
}

void sub_254C86BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::FileInputStream::CopyingFileInputStream::Skip(google::protobuf::io::FileInputStream::CopyingFileInputStream *this, uint64_t a2)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 148);
    v4 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  if ((*(this + 20) & 1) != 0 || lseek(*(this + 2), a2, 1) == -1)
  {
    *(this + 20) = 1;
    return google::protobuf::io::CopyingInputStream::Skip(this);
  }

  return a2;
}

void sub_254C86C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::io::FileOutputStream *google::protobuf::io::FileOutputStream::FileOutputStream(google::protobuf::io::FileOutputStream *this, int a2, int a3)
{
  *this = &unk_286718D08;
  *(this + 1) = &unk_286718D50;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *(this + 6) = 0;
  google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor(this + 32, this + 8, a3);
  return this;
}

void google::protobuf::io::FileOutputStream::~FileOutputStream(google::protobuf::io::FileOutputStream *this)
{
  *this = &unk_286718D08;
  v2 = (this + 32);
  google::protobuf::io::CopyingOutputStreamAdaptor::Flush((this + 32));
  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(v2);
  google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream((this + 8));
}

{
  google::protobuf::io::FileOutputStream::~FileOutputStream(this);

  JUMPOUT(0x259C29D90);
}

BOOL google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Close(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 203);
    v2 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  *(this + 13) = 1;
  if (v3)
  {
    *(this + 4) = *__error();
  }

  return v3 == 0;
}

void sub_254C86E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this)
{
  *this = &unk_286718D50;
  if (*(this + 12) == 1 && !google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Close(this))
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 2, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 197);
    v2 = google::protobuf::internal::LogMessage::operator<<(v6, "close() failed: ");
    v3 = strerror(*(this + 4));
    v4 = google::protobuf::internal::LogMessage::operator<<(v2, v3);
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }
}

{
  google::protobuf::io::FileOutputStream::CopyingFileOutputStream::~CopyingFileOutputStream(this);

  JUMPOUT(0x259C29D90);
}

BOOL google::protobuf::io::FileOutputStream::CopyingFileOutputStream::Write(google::protobuf::io::FileOutputStream::CopyingFileOutputStream *this, char *a2, int a3)
{
  if (*(this + 13) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc", 219);
    v6 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: !is_closed_: ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  if (a3 < 1)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    while (1)
    {
      v8 = write(*(this + 2), &a2[v7], a3 - v7);
      v9 = v8;
      if (v8 < 0)
      {
        break;
      }

      result = v8 != 0;
      v7 += v9;
      if (v9)
      {
        v10 = v7 < a3;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        return result;
      }
    }
  }

  while (*__error() == 4);
  v11 = __error();
  result = 0;
  *(this + 4) = *v11;
  return result;
}

void sub_254C870A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::FileInputStream::~FileInputStream(google::protobuf::io::FileInputStream *this)
{
  *this = &unk_286718C98;
  v1 = (this + 8);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 32));
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v1);
}

{
  *this = &unk_286718C98;
  v1 = (this + 8);
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor((this + 32));
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v1);

  JUMPOUT(0x259C29D90);
}

unint64_t google::protobuf::io::EpsCopyOutputStream::Flush(google::protobuf::io::EpsCopyOutputStream *this, char *a2)
{
  while (1)
  {
    v5 = *this;
    v4 = *(this + 1);
    if (!v4)
    {
      v10 = v5 - a2;
      v9 = v10 + 16;
      *(this + 1) = a2;
      if (((v10 + 16) & 0x80000000) == 0)
      {
        return v9;
      }

      goto LABEL_12;
    }

    v6 = a2 - v5;
    if (a2 <= v5)
    {
      break;
    }

    if (*(this + 56) == 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/coded_stream.cc", 685);
      v7 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: !had_error_: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    }

    if (v6 >= 17)
    {
      google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/coded_stream.cc", 686);
      v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: overrun <= kSlopBytes: ");
      google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    }

    a2 = &google::protobuf::io::EpsCopyOutputStream::Next(this)[v6];
    if (*(this + 56))
    {
      return 0;
    }
  }

  memcpy(v4, this + 16, a2 - (this + 16));
  v11 = *this;
  *(this + 1) += a2 - (this + 16);
  v9 = v11 - a2;
  if (((v11 - a2) & 0x80000000) == 0)
  {
    return v9;
  }

LABEL_12:
  google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/coded_stream.cc", 700);
  v12 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: s >= 0: ");
  google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  return v9;
}

void sub_254C872F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::io::EpsCopyOutputStream::Next(google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(this + 56) == 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/coded_stream.cc", 788);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !had_error_: ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 6))
  {
    v3 = this + 16;
    v5 = *this;
    v4 = *(this + 1);
    if (v4)
    {
      memcpy(v4, this + 16, v5 - v3);
      v12 = 0;
      do
      {
        v13[0].__r_.__value_.__r.__words[0] = 0;
        if (((*(**(this + 6) + 16))(*(this + 6), v13, &v12) & 1) == 0)
        {
          *(this + 56) = 1;
          goto LABEL_14;
        }

        v6 = v12;
      }

      while (!v12);
      v5 = v13[0].__r_.__value_.__r.__words[0];
      if (v12 >= 17)
      {
        *v13[0].__r_.__value_.__l.__data_ = **this;
        *this = &v5[v6 - 16];
        *(this + 1) = 0;
        return v5;
      }

      if (v12 <= 0)
      {
        v10 = v13[0].__r_.__value_.__r.__words[0];
        google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/coded_stream.cc", 810);
        v9 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: size > 0: ");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
        LODWORD(v6) = v12;
        v5 = v10;
      }

      *v3 = **this;
      v7 = &v3[v6];
    }

    else
    {
      *v3 = *v5;
      v7 = this + 32;
    }

    *this = v7;
    *(this + 1) = v5;
  }

  else
  {
    *(this + 56) = 1;
    v3 = this + 16;
LABEL_14:
    *this = this + 32;
  }

  return v3;
}

void sub_254C874B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::io::EpsCopyOutputStream::Trim(google::protobuf::io::EpsCopyOutputStream *this, char *a2)
{
  if ((*(this + 56) & 1) == 0)
  {
    v3 = google::protobuf::io::EpsCopyOutputStream::Flush(this, a2);
    if (v3)
    {
      (*(**(this + 6) + 24))(*(this + 6), v3);
    }

    a2 = this + 16;
    *this = this + 16;
    *(this + 1) = this + 16;
  }

  return a2;
}

char *google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(google::protobuf::io::EpsCopyOutputStream *this, char *a2)
{
  while (*(this + 56) != 1)
  {
    v3 = &a2[-*this];
    if ((v3 & 0x80000000) != 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/coded_stream.cc", 829);
      v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: overrun >= 0: ");
      google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
      goto LABEL_6;
    }

    if (v3 > 0x10)
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/coded_stream.cc", 830);
      v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: overrun <= kSlopBytes: ");
      google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
LABEL_6:
      google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    }

    a2 = &google::protobuf::io::EpsCopyOutputStream::Next(this)[v3];
    if (a2 < *this)
    {
      return a2;
    }
  }

  return this + 16;
}

void sub_254C8763C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(google::protobuf::io::EpsCopyOutputStream *this, char *a2, int a3, unsigned __int8 *a4)
{
  v4 = a4;
  for (i = google::protobuf::io::EpsCopyOutputStream::GetSize(this, a4); a3 > i; i = google::protobuf::io::EpsCopyOutputStream::GetSize(this, v4))
  {
    memcpy(v4, a2, i);
    a3 -= i;
    a2 += i;
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, &v4[i]);
  }

  memcpy(v4, a2, a3);
  return &v4[a3];
}

uint64_t google::protobuf::io::EpsCopyOutputStream::GetSize(google::protobuf::io::EpsCopyOutputStream *this, unsigned __int8 *a2)
{
  v3 = *this;
  if (*this + 16 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/coded_stream.h", 836);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: ptr <= end_ + kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    v3 = *this;
  }

  return v3 - a2 + 16;
}

void sub_254C87784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteAliasedRaw(google::protobuf::io::EpsCopyOutputStream *this, void *a2, uint64_t a3, char *a4)
{
  if (google::protobuf::io::EpsCopyOutputStream::GetSize(this, a4) <= a3)
  {
    v8 = google::protobuf::io::EpsCopyOutputStream::Trim(this, a4);
    if (((*(**(this + 6) + 40))(*(this + 6), a2, a3) & 1) == 0)
    {
      *(this + 56) = 1;
      v8 = this + 16;
      *this = this + 32;
    }

    return v8;
  }

  if (*this - a4 >= a3)
  {
    memcpy(a4, a2, a3);
    return &a4[a3];
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, a2, a3, a4);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(google::protobuf::io::EpsCopyOutputStream *this, int a2, void **a3, char *a4)
{
  v4 = a4;
  v8 = *this;
  if (*this <= a4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
    v8 = *this;
  }

  if (*(a3 + 23) >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  if (v8 <= v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/coded_stream.h", 856);
    v10 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: ptr < end_: ");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawMaybeAliased(this, v18, v9, v17);
}

void sub_254C87A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteRawMaybeAliased(google::protobuf::io::EpsCopyOutputStream *this, void *a2, uint64_t a3, char *a4)
{
  if (*(this + 57) == 1)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteAliasedRaw(this, a2, a3, a4);
  }

  else if (*this - a4 < a3)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, a2, a3, a4);
  }

  else
  {
    v6 = a3;
    memcpy(a4, a2, a3);
    return &a4[v6];
  }
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(google::protobuf::io::EpsCopyOutputStream *this, int a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v8 = *this;
  if (*this <= a4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
    v8 = *this;
  }

  if (*(a3 + 23) >= 0)
  {
    LODWORD(v9) = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  if (v8 <= v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/coded_stream.h", 856);
    v10 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: ptr < end_: ");
    google::protobuf::internal::LogFinisher::operator=(&v22, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (*this - v17 < v9)
  {
    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, v18, v9, v17);
  }

  memcpy(v17, v18, v9);
  return &v17[v9];
}

void sub_254C87C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::Next(google::protobuf::internal::EpsCopyInputStream *this, unsigned int a2, int a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v5 = (this + 40);
  if (v3 != (this + 40))
  {
    v6 = *(this + 6);
    if (v6 <= 16)
    {
      google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.cc", 105);
      v7 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: size_ > kSlopBytes: ");
      google::protobuf::internal::LogFinisher::operator=(&__src, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
      v3 = *(this + 2);
      v6 = *(this + 6);
    }

    *(this + 1) = v3 + v6 - 16;
    *(this + 2) = v5;
    if (*(this + 9) == 1)
    {
      *(this + 9) = 2;
    }

    return v3;
  }

  *v5 = **(this + 1);
  if (*(this + 21) < 1)
  {
    goto LABEL_23;
  }

  v8 = a3;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

  if ((a2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.cc", 53);
    v11 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: overrun >= 0: ");
    google::protobuf::internal::LogFinisher::operator=(&__src, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
LABEL_27:
    v16 = this + 56;
    v17 = v5 + a2;
    v18 = v17;
    while (1)
    {
      v19 = *v18++;
      v20 = v19;
      if (v19 < 0)
      {
        v20 = v20 + (*v18 << 7) - 128;
        if (*v18 < 0)
        {
          v18 = v17 + 3;
          v25 = -21;
          while (1)
          {
            v20 += (*(v18 - 1) - 1) << (v25 + 35);
            if ((*(v18 - 1) & 0x80000000) == 0)
            {
              break;
            }

            ++v18;
            v25 += 7;
            if (!v25)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v18 = v17 + 2;
        }
      }

      if (v18 > v16)
      {
        goto LABEL_16;
      }

      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = v20 & 7;
      if (v21 > 2)
      {
        switch(v21)
        {
          case 3:
            ++v8;
            break;
          case 4:
            v24 = __OFSUB__(v8--, 1);
            if (v8 < 0 != v24)
            {
              goto LABEL_23;
            }

            break;
          case 5:
            v18 += 4;
            break;
          default:
            goto LABEL_16;
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          v18 += 8;
        }

        else
        {
          v22 = *v18;
          if (*v18 < 0)
          {
            SizeFallback = google::protobuf::internal::ReadSizeFallback(v18, v22);
            if (!SizeFallback)
            {
              goto LABEL_16;
            }
          }

          else
          {
            SizeFallback = v18 + 1;
          }

          if (v16 - SizeFallback < v22)
          {
            goto LABEL_16;
          }

          v18 = &SizeFallback[v22];
        }
      }

      else
      {
        v34[0].__r_.__value_.__r.__words[0] = 0;
        v18 = google::protobuf::internal::VarintParse<unsigned long long>(v18, v34);
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      v17 = v18;
      if (v18 >= v16)
      {
        goto LABEL_16;
      }
    }
  }

  if (a2 >= 0x11)
  {
    google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.cc", 54);
    v10 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: overrun <= kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&__src, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
    goto LABEL_16;
  }

  if (a2 != 16)
  {
    goto LABEL_27;
  }

LABEL_16:
  __src = 0;
  if (!(*(**(this + 4) + 16))(*(this + 4), &__src, this + 24))
  {
LABEL_22:
    *(this + 21) = 0;
LABEL_23:
    if (*(this + 9) == 2)
    {
      *(this + 9) = *(this + 1) - v3;
    }

    *(this + 1) = this + 56;
    *(this + 2) = 0;
    *(this + 6) = 0;
    return v5;
  }

  while (1)
  {
    v12 = *(this + 6);
    *(this + 21) -= v12;
    if (v12 >= 17)
    {
      v28 = *(this + 9);
      v27 = (this + 72);
      v26 = v28;
      v29 = (v27 - 2);
      v30 = __src;
      *(v27 - 1) = *__src;
      *(v27 - 7) = v30;
      goto LABEL_59;
    }

    if (v12 >= 1)
    {
      break;
    }

    if (v12)
    {
      google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.cc", 137);
      v13 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: size_ == 0: ");
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, *(this + 6));
      google::protobuf::internal::LogFinisher::operator=(&v32, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
    }

    if (((*(**(this + 4) + 16))(*(this + 4), &__src, this + 24) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  memcpy(this + 56, __src, v12);
  v31 = *(this + 9);
  v27 = (this + 72);
  v26 = v31;
  v29 = v5 + v12;
  *(v27 - 7) = v5;
LABEL_59:
  *(v27 - 8) = v29;
  if (v26 > 1)
  {
    *v27 = 1;
  }

  return v5;
}

void sub_254C88068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const char *google::protobuf::internal::EpsCopyInputStream::DoneFallback(google::protobuf::internal::EpsCopyInputStream *this, const char *a2, int a3)
{
  v4 = a2;
  if (*this > a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.cc", 159);
    v6 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: ptr >= limit_end_: ");
    google::protobuf::internal::LogFinisher::operator=(&v21, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  v7 = v4 - *(this + 2);
  if (v7 >= 17)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.cc", 161);
    v8 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: overrun <= kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&v21, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  v9 = *(this + 7);
  if (v9 < v7)
  {
    return 0;
  }

  if (v9 == v7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.cc", 164);
    v10 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: overrun != limit_: ");
    google::protobuf::internal::LogFinisher::operator=(&v21, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
    v9 = *(this + 7);
  }

  if (v9 <= v7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.cc", 165);
    v11 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: overrun < limit_: ");
    google::protobuf::internal::LogFinisher::operator=(&v21, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
    v9 = *(this + 7);
  }

  if (*this != *(this + 1) + (v9 & (v9 >> 31)))
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.cc", 170);
    v12 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: limit_end_ == buffer_end_ + (std::min)(0, limit_): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
    v9 = *(this + 7);
  }

  if (v9 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.cc", 172);
    v13 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: limit_ > 0: ");
    google::protobuf::internal::LogFinisher::operator=(&v21, &v13->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  if (*this != *(this + 1))
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.cc", 173);
    v14 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: limit_end_ == buffer_end_: ");
    google::protobuf::internal::LogFinisher::operator=(&v21, &v14->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  while (1)
  {
    if (v7 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.cc", 176);
      v15 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: overrun >= 0: ");
      google::protobuf::internal::LogFinisher::operator=(&v21, &v15->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
    }

    v16 = google::protobuf::internal::EpsCopyInputStream::Next(this, v7, a3);
    if (!v16)
    {
      break;
    }

    v17 = *(this + 1);
    v18 = *(this + 7) + v16 - v17;
    *(this + 7) = v18;
    v4 = v16 + v7;
    v7 = v4 - v17;
    if (v4 - v17 < 0)
    {
      *this = v17 + (v18 & (v18 >> 31));
      return v4;
    }
  }

  if (v7)
  {
    return 0;
  }

  if (*(this + 7) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.cc", 181);
    v19 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: limit_ > 0: ");
    google::protobuf::internal::LogFinisher::operator=(&v21, &v19->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  *this = *(this + 1);
  *(this + 20) = 1;
  return v4;
}

void sub_254C883E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const char *google::protobuf::internal::EpsCopyInputStream::SkipFallback(google::protobuf::internal::EpsCopyInputStream *this, const char *a2, int a3)
{
  v4 = a2;
  v6 = *(this + 2) - a2 + 16;
  while (1)
  {
    if (a3 <= v6)
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.h", 293);
      v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: size > chunk_size: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    if (*(this + 7) == 16)
    {
      break;
    }

    v8 = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, &v4[v6], -1);
    if (v9)
    {
      break;
    }

    v4 = v8;
    v10 = a3 - v6;
    v6 = *(this + 2) - v8 + 16;
    a3 = v10;
    if (v10 <= v6)
    {
      return &v8[v10];
    }
  }

  return 0;
}

void sub_254C88524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::EpsCopyInputStream::InitFrom(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  __src = 0;
  v7 = 0;
  *(a1 + 28) = 0x7FFFFFFF;
  if ((*(*a2 + 16))(a2, &__src, &v7))
  {
    v3 = v7;
    *(a1 + 84) -= v7;
    if (v3 < 17)
    {
      *a1 = a1 + 56;
      *(a1 + 8) = a1 + 56;
      *(a1 + 16) = a1 + 40;
      v4 = (a1 - v3 + 72);
      memcpy(v4, __src, v3);
    }

    else
    {
      v4 = __src;
      *(a1 + 28) = *(a1 + 28) - v3 + 16;
      v5 = v4 + v3 - 16;
      *a1 = v5;
      *(a1 + 8) = v5;
      *(a1 + 16) = a1 + 40;
      if (*(a1 + 72) == 1)
      {
        *(a1 + 72) = 2;
      }
    }
  }

  else
  {
    *(a1 + 84) = 0;
    *(a1 + 24) = 0;
    v4 = (a1 + 40);
    *(a1 + 8) = a1 + 40;
    *(a1 + 16) = 0;
    *a1 = a1 + 40;
  }

  return v4;
}

uint64_t google::protobuf::internal::VarintParseSlow64(google::protobuf::internal *this, unint64_t a2)
{
  a2 = a2;
  result = this + 3;
  v4 = this + 2;
  v5 = 14;
  while (1)
  {
    v6 = *v4++;
    a2 += (v6 - 1) << v5;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (v5 == 70)
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::internal::ReadTagFallback(google::protobuf::internal *this, const char *a2)
{
  result = this + 3;
  v4 = this + 2;
  v5 = -21;
  while (1)
  {
    v6 = *v4++;
    LODWORD(a2) = ((v6 - 1) << (v5 + 35)) + a2;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

char *google::protobuf::internal::InlineGreedyStringParser(std::string *a1, std::string::value_type *this, uint64_t a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v6, v5, a1);
}

char *google::protobuf::internal::WireFormatParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(int a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v10 = a2;
  while (1)
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v10, *(this + 23)))
    {
      return v10;
    }

    v5 = v10 + 1;
    v6 = *v10;
    if (*v10 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v5 = v10 + 3;
        v8 = -21;
        while (1)
        {
          v6 += (*(v5 - 1) - 1) << (v8 + 35);
          if ((*(v5 - 1) & 0x80000000) == 0)
          {
            break;
          }

          ++v5;
          v8 += 7;
          if (!v8)
          {
            return 0;
          }
        }
      }

      else
      {
        v5 = v10 + 2;
      }
    }

    v10 = v5;
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v10 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, a1, v5);
    if (!v10)
    {
      return 0;
    }
  }

  *(this + 20) = v6 - 1;
  return v5;
}

char *google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(unint64_t a1, std::string *a2, google::protobuf::internal *this, int32x2_t *a4)
{
  v4 = a1 >> 3;
  if (!(a1 >> 3))
  {
    return 0;
  }

  v5 = this;
  v7 = a1;
  result = 0;
  v9 = v7 & 7;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.h", 695);
        v10 = google::protobuf::internal::LogMessage::operator<<(v12, "Can't happen");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      else
      {
        if (v9 != 5)
        {
          return result;
        }

        v5 = this + 4;
        google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed32(a2, v4, *this);
      }

      return v5;
    }

    result = google::protobuf::internal::UnknownFieldLiteParserHelper::ParseGroup(a2, v4, this, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v12[0].__r_.__value_.__r.__words[0] = 0;
    result = google::protobuf::internal::VarintParse<unsigned long long>(this, v12);
    if (!result)
    {
      return result;
    }

    v5 = result;
    google::protobuf::internal::UnknownFieldLiteParserHelper::AddVarint(a2, v4, v12[0].__r_.__value_.__r.__words[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = this + 8;
    google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed64(a2, v4, *this);
    return v5;
  }

  result = google::protobuf::internal::UnknownFieldLiteParserHelper::ParseLengthDelimited(a2, v4, this, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_254C88998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::UnknownFieldParse(unsigned int a1, atomic_ullong **a2, google::protobuf::internal *this, int32x2_t *a4)
{
  if (*a2)
  {
    v7 = *a2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2);
  }

  v9.__r_.__value_.__r.__words[0] = v7;
  return google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(a1, &v9, this, a4);
}

char *google::protobuf::internal::VarintParse<unsigned long long>(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2 & 0x7F | (a1[1] << 7);
    if (a1[1] < 0)
    {
      result = a1 + 3;
      v5 = 14;
      while (1)
      {
        v4 += (*(result - 1) - 1) << v5;
        if ((*(result - 1) & 0x80000000) == 0)
        {
          break;
        }

        ++result;
        v5 += 7;
        if (v5 == 70)
        {
          result = 0;
          v4 = 0;
          break;
        }
      }

      *a2 = v4;
    }

    else
    {
      *a2 = v4;
      return a1 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a1 + 1;
  }

  return result;
}

uint64_t google::protobuf::internal::EpsCopyInputStream::PushLimit(google::protobuf::internal::EpsCopyInputStream *this, const char *a2, unsigned int a3)
{
  v4 = a2;
  if (a3 >= 0x7FFFFFF0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/parse_context.h", 127);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: limit >= 0 && limit <= INT_MAX - kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v7 = *(this + 1);
  v8 = v4 - v7 + a3;
  *this = v7 + (v8 & (v8 >> 31));
  LODWORD(v7) = *(this + 7);
  *(this + 7) = v8;
  return (v7 - v8);
}

void sub_254C88B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(google::protobuf::internal::EpsCopyInputStream *this, google::protobuf::internal *a2, int *a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a2, *a2);
    v16 = result;
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v14;
  }

  else
  {
    v6 = a2 + 1;
    v16 = a2 + 1;
  }

  v7 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v6, v5);
  if (v7 < 0)
  {
    return 0;
  }

  v8 = v7;
  if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v16, -1))
  {
LABEL_9:
    if (*(this + 20))
    {
      return 0;
    }

    else
    {
      v13 = *(this + 7) + v8;
      *(this + 7) = v13;
      *this = *(this + 1) + (v13 & (v13 >> 31));
      return v16;
    }
  }

  else
  {
    while (1)
    {
      v15 = 0;
      result = google::protobuf::internal::VarintParse<unsigned long long>(v16, &v15);
      v16 = result;
      if (!result)
      {
        break;
      }

      v10 = v15;
      if (*a3 == a3[1])
      {
        google::protobuf::RepeatedField<int>::Reserve(a3, *a3 + 1);
      }

      v11 = google::protobuf::RepeatedField<int>::elements(a3);
      v12 = *a3;
      *a3 = v12 + 1;
      *(v11 + 4 * v12) = v10;
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v16, -1))
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void google::protobuf::internal::UnknownFieldLiteParserHelper::AddVarint(std::string **this, int a2, unint64_t a3)
{
  v3 = *this;
  if (*this)
  {
    v6 = (8 * a2);
    if (v6 < 0x80)
    {
      LOBYTE(v7) = 8 * a2;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v9 = *this;
    if (a3 < 0x80)
    {
      LOBYTE(v10) = a3;
    }

    else
    {
      do
      {
        std::string::push_back(v9, a3 | 0x80);
        v10 = a3 >> 7;
        v11 = a3 >> 14;
        a3 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v9, v10);
  }
}

std::string *google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed64(std::string *this, int a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__r.__words[0])
  {
    v5 = this;
    v6 = (8 * a2) | 1u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 1;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v10[0] = a3;
    this = std::string::append(*v5, v10, 8uLL);
  }

  v9 = *MEMORY[0x277D85DE8];
  return this;
}

char *google::protobuf::internal::UnknownFieldLiteParserHelper::ParseLengthDelimited(std::string **a1, int a2, std::string::value_type *this, google::protobuf::internal::EpsCopyInputStream *a4)
{
  v7 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v19;
  }

  else
  {
    v8 = this + 1;
  }

  v9 = *a1;
  if (*a1)
  {
    v10 = (8 * a2) | 2u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v11) = (8 * a2) | 2;
    }

    else
    {
      do
      {
        std::string::push_back(v9, v10 | 0x80);
        v11 = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }

    std::string::push_back(v9, v11);
    v14 = v7;
    v15 = *a1;
    if (v7 < 0x80)
    {
      LOBYTE(v16) = v7;
    }

    else
    {
      do
      {
        std::string::push_back(v15, v14 | 0x80);
        v16 = v14 >> 7;
        v17 = v14 >> 14;
        v14 >>= 7;
      }

      while (v17);
    }

    std::string::push_back(v15, v16);
    v18 = *a1;

    return google::protobuf::internal::EpsCopyInputStream::AppendString(a4, v8, v7, v18);
  }

  else if (*(a4 + 1) - v8 + 16 >= v7)
  {
    return &v8[v7];
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::SkipFallback(a4, v8, v7);
  }
}

char *google::protobuf::internal::UnknownFieldLiteParserHelper::ParseGroup(std::string **a1, int a2, char *a3, int32x2_t *this)
{
  v7 = *a1;
  v8 = 8 * a2;
  if (*a1)
  {
    v9 = v8 | 3;
    if (v8 < 0x80)
    {
      LOBYTE(v10) = v8 | 3;
    }

    else
    {
      do
      {
        std::string::push_back(v7, v9 | 0x80);
        v10 = v9 >> 7;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v7, v10);
  }

  v12 = this[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  this[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  ++this[11].i32[1];
  v14 = google::protobuf::internal::WireFormatParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(a1, a3, this);
  this[11] = vadd_s32(this[11], 0xFFFFFFFF00000001);
  v15 = this[10].i32[0];
  this[10].i32[0] = 0;
  if (v15 != (v8 | 3) || v14 == 0)
  {
    return 0;
  }

  v17 = v14;
  v18 = *a1;
  if (v18)
  {
    v19 = v8 | 4;
    if (v8 < 0x80)
    {
      LOBYTE(v20) = v8 | 4;
    }

    else
    {
      do
      {
        std::string::push_back(v18, v19 | 0x80);
        v20 = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }

    std::string::push_back(v18, v20);
  }

  return v17;
}

std::string *google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed32(std::string *this, int a2, int a3)
{
  v3 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__r.__words[0])
  {
    v5 = this;
    v6 = (8 * a2) | 5u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 5;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    *__s = a3;
    return std::string::append(*v5, __s, 4uLL);
  }

  return this;
}

const std::string::value_type *google::protobuf::internal::EpsCopyInputStream::AppendString(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 < a3)
  {

    return google::protobuf::internal::EpsCopyInputStream::AppendStringFallback(a1, __s, a3, this);
  }

  else
  {
    v5 = a3;
    std::string::append(this, __s, a3);
    return &__s[v5];
  }
}

uint64_t google::protobuf::internal::WireFormatLite::Int32Size(int *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *google::protobuf::RepeatedField<int>::Get(a1, v3);
    if (v5 < 0)
    {
      v6 = 10;
    }

    else
    {
      v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    }

    v4 += v6;
    ++v3;
  }

  while (v1 != v3);
  return v4;
}

uint64_t google::protobuf::io::CopyingInputStream::Skip(google::protobuf::io::CopyingInputStream *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v4 = v1;
  v5 = 0;
  v14 = *MEMORY[0x277D85DE8];
  do
  {
    v6 = v5;
    v7 = __OFSUB__(v3, v5);
    v8 = v3 - v5;
    if ((v8 < 0) ^ v7 | (v8 == 0))
    {
      break;
    }

    v9 = v8 >= 4096 ? 4096 : v8;
    v10 = (*(*v4 + 16))(v4, v13, v9);
    v5 = (v10 + v6);
  }

  while (v10 > 0);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t google::protobuf::io::CopyingInputStreamAdaptor::CopyingInputStreamAdaptor(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_286718DF8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  if (a3 <= 0)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = a3;
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 44) = 0;
  *(result + 48) = 0;
  *(result + 40) = v3;
  return result;
}

void google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(google::protobuf::io::CopyingInputStreamAdaptor *this)
{
  *this = &unk_286718DF8;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    MEMORY[0x259C29D70](v3, 0x1000C8077774924);
  }
}

{
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(this);

  JUMPOUT(0x259C29D90);
}

uint64_t google::protobuf::io::CopyingInputStreamAdaptor::Next(google::protobuf::io::CopyingInputStreamAdaptor *this, const void **a2, int *a3)
{
  if (*(this + 17))
  {
    return 0;
  }

  google::protobuf::io::CopyingInputStreamAdaptor::AllocateBufferIfNeeded(this);
  v7 = *(this + 12);
  if (v7 >= 1)
  {
    *a2 = (*(this + 4) + *(this + 11) - v7);
    *a3 = v7;
    *(this + 12) = 0;
    return 1;
  }

  v8 = (*(**(this + 1) + 16))(*(this + 1), *(this + 4), *(this + 10));
  *(this + 11) = v8;
  if (v8 > 0)
  {
    v9 = *(this + 4);
    *(this + 3) += v8;
    *a3 = v8;
    *a2 = v9;
    return 1;
  }

  if (v8 < 0)
  {
    *(this + 17) = 1;
  }

  google::protobuf::io::CopyingInputStreamAdaptor::FreeBuffer(this);
  return 0;
}

uint64_t google::protobuf::io::CopyingInputStreamAdaptor::AllocateBufferIfNeeded(uint64_t this)
{
  if (!*(this + 32))
  {
    v1 = *(this + 40);
    operator new[]();
  }

  return this;
}

uint64_t google::protobuf::io::CopyingInputStreamAdaptor::FreeBuffer(google::protobuf::io::CopyingInputStreamAdaptor *this)
{
  if (*(this + 12))
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 296);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (backup_bytes_) == (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  *(this + 11) = 0;
  result = *(this + 4);
  *(this + 4) = 0;
  if (result)
  {
    return MEMORY[0x259C29D70](result, 0x1000C8077774924);
  }

  return result;
}

void sub_254C89600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::io::CopyingInputStreamAdaptor::BackUp(google::protobuf::io::CopyingInputStreamAdaptor *this, int a2)
{
  if (*(this + 12) || !*(this + 4))
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 252);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: backup_bytes_ == 0 && buffer_.get() != NULL: ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, " BackUp() can only be called after Next().");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 11) < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 254);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) <= (buffer_used_): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, " Can't back up over more bytes than were returned by the last call to Next().");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 257);
    v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) >= (0): ");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, " Parameter to BackUp() can't be negative.");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  *(this + 12) = a2;
}

void sub_254C89744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::CopyingInputStreamAdaptor::Skip(google::protobuf::io::CopyingInputStreamAdaptor *this, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 263);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 17))
  {
    return 0;
  }

  v6 = *(this + 12);
  if (v6 >= a2)
  {
    *(this + 12) = v6 - a2;
    return 1;
  }

  else
  {
    v7 = (a2 - v6);
    *(this + 12) = 0;
    v8 = (*(**(this + 1) + 24))(*(this + 1), v7);
    *(this + 3) += v8;
    return v8 == v7;
  }
}

void sub_254C89848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::CopyingOutputStreamAdaptor(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_286718E38;
  *(result + 8) = a2;
  *(result + 16) = 0;
  if (a3 <= 0)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = a3;
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = v3;
  *(result + 44) = 0;
  return result;
}

void google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  *this = &unk_286718E38;
  google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(this);
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    MEMORY[0x259C29D70](v3, 0x1000C8077774924);
  }
}

{
  google::protobuf::io::CopyingOutputStreamAdaptor::~CopyingOutputStreamAdaptor(this);

  JUMPOUT(0x259C29D90);
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(google::protobuf::io::CopyingOutputStreamAdaptor *this)
{
  if (*(this + 17))
  {
    return 0;
  }

  if (!*(this + 11))
  {
    return 1;
  }

  if ((*(**(this + 1) + 16))(*(this + 1), *(this + 4)))
  {
    *(this + 3) += *(this + 11);
    *(this + 11) = 0;
    return 1;
  }

  *(this + 17) = 1;
  *(this + 11) = 0;
  result = *(this + 4);
  *(this + 4) = 0;
  if (result)
  {
    MEMORY[0x259C29D70](result, 0x1000C8077774924);
    return 0;
  }

  return result;
}

uint64_t google::protobuf::io::CopyingOutputStreamAdaptor::Next(google::protobuf::io::CopyingOutputStreamAdaptor *this, void **a2, int *a3)
{
  if (*(this + 11) != *(this + 10) || (result = google::protobuf::io::CopyingOutputStreamAdaptor::WriteBuffer(this), result))
  {
    google::protobuf::io::CopyingInputStreamAdaptor::AllocateBufferIfNeeded(this);
    v7 = *(this + 10);
    v8 = *(this + 11);
    *a2 = (*(this + 4) + v8);
    *a3 = v7 - v8;
    *(this + 11) = *(this + 10);
    return 1;
  }

  return result;
}

void google::protobuf::io::CopyingOutputStreamAdaptor::BackUp(google::protobuf::io::CopyingOutputStreamAdaptor *this, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 335);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(this + 11);
  if (v5 != *(this + 10))
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 336);
    v6 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (buffer_used_) == (buffer_size_): ");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, " BackUp() can only be called after Next().");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v5 = *(this + 11);
  }

  if (v5 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 338);
    v8 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (count) <= (buffer_used_): ");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, " Can't back up over more bytes than were returned by the last call to Next().");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v5 = *(this + 11);
  }

  *(this + 11) = v5 - a2;
}

void sub_254C89BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ArenaImpl::thread_cache(google::protobuf::internal::ArenaImpl *this)
{
  {
    operator new();
  }

  v1 = google::protobuf::internal::ArenaImpl::thread_cache(void)::thread_cache_;

  return google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ArenaImpl::ThreadCache>::Get(v1);
}

void sub_254C89CB8(_Unwind_Exception *a1)
{
  MEMORY[0x259C29D90](v1, 0x1000C4000313F17);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ArenaImpl::ThreadCache>::Get(pthread_key_t *a1)
{
  v1 = pthread_getspecific(*a1);
  if (!v1)
  {
    operator new();
  }

  return v1;
}

void *google::protobuf::internal::ArenaImpl::SerialArena::New(google::protobuf::internal::ArenaImpl::SerialArena *this, google::protobuf::internal::ArenaImpl::Block *a2, void *a3, google::protobuf::internal::ArenaImpl *a4)
{
  if (*(this + 1) != 24)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/arena.cc", 349);
    v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (b->pos()) == (kBlockHeaderSize): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 2) <= 0x5FuLL)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/arena.cc", 350);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (kBlockHeaderSize + kSerialArenaSize) <= (b->size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v9 = google::protobuf::internal::ArenaImpl::Block::Pointer(this, 0x18uLL);
  *(this + 1) = 96;
  *v9 = a3;
  v9[1] = a2;
  v9[2] = this;
  v9[5] = google::protobuf::internal::ArenaImpl::Block::Pointer(this, 0x60uLL);
  v10 = google::protobuf::internal::ArenaImpl::Block::Pointer(this, *(this + 2));
  v9[3] = 0;
  v9[7] = 0;
  v9[8] = 0;
  v9[6] = v10;
  return v9;
}

void sub_254C89E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ArenaImpl::NewBlock(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    v6 = *(a2 + 16);
    if (*(a1 + 48) >= (2 * v6))
    {
      v7 = 2 * v6;
    }

    else
    {
      v7 = *(a1 + 48);
    }
  }

  else
  {
    v7 = *(a1 + 40);
  }

  if (a3 >= 0xFFFFFFFFFFFFFFE8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/arena.cc", 118);
    v8 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (min_bytes) <= (std::numeric_limits<size_t>::max() - kBlockHeaderSize): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  if (v7 <= a3 + 24)
  {
    v9 = a3 + 24;
  }

  else
  {
    v9 = v7;
  }

  result = (*(a1 + 72))(v9);
  *result = a2;
  result[1] = 24;
  result[2] = v9;
  atomic_fetch_add_explicit((a1 + 16), v9, memory_order_relaxed);
  return result;
}

void sub_254C89F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::internal::ArenaImpl::SerialArena::AddCleanupFallback(google::protobuf::internal::ArenaImpl::SerialArena *this, void *a2, void (*a3)(void *))
{
  result = *(this + 3);
  do
  {
    if (result)
    {
      if ((2 * *result) >= 0x40)
      {
        v7 = 64;
      }

      else
      {
        v7 = 2 * *result;
      }
    }

    else
    {
      v7 = 8;
    }

    result = google::protobuf::internal::ArenaImpl::SerialArena::AllocateAligned(this, (16 * v7 + 23) & 0xFF0);
    v8 = *(this + 3);
    *result = v7;
    result[1] = v8;
    *(this + 3) = result;
    *(this + 7) = result + 2;
    *(this + 8) = &result[2 * v7 + 2];
  }

  while (!v7);
  result[2] = a2;
  result[3] = a3;
  *(this + 7) = result + 4;
  return result;
}

unint64_t google::protobuf::internal::ArenaImpl::SerialArena::AllocateAligned(google::protobuf::internal::ArenaImpl::SerialArena *this, unint64_t a2)
{
  if (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/arena_impl.h", 160);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (internal::AlignUpTo8(n)) == (n): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  result = *(this + 5);
  v6 = *(this + 6);
  if (v6 < result)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/arena_impl.h", 161);
    v7 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (limit_) >= (ptr_): ");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
    result = *(this + 5);
    v6 = *(this + 6);
  }

  if (v6 - result < a2)
  {
    return google::protobuf::internal::ArenaImpl::SerialArena::AllocateAlignedFallback(this, a2);
  }

  *(this + 5) = result + a2;
  return result;
}

void sub_254C8A148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t google::protobuf::internal::ArenaImpl::AllocateAligned(atomic_ullong *this, unint64_t a2)
{
  v4 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  if (*v4 == this[4])
  {
    explicit = v4[1];
    goto LABEL_3;
  }

  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit && *(explicit + 1) == v4)
  {
LABEL_3:

    return google::protobuf::internal::ArenaImpl::SerialArena::AllocateAligned(explicit, a2);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedFallback(this, a2);
}

unint64_t google::protobuf::internal::ArenaImpl::AllocateAlignedFallback(atomic_ullong *this, unint64_t a2)
{
  SerialArena = google::protobuf::internal::ArenaImpl::GetSerialArena(this);

  return google::protobuf::internal::ArenaImpl::SerialArena::AllocateAligned(SerialArena, a2);
}

void *google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(atomic_ullong *this, unint64_t a2, void (*a3)(void *))
{
  v6 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  if (*v6 == this[4])
  {
    explicit = v6[1];
    goto LABEL_3;
  }

  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit && *(explicit + 1) == v6)
  {
LABEL_3:

    return google::protobuf::internal::ArenaImpl::SerialArena::AllocateAlignedAndAddCleanup(explicit, a2, a3);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanupFallback(this, a2, a3);
}

void *google::protobuf::internal::ArenaImpl::SerialArena::AllocateAlignedAndAddCleanup(google::protobuf::internal::ArenaImpl::SerialArena *this, unint64_t a2, void (*a3)(void *))
{
  Aligned = google::protobuf::internal::ArenaImpl::SerialArena::AllocateAligned(this, a2);
  v6 = Aligned;
  v7 = *(this + 7);
  if (v7 == *(this + 8))
  {
    google::protobuf::internal::ArenaImpl::SerialArena::AddCleanupFallback(this, Aligned, a3);
  }

  else
  {
    *v7 = Aligned;
    v7[1] = a3;
    *(this + 7) = v7 + 2;
  }

  return v6;
}

void *google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanupFallback(atomic_ullong *this, unint64_t a2, void (*a3)(void *))
{
  SerialArena = google::protobuf::internal::ArenaImpl::GetSerialArena(this);

  return google::protobuf::internal::ArenaImpl::SerialArena::AllocateAlignedAndAddCleanup(SerialArena, a2, a3);
}

google::protobuf::internal::ArenaImpl *google::protobuf::internal::ArenaImpl::GetSerialArena(atomic_ullong *this)
{
  v2 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  if (*v2 == this[4])
  {
    return *(v2 + 1);
  }

  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit && *(explicit + 8) == v2)
  {
    return explicit;
  }

  v5 = google::protobuf::internal::ArenaImpl::thread_cache(v2);

  return google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(this, v5);
}

google::protobuf::internal::ArenaImpl *google::protobuf::internal::ArenaImpl::GetSerialArenaFallback(atomic_ullong *this, google::protobuf::internal::ArenaImpl::Block *a2)
{
  v3 = this;
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    while (*(explicit + 1) != a2)
    {
      explicit = *(explicit + 4);
      if (!explicit)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    if (this[5] <= 0x60)
    {
      v5 = 96;
    }

    else
    {
      v5 = this[5];
    }

    v6 = (this[9])(v5);
    *v6 = 0;
    *(v6 + 1) = 24;
    *(v6 + 2) = v5;
    atomic_fetch_add_explicit(v3 + 2, v5, memory_order_relaxed);
    this = google::protobuf::internal::ArenaImpl::SerialArena::New(v6, a2, v3, v7);
    explicit = this;
    v8 = *v3;
    this[4] = *v3;
    v9 = v8;
    atomic_compare_exchange_strong_explicit(v3, &v9, this, memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      v10 = v9;
      do
      {
        this[4] = v9;
        atomic_compare_exchange_strong_explicit(v3, &v10, this, memory_order_release, memory_order_relaxed);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }
  }

  v12 = google::protobuf::internal::ArenaImpl::thread_cache(this);
  *(v12 + 1) = explicit;
  v13 = *(v3 + 4);
  *google::protobuf::internal::ArenaImpl::thread_cache(v12) = v13;
  atomic_store(explicit, v3 + 1);
  return explicit;
}

uint64_t google::protobuf::internal::ArenaImpl::SerialArena::AllocateAlignedFallback(google::protobuf::internal::ArenaImpl::SerialArena *this, unint64_t a2)
{
  v4 = *(this + 2);
  *(v4 + 8) = *(v4 + 16) - *(this + 6) + *(this + 5);
  v5 = google::protobuf::internal::ArenaImpl::NewBlock(*this, v4, a2);
  *(this + 2) = v5;
  *(this + 5) = google::protobuf::internal::ArenaImpl::Block::Pointer(v5, v5[1]);
  *(this + 6) = google::protobuf::internal::ArenaImpl::Block::Pointer(*(this + 2), *(*(this + 2) + 16));

  return google::protobuf::internal::ArenaImpl::SerialArena::AllocateAligned(this, a2);
}

uint64_t google::protobuf::internal::ArenaImpl::Block::Pointer(google::protobuf::internal::ArenaImpl::Block *this, unint64_t a2)
{
  if (*(this + 2) < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/arena_impl.h", 222);
    v4 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: n <= size_: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  return this + a2;
}

void sub_254C8A5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::Arena::OnArenaAllocation(uint64_t this, const std::type_info *a2, uint64_t a3)
{
  v3 = *(this + 88);
  if (v3)
  {
    return v3(a2, a3, *(this + 112));
  }

  return this;
}

uint64_t google::protobuf::internal::ThreadLocalStorage<google::protobuf::internal::ArenaImpl::ThreadCache>::Delete(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x259C29D90);
  }

  return result;
}

void google::protobuf::internal::DestroyString(void **this, const void *a2)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void google::protobuf::internal::InitProtobufDefaults(google::protobuf::internal *this)
{
  {
    google::protobuf::internal::fixed_address_empty_string = 0;
    *algn_27F753C28 = 0;
    qword_27F753C30 = 0;
    google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyString, &google::protobuf::internal::fixed_address_empty_string, v1);
  }
}

void google::protobuf::internal::InitSCCImpl(_DWORD *a1)
{
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2 = pthread_self();
  v3 = v2;
  if (google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner == v2)
  {
    if (*a1 != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/generated_message_util.cc", 812);
      v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: (scc->visit_status.load(std::memory_order_relaxed)) == (SCCInfoBase::kRunning): ");
      google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    google::protobuf::internal::InitProtobufDefaults(v2);
    std::mutex::lock(&google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu);
    google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner = v3;
    google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner = 0;

    std::mutex::unlock(&google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu);
  }
}

void sub_254C8A820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *google::protobuf::internal::anonymous namespace::InitSCC_DFS(_DWORD *result)
{
  if (*result == -1)
  {
    v1 = result;
    *result = 1;
    v2 = result + 6;
    v3 = result[1];
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        if (*&v2[2 * i])
        {
          v3 = *(v1 + 1);
        }
      }
    }

    v5 = v3;
    v6 = *(v1 + 2);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = &v2[2 * v5];
      do
      {
        if (**&v8[2 * v7])
        {
          v6 = *(v1 + 2);
        }

        ++v7;
      }

      while (v7 < v6);
    }

    result = v1[2]();
    atomic_store(0, v1);
  }

  return result;
}

void google::protobuf::internal::InitSCCImpl()
{
  {
    __cxa_atexit(google::protobuf::internal::WrappedMutex::~WrappedMutex, &google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu, &dword_254C81000);
  }
}

uint64_t google::protobuf::internal::MergePartialFromImpl<false>(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0x7FFFFFFF00000000;
  v12 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v13 = 0x80000000;
  v14 = 0;
  v15 = 0;
  v3 = google::protobuf::internal::EpsCopyInputStream::InitFrom(v7, a1);
  if ((*(*a2 + 104))(a2, v3, v7))
  {
    v4 = v11 == 1;
  }

  else
  {
    v4 = 0;
  }

  result = v4;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void google::protobuf::MessageLite::LogInitializationErrorMessage(google::protobuf::MessageLite *this)
{
  google::protobuf::internal::LogMessage::LogMessage(v5, 2, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/message_lite.cc", 122);
  v2 = google::protobuf::internal::LogMessage::operator<<(v5, &__p);
  google::protobuf::internal::LogFinisher::operator=(&v3, &v2->__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
}

void sub_254C8AB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

void google::protobuf::anonymous namespace::InitializationErrorMessage(const std::string::value_type *this@<X0>, const char *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a3, "Can't ");
  std::string::append(a3, this);
  std::string::append(a3, " message of type ");
  (*(*a2 + 16))(&__p, a2);
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
    v8 = v13;
  }

  else
  {
    v8 = v12;
  }

  std::string::append(a3, p_p, v8);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a3, " because it is missing required fields: ");
  (*(*a2 + 72))(&__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = v12;
  }

  std::string::append(a3, v9, v10);
  if (v13 < 0)
  {
    operator delete(__p);
  }
}

void sub_254C8AC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::MessageLite::ParseFrom<(google::protobuf::MessageLite::ParseFlags)1,google::protobuf::io::ZeroCopyInputStream *>(google::protobuf::MessageLite *a1, uint64_t *a2)
{
  (*(*a1 + 56))(a1);
  result = google::protobuf::internal::MergePartialFromImpl<false>(*a2, a1);
  if (result)
  {
    if ((*(*a1 + 64))(a1))
    {
      return 1;
    }

    else
    {
      google::protobuf::MessageLite::LogInitializationErrorMessage(a1);
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::MessageLite::ParseFromFileDescriptor(google::protobuf::MessageLite *this, int a2)
{
  google::protobuf::io::FileInputStream::FileInputStream(&v6, a2, -1);
  v9 = &v6;
  v3 = google::protobuf::MessageLite::ParseFrom<(google::protobuf::MessageLite::ParseFlags)1,google::protobuf::io::ZeroCopyInputStream *>(this, &v9);
  if (v7[4])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v6 = &unk_286718C98;
  google::protobuf::io::CopyingInputStreamAdaptor::~CopyingInputStreamAdaptor(&v8);
  google::protobuf::io::FileInputStream::CopyingFileInputStream::~CopyingFileInputStream(v7);
  return v4;
}

uint64_t google::protobuf::MessageLite::SerializeToZeroCopyStream(google::protobuf::MessageLite *this, google::protobuf::io::ZeroCopyOutputStream *a2)
{
  if (((*(*this + 64))(this) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/message_lite.cc", 370);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: IsInitialized(): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::SerializePartialToZeroCopyStream(this, a2);
}

void sub_254C8AED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializePartialToZeroCopyStream(google::protobuf::MessageLite *this, google::protobuf::io::ZeroCopyOutputStream *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 88))(this);
  if (v4 >> 31)
  {
    v5 = v4;
    google::protobuf::internal::LogMessage::LogMessage(v16, 2, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/message_lite.cc", 378);
    (*(*this + 16))(__p, this);
    v6 = google::protobuf::internal::LogMessage::operator<<(v16, __p);
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, " exceeded maximum protobuf size of 2GB: ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, v5);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v8->__r_.__value_.__l.__data_);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    v9 = 0;
  }

  else
  {
    v16[0].__r_.__value_.__r.__words[0] = &v16[0].__r_.__value_.__r.__words[2];
    v16[0].__r_.__value_.__l.__size_ = &v16[0].__r_.__value_.__r.__words[2];
    v17 = a2;
    v18 = 0;
    v19 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
    v10 = (*(*this + 112))(this);
    google::protobuf::io::EpsCopyOutputStream::Trim(v16, v10);
    v9 = v18 ^ 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void sub_254C8B094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a17);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::MessageLite::SerializeToFileDescriptor(google::protobuf::MessageLite *this, int a2)
{
  google::protobuf::io::FileOutputStream::FileOutputStream(v5, a2, -1);
  if (google::protobuf::MessageLite::SerializeToZeroCopyStream(this, v5))
  {
    v3 = google::protobuf::io::FileOutputStream::Flush(v5);
  }

  else
  {
    v3 = 0;
  }

  google::protobuf::io::FileOutputStream::~FileOutputStream(v5);
  return v3;
}

void sub_254C8B1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  YAML::NodeBuilder::~NodeBuilder(&a9);
  YAML::NodeEvents::~NodeEvents((v9 - 64));
  _Unwind_Resume(a1);
}

void YAML::NodeEvents::~NodeEvents(YAML::NodeEvents *this)
{
  std::__tree<std::__value_type<YAML::detail::node_ref const*,int>,std::__map_value_compare<YAML::detail::node_ref const*,std::__value_type<YAML::detail::node_ref const*,int>,std::less<YAML::detail::node_ref const*>,true>,std::allocator<std::__value_type<YAML::detail::node_ref const*,int>>>::destroy(this + 24, *(this + 4));
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__tree<std::__value_type<YAML::detail::node_ref const*,int>,std::__map_value_compare<YAML::detail::node_ref const*,std::__value_type<YAML::detail::node_ref const*,int>,std::less<YAML::detail::node_ref const*>,true>,std::allocator<std::__value_type<YAML::detail::node_ref const*,int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<YAML::detail::node_ref const*,int>,std::__map_value_compare<YAML::detail::node_ref const*,std::__value_type<YAML::detail::node_ref const*,int>,std::less<YAML::detail::node_ref const*>,true>,std::allocator<std::__value_type<YAML::detail::node_ref const*,int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<YAML::detail::node_ref const*,int>,std::__map_value_compare<YAML::detail::node_ref const*,std::__value_type<YAML::detail::node_ref const*,int>,std::less<YAML::detail::node_ref const*>,true>,std::allocator<std::__value_type<YAML::detail::node_ref const*,int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

double siri::intelligence::Character::Character(siri::intelligence::Character *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void siri::intelligence::Character::GetId(siri::intelligence::Character *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void siri::intelligence::Character::GetName(siri::intelligence::Character *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
  }
}

void siri::intelligence::Character::GetTtsVoiceName(siri::intelligence::Character *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 6), *(this + 7));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 3);
    a2->__r_.__value_.__r.__words[2] = *(this + 8);
  }
}

void sub_254C8B444(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x259C29D90](v3, 0x20C40A4A59CD2);

  _Unwind_Resume(a1);
}

void sub_254C8B7EC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 40);
  *(v2 - 48) = &unk_28671C180;
  *(v2 - 40) = 0;
  if (v4)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v2 - 40, v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c31_ZTSN4siri12intelligence5TimerE(uint64_t a1)
{
  v3 = *(a1 + 40);
  v1 = (a1 + 40);
  v2 = v3;
  *(v1 - 1) = &unk_28671C180;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v1, v2);
  }
}

void sub_254C8BDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v32 - 89) < 0)
  {
    operator delete(*(v32 - 112));
  }

  IEDefer::~IEDefer((v32 - 120));
  v34 = a30;
  a30 = 0;
  if (v34)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a30, v34);
  }

  v35 = *(v32 - 72);
  *(v32 - 80) = &unk_28671C180;
  *(v32 - 72) = 0;
  if (v35)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v32 - 72, v35);
  }

  _Unwind_Resume(a1);
}

void sub_254C8C3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v32 - 89) < 0)
  {
    operator delete(*(v32 - 112));
  }

  IEDefer::~IEDefer((v32 - 120));
  v34 = a30;
  a30 = 0;
  if (v34)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a30, v34);
  }

  v35 = *(v32 - 72);
  *(v32 - 80) = &unk_28671C180;
  *(v32 - 72) = 0;
  if (v35)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v32 - 72, v35);
  }

  _Unwind_Resume(a1);
}

void sub_254C8C8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (*(v30 - 57) < 0)
  {
    operator delete(*(v30 - 80));
  }

  IEDefer::~IEDefer((v30 - 88));
  v32 = a28;
  a28 = 0;
  if (v32)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a28, v32);
  }

  v33 = *(v30 - 40);
  *(v30 - 48) = &unk_28671C180;
  *(v30 - 40) = 0;
  if (v33)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v30 - 40, v33);
  }

  _Unwind_Resume(a1);
}

void sub_254C8CDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  IEDefer::~IEDefer((v30 - 104));
  v32 = a28;
  a28 = 0;
  if (v32)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a28, v32);
  }

  v33 = *(v30 - 56);
  *(v30 - 64) = &unk_28671C180;
  *(v30 - 56) = 0;
  if (v33)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v30 - 56, v33);
  }

  _Unwind_Resume(a1);
}

void sub_254C8D2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (*(v30 - 57) < 0)
  {
    operator delete(*(v30 - 80));
  }

  IEDefer::~IEDefer((v30 - 88));
  v32 = a28;
  a28 = 0;
  if (v32)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a28, v32);
  }

  v33 = *(v30 - 40);
  *(v30 - 48) = &unk_28671C180;
  *(v30 - 40) = 0;
  if (v33)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v30 - 40, v33);
  }

  _Unwind_Resume(a1);
}

void sub_254C8D6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = *(v22 - 40);
  *(v22 - 48) = &unk_28671C180;
  *(v22 - 40) = 0;
  if (v24)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v22 - 40, v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_254C8DC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  IEDefer::~IEDefer((v18 - 112));
  v20 = *(v18 - 128);
  *(v18 - 136) = &unk_28671C180;
  *(v18 - 128) = 0;
  if (v20)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v18 - 128, v20);
  }

  v21 = *(v18 - 96);
  *(v18 - 104) = &unk_28671C180;
  *(v18 - 96) = 0;
  if (v21)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v18 - 96, v21);
  }

  _Unwind_Resume(a1);
}

void sub_254C8E14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  v27 = *(v25 - 56);
  *(v25 - 64) = &unk_28671C180;
  *(v25 - 56) = 0;
  if (v27)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v25 - 56, v27);
  }

  _Unwind_Resume(a1);
}

void sub_254C8E594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (**a18)(void), void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  IEDefer::~IEDefer(&a18);
  v27 = a16;
  a16 = 0;
  if (v27)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a16, v27);
  }

  v28 = *(v25 - 40);
  *(v25 - 48) = &unk_28671C180;
  *(v25 - 40) = 0;
  if (v28)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v25 - 40, v28);
  }

  _Unwind_Resume(a1);
}

void sub_254C8E9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void (**a23)(void), void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a24;
  std::vector<siri::intelligence::ExecStateResponse>::__destroy_vector::operator()[abi:ne200100](&__p);
  IEDefer::~IEDefer(&a23);
  v31 = a21;
  a20 = &unk_28671C180;
  a21 = 0;
  if (v31)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a21, v31);
  }

  v32 = *(v29 - 56);
  *(v29 - 64) = &unk_28671C180;
  *(v29 - 56) = 0;
  if (v32)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v29 - 56, v32);
  }

  _Unwind_Resume(a1);
}

void sub_254C8EE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (**a18)(void), void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  IEDefer::~IEDefer(&a18);
  v27 = a16;
  a16 = 0;
  if (v27)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a16, v27);
  }

  v28 = *(v25 - 40);
  *(v25 - 48) = &unk_28671C180;
  *(v25 - 40) = 0;
  if (v28)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v25 - 40, v28);
  }

  _Unwind_Resume(a1);
}

void sub_254C8F234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  siri::intelligence::Intent::~Intent(&__p);
  IEDefer::~IEDefer((v17 - 72));
  v19 = *(v17 - 88);
  *(v17 - 96) = &unk_28671C180;
  *(v17 - 88) = 0;
  if (v19)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v17 - 88, v19);
  }

  v20 = *(v17 - 56);
  *(v17 - 64) = &unk_28671C180;
  *(v17 - 56) = 0;
  if (v20)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v17 - 56, v20);
  }

  _Unwind_Resume(a1);
}

void sub_254C8F660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (**a18)(void), void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  IEDefer::~IEDefer(&a18);
  v27 = a16;
  a16 = 0;
  if (v27)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a16, v27);
  }

  v28 = *(v25 - 64);
  *(v25 - 72) = &unk_28671C180;
  *(v25 - 64) = 0;
  if (v28)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v25 - 64, v28);
  }

  _Unwind_Resume(a1);
}

void sub_254C8FB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  IEDefer::~IEDefer(&__p);
  if (a15)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v22 + 40, a15);
  }

  v25 = *(v23 - 40);
  *(v23 - 48) = &unk_28671C180;
  *(v23 - 40) = 0;
  if (v25)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v23 - 40, v25);
  }

  _Unwind_Resume(a1);
}

void sub_254C8FE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  IEDefer::~IEDefer(&__p);
  if (a15)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v22 + 40, a15);
  }

  v25 = *(v23 - 40);
  *(v23 - 48) = &unk_28671C180;
  *(v23 - 40) = 0;
  if (v25)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v23 - 40, v25);
  }

  _Unwind_Resume(a1);
}

void sub_254C901EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  IEDefer::~IEDefer(&__p);
  v24 = a15;
  a15 = 0;
  if (v24)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a15, v24);
  }

  v25 = *(v22 - 40);
  *(v22 - 48) = &unk_28671C180;
  *(v22 - 40) = 0;
  if (v25)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v22 - 40, v25);
  }

  _Unwind_Resume(a1);
}

void sub_254C905F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  siri::intelligence::DirectInvocation::~DirectInvocation(&__p);
  IEDefer::~IEDefer((v26 - 72));
  v28 = a25;
  a24 = &unk_28671C180;
  a25 = 0;
  if (v28)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a25, v28);
  }

  v29 = *(v26 - 56);
  *(v26 - 64) = &unk_28671C180;
  *(v26 - 56) = 0;
  if (v29)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v26 - 56, v29);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::DirectInvocation::~DirectInvocation(siri::intelligence::DirectInvocation *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_254C90A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  siri::intelligence::DirectInvocation::~DirectInvocation(&__p);
  IEDefer::~IEDefer((v26 - 72));
  v28 = a25;
  a24 = &unk_28671C180;
  a25 = 0;
  if (v28)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a25, v28);
  }

  v29 = *(v26 - 56);
  *(v26 - 64) = &unk_28671C180;
  *(v26 - 56) = 0;
  if (v29)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v26 - 56, v29);
  }

  _Unwind_Resume(a1);
}

void sub_254C90F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (*(v21 - 57) < 0)
  {
    operator delete(*(v21 - 80));
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  IEDefer::~IEDefer((v21 - 88));
  v23 = a20;
  a20 = 0;
  if (v23)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a20, v23);
  }

  v24 = *(v21 - 40);
  *(v21 - 48) = &unk_28671C180;
  *(v21 - 40) = 0;
  if (v24)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v21 - 40, v24);
  }

  _Unwind_Resume(a1);
}

void sub_254C91340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  IEDefer::~IEDefer(&__p);
  if (a15)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v22 + 40, a15);
  }

  v25 = *(v23 - 40);
  *(v23 - 48) = &unk_28671C180;
  *(v23 - 40) = 0;
  if (v25)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v23 - 40, v25);
  }

  _Unwind_Resume(a1);
}

void sub_254C91814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, void *a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a30, a31);

  IEDefer::~IEDefer((v40 - 104));
  v42 = a38;
  a37 = &unk_28671C180;
  a38 = 0;
  if (v42)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a38, v42);
  }

  v43 = *(v40 - 88);
  *(v40 - 96) = &unk_28671C180;
  *(v40 - 88) = 0;
  if (v43)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v40 - 88, v43);
  }

  _Unwind_Resume(a1);
}

void sub_254C91D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  IEDefer::~IEDefer((v29 - 120));
  v31 = a27;
  a27 = 0;
  if (v31)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a27, v31);
  }

  v32 = *(v29 - 72);
  *(v29 - 80) = &unk_28671C180;
  *(v29 - 72) = 0;
  if (v32)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v29 - 72, v32);
  }

  _Unwind_Resume(a1);
}

void sub_254C9232C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void (**a32)(void))
{
  if (*(v33 - 105) < 0)
  {
    operator delete(*(v33 - 128));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  IEDefer::~IEDefer(&a32);
  v35 = a30;
  a30 = 0;
  if (v35)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a30, v35);
  }

  v36 = *(v33 - 88);
  *(v33 - 96) = &unk_28671C180;
  *(v33 - 88) = 0;
  if (v36)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v33 - 88, v36);
  }

  _Unwind_Resume(a1);
}

void sub_254C9280C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  IEDefer::~IEDefer((v31 - 96));
  v33 = a30;
  a30 = 0;
  if (v33)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a30, v33);
  }

  v34 = *(v31 - 80);
  *(v31 - 88) = &unk_28671C180;
  *(v31 - 80) = 0;
  if (v34)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](v31 - 80, v34);
  }

  _Unwind_Resume(a1);
}

void sub_254C92D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  IEDefer::~IEDefer(&__p);
  v39 = a25;
  a25 = 0;
  if (v39)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a25, v39);
  }

  v40 = a35;
  a34 = &unk_28671C180;
  a35 = 0;
  if (v40)
  {
    std::default_delete<siri::intelligence::Timer::Impl>::operator()[abi:ne200100](&a35, v40);
  }

  _Unwind_Resume(a1);
}

void sub_254C9305C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

void sub_254C930C4()
{
  if (!v0)
  {
    JUMPOUT(0x254C930BCLL);
  }

  JUMPOUT(0x254C930B4);
}

void sub_254C93228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::string ()(std::string const&,std::shared_ptr<siri::intelligence::VariableDictionary>)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);

  _Unwind_Resume(a1);
}

void sub_254C93344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::Intent::~Intent(siri::intelligence::Intent *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  v4 = (this + 192);
  std::vector<siri::intelligence::NLParameters>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 168, *(this + 22));
  v4 = (this + 144);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<siri::intelligence::NLParameters>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 40;
        std::allocator<siri::intelligence::NLParameters>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<siri::intelligence::NLParameters>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
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

std::string *std::pair<std::string const,std::shared_ptr<siri::intelligence::Variable>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void siri::intelligence::ResolvedCondition::~ResolvedCondition(void **this)
{
  v2 = this + 7;
  std::vector<siri::intelligence::ResolvedCondition>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<siri::intelligence::ResolvedCondition>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = v4 - 3;
        std::vector<siri::intelligence::ResolvedCondition>::__destroy_vector::operator()[abi:ne200100](&v7);
        if (*(v4 - 33) < 0)
        {
          operator delete(*(v4 - 7));
        }

        v6 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          operator delete(*v6);
        }

        v4 -= 10;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<siri::intelligence::Variable>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<siri::intelligence::Variable>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
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

void std::vector<siri::intelligence::ExecStateResponse>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<siri::intelligence::ExecStateResponse>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<siri::intelligence::ExecStateResponse>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v3 + v4;
      v9 = (v3 + v4 - 24);
      std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&v9);
      *(v3 + v4 - 160) = &unk_286718FE0;
      v6 = *(v3 + v4 - 32);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      siri::intelligence::ResponseBase::~ResponseBase((v5 - 160));
      *(v5 - 296) = &unk_286719048;
      v7 = *(v5 - 168);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      siri::intelligence::ResponseBase::~ResponseBase((v5 - 296));
      v8 = *(v3 + v4 - 304);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v4 -= 312;
    }

    while (v3 + v4 != v2);
  }

  a1[1] = v2;
}

void siri::intelligence::BehaviorResponse::~BehaviorResponse(siri::intelligence::BehaviorResponse *this)
{
  *this = &unk_286718FE0;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  siri::intelligence::ResponseBase::~ResponseBase(this);
}

{
  *this = &unk_286718FE0;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  siri::intelligence::ResponseBase::~ResponseBase(this);

  JUMPOUT(0x259C29D90);
}

{
  *this = &unk_286718FE0;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  siri::intelligence::ResponseBase::~ResponseBase(this);
}

void siri::intelligence::DialogResponse::~DialogResponse(siri::intelligence::DialogResponse *this)
{
  *this = &unk_286719048;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  siri::intelligence::ResponseBase::~ResponseBase(this);
}

{
  *this = &unk_286719048;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  siri::intelligence::ResponseBase::~ResponseBase(this);

  JUMPOUT(0x259C29D90);
}

{
  *this = &unk_286719048;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  siri::intelligence::ResponseBase::~ResponseBase(this);
}

void siri::intelligence::ResponseBase::~ResponseBase(void **this)
{
  *this = &unk_286719028;
  v2 = this + 12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  siri::intelligence::ResponseBase::~ResponseBase(this);

  JUMPOUT(0x259C29D90);
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<siri::intelligence::Variable>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<siri::intelligence::Variable>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::__shared_ptr_emplace<siri::intelligence::Callbacks>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286718F00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

void sub_254C94090(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
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

uint64_t std::__function::__value_func<std::string ()(std::string const&,std::shared_ptr<siri::intelligence::VariableDictionary>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void siri::intelligence::Log::Info(siri::intelligence::Log *this, const char *a2, ...)
{
  va_start(va, a2);
  *v4 = 0;
  vasprintf(v4, this, va);
  if (*v4)
  {
    siri::intelligence::LogInternal(1, *v4, v3);
    free(*v4);
  }

  else
  {
    siri::intelligence::LogInternal(1, this, v3);
  }
}

void siri::intelligence::LogInternal(siri::intelligence *this, const char *a2, const char *a3)
{
  v4 = this;
  v20 = *MEMORY[0x277D85DE8];
  if (!siri::intelligence::LogInternal(os_log_type_t,char const*)::sLog)
  {
    v5 = os_log_create("com.apple.siri.AuthoredFlow", "FlowEngine");
    v6 = siri::intelligence::LogInternal(os_log_type_t,char const*)::sLog;
    siri::intelligence::LogInternal(os_log_type_t,char const*)::sLog = v5;
  }

  v7 = "Debug: ";
  v8 = "";
  if (v4 == 16)
  {
    v8 = "Error: ";
  }

  if (v4 != 2)
  {
    v7 = v8;
  }

  if (v4)
  {
    v9 = v7;
  }

  else
  {
    v9 = "Warning: ";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v9);
  v10 = siri::intelligence::LogInternal(os_log_type_t,char const*)::sLog;
  if (os_log_type_enabled(siri::intelligence::LogInternal(os_log_type_t,char const*)::sLog, v4))
  {
    v11 = __p;
    if (v15 < 0)
    {
      v11 = __p[0];
    }

    *buf = 136315394;
    v17 = v11;
    v18 = 2080;
    v19 = a2;
    _os_log_impl(&dword_254C81000, v10, v4, "%s%s", buf, 0x16u);
  }

  if (siri::intelligence::Log::sOutputToStdout == 1)
  {
    v12 = __p;
    if (v15 < 0)
    {
      v12 = __p[0];
    }

    printf("%s%s\n", v12, a2);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void siri::intelligence::Log::Warning(siri::intelligence::Log *this, const char *a2, ...)
{
  va_start(va, a2);
  *v4 = 0;
  vasprintf(v4, this, va);
  if (*v4)
  {
    siri::intelligence::LogInternal(0, *v4, v3);
    free(*v4);
  }

  else
  {
    siri::intelligence::LogInternal(0, this, v3);
  }
}

void siri::intelligence::Log::Error(siri::intelligence::Log *this, const char *a2, ...)
{
  va_start(va, a2);
  *v4 = 0;
  vasprintf(v4, this, va);
  if (*v4)
  {
    siri::intelligence::LogInternal(0x10, *v4, v3);
    free(*v4);
  }

  else
  {
    siri::intelligence::LogInternal(0x10, this, v3);
  }
}

void siri::intelligence::Log::Debug(siri::intelligence::Log *this, const char *a2, ...)
{
  va_start(va, a2);
  *v4 = 0;
  vasprintf(v4, this, va);
  if (*v4)
  {
    siri::intelligence::LogInternal(2, *v4, v3);
    free(*v4);
  }

  else
  {
    siri::intelligence::LogInternal(2, this, v3);
  }
}

double siri::intelligence::TestSuite::TestSuite(siri::intelligence::TestSuite *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

uint64_t siri::intelligence::TestSuite::LoadTests(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  std::vector<siri::intelligence::TestCase>::__base_destruct_at_end[abi:ne200100](a1, *a1);
  v3 = a1[3];
  for (i = a1[4]; i != v3; std::allocator<siri::intelligence::TestParseError>::destroy[abi:ne200100]((a1 + 3), i))
  {
    i -= 48;
  }

  a1[4] = v3;
  siri::intelligence::ListTemplateDir(a2, 4, v10);
  if (v10[0] != v10[1])
  {
    if (*(v10[0] + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *v10[0], *(v10[0] + 8));
    }

    else
    {
      v5 = *v10[0];
      v9.__r_.__value_.__r.__words[2] = *(v10[0] + 16);
      *&v9.__r_.__value_.__l.__data_ = v5;
    }

    _ZNSt3__115allocate_sharedB8ne200100IN8protobuf8FlowTestENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v11.__r_.__value_.__r.__words[0] = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_254C96548(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x720]);
  __cxa_end_catch();
  YAML::Node::~Node(&v2);
  siri::intelligence::ValidationResults::~ValidationResults(v3);
  if (v4 < 0)
  {
    operator delete(v3[6]);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  v9 = &v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  _Unwind_Resume(a1);
}

void sub_254C9660C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x254C96778);
}

void sub_254C96640(_Unwind_Exception *a1)
{
  siri::intelligence::TestCase::~TestCase(&STACK[0x720]);
  YAML::Node::~Node(&v2);
  siri::intelligence::ValidationResults::~ValidationResults(v3);
  if (v4 < 0)
  {
    operator delete(v3[6]);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  v9 = &v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  _Unwind_Resume(a1);
}

void sub_254C96680()
{
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x720]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    v0 = STACK[0x2D0];
    JUMPOUT(0x254C96710);
  }

  STACK[0x720] = &STACK[0x360];
  std::vector<siri::intelligence::ValidationResult>::__destroy_vector::operator()[abi:ne200100](&STACK[0x720]);
  JUMPOUT(0x254C9672CLL);
}

void sub_254C966F0()
{
  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  if (SLOBYTE(STACK[0x737]) < 0)
  {
    operator delete(STACK[0x720]);
  }

  JUMPOUT(0x254C9671CLL);
}

void sub_254C96780(_Unwind_Exception *a1)
{
  YAML::Node::~Node(&v2);
  siri::intelligence::ValidationResults::~ValidationResults(v3);
  if (v4 < 0)
  {
    operator delete(v3[6]);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  v9 = &v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  _Unwind_Resume(a1);
}

YAML::Node *YAML::Node::operator=(YAML::Node *this, YAML::Node *a2)
{
  if (*this != 1 || (*a2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v6 = this;
    v7 = exception;
    if (*(v6 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *(v6 + 1), *(v6 + 2));
    }

    else
    {
      v8 = *(v6 + 8);
    }

    YAML::InvalidNode::InvalidNode(v7, &v8);
  }

  if (!YAML::Node::is(this, a2))
  {
    YAML::Node::AssignNode(this, a2);
  }

  return this;
}

void YAML::Node::~Node(YAML::Node *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_254C96B58(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x259C29CE0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<siri::intelligence::TestParseError>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<siri::intelligence::TestParseError>::__emplace_back_slow_path<siri::intelligence::TestParseError>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void siri::intelligence::TestParseError::~TestParseError(void **this)
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

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x259C29CE0](a1 + 128);
  return a1;
}

void siri::intelligence::TestSuite::SaveTests(siri::intelligence::TestCase **this)
{
  if (*this != this[1])
  {
    siri::intelligence::TestCase::GetTestFilename(*this);
  }

  _ZNSt3__115allocate_sharedB8ne200100IN8protobuf8FlowTestENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_254C97F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  YAML::Emitter::~Emitter(&__p);
  v46 = *(v44 - 168);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  std::__tree<std::string>::destroy(v44 - 160, *(v44 - 152));
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::TestSuite::GetTests@<X0>(siri::intelligence::TestSuite *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<siri::intelligence::TestCase>::__init_with_size[abi:ne200100]<siri::intelligence::TestCase*,siri::intelligence::TestCase*>(a2, *this, *(this + 1), 0x86BCA1AF286BCA1BLL * ((*(this + 1) - *this) >> 3));
}

uint64_t siri::intelligence::TestSuite::GetParseErrors@<X0>(siri::intelligence::TestSuite *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<siri::intelligence::TestParseError>::__init_with_size[abi:ne200100]<siri::intelligence::TestParseError*,siri::intelligence::TestParseError*>(a2, *(this + 3), *(this + 4), 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - *(this + 3)) >> 4));
}

uint64_t siri::intelligence::TestSuite::AddTestCase(siri::intelligence::TestSuite *this, const siri::intelligence::TestCase *a2)
{
  v3 = *(this + 1);
  if (v3 >= *(this + 2))
  {
    result = std::vector<siri::intelligence::TestCase>::__emplace_back_slow_path<siri::intelligence::TestCase const&>(this, a2);
  }

  else
  {
    siri::intelligence::TestCase::TestCase(*(this + 1), a2);
    result = v3 + 152;
    *(this + 1) = v3 + 152;
  }

  *(this + 1) = result;
  return result;
}

BOOL YAML::Node::is(YAML::Node *this, const YAML::Node *a2)
{
  if (*this != 1 || (*a2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, *(this + 1), *(this + 2));
    }

    else
    {
      v7 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v7);
  }

  v3 = *(this + 6);
  return v3 && (v4 = *(a2 + 6)) != 0 && *v3 == *v4;
}

void YAML::Node::AssignNode(YAML::Node *this, const YAML::Node *a2)
{
  if (*this != 1 || (*a2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v10 = this;
    v11 = exception;
    if (*(v10 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *(v10 + 1), *(v10 + 2));
    }

    else
    {
      v12 = *(v10 + 8);
    }

    YAML::InvalidNode::InvalidNode(v11, &v12);
  }

  YAML::Node::EnsureNodeExists(a2);
  v4 = *(this + 6);
  v5 = *(a2 + 6);
  if (v4)
  {
    YAML::detail::node::set_ref(v4, v5);
    YAML::detail::memory_holder::merge(*(this + 4), *(a2 + 4));
    *(this + 6) = *(a2 + 6);
  }

  else
  {
    *(this + 6) = v5;
    v7 = *(a2 + 4);
    v6 = *(a2 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(this + 5);
    *(this + 4) = v7;
    *(this + 5) = v6;
    if (v8)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void *YAML::InvalidNode::InvalidNode(void *a1, uint64_t a2)
{
  v6 = -1;
  v7 = -1;
  YAML::ErrorMsg::INVALID_NODE_WITH_KEY(a2, __p);
  YAML::Exception::Exception(a1, &v6, __p);
  *a1 = &unk_28671C2B8;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_28671C338;
  return a1;
}

void sub_254C98570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t YAML::ErrorMsg::INVALID_NODE_WITH_KEY@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "invalid node; first invalid key: ", 34);
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 23);
    }

    else
    {
      v8 = *(a1 + 8);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "", 1);
    std::stringbuf::str();
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "invalid node; this may result from using a map iterator as a sequence iterator, or vice-versa");
  }

  v12[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v10;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C29CE0](&v17);
}

void sub_254C98774(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t YAML::Exception::Exception(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  YAML::Exception::build_what(a2, a3, &v9);
  std::runtime_error::runtime_error(a1, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_28671C238;
  v6 = *a2;
  *(a1 + 24) = a2[2];
  *(a1 + 16) = v6;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a3, *(a3 + 8));
  }

  else
  {
    v7 = *a3;
    *(a1 + 48) = *(a3 + 16);
    *(a1 + 32) = v7;
  }

  return a1;
}

void YAML::Exception::build_what(_DWORD *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*a1 == -1 && a1[1] == -1 && a1[2] == -1)
  {
    if (*(a2 + 23) < 0)
    {
      v16 = *a2;
      v17 = *(a2 + 8);

      std::string::__init_copy_ctor_external(a3, v16, v17);
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "yaml-cpp: error at line ", 24);
    v8 = MEMORY[0x259C29BC0](v7, (a1[1] + 1));
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", column ", 9);
    v10 = MEMORY[0x259C29BC0](v9, (a1[2] + 1));
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    std::stringbuf::str();
    v18[0] = *MEMORY[0x277D82818];
    v15 = *(MEMORY[0x277D82818] + 72);
    *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v19 = v15;
    v20 = MEMORY[0x277D82878] + 16;
    if (v22 < 0)
    {
      operator delete(v21[7].__locale_);
    }

    v20 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v21);
    std::iostream::~basic_iostream();
    MEMORY[0x259C29CE0](&v23);
  }
}

void sub_254C98AC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t YAML::Node::EnsureNodeExists(uint64_t this)
{
  v1 = this;
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v3 = v1;
    v4 = exception;
    if (*(v3 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v5, *(v3 + 8), *(v3 + 16));
    }

    else
    {
      v5 = *(v3 + 8);
    }

    YAML::InvalidNode::InvalidNode(v4, &v5);
  }

  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

void YAML::detail::node::set_ref(std::__shared_weak_count **this, std::__shared_weak_count **a2)
{
  v4 = *a2;
  if (LOBYTE((*a2)->~__shared_weak_count) == 1)
  {
    YAML::detail::node::mark_defined(this);
    v4 = *a2;
  }

  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = this[1];
  *this = v4;
  this[1] = v5;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254C98DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<YAML::detail::memory_holder>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<YAML::detail::memory_holder *,std::shared_ptr<YAML::detail::memory_holder>::__shared_ptr_default_delete<YAML::detail::memory_holder,YAML::detail::memory_holder>,std::allocator<YAML::detail::memory_holder>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

uint64_t std::__shared_ptr_pointer<YAML::detail::memory_holder *,std::shared_ptr<YAML::detail::memory_holder>::__shared_ptr_default_delete<YAML::detail::memory_holder,YAML::detail::memory_holder>,std::allocator<YAML::detail::memory_holder>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<YAML::detail::memory_holder>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x259C29D90);
  }
}

void std::shared_ptr<YAML::detail::memory>::shared_ptr[abi:ne200100]<YAML::detail::memory,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_254C98F1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<YAML::detail::memory>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<YAML::detail::memory>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<std::shared_ptr<YAML::detail::node>>::destroy(v2, *(v2 + 8));
    MEMORY[0x259C29D90](v2, 0x1020C4062D53EE8);
  }

  return a1;
}

void std::__shared_ptr_pointer<YAML::detail::memory *,std::shared_ptr<YAML::detail::memory>::__shared_ptr_default_delete<YAML::detail::memory,YAML::detail::memory>,std::allocator<YAML::detail::memory>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

uint64_t std::__shared_ptr_pointer<YAML::detail::memory *,std::shared_ptr<YAML::detail::memory>::__shared_ptr_default_delete<YAML::detail::memory,YAML::detail::memory>,std::allocator<YAML::detail::memory>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<YAML::detail::memory>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::shared_ptr<YAML::detail::node>>::destroy(a2, *(a2 + 8));

    JUMPOUT(0x259C29D90);
  }
}

void std::__tree<std::shared_ptr<YAML::detail::node>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::shared_ptr<YAML::detail::node>>::destroy(a1, *a2);
    std::__tree<std::shared_ptr<YAML::detail::node>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void YAML::detail::node::mark_defined(YAML::detail::node *this)
{
  v1 = **this;
  if ((*v1 & 1) == 0)
  {
    if (!*(v1 + 16))
    {
      *(v1 + 16) = 1;
    }

    *v1 = 1;
    v3 = *(this + 2);
    v4 = this + 24;
    if (v3 != this + 24)
    {
      do
      {
        YAML::detail::node::mark_defined(*(v3 + 4));
        v5 = *(v3 + 1);
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = *(v3 + 2);
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
      }

      while (v6 != v4);
    }

    std::__tree<std::__value_type<YAML::detail::node_ref const*,int>,std::__map_value_compare<YAML::detail::node_ref const*,std::__value_type<YAML::detail::node_ref const*,int>,std::less<YAML::detail::node_ref const*>,true>,std::allocator<std::__value_type<YAML::detail::node_ref const*,int>>>::destroy(this + 16, *(this + 3));
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 2) = v4;
  }
}

void YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 2)
  {
    v5 = *(a1 + 16);
    v7 = *v5;
    v6 = v5[1];
    if (v7)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = v9;
      v24 = v4;
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v19[0] = 1;
      v25 = v7;
      if (v10)
      {
        v11 = 0;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        __p = 0;
        v14 = 0;
        v15 = 0;
        v16 = v9;
        v17 = v10;
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_19:
        v12[0] = 1;
        v18 = v6;
        YAML::detail::iterator_value::iterator_value(a2, v19, v12);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p);
        }

        if ((v11 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = v9;
      v19[0] = 1;
      v24 = 0;
      v25 = v7;
    }

    v10 = 0;
    __p = 0;
    v14 = 0;
    v15 = 0;
    v16 = v9;
    v11 = 1;
    v17 = 0;
    goto LABEL_19;
  }

  if (*a1 != 1 || (v2 = **(a1 + 8)) == 0)
  {
LABEL_11:
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 1;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 0u;
    return;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v3;
    v24 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v3;
    v24 = 0;
  }

  v19[0] = 1;
  v25 = v2;
  YAML::detail::iterator_value::iterator_value(a2, v19);
LABEL_25:
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_254C99350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v19 = v18;
  YAML::Node::~Node(&a9);
  if ((v19 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  YAML::Node::~Node(&a16);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

uint64_t YAML::Node::Mark(YAML::Node *this)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, *(this + 1), *(this + 2));
    }

    else
    {
      v7 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v7);
  }

  v2 = *(this + 6);
  if (!v2)
  {
    return -1;
  }

  v3 = **v2;
  result = *(v3 + 4);
  v5 = *(v3 + 12);
  return result;
}

void YAML::detail::iterator_value::~iterator_value(YAML::detail::iterator_value *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void YAML::Node::operator[]<char [14]>(YAML::Node *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 1), *(this + 2));
    }

    else
    {
      v18 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v18);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *(this + 5);
  v14 = *(this + 4);
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = 0;
        *(a3 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  streamable_to_string<char [14],true>::impl(a2);
  *a3 = 0;
  v11 = (a3 + 8);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v17);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    *(a3 + 24) = v17;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_254C996C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::Node::operator[]<char [6]>(YAML::Node *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *(this + 1), *(this + 2));
    }

    else
    {
      v18 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v18);
  }

  YAML::Node::EnsureNodeExists(this);
  v6 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = *(this + 5);
  v14 = *(this + 4);
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = YAML::detail::node::get<std::string>(v6, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_8:
      v10 = *(this + 4);
      v9 = *(this + 5);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a3 + 48) = v8;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v10;
        *(a3 + 40) = 0;
        *(a3 + 48) = v8;
      }

      return;
    }
  }

  else if (v8)
  {
    goto LABEL_8;
  }

  streamable_to_string<char [6],true>::impl(a2);
  *a3 = 0;
  v11 = (a3 + 8);
  if (SHIBYTE(v17) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
    v12 = SHIBYTE(v17);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    *(a3 + 24) = v17;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
  }
}

void sub_254C998DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::ValidateFlowTest_Test(siri::intelligence *this, const YAML::Node *a2, siri::intelligence::ValidationResults *a3)
{
  v3 = this;
  v88 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280AF4020, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4020))
  {
    std::string::basic_string[abi:ne200100]<0>(v75, "name");
    std::string::basic_string[abi:ne200100]<0>(&v75[24], "description");
    std::string::basic_string[abi:ne200100]<0>(&v77, "enabled");
    std::string::basic_string[abi:ne200100]<0>(&v79 + 8, "steps");
    std::string::basic_string[abi:ne200100]<0>(v81, "repeat");
    std::set<std::string>::set[abi:ne200100](&qword_280AF4070, v75, 5);
    for (i = 0; i != -15; i -= 3)
    {
      if (*(&v83 + i * 8) < 0)
      {
        operator delete(v81[i]);
      }
    }

    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &qword_280AF4070, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4020);
    v3 = this;
  }

  if ((*v3 & 1) != 0 && (v4 = *(v3 + 6)) != 0)
  {
    YAML::detail::node_data::begin(**v4, v75);
    v6 = *(this + 4);
    v5 = *(this + 5);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *v70 = *v75;
      *&v70[16] = *&v75[16];
      *&v70[32] = v6;
      v71 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      *v70 = *v75;
      *&v70[16] = *&v75[16];
      *&v70[32] = v6;
      v71 = 0;
    }
  }

  else
  {
    *v70 = 0;
    memset(&v70[8], 0, 32);
    v71 = 0;
  }

  if (*this == 1 && (v7 = *(this + 6)) != 0)
  {
    YAML::detail::node_data::end(**v7, v75);
    v8 = *(this + 5);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v75;
      v10 = *&v75[8];
      v65 = *&v75[16];
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v64 = v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v64 = 0;
      v9 = *v75;
      v10 = *&v75[8];
      v65 = *&v75[16];
    }
  }

  else
  {
    v64 = 0;
    v9 = 0;
    v65 = 0;
    v10 = 0;
  }

  while (1)
  {
    if (*v70 == v9)
    {
      v11 = v10;
      v12 = &v70[8];
      if (v9 != 1)
      {
        if (v9 != 2)
        {
          break;
        }

        v11 = v65;
        v12 = &v70[16];
      }

      if (*v12 == v11)
      {
        break;
      }
    }

    YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v70, v75);
    if ((v78 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      if (SHIBYTE(v80) < 0)
      {
        std::string::__init_copy_ctor_external(v68, v79, *(&v79 + 1));
      }

      else
      {
        *v68 = v79;
        *&v68[16] = v80;
      }

      YAML::InvalidNode::InvalidNode(exception, v68);
    }

    *v68 = &v78;
    YAML::as_if<std::string,void>::operator()(v68, &__p);
    v13 = std::__tree<std::string>::find<std::string>(&qword_280AF4070, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v13 == &unk_280AF4078)
    {
      if ((v78 & 1) == 0)
      {
        v51 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v80) < 0)
        {
          std::string::__init_copy_ctor_external(v68, v79, *(&v79 + 1));
        }

        else
        {
          *v68 = v79;
          *&v68[16] = v80;
        }

        YAML::InvalidNode::InvalidNode(v51, v68);
      }

      *v68 = &v78;
      YAML::as_if<std::string,void>::operator()(v68, &v73);
      v14 = std::string::insert(&v73, 0, "Unsupported field for Test found in flow file: ");
      __p = *v14;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if ((v82 & 1) == 0)
      {
        v50 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v85) < 0)
        {
          std::string::__init_copy_ctor_external(v68, v84, *(&v84 + 1));
        }

        else
        {
          *v68 = v84;
          *&v68[16] = v85;
        }

        YAML::InvalidNode::InvalidNode(v50, v68);
      }

      if (v87)
      {
        v15 = *(**v87 + 8);
      }

      else
      {
        v15 = -1;
      }

      siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, &__p, v15);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }
    }

    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v86);
    }

    if (SHIBYTE(v85) < 0)
    {
      operator delete(v84);
    }

    if (v81[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v81[0]);
    }

    if (SHIBYTE(v80) < 0)
    {
      operator delete(v79);
    }

    if (v76)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v76);
    }

    if ((v75[31] & 0x80000000) != 0)
    {
      operator delete(*&v75[8]);
    }

    YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v70);
  }

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  YAML::Node::operator[]<char [5]>(this, "name", v75);
  v16 = v75[0] != 1 || v77 && (***v77 & 1) == 0;
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
    if (v16)
    {
      goto LABEL_81;
    }
  }

  else if (v16)
  {
    goto LABEL_81;
  }

  YAML::Node::operator[]<char [5]>(this, "name", v75);
  if ((v75[0] & 1) == 0)
  {
    v53 = __cxa_allocate_exception(0x38uLL);
    if ((v75[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v70, *&v75[8], *&v75[16]);
    }

    else
    {
      *v70 = *&v75[8];
      *&v70[16] = *&v75[24];
    }

    YAML::InvalidNode::InvalidNode(v53, v70);
  }

  v18 = v77 && (v17 = **v77, *v17 == 1) && *(v17 + 16) == 2;
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
    if (v18)
    {
      goto LABEL_81;
    }
  }

  else if (v18)
  {
    goto LABEL_81;
  }

  std::string::basic_string[abi:ne200100]<0>(v68, "Invalid string value found for 'name' on Test");
  YAML::Node::operator[]<char [5]>(this, "name", v75);
  if ((v75[0] & 1) == 0)
  {
    v58 = __cxa_allocate_exception(0x38uLL);
    if ((v75[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v70, *&v75[8], *&v75[16]);
    }

    else
    {
      *v70 = *&v75[8];
      *&v70[16] = *&v75[24];
    }

    YAML::InvalidNode::InvalidNode(v58, v70);
  }

  if (v77)
  {
    v19 = *(**v77 + 8) + 1;
  }

  else
  {
    v19 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, v68, v19);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
  }

  if ((v68[23] & 0x80000000) != 0)
  {
    operator delete(*v68);
  }

LABEL_81:
  YAML::Node::operator[]<char [12]>(this, "description", v75);
  v20 = v75[0] != 1 || v77 && (***v77 & 1) == 0;
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
    if (v20)
    {
      goto LABEL_113;
    }
  }

  else if (v20)
  {
    goto LABEL_113;
  }

  YAML::Node::operator[]<char [12]>(this, "description", v75);
  if ((v75[0] & 1) == 0)
  {
    v54 = __cxa_allocate_exception(0x38uLL);
    if ((v75[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v70, *&v75[8], *&v75[16]);
    }

    else
    {
      *v70 = *&v75[8];
      *&v70[16] = *&v75[24];
    }

    YAML::InvalidNode::InvalidNode(v54, v70);
  }

  v22 = v77 && (v21 = **v77, *v21 == 1) && *(v21 + 16) == 2;
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
    if (v22)
    {
      goto LABEL_113;
    }
  }

  else if (v22)
  {
    goto LABEL_113;
  }

  std::string::basic_string[abi:ne200100]<0>(v68, "Invalid string value found for 'description' on Test");
  YAML::Node::operator[]<char [12]>(this, "description", v75);
  if ((v75[0] & 1) == 0)
  {
    v59 = __cxa_allocate_exception(0x38uLL);
    if ((v75[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v70, *&v75[8], *&v75[16]);
    }

    else
    {
      *v70 = *&v75[8];
      *&v70[16] = *&v75[24];
    }

    YAML::InvalidNode::InvalidNode(v59, v70);
  }

  if (v77)
  {
    v23 = *(**v77 + 8) + 1;
  }

  else
  {
    v23 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, v68, v23);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
  }

  if ((v68[23] & 0x80000000) != 0)
  {
    operator delete(*v68);
  }

LABEL_113:
  YAML::Node::operator[]<char [8]>(this, "enabled", v75);
  v24 = v75[0] != 1 || v77 && (***v77 & 1) == 0;
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
    if (v24)
    {
      goto LABEL_152;
    }
  }

  else if (v24)
  {
    goto LABEL_152;
  }

  YAML::Node::operator[]<char [8]>(this, "enabled", v75);
  if ((v75[0] & 1) == 0)
  {
    v55 = __cxa_allocate_exception(0x38uLL);
    if ((v75[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v70, *&v75[8], *&v75[16]);
    }

    else
    {
      *v70 = *&v75[8];
      *&v70[16] = *&v75[24];
    }

    YAML::InvalidNode::InvalidNode(v55, v70);
  }

  if (v77 && (v25 = **v77, (*v25 & 1) != 0) && *(v25 + 16) == 2)
  {
    YAML::Node::operator[]<char [8]>(this, "enabled", v70);
    if ((v70[0] & 1) == 0)
    {
      v62 = __cxa_allocate_exception(0x38uLL);
      if ((v70[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v68, *&v70[8], *&v70[16]);
      }

      else
      {
        *v68 = *&v70[8];
        *&v68[16] = *&v70[24];
      }

      YAML::InvalidNode::InvalidNode(v62, v68);
    }

    *v68 = v70;
    YAML::as_if<std::string,void>::operator()(v68, &__p);
    IsBool = siri::intelligence::StringIsBool(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }

    v27 = !IsBool;
    if ((v70[31] & 0x80000000) != 0)
    {
      operator delete(*&v70[8]);
    }
  }

  else
  {
    v27 = 1;
  }

  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
    if (!v27)
    {
      goto LABEL_152;
    }
  }

  else if (!v27)
  {
    goto LABEL_152;
  }

  std::string::basic_string[abi:ne200100]<0>(v68, "Invalid BOOL value found for 'enabled' on Test");
  YAML::Node::operator[]<char [8]>(this, "enabled", v75);
  if ((v75[0] & 1) == 0)
  {
    v60 = __cxa_allocate_exception(0x38uLL);
    if ((v75[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v70, *&v75[8], *&v75[16]);
    }

    else
    {
      *v70 = *&v75[8];
      *&v70[16] = *&v75[24];
    }

    YAML::InvalidNode::InvalidNode(v60, v70);
  }

  if (v77)
  {
    v28 = *(**v77 + 8) + 1;
  }

  else
  {
    v28 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, v68, v28);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
  }

  if ((v68[23] & 0x80000000) != 0)
  {
    operator delete(*v68);
  }

LABEL_152:
  YAML::Node::operator[]<char [6]>(this, "steps", v75);
  v29 = v75[0] != 1 || v77 && (***v77 & 1) == 0;
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
    if (v29)
    {
      goto LABEL_214;
    }
  }

  else if (v29)
  {
    goto LABEL_214;
  }

  YAML::Node::operator[]<char [6]>(this, "steps", v75);
  if ((v75[0] & 1) == 0)
  {
    v56 = __cxa_allocate_exception(0x38uLL);
    if ((v75[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v70, *&v75[8], *&v75[16]);
    }

    else
    {
      *v70 = *&v75[8];
      *&v70[16] = *&v75[24];
    }

    YAML::InvalidNode::InvalidNode(v56, v70);
  }

  v31 = v77 && (v30 = **v77, *v30 == 1) && *(v30 + 16) == 3;
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
    if (v31)
    {
LABEL_172:
      YAML::Node::operator[]<char [6]>(this, "steps", v70);
      if ((v70[0] & 1) != 0 && v72)
      {
        YAML::detail::node_data::begin(**v72, v75);
        v33 = *&v70[32];
        v32 = v71;
        if (v71)
        {
          atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          *v68 = *v75;
          *&v68[16] = *&v75[16];
          *&v68[32] = v33;
          v69 = v32;
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        else
        {
          *v68 = *v75;
          *&v68[16] = *&v75[16];
          *&v68[32] = *&v70[32];
          v69 = 0;
        }
      }

      else
      {
        *v68 = 0;
        memset(&v68[8], 0, 32);
        v69 = 0;
      }

      if (v70[0] == 1 && v72)
      {
        YAML::detail::node_data::end(**v72, v75);
        v36 = v71;
        if (v71)
        {
          atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          v37 = *v75;
          v38 = *&v75[8];
          v39 = *&v75[16];
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        else
        {
          v37 = *v75;
          v38 = *&v75[8];
          v39 = *&v75[16];
        }
      }

      else
      {
        v38 = 0;
        v39 = 0;
        v36 = 0;
        v37 = 0;
      }

      while (1)
      {
        if (*v68 == v37)
        {
          v40 = v38;
          v41 = &v68[8];
          if (v37 != 1)
          {
            if (v37 != 2)
            {
              break;
            }

            v40 = v39;
            v41 = &v68[16];
          }

          if (*v41 == v40)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v68, v75);
        siri::intelligence::ValidateFlowTest_Step(v75, a2, v42);
        if (v86)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }

        if (SHIBYTE(v85) < 0)
        {
          operator delete(v84);
        }

        if (v81[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v81[0]);
        }

        if (SHIBYTE(v80) < 0)
        {
          operator delete(v79);
        }

        if (v76)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v76);
        }

        if ((v75[31] & 0x80000000) != 0)
        {
          operator delete(*&v75[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v68);
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v69);
      }

      if (v71)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v71);
      }

      if ((v70[31] & 0x80000000) != 0)
      {
        v35 = *&v70[8];
        goto LABEL_213;
      }

      goto LABEL_214;
    }
  }

  else if (v31)
  {
    goto LABEL_172;
  }

  YAML::Node::operator[]<char [6]>(this, "steps", v75);
  siri::intelligence::ValidateFlowTest_Step(v75, a2, v34);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    v35 = *&v75[8];
LABEL_213:
    operator delete(v35);
  }

LABEL_214:
  YAML::Node::operator[]<char [7]>(this, "repeat", v75);
  v43 = v75[0] != 1 || v77 && (***v77 & 1) == 0;
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
    if (v43)
    {
      goto LABEL_253;
    }
  }

  else if (v43)
  {
    goto LABEL_253;
  }

  YAML::Node::operator[]<char [7]>(this, "repeat", v75);
  if ((v75[0] & 1) == 0)
  {
    v57 = __cxa_allocate_exception(0x38uLL);
    if ((v75[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v70, *&v75[8], *&v75[16]);
    }

    else
    {
      *v70 = *&v75[8];
      *&v70[16] = *&v75[24];
    }

    YAML::InvalidNode::InvalidNode(v57, v70);
  }

  if (v77 && (v44 = **v77, (*v44 & 1) != 0) && *(v44 + 16) == 2)
  {
    YAML::Node::operator[]<char [7]>(this, "repeat", v70);
    if ((v70[0] & 1) == 0)
    {
      v63 = __cxa_allocate_exception(0x38uLL);
      if ((v70[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v68, *&v70[8], *&v70[16]);
      }

      else
      {
        *v68 = *&v70[8];
        *&v68[16] = *&v70[24];
      }

      YAML::InvalidNode::InvalidNode(v63, v68);
    }

    *v68 = v70;
    YAML::as_if<std::string,void>::operator()(v68, &__p);
    IsANumber = siri::intelligence::StringIsANumber(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }

    v46 = IsANumber ^ 1;
    if ((v70[31] & 0x80000000) != 0)
    {
      operator delete(*&v70[8]);
    }
  }

  else
  {
    v46 = 1;
  }

  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
    if (!v46)
    {
      goto LABEL_253;
    }
  }

  else if (!v46)
  {
    goto LABEL_253;
  }

  std::string::basic_string[abi:ne200100]<0>(v68, "Invalid int32 value found for 'repeat' on Test");
  YAML::Node::operator[]<char [7]>(this, "repeat", v75);
  if ((v75[0] & 1) == 0)
  {
    v61 = __cxa_allocate_exception(0x38uLL);
    if ((v75[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v70, *&v75[8], *&v75[16]);
    }

    else
    {
      *v70 = *&v75[8];
      *&v70[16] = *&v75[24];
    }

    YAML::InvalidNode::InvalidNode(v61, v70);
  }

  if (v77)
  {
    v47 = *(**v77 + 8) + 1;
  }

  else
  {
    v47 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, &siri::intelligence::CODE_YAML_PARSE, v68, v47);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  if ((v75[31] & 0x80000000) != 0)
  {
    operator delete(*&v75[8]);
  }

  if ((v68[23] & 0x80000000) != 0)
  {
    operator delete(*v68);
  }

LABEL_253:
  v48 = *MEMORY[0x277D85DE8];
}

void sub_254C9AD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46)
{
  v48 = (v46 + 119);
  v49 = -120;
  v50 = v48;
  while (1)
  {
    v51 = *v50;
    v50 -= 24;
    if (v51 < 0)
    {
      operator delete(*(v48 - 23));
    }

    v48 = v50;
    v49 += 24;
    if (!v49)
    {
      __cxa_guard_abort(&qword_280AF4020);
      _Unwind_Resume(a1);
    }
  }
}

void *std::set<std::string>::set[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(a1, v4, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

uint64_t std::__tree<std::string>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::string>::__find_equal<std::string>(a1, a3, a5);
}

void sub_254C9B374(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::string>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}