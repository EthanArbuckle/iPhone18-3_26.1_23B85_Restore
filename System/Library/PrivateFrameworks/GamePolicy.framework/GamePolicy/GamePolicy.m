double sub_24E5B9970@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_24E5BEF7C(v7);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_24E5B99B8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F20E7D0;
  return result;
}

uint64_t sub_24E5B9A04(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F20E7D0 = v1;
  return result;
}

uint64_t sub_24E5B9B04@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F20E7D1;
  return result;
}

uint64_t sub_24E5B9B50(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F20E7D1 = v1;
  return result;
}

uint64_t sub_24E5B9BC4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F20E7D2;
  return result;
}

uint64_t sub_24E5B9C10(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F20E7D2 = v1;
  return result;
}

uint64_t sub_24E5B9CF8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F20E7D3;
  return result;
}

uint64_t sub_24E5B9D44(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F20E7D3 = v1;
  return result;
}

uint64_t sub_24E5B9E68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_launchersMappedToCriticalServices;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24E5B9EC0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_launchersMappedToCriticalServices;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24E5BA028@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F20E9E0;
  return result;
}

uint64_t sub_24E5BA074(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F20E9E0 = v1;
  return result;
}

uint64_t sub_24E5BA0BC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F20E9E1;
  return result;
}

uint64_t sub_24E5BA108(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F20E9E1 = v1;
  return result;
}

id sub_24E5BA150@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

id sub_24E5BA1AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

id sub_24E5BA208@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

id sub_24E5BA264@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

uint64_t sub_24E5BA2C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id getGKDaemonProxyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGKDaemonProxyClass_softClass;
  v7 = getGKDaemonProxyClass_softClass;
  if (!getGKDaemonProxyClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getGKDaemonProxyClass_block_invoke;
    v3[3] = &unk_2796857F0;
    v3[4] = &v4;
    __getGKDaemonProxyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_24E5BA6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getGKLocalPlayerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGKLocalPlayerClass_softClass;
  v7 = getGKLocalPlayerClass_softClass;
  if (!getGKLocalPlayerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getGKLocalPlayerClass_block_invoke;
    v3[3] = &unk_2796857F0;
    v3[4] = &v4;
    __getGKLocalPlayerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_24E5BA798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getGKDaemonProxyClass_block_invoke(uint64_t a1)
{
  GameCenterFoundationLibrary();
  result = objc_getClass("GKDaemonProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGKDaemonProxyClass_block_invoke_cold_1();
  }

  getGKDaemonProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void GameCenterFoundationLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!GameCenterFoundationLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __GameCenterFoundationLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279685810;
    v3 = 0;
    GameCenterFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GameCenterFoundationLibraryCore_frameworkLibrary)
  {
    GameCenterFoundationLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __GameCenterFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GameCenterFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getGKLocalPlayerClass_block_invoke(uint64_t a1)
{
  GameCenterFoundationLibrary();
  result = objc_getClass("GKLocalPlayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGKLocalPlayerClass_block_invoke_cold_1();
  }

  getGKLocalPlayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _gpBundle()
{
  if (_gpBundle_onceToken != -1)
  {
    _gpBundle_cold_1();
  }

  v1 = _bundle;

  return v1;
}

uint64_t ___gpBundle_block_invoke()
{
  _bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id _gpConvertStringToLocalizedString(void *a1)
{
  v1 = a1;
  v2 = _gpBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_28619CF88 table:@"Localizable"];

  return v3;
}

uint64_t currentSourceVersion()
{
  if (currentSourceVersion_onceToken != -1)
  {
    currentSourceVersion_cold_1();
  }

  return currentSourceVersion_versionStruct;
}

int8x8_t __currentSourceVersion_block_invoke()
{
  v0 = dyld_image_header_containing_address();
  v1 = *v0;
  if (v1 != -17958193)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"GamePolicy Mach-O header has incorrect magic: %x", v1];
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE658];
LABEL_7:
    v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  v2 = v0[4];
  if (!v2)
  {
LABEL_6:
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE658];
    v6 = @"GamePolicy Mach-O is missing LC_SOURCE_VERSION";
    goto LABEL_7;
  }

  v3 = v0 + 8;
  while (*v3 != 42)
  {
    v3 = (v3 + v3[1]);
    if (!--v2)
    {
      goto LABEL_6;
    }
  }

  v8 = *(v3 + 1);
  result = vand_s8(vmovn_s64(vshlq_u64(vdupq_n_s64(v8), xmmword_24E5D4440)), 0x3FF007FFFFFLL);
  currentSourceVersion_versionStruct = result;
  dword_27F20EB60 = (v8 >> 20) & 0x3FF;
  return result;
}

void sub_24E5BAFF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL OUTLINED_FUNCTION_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

uint64_t gp_isInternalBuild()
{
  if (gp_isInternalBuild_onceToken != -1)
  {
    gp_isInternalBuild_cold_1();
  }

  return gp_isInternalBuild_isInternalBuild;
}

uint64_t __gp_isInternalBuild_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  gp_isInternalBuild_isInternalBuild = result;
  return result;
}

id getGPLogger()
{
  if (getGPLogger_onceToken != -1)
  {
    getGPLogger_cold_1();
  }

  v1 = gpLogger;

  return v1;
}

uint64_t __getGPLogger_block_invoke()
{
  gpLogger = os_log_create("com.apple.GamePolicy", "default");

  return MEMORY[0x2821F96F8]();
}

id sub_24E5BD424(void *a1)
{
  v1 = [objc_opt_self() interfaceWithProtocol_];

  return v1;
}

id sub_24E5BD480(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];

  return v3;
}

id GamePolicyPrivilegedAppXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_24E5BD5E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_24E5BD634(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_24E5BD690(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24E5BD6E0(uint64_t a1, id *a2)
{
  result = sub_24E5D2AA0();
  *a2 = 0;
  return result;
}

uint64_t sub_24E5BD770(uint64_t a1, id *a2)
{
  v3 = sub_24E5D2AB0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24E5BD810@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24E5D2AC0();
  v4 = v3;
  v5 = sub_24E5D2A90();
  result = sub_24E5BE6C4(v2, v4);
  *a1 = v5;
  return result;
}

uint64_t sub_24E5BD85C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24E5D2A90();
  result = sub_24E5BE6C4(v3, v4);
  *a2 = v5;
  return result;
}

uint64_t sub_24E5BD8A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24E5D2AC0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_24E5BD8D4(uint64_t a1)
{
  v2 = sub_24E5BE64C(&qword_27F20E688);
  v3 = sub_24E5BE64C(&qword_27F20E690);
  v4 = sub_24E5BE9A0();

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24E5BD990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *v3;
  v6 = sub_24E5D2AC0();
  v8 = v7;
  v9 = a3();
  sub_24E5BE6C4(v6, v8);
  return v9;
}

uint64_t sub_24E5BD9E4()
{
  v1 = *v0;
  v2 = sub_24E5D2AC0();
  v4 = v3;
  sub_24E5D2AD0();

  return sub_24E5BE6C4(v2, v4);
}

uint64_t sub_24E5BDA44()
{
  v1 = *v0;
  v2 = sub_24E5D2AC0();
  v4 = v3;
  sub_24E5D3000();
  sub_24E5D2AD0();
  v5 = sub_24E5D3020();
  sub_24E5BE6C4(v2, v4);
  return v5;
}

uint64_t sub_24E5BDABC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24E5D2AC0();
  v6 = v5;
  v7 = sub_24E5D2AC0();
  v9 = v8;
  v10 = sub_24E5BE7E4(v4, v6, v7, v8);
  sub_24E5BE6C4(v7, v9);
  sub_24E5BE6C4(v4, v6);
  return v10 & 1;
}

uint64_t sub_24E5BDB40@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_24E5D2A60();
    if (v10)
    {
      v11 = sub_24E5D2A80();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_24E5D2A70();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_24E5D2A60();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24E5D2A80();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24E5D2A70();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24E5BDD70(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_24E5BE72C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_24E5BE6C4(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_24E5BDB40(v14, a3, a4, &v13);
  v10 = v4;
  sub_24E5BE6C4(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t _s10GamePolicy0aB16PrivilegedAppXPCC0abcD15ServerInterfaceSo14NSXPCInterfaceCyFZ_0()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_24E5BEA3C(0, &qword_281254CC0, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E9F0, &unk_24E5D4E60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E5D4480;
  v1 = type metadata accessor for GameLibraryGame();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6A0, &unk_24E5D46E0);
  *(v0 + 32) = v1;
  v5 = sub_24E5BEA3C(0, &unk_281254CA0, 0x277CBEA60);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6A8, &unk_24E5D4E70);
  *(v0 + 64) = v5;
  v2 = sub_24E5BEA3C(0, &unk_281254C90, 0x277CCABB0);
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6B0, &unk_24E5D46F0);
  *(v0 + 96) = v2;
  v4 = sub_24E5BEA3C(0, &qword_281254C80, 0x277CCACA8);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6B8, &qword_24E5D4E80);
  *(v0 + 128) = v4;
  MEMORY[0x253043840](v0);
  result = sub_24E5D2DF0();
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t _s10GamePolicy0aB16PrivilegedAppXPCC0abcD15ClientInterfaceSo14NSXPCInterfaceCyFZ_0()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_24E5BEA3C(0, &qword_281254CC0, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E9F0, &unk_24E5D4E60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E5D4480;
  v1 = type metadata accessor for GameLibraryGame();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6A0, &unk_24E5D46E0);
  *(v0 + 32) = v1;
  v2 = sub_24E5BEA3C(0, &unk_281254CA0, 0x277CBEA60);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6A8, &unk_24E5D4E70);
  *(v0 + 64) = v2;
  v3 = sub_24E5BEA3C(0, &unk_281254C90, 0x277CCABB0);
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6B0, &unk_24E5D46F0);
  *(v0 + 96) = v3;
  v4 = sub_24E5BEA3C(0, &qword_281254C80, 0x277CCACA8);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6B8, &qword_24E5D4E80);
  *(v0 + 128) = v4;
  MEMORY[0x253043840](v0);
  result = sub_24E5D2DF0();
  __break(1u);
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24E5BE538(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E5BE558(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_24E5BE598(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_24E5BE64C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LSPersistentIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E5BE6C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24E5BE718(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24E5BE6C4(a1, a2);
  }

  return a1;
}

uint64_t sub_24E5BE72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24E5D2A60();
  v11 = result;
  if (result)
  {
    result = sub_24E5D2A80();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_24E5D2A70();
  sub_24E5BDB40(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_24E5BE7E4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_24E5BE94C(a3, a4);
          return sub_24E5BDD70(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24E5BE94C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24E5BE9A0()
{
  result = qword_27F20E698;
  if (!qword_27F20E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20E698);
  }

  return result;
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

uint64_t sub_24E5BEA3C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id GameLibraryGame.Config.persistentIdentifier.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t GameLibraryGame.Config.bundleID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t GameLibraryGame.Config.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void *GameLibraryGame.Config.adamID.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t GameLibraryGame.Config.init(persistentIdentifier:bundleID:adamID:isGame:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *a6 = result;
  *(a6 + 8) = a2;
  return result;
}

void *GameLibraryGame.persistentIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_persistentIdentifier);
  v2 = v1;
  return v1;
}

uint64_t GameLibraryGame.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID);
  v2 = *(v0 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID + 8);

  return v1;
}

void *GameLibraryGame.adamID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_adamID);
  v2 = v1;
  return v1;
}

id GameLibraryGame.__allocating_init(config:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  v5 = a1[3];
  v6 = &v3[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config];
  *v6 = 1;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  v6[32] = 0;
  *&v3[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_persistentIdentifier] = v4;
  LOBYTE(v4) = *(a1 + 32);
  *&v3[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID] = *(a1 + 1);
  *&v3[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_adamID] = v5;
  v3[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_isGame] = v4;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id GameLibraryGame.init(config:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = &v1[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config];
  *v5 = 1;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  v5[32] = 0;
  *&v1[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_persistentIdentifier] = v2;
  *&v1[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID] = *(a1 + 1);
  *&v1[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_adamID] = v3;
  v1[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_isGame] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GameLibraryGame();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_24E5BEEDC(__int128 *a1, void *a2)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = *(a1 + 32);
  v5 = *a2 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *a1;
  *v5 = *a1;
  v11 = *(v5 + 32);
  *(v5 + 32) = v4;
  v12 = v10;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v13 = v2;
  v14 = v12;

  sub_24E5BF0C0(v6, v7, v8, v9);
}

uint64_t sub_24E5BEF7C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config;
  v4 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config);
  v5 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config + 8);
  v7 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config + 24);
  if (v4 == 1)
  {
    v8 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_persistentIdentifier);
    v9 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_adamID);
    v10 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_isGame);
    v11 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID);
    v12 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID + 8);
    *v3 = v8;
    *(v3 + 8) = v11;
    *(v3 + 16) = v12;
    *(v3 + 24) = v9;
    *(v3 + 32) = v10;
    v20 = v6;
    v18 = v9;
    v19 = v7;
    v13 = v5;
    v14 = v8;
    swift_bridgeObjectRetain_n();
    v15 = v18;
    v16 = v14;
    v5 = v13;
    v7 = v19;
    sub_24E5BF0C0(1, v5, v19, v20);
    v6 = v20;
  }

  else
  {
    v10 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config + 32) & 1;
    v8 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config);
    v11 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config + 8);
    v12 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config + 16);
    v9 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config + 24);
  }

  *a1 = v8;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;

  return sub_24E5BF118(v4, v5, v7, v6);
}

void sub_24E5BF0C0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_24E5BF118(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result != 1)
  {
    v5 = result;
    v6 = a4;
    v7 = v5;
  }

  return result;
}

