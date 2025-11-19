uint64_t IOCECInterfaceListenerGetTypeID()
{
  result = __kIOCECInterfaceListenerTypeID;
  if (!__kIOCECInterfaceListenerTypeID)
  {
    pthread_once(&__IOCECInterfaceListenerTypeInit, __IOCECInterfaceListenerRegister);
    return __kIOCECInterfaceListenerTypeID;
  }

  return result;
}

uint64_t __IOCECInterfaceListenerRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOCECInterfaceListenerTypeID = result;
  return result;
}

uint64_t IOCECInterfaceListenerRegisterAddInterfaceCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t __IOCECInterfaceListenerPublishNotification(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = CFGetAllocator(a1);
      v7 = IOCECInterfaceCreateWithService(v6, v5);
      if (v7)
      {
        v8 = v7;
        v9 = a1[2];
        if (v9)
        {
          v9(a1, v7, a1[3]);
        }

        CFRelease(v8);
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void __IOCECInterfaceListenerFree(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    IOObjectRelease(v2);
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    IONotificationPortDestroy(v3);
  }
}

uint64_t IOCECInterfaceGetTypeID()
{
  result = __kIOCECInterfaceTypeID;
  if (!__kIOCECInterfaceTypeID)
  {
    pthread_once(&__IOCECInterfaceTypeInit, __IOCECInterfaceRegister);
    return __kIOCECInterfaceTypeID;
  }

  return result;
}

uint64_t __IOCECInterfaceRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOCECInterfaceTypeID = result;
  return result;
}

uint64_t __IOCECInterfaceGeneralInterestNotification(uint64_t result, uint64_t a2, int a3)
{
  if (result && a3 == -536870896)
  {
    v3 = *(result + 88);
    if (v3)
    {
      return v3(result, *(result + 96));
    }
  }

  return result;
}

uint64_t IOCECInterfaceOpenReceiveQueue(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  input[1] = a3;
  v4 = IOConnectCallMethod(*(a1 + 20), 2u, input, 2u, 0, 0, 0, 0, 0, 0);
  if (v4 || (v4 = MEMORY[0x259C1EF20](*(a1 + 20), 1, *(a1 + 24), 0), v4) || (v9 = 0, input[0] = 0, v4 = MEMORY[0x259C1EF10](*(a1 + 20), 1, *MEMORY[0x277D85F48], input, &v9, 1), v4))
  {
    v5 = v4;
  }

  else
  {
    v6 = input[0];
    *(a1 + 32) = input[0];
    if (v6)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v5 = 3758097097;
  }

  if (*(a1 + 24))
  {
    MEMORY[0x259C1EF20](*(a1 + 20), 1, 0, 0);
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t IOCECInterfaceCloseReceiveQueue(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 104);
  if (v4)
  {
    IOCECInterfaceUnscheduleFromDispatchQueue(a1, v4);
  }

  if (*(a1 + 32))
  {
    MEMORY[0x259C1EF30](*(a1 + 20), 1, *MEMORY[0x277D85F48]);
    *(a1 + 32) = 0;
  }

  if (*(a1 + 24))
  {
    MEMORY[0x259C1EF20](*(a1 + 20), 1, 0, 0);
  }

  v5 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v5, 3u, input, 1u, 0, 0, 0, 0, 0, 0);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOCECInterfaceSetLogicalAddressMask(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 4u, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOCECInterfaceSendFrame(uint64_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 20);
  input[0] = a3;
  result = IOConnectCallMethod(v3, 5u, input, 1u, inputStruct, 0x11uLL, 0, 0, 0, 0);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOCECInterfaceRegisterStatusCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 40) = a2;
  *(result + 48) = a3;
  return result;
}

uint64_t IOCECInterfaceRegisterReceiveCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 56) = a2;
  *(result + 64) = a3;
  return result;
}

uint64_t IOCECInterfaceRegisterTerminatedCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 88) = a2;
  *(result + 96) = a3;
  return result;
}

uint64_t __IOCECInterfaceFree(uint64_t a1)
{
  if (*(a1 + 20))
  {
    IOCECInterfaceCloseReceiveQueue(a1, 0);
    IOConnectCallScalarMethod(*(a1 + 20), 1u, 0, 0, 0, 0);
    IOServiceClose(*(a1 + 20));
    *(a1 + 20) = 0;
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], v2, 1u, -1);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    IOObjectRelease(v3);
    *(a1 + 80) = 0;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    IONotificationPortDestroy(v4);
    *(a1 + 72) = 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    result = IOObjectRelease(result);
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t IOCECPhysicalAddressStringWithAddress(unsigned int a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *__str = 0;
  v1 = snprintf(__str, 8uLL, "%x.%x.%x.%x", a1 >> 12, (a1 >> 8) & 0xF, a1 >> 4, a1 & 0xF);
  if (v1 <= 0)
  {
    IOCECPhysicalAddressStringWithAddress_cold_2();
  }

  if (v1 >= 8)
  {
    IOCECPhysicalAddressStringWithAddress_cold_1();
  }

  result = *__str;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOCECFrameStringWithFrame@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  result = snprintf(a2, 0x32uLL, "%*D", (*(a1 + 16) & 0xFu) + 1, a1, " ");
  if (result <= 0)
  {
    IOCECFrameStringWithFrame_cold_2();
  }

  if (result >= 0x32)
  {
    IOCECFrameStringWithFrame_cold_1();
  }

  return result;
}

