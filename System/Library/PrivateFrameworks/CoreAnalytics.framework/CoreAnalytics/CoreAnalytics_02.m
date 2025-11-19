void FrameworkConfiguration::init(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_1AE55E000, a2, OS_LOG_TYPE_FAULT, "[FrameworkConfiguration] Received configuration update from daemon but was not usable (invalid magic number) %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void FrameworkConfiguration::init(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = -258926936;
  _os_log_fault_impl(&dword_1AE55E000, log, OS_LOG_TYPE_FAULT, "[FrameworkConfiguration] Received configuration update from daemon but was not usable (invalid version) %u", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0;
  _os_log_error_impl(&dword_1AE55E000, log, OS_LOG_TYPE_ERROR, "[FrameworkConfiguration] Received configuration update from daemon but was not usable (not deserializable)", v2, 2u);
  v1 = *MEMORY[0x1E69E9840];
}

void FrameworkConfiguration::init(int a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_fault_impl(&dword_1AE55E000, log, OS_LOG_TYPE_FAULT, "[FrameworkConfiguration] Received configuration update from daemon but was not usable (fw end offset [%u] > mmap size [%zu])", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void FrameworkConfiguration::getExternalConfiguration(void *a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2 - *a1;
  v5 = 134217984;
  v6 = v3;
  _os_log_debug_impl(&dword_1AE55E000, log, OS_LOG_TYPE_DEBUG, "[FrameworkConfiguration] External configs: present but not parsed (size=%zd)", &v5, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

void FrameworkConfiguration::getExternalConfiguration(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0;
  _os_log_debug_impl(&dword_1AE55E000, log, OS_LOG_TYPE_DEBUG, "[FrameworkConfiguration] External configs: null", v2, 2u);
  v1 = *MEMORY[0x1E69E9840];
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_string()
{
  __assert_rtn("scan_string", "lexer.hpp", 250, "current == '\\'");
}

{
  __assert_rtn("scan_string", "lexer.hpp", 370, "0x00 <= codepoint and codepoint <= 0x10FFFF");
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_string(unsigned int a1, std::string *this, _BYTE *a3)
{
  std::string::push_back(this, (a1 >> 18) | 0xF0);
  std::string::push_back(this, (a1 >> 12) & 0x3F | 0x80);
  std::string::push_back(this, (a1 >> 6) & 0x3F | 0x80);
  *a3 = a1 & 0x3F | 0x80;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number(std::string *a1, std::string::value_type *a2, std::string *this)
{
  std::string::push_back(this, *a2);
  result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
  if ((result - 48) <= 9)
  {
    do
    {
      std::string::push_back(a1 + 3, *a2);
      result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    }

    while ((result - 48) < 0xA);
  }

  return result;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number()
{
  __assert_rtn("scan_number", "lexer.hpp", 1191, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "lexer.hpp", 1175, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "lexer.hpp", 1208, "endptr == token_buffer.data() + token_buffer.size()");
}

{
  __assert_rtn("scan_number", "lexer.hpp", 928, "false");
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_codepoint(unsigned __int8 **a1, int *a2, unsigned int *a3)
{
  v6 = 0;
  v7 = 0;
  v14 = *MEMORY[0x1E69E9840];
  v13 = xmmword_1AE588280;
  do
  {
    v8 = *(&v13 + v7);
    result = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    v10 = *a2;
    v11 = *a2 - 48;
    if (v11 > 9)
    {
      if ((v10 - 65) > 5)
      {
        if ((v10 - 97) > 5)
        {
          v6 = -1;
          goto LABEL_9;
        }

        v11 = v10 - 87;
      }

      else
      {
        v11 = v10 - 55;
      }
    }

    v6 += v11 << v8;
    v7 += 4;
  }

  while (v7 != 16);
  if (v6 >= 0x10000)
  {
    __assert_rtn("get_codepoint", "lexer.hpp", 188, "0x0000 <= codepoint and codepoint <= 0xFFFF");
  }

LABEL_9:
  *a3 = v6;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(_DWORD *a1, uint64_t a2, std::string *a3, uint64_t a4, char *a5)
{
  std::string::push_back(a3 + 3, a3->__r_.__value_.__s.__data_[16]);
  v9 = &a1[a4];
  while (1)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a3);
    v10 = a3->__r_.__value_.__r.__words[2];
    if (*a1 > v10 || v10 > a1[1])
    {
      break;
    }

    std::string::push_back(a3 + 3, v10);
    a1 += 2;
    if (a1 == v9)
    {
      v11 = 1;
      goto LABEL_6;
    }
  }

  v11 = 0;
  a3[4].__r_.__value_.__r.__words[0] = "invalid string: ill-formed UTF-8 byte";
LABEL_6:
  *a5 = v11;
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_object()
{
  __assert_rtn("end_object", "json_sax.hpp", 451, "not keep_stack.empty()");
}

{
  __assert_rtn("end_object", "json_sax.hpp", 450, "not ref_stack.empty()");
}

void nlohmann::detail::json_sax_dom_callback_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::end_array()
{
  __assert_rtn("end_array", "json_sax.hpp", 503, "not keep_stack.empty()");
}

{
  __assert_rtn("end_array", "json_sax.hpp", 502, "not ref_stack.empty()");
}

void nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::operator->()
{
  __assert_rtn("operator->", "iter_impl.hpp", 291, "m_it.array_iterator != m_object->m_value.array->end()");
}

{
  __assert_rtn("operator->", "iter_impl.hpp", 285, "m_it.object_iterator != m_object->m_value.object->end()");
}

{
  __assert_rtn("operator->", "iter_impl.hpp", 279, "m_object != nullptr");
}

void nlohmann::detail::json_sax_dom_parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::handle_value<nlohmann::detail::value_t>()
{
  __assert_rtn("handle_value", "json_sax.hpp", 321, "object_element");
}

{
  __assert_rtn("handle_value", "json_sax.hpp", 312, "ref_stack.back()->is_array() or ref_stack.back()->is_object()");
}

void analytics_rollover_with_options_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE55E000, v1, v2, "Rollover failed with error: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void AnalyticsRolloverWithOptions_cold_1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1AE55E000, log, OS_LOG_TYPE_ERROR, "Error: Failed to perform rollover due to %{public}@ (%{public}@)", buf, 0x16u);
}

void analytics_disable_all_transform_sampling_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE55E000, v1, v2, "Failed to disable sampling with error: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void analytics_reenable_all_transform_sampling_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE55E000, v1, v2, "Failed to reenable sampling with error: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void analytics_notify_tasking_available_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE55E000, v1, v2, "Failed to reconfigure new tasking with error: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void CoreAnalytics::Client::initConnection(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = a1;
  v5 = 2080;
  v6 = xpc_strerror();
  _os_log_error_impl(&dword_1AE55E000, a2, OS_LOG_TYPE_ERROR, "xpc_user_sessions_get_foreground_uid() failed with error %d - %s", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void CoreAnalytics::Client::initConnection()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE55E000, v1, v2, "Error connecting to analyticsd. analyticsd is not supported in NeRD", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void CoreAnalytics::Client::updateDaemonState()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void CoreAnalytics::Client::sendCheckinMessage_sync(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 60);
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void CoreAnalytics::Client::retryXpcMessageHelper_sync(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_4(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  _os_log_error_impl(&dword_1AE55E000, v4, OS_LOG_TYPE_ERROR, "Used all retries. Discarding message: %s.", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void ___ZN13CoreAnalytics6Client26retryXpcMessageHelper_syncEN10applesauce3xpc4dictE18XPCMessagePrioritybhy_block_invoke_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE55E000, v1, v2, "XPC message reply connection interrupted (daemon probably exited)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void CoreAnalytics::Client::handleServerMessage_sync(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_4(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  _os_log_fault_impl(&dword_1AE55E000, v4, OS_LOG_TYPE_FAULT, "#Error: Received unknown event from daemon: %s", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void CoreAnalytics::Client::handleConfigurationChange_sync()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE55E000, v1, v2, "#Error: Received configuration update from daemon but was not usable.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE55E000, v1, v2, "#Error: Received configuration update from daemon but no config size specified.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE55E000, v1, v2, "#Error: Received configuration update from daemon but no config.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void CoreAnalytics::Client::handleSinkMessageEmit_sync(void *a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  __cxa_begin_catch(a1);
  *a3 = 0;
  *a4 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
  __cxa_end_catch();
}

void CoreAnalytics::Client::handleSinkMessageEmit_sync()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE55E000, v1, v2, "#Error: Received message emit from daemon but was not parsable.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_1AE55E000, v1, v2, "#Error: Received message emit from daemon but no message.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void ___ZZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjENK3__0clEv_block_invoke_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void ___ZZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjENK3__0clEv_block_invoke_286_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void ___ZN10applesauce8dispatch2v19sync_implIZN13CoreAnalytics6Client30sendExitBarrierWithTimeoutSyncEjE3__1EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_fault_impl(&dword_1AE55E000, a2, OS_LOG_TYPE_FAULT, "Timed out waiting for the exit barrier block. activeSendTransactions=%d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void try_xpc_to_json(void *a1, uint64_t a2)
{
  __cxa_begin_catch(a1);
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);

  __cxa_end_catch();
}

uint64_t applesauce::xpc::dyn_cast_or_default()
{
  return MEMORY[0x1EEDEE348]();
}

{
  return MEMORY[0x1EEDEE350]();
}

{
  return MEMORY[0x1EEDEE368]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}