void sub_24E5BF164(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config;
  v5 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config);
  v4 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config + 8);
  v6 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config + 16);
  v7 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config + 24);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  v9 = *(v3 + 32);
  *(v3 + 32) = v2;
  sub_24E5BF0C0(v5, v4, v6, v7);
}

void (*sub_24E5BF194(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  sub_24E5BEF7C(v3);
  return sub_24E5BF20C;
}

void sub_24E5BF20C(id **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = *(*a1 + 32);
  v6 = (*a1)[5] + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  v12 = **a1;
  *v6 = v12;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v5;
  if (a2)
  {
    v13 = v12;
    v14 = v3;
    v15 = v13;

    sub_24E5BF0C0(v7, v8, v9, v10);
    v16 = v2[2];
    v17 = v2[3];
  }

  else
  {
    sub_24E5BF0C0(v7, v8, v9, v10);
  }

  free(v2);
}

void sub_24E5BF300(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_isGame);
  v4 = sub_24E5D2CB0();
  [a1 encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_persistentIdentifier);
  if (v5)
  {
    v6 = v5;
    v7 = sub_24E5D2AC0();
    v9 = v8;
    v10 = sub_24E5D2A90();
    sub_24E5BE6C4(v7, v9);
    v11 = sub_24E5D2CB0();
    [a1 encodeObject:v10 forKey:v11];
  }

  if (*(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID + 8))
  {
    v12 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID);
    v13 = sub_24E5D2CB0();
    v14 = sub_24E5D2CB0();
    [a1 encodeObject:v13 forKey:v14];
  }

  v15 = *(v1 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_adamID);
  if (v15)
  {
    v16 = v15;
    v17 = sub_24E5D2CB0();
    [a1 encodeObject:v16 forKey:v17];
  }
}

id GameLibraryGame.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24E5BF864(a1);

  return v4;
}

id GameLibraryGame.init(coder:)(void *a1)
{
  v2 = sub_24E5BF864(a1);

  return v2;
}

unint64_t sub_24E5BF650()
{
  sub_24E5D2F00();

  if (*(v0 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID);
    v2 = *(v0 + OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID + 8);
  }

  else
  {
    v2 = 0xE90000000000003ELL;
    v1 = 0x6E776F6E6B6E753CLL;
  }

  MEMORY[0x253043730](v1, v2);

  MEMORY[0x253043730](62, 0xE100000000000000);
  return 0xD000000000000012;
}

