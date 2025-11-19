uint64_t sub_258FC25DC()
{
  result = sub_258FC4154();
  if ((result & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    sub_258FC43B4();
    MEMORY[0x259C9FB70](0xD000000000000041, 0x8000000258FC72E0);
    v1 = sub_258FC44A4();
    MEMORY[0x259C9FB70](v1);

    result = sub_258FC43D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_258FC26BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_258FC26F4(uint64_t a1)
{
  if (a1 > 0x656732B065AD8EC9)
  {
    if (a1 > 0x73F413D1D0637ACDLL)
    {
      if (a1 == 0x73F413D1D0637ACELL)
      {
        return 1;
      }

      if (a1 == 0x7AF728B1EAE3351BLL)
      {
        return 3;
      }
    }

    else
    {
      if (a1 == 0x656732B065AD8ECALL)
      {
        return 2;
      }

      if (a1 == 0x73E909AB6E7598B1)
      {
        return 4;
      }
    }
  }

  else if (a1 > 0x4CAFA23047A22814)
  {
    if (a1 == 0x4CAFA23047A22815)
    {
      return 6;
    }

    if (a1 == 0x510C03B7C18A80A0)
    {
      return 7;
    }
  }

  else
  {
    if (a1 == 0xFC3087BD99A887ALL)
    {
      return 5;
    }

    if (a1 == 0x41F8D7222D3DA490)
    {
      return 0;
    }
  }

  return 8;
}

uint64_t sub_258FC2844()
{
  v0 = sub_258FC4154();
  result = sub_258FC26F4(v0);
  if (result == 8)
  {
    sub_258FC43B4();

    v2 = sub_258FC44A4();
    MEMORY[0x259C9FB70](v2);

    result = sub_258FC43D4();
    __break(1u);
  }

  return result;
}

void *sub_258FC2930(void *result)
{
  v1 = *(*result + 16);
  v2 = __OFADD__(v1, 8);
  v3 = v1 + 8;
  if (v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = *(result[1] + 16);
  v2 = __OFADD__(v4, 8);
  v5 = v4 + 8;
  if (v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v2 = __OFADD__(v3, v5);
  v6 = v3 + v5;
  if (v2)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *(result[2] + 16);
  v2 = __OFADD__(v7, 8);
  v8 = v7 + 8;
  if (v2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v2 = __OFADD__(v6, v8);
  v9 = v6 + v8;
  if (v2)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = *(result[3] + 16);
  v2 = __OFADD__(v10, 8);
  v11 = v10 + 8;
  if (v2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v2 = __OFADD__(v9, v11);
  v12 = v9 + v11;
  if (v2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = *(result[4] + 16);
  v2 = __OFADD__(v13, 8);
  v14 = v13 + 8;
  if (v2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v2 = __OFADD__(v12, v14);
  v15 = v12 + v14;
  if (v2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = *(result[5] + 16);
  v2 = __OFADD__(v16, 8);
  v17 = v16 + 8;
  if (v2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v2 = __OFADD__(v15, v17);
  v18 = v15 + v17;
  if (v2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = *(result[6] + 16);
  v2 = __OFADD__(v19, 8);
  v20 = v19 + 8;
  if (v2)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v2 = __OFADD__(v18, v20);
  v21 = v18 + v20;
  if (v2)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22 = *(result[7] + 16);
  v2 = __OFADD__(v22, 8);
  v23 = v22 + 8;
  if (v2)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v2 = __OFADD__(v21, v23);
  v24 = v21 + v23;
  if (v2)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  result = (v24 + 1);
  if (__OFADD__(v24, 1))
  {
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_258FC2A34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258FC4154();
  v34 = v1;
  v35 = sub_258FC13AC(sub_258FC3638, v33, 0, v3, sub_258FC2364);
  v4 = sub_258FC4154();
  v32 = v1;
  v18 = sub_258FC13AC(sub_258FC3638, v31, 0, v4, sub_258FC2364);
  v5 = sub_258FC4154();
  v30 = v1;
  v6 = sub_258FC13AC(sub_258FC3638, v29, 0, v5, sub_258FC2364);
  v7 = sub_258FC4154();
  v28 = v1;
  v8 = sub_258FC13AC(sub_258FC3638, v27, 0, v7, sub_258FC2364);
  v9 = sub_258FC4154();
  v26 = v1;
  v10 = sub_258FC13AC(sub_258FC3638, v25, 0, v9, sub_258FC2364);
  v11 = sub_258FC4154();
  v24 = v1;
  v12 = sub_258FC13AC(sub_258FC3638, v23, 0, v11, sub_258FC2364);
  v13 = sub_258FC4154();
  v22 = v1;
  v14 = sub_258FC13AC(sub_258FC3638, v21, 0, v13, sub_258FC2364);
  v15 = sub_258FC4154();
  v20 = v1;
  v16 = sub_258FC13AC(sub_258FC3638, v19, 0, v15, sub_258FC2364);
  result = sub_258FC40F4();
  *a1 = v35;
  *(a1 + 8) = v18;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;
  *(a1 + 56) = v16;
  *(a1 + 64) = result & 1;
  return result;
}

uint64_t sub_258FC2C9C()
{
  v2 = sub_258FC4134();
  if (v2 == 1)
  {
    v3 = sub_258FC2844();
    v4 = v3;
    if (!v1)
    {
      return v3;
    }

    return v4;
  }

  if (!v2)
  {
    if (sub_258FC4134() != 1)
    {
      return 0;
    }

    v5 = sub_258FC4144();
    v6 = sub_258FC4154();
    MEMORY[0x28223BE20](v6, v7);
    v10[2] = v0;
    v4 = sub_258FC1540(sub_258FC3508, v10, 0, v8);
    if (!v1)
    {
      return v5;
    }

    return v4;
  }

  result = sub_258FC43D4();
  __break(1u);
  return result;
}

uint64_t sub_258FC2DEC()
{
  v2 = sub_258FC4134();
  if (v2 == 1)
  {
    LODWORD(result) = sub_258FC2844();
    if (v1)
    {
      return result;
    }

    else
    {
      return result;
    }
  }

  else if (v2)
  {
    result = sub_258FC43D4();
    __break(1u);
  }

  else if (sub_258FC4134() == 1)
  {
    v4 = sub_258FC4134();
    sub_258FC4154();
    v5 = sub_258FC4154();
    MEMORY[0x28223BE20](v5, v6);
    v8[2] = v0;
    sub_258FC13AC(sub_258FC3638, v8, 0, v7, sub_258FC2364);
    return v4;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_258FC2F5C(uint64_t a1)
{
  if (a1 > 0x2BD6B98B77DEBC48)
  {
    if (a1 > 0x57AB5834B6532C04)
    {
      if (a1 <= 0x72D1B1B13FF9651DLL)
      {
        if (a1 == 0x57AB5834B6532C05)
        {
          return 19;
        }

        if (a1 == 0x5D3AAC10C477D624)
        {
          return 0;
        }
      }

      else
      {
        switch(a1)
        {
          case 0x7CE3BD3ABFDEA51FLL:
            return 13;
          case 0x765FA2D0EF60A27BLL:
            return 3;
          case 0x72D1B1B13FF9651ELL:
            return 2;
        }
      }
    }

    else if (a1 <= 0x472824E2FAFB6261)
    {
      if (a1 == 0x2BD6B98B77DEBC49)
      {
        return 11;
      }

      if (a1 == 0x3E435AEC7BB9C42CLL)
      {
        return 9;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x472824E2FAFB6262:
          return 1;
        case 0x4A31F368652ADA65:
          return 18;
        case 0x54ABDB814B76018BLL:
          return 14;
      }
    }
  }

  else if (a1 > 0xD80C43B870D6C773)
  {
    if (a1 <= 0xE269C08D02DB69B2)
    {
      if (a1 == 0xD80C43B870D6C774)
      {
        return 8;
      }

      if (a1 == 0xDBB8CC279A0BB229)
      {
        return 10;
      }
    }

    else
    {
      switch(a1)
      {
        case 0xE269C08D02DB69B3:
          return 16;
        case 0xFDD3A1E18B53D69FLL:
          return 4;
        case 0xB18158CE3885169:
          return 15;
      }
    }
  }

  else if (a1 <= 0xCB4528F6C33E2164)
  {
    if (a1 == 0xA5CF4197DBA5E691)
    {
      return 6;
    }

    if (a1 == 0xB0B782092CA90A72)
    {
      return 12;
    }
  }

  else
  {
    switch(a1)
    {
      case 0xCB4528F6C33E2165:
        return 17;
      case 0xCD7FE0D1BD416964:
        return 5;
      case 0xD4BBE82CC431CDF9:
        return 7;
    }
  }

  return 20;
}

uint64_t sub_258FC328C()
{
  v0 = sub_258FC4154();
  result = sub_258FC2F5C(v0);
  if (result == 20)
  {
    sub_258FC43B4();
    MEMORY[0x259C9FB70](0xD000000000000031, 0x8000000258FC7370);
    v2 = sub_258FC44A4();
    MEMORY[0x259C9FB70](v2);

    result = sub_258FC43D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_258FC336C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_258FC337C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991D8, &qword_258FC5828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258FC33EC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_258FC33FC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_258FC4134();
  *a1 = result;
  return result;
}

uint64_t sub_258FC3438(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_258FC3478@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_258FC4114();
  *a1 = result;
  return result;
}

uint64_t sub_258FC34B4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_258FC34C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258FC3508@<X0>(uint64_t *a1@<X8>)
{
  v5[2] = *(v1 + 16);
  v3 = sub_258FC16D0(sub_258FC3620, v5, 0, 32);
  result = sub_258FC4154();
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t sub_258FC3588(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258FC35D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258FC3650@<X0>(char **a1@<X8>)
{
  v2 = sub_258FC4314();
  server_by_name = rpc_get_server_by_name((v2 + 32));

  *a1 = server_by_name;
  return result;
}

unint64_t sub_258FC36A8(const char **a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v7[0] = 0;
  v2 = sub_258FC4314();
  v3 = rpc_afk_interface_find(v1, (v2 + 32), 0, v7 + 1, v7);

  if (v3)
  {
    sub_258FC3784();
    swift_allocError();
    *v4 = v3;
    *(v4 + 4) = 0;
    result = swift_willThrow();
  }

  else
  {
    result = HIDWORD(v7[0]) | (LODWORD(v7[0]) << 32);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_258FC3784()
{
  result = qword_27F999200;
  if (!qword_27F999200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999200);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for rpc_server_t(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for rpc_server_t(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Error(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Error(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_258FC38D4(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258FC38F0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t rpc_afk_interface_find_with_timeout(const char *a1, const char *a2, double a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  v16 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "fwd");
  interface = rpctools_find_interface(__str, "AFKEndpointInterface", a3);
  *a5 = interface;
  if (interface)
  {
    result = 0;
  }

  else
  {
    result = 5;
  }

  if (a6 && interface)
  {
    snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "rev");
    v13 = rpctools_find_interface(__str, "AFKEndpointInterface", a3);
    *a6 = v13;
    if (v13)
    {
      result = 0;
    }

    else
    {
      result = 5;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t rpctools_find_interface(const char *a1, char *name, double a3)
{
  v5 = IOServiceMatching(name);
  if (v5)
  {
    v6 = v5;
    v7 = *MEMORY[0x277CBECE8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v5);
    CFRelease(v6);
    if (MutableCopy)
    {
      v9 = CFStringCreateWithCString(v7, a1, 0x8000100u);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(MutableCopy, @"IONameMatch", v9);
      }

      else
      {
        v10 = MutableCopy;
        MutableCopy = 0;
      }

      CFRelease(v10);
    }
  }

  else
  {
    MutableCopy = 0;
  }

  *notification = 0;
  Current = CFRunLoopGetCurrent();
  v12 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  if (v12)
  {
    v13 = v12;
    RunLoopSource = IONotificationPortGetRunLoopSource(v12);
    if (RunLoopSource)
    {
      v15 = RunLoopSource;
      v16 = *MEMORY[0x277CBF058];
      CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x277CBF058]);
      if (IOServiceAddMatchingNotification(v13, "IOServiceFirstMatch", MutableCopy, DeviceMatched, notification, &notification[1]))
      {
        v17 = 0;
        notification[0] = 0;
      }

      else
      {
        v18 = IOIteratorNext(notification[1]);
        v17 = 0;
        notification[0] = v18;
        if (a3 != 0.0 && !v18)
        {
          if (a3 >= 0.0)
          {
            v19 = *MEMORY[0x277CBECE8];
            v20 = CFAbsoluteTimeGetCurrent();
            v17 = CFRunLoopTimerCreate(v19, v20 + a3, 0.0, 0, 0, MatchTimeout, 0);
            CFRunLoopAddTimer(Current, v17, v16);
          }

          else
          {
            v17 = 0;
          }

          CFRunLoopRun();
        }
      }

      CFRunLoopRemoveSource(Current, v15, v16);
      if (notification[1])
      {
        IOObjectRelease(notification[1]);
      }

      IONotificationPortDestroy(v13);
      if (v17)
      {
        CFRunLoopRemoveTimer(Current, v17, v16);
        CFRunLoopTimerInvalidate(v17);
        CFRelease(v17);
      }
    }

    else
    {
      IONotificationPortDestroy(v13);
    }
  }

  return notification[0];
}

void DeviceMatched(io_object_t *a1, io_iterator_t iterator)
{
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    *a1 = v3;
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

void MatchTimeout()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

uint64_t rpc_get_servers(const char *a1, const char *a2, void ***a3)
{
  v13 = 0;
  if (pthread_mutex_lock(&rpc_lock))
  {
    v6 = 0;
    v7 = 6;
  }

  else
  {
    v8 = rpc_static_connection_head_0;
    if (rpc_static_connection_head_0)
    {
      v9 = 0;
      do
      {
        v9 += rpc_is_match(v8, a1, a2);
        v8 = *(v8 + 224);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v7 = rpc_malloc(8 * v9 + 8, &v13);
    v6 = v13;
    if (v7)
    {
LABEL_9:
      rpc_release_server_array(v6);
      v6 = 0;
    }

    else
    {
      v7 = rpc_static_connection_head_0;
      if (rpc_static_connection_head_0)
      {
        v11 = 0;
        do
        {
          if (v11 >= v9)
          {
            v7 = 3;
            goto LABEL_9;
          }

          if (rpc_is_match(v7, a1, a2))
          {
            v12 = strdup(v7);
            if (!v12)
            {
              v7 = 4;
              goto LABEL_9;
            }

            v6[v11++] = v12;
          }

          v7 = *(v7 + 224);
        }

        while (v7);
      }
    }

    pthread_mutex_unlock(&rpc_lock);
  }

  *a3 = v6;
  return v7;
}

void rpc_release_server_array(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = 1;
      do
      {
        free(v2);
        v2 = a1[v3++];
      }

      while (v2);
    }

    free(a1);
  }
}

char *rpc_get_server_by_name(const char *a1)
{
  v7 = 0;
  servers = rpc_get_servers(a1, 0, &v7);
  v3 = 0;
  v4 = v7;
  if (!servers)
  {
    v5 = *v7;
    if (!*v7)
    {
      v5 = a1;
    }

    v3 = strdup(v5);
  }

  rpc_release_server_array(v4);
  return v3;
}

void rpc_release_server(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t rpc_malloc(size_t a1, void *a2)
{
  v4 = malloc_type_malloc(a1, 0xF83BD267uLL);
  *a2 = v4;
  if (!v4)
  {
    return 4;
  }

  bzero(v4, a1);
  return 0;
}

uint64_t rpc_is_match(char *__s1, const char *a2, const char *a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v6 | v5;
  }

  v5 = strcmp(__s1, a2) == 0;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = strcmp(__s1 + 64, a3) == 0;
  return v6 | v5;
}