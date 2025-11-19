void sub_24214B2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void AOPMatchedCallback(void *a1, io_iterator_t iterator)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = IOIteratorNext(iterator);
  if (v4)
  {
    v6 = v4;
    *&v5 = 136315394;
    v11 = v5;
    v7 = MEMORY[0x277D85F48];
    do
    {
      connect = 0;
      v8 = _BRLog_log_0;
      if (!_BRLog_log_0)
      {
        v8 = os_log_create("com.apple.ButtonResolver", "default");
        _BRLog_log_0 = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = v11;
        v14 = "void AOPMatchedCallback(void *, io_iterator_t)";
        v15 = 1024;
        v16 = v6;
        _os_log_debug_impl(&dword_242149000, v8, OS_LOG_TYPE_DEBUG, "%s AOP service added: %u", buf, 0x12u);
      }

      if ([a1 service])
      {
        v9 = _BRLog_log_0;
        if (!_BRLog_log_0)
        {
          v9 = os_log_create("com.apple.ButtonResolver", "default");
          _BRLog_log_0 = v9;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = v11;
          v14 = "void AOPMatchedCallback(void *, io_iterator_t)";
          v15 = 1024;
          v16 = v6;
          _os_log_error_impl(&dword_242149000, v9, OS_LOG_TYPE_ERROR, "%s Warning: unexpected second AOP Service: %u", buf, 0x12u);
        }

        IOObjectRelease(v6);
      }

      else
      {
        [a1 setService:v6];
        if ([a1 fastHaptics])
        {
          if (IOServiceOpen(v6, *v7, 0, &connect))
          {
            AOPMatchedCallback_cold_1();
            goto LABEL_18;
          }

          [a1 setConnect:connect];
        }
      }

      v6 = IOIteratorNext(iterator);
    }

    while (v6);
  }

  [a1 updateReadyState];
LABEL_18:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return [v27 countByEnumeratingWithState:&a27 objects:v28 - 224 count:16];
}

uint64_t OUTLINED_FUNCTION_7()
{

  return [v0 countByEnumeratingWithState:&STACK[0x250] objects:v1 - 232 count:16];
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [v67 countByEnumeratingWithState:&a67 objects:&STACK[0x558] count:16];
}

uint64_t OUTLINED_FUNCTION_9()
{
  v3 = *(v0 + 2992);

  return [v3 numberWithUnsignedInteger:v1];
}

uint64_t serviceAddedCallback(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = _BRLog_log_1;
  if (!_BRLog_log_1)
  {
    v5 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_1 = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    serviceAddedCallback_cold_1();
  }

  return [a2 serviceAddedHandler:a3];
}

uint64_t serviceRemovedCallback(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = _BRLog_log_1;
  if (!_BRLog_log_1)
  {
    v5 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_1 = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    serviceRemovedCallback_cold_1();
  }

  return [a2 serviceRemovedHandler:a3];
}

void sub_24214E89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

uint64_t serviceAddedCallback_0(int a1, void *a2, IOHIDServiceClientRef service)
{
  IOHIDServiceClientGetRegistryID(service);
  v5 = _BRLog_log_2;
  if (!_BRLog_log_2)
  {
    v5 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_2 = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    serviceAddedCallback_cold_1_0();
  }

  [objc_msgSend(a2 "services")];
  IOHIDServiceClientRegisterRemovalCallback();
  return [a2 _setCachedPropertiesOnService:service];
}

void sub_2421504DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void serviceRemovedCallback_0(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a2 services];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      if (CFEqual(v10, a3))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }

    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = _BRLog_log_2;
    if (!_BRLog_log_2)
    {
      v11 = os_log_create("com.apple.ButtonResolver", "default");
      _BRLog_log_2 = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(BRInterfaceLegacy *)v10 serviceRemovedHandler:v11];
    }

    [objc_msgSend(a2 "services")];
  }

  else
  {
LABEL_16:
    v12 = _BRLog_log_2;
    if (!_BRLog_log_2)
    {
      v12 = os_log_create("com.apple.ButtonResolver", "default");
      _BRLog_log_2 = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BRInterfaceLegacy *)a3 serviceRemovedHandler:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void AOPMatchedCallback_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v0 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v0;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void serviceAddedCallback_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_242149000, v0, v1, "%s Legacy service added: %p", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void serviceRemovedCallback_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_242149000, v0, v1, "%s Legacy service removed: %p", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void serviceAddedCallback_cold_1_0()
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  v4 = v0;
  _os_log_debug_impl(&dword_242149000, v1, OS_LOG_TYPE_DEBUG, "%s Keyboard service added: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}