id GameLibraryGame.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GameLibraryGame.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameLibraryGame();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24E5BF864(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame____lazy_storage___config];
  *v4 = 1;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  v4[32] = 0;
  v5 = sub_24E5D2CB0();
  v6 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_isGame] = v6;
  v7 = sub_24E5D2CB0();
  v8 = [a1 containsValueForKey_];

  v9 = 0;
  if (!v8)
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E750, &qword_24E5D47E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24E5D4710;
  *(v10 + 32) = sub_24E5BEA3C(0, &unk_281254CB0, 0x277CBEA90);
  sub_24E5D2E60();

  if (!v29)
  {
    sub_24E5BFE2C(v28);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v11 = v26;
  v12 = sub_24E5D2AC0();
  v14 = v13;

  v9 = sub_24E5D2A90();
  sub_24E5BE6C4(v12, v14);
LABEL_7:
  *&v2[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_persistentIdentifier] = v9;
  v15 = sub_24E5D2CB0();
  v16 = [a1 containsValueForKey_];

  if (!v16)
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E750, &qword_24E5D47E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24E5D4710;
  *(v17 + 32) = sub_24E5BEA3C(0, &qword_281254C80, 0x277CCACA8);
  sub_24E5D2E60();

  if (!v29)
  {
    sub_24E5BFE2C(v28);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v19 = &v2[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID];
    *v19 = 0;
    v19[1] = 0;
    goto LABEL_13;
  }

  v18 = &v2[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_bundleID];
  *v18 = v26;
  v18[1] = v27;
LABEL_13:
  v20 = sub_24E5D2CB0();
  v21 = [a1 containsValueForKey_];

  if (!v21)
  {
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E750, &qword_24E5D47E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24E5D4710;
  *(v22 + 32) = sub_24E5BEA3C(0, &unk_281254C90, 0x277CCABB0);
  sub_24E5D2E60();

  if (!v29)
  {
    sub_24E5BFE2C(v28);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  v23 = v26;
LABEL_19:
  *&v2[OBJC_IVAR____TtC10GamePolicy15GameLibraryGame_adamID] = v23;
  v24 = type metadata accessor for GameLibraryGame();
  v30.receiver = v2;
  v30.super_class = v24;
  return objc_msgSendSuper2(&v30, sel_init);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24E5BFD68(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24E5BFDC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24E5BFE2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E760, &qword_24E5D4C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ConsoleModeUserDisabled.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id ConsoleModeUserDisabled.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id ConsoleModeUserDisabled.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConsoleModeUserDisabled.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConsoleModeUserDisabled();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ConsoleModeUserDisabled.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConsoleModeUserDisabled();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E5C0148(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x616C696176616E75;
    }

    else
    {
      v4 = 0x664F646563726F66;
    }

    if (v3)
    {
      v5 = 0xEB00000000656C62;
    }

    else
    {
      v5 = 0xE900000000000066;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6C62616C69617661;
    v5 = 0xE900000000000065;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x64656C62616E65;
    }

    else
    {
      v4 = 0x6E4F646563726F66;
    }

    if (v3 == 3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x616C696176616E75;
    }

    else
    {
      v6 = 0x664F646563726F66;
    }

    if (a2)
    {
      v2 = 0xEB00000000656C62;
    }

    else
    {
      v2 = 0xE900000000000066;
    }

    if (v4 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    if (v4 != 0x6C62616C69617661)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xE700000000000000;
    if (v4 != 0x64656C62616E65)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    if (v4 != 0x6E4F646563726F66)
    {
LABEL_34:
      v7 = sub_24E5D2FE0();
      goto LABEL_35;
    }
  }

  if (v5 != v2)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_24E5C02F4()
{
  v1 = *v0;
  sub_24E5D3000();
  MEMORY[0x253043A10](v1);
  return sub_24E5D3020();
}

uint64_t sub_24E5C0368()
{
  v1 = *v0;
  sub_24E5D3000();
  MEMORY[0x253043A10](v1);
  return sub_24E5D3020();
}

unint64_t sub_24E5C03AC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24E5C3838(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t static GameModeCCUIStatusBundleInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F20E7D0 = a1;
  return result;
}

uint64_t sub_24E5C064C()
{
  v1 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isSystemService;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E5C0690(char a1)
{
  v3 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isSystemService;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24E5C0740()
{
  v1 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isAAAGame;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E5C0784(char a1)
{
  v3 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isAAAGame;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24E5C0834()
{
  v1 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_usedRecently;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E5C0878(char a1)
{
  v3 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_usedRecently;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24E5C0928()
{
  v1 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E5C096C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_state;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id GameModeCCUIStatusBundleInfo.__allocating_init(executableDisplayName:bundleIdentifier:isSystemService:isAAAGame:usedRecently:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_executableDisplayName];
  *v18 = a1;
  v18[1] = a2;
  v19 = &v17[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_bundleIdentifier];
  *v19 = a3;
  v19[1] = a4;
  v17[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isSystemService] = a5;
  v17[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isAAAGame] = a6;
  v17[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_usedRecently] = a7;
  *&v17[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_state] = a8;
  v21.receiver = v17;
  v21.super_class = v8;
  return objc_msgSendSuper2(&v21, sel_init);
}

id GameModeCCUIStatusBundleInfo.init(executableDisplayName:bundleIdentifier:isSystemService:isAAAGame:usedRecently:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t a8)
{
  v9 = &v8[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_executableDisplayName];
  *v9 = a1;
  v9[1] = a2;
  v10 = &v8[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_bundleIdentifier];
  *v10 = a3;
  v10[1] = a4;
  v8[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isSystemService] = a5;
  v8[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isAAAGame] = a6;
  v8[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_usedRecently] = a7;
  *&v8[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_state] = a8;
  v12.receiver = v8;
  v12.super_class = type metadata accessor for GameModeCCUIStatusBundleInfo();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_24E5C0C44()
{
  v1 = (v0 + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_executableDisplayName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = (v0 + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_bundleIdentifier);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isSystemService;
  swift_beginAccess();
  LOBYTE(v7) = *(v0 + v7);
  v8 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_usedRecently;
  swift_beginAccess();
  LOBYTE(v8) = *(v0 + v8);
  v9 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_state;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = type metadata accessor for GameModeCCUIStatusBundle();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_executableDisplayName];
  *v13 = v3;
  v13[1] = v2;
  v14 = &v12[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_bundleIdentifier];
  *v14 = v6;
  v14[1] = v5;
  v12[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_isSystemService] = v7;
  v12[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_usedRecently] = v8;
  *&v12[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_state] = v10;
  v16.receiver = v12;
  v16.super_class = v11;

  return objc_msgSendSuper2(&v16, sel_init);
}

id GameModeCCUIStatusBundle.__allocating_init(executableDisplayName:bundleIdentifier:isSystemService:usedRecently:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_executableDisplayName];
  *v16 = a1;
  v16[1] = a2;
  v17 = &v15[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_bundleIdentifier];
  *v17 = a3;
  v17[1] = a4;
  v15[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_isSystemService] = a5;
  v15[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_usedRecently] = a6;
  *&v15[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_state] = a7;
  v19.receiver = v15;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_24E5C0E58(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_executableDisplayName);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_24E5D2CB0();

  v7 = sub_24E5D2CB0();
  [a1 encodeObject:v6 forKey:v7];

  v8 = (v1 + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_bundleIdentifier);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];

  v11 = sub_24E5D2CB0();

  v12 = sub_24E5D2CB0();
  [a1 encodeObject:v11 forKey:v12];

  v13 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isSystemService;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = sub_24E5D2CB0();
  [a1 encodeBool:v14 forKey:v15];

  v16 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_usedRecently;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = sub_24E5D2CB0();
  [a1 encodeBool:v17 forKey:v18];

  v19 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_state;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v21 = sub_24E5D2CB0();
  [a1 encodeInteger:v20 forKey:v21];

  v22 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isAAAGame;
  swift_beginAccess();
  v23 = *(v1 + v22);
  v24 = sub_24E5D2CB0();
  [a1 encodeBool:v23 forKey:v24];
}

uint64_t GameModeCCUIStatusBundleInfo.init(coder:)(void *a1)
{
  v2 = sub_24E5D2CB0();
  [a1 decodeIntegerForKey_];

  sub_24E5C3890();
  v3 = sub_24E5D2E50();
  if (v3)
  {
    v6 = 0;
    v4 = v3;
    sub_24E5D2CC0();
  }

  type metadata accessor for GameModeCCUIStatusBundleInfo();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t static GameModeCCUIStatusInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F20E7D1 = a1;
  return result;
}

id sub_24E5C1718()
{
  v1 = *(v0 + OBJC_IVAR____TtC10GamePolicy22GameModeCCUIStatusInfo_state);
  v2 = OBJC_IVAR____TtC10GamePolicy22GameModeCCUIStatusInfo_bundles;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    v4 = sub_24E5D2F90();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_11:
    v27 = type metadata accessor for GameModeCCUIStatus();
    v28 = objc_allocWithZone(v27);
    v28[OBJC_IVAR____TtC10GamePolicy18GameModeCCUIStatus_state] = v1;
    *&v28[OBJC_IVAR____TtC10GamePolicy18GameModeCCUIStatus_bundles] = v5;
    v33.receiver = v28;
    v33.super_class = v27;
    return objc_msgSendSuper2(&v33, sel_init);
  }

  v35 = MEMORY[0x277D84F90];

  result = sub_24E5D2F50();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v29 = v1;
    v7 = 0;
    v30 = v3 & 0xC000000000000001;
    v31 = v4;
    v32 = v3;
    do
    {
      if (v30)
      {
        v8 = MEMORY[0x253043910](v7, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = &v8[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_executableDisplayName];
      swift_beginAccess();
      v12 = *v10;
      v11 = *(v10 + 1);
      v13 = &v9[OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_bundleIdentifier];
      swift_beginAccess();
      v15 = *v13;
      v14 = v13[1];
      v16 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isSystemService;
      swift_beginAccess();
      v17 = v9[v16];
      v18 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_usedRecently;
      swift_beginAccess();
      v19 = v9[v18];
      v20 = OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_state;
      swift_beginAccess();
      v21 = *&v9[v20];
      v22 = type metadata accessor for GameModeCCUIStatusBundle();
      v23 = objc_allocWithZone(v22);
      v24 = &v23[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_executableDisplayName];
      *v24 = v12;
      v24[1] = v11;
      v25 = &v23[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_bundleIdentifier];
      *v25 = v15;
      v25[1] = v14;
      v23[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_isSystemService] = v17;
      v23[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_usedRecently] = v19;
      *&v23[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_state] = v21;
      v34.receiver = v23;
      v34.super_class = v22;

      objc_msgSendSuper2(&v34, sel_init);

      sub_24E5D2F30();
      v26 = *(v35 + 16);
      sub_24E5D2F60();
      sub_24E5D2F70();
      sub_24E5D2F40();
      v3 = v32;
    }

    while (v31 != v7);

    v5 = v35;
    v1 = v29;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id sub_24E5C19D8(_BYTE *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v9[*a3] = *a1;
  *&v9[*a4] = a2;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t GameModeCCUIStatusState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x664F646563726F66;
  v3 = 0x6C62616C69617661;
  v4 = 0x64656C62616E65;
  if (v1 != 3)
  {
    v4 = 0x6E4F646563726F66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x616C696176616E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t GameModeCCUIStatusInfo.init(coder:)(void *a1)
{
  sub_24E5C3890();
  v2 = sub_24E5D2E50();
  if (v2)
  {
    rawValue._countAndFlagsBits = 0;
    v3 = v2;
    sub_24E5D2CC0();
  }

  type metadata accessor for GameModeCCUIStatusInfo();
  swift_deallocPartialClassInstance();
  return 0;
}

GamePolicy::GameModeCCUIStatusState_optional __swiftcall GameModeCCUIStatusState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24E5D2FC0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24E5C1D94(uint64_t a1, void (*a2)(uint64_t))
{
  v10 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  sub_24E5D2F50();
  if (!v4)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    v6 = sub_24E5C4788(i, v9);
    a2(v6);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_24E5D2F30();
    v7 = *(v10 + 16);
    sub_24E5D2F60();
    sub_24E5D2F70();
    sub_24E5D2F40();
    if (!--v4)
    {
      return v10;
    }
  }

  return 0;
}

uint64_t sub_24E5C1F48()
{
  v1 = *v0;
  sub_24E5D3000();
  sub_24E5D2D10();

  return sub_24E5D3020();
}

uint64_t sub_24E5C2034()
{
  *v0;
  *v0;
  sub_24E5D2D10();
}

uint64_t sub_24E5C210C()
{
  v1 = *v0;
  sub_24E5D3000();
  sub_24E5D2D10();

  return sub_24E5D3020();
}

void sub_24E5C2200(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x664F646563726F66;
  v4 = 0x6C62616C69617661;
  v5 = 0xE700000000000000;
  v6 = 0x64656C62616E65;
  if (v2 != 3)
  {
    v6 = 0x6E4F646563726F66;
    v5 = 0xE800000000000000;
  }

  if (v2 == 2)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0xEB00000000656C62;
  if (*v1)
  {
    v3 = 0x616C696176616E75;
  }

  else
  {
    v7 = 0xE900000000000066;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (*v1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t static GameModeCCUIStatusBundle.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F20E7D2 = a1;
  return result;
}

uint64_t sub_24E5C2490(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_24E5C2504(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_24E5C2564(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_24E5C2620()
{
  v1 = OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_isSystemService;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E5C2664(char a1)
{
  v3 = OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_isSystemService;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24E5C2714()
{
  v1 = OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_usedRecently;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E5C2758(char a1)
{
  v3 = OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_usedRecently;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24E5C2808()
{
  v1 = OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E5C284C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_state;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id GameModeCCUIStatusBundle.init(executableDisplayName:bundleIdentifier:isSystemService:usedRecently:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  v8 = &v7[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_executableDisplayName];
  *v8 = a1;
  v8[1] = a2;
  v9 = &v7[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_bundleIdentifier];
  *v9 = a3;
  v9[1] = a4;
  v7[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_isSystemService] = a5;
  v7[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_usedRecently] = a6;
  *&v7[OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_state] = a7;
  v11.receiver = v7;
  v11.super_class = type metadata accessor for GameModeCCUIStatusBundle();
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_24E5C2974(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_executableDisplayName);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_24E5D2CB0();

  v7 = sub_24E5D2CB0();
  [a1 encodeObject:v6 forKey:v7];

  v8 = (v1 + OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_bundleIdentifier);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];

  v11 = sub_24E5D2CB0();

  v12 = sub_24E5D2CB0();
  [a1 encodeObject:v11 forKey:v12];

  v13 = OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_isSystemService;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = sub_24E5D2CB0();
  [a1 encodeBool:v14 forKey:v15];

  v16 = OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_usedRecently;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = sub_24E5D2CB0();
  [a1 encodeBool:v17 forKey:v18];

  v19 = OBJC_IVAR____TtC10GamePolicy24GameModeCCUIStatusBundle_state;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v21 = sub_24E5D2CB0();
  [a1 encodeInteger:v20 forKey:v21];
}

uint64_t GameModeCCUIStatusBundle.init(coder:)(void *a1)
{
  v2 = sub_24E5D2CB0();
  [a1 decodeIntegerForKey_];

  sub_24E5C3890();
  v3 = sub_24E5D2E50();
  if (v3)
  {
    v6 = 0;
    v4 = v3;
    sub_24E5D2CC0();
  }

  type metadata accessor for GameModeCCUIStatusBundle();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_24E5C2F60(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + *a3 + 8);

  v7 = *(a1 + *a4 + 8);
}

uint64_t static GameModeCCUIStatus.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F20E7D3 = a1;
  return result;
}

uint64_t sub_24E5C3138(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_24E5C31A8(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_24E5C31F8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id sub_24E5C32D4(_BYTE *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v5[*a3] = *a1;
  *&v5[*a4] = a2;
  v7.receiver = v5;
  v7.super_class = a5();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_24E5C3348(void *a1, void *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  if (*(v4 + *a2) > 1u)
  {
    *(v4 + *a2);
  }

  v8 = sub_24E5D2CB0();

  v9 = sub_24E5D2CB0();
  [a1 encodeObject:v8 forKey:v9];

  v10 = *a3;
  v11 = swift_beginAccess();
  v12 = *(v4 + v10);
  a4(v11);

  v13 = sub_24E5D2DB0();

  v14 = sub_24E5D2CB0();
  [a1 encodeObject:v13 forKey:v14];
}

uint64_t GameModeCCUIStatus.init(coder:)(void *a1)
{
  sub_24E5C3890();
  v2 = sub_24E5D2E50();
  if (v2)
  {
    rawValue._countAndFlagsBits = 0;
    v3 = v2;
    sub_24E5D2CC0();
  }

  type metadata accessor for GameModeCCUIStatus();
  swift_deallocPartialClassInstance();
  return 0;
}

id GameModeCCUIStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_24E5C37F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_24E5C3838(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24E5C3890()
{
  result = qword_281254C80;
  if (!qword_281254C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281254C80);
  }

  return result;
}

unint64_t sub_24E5C3928()
{
  result = qword_27F20E860;
  if (!qword_27F20E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20E860);
  }

  return result;
}

unint64_t sub_24E5C3980()
{
  result = qword_27F20E868;
  if (!qword_27F20E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20E868);
  }

  return result;
}

uint64_t keypath_get_6Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_get_10Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_11Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_16Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_17Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_20Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t getEnumTagSinglePayload for GameModeCCUIStatusState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GameModeCCUIStatusState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24E5C4788(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *GamingMetadataModel.launcher.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t GamingMetadataModel.init(dictionaryRepresentation:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24E5D2C40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v9 = sub_24E5C60EC(0x726568636E75614CLL, 0xE800000000000000), (v10 & 1) != 0) && (sub_24E5C4788(*(a1 + 56) + 32 * v9, v24), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E870, &qword_24E5D4A40), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v23;
    v12 = objc_allocWithZone(type metadata accessor for GamingMetadataModel.Launcher());
    v13 = GamingMetadataModel.Launcher.init(dictionaryRepresentation:)(v11);
  }

  else
  {
    v13 = 0;
  }

  *(v2 + 16) = v13;
  if (!*(a1 + 16) || (v14 = sub_24E5C60EC(0x7963696C6F50, 0xE600000000000000), (v15 & 1) == 0))
  {

    *(v2 + 24) = 0;
LABEL_12:
    if (*(v2 + 16))
    {
      return v2;
    }

    goto LABEL_13;
  }

  sub_24E5C4788(*(a1 + 56) + 32 * v14, v24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E870, &qword_24E5D4A40);
  if (swift_dynamicCast())
  {
    v16 = v23;
    type metadata accessor for GamingMetadataModel.Policy();
    swift_allocObject();
    v17 = GamingMetadataModel.Policy.init(dictionaryRepresentation:)(v16);
    *(v2 + 24) = v17;
    if (v17)
    {
      return v2;
    }

    goto LABEL_12;
  }

  *(v2 + 24) = 0;
  if (*(v2 + 16))
  {
    return v2;
  }

LABEL_13:
  sub_24E5D2C20();
  v18 = sub_24E5D2C30();
  v19 = sub_24E5D2E00();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24E5B8000, v18, v19, "Invalid GamingMetadataModel state - no launcher or policy defined.", v20, 2u);
    MEMORY[0x253044050](v20, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

uint64_t sub_24E5C4BB0()
{
  sub_24E5D2F00();

  type metadata accessor for GamingMetadataModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E878, &qword_24E5D4A48);
  v1 = sub_24E5D2CE0();
  MEMORY[0x253043730](v1);

  MEMORY[0x253043730](0xD000000000000011, 0x800000024E5D60A0);
  v6 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E880, &qword_24E5D4A50);
  v2 = sub_24E5D2CF0();
  MEMORY[0x253043730](v2);

  MEMORY[0x253043730](0xD000000000000011, 0x800000024E5D60C0);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E888, &qword_24E5D4A58);
  v4 = sub_24E5D2CF0();
  MEMORY[0x253043730](v4);

  MEMORY[0x253043730](8194604, 0xE300000000000000);
  return 60;
}

uint64_t GamingMetadataModel.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t GamingMetadataModel.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t GamingMetadataModel.Policy.ValueType.hashValue.getter()
{
  v1 = *v0;
  sub_24E5D3000();
  MEMORY[0x253043A10](v1);
  return sub_24E5D3020();
}

uint64_t sub_24E5C4E4C()
{
  v1 = *v0;
  sub_24E5D3000();
  MEMORY[0x253043A10](v1);
  return sub_24E5D3020();
}

uint64_t sub_24E5C4EC0()
{
  v1 = *v0;
  sub_24E5D3000();
  MEMORY[0x253043A10](v1);
  return sub_24E5D3020();
}

uint64_t sub_24E5C4F04()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_24E5C60EC(0xD000000000000011, 0x800000024E5D60E0);
  if (v3)
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_24E5C4F88()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_24E5C60EC(0xD000000000000011, 0x800000024E5D60E0);
  if (v3)
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_24E5C500C()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_24E5C60EC(0x4E737365636F7250, 0xEC00000073656D61);
  if (v3)
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_24E5C5094()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_24E5C60EC(0x4E737365636F7250, 0xEC00000073656D61);
  if (v3)
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_24E5C511C()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_24E5C60EC(0xD000000000000013, 0x800000024E5D6100);
  if (v3)
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_24E5C51A0()
{
  v1 = *(v0 + 24);
  if (!*(v1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_24E5C60EC(0xD000000000000013, 0x800000024E5D6100);
  if (v3)
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  return v4;
}

void *GamingMetadataModel.Policy.init(dictionaryRepresentation:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_24E5C60EC(0x776F6C6C41, 0xE500000000000000), (v5 & 1) != 0) && (sub_24E5C4788(*(a1 + 56) + 32 * v4, v18), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E898, &qword_24E5D4A68), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v17;
  }

  else
  {
    v6 = sub_24E5C6288(MEMORY[0x277D84F90]);
  }

  v2[2] = v6;
  if (*(a1 + 16) && (v7 = sub_24E5C60EC(0x6B636F6C42, 0xE500000000000000), (v8 & 1) != 0) && (sub_24E5C4788(*(a1 + 56) + 32 * v7, v18), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E898, &qword_24E5D4A68), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v17;
  }

  else
  {
    v9 = sub_24E5C6288(MEMORY[0x277D84F90]);
  }

  v2[3] = v9;
  if (*(a1 + 16) && (v10 = sub_24E5C60EC(0xD00000000000001ALL, 0x800000024E5D6120), (v11 & 1) != 0) && (sub_24E5C4788(*(a1 + 56) + 32 * v10, v18), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E890, &qword_24E5D4A60), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v17;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v2[4] = v12;
  if (!*(a1 + 16) || (v13 = sub_24E5C60EC(0xD00000000000001BLL, 0x800000024E5D6140), (v14 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_24E5C4788(*(a1 + 56) + 32 * v13, v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E890, &qword_24E5D4A60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v15 = v17;
LABEL_22:
  v2[5] = v15;
  return v2;
}

uint64_t sub_24E5C549C()
{
  v1 = v0;
  sub_24E5D2F00();
  MEMORY[0x253043730](60, 0xE100000000000000);
  type metadata accessor for GamingMetadataModel.Policy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E8A0, &qword_24E5D4A70);
  v2 = sub_24E5D2CE0();
  MEMORY[0x253043730](v2);

  MEMORY[0x253043730](0xD000000000000014, 0x800000024E5D6160);
  v3 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E890, &qword_24E5D4A60);
  v4 = MEMORY[0x277D837D0];
  v5 = sub_24E5D2C70();
  v7 = v6;

  MEMORY[0x253043730](v5, v7);

  MEMORY[0x253043730](0xD000000000000012, 0x800000024E5D6180);
  v8 = v1[3];

  v9 = sub_24E5D2C70();
  v11 = v10;

  MEMORY[0x253043730](v9, v11);

  MEMORY[0x253043730](0xD000000000000023, 0x800000024E5D61A0);
  v12 = v1[4];

  v14 = MEMORY[0x2530437D0](v13, v4);
  v16 = v15;

  MEMORY[0x253043730](v14, v16);

  MEMORY[0x253043730](0xD000000000000024, 0x800000024E5D61D0);
  v17 = v1[5];

  v19 = MEMORY[0x2530437D0](v18, v4);
  v21 = v20;

  MEMORY[0x253043730](v19, v21);

  MEMORY[0x253043730](8194604, 0xE300000000000000);
  return 0;
}

void *GamingMetadataModel.Policy.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t GamingMetadataModel.Policy.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void sub_24E5C57C0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___GamingMetadataModel_name);
  v4 = *(v1 + OBJC_IVAR___GamingMetadataModel_name + 8);
  v5 = sub_24E5D2CB0();
  v6 = sub_24E5D2CB0();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___GamingMetadataModel_developer);
  v8 = *(v1 + OBJC_IVAR___GamingMetadataModel_developer + 8);
  v9 = sub_24E5D2CB0();
  v10 = sub_24E5D2CB0();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___GamingMetadataModel_bundleIdentifier);
  v12 = *(v1 + OBJC_IVAR___GamingMetadataModel_bundleIdentifier + 8);
  v13 = sub_24E5D2CB0();
  v14 = sub_24E5D2CB0();
  [a1 encodeObject:v13 forKey:v14];
}

id GamingMetadataModel.Launcher.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24E5C638C(a1);

  return v4;
}

id GamingMetadataModel.Launcher.init(coder:)(void *a1)
{
  v2 = sub_24E5C638C(a1);

  return v2;
}

uint64_t GamingMetadataModel.Launcher.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___GamingMetadataModel_name);
  v2 = *(v0 + OBJC_IVAR___GamingMetadataModel_name + 8);

  return v1;
}

uint64_t GamingMetadataModel.Launcher.developer.getter()
{
  v1 = *(v0 + OBJC_IVAR___GamingMetadataModel_developer);
  v2 = *(v0 + OBJC_IVAR___GamingMetadataModel_developer + 8);

  return v1;
}

uint64_t GamingMetadataModel.Launcher.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___GamingMetadataModel_bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___GamingMetadataModel_bundleIdentifier + 8);

  return v1;
}

id GamingMetadataModel.Launcher.init(dictionaryRepresentation:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_24E5C60EC(1701667150, 0xE400000000000000);
    if (v5)
    {
      sub_24E5C4788(*(a1 + 56) + 32 * v4, v23);
      if (swift_dynamicCast())
      {
        v6 = v22;
        v7 = &v2[OBJC_IVAR___GamingMetadataModel_name];
        *v7 = v21;
        *(v7 + 1) = v6;
        if (*(a1 + 16) && (v8 = sub_24E5C60EC(0x65706F6C65766544, 0xE900000000000072), (v9 & 1) != 0) && (sub_24E5C4788(*(a1 + 56) + 32 * v8, v23), (swift_dynamicCast() & 1) != 0))
        {
          v10 = v22;
          v11 = &v2[OBJC_IVAR___GamingMetadataModel_developer];
          *v11 = v21;
          *(v11 + 1) = v10;
          if (*(a1 + 16) && (v12 = sub_24E5C60EC(0xD000000000000010, 0x800000024E5D6200), (v13 & 1) != 0))
          {
            sub_24E5C4788(*(a1 + 56) + 32 * v12, v23);

            if (swift_dynamicCast())
            {
              v14 = v22;
              v15 = &v2[OBJC_IVAR___GamingMetadataModel_bundleIdentifier];
              *v15 = v21;
              *(v15 + 1) = v14;
              v20.receiver = v2;
              v20.super_class = type metadata accessor for GamingMetadataModel.Launcher();
              return objc_msgSendSuper2(&v20, sel_init);
            }
          }

          else
          {
          }

          v18 = *(v7 + 1);

          v19 = *&v2[OBJC_IVAR___GamingMetadataModel_developer + 8];
        }

        else
        {

          v17 = *(v7 + 1);
        }
      }
    }
  }

  type metadata accessor for GamingMetadataModel.Launcher();
  swift_deallocPartialClassInstance();
  return 0;
}

id GamingMetadataModel.Launcher.__allocating_init(name:developer:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___GamingMetadataModel_name];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR___GamingMetadataModel_developer];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR___GamingMetadataModel_bundleIdentifier];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id GamingMetadataModel.Launcher.init(name:developer:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR___GamingMetadataModel_name];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v6[OBJC_IVAR___GamingMetadataModel_developer];
  *v8 = a3;
  *(v8 + 1) = a4;
  v9 = &v6[OBJC_IVAR___GamingMetadataModel_bundleIdentifier];
  *v9 = a5;
  *(v9 + 1) = a6;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for GamingMetadataModel.Launcher();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_24E5C5E5C()
{
  v1 = v0;
  sub_24E5D2F00();
  MEMORY[0x253043730](60, 0xE100000000000000);
  type metadata accessor for GamingMetadataModel.Launcher();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E8C0, &qword_24E5D4A78);
  v2 = sub_24E5D2CE0();
  MEMORY[0x253043730](v2);

  MEMORY[0x253043730](0x202020200A7B203ELL, 0xEF203D20656D616ELL);
  MEMORY[0x253043730](*(v1 + OBJC_IVAR___GamingMetadataModel_name), *(v1 + OBJC_IVAR___GamingMetadataModel_name + 8));
  MEMORY[0x253043730](0xD000000000000012, 0x800000024E5D6220);
  MEMORY[0x253043730](*(v1 + OBJC_IVAR___GamingMetadataModel_developer), *(v1 + OBJC_IVAR___GamingMetadataModel_developer + 8));
  MEMORY[0x253043730](0xD000000000000019, 0x800000024E5D6240);
  MEMORY[0x253043730](*(v1 + OBJC_IVAR___GamingMetadataModel_bundleIdentifier), *(v1 + OBJC_IVAR___GamingMetadataModel_bundleIdentifier + 8));
  MEMORY[0x253043730](8194604, 0xE300000000000000);
  return 0;
}

id GamingMetadataModel.Launcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GamingMetadataModel.Launcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamingMetadataModel.Launcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E5C60EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24E5D3000();
  sub_24E5D2D10();
  v6 = sub_24E5D3020();

  return sub_24E5C61D0(a1, a2, v6);
}

unint64_t sub_24E5C61D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24E5D2FE0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24E5C6288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F20E8D0, &qword_24E5D4C48);
    v3 = sub_24E5D2FA0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24E5C60EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_24E5C638C(void *a1)
{
  v3 = sub_24E5D2CB0();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_24E5D2EE0();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v19;
      v5 = v20;
      goto LABEL_9;
    }
  }

  else
  {
    sub_24E5BFE2C(&v24);
  }

  v5 = 0xE700000000000000;
  v6 = 0x6E776F6E6B6E55;
LABEL_9:
  v7 = &v1[OBJC_IVAR___GamingMetadataModel_name];
  *v7 = v6;
  v7[1] = v5;
  v8 = sub_24E5D2CB0();
  v9 = [a1 decodeObjectForKey_];

  if (v9)
  {
    sub_24E5D2EE0();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast())
    {
      v11 = v19;
      v10 = v20;
      goto LABEL_17;
    }
  }

  else
  {
    sub_24E5BFE2C(&v24);
  }

  v10 = 0xE700000000000000;
  v11 = 0x6E776F6E6B6E55;
LABEL_17:
  v12 = &v1[OBJC_IVAR___GamingMetadataModel_developer];
  *v12 = v11;
  v12[1] = v10;
  v13 = sub_24E5D2CB0();
  v14 = [a1 decodeObjectForKey_];

  if (v14)
  {
    sub_24E5D2EE0();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (!*(&v23 + 1))
  {
    sub_24E5BFE2C(&v24);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v15 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_25;
  }

  v15 = v19;
  v16 = v20;
LABEL_25:
  v17 = &v1[OBJC_IVAR___GamingMetadataModel_bundleIdentifier];
  *v17 = v15;
  *(v17 + 1) = v16;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for GamingMetadataModel.Launcher();
  return objc_msgSendSuper2(&v21, sel_init);
}

unint64_t sub_24E5C662C()
{
  result = qword_27F20E8C8;
  if (!qword_27F20E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20E8C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GamingMetadataModel.Policy.ValueType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GamingMetadataModel.Policy.ValueType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24E5C6A8C()
{
  result = sub_24E5D2CB0();
  qword_281254C20 = result;
  return result;
}

id GamingMetadataBlobDidChangeNotification.getter()
{
  if (qword_281254C18 != -1)
  {
    swift_once();
  }

  v1 = qword_281254C20;

  return v1;
}

uint64_t sub_24E5C6D00()
{
  v1 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_launchersMappedToCriticalServices;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E5C6D44(char a1)
{
  v3 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_launchersMappedToCriticalServices;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id GamingMetadataBlob.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GamingMetadataBlob.init()()
{
  v1 = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processBundleIdentifierAllowList] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processBundleIdentifierBlockList] = v1;
  *&v0[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processCriticalServiceIdentifierList] = v1;
  *&v0[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processCriticalServiceProcessNameList] = v1;
  v0[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_launchersMappedToCriticalServices] = 0;
  *&v0[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processNameAllowList] = v1;
  *&v0[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processPartialPathAllowList] = v1;
  *&v0[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processPartialPathBlockList] = v1;
  *&v0[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processNameBlockList] = v1;
  *&v0[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_launchers] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_overlayInvocableAllowList] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for GamingMetadataBlob();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_24E5C7218(void *a1)
{
  v3 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processBundleIdentifierAllowList;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v5 = sub_24E5D2DE0();

  v6 = sub_24E5D2CB0();
  [a1 encodeObject:v5 forKey:v6];

  v7 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processBundleIdentifierBlockList;
  swift_beginAccess();
  v8 = *(v1 + v7);

  v9 = sub_24E5D2DE0();

  v10 = sub_24E5D2CB0();
  [a1 encodeObject:v9 forKey:v10];

  v11 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processCriticalServiceIdentifierList;
  swift_beginAccess();
  v12 = *(v1 + v11);

  v13 = sub_24E5D2DE0();

  v14 = sub_24E5D2CB0();
  [a1 encodeObject:v13 forKey:v14];

  v15 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processCriticalServiceProcessNameList;
  swift_beginAccess();
  v16 = *(v1 + v15);

  v17 = sub_24E5D2DE0();

  v18 = sub_24E5D2CB0();
  [a1 encodeObject:v17 forKey:v18];

  v19 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_launchersMappedToCriticalServices;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v21 = sub_24E5D2CB0();
  [a1 encodeBool:v20 forKey:v21];

  v22 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processNameAllowList;
  swift_beginAccess();
  v23 = *(v1 + v22);

  v24 = sub_24E5D2DE0();

  v25 = sub_24E5D2CB0();
  [a1 encodeObject:v24 forKey:v25];

  v26 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processPartialPathAllowList;
  swift_beginAccess();
  v27 = *(v1 + v26);

  v28 = sub_24E5D2DE0();

  v29 = sub_24E5D2CB0();
  [a1 encodeObject:v28 forKey:v29];

  v30 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processPartialPathBlockList;
  swift_beginAccess();
  v31 = *(v1 + v30);

  v32 = sub_24E5D2DE0();

  v33 = sub_24E5D2CB0();
  [a1 encodeObject:v32 forKey:v33];

  v34 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processNameBlockList;
  swift_beginAccess();
  v35 = *(v1 + v34);

  v36 = sub_24E5D2DE0();

  v37 = sub_24E5D2CB0();
  [a1 encodeObject:v36 forKey:v37];

  v38 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_launchers;
  swift_beginAccess();
  v39 = *(v1 + v38);
  type metadata accessor for GamingMetadataModel.Launcher();

  v40 = sub_24E5D2DB0();

  v41 = sub_24E5D2CB0();
  [a1 encodeObject:v40 forKey:v41];

  v42 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_overlayInvocableAllowList;
  swift_beginAccess();
  v43 = *(v1 + v42);

  v44 = sub_24E5D2DE0();

  v45 = sub_24E5D2CB0();
  [a1 encodeObject:v44 forKey:v45];
}

id GamingMetadataBlob.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24E5C7AB0(a1);

  return v4;
}

id GamingMetadataBlob.init(coder:)(void *a1)
{
  v2 = sub_24E5C7AB0(a1);

  return v2;
}

id GamingMetadataBlob.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamingMetadataBlob();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E5C79D8()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_launchersMappedToCriticalServices;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_24E5C7A68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *v3;
  v5 = *a3;
  swift_beginAccess();
  v6 = *(v4 + v5);
}

id sub_24E5C7AB0(void *a1)
{
  v3 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processBundleIdentifierAllowList;
  v4 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processBundleIdentifierAllowList] = MEMORY[0x277D84FA0];
  v5 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processBundleIdentifierBlockList;
  *&v1[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processBundleIdentifierBlockList] = v4;
  v63 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processCriticalServiceIdentifierList;
  *&v1[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processCriticalServiceIdentifierList] = v4;
  v64 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processCriticalServiceProcessNameList;
  *&v1[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processCriticalServiceProcessNameList] = v4;
  v71 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_launchersMappedToCriticalServices;
  v1[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_launchersMappedToCriticalServices] = 0;
  v65 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processNameAllowList;
  *&v1[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processNameAllowList] = v4;
  v66 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processPartialPathAllowList;
  *&v1[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processPartialPathAllowList] = v4;
  v67 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processPartialPathBlockList;
  *&v1[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processPartialPathBlockList] = v4;
  v68 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processNameBlockList;
  *&v1[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_processNameBlockList] = v4;
  v6 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_launchers;
  *&v1[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_launchers] = MEMORY[0x277D84F90];
  v69 = v6;
  v70 = OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_overlayInvocableAllowList;
  *&v1[OBJC_IVAR____TtC10GamePolicy18GamingMetadataBlob_overlayInvocableAllowList] = v4;
  v7 = sub_24E5D2CB0();
  v8 = [a1 containsValueForKey_];

  if (v8)
  {
    v9 = sub_24E5D2CB0();
    v10 = [a1 decodeObjectForKey_];

    if (v10)
    {
      sub_24E5D2EE0();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    if (*(&v75 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E940, &qword_24E5D4CC0);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        v11 = *&v1[v3];
        *&v1[v3] = v72;
      }
    }

    else
    {
      sub_24E5BFE2C(&v76);
    }
  }

  v12 = sub_24E5D2CB0();
  v13 = [a1 containsValueForKey_];

  if (v13)
  {
    v14 = sub_24E5D2CB0();
    v15 = [a1 byte_27968598D];

    if (v15)
    {
      sub_24E5D2EE0();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    if (*(&v75 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E940, &qword_24E5D4CC0);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        v16 = *&v1[v5];
        *&v1[v5] = v72;
      }
    }

    else
    {
      sub_24E5BFE2C(&v76);
    }
  }

  v17 = sub_24E5D2CB0();
  v18 = [a1 containsValueForKey_];

  if (v18)
  {
    v19 = sub_24E5D2CB0();
    v20 = [a1 byte_27968598D];

    if (v20)
    {
      sub_24E5D2EE0();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    if (*(&v75 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E940, &qword_24E5D4CC0);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        v21 = *&v1[v63];
        *&v1[v63] = v72;
      }
    }

    else
    {
      sub_24E5BFE2C(&v76);
    }
  }

  v22 = sub_24E5D2CB0();
  v23 = [a1 containsValueForKey_];

  if (v23)
  {
    v24 = sub_24E5D2CB0();
    v25 = [a1 byte_27968598D];

    if (v25)
    {
      sub_24E5D2EE0();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    if (*(&v75 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E940, &qword_24E5D4CC0);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        v26 = *&v1[v64];
        *&v1[v64] = v72;
      }
    }

    else
    {
      sub_24E5BFE2C(&v76);
    }
  }

  v27 = sub_24E5D2CB0();
  v28 = [a1 containsValueForKey_];

  if (v28)
  {
    v29 = sub_24E5D2CB0();
    v30 = [a1 decodeBoolForKey_];

    swift_beginAccess();
    v1[v71] = v30;
  }

  v31 = sub_24E5D2CB0();
  v32 = [a1 containsValueForKey_];

  if (v32)
  {
    v33 = sub_24E5D2CB0();
    v34 = [a1 byte_27968598D];

    if (v34)
    {
      sub_24E5D2EE0();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    if (*(&v75 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E940, &qword_24E5D4CC0);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        v35 = *&v1[v65];
        *&v1[v65] = v72;
      }
    }

    else
    {
      sub_24E5BFE2C(&v76);
    }
  }

  v36 = sub_24E5D2CB0();
  v37 = [a1 containsValueForKey_];

  if (v37)
  {
    v38 = sub_24E5D2CB0();
    v39 = [a1 byte_27968598D];

    if (v39)
    {
      sub_24E5D2EE0();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    if (*(&v75 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E940, &qword_24E5D4CC0);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        v40 = *&v1[v66];
        *&v1[v66] = v72;
      }
    }

    else
    {
      sub_24E5BFE2C(&v76);
    }
  }

  v41 = sub_24E5D2CB0();
  v42 = [a1 containsValueForKey_];

  if (v42)
  {
    v43 = sub_24E5D2CB0();
    v44 = [a1 byte_27968598D];

    if (v44)
    {
      sub_24E5D2EE0();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    if (*(&v75 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E940, &qword_24E5D4CC0);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        v45 = *&v1[v67];
        *&v1[v67] = v72;
      }
    }

    else
    {
      sub_24E5BFE2C(&v76);
    }
  }

  v46 = sub_24E5D2CB0();
  v47 = [a1 containsValueForKey_];

  if (v47)
  {
    v48 = sub_24E5D2CB0();
    v49 = [a1 byte_27968598D];

    if (v49)
    {
      sub_24E5D2EE0();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    if (*(&v75 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E940, &qword_24E5D4CC0);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        v50 = *&v1[v68];
        *&v1[v68] = v72;
      }
    }

    else
    {
      sub_24E5BFE2C(&v76);
    }
  }

  v51 = sub_24E5D2CB0();
  v52 = [a1 containsValueForKey_];

  if (v52)
  {
    v53 = sub_24E5D2CB0();
    v54 = [a1 byte_27968598D];

    if (v54)
    {
      sub_24E5D2EE0();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    if (*(&v75 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E948, &qword_24E5D4CC8);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        v55 = *&v1[v69];
        *&v1[v69] = v72;
      }
    }

    else
    {
      sub_24E5BFE2C(&v76);
    }
  }

  v56 = sub_24E5D2CB0();
  v57 = [a1 containsValueForKey_];

  if (v57)
  {
    v58 = sub_24E5D2CB0();
    v59 = [a1 byte_27968598D];

    if (v59)
    {
      sub_24E5D2EE0();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    if (*(&v75 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E940, &qword_24E5D4CC0);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        v60 = *&v1[v70];
        *&v1[v70] = v73;
      }
    }

    else
    {
      sub_24E5BFE2C(&v76);
    }
  }

  v61 = type metadata accessor for GamingMetadataBlob();
  v78.receiver = v1;
  v78.super_class = v61;
  return objc_msgSendSuper2(&v78, sel_init);
}

BOOL static audit_token_t.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a8 ^ a4) >> 32 == 0;
  if (a4 != a8)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  if (a2 != a6)
  {
    v8 = 0;
  }

  return a1 == a5 && v8;
}

void sub_24E5C8FB8(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v4 = sub_24E5D2CB0();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription);
  v6 = *(v1 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription + 8);
  v7 = sub_24E5D2CB0();
  v8 = sub_24E5D2CB0();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken + 16);
  v13 = *(v1 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken);
  v14 = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithBytes:&v13 length:32];
  v11 = sub_24E5D2CB0();
  [a1 encodeObject:v10 forKey:{v11, v13, v14}];

  v12 = *MEMORY[0x277D85DE8];
}

