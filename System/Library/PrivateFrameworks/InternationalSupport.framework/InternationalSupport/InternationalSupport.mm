void wifidDidBecomeAlive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __wifidDidBecomeAlive_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = a3;
  v3[5] = a2;
  if (wifidDidBecomeAlive_onceToken != -1)
  {
    dispatch_once(&wifidDidBecomeAlive_onceToken, v3);
  }
}

void *__getWiFiManagerClientCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileWiFiLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MobileWiFiLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MobileWiFiLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7D071A0;
    v6 = 0;
    MobileWiFiLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MobileWiFiLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!MobileWiFiLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __MobileWiFiLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileWiFiLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getWiFiManagerClientScheduleWithRunLoopSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientScheduleWithRunLoop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientScheduleWithRunLoopSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiManagerClientRegisterDeviceAttachmentCallbackSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientRegisterDeviceAttachmentCallback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientRegisterDeviceAttachmentCallbackSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiManagerClientCopyDevicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientCopyDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientCopyDevicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiDeviceClientGetTypeIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiDeviceClientGetTypeID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiDeviceClientGetTypeIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiDeviceClientScanAsyncSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiDeviceClientScanAsync");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiDeviceClientScanAsyncSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiNetworkGet11dCountryCodeFromIe");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiNetworkGet11dCountryCodeFromIeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientUnscheduleFromRunLoop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ISEnumerateKnownUrduSequencesInString(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (GetKnownUrduWordsSet___onceToken != -1)
  {
    ISEnumerateKnownUrduSequencesInString_cold_1();
  }

  v8 = GetKnownUrduWordsSet___knownWords;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __ISEnumerateKnownUrduSequencesInString_block_invoke;
  v11[3] = &unk_1E7D07288;
  v12 = v8;
  v13 = v7;
  v9 = v7;
  v10 = v8;
  [a1 enumerateSubstringsInRange:a2 options:a3 usingBlock:{3, v11}];
}

uint64_t __ISEnumerateKnownUrduSequencesInString_block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

uint64_t __GetKnownUrduWordsSet_block_invoke()
{
  GetKnownUrduWordsSet___knownWords = [MEMORY[0x1E695DFD8] setWithArray:0x1F373C0C8];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B86A63C0()
{
  v51 = 0;
  v0 = sub_1B86A6D64(MEMORY[0x1E69E7CC0]);
  v1 = sub_1B86A7004();
  v3 = v2;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_40:

    v3 = 0;
    v5 = 0;
    v34 = 0;
    v35 = 1 << *(v0 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v0 + 64);
    while (v37)
    {
LABEL_48:
      v39 = __clz(__rbit64(v37)) | (v34 << 6);
      v40 = *(*(v0 + 48) + 4 * v39);
      v41 = *(*(v0 + 56) + 8 * v39);
      v42 = v40 - 17 > 0x39 || ((1 << (v40 - 17)) & 0x300002000000023) == 0;
      if (!v42 || v40 == 105 || v40 == 172)
      {
        if (v41 < 0)
        {
          goto LABEL_74;
        }

        v41 *= 2;
      }

      v37 &= v37 - 1;
      if (v40)
      {
        v43 = v40 > 0x19;
        v44 = (1 << v40) & 0x2004100;
        if (v43 || v44 == 0)
        {
          v46 = __CFADD__(v3, v41);
          v3 += v41;
          if (v46)
          {
            __break(1u);
            goto LABEL_68;
          }
        }

        else
        {
          v46 = __CFADD__(v5, v41);
          v5 += v41;
          if (v46)
          {
            goto LABEL_75;
          }
        }
      }
    }

    while (1)
    {
      v38 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v38 >= ((v35 + 63) >> 6))
      {
        goto LABEL_71;
      }

      v37 = *(v0 + 64 + 8 * v38);
      ++v34;
      if (v37)
      {
        v34 = v38;
        goto LABEL_48;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    type metadata accessor for UScriptCode();
    result = sub_1B86A7064();
    __break(1u);
    return result;
  }

  v5 = v1;
  v6 = 0;
  v48 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v49 = v2 & 0xFFFFFFFFFFFFFFLL;
  while ((v3 & 0x1000000000000000) == 0)
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v50[0] = v5;
      v50[1] = v49;
      v8 = v50 + v6;
    }

    else
    {
      v7 = v48;
      if ((v5 & 0x1000000000000000) == 0)
      {
        v7 = sub_1B86A7024();
      }

      v8 = (v7 + v6);
    }

    v11 = *v8;
    if ((*v8 & 0x80000000) == 0)
    {
LABEL_17:
      v10 = 1;
      goto LABEL_18;
    }

    v29 = (__clz(v11 ^ 0xFF) - 24);
    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v31 = ((v11 & 0xF) << 12) | ((v8[1] & 0x3F) << 6) | v8[2] & 0x3Fu;
        v10 = 3;
      }

      else
      {
        v32 = ((v11 & 0xF) << 18) | ((v8[1] & 0x3F) << 12) | ((v8[2] & 0x3F) << 6) | v8[3] & 0x3Fu;
        v10 = 4;
      }
    }

    else
    {
      if (v29 == 1)
      {
        goto LABEL_17;
      }

      v10 = 2;
      v30 = v8[1] & 0x3F | ((v11 & 0x1F) << 6);
    }