void *IOCECInterfaceListenerCreate()
{
  if (!__kIOCECInterfaceListenerTypeID)
  {
    pthread_once(&__IOCECInterfaceListenerTypeInit, __IOCECInterfaceListenerRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v1 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    v2 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    v1[4] = v2;
    if (!v2)
    {
      CFRelease(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t IOCECInterfaceListenerScheduleWithDispatchQueue(uint64_t a1, NSObject *a2)
{
  IONotificationPortSetDispatchQueue(*(a1 + 32), a2);
  v3 = *(a1 + 40);
  if (!v3)
  {
    v4 = *(a1 + 32);
    v5 = IOServiceMatching("IOCECService");
    result = IOServiceAddMatchingNotification(v4, "IOServicePublish", v5, __IOCECInterfaceListenerPublishNotification, a1, (a1 + 40));
    if (result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  return __IOCECInterfaceListenerPublishNotification(a1, v3);
}

uint64_t IOCECInterfaceCreate(int a1)
{
  v2 = IOServiceMatching("IOCECService");
  if (!v2)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v2);
  if (!MatchingService)
  {
    return 0;
  }

  v4 = MatchingService;
  v5 = IOCECInterfaceCreateWithService(a1, MatchingService);
  IOObjectRelease(v4);
  return v5;
}

uint64_t IOCECInterfaceCreateWithService(int a1, io_object_t object)
{
  if (!object || !IOObjectConformsTo(object, "IOCECService"))
  {
    return 0;
  }

  if (!__kIOCECInterfaceTypeID)
  {
    pthread_once(&__IOCECInterfaceTypeInit, __IOCECInterfaceRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 112) = 0;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    NotificationPort = IODataQueueAllocateNotificationPort();
    *(v4 + 24) = NotificationPort;
    if (!NotificationPort || (*(v4 + 16) = object, IOObjectRetain(object), v6 = IONotificationPortCreate(*MEMORY[0x277CD2898]), (*(v4 + 72) = v6) == 0) || IOServiceAddInterestNotification(v6, object, "IOGeneralInterest", __IOCECInterfaceGeneralInterestNotification, v4, (v4 + 80)) || IOServiceOpen(*(v4 + 16), *MEMORY[0x277D85F48], 0, (v4 + 20)) || (v7 = *(v4 + 20), OUTLINED_FUNCTION_0(), IOConnectCallScalarMethod(v8, v9, v10, v11, v12, v13)))
    {
      CFRelease(v4);
      return 0;
    }
  }

  return v4;
}

void IOCECInterfaceUnscheduleFromDispatchQueue(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 104);
  if (*(a1 + 104) == a2)
  {
    if (*(a1 + 112))
    {
      IONotificationPortSetDispatchQueue(*(a1 + 72), 0);
      dispatch_source_cancel(*(a1 + 112));
      dispatch_release(*(a1 + 112));
      *v2 = 0;
      v2[1] = 0;
    }
  }
}

uint64_t IOCECInterfaceGetCECSnoopingEnabled(uint64_t a1, _BYTE *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = 3758097090;
  if (a2)
  {
    v4 = *(a1 + 20);
    OUTLINED_FUNCTION_0();
    v13 = IOConnectCallMethod(v5, v6, v7, v8, v9, v10, v11, v12, 0, 0);
    if (v13)
    {
      v2 = v13;
    }

    else
    {
      v2 = 0;
      *a2 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

void IOCECInterfaceScheduleWithDispatchQueue(uint64_t a1, NSObject *a2)
{
  if (!*(a1 + 104))
  {
    CFRetain(a1);
    *(a1 + 112) = dispatch_source_create(MEMORY[0x277D85D08], *(a1 + 24), 0, a2);
    dispatch_set_qos_class();
    dispatch_set_context(*(a1 + 112), a1);
    dispatch_source_set_registration_handler_f(*(a1 + 112), __IOCECInterfaceReceiveNotification);
    dispatch_source_set_event_handler_f(*(a1 + 112), __IOCECInterfaceReceiveNotification);
    dispatch_source_set_cancel_handler_f(*(a1 + 112), __IOCECInterfaceRxDispatchSourceCancelledNotification);
    IONotificationPortSetDispatchQueue(*(a1 + 72), a2);
    *(a1 + 104) = a2;
    v4 = *(a1 + 112);

    dispatch_resume(v4);
  }
}

intptr_t __IOCECInterfaceReceiveNotification(intptr_t result)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(msg, 0, sizeof(msg));
  if (result)
  {
    v1 = result;
    result = *(result + 112);
    if (result)
    {
      result = dispatch_source_testcancel(result);
      if (!result)
      {
        mach_msg(msg, 258, 0, 0x20u, *(v1 + 24), 0, 0);
        for (result = IODataQueueDataAvailable(*(v1 + 32)); result; result = IODataQueueDataAvailable(*(v1 + 32)))
        {
          memset(data, 0, 83);
          dataSize = 83;
          result = IODataQueueDequeue(*(v1 + 32), data, &dataSize);
          if (result || dataSize != 83)
          {
            break;
          }

          if (data[0])
          {
            if (data[0] == 1)
            {
              v2 = *(v1 + 56);
              if (v2)
              {
                v3 = *(v1 + 64);
                __dst[0] = *&data[1];
                LOBYTE(__dst[1]) = data[17];
                v2(v1, __dst, v3);
              }
            }
          }

          else if (*(v1 + 56))
          {
            v5 = *(v1 + 40);
            v4 = *(v1 + 48);
            memcpy(__dst, &data[3], sizeof(__dst));
            v5(v1, data[1] != 0, data[2] != 0, __dst, v4);
          }
        }
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __IOCECInterfaceRxDispatchSourceCancelledNotification(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}