id GamePolicyTargetDescription.init(coder:)(void *a1)
{
  v2 = v1;
  v25 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E750, &qword_24E5D47E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24E5D4710;
  *(v4 + 32) = sub_24E5BEA3C(0, &unk_281254C90, 0x277CCABB0);
  sub_24E5D2E60();

  if (!v24)
  {
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v5 = [v20[0] unsignedIntValue];

  *&v2[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_euid] = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24E5D4710;
  *(v6 + 32) = sub_24E5BEA3C(0, &qword_281254C80, 0x277CCACA8);
  sub_24E5D2E60();

  if (!v24)
  {
LABEL_8:

    sub_24E5CAFFC(v23, &unk_27F20E760, &qword_24E5D4C40);
LABEL_10:
    type metadata accessor for GamePolicyTargetDescription();
    swift_deallocPartialClassInstance();
    result = 0;
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = sub_24E5D2CD0();
  v9 = v8;

  v10 = &v2[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription];
  *v10 = v7;
  v10[1] = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24E5D4710;
  *(v11 + 32) = sub_24E5BEA3C(0, &unk_281254CB0, 0x277CBEA90);
  sub_24E5D2E60();

  if (!v24)
  {

    sub_24E5CAFFC(v23, &unk_27F20E760, &qword_24E5D4C40);
LABEL_14:
    v18 = v10[1];

    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  v12 = v22;
  *v20 = 0u;
  v21 = 0u;
  [v22 getBytes:v20 length:32];

  v13 = &v2[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken];
  v14 = v21;
  *v13 = *v20;
  *(v13 + 1) = v14;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for GamePolicyTargetDescription();
  v15 = objc_msgSendSuper2(&v19, sel_init);

  result = v15;
LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static GamePolicyTargetDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_euid) != *(a2 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_euid) || (vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(*(a1 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken), *(a2 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken)), vceqq_s32(*(a1 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken + 16), *(a2 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken + 16))))) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription) == *(a2 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription) && *(a1 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription + 8) == *(a2 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription + 8))
  {
    return 1;
  }

  else
  {
    return sub_24E5D2FE0();
  }
}