LABEL_18:
    Script = uscript_getScript();
    v13 = Script;
    v14 = *(v0 + 16);
    if (v14)
    {
      v15 = sub_1B86A68C0(Script);
      if ((v16 & 1) == 0)
      {
        v17 = 1;
        goto LABEL_24;
      }

      v14 = *(*(v0 + 56) + 8 * v15);
    }

    v17 = v14 + 1;
    if (v14 == -1)
    {
      goto LABEL_69;
    }

LABEL_24:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = v0;
    v19 = sub_1B86A68C0(v13);
    v21 = *(v0 + 16);
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_70;
    }

    v25 = v20;
    if (*(v0 + 24) < v24)
    {
      sub_1B86A692C(v24, isUniquelyReferenced_nonNull_native);
      v0 = v50[0];
      v19 = sub_1B86A68C0(v13);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_76;
      }

LABEL_29:
      if (v25)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v33 = v19;
    sub_1B86A6C18();
    v19 = v33;
    v0 = v50[0];
    if (v25)
    {
LABEL_6:
      *(*(v0 + 56) + 8 * v19) = v17;
      goto LABEL_7;
    }

LABEL_30:
    *(v0 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    *(*(v0 + 48) + 4 * v19) = v13;
    *(*(v0 + 56) + 8 * v19) = v17;
    v27 = *(v0 + 16);
    v23 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v23)
    {
      __break(1u);
      goto LABEL_73;
    }

    *(v0 + 16) = v28;
LABEL_7:
    v6 += v10;
    if (v6 >= v4)
    {
      goto LABEL_40;
    }
  }

  if ((sub_1B86A7014() & 0x80000000) == 0)
  {
    v10 = v9;
    goto LABEL_18;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:

  return v5 >= v3;
}

uint64_t sub_1B86A67A4(void *a1)
{
  v1 = a1;
  v2 = sub_1B86A63C0();

  return v2 & 1;
}

uint64_t sub_1B86A67D8()
{
  v1 = *v0;
  sub_1B86A7074();
  sub_1B86A7084();
  return sub_1B86A7094();
}

uint64_t sub_1B86A684C()
{
  v1 = *v0;
  sub_1B86A7074();
  sub_1B86A7084();
  return sub_1B86A7094();
}

_DWORD *sub_1B86A68A4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

unint64_t sub_1B86A68C0(int a1)
{
  v3 = *(v1 + 40);
  sub_1B86A7074();
  sub_1B86A7084();
  v4 = sub_1B86A7094();

  return sub_1B86A6BAC(a1, v4);
}

uint64_t sub_1B86A692C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA90EA8, &qword_1B86A7DE0);
  result = sub_1B86A7044();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_1B86A7074();
      sub_1B86A7084();
      result = sub_1B86A7094();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

unint64_t sub_1B86A6BAC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1B86A6C18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA90EA8, &qword_1B86A7DE0);
  v2 = *v0;
  v3 = sub_1B86A7034();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1B86A6D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA90EA8, &qword_1B86A7DE0);
    v3 = sub_1B86A7054();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_1B86A68C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void type metadata accessor for UScriptCode()
{
  if (!qword_1EBA90EA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBA90EA0);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B86A6EE0()
{
  result = qword_1EBA90EB0;
  if (!qword_1EBA90EB0)
  {
    type metadata accessor for UScriptCode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA90EB0);
  }

  return result;
}