uint64_t GamePolicyTargetDescription.auditToken.getter()
{
  result = *(v0 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken);
  v2 = *(v0 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken + 8);
  v3 = *(v0 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken + 16);
  v4 = *(v0 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken + 24);
  return result;
}

uint64_t GamePolicyTargetDescription.targetDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription);
  v2 = *(v0 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription + 8);

  return v1;
}

id GamePolicyTargetDescription.__allocating_init(with:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  *&v3[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_euid] = (*(v5 + 16))(v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 24))(v6, v7);
  v9 = &v3[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken];
  *v9 = v8;
  v9[1] = v10;
  v9[2] = v11;
  v9[3] = v12;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 32))(v13, v14);
  v16 = &v3[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription];
  *v16 = v15;
  v16[1] = v17;
  v20.receiver = v3;
  v20.super_class = v1;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v18;
}

id GamePolicyTargetDescription.init(with:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  *&v1[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_euid] = (*(v4 + 16))(v3, v4);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = &v1[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken];
  *v8 = v7;
  v8[1] = v9;
  v8[2] = v10;
  v8[3] = v11;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 32))(v12, v13);
  v15 = &v1[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription];
  *v15 = v14;
  v15[1] = v16;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for GamePolicyTargetDescription();
  v17 = objc_msgSendSuper2(&v19, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

id GamePolicyTargetDescription.__allocating_init(euid:auditToken:targetDescription:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_euid] = a1;
  v16 = &v15[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken];
  *v16 = a2;
  *(v16 + 1) = a3;
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  v17 = &v15[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription];
  *v17 = a6;
  *(v17 + 1) = a7;
  v19.receiver = v15;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, sel_init);
}

id GamePolicyTargetDescription.init(euid:auditToken:targetDescription:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_euid] = a1;
  v8 = &v7[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken];
  *v8 = a2;
  *(v8 + 1) = a3;
  *(v8 + 2) = a4;
  *(v8 + 3) = a5;
  v9 = &v7[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription];
  *v9 = a6;
  *(v9 + 1) = a7;
  v11.receiver = v7;
  v11.super_class = type metadata accessor for GamePolicyTargetDescription();
  return objc_msgSendSuper2(&v11, sel_init);
}

id GamePolicyTargetDescription.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24E5C9B88()
{
  v1 = (*v0 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken);
  result = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return result;
}

uint64_t sub_24E5C9BA4()
{
  v1 = (*v0 + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void sub_24E5C9BF4(void *a1)
{
  v2 = v1;
  sub_24E5CB05C(v1 + OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_target, v28);
  v4 = type metadata accessor for GamePolicyTargetDescription();
  v5 = objc_allocWithZone(v4);
  v6 = v29;
  v7 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  *&v5[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_euid] = (*(v7 + 16))(v6, v7);
  v8 = v29;
  v9 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v10 = (*(v9 + 24))(v8, v9);
  v11 = &v5[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_auditToken];
  *v11 = v10;
  v11[1] = v12;
  v11[2] = v13;
  v11[3] = v14;
  v15 = v29;
  v16 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v17 = (*(v16 + 32))(v15, v16);
  v18 = &v5[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription];
  *v18 = v17;
  v18[1] = v19;
  v27.receiver = v5;
  v27.super_class = v4;
  v20 = objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v21 = sub_24E5D2CB0();
  [a1 encodeObject:v20 forKey:v21];

  v22 = *(v2 + OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_attributes);
  type metadata accessor for GamePolicyAssertion.Attribute();
  v23 = sub_24E5D2DB0();
  v24 = sub_24E5D2CB0();
  [a1 encodeObject:v23 forKey:v24];

  v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v26 = sub_24E5D2CB0();
  [a1 encodeObject:v25 forKey:v26];
}

id GamePolicyAssertion.init(coder:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E750, &qword_24E5D47E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24E5D4480;
  v5 = type metadata accessor for GamePolicyTargetDescription();
  *(v4 + 32) = v5;
  v6 = sub_24E5BEA3C(0, &unk_281254C90, 0x277CCABB0);
  *(v4 + 40) = v6;
  *(v4 + 48) = sub_24E5BEA3C(0, &qword_281254C80, 0x277CCACA8);
  *(v4 + 56) = sub_24E5BEA3C(0, &unk_281254CB0, 0x277CBEA90);
  sub_24E5D2E60();

  if (v18)
  {
    if (swift_dynamicCast())
    {
      v7 = v16;
      v8 = &v2[OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_target];
      *&v2[OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_target + 24] = v5;
      v8[4] = sub_24E5CB4F8(&qword_27F20E9C0);
      *v8 = v7;
      type metadata accessor for GamePolicyAssertion.Attribute();
      v9 = sub_24E5D2E70();
      if (v9)
      {
        *&v2[OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_attributes] = v9;
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_24E5D4710;
        *(v10 + 32) = v6;
        sub_24E5D2E60();

        if (v18)
        {
          if (swift_dynamicCast())
          {
            v11 = [v16 unsignedIntegerValue];

            *&v2[OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_identifier] = v11;
            v15.receiver = v2;
            v15.super_class = type metadata accessor for GamePolicyAssertion();
            v12 = objc_msgSendSuper2(&v15, sel_init);

            return v12;
          }
        }

        else
        {

          sub_24E5CAFFC(v17, &unk_27F20E760, &qword_24E5D4C40);
        }

        __swift_destroy_boxed_opaque_existential_1(v8);
        v14 = *&v2[OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_attributes];
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v8);
      }
    }

    else
    {
    }
  }

  else
  {

    sub_24E5CAFFC(v17, &unk_27F20E760, &qword_24E5D4C40);
  }

  type metadata accessor for GamePolicyAssertion();
  swift_deallocPartialClassInstance();
  return 0;
}

double sub_24E5CA1F4()
{
  qword_27F20E970 = 0;
  result = 0.0;
  xmmword_27F20E950 = 0u;
  unk_27F20E960 = 0u;
  return result;
}

uint64_t static GamePolicyAssertion.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F20E630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_24E5CAF1C(&xmmword_27F20E950, a1);
}

uint64_t static GamePolicyAssertion.delegate.setter(uint64_t a1)
{
  if (qword_27F20E630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_24E5CAF8C(a1, &xmmword_27F20E950);
  swift_endAccess();
  return sub_24E5CAFFC(a1, &qword_27F20E9C8, &qword_24E5D4CD0);
}

uint64_t (*static GamePolicyAssertion.delegate.modify())()
{
  if (qword_27F20E630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24E5CA3B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F20E630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_24E5CAF1C(&xmmword_27F20E950, a1);
}

uint64_t sub_24E5CA434(uint64_t a1)
{
  if (qword_27F20E630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_24E5CAF8C(a1, &xmmword_27F20E950);
  return swift_endAccess();
}

uint64_t sub_24E5CA4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E5D2EA0();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v17 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_attributes);
  if (v9 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24E5D2F90())
  {
    v11 = 0;
    v17[0] = v9 & 0xFFFFFFFFFFFFFF8;
    v12 = (v5 + 8);
    while ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x253043910](v11, v9);
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_14;
      }

LABEL_10:
      v17[1] = v13;
      type metadata accessor for GamePolicyAssertion.Attribute();
      v14 = swift_dynamicCast();
      v15 = *(*(a2 - 8) + 56);
      if (v14)
      {
        v15(v8, 0, 1, a2);
        (*v12)(v8, v4);
        return 1;
      }

      v15(v8, 1, 1, a2);
      (*v12)(v8, v4);
      ++v11;
      if (v5 == i)
      {
        return 0;
      }
    }

    if (v11 >= *(v17[0] + 16))
    {
      goto LABEL_15;
    }

    v13 = *(v9 + 8 * v11 + 32);
    v5 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

id sub_24E5CA704()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  qword_27F20E978 = result;
  return result;
}

id GamePolicyAssertion.__allocating_init(target:attributes:)(uint64_t *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  sub_24E5CB05C(a1, &v5[OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_target]);
  *&v5[OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_attributes] = a2;
  if (qword_27F20E638 != -1)
  {
    swift_once();
  }

  result = [qword_27F20E978 lock];
  v7 = qword_27F20E980;
  *&v5[OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_identifier] = qword_27F20E980;
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    qword_27F20E980 = v9;
    [qword_27F20E978 unlock];
    v11.receiver = v5;
    v11.super_class = v2;
    v10 = objc_msgSendSuper2(&v11, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v10;
  }

  return result;
}

id GamePolicyAssertion.init(target:attributes:)(uint64_t *a1, uint64_t a2)
{
  sub_24E5CB05C(a1, &v2[OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_target]);
  *&v2[OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_attributes] = a2;
  if (qword_27F20E638 != -1)
  {
    swift_once();
  }

  result = [qword_27F20E978 lock];
  v6 = qword_27F20E980;
  *&v2[OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_identifier] = qword_27F20E980;
  v7 = __CFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    qword_27F20E980 = v8;
    [qword_27F20E978 unlock];
    v10.receiver = v2;
    v10.super_class = type metadata accessor for GamePolicyAssertion();
    v9 = objc_msgSendSuper2(&v10, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v9;
  }

  return result;
}

uint64_t sub_24E5CA96C()
{
  if (qword_27F20E630 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (qword_27F20E968)
  {
    sub_24E5CB05C(&xmmword_27F20E950, v4);
    v2 = v5;
    v3 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v3 + 8))(v0, v2, v3);
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return result;
}

uint64_t sub_24E5CAA3C()
{
  if (qword_27F20E630 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (qword_27F20E968)
  {
    sub_24E5CB05C(&xmmword_27F20E950, v4);
    v2 = v5;
    v3 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v3 + 16))(v0, v2, v3);
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return result;
}

unint64_t sub_24E5CAB74()
{
  sub_24E5D2F00();

  v9 = *(v0 + OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_identifier);
  v1 = sub_24E5D2FD0();
  MEMORY[0x253043730](v1);

  MEMORY[0x253043730](0x3D74656772617420, 0xE800000000000000);
  v2 = *(v0 + OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_target + 24);
  v3 = *(v0 + OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_target + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_target), v2);
  v4 = (*(v3 + 32))(v2, v3);
  MEMORY[0x253043730](v4);

  MEMORY[0x253043730](0x7562697274746120, 0xEC0000003D736574);
  v5 = *(v0 + OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_attributes);
  v6 = type metadata accessor for GamePolicyAssertion.Attribute();
  v7 = MEMORY[0x2530437D0](v5, v6);
  MEMORY[0x253043730](v7);

  MEMORY[0x253043730](62, 0xE100000000000000);
  return 0xD000000000000011;
}

id GamePolicyAssertion.Attribute.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24E5CAF1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E9C8, &qword_24E5D4CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E5CAF8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E9C8, &qword_24E5D4CD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E5CAFFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24E5CB05C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id GamePolicyAssertion.Attribute.Privileged.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamePolicyAssertion.Attribute.Privileged();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_24E5CB2B8(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id sub_24E5CB314(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id sub_24E5CB360(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_24E5CB3B8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_24E5CB458(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24E5CB4B4(uint64_t a1)
{
  result = sub_24E5CB4F8(&unk_27F20E9D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E5CB4F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GamePolicyTargetDescription();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id FullScreenGrant.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id FullScreenGrant.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id FullScreenGrant.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FullScreenGrant.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenGrant();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FullScreenGrant.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenGrant();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E5CBA54@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24E5CDAA4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

NSXPCInterface __swiftcall GamePolicyAgentServerInterface()()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_24E5BEA3C(0, &qword_281254CC0, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E9F0, &unk_24E5D4E60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E5D4480;
  v1 = type metadata accessor for GameLibraryGame();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6A0, &unk_24E5D46E0);
  *(v0 + 32) = v1;
  v5 = sub_24E5BEA3C(0, &unk_281254CA0, 0x277CBEA60);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6A8, &unk_24E5D4E70);
  *(v0 + 64) = v5;
  v2 = sub_24E5BEA3C(0, &unk_281254C90, 0x277CCABB0);
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6B0, &unk_24E5D46F0);
  *(v0 + 96) = v2;
  v4 = sub_24E5BEA3C(0, &qword_281254C80, 0x277CCACA8);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6B8, &qword_24E5D4E80);
  *(v0 + 128) = v4;
  MEMORY[0x253043840](v0);
  result.super.isa = sub_24E5D2DF0();
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

NSXPCInterface __swiftcall GamePolicyAgentClientInterface()()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_24E5BEA3C(0, &qword_281254CC0, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E9F0, &unk_24E5D4E60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E5D4480;
  v1 = type metadata accessor for GameLibraryGame();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6A0, &unk_24E5D46E0);
  *(v0 + 32) = v1;
  v2 = sub_24E5BEA3C(0, &unk_281254CA0, 0x277CBEA60);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6A8, &unk_24E5D4E70);
  *(v0 + 64) = v2;
  v3 = sub_24E5BEA3C(0, &unk_281254C90, 0x277CCABB0);
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6B0, &unk_24E5D46F0);
  *(v0 + 96) = v3;
  v4 = sub_24E5BEA3C(0, &qword_281254C80, 0x277CCACA8);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6B8, &qword_24E5D4E80);
  *(v0 + 128) = v4;
  MEMORY[0x253043840](v0);
  result.super.isa = sub_24E5D2DF0();
  __break(1u);
  return result;
}

void *GamePolicyAgentUpdate.userFrontmostGame.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_userFrontmostGame);
  v2 = v1;
  return v1;
}

id GamePolicyAgentUpdate.__allocating_init(userIdentifiedGames:consoleModeSignalingGames:consoleModeUserDisabledGames:consoleModeEnabled:consoleModePausedByUser:userFrontmostGame:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_userIdentifiedGames] = a1;
  *&v13[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeSignalingGames] = a2;
  *&v13[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeUserDisabledGames] = a3;
  v13[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeEnabled] = a4;
  v13[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModePausedByUser] = a5;
  *&v13[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_userFrontmostGame] = a6;
  v15.receiver = v13;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, sel_init);
}

id GamePolicyAgentUpdate.init(userIdentifiedGames:consoleModeSignalingGames:consoleModeUserDisabledGames:consoleModeEnabled:consoleModePausedByUser:userFrontmostGame:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_userIdentifiedGames] = a1;
  *&v6[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeSignalingGames] = a2;
  *&v6[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeUserDisabledGames] = a3;
  v6[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeEnabled] = a4;
  v6[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModePausedByUser] = a5;
  *&v6[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_userFrontmostGame] = a6;
  v8.receiver = v6;
  v8.super_class = type metadata accessor for GamePolicyAgentUpdate();
  return objc_msgSendSuper2(&v8, sel_init);
}

id static GamePolicyAgentUpdate.emptyUpdate.getter()
{
  v0 = type metadata accessor for GamePolicyAgentUpdate();
  v1 = objc_allocWithZone(v0);
  v2 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_userIdentifiedGames] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeSignalingGames] = v2;
  *&v1[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeUserDisabledGames] = v2;
  v1[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeEnabled] = 0;
  v1[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModePausedByUser] = 0;
  *&v1[OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_userFrontmostGame] = 0;
  v4.receiver = v1;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_24E5CC3F8()
{
  v1 = v0;
  sub_24E5D2F00();
  MEMORY[0x253043730](0xD00000000000002BLL, 0x800000024E5D6840);
  v2 = *(v0 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_userIdentifiedGames);
  v3 = type metadata accessor for GamePolicyAgentUpdate.GameEvent();
  v4 = MEMORY[0x2530437D0](v2, v3);
  MEMORY[0x253043730](v4);

  MEMORY[0x253043730](0xD00000000000001BLL, 0x800000024E5D6870);
  v5 = MEMORY[0x2530437D0](*(v1 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeSignalingGames), v3);
  MEMORY[0x253043730](v5);

  MEMORY[0x253043730](0xD000000000000014, 0x800000024E5D6890);
  if (*(v1 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeEnabled))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeEnabled))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x253043730](v6, v7);

  MEMORY[0x253043730](0xD000000000000019, 0x800000024E5D68B0);
  if (*(v1 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModePausedByUser))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModePausedByUser))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x253043730](v8, v9);

  MEMORY[0x253043730](0xD000000000000013, 0x800000024E5D68D0);
  v10 = *(v1 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_userFrontmostGame);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20EA48, &qword_24E5D4EA0);
  v11 = sub_24E5D2CE0();
  MEMORY[0x253043730](v11);

  MEMORY[0x253043730](62, 0xE100000000000000);
  return 0;
}

uint64_t static GamePolicyAgentUpdate.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F20E9E0 = a1;
  return result;
}

void sub_24E5CC788(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_userIdentifiedGames);
  type metadata accessor for GamePolicyAgentUpdate.GameEvent();
  v5 = sub_24E5D2DB0();
  v6 = sub_24E5D2CB0();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeSignalingGames);
  v8 = sub_24E5D2DB0();
  v9 = sub_24E5D2CB0();
  [a1 encodeObject:v8 forKey:v9];

  v10 = *(v1 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeUserDisabledGames);
  v11 = sub_24E5D2DB0();
  v12 = sub_24E5D2CB0();
  [a1 encodeObject:v11 forKey:v12];

  sub_24E5BEA3C(0, &unk_281254C90, 0x277CCABB0);
  v13 = *(v2 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModeEnabled);
  v14 = sub_24E5D2E90();
  v15 = sub_24E5D2CB0();
  [a1 encodeObject:v14 forKey:v15];

  v16 = *(v2 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_consoleModePausedByUser);
  v17 = sub_24E5D2E90();
  v18 = sub_24E5D2CB0();
  [a1 encodeObject:v17 forKey:v18];

  v19 = *(v2 + OBJC_IVAR____TtC10GamePolicy21GamePolicyAgentUpdate_userFrontmostGame);
  if (v19)
  {
    v20 = sub_24E5D2CB0();
    [a1 encodeObject:v19 forKey:v20];
  }
}

uint64_t GamePolicyAgentUpdate.init(coder:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E750, &qword_24E5D47E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24E5D4490;
  *(v2 + 32) = type metadata accessor for GamePolicyAgentUpdate.GameEvent();
  *(v2 + 40) = sub_24E5BEA3C(0, &unk_281254CA0, 0x277CBEA60);
  sub_24E5D2E60();

  if (v5[3])
  {
    if (swift_dynamicCast())
    {
      v5[0] = 0;
      sub_24E5D2DC0();
    }
  }

  else
  {

    sub_24E5BFE2C(v5);
  }

  type metadata accessor for GamePolicyAgentUpdate();
  swift_deallocPartialClassInstance();
  return 0;
}

id GamePolicyAgentUpdate.GameEvent.__allocating_init(auditTokenNSValue:date:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR_____GamePolicyAgentUpdateGameEvent_auditTokenNSValue] = a1;
  *&v5[OBJC_IVAR_____GamePolicyAgentUpdateGameEvent_date] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id GamePolicyAgentUpdate.GameEvent.init(auditTokenNSValue:date:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR_____GamePolicyAgentUpdateGameEvent_auditTokenNSValue] = a1;
  *&v2[OBJC_IVAR_____GamePolicyAgentUpdateGameEvent_date] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GamePolicyAgentUpdate.GameEvent();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_24E5CD100(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_24E5D2CB0();

  return v5;
}

uint64_t sub_24E5CD170()
{
  v12 = *MEMORY[0x277D85DE8];
  *&v9 = 0;
  *(&v9 + 1) = 0xE000000000000000;
  sub_24E5D2F00();
  v11 = v9;
  MEMORY[0x253043730](0xD000000000000016, 0x800000024E5D69B0);
  v9 = 0u;
  v10 = 0u;
  [*(v0 + OBJC_IVAR_____GamePolicyAgentUpdateGameEvent_auditTokenNSValue) getValue:&v9 size:32];
  v7 = v9;
  v8 = v10;
  type metadata accessor for audit_token_t(0);
  sub_24E5D2F80();
  MEMORY[0x253043730](0x3D6574616420, 0xE600000000000000);
  v1 = [*(v0 + OBJC_IVAR_____GamePolicyAgentUpdateGameEvent_date) description];
  v2 = sub_24E5D2CD0();
  v4 = v3;

  MEMORY[0x253043730](v2, v4);

  MEMORY[0x253043730](62, 0xE100000000000000);
  result = v11;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24E5CD2CC()
{
  v4 = *MEMORY[0x277D85DE8];
  memset(v3, 0, sizeof(v3));
  [*(v0 + OBJC_IVAR_____GamePolicyAgentUpdateGameEvent_auditTokenNSValue) getValue:v3 size:32];
  result = *&v3[0];
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static GamePolicyAgentUpdate.GameEvent.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27F20E9E1 = a1;
  return result;
}

void sub_24E5CD4B4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR_____GamePolicyAgentUpdateGameEvent_date);
  v4 = sub_24E5D2CB0();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR_____GamePolicyAgentUpdateGameEvent_auditTokenNSValue);
  v6 = sub_24E5D2CB0();
  [a1 encodeObject:v5 forKey:v6];
}

id GamePolicyAgentUpdate.GameEvent.init(coder:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E750, &qword_24E5D47E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24E5D4710;
  *(v4 + 32) = sub_24E5BEA3C(0, &qword_27F20EA60, 0x277CBEAA8);
  sub_24E5D2E60();

  if (v12)
  {
    if (swift_dynamicCast())
    {
      v5 = OBJC_IVAR_____GamePolicyAgentUpdateGameEvent_date;
      *&v2[OBJC_IVAR_____GamePolicyAgentUpdateGameEvent_date] = v10;
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_24E5D4710;
      *(v6 + 32) = sub_24E5BEA3C(0, &qword_27F20EA68, 0x277CCAE60);
      sub_24E5D2E60();

      if (v12)
      {
        if (swift_dynamicCast())
        {
          *&v2[OBJC_IVAR_____GamePolicyAgentUpdateGameEvent_auditTokenNSValue] = v10;
          v9.receiver = v2;
          v9.super_class = type metadata accessor for GamePolicyAgentUpdate.GameEvent();
          v7 = objc_msgSendSuper2(&v9, sel_init);

          return v7;
        }
      }

      else
      {

        sub_24E5BFE2C(v11);
      }
    }

    else
    {
    }
  }

  else
  {

    sub_24E5BFE2C(v11);
  }

  type metadata accessor for GamePolicyAgentUpdate.GameEvent();
  swift_deallocPartialClassInstance();
  return 0;
}

id GamePolicyAgentUpdate.GameEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_24E5CDA00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_24E5CDAA4(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24E5CDB00()
{
  result = qword_27F20EA70;
  if (!qword_27F20EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20EA70);
  }

  return result;
}

unint64_t sub_24E5CDB58()
{
  result = qword_27F20EA78;
  if (!qword_27F20EA78)
  {
    type metadata accessor for GamePolicyAgentUpdate.GameEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20EA78);
  }

  return result;
}

id ConsoleModeLimitation.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id ConsoleModeLimitation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id ConsoleModeLimitation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConsoleModeLimitation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConsoleModeLimitation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ConsoleModeLimitation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConsoleModeLimitation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

NSXPCInterface __swiftcall GamePolicyPrivilegedToolServerInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_24E5BEA3C(0, &qword_281254CC0, 0x277CBEB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E9F0, &unk_24E5D4E60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24E5D4E50;
  v2 = sub_24E5D2BB0();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20EA80, &qword_24E5D5038);
  *(v1 + 32) = v2;
  v3 = sub_24E5BEA3C(0, &unk_281254CA0, 0x277CBEA60);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6A8, &unk_24E5D4E70);
  *(v1 + 64) = v3;
  v4 = sub_24E5BEA3C(0, &unk_281254C90, 0x277CCABB0);
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6B0, &unk_24E5D46F0);
  *(v1 + 96) = v4;
  v5 = sub_24E5BEA3C(0, &qword_281254C80, 0x277CCACA8);
  *(v1 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20E6B8, &qword_24E5D4E80);
  *(v1 + 128) = v5;
  v6 = sub_24E5BEA3C(0, &qword_27F20EA60, 0x277CBEAA8);
  *(v1 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20EA88, &unk_24E5D5040);
  *(v1 + 160) = v6;
  v0;
  MEMORY[0x253043840](v1);
  result.super.isa = sub_24E5D2DF0();
  __break(1u);
  return result;
}

NSXPCInterface __swiftcall GamePolicyPrivilegedToolClientInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

id ConsoleModeGrant.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id ConsoleModeGrant.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id ConsoleModeGrant.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConsoleModeGrant.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConsoleModeGrant();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ConsoleModeGrant.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConsoleModeGrant();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FrontmostGrant.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id FrontmostGrant.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id FrontmostGrant.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FrontmostGrant.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FrontmostGrant();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FrontmostGrant.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FrontmostGrant();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E5CE66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

id GamePolicyDaemonPrivilegedProxyBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GamePolicyDaemonPrivilegedProxyBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamePolicyDaemonPrivilegedProxyBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GamePolicyDaemonPrivilegedProxyBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamePolicyDaemonPrivilegedProxyBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E5CE834()
{
  v0 = sub_24E5D2E20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24E5D2E10();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_24E5D2C60();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_24E5D00CC();
  sub_24E5D2C50();
  v10[1] = MEMORY[0x277D84F90];
  sub_24E5D0118(&qword_27F20EAC8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20EAD0, &unk_24E5D5160);
  sub_24E5D0160();
  sub_24E5D2EF0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  result = sub_24E5D2E30();
  qword_27F20EA90 = result;
  return result;
}

id static GamePolicyDaemonPrivilegedProxy.xpcQueue.getter()
{
  if (qword_27F20E640 != -1)
  {
    swift_once();
  }

  v1 = qword_27F20EA90;

  return v1;
}

void *sub_24E5CEAC8()
{
  type metadata accessor for GamePolicyDaemonPrivilegedProxy();
  v0 = swift_allocObject();
  result = sub_24E5CED14();
  off_27F20EA98 = v0;
  return result;
}

uint64_t static GamePolicyDaemonPrivilegedProxy.instance.getter()
{
  if (qword_27F20E648 != -1)
  {
    swift_once();
  }
}

uint64_t static GamePolicyDaemonPrivilegedProxy.wait()()
{
  [objc_opt_self() sleepForTimeInterval_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F20E9F0, &unk_24E5D4E60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E5D4710;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000032;
  *(v0 + 40) = 0x800000024E5D6EF0;
  sub_24E5D2FF0();

  sub_24E5D2C00();
  sub_24E5D0118(&qword_27F20EAA0, MEMORY[0x277CEEA70]);
  swift_allocError();
  sub_24E5D2C10();
  return swift_willThrow();
}

uint64_t sub_24E5CEC84()
{
  v1 = [*(v0 + 16) remoteObjectProxy];
  sub_24E5D2EE0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20EAA8, &qword_24E5D50B0);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void *sub_24E5CED14()
{
  v1 = v0;
  v2 = *(*(sub_24E5D2B90() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v35[1] = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_24E5D2BD0() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v35[0] = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20EAB0, &qword_24E5D5150) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v8 = v35 - v7;
  v9 = *(*(sub_24E5D2B00() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20EAB8, &qword_24E5D5158) - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v35 - v14;
  v16 = sub_24E5D2B50();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_24E5D2AE0();
  v19 = *(*(v18 - 8) + 56);
  v19(v15, 1, 1, v18);
  v19(v13, 1, 1, v18);
  sub_24E5D2B40();
  v20 = objc_allocWithZone(sub_24E5D2B70());
  v0[3] = sub_24E5D2B60();
  v21 = sub_24E5D2B30();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v19(v15, 1, 1, v18);
  v19(v13, 1, 1, v18);
  sub_24E5D2AF0();
  v22 = objc_allocWithZone(sub_24E5D2B20());
  v0[4] = sub_24E5D2B10();
  v19(v15, 1, 1, v18);
  v19(v13, 1, 1, v18);
  sub_24E5D2BC0();
  v23 = objc_allocWithZone(sub_24E5D2BF0());
  v0[5] = sub_24E5D2BE0();
  v19(v15, 1, 1, v18);
  v19(v13, 1, 1, v18);
  sub_24E5D2B80();
  v24 = objc_allocWithZone(sub_24E5D2BB0());
  v0[6] = sub_24E5D2BA0();
  v25 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v26 = sub_24E5D2CB0();
  v27 = [v25 initWithMachServiceName:v26 options:0];

  v1[2] = v27;
  v28 = v27;
  isa = GamePolicyPrivilegedToolServerInterface()().super.isa;
  [v28 setRemoteObjectInterface_];

  v30 = v1[2];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 interfaceWithProtocol_];
  [v32 setExportedInterface_];

  [v1[2] setExportedObject_];
  [v1[2] resume];
  return v1;
}

id *GamePolicyDaemonPrivilegedProxy.deinit()
{
  [v0[2] invalidate];

  return v0;
}

uint64_t GamePolicyDaemonPrivilegedProxy.__deallocating_deinit()
{
  [v0[2] invalidate];

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_24E5CF368(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

id sub_24E5CF3C0()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_24E5CF404(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void sub_24E5CF49C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

id sub_24E5CF4F4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void sub_24E5CF538(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void sub_24E5CF5D0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;
}

id sub_24E5CF628()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_24E5CF66C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void sub_24E5CF704(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
  v5 = v2;
}

id sub_24E5CF75C()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

void sub_24E5CF7A0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_24E5CF838(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = sub_24E5D2A50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    swift_beginAccess();
    v15 = v5[3];
    v5[3] = a1;
    v16 = a1;
  }

  if (a2)
  {
    swift_beginAccess();
    v17 = v5[4];
    v5[4] = a2;
    v18 = a2;
  }

  if (a3)
  {
    swift_beginAccess();
    v19 = v5[5];
    v5[5] = a3;
    v20 = a3;
  }

  if (a4)
  {
    swift_beginAccess();
    v21 = v5[6];
    v5[6] = a4;
    v22 = a4;
  }

  v23 = sub_24E5D2CB0();
  v30 = type metadata accessor for GamePolicyDaemonPrivilegedProxy();
  v29 = v5;
  v24 = v23;

  sub_24E5D2A40();
  v25 = [objc_opt_self() defaultCenter];
  v26 = sub_24E5D2A30();
  [v25 postNotification_];

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_24E5CFB14()
{
  v1 = [*(v0 + 16) remoteObjectProxy];
  sub_24E5D2EE0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20EAA8, &qword_24E5D50B0);
  result = swift_dynamicCast();
  if (result)
  {
    [v3 ping];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t _s10GamePolicy0aB27DaemonPrivilegedProxyBridgeC14launchGamesAppyyFZ_0()
{
  if (qword_27F20E648 != -1)
  {
    swift_once();
  }

  v0 = [*(off_27F20EA98 + 2) remoteObjectProxy];
  sub_24E5D2EE0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20EAA8, &qword_24E5D50B0);
  result = swift_dynamicCast();
  if (result)
  {
    [v2 requestLaunchGamesApp];
    return swift_unknownObjectRelease();
  }

  return result;
}

void _s10GamePolicy0aB27DaemonPrivilegedProxyBridgeC013requestLaunchA7Overlay11conditional13fallbackToApp9withReplyySb_SbySb_SbtctFZ_0(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (qword_27F20E648 != -1)
  {
    swift_once();
  }

  v8 = [*(off_27F20EA98 + 2) remoteObjectProxy];
  sub_24E5D2EE0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20EAA8, &qword_24E5D50B0);
  if (swift_dynamicCast())
  {
    v9 = aBlock[6];
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E5CE66C;
    aBlock[3] = &block_descriptor;
    v10 = _Block_copy(aBlock);

    [v9 requestLaunchGameOverlayWithConditional:a1 & 1 fallbackToApp:a2 & 1 withReply:v10];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

unint64_t sub_24E5D00CC()
{
  result = qword_27F20EAC0;
  if (!qword_27F20EAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F20EAC0);
  }

  return result;
}

uint64_t sub_24E5D0118(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E5D0160()
{
  result = qword_27F20EAD8;
  if (!qword_27F20EAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F20EAD0, &unk_24E5D5160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20EAD8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id IdentifiedGameGrant.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id IdentifiedGameGrant.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GamePolicyAssertion.Attribute();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id IdentifiedGameGrant.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentifiedGameGrant.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentifiedGameGrant();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IdentifiedGameGrant.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentifiedGameGrant();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E5D0460(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = a2 != a5 || a6 >= a3;
  if (a5 < a2)
  {
    v7 = 0;
  }

  v8 = a1 != a4 || v7;
  if (a4 >= a1)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E5D048C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = a5 != a2 || a3 >= a6;
  if (a2 < a5)
  {
    v7 = 0;
  }

  v8 = a4 != a1 || v7;
  if (a1 >= a4)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E5D04B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = a2 == a5 && a6 < a3;
  v8 = a5 < a2 || v7;
  if (a1 != a4)
  {
    v8 = 0;
  }

  if (a4 >= a1)
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

Swift::Bool __swiftcall Version.isLessThanSourceVersion(sourceVersion:)(GamePolicy::Version sourceVersion)
{
  if (*v1 < *sourceVersion.major)
  {
    return 1;
  }

  v3 = *(sourceVersion.major + 8);
  v4 = v1[1];
  v6 = v3 == v4 && v1[2] < *(sourceVersion.major + 16);
  v7 = v4 < v3 || v6;
  return *sourceVersion.major == *v1 && v7;
}

uint64_t sub_24E5D0548()
{
  v0 = sub_24E5D2A20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_27F20EAE0);
  __swift_project_value_buffer(v0, qword_27F20EAE0);
  sub_24E5D2A00();
  sub_24E5D2A10();
  return (*(v1 + 8))(v5, v0);
}

unint64_t sub_24E5D064C()
{
  result = currentSourceVersion();
  *&xmmword_27F20EAF8 = result;
  *(&xmmword_27F20EAF8 + 1) = HIDWORD(result);
  qword_27F20EB08 = v1;
  return result;
}

GamePolicy::Version __swiftcall Version.init(major:minor:patch:)(Swift::UInt major, Swift::UInt minor, Swift::UInt patch)
{
  *v3 = major;
  v3[1] = minor;
  v3[2] = patch;
  result.patch = patch;
  result.minor = minor;
  result.major = major;
  return result;
}

double static Version.currentSourceVersion.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27F20E658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27F20EB08;
  result = *&xmmword_27F20EAF8;
  *a1 = xmmword_27F20EAF8;
  *(a1 + 16) = v2;
  return result;
}

uint64_t static Version.currentSourceVersion.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27F20E658 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *&xmmword_27F20EAF8 = v1;
  *(&xmmword_27F20EAF8 + 1) = v2;
  qword_27F20EB08 = v3;
  return result;
}

uint64_t (*static Version.currentSourceVersion.modify())()
{
  if (qword_27F20E658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_24E5D0820@<D0>(uint64_t a1@<X8>)
{
  if (qword_27F20E658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27F20EB08;
  result = *&xmmword_27F20EAF8;
  *a1 = xmmword_27F20EAF8;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_24E5D08A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27F20E658 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *&xmmword_27F20EAF8 = v1;
  *(&xmmword_27F20EAF8 + 1) = v2;
  qword_27F20EB08 = v3;
  return result;
}

GamePolicy::Version_optional __swiftcall Version.init(versionString:)(Swift::String versionString)
{
  object = versionString._object;
  countAndFlagsBits = versionString._countAndFlagsBits;
  v4 = v1;
  v5 = sub_24E5D2A20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F20E650 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_27F20EAE0);
  (*(v6 + 16))(v9, v10, v5);
  v65 = countAndFlagsBits;
  v66 = object;
  sub_24E5D22F8();
  v11 = sub_24E5D2ED0();
  v13 = v12;

  v65 = v11;
  v66 = v13;
  v64[0] = 46;
  v64[1] = 0xE100000000000000;
  v14 = sub_24E5D2EC0();

  v15 = v14[2];
  if (!v15)
  {
    goto LABEL_85;
  }

  if (v15 >= 4)
  {
    goto LABEL_85;
  }

  v16 = v14[4];
  v17 = v14[5];

  v18 = sub_24E5D2D20();

  if (v18 <= 0)
  {
    goto LABEL_85;
  }

  v22 = v14[4];
  v23 = v14[5];
  v24 = HIBYTE(v23) & 0xF;
  v25 = v22 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v26 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    goto LABEL_68;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {
    v46 = v14[5];

    v28 = sub_24E5D1808(v22, v23, 10);
    v48 = v47;

    if (v48)
    {
      goto LABEL_68;
    }

    goto LABEL_70;
  }

  if ((v23 & 0x2000000000000000) != 0)
  {
    v65 = v14[4];
    v66 = v23 & 0xFFFFFFFFFFFFFFLL;
    if (v22 == 43)
    {
      if (v24)
      {
        if (--v24)
        {
          v28 = 0;
          v38 = &v65 + 1;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            ++v38;
            if (!--v24)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v22 != 45)
    {
      if (v24)
      {
        v28 = 0;
        v43 = &v65;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            break;
          }

          v45 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v45 + v44;
          if (__OFADD__(v45, v44))
          {
            break;
          }

          v43 = (v43 + 1);
          if (!--v24)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v24)
    {
      if (--v24)
      {
        v28 = 0;
        v32 = &v65 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v34 - v33;
          if (__OFSUB__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v24)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_90;
  }

  if ((v22 & 0x1000000000000000) != 0)
  {
    v19 = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v62 = v14[4];
    v63 = v14[5];
    v19 = sub_24E5D2F20();
  }

  v27 = *v19;
  if (v27 == 43)
  {
    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v28 = 0;
        if (v19)
        {
          v35 = (v19 + 1);
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              goto LABEL_66;
            }

            v37 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_66;
            }

            v28 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              goto LABEL_66;
            }

            ++v35;
            if (!--v24)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_58;
      }

      goto LABEL_66;
    }

    goto LABEL_91;
  }

  if (v27 == 45)
  {
    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v28 = 0;
        if (v19)
        {
          v29 = (v19 + 1);
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              goto LABEL_66;
            }

            v31 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_66;
            }

            v28 = v31 - v30;
            if (__OFSUB__(v31, v30))
            {
              goto LABEL_66;
            }

            ++v29;
            if (!--v24)
            {
              goto LABEL_67;
            }
          }
        }

LABEL_58:
        LOBYTE(v24) = 0;
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (v25)
  {
    v28 = 0;
    if (v19)
    {
      while (1)
      {
        v41 = *v19 - 48;
        if (v41 > 9)
        {
          goto LABEL_66;
        }

        v42 = 10 * v28;
        if ((v28 * 10) >> 64 != (10 * v28) >> 63)
        {
          goto LABEL_66;
        }

        v28 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          goto LABEL_66;
        }

        ++v19;
        if (!--v25)
        {
          goto LABEL_58;
        }
      }
    }

    goto LABEL_58;
  }

LABEL_66:
  v28 = 0;
  LOBYTE(v24) = 1;
LABEL_67:
  LOBYTE(v64[0]) = v24;
  if (v24)
  {
LABEL_68:

    v19 = (*(v6 + 8))(v9, v5);
LABEL_86:
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 1;
    goto LABEL_95;
  }

LABEL_70:
  if (v28 <= 0)
  {
LABEL_85:
    (*(v6 + 8))(v9, v5);

    goto LABEL_86;
  }

  if (v15 == 1)
  {

    v49 = 0;
LABEL_73:
    v19 = (*(v6 + 8))(v9, v5);
    v50 = 0;
    goto LABEL_74;
  }

  if (v14[2] < 2uLL)
  {
    goto LABEL_93;
  }

  v51 = v14[6];
  v52 = v14[7];

  v53 = sub_24E5D2D20();

  if (v53 <= 0)
  {
    goto LABEL_85;
  }

  v54 = v14[6];
  v55 = v14[7];

  v19 = sub_24E5D0F58(v54, v55);
  if (v25)
  {
    goto LABEL_85;
  }

  v49 = v19;
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_85;
  }

  if (v15 != 3)
  {

    goto LABEL_73;
  }

  if (v14[2] < 3uLL)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v56 = v14[8];
  v57 = v14[9];

  v58 = sub_24E5D2D20();

  if (v58 <= 0)
  {
    goto LABEL_85;
  }

  v59 = v14[8];
  v60 = v14[9];

  v50 = sub_24E5D0F58(v59, v60);
  LOBYTE(v59) = v61;
  v19 = (*(v6 + 8))(v9, v5);
  if ((v59 & 1) != 0 || v50 < 0)
  {
    goto LABEL_86;
  }

LABEL_74:
  *v4 = v28;
  *(v4 + 8) = v49;
  *(v4 + 16) = v50;
  *(v4 + 24) = 0;
LABEL_95:
  result.value.patch = v20;
  result.value.minor = v25;
  result.value.major = v19;
  result.is_nil = v21;
  return result;
}

uint64_t sub_24E5D0F58(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24E5D2F20();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_24E5D1808(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

Swift::Bool __swiftcall Version.isGreaterThanSourceVersion(sourceVersion:)(GamePolicy::Version sourceVersion)
{
  if (*sourceVersion.major < *v1)
  {
    return 1;
  }

  v3 = *(sourceVersion.major + 8);
  v4 = v1[1];
  v6 = v4 == v3 && *(sourceVersion.major + 16) < v1[2];
  v7 = v3 < v4 || v6;
  return *v1 == *sourceVersion.major && v7;
}

Swift::Bool __swiftcall Version.isGreaterThanOrEqualToSourceVersion(sourceVersion:)(GamePolicy::Version sourceVersion)
{
  if (*sourceVersion.major < *v1)
  {
    return 1;
  }

  v3 = *(sourceVersion.major + 8);
  v4 = v1[1];
  v6 = v4 == v3 && v1[2] >= *(sourceVersion.major + 16);
  v7 = v3 < v4 || v6;
  return *v1 == *sourceVersion.major && v7;
}

Swift::Bool __swiftcall Version.isLessThanOrEqualToSourceVersion(sourceVersion:)(GamePolicy::Version sourceVersion)
{
  if (*v1 < *sourceVersion.major)
  {
    return 1;
  }

  v3 = *(sourceVersion.major + 8);
  v4 = v1[1];
  v6 = v3 == v4 && *(sourceVersion.major + 16) >= v1[2];
  v7 = v4 < v3 || v6;
  return *sourceVersion.major == *v1 && v7;
}

NSComparisonResult __swiftcall Version.compare(sourceVersion:)(GamePolicy::Version sourceVersion)
{
  v2 = *sourceVersion.major;
  v3 = *v1;
  if (*v1 < *sourceVersion.major)
  {
    return -1;
  }

  if (v2 != v3)
  {
    return v2 < v3;
  }

  v5 = *(sourceVersion.major + 8);
  v6 = v1[1];
  if (v6 < v5)
  {
    return -1;
  }

  v7 = *(sourceVersion.major + 16);
  v8 = v1[2];
  if (v5 == v6 && v8 < v7)
  {
    return -1;
  }

  result = NSOrderedDescending;
  if (v5 >= v6 && v7 >= v8)
  {
    return 0;
  }

  return result;
}

uint64_t Version.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v6 = *v0;
  v7 = sub_24E5D2FD0();
  MEMORY[0x253043730](46, 0xE100000000000000);
  v3 = sub_24E5D2FD0();
  MEMORY[0x253043730](v3);

  MEMORY[0x253043730](46, 0xE100000000000000);
  v4 = sub_24E5D2FD0();
  MEMORY[0x253043730](v4);

  return v7;
}

uint64_t Version.debugDescription.getter()
{
  v5 = *v0;
  v1 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20EB18, &qword_24E5D5198);
  v2 = sub_24E5D2CE0();
  MEMORY[0x253043730](v2);

  MEMORY[0x253043730](2108478, 0xE300000000000000);
  v3 = Version.description.getter();
  MEMORY[0x253043730](v3);

  return 60;
}

uint64_t Version.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x253043A10](*v0);
  MEMORY[0x253043A10](v1);
  return MEMORY[0x253043A10](v2);
}

uint64_t Version.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24E5D3000();
  MEMORY[0x253043A10](v1);
  MEMORY[0x253043A10](v2);
  MEMORY[0x253043A10](v3);
  return sub_24E5D3020();
}

uint64_t sub_24E5D1644()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24E5D3000();
  MEMORY[0x253043A10](v1);
  MEMORY[0x253043A10](v2);
  MEMORY[0x253043A10](v3);
  return sub_24E5D3020();
}

uint64_t sub_24E5D16B0()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x253043A10](*v0);
  MEMORY[0x253043A10](v1);
  return MEMORY[0x253043A10](v2);
}

uint64_t sub_24E5D16F8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24E5D3000();
  MEMORY[0x253043A10](v1);
  MEMORY[0x253043A10](v2);
  MEMORY[0x253043A10](v3);
  return sub_24E5D3020();
}

unsigned __int8 *sub_24E5D1808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24E5D2D90();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24E5D1D94();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24E5D2F20();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24E5D1D94()
{
  v0 = sub_24E5D2DA0();
  v4 = sub_24E5D1E14(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_24E5D1E14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24E5D2D00();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_24E5D2EB0();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_24E5D1F6C(v9, 0);
  v12 = sub_24E5D1FE0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_24E5D2D00();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_24E5D2F20();
LABEL_4:

  return sub_24E5D2D00();
}

void *sub_24E5D1F6C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F20EB28, &qword_24E5D52D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_24E5D1FE0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24E5D2200(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24E5D2D60();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24E5D2F20();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24E5D2200(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24E5D2D40();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24E5D2200(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24E5D2D70();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x253043750](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _s10GamePolicy7VersionV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v6 = v4 == v3 && a1[2] < a2[2];
  v7 = v3 < v4 || v6;
  if (*a2 == *a1)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_24E5D22F8()
{
  result = qword_27F20EB10;
  if (!qword_27F20EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20EB10);
  }

  return result;
}

unint64_t sub_24E5D234C()
{
  result = qword_27F20EB20;
  if (!qword_27F20EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F20EB20);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Version(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void __getGKDaemonProxyClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getGKDaemonProxyClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GPGameCenterMediator.m" lineNumber:23 description:{@"Unable to find class %s", "GKDaemonProxy"}];

  __break(1u);
}

void GameCenterFoundationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *GameCenterFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GPGameCenterMediator.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getGKLocalPlayerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getGKLocalPlayerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GPGameCenterMediator.m" lineNumber:22 description:{@"Unable to find class %s", "GKLocalPlayer"}];

  __break(1u);
}