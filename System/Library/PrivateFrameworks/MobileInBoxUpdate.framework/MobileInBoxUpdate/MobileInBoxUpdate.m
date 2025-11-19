uint64_t sub_259AC0758()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void authInstalllogHandler(unsigned int a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 < 4)
  {
    if (MIBUOnceToken != -1)
    {
      authInstalllogHandler_cold_4();
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      authInstalllogHandler_cold_5();
    }
  }

  else if (a1 - 4 >= 3)
  {
    if (a1 == 7)
    {
      if (MIBUOnceToken != -1)
      {
        authInstalllogHandler_cold_1();
      }

      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEBUG))
      {
        authInstalllogHandler_cold_2();
      }
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        authInstalllogHandler_cold_6();
      }

      v3 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136446210;
        v6 = a2;
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      authInstalllogHandler_cold_3();
    }

    v3 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = a2;
LABEL_20:
      _os_log_impl(&dword_259ABF000, v3, OS_LOG_TYPE_DEFAULT, "AMAuthInstall: %{public}s", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __authInstalllogHandler_block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __authInstalllogHandler_block_invoke_3()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __authInstalllogHandler_block_invoke_6()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __authInstalllogHandler_block_invoke_9()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  safeAssignError(v9, 100663296, 0, a4, a5, a6, a7, a8, a9);
}

BOOL OUTLINED_FUNCTION_8()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_2_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void OUTLINED_FUNCTION_1_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint8_t buf)
{

  _os_log_error_impl(a1, v21, OS_LOG_TYPE_ERROR, a4, &buf, 2u);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

BOOL OUTLINED_FUNCTION_5_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = 0;

  return [v9 getBytes:&a9 range:{0, v10}];
}

BOOL OUTLINED_FUNCTION_5_1()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_6_1()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_7_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_error_impl(a1, v17, OS_LOG_TYPE_ERROR, a4, &buf, 2u);
}

void sub_259AC7A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_0_2(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_3_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return [v0 charValue];
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_259ACF1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

void safeAssignError(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v12 = MEMORY[0x277CCAB68];
    v13 = a4;
    v14 = a3;
    v15 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

    v16 = _createError(a2, v14, v15);

    v17 = v16;
    *a1 = v16;
  }
}

id _createError(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v5)
  {
    [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.MobileInBoxUpdater.ErrorDomain" code:a1 userInfo:v8];

  return v9;
}

id safeCreateError(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = MEMORY[0x277CCAB68];
  v12 = a3;
  v13 = a2;
  v14 = [[v11 alloc] initWithFormat:v12 arguments:&a9];

  v15 = _createError(a1, v13, v14);

  return v15;
}

void OUTLINED_FUNCTION_1_5(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void sub_259AD3368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259AD3C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_259AD4230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259AD4674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259AD509C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

BOOL OUTLINED_FUNCTION_5_3()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_4_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

id sub_259AD74BC()
{
  result = [objc_allocWithZone(type metadata accessor for MIBULoopbackServerClient()) init];
  qword_27F9E3DA0 = result;
  return result;
}

id MIBULoopbackServerClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_259AD7520()
{
  if (qword_27F9E3D98 != -1)
  {
    swift_once();
  }

  return &qword_27F9E3DA0;
}

id static MIBULoopbackServerClient.sharedInstance.getter()
{
  if (qword_27F9E3D98 != -1)
  {
    swift_once();
  }

  v1 = qword_27F9E3DA0;

  return v1;
}

void sub_259AD7640(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_259AD76AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id MIBULoopbackServerClient.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MIBULoopbackServerClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_259AD78E4(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v7 = sub_259AEBF04();
  v8 = [v6 initWithServiceName_];

  v9 = [objc_opt_self() interfaceWithProtocol_];
  [v8 setRemoteObjectInterface_];

  [v8 resume];
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = (v10 + 16);
  v25 = sub_259AD7F44;
  v26 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_259AD7640;
  v24 = &block_descriptor_5;
  v12 = _Block_copy(&aBlock);

  v13 = [v8 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v12);
  sub_259AEBF24();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E3D50, &qword_259AEDEE8);
  if (swift_dynamicCast())
  {
    v14 = sub_259AEBF04();
    v25 = nullsub_1;
    v26 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_259AD76AC;
    v24 = &block_descriptor_8;
    v15 = _Block_copy(&aBlock);
    [v20 startServerWithWebPort:a1 webRoot:v14 waitTillDone:a4 & 1 with:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  [v8 invalidate];
  swift_beginAccess();
  v16 = *v11;
  if (*v11)
  {
    v17 = *v11;
    swift_willThrow();
    v18 = v16;
  }
}

uint64_t sub_259AD7BF8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = sub_259AEBF04();
  v2 = [v0 initWithServiceName_];

  v3 = [objc_opt_self() interfaceWithProtocol_];
  [v2 setRemoteObjectInterface_];

  [v2 resume];
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  aBlock[4] = sub_259AD7E80;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_259AD7640;
  aBlock[3] = &block_descriptor;
  v6 = _Block_copy(aBlock);

  v7 = [v2 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v6);
  sub_259AEBF24();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9E3D50, &qword_259AEDEE8);
  if (swift_dynamicCast())
  {
    [v11 stopServer];
    swift_unknownObjectRelease();
  }

  [v2 invalidate];
  swift_beginAccess();
  v8 = *v5;
  if (v8)
  {
    swift_willThrow();
    v9 = v8;
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

id sub_259AD7EE4(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;

  return a1;
}

uint64_t X509PolicySetFlagsForCommonNames(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 104);
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  result = X509CertificateSubjectNameGetCommonName(v2, v6);
  if (!result)
  {
    result = compare_octet_string(&iPhoneCAName, v6);
    if (!result)
    {
      v4 = 3840;
      goto LABEL_13;
    }

    result = compare_octet_string(&CodeSigningCAName, v6);
    if (!result)
    {
      v4 = 0x800000000008;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4AccessoryCAName, v6);
    if (!result)
    {
      v4 = 0x400000000;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4AttestationCAName, v6);
    if (!result)
    {
      v4 = 0x800000000;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4ProvisioningCAName, v6);
    if (!result)
    {
      v4 = 0x1000000000;
LABEL_13:
      *(a1 + 240) |= v4;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void X509PolicySetFlagsForMFI(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 104);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  if (!X509CertificateSubjectNameGetCommonName(v2, v7))
  {
    if (!compare_octet_string_partial(&MFICommonNamePrefix, v7))
    {
      v6 = 0;
      if (X509CertificateGetNotBefore(a1, &v6))
      {
        goto LABEL_9;
      }

      memset(&v5, 0, sizeof(v5));
      strptime("2006-05-31", "%F", &v5);
      v3 = timegm(&v5);
      if (difftime(v3, v6) >= 0.0)
      {
        goto LABEL_9;
      }

      *(a1 + 240) |= 0x8000000uLL;
    }

    if (!compare_octet_string_partial(&MFi4ProvisioningHostNamePrefix, v7))
    {
      *(a1 + 240) |= 0x1000000000uLL;
    }
  }

LABEL_9:
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t X509PolicySetFlagsForRoots(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 16) == 1)
  {
    v4 = numAppleProdRoots;
    if (numAppleProdRoots)
    {
      if (a2 + 88 <= (a2 + 104))
      {
        v5 = AppleRootSPKIs;
        while (1)
        {
          v6 = v5 + 1;
          v7 = v5 < AppleRootSPKIs || v6 > &rsaEncryption;
          if (v7 || v5 >= v6)
          {
            break;
          }

          result = compare_octet_string(a2 + 88, *v5);
          if (!result)
          {
            *(a2 + 240) |= 0xD8E30653FFF8uLL;
            goto LABEL_17;
          }

          ++v5;
          if (!--v4)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_50;
    }
  }

LABEL_17:
  v9 = *(v3 + 8);
  if ((v9 & 0x1000000) != 0)
  {
    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &UcrtRootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1000000;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v9 & 0x1C00000000) == 0)
    {
      goto LABEL_28;
    }

    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &MFi4RootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1C00000000;
LABEL_27:
      *(a2 + 240) = v10;
      goto LABEL_28;
    }
  }

  if (*(v3 + 17) == 1)
  {
    result = X509PolicySetFlagsForTestAnchor(v3, a2);
  }

LABEL_28:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1 && numAppleProdRoots < numAppleRoots)
  {
    if (a2 + 88 <= (a2 + 104))
    {
      v11 = &AppleRootSPKIs[numAppleProdRoots];
      v12 = numAppleRoots - numAppleProdRoots;
      while (1)
      {
        v13 = v11 + 1;
        v14 = v11 < AppleRootSPKIs || v13 > &rsaEncryption;
        if (v14 || v11 >= v13)
        {
          break;
        }

        result = compare_octet_string(a2 + 88, *v11);
        if (!result)
        {
          *(a2 + 240) |= 0xD8E30653FFF8uLL;
          goto LABEL_44;
        }

        ++v11;
        if (!--v12)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1)
  {
    result = a2 + 88;
    if (a2 + 88 <= (a2 + 104))
    {
      result = compare_octet_string(result, &TestAppleRootECCSPKI);
      if (!result)
      {
        *(a2 + 240) |= 0x6400000uLL;
      }

      return result;
    }

LABEL_50:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509PolicySetFlagsForTestAnchor(void *a1, uint64_t a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  if (a2 + 88 > (a2 + 104))
  {
    __break(0x5519u);
  }

  result = X509CertificateParseSPKI((a2 + 88), v7, 0, v6);
  if (!result)
  {
    result = compare_octet_string(a1[4], v7);
    if (!result)
    {
      result = compare_octet_string(a1[3], v6);
      if (!result)
      {
        *(a2 + 240) |= a1[1];
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

int *find_digest(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = &digests[v2 / 4 + 2];
    if (result > &digests[v2 / 4 + 6])
    {
      __break(0x5519u);
      goto LABEL_9;
    }

    result = compare_octet_string_raw(result, *a1, *(a1 + 8));
    if (!result)
    {
      break;
    }

    v2 += 32;
    if (v2 == 160)
    {
      return 0;
    }
  }

  if (v2 <= ~digests)
  {
    return &digests[v2 / 4];
  }

LABEL_9:
  __break(0x5513u);
  return result;
}

int *find_digest_by_type(int *result)
{
  v1 = 0;
  while (digests[v1 / 4] != result)
  {
    v1 += 32;
    if (v1 == 160)
    {
      return 0;
    }
  }

  if (v1 <= ~digests)
  {
    return &digests[v1 / 4];
  }

  __break(0x5513u);
  return result;
}

uint64_t find_digestOID_for_signingOID(uint64_t a1, void *a2)
{
  if (!compare_octet_string_raw(a1, &sha1WithRSA_oid, 9uLL) || !compare_octet_string_raw(a1, &sha1WithECDSA_oid, 7uLL))
  {
    v6 = &CTOidSha1;
    v4 = 5;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha256WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha256;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha256WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha256;
LABEL_18:
    v4 = 9;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha384WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha384WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_18;
  }

  v4 = 9;
  if (compare_octet_string_raw(a1, &sha512WithRSA_oid, 9uLL))
  {
    if (compare_octet_string_raw(a1, &sha512WithECDSA_oid, 8uLL))
    {
      return 0;
    }

    v6 = &CTOidSha512;
    goto LABEL_18;
  }

  v6 = &CTOidSha512;
LABEL_11:
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

unint64_t validateSignatureRSA(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v31 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (!result)
  {
    goto LABEL_24;
  }

  if (!a2)
  {
    goto LABEL_24;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    goto LABEL_24;
  }

  if (a5 + 7 > a5 + 9)
  {
    goto LABEL_34;
  }

  v8 = result;
  result = compare_octet_string(&rsaEncryption, (a5 + 7));
  if (result)
  {
    result = validateOIDs(&rsaAlgs, (a5 + 3), (a5 + 7));
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v10 = a5[9];
  v9 = a5[10];
  if (__CFADD__(v10, v9))
  {
    goto LABEL_35;
  }

  if (v10 > v10 + v9)
  {
    goto LABEL_34;
  }

  v25 = a5[9];
  v26 = v10 + v9;
  if (v9)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (__CFADD__(v8, a2))
  {
    goto LABEL_35;
  }

  if (v8 + a2 < v8)
  {
    goto LABEL_34;
  }

  result = ccder_decode_rsa_pub_n();
  if (!result)
  {
LABEL_23:
    v5 = 0;
LABEL_24:
    v15 = *MEMORY[0x277D85DE8];
    return v5 & 1;
  }

  v11 = result;
  if (!(result >> 58))
  {
    v12 = result << 6;
    if (result << 6 >= 0x400)
    {
      v29 = 0xAAAAAAAAAAAAAAAALL;
      v30 = -21846;
      v28 = 6;
      if (&vars0 == 82)
      {
        goto LABEL_35;
      }

      v13 = a5[4];
      LOBYTE(v29) = v13;
      if (&v28 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_35;
      }

      if (v13 < 0xA)
      {
        v14 = a5[3];
        result = __memcpy_chk();
        if (result <= result + v13)
        {
          if (v12 > 0x1068)
          {
            goto LABEL_23;
          }

          result = MEMORY[0x28223BE20]();
          v18 = (&v24 - 4 * v17);
          v19 = 0;
          *&v20 = 0xAAAAAAAAAAAAAAAALL;
          *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
          do
          {
            v21 = &v18[v19 / 8];
            *v21 = v20;
            *(v21 + 1) = v20;
            v19 += 32;
          }

          while ((v16 & 0x7FFFFFFFFFFFFFE0) != v19);
          if (v18 + 4 <= &v24 && v18 <= v18 + 4)
          {
            *v18 = v11;
            if (ccrsa_import_pub())
            {
              v5 = 0;
            }

            else
            {
              v23 = a5[11];
              v22 = a5[12];
              if (ccrsa_verify_pkcs1v15_allowshortsigs())
              {
                v5 = 0;
                v27 = 0;
              }

              else
              {
                v5 = v27;
              }
            }

            goto LABEL_24;
          }
        }
      }

LABEL_34:
      __break(0x5519u);
LABEL_35:
      __break(0x5513u);
      goto LABEL_36;
    }

    goto LABEL_23;
  }

LABEL_36:
  __break(0x550Cu);
  return result;
}

uint64_t validateOIDs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 1;
  while (v5 < v5 + 16)
  {
    result = compare_octet_string(v5, a2);
    if (result)
    {
      goto LABEL_11;
    }

    if (v5 + 16 > v5 + 32)
    {
      break;
    }

    result = compare_octet_string(v5 + 16, a3);
    if (result)
    {
LABEL_11:
      v7 = v6 < 3;
      v5 += 32;
      if (++v6 != 4)
      {
        continue;
      }
    }

    return v7;
  }

  __break(0x5519u);
  return result;
}

_UNKNOWN **oidForPubKeyLength()
{
  v0 = ccec_x963_import_pub_size();
  is_supported = ccec_keysize_is_supported();
  v2 = &CTOidSECP256r1;
  v3 = &CTOidSECP521r1;
  v4 = &CTOidSECP384r1;
  if (v0 != 384)
  {
    v4 = 0;
  }

  if (v0 != 521)
  {
    v3 = v4;
  }

  if (v0 != 256)
  {
    v2 = v3;
  }

  if (is_supported)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t *validateSignatureEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v22 = *MEMORY[0x277D85DE8];
  v21 = 0;
  if (!result)
  {
    goto LABEL_31;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    goto LABEL_31;
  }

  v7 = a5 + 72;
  if (a5 + 56 > (a5 + 72))
  {
    goto LABEL_32;
  }

  result = compare_octet_string(&ecPublicKey, a5 + 56);
  if (result)
  {
    result = validateOIDs(&ecAlgs, a5 + 24, a5 + 56);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (v7 > a5 + 88)
  {
    goto LABEL_32;
  }

  result = ccec_cp_for_oid((a5 + 72));
  if (!result)
  {
LABEL_27:
    v5 = 0;
LABEL_31:
    v19 = *MEMORY[0x277D85DE8];
    return (v5 & 1);
  }

  if (result >= result + 4)
  {
    goto LABEL_32;
  }

  v8 = *result;
  if (*result >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    goto LABEL_33;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_34;
  }

  result = MEMORY[0x28223BE20]();
  v14 = &v20[-16 * v13];
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 < 0x10)
  {
    goto LABEL_35;
  }

  *v14 = result;
  if (v14 + 2 > v20 || v14 > v14 + 2)
  {
LABEL_32:
    __break(0x5519u);
LABEL_33:
    __break(0x550Cu);
LABEL_34:
    __break(0x5500u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (MEMORY[0x259CAD500]())
  {
    goto LABEL_30;
  }

  result = ccec_x963_import_pub_size();
  if (result != 256 || *(a5 + 96) != 64)
  {
    v18 = *(a5 + 88);
    if (ccec_verify())
    {
LABEL_29:
      v21 = 0;
    }

LABEL_30:
    v5 = v21;
    goto LABEL_31;
  }

  if (*(a5 + 88) < 0xFFFFFFFFFFFFFFE0)
  {
    v17 = *(a5 + 88);
    if (!ccec_verify_composite())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t ccec_cp_for_oid(int **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 != 7)
  {
    if (v1 == 10 && **a1 == 0x33DCE48862A0806 && *(*a1 + 4) == 1793)
    {
      JUMPOUT(0x259CAD4C0);
    }

    return 0;
  }

  v3 = *a1;
  if (**a1 == -2127887098 && *(*a1 + 3) == 570426497)
  {
    JUMPOUT(0x259CAD4D0);
  }

  v5 = *v3;
  v6 = *(v3 + 3);
  if (v5 != -2127887098 || v6 != 587203713)
  {
    return 0;
  }

  return MEMORY[0x282201600]();
}

uint64_t compressECPublicKey(void *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    result = 655366;
    goto LABEL_19;
  }

  v8 = v7;
  if (v7 >= v7 + 4)
  {
LABEL_20:
    __break(0x5519u);
LABEL_21:
    __break(0x550Cu);
    goto LABEL_22;
  }

  v9 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v9, 3uLL))
  {
    goto LABEL_21;
  }

  v10 = 24 * v9;
  v11 = __CFADD__(v10, 16);
  v12 = v10 + 16;
  if (v11 || v12 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_22:
    __break(0x5500u);
  }

  result = MEMORY[0x28223BE20]();
  v16 = &v20[-2 * v15];
  v17 = 0;
  do
  {
    v18 = &v16[v17 / 8];
    *v18 = 0xAAAAAAAAAAAAAAAALL;
    v18[1] = 0xAAAAAAAAAAAAAAAALL;
    v17 += 16;
  }

  while ((v14 & 0xFFFFFFFFFFFFFFF0) != v17);
  if (v14 >= 0x10)
  {
    *v16 = v8;
    if (v16 + 2 <= v20 && v16 <= v16 + 2)
    {
      result = MEMORY[0x259CAD500](v8, a1[1], *a1, v16);
      if (result)
      {
LABEL_19:
        v19 = *MEMORY[0x277D85DE8];
        return result;
      }

      if (ccec_compressed_x962_export_pub_size() != a4)
      {
        result = 393220;
        goto LABEL_19;
      }

      if (!a3 || a4)
      {
        result = ccec_compressed_x962_export_pub();
        goto LABEL_19;
      }
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t decompressECPublicKey(uint64_t *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = ccec_cp_for_oid(a2);
  if (!v7)
  {
    v20 = 655366;
    goto LABEL_22;
  }

  if (v7 >= v7 + 4)
  {
LABEL_23:
    __break(0x5519u);
    goto LABEL_24;
  }

  v8 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
LABEL_25:
    __break(0x550Cu);
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_24;
  }

  result = MEMORY[0x28223BE20]();
  v15 = &v24[-2 * v14];
  v16 = 0;
  do
  {
    v17 = &v15[v16 / 8];
    *v17 = 0xAAAAAAAAAAAAAAAALL;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 += 16;
  }

  while ((v13 & 0xFFFFFFFFFFFFFFF0) != v16);
  if (v13 >= 0x10)
  {
    *v15 = result;
    if (v15 + 2 <= v24 && v15 <= v15 + 2)
    {
      v19 = *a1;
      v18 = a1[1];
      v20 = ccec_compressed_x962_import_pub();
      if (!v20)
      {
        v21 = *v15;
        v22 = cczp_bitlen();
        if (v22 < 0xFFFFFFFFFFFFFFF9)
        {
          if (!a3 || a4)
          {
            if ((((v22 + 7) >> 2) | 1) == a4)
            {
              v20 = 0;
            }

            else
            {
              v20 = 393220;
            }

            ccec_export_pub();
            goto LABEL_22;
          }

          goto LABEL_23;
        }

LABEL_24:
        __break(0x5500u);
        goto LABEL_25;
      }

LABEL_22:
      v23 = *MEMORY[0x277D85DE8];
      return v20;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t CMSParseContentInfoSignedDataWithOptions(char *a1, uint64_t a2, unint64_t *a3, char a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_110;
  }

  if (&a1[a2] < a1)
  {
    goto LABEL_108;
  }

  v4 = 65537;
  v28 = a1;
  v29 = &a1[a2];
  v27 = 0;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v7 = ccder_blob_decode_ber_tl(&v28, 0x2000000000000010, &v27 + 1, &v26);
  result = 65537;
  if (v7)
  {
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v28, v26))
    {
      goto LABEL_110;
    }

    if (v28 > &v28[v26] || &v28[v26] > v29)
    {
      goto LABEL_108;
    }

    v24 = v28;
    v25 = &v28[v26];
    if (!ccder_blob_decode_tl())
    {
      result = 65538;
      goto LABEL_13;
    }

    if (v25 < v24 || v26 > v25 - v24)
    {
      goto LABEL_108;
    }

    if (compare_octet_string_raw(&pkcs7_signedData_oid, v24, v26))
    {
      result = 65539;
      goto LABEL_13;
    }

    if (__CFADD__(v24, v26))
    {
      goto LABEL_110;
    }

    if (v24 > &v24[v26] || &v24[v26] > v25)
    {
      goto LABEL_108;
    }

    v24 += v26;
    if (!ccder_blob_decode_ber_tl(&v24, 0xA000000000000000, &v27, &v26))
    {
      result = 65540;
      goto LABEL_13;
    }

    v22 = 0xAAAAAAAAAAAAAAAALL;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v24, v26))
    {
      goto LABEL_110;
    }

    if (v24 > &v24[v26] || &v24[v26] > v25)
    {
      goto LABEL_108;
    }

    v22 = v24;
    v23 = &v24[v26];
    v31 = 0;
    memset(v30, 170, sizeof(v30));
    if ((ccder_blob_decode_ber_tl(&v22, 0x2000000000000010, &v31 + 1, v30) & 1) == 0)
    {
      result = 131073;
      goto LABEL_13;
    }

    if (__CFADD__(v22, v30[0]))
    {
      goto LABEL_110;
    }

    v10 = 131080;
    if (&v22[v30[0]] != v23)
    {
      result = 131082;
      goto LABEL_13;
    }

    if (!ccder_blob_decode_uint64())
    {
      result = 131074;
      goto LABEL_13;
    }

    v11 = a3[11];
    result = 131092;
    if (v11 <= 4 && ((1 << v11) & 0x1A) != 0)
    {
      if (!ccder_blob_eat_ber_inner(&v22, 0x2000000000000011, 0, 125))
      {
        result = 131075;
        goto LABEL_13;
      }

      v35 = 0;
      v34 = 0;
      if ((ccder_blob_decode_ber_tl(&v22, 0x2000000000000010, &v35, &v34) & 1) == 0)
      {
        v10 = 131076;
        goto LABEL_44;
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      if (__CFADD__(v22, v34))
      {
        goto LABEL_110;
      }

      if (v22 > &v22[v34] || &v22[v34] > v23)
      {
        goto LABEL_108;
      }

      v32 = v22;
      v33 = &v22[v34];
      if (!ccder_blob_decode_tl())
      {
        v10 = 131077;
        goto LABEL_44;
      }

      if (v33 < v32 || v34 > v33 - v32)
      {
        goto LABEL_108;
      }

      if (compare_octet_string_raw(&pkcs7_data_oid, v32, v34))
      {
        v10 = 131078;
LABEL_44:
        result = v10;
        goto LABEL_13;
      }

      if (__CFADD__(v32, v34))
      {
        goto LABEL_110;
      }

      v12 = &v32[v34];
      if (v32 > &v32[v34] || v12 > v33)
      {
        goto LABEL_108;
      }

      v32 += v34;
      v13 = v35;
      if (v12 != v33 || (v35 & 1) != 0)
      {
        v40 = 0;
        v38 = v33;
        v39 = 0;
        v37 = v12;
        if (ccder_blob_decode_ber_tl(&v37, 0xA000000000000000, &v40, &v39))
        {
          if ((v13 & 1) == 0)
          {
            if (__CFADD__(v37, v39))
            {
              goto LABEL_110;
            }

            if (&v37[v39] != v33)
            {
              goto LABEL_44;
            }
          }

          if (v37 > v38)
          {
            goto LABEL_108;
          }

          v32 = v37;
          v33 = v38;
          v36 = 0;
          v16 = v40;
          if (v40 == 1 && !ccder_blob_decode_ber_tl(&v32, 0x2000000000000004, &v36, &v39))
          {
            v10 = 131079;
            goto LABEL_44;
          }

          v41 = 0;
          if (!ccder_blob_decode_tl())
          {
            v10 = 131090;
            goto LABEL_44;
          }

          v17 = v32;
          v18 = v33;
          if (v33 < v32)
          {
            goto LABEL_108;
          }

          v19 = v41;
          if (v41 > v33 - v32)
          {
            goto LABEL_108;
          }

          a3[9] = v32;
          a3[10] = v19;
          if (__CFADD__(v17, v19))
          {
LABEL_110:
            __break(0x5513u);
            goto LABEL_111;
          }

          v20 = &v17[v19];
          if (v20 > v18 || v17 > v20)
          {
            goto LABEL_108;
          }

          v32 = v20;
          if ((ccder_blob_decode_eoc(&v32, v36) & 1) == 0)
          {
            v10 = 131089;
            goto LABEL_44;
          }
        }

        else
        {
          if (!v13)
          {
            goto LABEL_44;
          }

          v16 = v40;
        }

        if ((ccder_blob_decode_eoc(&v32, v16 & 1) & 1) == 0)
        {
          v10 = 131088;
          goto LABEL_44;
        }

        v12 = v32;
      }

      if (v12 > v23 || v22 > v12)
      {
        goto LABEL_108;
      }

      v22 = v12;
      if ((ccder_blob_decode_eoc(&v22, v13) & 1) == 0)
      {
        v10 = 131081;
        goto LABEL_44;
      }

      v37 = 0xAAAAAAAAAAAAAAAALL;
      v38 = 0xAAAAAAAAAAAAAAAALL;
      if (v22 > v23)
      {
        goto LABEL_108;
      }

      v37 = v22;
      v38 = v23;
      if ((ccder_blob_decode_ber_tl(&v37, 0xA000000000000000, &v31, v30) & 1) == 0)
      {
        v14 = v22;
        v15 = v23;
        goto LABEL_85;
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      if (!__CFADD__(v37, v30[0]))
      {
        if (v37 > &v37[v30[0]] || &v37[v30[0]] > v38)
        {
          goto LABEL_108;
        }

        v32 = v37;
        v33 = &v37[v30[0]];
        if (!CMSParseImplicitCertificateSet(&v32, a3[1], *a3, a3 + 3, a3 + 2))
        {
          result = 131085;
          goto LABEL_13;
        }

        if (!ccder_blob_decode_eoc(&v32, v31))
        {
          result = 131086;
          goto LABEL_13;
        }

        v14 = v32;
        if (v32 >= v37 != v32 - v37 < 0)
        {
          if (v37 > v32)
          {
            goto LABEL_108;
          }

          v15 = v38;
          if (v32 > v38)
          {
            goto LABEL_108;
          }

          v22 = v32;
          v23 = v38;
LABEL_85:
          if (v14 <= v15)
          {
            v37 = v14;
            v38 = v15;
            if (ccder_blob_eat_ber_inner(&v37, 0xA000000000000001, 0, 125))
            {
              if (v37 > v38)
              {
                goto LABEL_108;
              }

              v22 = v37;
              v23 = v38;
            }

            if (!ccder_blob_eat_ber_inner(&v22, 0x2000000000000011, &v30[1], 125))
            {
              result = 131083;
              goto LABEL_13;
            }

            if (v30[2] >= v30[1])
            {
              v21 = &v22[-v30[1]];
              if (&v22[-v30[1]] <= v30[2] - v30[1])
              {
                a3[5] = v30[1];
                a3[6] = v21;
                if ((ccder_blob_decode_eoc(&v22, HIBYTE(v31)) & 1) == 0)
                {
                  result = 131084;
                  goto LABEL_13;
                }

                if (!ccder_blob_decode_eoc(&v22, v27))
                {
                  result = 65541;
                  goto LABEL_13;
                }

                if (v22 <= v25 && v24 <= v22)
                {
                  v24 = v22;
                  if (ccder_blob_decode_eoc(&v24, HIBYTE(v27)))
                  {
                    if ((a4 & 1) == 0 && v24 != v29)
                    {
                      result = 65543;
                      goto LABEL_13;
                    }

LABEL_111:
                    result = 0;
                    goto LABEL_13;
                  }

LABEL_109:
                  result = (v4 + 5);
                  goto LABEL_13;
                }
              }
            }
          }

LABEL_108:
          __break(0x5519u);
          goto LABEL_109;
        }
      }

      goto LABEL_110;
    }
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_blob_decode_ber_tl(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8 && a2 == 0xAAAAAAAAAAAAAAAALL)
  {
    result = ccder_blob_decode_ber_len(a1, a3, a4);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_blob_decode_eoc(unint64_t *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_9;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_10:
    v7 = *MEMORY[0x277D85DE8];
    return result;
  }

  v4 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    v5 = v4 - 0x5555555555555556;
    if (v4 <= v4 - 0x5555555555555556 && v5 <= a1[1])
    {
      *a1 = v5;
LABEL_9:
      result = 1;
      goto LABEL_10;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSParseSignerInfos(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __int128 *))
{
  v84 = *MEMORY[0x277D85DE8];
  v82 = 0xAAAAAAAAAAAAAAAALL;
  v83 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (__CFADD__(v4, v3))
  {
    goto LABEL_94;
  }

  if (v4 > v4 + v3)
  {
LABEL_93:
    __break(0x5519u);
LABEL_94:
    __break(0x5513u);
LABEL_95:
    __break(0x5500u);
  }

  v82 = *(a1 + 40);
  v83 = v4 + v3;
  v70 = 0xAAAAAAAAAAAAAAAALL;
  if (v4 >= v4 + v3)
  {
    v48 = 0;
    result = 0;
    if (!v3)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v8 = 0;
  v60 = 0;
  v9 = 196871;
  v10 = 256;
  while (1)
  {
    v69 = 0;
    v80 = 0u;
    v81 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    DWORD2(v81) = 327681;
    LOBYTE(v80) = v8 + 1;
    if ((ccder_blob_decode_ber_tl(&v82, 0x2000000000000010, &v69, &v70) & 1) == 0)
    {
      result = (v9 - 6);
      goto LABEL_84;
    }

    v67 = 0xAAAAAAAAAAAAAAAALL;
    v68 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v82, v70))
    {
      goto LABEL_94;
    }

    if (v82 > v82 + v70 || v82 + v70 > v83)
    {
      goto LABEL_93;
    }

    v67 = v82;
    v68 = v82 + v70;
    if ((ccder_blob_decode_uint64() & 1) == 0)
    {
      result = (v9 - 5);
      goto LABEL_84;
    }

    v11 = v67;
    v12 = v68;
    v65 = 0xAAAAAAAAAAAAAAAALL;
    v66 = 0xAAAAAAAAAAAAAAAALL;
    if (v67 > v68)
    {
      goto LABEL_93;
    }

    v65 = v67;
    v66 = v68;
    v63 = v67;
    v64 = v68;
    if (ccder_blob_decode_tl())
    {
      v13 = v67;
    }

    else
    {
      if (ccder_blob_decode_tl())
      {
        v13 = v65;
        v14 = v66;
      }

      else
      {
        if (!ccder_blob_decode_tl())
        {
          v59 = 196611;
          goto LABEL_92;
        }

        v13 = v63;
        v14 = v64;
      }

      if (v13 > v14)
      {
        goto LABEL_93;
      }

      v67 = v13;
      v68 = v14;
    }

    if (__CFADD__(v70, v13 - v11))
    {
      goto LABEL_95;
    }

    if (v70 + v13 - v11 > v12 - v11)
    {
      goto LABEL_93;
    }

    *(&v71 + 1) = v11;
    *&v72 = v70 + v13 - v11;
    if (__CFADD__(v13, v70))
    {
      goto LABEL_94;
    }

    if (v13 > v13 + v70 || v13 + v70 > v68)
    {
      goto LABEL_93;
    }

    v67 = v13 + v70;
    if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v67, &v72 + 1))
    {
      v59 = 196612;
LABEL_92:
      result = (v59 + v10);
      goto LABEL_84;
    }

    v61 = 0xAAAAAAAAAAAAAAAALL;
    v62 = 0xAAAAAAAAAAAAAAAALL;
    if (v67 > v68)
    {
      goto LABEL_93;
    }

    v61 = v67;
    v62 = v68;
    if (ccder_blob_decode_tl())
    {
      if (v62 < v61 || v70 > v62 - v61)
      {
        goto LABEL_93;
      }

      *(&v73 + 1) = v61;
      *&v74 = v70;
      if (__CFADD__(v61, v70))
      {
        goto LABEL_94;
      }

      if (v61 + v70 > v62 || v61 > v61 + v70)
      {
        goto LABEL_93;
      }

      v67 = v61 + v70;
      v68 = v62;
    }

    else
    {
      *(&v73 + 1) = 0;
      *&v74 = 0;
    }

    if ((ccder_blob_decode_AlgorithmIdentifierNULL(&v67, &v74 + 1) & 1) == 0)
    {
      result = (v9 - 2);
      goto LABEL_84;
    }

    if ((ccder_blob_decode_tl() & 1) == 0)
    {
      result = (v9 - 1);
      goto LABEL_84;
    }

    if (v68 < v67 || v70 > v68 - v67)
    {
      goto LABEL_93;
    }

    *(&v76 + 1) = v67;
    *&v77 = v70;
    if (__CFADD__(v67, v70))
    {
      goto LABEL_94;
    }

    v15 = v67 + v70;
    if (v67 + v70 > v68 || v67 > v15)
    {
      goto LABEL_93;
    }

    v67 += v70;
    v61 = v15;
    v62 = v68;
    if (ccder_blob_eat_ber_inner(&v61, 0xA000000000000001, 0, 125))
    {
      if (v61 > v62)
      {
        goto LABEL_93;
      }

      v67 = v61;
      v68 = v62;
    }

    if (!ccder_blob_decode_eoc(&v67, v69))
    {
      result = v9;
      goto LABEL_84;
    }

    digest = find_digest(&v72 + 8);
    if (!digest)
    {
      goto LABEL_73;
    }

    v17 = digest;
    v18 = *(a1 + 96);
    if (v18)
    {
      if (*digest > v18)
      {
        goto LABEL_73;
      }
    }

    result = a3(a2, a1, &v71);
    if (result == 327710)
    {
      goto LABEL_73;
    }

    if (result)
    {
      goto LABEL_84;
    }

    v20 = *(a1 + 64);
    if (v20 <= v60)
    {
      if (v20)
      {
        v32 = *(a1 + 56);
        v33 = 176 * v60 - 176;
        if (__CFADD__(v32, v33))
        {
          goto LABEL_94;
        }

        v34 = v32 + v33;
        if (v32 + v33 < v32 || v34 + 176 > v32 + 176 * v20 || v34 > v34 + 176 || v34 + 24 > v34 + 40)
        {
          goto LABEL_93;
        }

        v35 = find_digest(v34 + 24);
        if (v35)
        {
          if (*v17 > *v35)
          {
            v36 = *(a1 + 96);
            if (!v36 || *v17 <= v36)
            {
              v37 = *(a1 + 56);
              if (__CFADD__(v37, v33))
              {
                goto LABEL_94;
              }

              v38 = 176 * *(a1 + 64);
              if ((v38 - v33) < 0xB0)
              {
                goto LABEL_93;
              }

              v39 = (v37 + v33);
              if (v37 + v33 > v37 + v38)
              {
                goto LABEL_93;
              }

              if (v37 > v39)
              {
                goto LABEL_93;
              }

              v40 = v71;
              v41 = v73;
              v39[1] = v72;
              v39[2] = v41;
              *v39 = v40;
              v42 = v74;
              v43 = v75;
              v44 = v77;
              v39[5] = v76;
              v39[6] = v44;
              v39[3] = v42;
              v39[4] = v43;
              v45 = v78;
              v46 = v79;
              v47 = v81;
              v39[9] = v80;
              v39[10] = v47;
              v39[7] = v45;
              v39[8] = v46;
              if (v39 >= v39 + 11)
              {
                goto LABEL_93;
              }
            }
          }
        }
      }

      goto LABEL_73;
    }

    v21 = *(a1 + 96);
    if (!v21 || *v17 <= v21)
    {
      break;
    }

LABEL_73:
    if (v67 > v83 || v82 > v67)
    {
      goto LABEL_93;
    }

    v82 = v67;
    v48 = v8 + 1;
    if (v8 <= 6)
    {
      v10 += 256;
      v9 = (v9 + 256);
      ++v8;
      if (v67 < v83)
      {
        continue;
      }
    }

    if (v67 == v83)
    {
      if (v60)
      {
        goto LABEL_81;
      }

      if (!*(a1 + 64))
      {
        goto LABEL_81;
      }

      v49 = *(a1 + 56);
      v50 = v71;
      v51 = v73;
      v49[1] = v72;
      v49[2] = v51;
      *v49 = v50;
      v52 = v74;
      v53 = v75;
      v54 = v77;
      v49[5] = v76;
      v49[6] = v54;
      v49[3] = v52;
      v49[4] = v53;
      v55 = v78;
      v56 = v79;
      v57 = v81;
      v49[9] = v80;
      v49[10] = v57;
      v49[7] = v55;
      v49[8] = v56;
      if (v49 < v49 + 11)
      {
LABEL_81:
        result = 0;
LABEL_84:
        v58 = *MEMORY[0x277D85DE8];
        return result;
      }

      goto LABEL_93;
    }

LABEL_83:
    result = (v48 << 8) + 196616;
    goto LABEL_84;
  }

  v22 = *(a1 + 56);
  if (__CFADD__(v22, 176 * v60))
  {
    goto LABEL_94;
  }

  if (176 * (v20 - v60) < 0xB0)
  {
    goto LABEL_93;
  }

  v23 = (v22 + 176 * v60);
  v24 = v71;
  v25 = v73;
  v23[1] = v72;
  v23[2] = v25;
  *v23 = v24;
  v26 = v74;
  v27 = v75;
  v28 = v77;
  v23[5] = v76;
  v23[6] = v28;
  v23[3] = v26;
  v23[4] = v27;
  v29 = v78;
  v30 = v79;
  v31 = v81;
  v23[9] = v80;
  v23[10] = v31;
  v23[7] = v29;
  v23[8] = v30;
  if (v23 >= v23 + 11)
  {
    goto LABEL_93;
  }

  if (v60 != 0xFF)
  {
    ++v60;
    goto LABEL_73;
  }

  __break(0x5507u);
  return result;
}

uint64_t CMSBuildPath(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v3 = a3[1];
  v4 = a3[2];
  if (__CFADD__(v3, v4))
  {
LABEL_55:
    __break(0x5513u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_54;
  }

  v20 = a3[1];
  v21 = v5;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  if (*a3 == 3)
  {
    if (*(a2 + 88) == 1)
    {
      v8 = 524298;
      goto LABEL_53;
    }

    v18[2] = 0xAAAAAAAAAAAAAAAALL;
    v18[3] = 0xAAAAAAAAAAAAAAAALL;
    v18[0] = v3;
    v18[1] = v5;
    if (ccder_blob_decode_tl())
    {
      v11 = v20;
      v12 = v21;
    }

    else
    {
      if (!ccder_blob_decode_tl() || !ccder_blob_decode_tl())
      {
        v8 = 524294;
        goto LABEL_53;
      }

      v11 = v18[0];
      v12 = v18[1];
      if (v18[0] > v18[1])
      {
        goto LABEL_54;
      }

      v20 = v18[0];
      v21 = v18[1];
    }

    if (v12 < v11 || v19 > v12 - v11)
    {
      goto LABEL_54;
    }

    v18[2] = v11;
    v18[3] = v19;
    if (__CFADD__(v11, v19))
    {
      goto LABEL_55;
    }

    if (v11 + v19 > v12 || v11 > v11 + v19)
    {
      goto LABEL_54;
    }

    v20 = v11 + v19;
    CertificateUsingKeyIdentifier = X509ChainGetCertificateUsingKeyIdentifier((a2 + 24), &v18[2]);
    if (!CertificateUsingKeyIdentifier)
    {
      v8 = 524295;
      goto LABEL_53;
    }

LABEL_38:
    if (v20 != v21)
    {
      v8 = 524543;
      goto LABEL_53;
    }

    if (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && a2 + 24 <= (a2 + 40))
    {
      v13 = a3 + 19;
      v14 = a3 + 21;
      if (v13 <= v14)
      {
        v15 = X509ChainBuildPath(CertificateUsingKeyIdentifier, (a2 + 24), v13);
        v8 = v15;
        if (*v14 == 327681)
        {
          *v14 = v15;
        }

        goto LABEL_53;
      }
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

  if (*a3 == 1)
  {
    v8 = 524290;
    memset(v18, 170, sizeof(v18));
    if (ccder_blob_decode_tl())
    {
      if (ccder_blob_decode_tl())
      {
        if (v21 < v20 || v19 > v21 - v20)
        {
          goto LABEL_54;
        }

        v18[0] = v20;
        v18[1] = v19;
        if (__CFADD__(v20, v19))
        {
          goto LABEL_55;
        }

        if (v20 + v19 > v21 || v20 > v20 + v19)
        {
          goto LABEL_54;
        }

        v20 += v19;
        if (ccder_blob_decode_tl())
        {
          if (v21 < v20 || v19 > v21 - v20)
          {
            goto LABEL_54;
          }

          v18[2] = v20;
          v18[3] = v19;
          if (__CFADD__(v20, v19))
          {
            goto LABEL_55;
          }

          if (v20 + v19 > v21)
          {
            goto LABEL_54;
          }

          if (v20 > v20 + v19)
          {
            goto LABEL_54;
          }

          v20 += v19;
          v9 = (a2 + 24);
          if (a2 + 24 > (a2 + 40))
          {
            goto LABEL_54;
          }

          CertificateUsingKeyIdentifier = *v9;
          if (*v9)
          {
            while (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && CertificateUsingKeyIdentifier + 15 <= CertificateUsingKeyIdentifier + 17)
            {
              if (!compare_octet_string(v18, (CertificateUsingKeyIdentifier + 15)))
              {
                if (CertificateUsingKeyIdentifier + 17 > CertificateUsingKeyIdentifier + 19)
                {
                  goto LABEL_54;
                }

                if (!compare_octet_string(&v18[2], (CertificateUsingKeyIdentifier + 17)))
                {
                  goto LABEL_38;
                }
              }

              CertificateUsingKeyIdentifier = CertificateUsingKeyIdentifier[34];
              if (!CertificateUsingKeyIdentifier)
              {
                goto LABEL_26;
              }
            }

            goto LABEL_54;
          }

LABEL_26:
          v8 = 524293;
        }

        else
        {
          v8 = 524292;
        }
      }

      else
      {
        v8 = 524291;
      }
    }
  }

  else
  {
    v8 = 524289;
  }

LABEL_53:
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t validateSignerInfo(unint64_t a1, void *a2, uint64_t a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v3 = (a3 + 24);
  v4 = (a3 + 40);
  if (a3 + 24 > (a3 + 40))
  {
    goto LABEL_183;
  }

  digest = find_digest(a3 + 24);
  if (!digest)
  {
    result = 327682;
    goto LABEL_181;
  }

  v9 = (*(digest + 3))();
  v10 = v9;
  memset(v95, 0, sizeof(v95));
  v11 = a2[13];
  v12 = a2[14];
  if (!v11 || !v12)
  {
    if (a2[9] && a2[10])
    {
      v11 = v95;
      v13 = ccdigest();
      v12 = *v10;
      if (*v10 >= 0x41)
      {
        goto LABEL_183;
      }

      goto LABEL_14;
    }

    if (!v11)
    {
      goto LABEL_144;
    }
  }

  if (*v9 != v12)
  {
LABEL_144:
    *(a3 + 168) = 327710;
    result = 327710;
    goto LABEL_181;
  }

  if (v12 >= 0x41)
  {
    goto LABEL_183;
  }

  v15 = a2[13];
  v16 = a2[14];
  v13 = __memcpy_chk();
  if (v13 > v13 + v12)
  {
    goto LABEL_183;
  }

LABEL_14:
  v17 = a1 + 16;
  *(a3 + 128) = v11;
  *(a3 + 136) = v12;
  v18 = (a3 + 128);
  v19 = *(a3 + 48);
  if (!v19)
  {
    goto LABEL_157;
  }

  if (v17 < a1)
  {
    goto LABEL_183;
  }

  v80 = a1 + 16;
  v81 = v10;
  v89 = 0xAAAAAAAAAAAAAAAALL;
  v90 = 0xAAAAAAAAAAAAAAAALL;
  v20 = *v4;
  if (__CFADD__(*v4, v19))
  {
    goto LABEL_184;
  }

  v21 = &v20[v19];
  if (v20 > v21)
  {
    goto LABEL_183;
  }

  v89 = *v4;
  v90 = v21;
  v88 = 0xAAAAAAAAAAAAAAAALL;
  if (v20 >= v21)
  {
LABEL_145:
    result = 262156;
    goto LABEL_179;
  }

  v22 = 0;
  v23 = 0x96463F78648862ALL;
  v84 = 0x2000000000000010;
  v79 = 262146;
  v83 = 262147;
  v82 = 262148;
  do
  {
    if (!ccder_blob_decode_tl())
    {
      result = 262145;
      goto LABEL_179;
    }

    if (__CFADD__(v89, v88))
    {
      goto LABEL_184;
    }

    v24 = &v89[v88];
    v87 = 0xAAAAAAAAAAAAAAAALL;
    v86 = 0xAAAAAAAAAAAAAAAALL;
    if (v89 > &v89[v88] || v24 > v90)
    {
      goto LABEL_183;
    }

    v86 = v89;
    v87 = &v89[v88];
    if (!ccder_blob_decode_tl())
    {
      result = v79;
      goto LABEL_179;
    }

    v26 = v86;
    if (__CFADD__(v86, v88))
    {
      goto LABEL_184;
    }

    if (&v86[v88] > v87 || v86 > &v86[v88])
    {
      goto LABEL_183;
    }

    v86 += v88;
    if (v88 != 9)
    {
      goto LABEL_147;
    }

    if ((v87 - v26) < 9)
    {
      goto LABEL_183;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 3)
    {
      if (v22)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v37 = ccder_blob_decode_tl();
      result = v83;
      if (v37)
      {
        if (CMSAttributeParseContentType(&v86))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 1u;
      goto LABEL_134;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 4)
    {
      if ((v22 & 2) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v40 = ccder_blob_decode_tl();
      result = v83;
      if (v40)
      {
        if (CMSAttributeParseMessageDigest(&v86, v38, v39, a3))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 2u;
      goto LABEL_134;
    }

    if (*v26 == v23 && v26[8] == 2)
    {
      if ((v22 & 0x10) != 0)
      {
        goto LABEL_149;
      }

      v93 = 0xAAAAAAAAAAAAAAAALL;
      v41 = ccder_blob_decode_tl();
      result = v83;
      if (v41)
      {
        v42 = v86;
        v43 = v87;
        if (v86 >= v87)
        {
LABEL_110:
          if (v42 == v43)
          {
            result = 0;
          }

          else
          {
            result = 262155;
          }
        }

        else
        {
          v78 = a1;
          while (1)
          {
            if (!ccder_blob_decode_tl())
            {
              result = 262157;
              goto LABEL_132;
            }

            v94[0] = 0xAAAAAAAAAAAAAAAALL;
            v94[1] = 0xAAAAAAAAAAAAAAAALL;
            if (__CFADD__(v86, v93))
            {
              goto LABEL_184;
            }

            if (v86 > &v86[v93] || &v86[v93] > v87)
            {
              goto LABEL_183;
            }

            v45 = v23;
            v94[0] = v86;
            v94[1] = &v86[v93];
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              result = 262151;
              goto LABEL_131;
            }

            v91 = 0xAAAAAAAAAAAAAAAALL;
            v92 = 0xAAAAAAAAAAAAAAAALL;
            if (v94[1] < v94[0] || v93 > v94[1] - v94[0])
            {
              goto LABEL_183;
            }

            v91 = v94[0];
            v92 = v93;
            if (__CFADD__(v94[0], v93))
            {
              goto LABEL_184;
            }

            if (v94[0] + v93 > v94[1] || v94[0] > v94[0] + v93)
            {
              goto LABEL_183;
            }

            v94[0] += v93;
            if (!ccder_blob_decode_tl())
            {
              result = 262152;
              goto LABEL_131;
            }

            v46 = v94[0];
            if (__CFADD__(v94[0], v93))
            {
              goto LABEL_184;
            }

            v47 = v94[1];
            v48 = v94[0] + v93;
            if (v94[0] + v93 > v94[1] || v94[0] > v48)
            {
              goto LABEL_183;
            }

            v94[0] += v93;
            if (v48 != v94[1])
            {
              break;
            }

            v49 = find_digest(&v91);
            if (v49)
            {
              v50 = *v49;
              if (*v49 > *(a3 + 104))
              {
                v51 = *(v78 + 8);
                if (!v51 || v50 <= v51)
                {
                  *(a3 + 104) = v50;
                  v52 = v93;
                  if (v93 > v47 - v46)
                  {
                    goto LABEL_183;
                  }

                  *(a3 + 112) = v46;
                  *(a3 + 120) = v52;
                }
              }
            }

            v42 = v94[0];
            v43 = v87;
            if (v94[0] > v87 || v86 > v94[0])
            {
              goto LABEL_183;
            }

            v86 = v94[0];
            v23 = v45;
            if (v94[0] >= v87)
            {
              a1 = v78;
              goto LABEL_110;
            }
          }

          result = 262153;
LABEL_131:
          v23 = v45;
LABEL_132:
          a1 = v78;
        }
      }

      v22 |= 0x10u;
      goto LABEL_134;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 5)
    {
      if ((v22 & 4) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v53 = ccder_blob_decode_tl();
      result = v83;
      if (v53)
      {
        if (CMSAttributeParseSigningTime(&v86))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 4u;
      goto LABEL_134;
    }

    if (*v26 == v23 && v26[8] == 1)
    {
      if ((v22 & 8) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v56 = ccder_blob_decode_tl();
      result = v83;
      if (v56)
      {
        if (CMSAttributeParseAppleHashAgility(&v86, v54, v55, a3))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 8u;
LABEL_134:
      if (result)
      {
        goto LABEL_179;
      }

      goto LABEL_135;
    }

    if (*v26 != 0x9010DF78648862ALL || v26[8] != 52)
    {
      v33 = *v26;
      v34 = v26[8];
      if (v33 != 0x9010DF78648862ALL || v34 != 15)
      {
LABEL_147:
        result = 262150;
        goto LABEL_179;
      }

      if ((v22 & 0x40) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v36 = ccder_blob_decode_tl();
      result = v83;
      if (v36)
      {
        if (CMSAttributeParseSMIMECapabilities(&v86))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 0x40u;
      goto LABEL_134;
    }

    if ((v22 & 0x20) != 0)
    {
LABEL_149:
      result = 262149;
      goto LABEL_179;
    }

    v22 |= 0x20u;
LABEL_135:
    if (v24 > v90 || v89 > v24)
    {
      goto LABEL_183;
    }

    v89 = v24;
  }

  while (v24 < v90);
  if ((~v22 & 3) != 0)
  {
    goto LABEL_145;
  }

  v58 = ccder_sizeof_tag();
  v59 = *(a3 + 48);
  result = ccder_sizeof_len();
  v60 = __CFADD__(v58, result);
  v61 = v58 + result;
  v10 = v81;
  if (v60)
  {
    goto LABEL_185;
  }

  if (v61 > 0x14)
  {
    result = 327689;
    goto LABEL_179;
  }

  memset(v94, 170, 20);
  if (__CFADD__(v94, v61))
  {
LABEL_184:
    __break(0x5513u);
  }

  v91 = v94;
  v92 = v94 + v61;
  result = ccder_blob_encode_tl();
  if (!result)
  {
    result = 327688;
    goto LABEL_179;
  }

  v62 = v81[1];
  v60 = __CFADD__(v62, 8);
  v63 = v62 + 8;
  if (v60 || (v64 = v81[2], v60 = __CFADD__(v63, v64), v65 = v63 + v64, v60) || (v60 = __CFADD__(v65, 4), v66 = v65 + 4, v60) || v66 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_185:
    __break(0x5500u);
    return result;
  }

  MEMORY[0x28223BE20]();
  v68 = &v77 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v68, 170, ((v69 - 9) & 0xFFFFFFFFFFFFFFF8) + 8);
  ccdigest_init();
  ccdigest_update();
  v71 = *(a3 + 40);
  v70 = *(a3 + 48);
  ccdigest_update();
  v13 = (v10[7])(v10, v68, v95);
  v17 = v80;
LABEL_157:
  if (v17 <= a1)
  {
LABEL_183:
    __break(0x5519u);
    goto LABEL_184;
  }

  result = CMSBuildPath(v13, a2, a3);
  if (result <= 524294)
  {
    if (!result)
    {
      goto LABEL_169;
    }

    if (result != 524293)
    {
      goto LABEL_179;
    }

    goto LABEL_166;
  }

  switch(result)
  {
    case 0x80007:
LABEL_166:
      *(a3 + 168) = result;
      result = 0;
      goto LABEL_181;
    case 0x80009:
      v72 = 524297;
LABEL_168:
      *(a3 + 168) = v72;
      break;
    case 0x80008:
      if (*(a3 + 168) == 458753)
      {
        v72 = 524296;
        goto LABEL_168;
      }

      break;
    default:
      goto LABEL_179;
  }

LABEL_169:
  v73 = *v10;
  if (*v10 > 0x40)
  {
    goto LABEL_183;
  }

  v85[0] = v95;
  v85[1] = v73;
  v74 = *(a3 + 152);
  if (v74 >= v74 + 304)
  {
    goto LABEL_183;
  }

  result = X509CertificateCheckSignatureDigest(29, v74, v85, v3, (a3 + 88));
  if (!result || result == 655648 || result == 655632)
  {
    v75 = *(a3 + 168);
    if (!v75 || v75 == 458753 || v75 == 327681)
    {
      *(a3 + 168) = result;
    }

    result = 0;
  }

LABEL_179:
  if (*v18 == v95)
  {
    *v18 = 0;
    *(a3 + 136) = 0;
  }

LABEL_181:
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t validateSignerInfoAndChain(uint64_t *a1, void *a2, uint64_t a3)
{
  result = validateSignerInfo(a1, a2, a3);
  v6 = result;
  if (result)
  {
    return v6;
  }

  v7 = (a3 + 152);
  v8 = (a3 + 168);
  if (v7 <= v8)
  {
    v9 = X509ChainCheckPath(29, v7, *a1);
    if (v9)
    {
      if (!*v8)
      {
        *v8 = v9;
      }
    }

    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSVerifySignedDataWithLeaf(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v10[1] = *MEMORY[0x277D85DE8];
  result = CMSVerify(a1, a2, a3, a4, a5, a6, a7, &v9, v10);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CMSVerify(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31[0] = 0;
  memset(v29, 0, sizeof(v29));
  v27 = 0;
  v26 = 0;
  v24 = 0u;
  v25 = &v24 + 8;
  v31[1] = 0;
  memset(__b, 170, sizeof(__b));
  v23[0] = 4;
  v23[1] = __b;
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  v28 = v20;
  *&v29[0] = 1;
  DWORD2(v22) = 327681;
  if (a2 < 0)
  {
    goto LABEL_20;
  }

  result = CMSParseContentInfoSignedDataWithOptions(a1, a2, v23, 0);
  if (result)
  {
    goto LABEL_9;
  }

  if (a4)
  {
    result = 131091;
    if (*(v29 + 8) != 0)
    {
      goto LABEL_9;
    }

    if (a4 < 0)
    {
      goto LABEL_20;
    }

    *(&v29[0] + 1) = a3;
    *&v29[1] = a4;
  }

  v31[0] = a5;
  DWORD2(v22) = 458753;
  result = CMSParseSignerInfos(v23, v31, validateSignerInfoAndChain);
  if (result)
  {
    goto LABEL_9;
  }

  result = DWORD2(v22);
  if (DWORD2(v22))
  {
    goto LABEL_9;
  }

  if (a6 && a7)
  {
    if (*(&v21 + 1) < (*(&v21 + 1) + 304))
    {
      result = X509CertificateParseKey(*(&v21 + 1), a6, a7);
      goto LABEL_14;
    }

LABEL_20:
    __break(0x5519u);
  }

LABEL_14:
  if (!a4)
  {
    if (a8)
    {
      if (a9)
      {
        v19 = *&v29[1];
        if (*&v29[1])
        {
          if (*(&v29[0] + 1))
          {
            *a8 = *(&v29[0] + 1);
            *a9 = v19;
          }
        }
      }
    }
  }

LABEL_9:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CMSVerifySignedData(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = 0;
  result = CMSVerify(a1, a2, a3, a4, a5, &v7, &v8, &v9, v10);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CMSVerifyAndReturnSignedData(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = 0;
  result = CMSVerify(a1, a2, 0, 0, a5, &v7, v8, a3, a4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_blob_decode_ber_len(uint64_t result, _BYTE *a2, unint64_t *a3)
{
  *a2 = 0;
  v3 = *result;
  if (!*result)
  {
    return 0;
  }

  v4 = *(result + 8);
  if (v3 >= v4)
  {
    return 0;
  }

  if (v3 == -1)
  {
    goto LABEL_48;
  }

  v5 = v3 + 1;
  if (v3 >= v3 + 1 || v5 > v4)
  {
    goto LABEL_47;
  }

  *result = v5;
  v7 = *v3;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = *v3;
  if (v9 > 0x81)
  {
    if (v9 == 130)
    {
      if ((v4 - v5) < 2)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          v10 = v3 + 3;
          if (v5 <= v3 + 3 && v10 <= v4)
          {
            v11 = v3[1] << 8;
            v12 = v3[2];
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      if (v9 != 131)
      {
        return v8;
      }

      if ((v4 - v5) < 3)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          if (v3 + 3 >= v5 && (v3 + 3) < v4)
          {
            if (v5 > 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_48;
            }

            v10 = v3 + 4;
            if (v5 <= v3 + 4 && v10 <= v4)
            {
              v11 = (v3[1] << 16) | (v3[2] << 8);
              v12 = v3[3];
LABEL_45:
              v7 = v11 | v12;
              *result = v10;
              goto LABEL_46;
            }
          }
        }
      }
    }

LABEL_47:
    __break(0x5519u);
    goto LABEL_48;
  }

  if (v9 == 128)
  {
    v7 = v4 - v5;
    *a2 = 1;
    goto LABEL_9;
  }

  if (v9 != 129)
  {
    return v8;
  }

  if ((v4 - v5) < 1)
  {
    return 0;
  }

  if (v3 != -2)
  {
    v10 = v3 + 2;
    if (v5 <= v3 + 2 && v10 <= v4)
    {
      *result = v10;
      v7 = *v5;
LABEL_46:
      v5 = v10;
LABEL_9:
      if (v4 - v5 >= v7)
      {
        *a3 = v7;
        return 1;
      }

      return 0;
    }

    goto LABEL_47;
  }

LABEL_48:
  __break(0x5513u);
  return result;
}

uint64_t CMSParseImplicitCertificateSet(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v32[3] = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4 || (memset(v32, 170, 24), v6 = *a1, v7 = a1[1], *a1 > v7))
  {
LABEL_48:
    __break(0x5519u);
LABEL_49:
    __break(0x5513u);
  }

  v32[0] = *a1;
  v32[1] = v7;
  if (v6 < v7 && a3 != 0)
  {
    v11 = 0;
    v12 = 304 * a3;
    v13 = a2 + 304 * a3;
    v27 = ~a2;
    v14 = a4 + 1;
    v15 = a2 + 304;
    while (1)
    {
      v31 = 0;
      if (!ccder_blob_decode_tag())
      {
        goto LABEL_46;
      }

      if (!v32[2])
      {
        goto LABEL_9;
      }

      if (!ccder_blob_decode_ber_len(v32, &v31, &v30) || (v31 & 1) != 0 || v32[2] != 0x2000000000000010)
      {
LABEL_46:
        result = 0;
        goto LABEL_47;
      }

      if ((v11 * 304) >> 64 != (304 * v11) >> 63 || 304 * v11 > v27)
      {
        goto LABEL_49;
      }

      v16 = (v15 - 304);
      if (v15 - 304 > v13)
      {
        goto LABEL_48;
      }

      if (v16 < a2)
      {
        goto LABEL_48;
      }

      v17 = v12 >= 0x130;
      v12 -= 304;
      if (!v17)
      {
        goto LABEL_48;
      }

      *(v15 - 32) = 0u;
      *(v15 - 16) = 0u;
      *(v15 - 64) = 0u;
      *(v15 - 48) = 0u;
      *(v15 - 96) = 0u;
      *(v15 - 80) = 0u;
      *(v15 - 128) = 0u;
      *(v15 - 112) = 0u;
      *(v15 - 160) = 0u;
      *(v15 - 144) = 0u;
      *(v15 - 192) = 0u;
      *(v15 - 176) = 0u;
      *(v15 - 224) = 0u;
      *(v15 - 208) = 0u;
      *(v15 - 256) = 0u;
      *(v15 - 240) = 0u;
      *(v15 - 288) = 0u;
      *(v15 - 272) = 0u;
      *v16 = 0u;
      if (v16 > v15)
      {
        goto LABEL_48;
      }

      if (v11)
      {
        if (v15 > v13)
        {
          goto LABEL_48;
        }

        *(v15 - 32) = 0;
        v18 = *v14;
        *(v15 - 24) = *v14;
        if (v16 > v15)
        {
          goto LABEL_48;
        }

        *v18 = v16;
        *v14 = v15 - 32;
        if (v15 != 304)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v15 > v13)
        {
          goto LABEL_48;
        }

        v19 = *a4;
        *(v15 - 32) = *a4;
        v20 = v15 - 32;
        v21 = (v15 - 24);
        if (v19)
        {
          if (v20 > v21)
          {
            goto LABEL_48;
          }

          v22 = (v19 + 280);
        }

        else
        {
          v22 = v14;
          if (v20 > v21)
          {
            goto LABEL_48;
          }
        }

        *v22 = v20;
        if (v16 > v15)
        {
          goto LABEL_48;
        }

        *a4 = v16;
        if (v14 < a4)
        {
          goto LABEL_48;
        }

        *v21 = a4;
        if (v15 != 304)
        {
LABEL_37:
          if (v15 > v13 || v16 > v15)
          {
            goto LABEL_48;
          }
        }
      }

      if (X509CertificateParseImplicit(v15 - 304, v32, 0, 0))
      {
        goto LABEL_46;
      }

      v23 = v32[0];
      v24 = v32[0] - v6;
      if (v32[0] - v6 > v7 - v6)
      {
        goto LABEL_48;
      }

      if (v15 > v13)
      {
        goto LABEL_48;
      }

      *v16 = v6;
      *(v15 - 296) = v24;
      v7 = v32[1];
      if (v23 > v32[1])
      {
        goto LABEL_48;
      }

      *a1 = v23;
      a1[1] = v7;
      ++v11;
      if (v23 < v7)
      {
        v15 += 304;
        v6 = v23;
        if (v11 < a3)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_9:
  if (a5)
  {
    *a5 = v11;
  }

  result = 1;
LABEL_47:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_blob_eat_ber_inner(unint64_t *a1, uint64_t a2, unint64_t *a3, int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (!v8 || v15 != a2)
  {
    goto LABEL_17;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  result = ccder_blob_decode_ber_len(a1, &v16, &v14);
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    v10 = a1[1];
    if (*a1 > v10)
    {
LABEL_18:
      __break(0x5519u);
      goto LABEL_19;
    }

    *a3 = *a1;
    a3[1] = v10;
  }

  if (v16 == 1)
  {
    if (a4 < 1)
    {
      goto LABEL_11;
    }

    result = ccder_blob_eat_ber_inner(a1, 0, 0, (a4 - 1));
    if (!result)
    {
LABEL_17:
      v13 = *MEMORY[0x277D85DE8];
      return result;
    }

    if ((ccder_blob_decode_eoc(a1, 1) & 1) == 0)
    {
LABEL_11:
      result = 0;
      goto LABEL_17;
    }

LABEL_16:
    result = 1;
    goto LABEL_17;
  }

  v11 = *a1;
  if (!__CFADD__(*a1, v14))
  {
    v12 = v11 + v14;
    if (v11 <= v11 + v14 && v12 <= a1[1])
    {
      *a1 = v12;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(0x5513u);
  return result;
}

uint64_t CMSAttributeParseContentType(char **a1)
{
  v5 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    if (v3 - 0x5555555555555556 != a1[1])
    {
      result = 0;
LABEL_7:
      v4 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (v3 <= v3 - 0x5555555555555556)
    {
      result = compare_octet_string_raw(&pkcs7_data_oid, v3, 0xAAAAAAAAAAAAAAAALL) == 0;
      goto LABEL_7;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSAttributeParseMessageDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_16;
  }

  if (*a1 >= 0x5555555555555556uLL)
  {
    __break(0x5513u);
  }

  else
  {
    if (*a1 - 0x5555555555555556 != *(a1 + 8))
    {
      result = 0;
LABEL_16:
      v10 = *MEMORY[0x277D85DE8];
      return result;
    }

    result = a4 + 24;
    if (a4 + 24 <= (a4 + 40))
    {
      result = find_digest(result);
      if (!result)
      {
        goto LABEL_16;
      }

      if (*(a4 + 136) != 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_14;
      }

      result = (*(result + 24))();
      if (*result != 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_14;
      }

      v7 = *(a1 + 8);
      v8 = v7 >= *a1;
      v9 = v7 - *a1;
      if (v8 && *(a4 + 136) >= 0xAAAAAAAAAAAAAAAALL && v9 >= 0xAAAAAAAAAAAAAAAALL)
      {
        if (!memcmp(*(a4 + 128), *a1, 0xAAAAAAAAAAAAAAAALL))
        {
LABEL_15:
          result = 1;
          goto LABEL_16;
        }

LABEL_14:
        *(a4 + 168) = 458754;
        goto LABEL_15;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSAttributeParseSigningTime(unint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*a1 > a1[1])
  {
    goto LABEL_10;
  }

  v5 = *a1;
  v6 = a1[1];
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    goto LABEL_7;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_9:
    v4 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = v5;
  if (v5 > v6)
  {
LABEL_10:
    __break(0x5519u);
  }

  *a1 = v5;
  a1[1] = v6;
LABEL_7:
  if (v3 < 0x5555555555555556)
  {
    result = v3 - 0x5555555555555556 == a1[1];
    goto LABEL_9;
  }

  __break(0x5513u);
  return result;
}

uint64_t CMSAttributeParseAppleHashAgility(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    if (v7 - 0x5555555555555556 != a1[1])
    {
      result = 0;
LABEL_9:
      v8 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (*(a4 + 104))
    {
LABEL_8:
      result = 1;
      goto LABEL_9;
    }

    if (v7 <= v7 - 0x5555555555555556)
    {
      *(a4 + 112) = v7;
      *(a4 + 120) = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_8;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSAttributeParseSMIMECapabilities(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_4;
  }

  if (*a1 < 0x5555555555555556uLL)
  {
    result = *a1 - 0x5555555555555556 == a1[1];
LABEL_4:
    v3 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(0x5513u);
  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_partial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 <= *(a2 + 8))
  {
    return memcmp(*a2, *a1, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v6 = *a1;
    v7 = *a1;
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (a2)
      {
        if (v7 < v6)
        {
          goto LABEL_20;
        }

        *a2 = v6;
        a2[1] = 0;
      }

      if (v6 == v7)
      {
        if (v6 <= a1[1] && *a1 <= v6)
        {
          *a1 = v6;
LABEL_18:
          result = 1;
          goto LABEL_19;
        }

LABEL_20:
        __break(0x5519u);
      }

      if (v6 > v7)
      {
        goto LABEL_20;
      }

      result = ccder_blob_decode_tl();
      if (result)
      {
        if (v6 != v7)
        {
          result = 0;
          goto LABEL_19;
        }

        if (v6 <= a1[1] && *a1 <= v6)
        {
          *a1 = v6;
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_blob_decode_Time(uint64_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*a1 > a1[1])
  {
    goto LABEL_7;
  }

  v4 = *a1;
  if ((ccder_blob_decode_tl() & 1) == 0)
  {
    if (*a1 <= a1[1])
    {
      v5 = *a1;
      ccder_blob_decode_tl();
      result = 0;
      goto LABEL_6;
    }

LABEL_7:
    __break(0x5519u);
  }

  result = 0;
LABEL_6:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_blob_decode_GeneralName(unint64_t *a1, int *a2, unint64_t *a3)
{
  result = 0;
  v22 = *MEMORY[0x277D85DE8];
  if (a2 && a3)
  {
    *a3 = 0;
    a3[1] = 0;
    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v11 = *a1;
    if (ccder_blob_decode_tl())
    {
      *a2 = 0;
LABEL_6:
      v7 = v11;
LABEL_16:
      if (v7 <= a1[1] && *a1 <= v7)
      {
        *a1 = v7;
        result = 1;
        goto LABEL_19;
      }

LABEL_42:
      __break(0x5519u);
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v12 = *a1;
    v17 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v12;
      if (v17 < v12)
      {
        goto LABEL_42;
      }

      *a3 = v12;
      a3[1] = 0;
      v8 = 1;
    }

    else
    {
      if (*a1 > a1[1])
      {
        goto LABEL_42;
      }

      v13 = *a1;
      v18 = a1[1];
      if (!ccder_blob_decode_tl())
      {
        if (*a1 > a1[1])
        {
          goto LABEL_42;
        }

        v11 = *a1;
        if (ccder_blob_decode_tl())
        {
          v10 = 3;
        }

        else
        {
          if (*a1 > a1[1])
          {
            goto LABEL_42;
          }

          v14 = *a1;
          v19 = a1[1];
          if (ccder_blob_decode_tl())
          {
            v7 = v14;
            if (v19 < v14)
            {
              goto LABEL_42;
            }

            *a3 = v14;
            a3[1] = 0;
            v8 = 4;
            goto LABEL_15;
          }

          if (*a1 > a1[1])
          {
            goto LABEL_42;
          }

          v11 = *a1;
          if (ccder_blob_decode_tl())
          {
            v10 = 5;
          }

          else
          {
            if (*a1 > a1[1])
            {
              goto LABEL_42;
            }

            v15 = *a1;
            v20 = a1[1];
            if (ccder_blob_decode_tl())
            {
              v7 = v15;
              if (v20 < v15)
              {
                goto LABEL_42;
              }

              *a3 = v15;
              a3[1] = 0;
              v8 = 6;
              goto LABEL_15;
            }

            if (*a1 > a1[1])
            {
              goto LABEL_42;
            }

            v16 = *a1;
            v21 = a1[1];
            if (ccder_blob_decode_tl())
            {
              v7 = v16;
              if (v21 < v16)
              {
                goto LABEL_42;
              }

              *a3 = v16;
              a3[1] = 0;
              v8 = 7;
              goto LABEL_15;
            }

            if (*a1 > a1[1])
            {
              goto LABEL_42;
            }

            v11 = *a1;
            result = ccder_blob_decode_tl();
            if (!result)
            {
              goto LABEL_19;
            }

            v10 = 8;
          }
        }

        *a2 = v10;
        goto LABEL_6;
      }

      v7 = v13;
      if (v18 < v13)
      {
        goto LABEL_42;
      }

      *a3 = v13;
      a3[1] = 0;
      v8 = 2;
    }

LABEL_15:
    *a2 = v8;
    goto LABEL_16;
  }

LABEL_19:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_blob_check_null()
{
  v2 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTParseCertificateSet(unint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  v19 = *MEMORY[0x277D85DE8];
  if (a1 < a2 && a4)
  {
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3;
    v11 = &a3[a4];
    while (1)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v18[17] = v12;
      v18[18] = v12;
      v18[15] = v12;
      v18[16] = v12;
      v18[13] = v12;
      v18[14] = v12;
      v18[11] = v12;
      v18[12] = v12;
      v18[9] = v12;
      v18[10] = v12;
      v18[7] = v12;
      v18[8] = v12;
      v18[5] = v12;
      v18[6] = v12;
      v18[3] = v12;
      v18[4] = v12;
      v18[1] = v12;
      v18[2] = v12;
      v18[0] = v12;
      v16 = a1;
      v17 = a2;
      result = X509CertificateParse(v18, &v16);
      if (result)
      {
        break;
      }

      a1 = v16;
      a2 = v17;
      if (v16 > v17 || v10 < a3 || (v10 + 1) > v11 || v10 > v10 + 1)
      {
        __break(0x5519u);
      }

      *v10 = v18[0];
      v6 = v8 + 1;
      if (a1 < a2)
      {
        ++v10;
        if (v9 != v8++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
LABEL_12:
    result = 0;
    if (a5)
    {
      *a5 = v6;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTParseExtensionValue(unint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5, void *a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_11;
  }

  v11[0] = a1;
  v11[1] = a1 + a2;
  result = X509CertificateParseWithExtension(v12, v11, a3, a4);
  if (!result)
  {
    result = 720914;
    if (*(&v13 + 1))
    {
      v10 = v14;
      if (v14)
      {
        result = 0;
        if (a5)
        {
          if (a6)
          {
            result = 0;
            *a5 = *(&v13 + 1);
            *a6 = v10;
          }
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTParseKey(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_7:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_7;
  }

  v8[0] = a1;
  v8[1] = a1 + a2;
  result = X509CertificateParse(v9, v8);
  if (!result)
  {
    result = X509CertificateParseKey(v9, a3, a4);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTEvaluateCertifiedChip(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, _BYTE *a7, uint64_t a8, const void *a9, size_t a10, BOOL *a11, uint64_t a12, uint64_t a13)
{
  __b[152] = *MEMORY[0x277D85DE8];
  memset(__b, 170, 0x4C0uLL);
  memset(v37, 170, sizeof(v37));
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_42;
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_41;
  }

  v34 = a1;
  v35 = a1 + a2;
  CommonName = X509ChainParseCertificateSet(&v34, __b, 4, &v37[2], &v36);
  if (CommonName)
  {
LABEL_4:
    v22 = CommonName;
    goto LABEL_25;
  }

  v22 = 327690;
  if (v34 != v35)
  {
    goto LABEL_25;
  }

  if (v36 != 2)
  {
    v22 = 327692;
    goto LABEL_25;
  }

  X509ChainResetChain(v37, &v37[2]);
  __b[74] = v37[0];
  v23 = v37[0] ? (v37[0] + 296) : &v37[1];
  *v23 = &__b[74];
  if ((&__b[38] + 1) != 0 && __b >= 0xFFFFFFFFFFFFFECFLL)
  {
LABEL_42:
    __break(0x5513u);
  }

  v37[0] = &__b[38];
  __b[75] = v37;
  __b[36] = 0;
  __b[37] = v37[1];
  *v37[1] = __b;
  v37[1] = &__b[36];
  CommonName = X509ChainCheckPathWithOptions(12, v37, a12, 0);
  if (CommonName)
  {
    goto LABEL_4;
  }

  v24 = **(v37[1] + 8);
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v32 = a3;
  v33 = a4;
  v25 = oidForPubKeyLength();
  if (v24 > v24 + 304)
  {
    goto LABEL_41;
  }

  if (v24 + 16 > v24 + 32)
  {
    goto LABEL_41;
  }

  v26 = (v24 + 56);
  if (v24 + 40 > v24 + 56 || v26 > v24 + 72)
  {
    goto LABEL_41;
  }

  CommonName = X509CertificateCheckSignatureWithPublicKey(&v32, &ecPublicKey, v25, (v24 + 16), (v24 + 40), v26);
  if (CommonName)
  {
    goto LABEL_4;
  }

  if (a9 && a10)
  {
    if ((a10 & 0x8000000000000000) != 0 || v24 + 248 > v24 + 264)
    {
      goto LABEL_41;
    }

    if (compare_octet_string_raw(v24 + 248, a9, a10))
    {
      v22 = 590085;
      goto LABEL_25;
    }
  }

  v29 = v37[0];
  if (v37[0] >= v37[0] + 304)
  {
LABEL_41:
    __break(0x5519u);
    goto LABEL_42;
  }

  v30 = X509CertificateParseKey(v37[0], a5, a6);
  if (v30)
  {
    v22 = v30;
  }

  else
  {
    v22 = 327691;
  }

  if (v29 && !v30)
  {
    if (a11)
    {
      *a11 = (*(v29 + 240) & a13) != 0;
    }

    if (!a7 || !a8)
    {
      goto LABEL_40;
    }

    v31[0] = 0;
    v31[1] = 0;
    if (v29 + 104 <= v29 + 120)
    {
      CommonName = X509CertificateSubjectNameGetCommonName((v29 + 104), v31);
      if (CommonName)
      {
        goto LABEL_4;
      }

      if ((a8 & 0x8000000000000000) == 0)
      {
        CommonName = CTCopyUID(v31, a7, a8);
        if (CommonName)
        {
          goto LABEL_4;
        }

LABEL_40:
        v22 = 0;
        goto LABEL_25;
      }
    }

    goto LABEL_41;
  }

LABEL_25:
  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t CTEvaluateCertsForPolicy(unint64_t a1, uint64_t a2, char a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, __int128 *a11)
{
  v46 = *MEMORY[0x277D85DE8];
  memset(v42, 170, sizeof(v42));
  bzero(v43, 0x4C0uLL);
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_47:
    __break(0x5513u);
  }

  v41 = 0xAAAAAAAAAAAAAAAALL;
  if (a1 + a2 < a1)
  {
    goto LABEL_46;
  }

  v39 = a1;
  v40 = a1 + a2;
  result = X509ChainParseCertificateSet(&v39, v43, 4, &v42[2], &v41);
  if (result)
  {
    goto LABEL_34;
  }

  if (v39 != v40)
  {
    result = 327690;
    goto LABEL_34;
  }

  if ((a4 & 1) == 0 && !v44)
  {
    X509ChainResetChain(v42, &v42[2]);
    v20 = v42[0];
    v21 = (v42[0] + 296);
    if (!v42[0])
    {
      v21 = &v42[1];
    }

    *v21 = v45;
    v42[0] = v43;
    v45[0] = v20;
    v45[1] = v42;
LABEL_23:
    v38[0] = a7;
    v38[1] = a8;
    if (a7)
    {
      v24 = a8 == 0;
    }

    else
    {
      v24 = 1;
    }

    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = 0xAAAAAAAAAAAAAAAALL;
    v35 = v25;
    v36 = v25;
    v34 = *a11;
    LOBYTE(v35) = *(a11 + 16);
    if (v24)
    {
      v26 = a3;
    }

    else
    {
      v26 = 1;
    }

    BYTE1(v35) = v26;
    WORD1(v35) = *(a11 + 9);
    if (!v24)
    {
      v27 = *(a11 + 4);
      *(&v35 + 1) = v38;
      *&v36 = v27;
      v28 = oidForPubKeyLength();
LABEL_33:
      v30 = *(a11 + 6);
      *(&v36 + 1) = v28;
      v37 = v30;
      result = X509ChainCheckPathWithOptions(12, v42, &v34, 0);
      if (result)
      {
        goto LABEL_34;
      }

      v32 = v42[0];
      if (!a5 || !a6 || !v42[0])
      {
        goto LABEL_40;
      }

      if (v42[0] < v42[0] + 304)
      {
        result = X509CertificateParseKey(v42[0], a5, a6);
        if (result)
        {
          goto LABEL_34;
        }

LABEL_40:
        if (a10 && v32)
        {
          v33 = v32[32];
          *a10 = v32[31];
          a10[1] = v33;
        }

        result = 0;
        if (a9 && v32)
        {
          result = 0;
          *a9 = v32[30];
        }

        goto LABEL_34;
      }

      goto LABEL_46;
    }

    if (*(a11 + 3) < (*(a11 + 3) + 16))
    {
      v29 = *(a11 + 4);
      v28 = *(a11 + 5);
      *(&v35 + 1) = *(a11 + 3);
      *&v36 = v29;
      goto LABEL_33;
    }

LABEL_46:
    __break(0x5519u);
    goto LABEL_47;
  }

  if (v43[265] != 1)
  {
    v23 = &v46;
    v22 = v43;
    goto LABEL_20;
  }

  if (!v42[2])
  {
    v22 = 0;
    goto LABEL_22;
  }

  v22 = v42[2];
  do
  {
    if ((v22[265] & 1) == 0)
    {
      v23 = (v22 + 304);
      if (v22 < v22 + 304)
      {
        goto LABEL_20;
      }

      goto LABEL_46;
    }

    v22 = *(v22 + 34);
  }

  while (v22);
  v23 = (v42[2] + 304);
  v22 = v42[2];
LABEL_20:
  if (v22 + 304 > v23 || v22 > v22 + 304)
  {
    goto LABEL_46;
  }

LABEL_22:
  result = X509ChainBuildPathPartial(v22, &v42[2], v42, a4 ^ 1u);
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_34:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTEvaluatePragueSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0xAAAAAAAA0000AA01;
  v9 = xmmword_259AF3050;
  BYTE1(v10) = a5;
  v11 = 0u;
  v12 = 0u;
  result = CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v9, a6, a7);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTEvaluateKDLSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0xAAAAAAAA0000AA01;
  v9 = xmmword_259AF3060;
  BYTE1(v10) = a5;
  v11 = 0u;
  v12 = 0u;
  result = CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v9, a6, a7);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTVerifyAppleMarkerExtension(void *a1, uint64_t a2)
{
  result = 327700;
  v4 = a1[31];
  v5 = a1[32];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 327707;
  }

  v7 = a1[30];
  if ((v7 & 0x100000000) == 0)
  {
    if ((v7 & 0x200000000) == 0)
    {
      return result;
    }

    if (!__CFADD__(v4, v5))
    {
      v11 = v4 + v5;
      if (v4 + v5 != -1)
      {
        if (v5 > 0x13)
        {
          return 327704;
        }

        v15 = (v11 - 1);
        if (v11 - 1 >= v4)
        {
          v16 = 0;
          v10 = 0;
          v17 = 0;
          while (v15 < v11)
          {
            v18 = *v15;
            if ((v18 - 58) < 0xFFFFFFF6)
            {
              return 327705;
            }

            v19 = (&powersOfTen + v16);
            if ((&powersOfTen + v16) < &powersOfTen || v19 + 1 > &CTOidCommonName || v19 > v19 + 1)
            {
              break;
            }

            if (v16 == 160 || (v17 & 0x1FFFFFFFFFFFFFFFLL) == 0x14)
            {
              goto LABEL_42;
            }

            v20 = v18 & 0xF;
            v21 = *v19;
            if (!is_mul_ok(v20, v21))
            {
              goto LABEL_43;
            }

            v22 = v20 * v21;
            v14 = __CFADD__(v10, v22);
            v10 += v22;
            if (v14)
            {
              goto LABEL_41;
            }

            ++v17;
            --v15;
            v16 += 8;
            if (v15 < v4)
            {
              goto LABEL_23;
            }
          }

LABEL_40:
          __break(0x5519u);
LABEL_41:
          __break(0x5500u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(0x550Cu);
          goto LABEL_44;
        }

        goto LABEL_13;
      }
    }

LABEL_44:
    __break(0x5513u);
    return result;
  }

  if (__CFADD__(v4, v5))
  {
    goto LABEL_44;
  }

  v8 = v4 + v5;
  if (v4 + v5 == -1)
  {
    goto LABEL_44;
  }

  v9 = (v8 - 1);
  if (v8 - 1 >= v4)
  {
    LOBYTE(v12) = 0;
    v10 = 0;
    while (v9 < v8)
    {
      v13 = (*v9 & 0x7F) << (7 * v12);
      v14 = __CFADD__(v10, v13);
      v10 += v13;
      if (v14)
      {
        goto LABEL_41;
      }

      if (--v9 >= v4)
      {
        v12 = (v12 + 1);
        if (v12 < 9)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_13:
  v10 = 0;
LABEL_23:
  if (v10 == a2)
  {
    return 0;
  }

  else
  {
    return 589829;
  }
}

uint64_t CTVerifyHostname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 327702;
  if (*(a1 + 232) && *(a1 + 224))
  {
    v8[1] = a3;
    v9 = 0xAAAAAAAAAAAAAA00;
    v8[0] = a2;
    v4 = X509CertificateParseGeneralNamesContent(a1, CTCompareGeneralNameToHostname, v8);
    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = 327706;
    }

    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = v5;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t CTCompareGeneralNameToHostname(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != 2)
  {
    return 1;
  }

  v3 = *a3;
  v4 = a3[1];
  v5 = ~*a3;
  if (v4 > v5)
  {
    goto LABEL_55;
  }

  v6 = &v3[v4];
  if (&v3[v4] == -1)
  {
    goto LABEL_55;
  }

  v7 = v6 - 1;
  if (v6)
  {
    v8 = v7 >= v3;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_54;
  }

  if (a3 + 3 < a3)
  {
    goto LABEL_54;
  }

  v9 = a3 + 2;
  if (a3 + 2 < a3)
  {
    goto LABEL_54;
  }

  v11 = *v7;
  result = compare_octet_string(a2, a3);
  if (!result)
  {
    goto LABEL_53;
  }

  if (v11 != 46)
  {
    goto LABEL_16;
  }

  v12 = v4 - 1;
  if (v4)
  {
    if (v12 <= v4)
    {
      result = compare_octet_string_raw(a2, v3, v12);
      if (result)
      {
LABEL_16:
        v13 = a2[1];
        if (v13 < 3)
        {
          return 1;
        }

        v14 = *a2;
        if (**a2 != 42)
        {
          return 1;
        }

        if (v14 != -1)
        {
          if (v14[1] == 46)
          {
            v15 = -2;
            if (v14 < 0xFFFFFFFFFFFFFFFELL)
            {
              v15 = *a2;
            }

            v16 = -v15;
            v17 = 2;
            result = 1;
            while (v16 != v17)
            {
              if (v14[v17] == 46)
              {
                if (v13 == v17)
                {
                  return 1;
                }

                v18 = 0;
                if (v4)
                {
                  while (1)
                  {
                    v19 = &v3[v18];
                    if (&v3[v18] >= v6 || v19 < v3)
                    {
                      goto LABEL_54;
                    }

                    if (*v19 == 46)
                    {
                      break;
                    }

                    if (v4 == ++v18)
                    {
                      v18 = v4;
                      break;
                    }
                  }
                }

                v21 = v13 - 1;
                v8 = v4 >= v18;
                v22 = v4 - v18;
                if (!v8)
                {
                  goto LABEL_56;
                }

                if (v21 == v22)
                {
                  if (v18 > v5)
                  {
                    goto LABEL_55;
                  }

                  v23 = &v3[v18];
                  if (&v3[v18] > v6 || v3 > v23)
                  {
                    goto LABEL_54;
                  }

                  result = memcmp(v14 + 1, v23, v13 - 1);
                  if (!result)
                  {
                    goto LABEL_53;
                  }
                }

                if (v11 != 46)
                {
                  return 1;
                }

                if (!v22)
                {
                  goto LABEL_56;
                }

                if (v21 != v22 - 1)
                {
                  return 1;
                }

                if (v18 > v5)
                {
                  goto LABEL_55;
                }

                v24 = &v3[v18];
                if (&v3[v18] > v6 || v3 > v24 || v21 > v22)
                {
                  goto LABEL_54;
                }

                if (!memcmp(v14 + 1, v24, v21))
                {
                  goto LABEL_53;
                }

                return 1;
              }

              if (v13 == ++v17)
              {
                return result;
              }
            }

            goto LABEL_55;
          }

          return 1;
        }

LABEL_55:
        __break(0x5513u);
        goto LABEL_56;
      }

LABEL_53:
      result = 0;
      *v9 = 1;
      return result;
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

LABEL_56:
  __break(0x5515u);
  return result;
}

uint64_t CTEvaluateAppleSSLWithOptionalTemporalCheck(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0xAAAAAAAA00AAAA01;
  v22 = &null_octet;
  v20 = xmmword_259AF3070;
  BYTE1(v21) = a6;
  BYTE2(v21) = a7;
  v23 = &null_octet;
  v24 = &null_octet;
  v25 = &CTOctetServerAuthEKU;
  v18 = 0;
  v19 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, a6, 1, &v18, &v19, 0, 0, 0, 0, &v20);
  if (result)
  {
LABEL_6:
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[17] = v13;
  v17[18] = v13;
  v17[15] = v13;
  v17[16] = v13;
  v17[13] = v13;
  v17[14] = v13;
  v17[11] = v13;
  v17[12] = v13;
  v17[9] = v13;
  v17[10] = v13;
  v17[7] = v13;
  v17[8] = v13;
  v17[6] = v13;
  v17[4] = v13;
  v17[5] = v13;
  v17[2] = v13;
  v17[3] = v13;
  v17[0] = v13;
  v17[1] = v13;
  memset(v16, 170, sizeof(v16));
  if (!__CFADD__(a1, a2))
  {
    v15[0] = a1;
    v15[1] = a1 + a2;
    result = X509ChainParseCertificateSet(v15, v17, 1, &v16[1], v16);
    if (!result)
    {
      result = CTVerifyAppleMarkerExtension(v17, a5);
      if (!result)
      {
        result = CTVerifyHostname(v17, a3, a4);
      }
    }

    goto LABEL_6;
  }

  __break(0x5513u);
  return result;
}

uint64_t CTGetSEKType(unint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_10:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_10;
  }

  v4[0] = a1;
  v4[1] = a1 + a2;
  if (X509CertificateParse(v5, v4))
  {
    result = 0;
  }

  else if (compare_octet_string(&v5[10] + 8, &SEKTestRootSKID))
  {
    result = compare_octet_string(&v5[10] + 8, &SEKProdRootSKID) == 0;
  }

  else
  {
    result = 2;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTEvaluateSEK(char a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = 327712;
  if ((a1 & 3) != 0)
  {
    if ((a1 & 1) == 0 || (result = CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, 0, 0, 0, 0, X509PolicySEK), result))
    {
      if ((a1 & 2) != 0)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, &SEKTestRoot_public_key, 97, 0, 0, X509PolicySEK);
      }
    }
  }

  return result;
}

uint64_t CTGetICDPFederationType(unint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_20:
    __break(0x5513u);
  }

  if (a1 + a2 < a1)
  {
LABEL_19:
    __break(0x5519u);
    goto LABEL_20;
  }

  v9 = a1;
  v10 = a1 + a2;
  if (X509CertificateParse(v11, &v9) || (v4 = numICDPRoots, !numICDPRoots))
  {
LABEL_4:
    result = 0;
  }

  else
  {
    v5 = icdpFederationAnchors;
    while (1)
    {
      v6 = v5 + 3;
      if (v5 < icdpFederationAnchors || v6 > &off_2798EA168 || v5 >= v6)
      {
        goto LABEL_19;
      }

      if (!compare_octet_string(&v11[10] + 8, *v5))
      {
        break;
      }

      v5 += 3;
      if (!--v4)
      {
        goto LABEL_4;
      }
    }

    result = v5[2];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CTEvaluateICDPFederation(uint64_t result, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if ((result & 0x7F) == 0)
  {
    return 327712;
  }

  v5 = numICDPRoots;
  if (!numICDPRoots)
  {
    return 327712;
  }

  v6 = 0;
  v7 = 0;
  v8 = off_2798EA0D8;
  while (1)
  {
    v9 = v8 - 3 < icdpFederationAnchors || v8 > &off_2798EA168;
    if (v9 || v8 - 3 >= v8)
    {
      break;
    }

    if (*(v8 - 1) == result)
    {
      v6 = *(v8 - 2);
      v7 = (v6 + 2);
    }

    v8 += 3;
    if (!--v5)
    {
      if (!v6)
      {
        return 327712;
      }

      if ((v6 + 2) <= v7)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, *v6, v6[1], 0, 0, X509PolicyICDPFederation);
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CTCopyUID(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v5 = *result;
  v4 = *(result + 8);
  if (__CFADD__(*result, v4))
  {
    goto LABEL_31;
  }

  v6 = v5 + v4;
  v7 = *result;
  if (v5 < v6)
  {
    while (v7 >= v5)
    {
      v3 = *v7;
      if (v3 != 45 && ++v7 < v6)
      {
        continue;
      }

      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_6:
  if (v7 == -1)
  {
    goto LABEL_31;
  }

  v8 = v7 + 1;
  v3 = 327693;
  result = 327693;
  if ((v7 + 1) >= v6)
  {
    return result;
  }

  if (a3 < 0 || v5 > v8)
  {
LABEL_34:
    __break(0x5519u);
    return result;
  }

  if (__CFADD__(v8, v6 - v8))
  {
    goto LABEL_31;
  }

  if (v6 - v8 != 2 * a3)
  {
    return (v3 + 1);
  }

  if (__CFADD__(a2, a3) || v7 == -2)
  {
LABEL_31:
    __break(0x5513u);
    return (v3 + 1);
  }

  v9 = v7 + 2;
  v10 = a2;
  while (1)
  {
    result = 0;
    if (v9 >= v6 || v10 >= &a2[a3])
    {
      return result;
    }

    v11 = v9 - 1;
    if ((v9 - 1) >= v6 || v11 < v8)
    {
      goto LABEL_34;
    }

    v12 = &asciiNibbleToByte[*v11];
    result = &CTOidAppleImg4Manifest;
    if (v12 >= &CTOidAppleImg4Manifest || v12 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    if (v11 < v7)
    {
      goto LABEL_34;
    }

    v14 = &asciiNibbleToByte[*v9];
    result = &CTOidAppleImg4Manifest;
    if (v14 >= &CTOidAppleImg4Manifest || v14 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    v15 = *v12;
    result = 327695;
    if (v15 > 0xF)
    {
      return result;
    }

    v16 = *v14;
    if (v16 > 0xF)
    {
      return result;
    }

    if (v10 < a2)
    {
      goto LABEL_34;
    }

    *v10++ = v16 | (16 * v15);
    v9 += 2;
    if (!v9)
    {
      goto LABEL_31;
    }
  }
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unint64_t *a2, const void *a3, size_t a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v69 = 0;
  v70 = 0;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v68 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v67 = *a2;
  v68 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_56;
  }

  v12 = v70;
  v13 = v67;
  v14 = v70 + v67 - v4;
  if (__CFADD__(v70, v67 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = v13 + v12;
  if (v13 > v15 || v15 > v68)
  {
    goto LABEL_189;
  }

  v65 = v13;
  v66 = v15;
  v63 = v13;
  v64 = v15;
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (__CFADD__(v63, v69))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64() || v63 != v63 + v69)
    {
      v10 = 720916;
      goto LABEL_56;
    }

    if (v63 + v69 > v64)
    {
      goto LABEL_189;
    }

    v65 = v63;
    v66 = v64;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720917;
    goto LABEL_56;
  }

  v16 = v65;
  v17 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v18 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v65;
  *(a1 + 144) = v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_190;
  }

  v19 = v16 + v18;
  if (v19 > v17)
  {
    goto LABEL_189;
  }

  if (v16 > v19)
  {
    goto LABEL_189;
  }

  v65 = v19;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v65, (a1 + 152)))
  {
    v10 = 720918;
    goto LABEL_56;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720919;
    goto LABEL_56;
  }

  v20 = v65;
  v21 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v22 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v65;
  *(a1 + 128) = v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_190;
  }

  v23 = v20 + v22;
  if (v23 > v21 || v20 > v23)
  {
    goto LABEL_189;
  }

  v65 = v23;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720920;
    goto LABEL_56;
  }

  v24 = v65;
  v25 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v26 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v65;
  *(a1 + 80) = v26;
  if (__CFADD__(v24, v26))
  {
    goto LABEL_190;
  }

  v27 = v24 + v26;
  if (v27 > v25 || v24 > v27)
  {
    goto LABEL_189;
  }

  v65 = v27;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720921;
    goto LABEL_56;
  }

  v28 = v65;
  v29 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v30 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v65;
  *(a1 + 112) = v30;
  if (__CFADD__(v28, v30))
  {
    goto LABEL_190;
  }

  v31 = v28 + v30;
  if (v28 + v30 > v29 || v28 > v31)
  {
    goto LABEL_189;
  }

  v65 = v28 + v30;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720922;
    goto LABEL_56;
  }

  v32 = v65;
  v33 = v69;
  v34 = v65 - v31 + v69;
  if (__CFADD__(v65 - v31, v69))
  {
    goto LABEL_191;
  }

  if (v34 > v29 - v31)
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  if (__CFADD__(v32, v33))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v35 = v32 + v33;
  if (v32 > v35 || v35 > v66)
  {
    goto LABEL_189;
  }

  v64 = v66;
  v65 = v35;
  v63 = v35;
  if (ccder_blob_decode_tl())
  {
    v10 = 720923;
    goto LABEL_56;
  }

  if (v65 > v66)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v66;
  if (ccder_blob_decode_tl())
  {
    v10 = 720924;
    goto LABEL_56;
  }

  if (v65 > v66)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v66;
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v65 != v66)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v66 > a2[1] || *a2 > v66)
      {
        goto LABEL_189;
      }

      *a2 = v66;
    }

    if (!__CFADD__(v67, v70))
    {
      if (v67 > v67 + v70 || v67 + v70 > v68)
      {
        goto LABEL_189;
      }

      v67 += v70;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v67, (a1 + 40)))
      {
        v10 = 720937;
        goto LABEL_56;
      }

      *&v71[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v71[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v61 = 0;
      result = ccder_blob_decode_bitstring();
      if (!result)
      {
        v10 = 720938;
        goto LABEL_56;
      }

      if (v61 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v71[0] + 1) >= *&v71[0])
        {
          v52 = (v61 + 7) >> 3;
          if (v52 <= *(&v71[0] + 1) - *&v71[0])
          {
            *(a1 + 56) = *&v71[0];
            *(a1 + 64) = v52;
            v53 = v68;
            if (v67 <= v68)
            {
              v10 = 0;
              *a2 = v67;
              a2[1] = v53;
              goto LABEL_56;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v61 = 0xAAAAAAAAAAAAAAAALL;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v63, v69))
  {
    goto LABEL_190;
  }

  if (v63 > v63 + v69 || v63 + v69 > v64)
  {
    goto LABEL_189;
  }

  v61 = v63;
  v62 = v63 + v69;
  result = ccder_blob_decode_tl();
  if (!result || !v69)
  {
    goto LABEL_163;
  }

  v37 = v61;
  if (__CFADD__(v61, v69))
  {
    goto LABEL_190;
  }

  v38 = v61 + v69;
  if (v61 > v61 + v69 || v38 > v62)
  {
    goto LABEL_189;
  }

  v62 = v61 + v69;
  *(a1 + 266) = 0;
  memset(&v71[2], 0, 128);
  if (a3)
  {
    v39 = a4 == 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = !v39;
  memset(v71, 0, 32);
  if (v37 >= v38)
  {
LABEL_162:
    if (v37 != v38)
    {
LABEL_163:
      v10 = 720925;
      goto LABEL_56;
    }

    if (v37 > v66 || v65 > v37)
    {
LABEL_189:
      __break(0x5519u);
    }

    v65 = v38;
    goto LABEL_167;
  }

  v54 = 0;
  v41 = 0;
  while (1)
  {
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v60 = 0xAAAAAAAAAAAAAAAALL;
    v58 = 0;
    v57 = 0;
    result = ccder_blob_decode_tl();
    if ((result & 1) == 0)
    {
LABEL_184:
      v10 = 720926;
      goto LABEL_56;
    }

    v55 = 0xAAAAAAAAAAAAAAAALL;
    v56 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v61, v57))
    {
      goto LABEL_190;
    }

    if (v61 > v61 + v57 || v61 + v57 > v62)
    {
      goto LABEL_189;
    }

    v55 = v61;
    v56 = v61 + v57;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      v10 = 720927;
      goto LABEL_56;
    }

    if (v56 < v55 || v69 > v56 - v55)
    {
      goto LABEL_189;
    }

    v59 = v55;
    v60 = v69;
    if (__CFADD__(v55, v69))
    {
      goto LABEL_190;
    }

    if (v55 + v69 > v56 || v55 > v55 + v69)
    {
      goto LABEL_189;
    }

    v55 += v69;
    if (!der_get_BOOLean(&v55, 1, &v58))
    {
      break;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_185;
    }

    if (__CFADD__(v55, v69))
    {
      goto LABEL_190;
    }

    if (v56 != v55 + v69)
    {
LABEL_185:
      v10 = 720929;
      goto LABEL_56;
    }

    if (v40)
    {
      result = compare_octet_string_raw(&v59, a3, a4);
      if (!result)
      {
        if (v56 < v55)
        {
          goto LABEL_189;
        }

        v43 = v69;
        if (v69 > v56 - v55)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v55;
        *(a1 + 256) = v43;
      }
    }

    if (v60 == 3)
    {
      if (*v59 == 7509 && *(v59 + 2) == 15)
      {
        v50 = 720930;
        if (v41)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseKeyUsage(&v55);
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 1u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 19)
      {
        v50 = 720931;
        if ((v41 & 2) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseBasicConstraints(&v55, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 2u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 35)
      {
        v50 = 720932;
        if ((v41 & 4) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseAuthorityKeyIdentifier(&v55, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 4u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 14)
      {
        v50 = 720933;
        if ((v41 & 8) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseSubjectKeyIdentifier(&v55, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 8u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 37)
      {
        v50 = 720934;
        if ((v41 & 0x10) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseExtendedKeyUsage(&v55, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 0x10u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 17)
      {
        v50 = 720935;
        if ((v41 & 0x20) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseSubjectAltName(&v55, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v55, v69))
      {
        goto LABEL_190;
      }

      if (v55 > v55 + v69 || v55 + v69 > v56)
      {
        goto LABEL_189;
      }

      v55 += v69;
      if (v58 == 1)
      {
        *(a1 + 266) = v58;
      }

      goto LABEL_157;
    }

    if (v60 < 8)
    {
      goto LABEL_133;
    }

    if (*v59 != -2042067414 || *(v59 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v50 = 720936;
    if (!X509CertificateVerifyOnlyOneAppleExtension(&v59, v71, v54) || (result = X509ExtensionParseAppleExtension(&v55, v59, v60, (a1 + 240), (a1 + 248), v40), !result))
    {
LABEL_187:
      v10 = v50;
      goto LABEL_56;
    }

    if (v54 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v54;
LABEL_157:
    if (v55 != v56)
    {
      goto LABEL_184;
    }

    if (__CFADD__(v61, v57))
    {
      goto LABEL_190;
    }

    v37 = v61 + v57;
    if (v61 > v61 + v57)
    {
      goto LABEL_189;
    }

    v38 = v62;
    if (v37 > v62)
    {
      goto LABEL_189;
    }

    v61 += v57;
    if (v37 >= v62)
    {
      goto LABEL_162;
    }
  }

  v10 = 720928;
LABEL_56:
  v36 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t der_get_BOOLean(uint64_t *a1, int a2, _BYTE *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*a1 > a1[1])
  {
    __break(0x5519u);
  }

  v7 = *a1;
  v8 = a1[1];
  if ((ccder_blob_decode_tl() & 1) != 0 || !a2)
  {
    result = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    result = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseKeyUsage(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_bitstring();
  if (result)
  {
    *(a1 + 8);
    result = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseBasicConstraints(uint64_t *a1, void *a2, _BYTE *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (result)
  {
    result = der_get_BOOLean(a1, 1, a3);
    if (result)
    {
      if (ccder_blob_decode_uint64())
      {
        if (*a3 != 1)
        {
          result = 0;
          goto LABEL_8;
        }

        *a2 = 0xAAAAAAAAAAAAAAAALL;
        *a2 = 0xAAAAAAAAAAAAAAABLL;
      }

      result = 1;
    }
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseAuthorityKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_14;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    goto LABEL_15;
  }

  if (v7 - 0x5555555555555556 != a1[1])
  {
    result = 0;
LABEL_14:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v7 <= v7 - 0x5555555555555556)
  {
    v11 = *a1;
    v12 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_16;
      }

      *a2 = v11;
      *a3 = 0xAAAAAAAAAAAAAAAALL;
    }

    v8 = *a1;
    if (*a1 < 0x5555555555555556)
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        result = 1;
        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(0x5513u);
  }

LABEL_16:
  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseSubjectKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_12;
  }

  v7 = a1[1];
  v8 = v7 >= *a1;
  v9 = v7 - *a1;
  if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_13:
    __break(0x5519u);
  }

  *a2 = *a1;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v12 = v11 - 0x5555555555555556;
    if (v11 <= v11 - 0x5555555555555556 && v12 <= a1[1])
    {
      *a1 = v12;
LABEL_12:
      v14 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_13;
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseExtendedKeyUsage(unint64_t *a1, unint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = ccder_blob_decode_tl();
  result = 0;
  if (!v6)
  {
    goto LABEL_10;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_11;
  }

  v11 = *a1;
  v12 = a1[1];
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_10:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_11:
    __break(0x5519u);
  }

  *a2 = v11;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v9 = v8 - 0x5555555555555556;
    if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
    {
      *a1 = v9;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseSubjectAltName(unint64_t *a1, unint64_t *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (result != 1)
  {
    goto LABEL_12;
  }

  v7 = a1[1];
  v8 = v7 >= *a1;
  v9 = v7 - *a1;
  if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_13:
    __break(0x5519u);
  }

  *a2 = *a1;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v12 = v11 - 0x5555555555555556;
    if (v11 <= v11 - 0x5555555555555556 && v12 <= a1[1])
    {
      *a1 = v12;
LABEL_12:
      v14 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_13;
  }

  __break(0x5513u);
  return result;
}

uint64_t X509CertificateVerifyOnlyOneAppleExtension(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 > 9)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = ~a2;
  while (v7 >= 16 * v6)
  {
    result = compare_octet_string(v5, a2 + 16 * v6);
    if (!result)
    {
      return result;
    }

    if (a3 <= v6++)
    {
      v9 = v5[1];
      v10 = (a2 + 16 * a3);
      *v10 = *v5;
      v10[1] = v9;
      return 1;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseAppleExtension(uint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5, int a6)
{
  v67 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    a5 = 0;
  }

  if (a3 == 9)
  {
    if (*a2 == 0xB6463F78648862ALL && *(a2 + 8) == 1)
    {
      v57 = *MEMORY[0x277D85DE8];

      return X509ExtensionParseComponentAuth(result, a4, a5);
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 49)
    {
      v66 = 0;
      result = der_get_BOOLean(result, 0, &v66);
      if (result)
      {
        v58 = 0x20000040001;
        if (v66)
        {
          v58 = 0x10000080002;
        }

        *a4 |= v58;
      }

      goto LABEL_284;
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 44)
    {
      v60 = *MEMORY[0x277D85DE8];

      return X509ExtensionParseCertifiedChipIntermediate(result, a4, a5);
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 36)
    {
      v61 = *MEMORY[0x277D85DE8];

      return X509ExtensionParseMFIAuthv3Leaf(result);
    }

    if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 22)
    {
      if (*a2 == 0xC6463F78648862ALL && *(a2 + 8) == 19)
      {
        result = ccder_blob_check_null();
        if (result)
        {
          v14 = *a4 | 0x8000000000;
          goto LABEL_282;
        }

        goto LABEL_284;
      }

      if (*a2 != 0xA6463F78648862ALL || *(a2 + 8) != 1)
      {
        if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 29)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x2000000;
            goto LABEL_282;
          }
        }

        else
        {
          if (*a2 != 0xC6463F78648862ALL || *(a2 + 8) != 14)
          {
            if (*a2 != 0x86463F78648862ALL || *(a2 + 8) != 3)
            {
              goto LABEL_249;
            }

            v46 = *MEMORY[0x277D85DE8];

            return X509ExtensionParseDeviceAttestationIdentity(result, a4, a5);
          }

          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x4000000;
            goto LABEL_282;
          }
        }

        goto LABEL_284;
      }

      *a4 |= 0x1000000uLL;
LABEL_249:
      v54 = *result;
      v53 = *(result + 8);
LABEL_250:
      if (v54 <= v53)
      {
        *result = v53;
LABEL_283:
        result = 1;
        goto LABEL_284;
      }

      goto LABEL_288;
    }

    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 1048584;
LABEL_204:
    v14 = v55 | v56;
    goto LABEL_282;
  }

  if (a3 != 10)
  {
    if (a3 == 11)
    {
      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10901066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          goto LABEL_284;
        }

        v14 = *a4 | 0x400000000000;
      }

      else
      {
        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10301066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x200;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10601066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x800;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11801066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x2000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x12401066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x100000000000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11901066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x4000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 != 0x66463F78648862ALL || *(a2 + 3) != 0x21901066463F786)
        {
LABEL_164:
          v35 = 0;
          goto LABEL_165;
        }

        result = ccder_blob_check_null();
        if (!result)
        {
          goto LABEL_284;
        }

        v14 = *a4 | 0x8000;
      }

LABEL_282:
      *a4 = v14;
      goto LABEL_283;
    }

    if (a3 < 0xA)
    {
      goto LABEL_249;
    }

    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_288;
    }

    goto LABEL_164;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 5122)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 0x800000100000;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 258)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 0x58600003F0D0;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1538)
  {
    goto LABEL_214;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4610)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0xF00;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 278)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x800000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3073)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x10;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1793)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x20000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3329)
  {
LABEL_214:
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x20;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 2305)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x40;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 513)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x80;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1025)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x10000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 769)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x100;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1537)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x400;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 6145)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x1000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 9217)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x80000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8193)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x2000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8705)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x4000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 315)
  {
    v63 = *MEMORY[0x277D85DE8];

    return X509ExtensionParseMFISWAuth(result, a4, a5);
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3074)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x300000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 304)
  {
    v65 = *MEMORY[0x277D85DE8];

    return X509ExtensionParseGenericSSLMarker();
  }

  v35 = 1;
LABEL_165:
  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 27)
  {
    v59 = *MEMORY[0x277D85DE8];

    return X509ExtensionParseServerAuthMarker(result, a2, a3, a4, a5);
  }

  if (!v35)
  {
    goto LABEL_249;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 832)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x400000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3586)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 37748736;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4354)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v55 = *a4;
      v56 = 0x8004000000;
      goto LABEL_204;
    }

LABEL_284:
    v64 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 327)
  {
    if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 3841)
    {
      goto LABEL_249;
    }

    v54 = *result;
    v53 = *(result + 8);
    if (!a5)
    {
LABEL_194:
      *a4 |= 0x80000000uLL;
      goto LABEL_250;
    }

    if (v54 <= v53)
    {
      *a5 = v54;
      a5[1] = v53 - v54;
      goto LABEL_194;
    }

LABEL_288:
    __break(0x5519u);
    return result;
  }

  v62 = *MEMORY[0x277D85DE8];

  return X509ExtensionParseMFI4Properties(result, a4, a5);
}

uint64_t X509CertificateParseWithExtension(unint64_t *a1, unint64_t *a2, const void *a3, size_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = 720939;
  v9 = *a2;
  v10 = a2[1];
  if (!ccder_blob_decode_tl())
  {
    goto LABEL_9;
  }

  v11 = *a2;
  result = X509CertificateParseImplicit(a1, a2, a3, a4);
  v8 = result;
  if (result)
  {
    goto LABEL_9;
  }

  if (v11 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5500u);
    goto LABEL_12;
  }

  v8 = 720939;
  if (*a2 != v11 - 0x5555555555555556)
  {
LABEL_9:
    v14 = *MEMORY[0x277D85DE8];
    return v8;
  }

  v13 = v11 - v9 - 0x5555555555555556;
  if (v11 - v9 >= 0x5555555555555556)
  {
    goto LABEL_11;
  }

  if (v10 >= v9 && v13 <= v10 - v9)
  {
    *a1 = v9;
    a1[1] = v13;
    X509PolicyCheckForBlockedKeys(a1);
    v8 = 0;
    goto LABEL_9;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseSPKI(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a1[1];
  if (__CFADD__(*a1, v5))
  {
    goto LABEL_31;
  }

  v6 = v4 + v5;
  if (v4 > v6)
  {
    goto LABEL_30;
  }

  v10 = 655361;
  v15 = *a1;
  v16 = v6;
  if (!ccder_blob_decode_tl())
  {
    goto LABEL_29;
  }

  if (!ccder_blob_decode_tl())
  {
    v10 = 655363;
    goto LABEL_29;
  }

  if (v15 >= 0x5555555555555556)
  {
LABEL_31:
    __break(0x5513u);
  }

  if (v15 > v15 - 0x5555555555555556 || v15 - 0x5555555555555556 > v16)
  {
    goto LABEL_30;
  }

  v14 = v15 - 0x5555555555555556;
  if (!ccder_blob_decode_tl())
  {
    v10 = 655362;
    goto LABEL_29;
  }

  if (a2)
  {
    if (v14 >= v15)
    {
      *a2 = v15;
      a2[1] = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_12;
    }

LABEL_30:
    __break(0x5519u);
    goto LABEL_31;
  }

LABEL_12:
  v11 = v15 - 0x5555555555555556;
  if (v15 > v15 - 0x5555555555555556 || v11 > v14)
  {
    goto LABEL_30;
  }

  if (v11 == v14)
  {
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  else if (a3)
  {
    *a3 = v11;
    a3[1] = v14 - v11;
  }

  if (v14 > v16 || v15 > v14)
  {
    goto LABEL_30;
  }

  if (ccder_blob_decode_bitstring())
  {
    *a4 = 0;
    a4[1] = 0;
    if (v14 == v16)
    {
      v10 = 0;
    }

    else
    {
      v10 = 655365;
    }
  }

  else
  {
    v10 = 655364;
  }

LABEL_29:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t X509CertificateParseKey(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  result = 327691;
  if (!a1 || !*(a1 + 96))
  {
LABEL_8:
    v8 = *MEMORY[0x277D85DE8];
    return result;
  }

  result = a1 + 88;
  v9 = 0;
  v10 = 0;
  if (a1 + 88 <= (a1 + 104))
  {
    result = X509CertificateParseSPKI(result, 0, 0, &v9);
    if (!result && a2)
    {
      if (a3)
      {
        v7 = v10;
        *a2 = v9;
        *a3 = v7;
      }
    }

    goto LABEL_8;
  }

  __break(0x5519u);
  return result;
}

uint64_t X509CertificateCheckSignatureDigest(char a1, uint64_t a2, void *a3, __int128 *a4, __int128 *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v21 = 0uLL;
  v20 = 0uLL;
  v18 = 0;
  v19 = 0;
  if (a2 + 88 > (a2 + 104))
  {
    goto LABEL_22;
  }

  v9 = X509CertificateParseSPKI((a2 + 88), &v21, &v20, &v18);
  if (!v9)
  {
    v9 = 655632;
    v12 = compare_octet_string(&v21, &rsaEncryption);
    v13 = validateSignatureRSA;
    if (v12)
    {
      v14 = compare_octet_string(&v21, &ecPublicKey);
      v13 = validateSignatureEC;
      if (v14)
      {
        v9 = 655617;
        goto LABEL_3;
      }
    }

    if (v15 = v13, v17 = *a5, v16 = *a4, (a1) && !compare_octet_string_raw(a4, &CTOidSha1, 5uLL) || (a1 & 4) != 0 && !compare_octet_string_raw(a4, &CTOidSha256, 9uLL) || (a1 & 8) != 0 && !compare_octet_string_raw(a4, &CTOidSha384, 9uLL) || (a1 & 0x10) != 0 && !compare_octet_string_raw(a4, &CTOidSha512, 9uLL))
    {
      if ((v19 || !v18) && (a3[1] || !*a3))
      {
        if (v15(v18))
        {
          v9 = 0;
        }

        else
        {
          v9 = 655648;
        }

        goto LABEL_3;
      }

LABEL_22:
      __break(0x5519u);
    }
  }

LABEL_3:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t X509CertificateCheckSignature(char a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[2] = v8;
  v13[3] = v8;
  v13[0] = v8;
  v13[1] = v8;
  v12[0] = v13;
  v12[1] = 64;
  v11 = 0uLL;
  result = X509MatchSignatureAlgorithm(a3, a4, v12, &v11);
  if (!result)
  {
    result = X509CertificateCheckSignatureDigest(a1, a2, v12, &v11, a5);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509MatchSignatureAlgorithm(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = compare_octet_string_raw(a2, &sha1WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_8;
  }

  result = compare_octet_string_raw(a2, &sha256WithRSA_oid, 9uLL);
  if (!result)
  {
LABEL_10:
    *a4 = &CTOidSha256;
    a4[1] = 9;
    if (*(a3 + 8) < 0x20uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 32;
    ccsha256_di();
    goto LABEL_14;
  }

  result = compare_octet_string_raw(a2, &sha384WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_12;
  }

  result = compare_octet_string_raw(a2, &sha1WithECDSA_oid, 7uLL);
  if (!result)
  {
LABEL_8:
    *a4 = &CTOidSha1;
    a4[1] = 5;
    if (*(a3 + 8) < 0x14uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 20;
    ccsha1_di();
LABEL_14:
    v10 = *a1;
    v9 = a1[1];
    ccdigest();
    return 0;
  }

  result = compare_octet_string_raw(a2, &sha256WithECDSA_oid, 8uLL);
  if (!result)
  {
    goto LABEL_10;
  }

  result = compare_octet_string_raw(a2, &sha384WithECDSA_oid, 8uLL);
  if (result)
  {
    return 656640;
  }

LABEL_12:
  *a4 = &CTOidSha384;
  a4[1] = 9;
  if (*(a3 + 8) >= 0x30uLL)
  {
    *(a3 + 8) = 48;
    ccsha384_di();
    goto LABEL_14;
  }

LABEL_15:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateCheckSignatureWithPublicKey(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t *a4, __int128 *a5, __int128 *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v11;
  v24[3] = v11;
  v24[0] = v11;
  v24[1] = v11;
  v22 = v24;
  v23 = 64;
  v21 = 0uLL;
  matched = X509MatchSignatureAlgorithm(a4, a5, &v22, &v21);
  if (matched)
  {
    goto LABEL_13;
  }

  matched = 655617;
  v13 = compare_octet_string(a2, &rsaEncryption);
  v14 = validateSignatureRSA;
  if (v13)
  {
    v15 = compare_octet_string(a2, &ecPublicKey);
    v14 = validateSignatureEC;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  v19 = *a5;
  v20 = *a6;
  if (a3)
  {
    v16 = *a3;
  }

  result = *a1;
  if ((a1[1] || !result) && (!v22 || v23))
  {
    if (v14(result))
    {
      matched = 0;
    }

    else
    {
      matched = 655648;
    }

LABEL_13:
    v18 = *MEMORY[0x277D85DE8];
    return matched;
  }

  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseGeneralNamesContent(uint64_t a1, uint64_t (*a2)(void, int *, uint64_t), uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 224);
  v4 = *(a1 + 232);
  if (__CFADD__(v3, v4))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_11;
  }

  v11 = *(a1 + 224);
  v12 = v5;
  while (1)
  {
    if (v11 >= v12)
    {
LABEL_7:
      result = 0;
      goto LABEL_9;
    }

    memset(v10, 170, sizeof(v10));
    if ((ccder_blob_decode_GeneralName(&v11, v10, &v10[1]) & 1) == 0)
    {
      break;
    }

    if ((a2(v10[0], &v10[1], a3) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  result = 720912;
LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509CertificateSubjectNameGetCommonName(unint64_t *a1, unint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v21 = v3;
  if (__CFADD__(*a1, v3))
  {
    goto LABEL_61;
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_60;
  }

  v19 = *a1;
  v20 = v4;
  *a2 = 0;
  a2[1] = 0;
  if (a2 + 2 < a2)
  {
    goto LABEL_60;
  }

  v6 = 720901;
  if (v2 < v4)
  {
    while (1)
    {
      if (!ccder_blob_decode_tl() || !v21)
      {
        v6 = 720898;
        goto LABEL_59;
      }

      v2 = v19;
      if (__CFADD__(v19, v21))
      {
        break;
      }

      v7 = v19 + v21;
      if (v19 > v19 + v21 || v7 > v20)
      {
        goto LABEL_60;
      }

      v17 = v19;
      v18 = v19 + v21;
      while (v2 < v7)
      {
        if (!ccder_blob_decode_tl())
        {
          v6 = 720899;
          goto LABEL_59;
        }

        if (__CFADD__(v17, v21))
        {
          goto LABEL_61;
        }

        if (v17 > v17 + v21 || v17 + v21 > v18)
        {
          goto LABEL_60;
        }

        v16 = v17 + v21;
        if (!ccder_blob_decode_tl())
        {
          v6 = 720900;
          goto LABEL_59;
        }

        v2 = v17 + v21;
        if (v17 > v16)
        {
          goto LABEL_60;
        }

        if (__CFADD__(v17, v21))
        {
          goto LABEL_61;
        }

        if (v17 > v17 + v21)
        {
          goto LABEL_60;
        }

        v15 = v17 + v21;
        if (v21 == 3 && *v17 == 1109 && *(v17 + 2) == 3)
        {
          v13 = v17 + v21;
          v14 = v17 + v21;
          if ((ccder_blob_decode_tl() & 1) == 0)
          {
            if (v15 > v16)
            {
              goto LABEL_60;
            }

            v13 = v17 + v21;
            v14 = v17 + v21;
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              if (v15 > v16)
              {
                goto LABEL_60;
              }

              v13 = v17 + v21;
              v14 = v17 + v21;
              if (!ccder_blob_decode_tl())
              {
                goto LABEL_59;
              }
            }
          }

          if (__CFADD__(v13, v21))
          {
            goto LABEL_61;
          }

          v2 = v17 + v21;
          if (v16 != v13 + v21)
          {
            v6 = 720902;
            goto LABEL_59;
          }

          if (v14 < v13 || v21 > v14 - v13)
          {
            goto LABEL_60;
          }

          *a2 = v13;
          a2[1] = v21;
        }

        v7 = v19 + v21;
        if (v2 > v18 || v17 > v2)
        {
          goto LABEL_60;
        }

        v17 = v2;
      }

      if (v2 != v7)
      {
        v6 = 720903;
        goto LABEL_59;
      }

      v4 = v20;
      if (v2 > v20 || v19 > v2)
      {
        goto LABEL_60;
      }

      v19 = v2;
      if (v2 >= v20)
      {
        goto LABEL_47;
      }
    }

LABEL_61:
    __break(0x5513u);
  }

LABEL_47:
  if (v2 == v4)
  {
    if (a2[1] && *a2)
    {
      v6 = 0;
      goto LABEL_59;
    }

    *a2 = 0;
    a2[1] = 0;
    if (a2 + 2 >= a2)
    {
      v6 = 720905;
      goto LABEL_59;
    }

LABEL_60:
    __break(0x5519u);
    goto LABEL_61;
  }

  v6 = 720904;
LABEL_59:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL X509CertificateValidAtTime(uint64_t a1, time_t a2)
{
  result = 0;
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7[0] = 0;
  if (a1 && a2 != -1)
  {
    result = !X509CertificateGetNotBefore(a1, v7) && !X509CertificateGetNotAfter(a1, &v6) && difftime(a2, v7[0]) >= 0.0 && difftime(a2, v6) <= 0.0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509CertificateGetNotBefore(uint64_t a1, time_t *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1);
  if (!result)
  {
    result = X509TimeConvert(v5, a2);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509CertificateGetNotAfter(uint64_t a1, time_t *a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1);
  if (!result)
  {
    result = X509TimeConvert(v5, a2);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL X509CertificateIsValid(uint64_t a1)
{
  v2 = time(0);

  return X509CertificateValidAtTime(a1, v2);
}

uint64_t X509CertificateParseValidity(uint64_t result)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = 720906;
  if (!result)
  {
    goto LABEL_13;
  }

  v2 = *(result + 72);
  v3 = *(result + 80);
  if (!v2 || v3 == 0)
  {
    goto LABEL_13;
  }

  if (__CFADD__(v2, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v5 = v2 + v3;
    if (v2 <= v5)
    {
      v7[0] = *(result + 72);
      v7[1] = v5;
      if (ccder_blob_decode_Time(v7))
      {
        if (ccder_blob_decode_Time(v7))
        {
          v1 = 0;
        }

        else
        {
          v1 = 720908;
        }
      }

      else
      {
        v1 = 720907;
      }

LABEL_13:
      v6 = *MEMORY[0x277D85DE8];
      return v1;
    }
  }

  __break(0x5519u);
  return result;
}

char *X509TimeConvert(uint64_t *a1, time_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = 720909;
  if (!a1)
  {
    goto LABEL_19;
  }

  v4 = a1[1];
  if ((v4 | 2) != 0xF)
  {
    goto LABEL_19;
  }

  v13.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *v14 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tm_mon = v6;
  *&v13.tm_isdst = v6;
  *&v13.tm_sec = v6;
  v15 = 0;
  v7 = *a1;
  result = __memcpy_chk();
  if (result > &result[v4])
  {
    goto LABEL_24;
  }

  v9 = &v14[v4];
  if (&v14[v4] >= &v16 || &v14[v4] < v14)
  {
    goto LABEL_24;
  }

  if (v4 > 0xF)
  {
    __break(1u);
    goto LABEL_26;
  }

  v14[v4] = 0;
  if (v4 != 13)
  {
    if (v9 + 1 >= v9 && v9 + 1 <= &v16)
    {
      result = strptime(v14, "%Y%m%d%H%M%SZ", &v13);
      goto LABEL_15;
    }

LABEL_24:
    __break(0x5519u);
  }

  if (BYTE5(v15))
  {
    goto LABEL_24;
  }

  result = strptime(v14, "%y%m%d%H%M%SZ", &v13);
  if (result && v13.tm_year >= 150)
  {
    v13.tm_year -= 100;
  }

LABEL_15:
  v10 = a1[1];
  if (v10 >= 0x11)
  {
LABEL_26:
    __break(0x5512u);
    goto LABEL_27;
  }

  if (!__CFADD__(v14, v10))
  {
    if (result == &v14[v10])
    {
      v12 = timegm(&v13);
      if (v12 == -1)
      {
        v2 = 720911;
      }

      else
      {
        v2 = 0;
        if (a2)
        {
          *a2 = v12;
        }
      }
    }

    else
    {
      v2 = 720910;
    }

LABEL_19:
    v11 = *MEMORY[0x277D85DE8];
    return v2;
  }

LABEL_27:
  __break(0x5513u);
  return result;
}

BOOL X509ExtensionParseComponentAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  if (*a1 > v3)
  {
    goto LABEL_19;
  }

  v14 = *a1;
  v15 = a1[1];
  v13 = v3 - *a1;
  if (ccder_blob_decode_tl())
  {
    goto LABEL_5;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_19;
  }

  v14 = *a1;
  v15 = a1[1];
  if (ccder_blob_decode_tl())
  {
LABEL_5:
    v8 = v14;
    v7 = v15;
    if (v14 > v15)
    {
      goto LABEL_19;
    }

    *a1 = v14;
    a1[1] = v15;
    v9 = v13;
  }

  else
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = v7 - *a1;
  }

  if (__CFADD__(v8, v9))
  {
    goto LABEL_20;
  }

  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
LABEL_15:
      *a2 |= 0x40000000uLL;
LABEL_16:
      if (v8 <= v7)
      {
        *a1 = v10;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (v8 <= v7 && v9 <= v7 - v8)
    {
      *a3 = v8;
      a3[1] = v9;
      goto LABEL_15;
    }

LABEL_19:
    __break(0x5519u);
LABEL_20:
    __break(0x5513u);
  }

LABEL_18:
  result = v7 == v10;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseCertifiedChipIntermediate(unint64_t *a1, void *a2, unint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_10;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
    goto LABEL_12;
  }

  v8 = v7 - 0x5555555555555556;
  if (a1[1] != v7 - 0x5555555555555556)
  {
    result = 0;
LABEL_10:
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  *a2 |= 0x30000000000uLL;
  if (a3)
  {
    if (v7 > v8)
    {
      goto LABEL_12;
    }

    *a3 = v7;
    a3[1] = 0xAAAAAAAAAAAAAAAALL;
  }

  if (v7 <= v8)
  {
    *a1 = v8;
    result = 1;
    goto LABEL_10;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseMFIAuthv3Leaf(unint64_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    v4 = a1[1];
    if (v4 != v3 - 0x5555555555555556)
    {
      result = 0;
LABEL_7:
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (v3 <= v4)
    {
      *a1 = v3 - 0x5555555555555556;
      result = 1;
      goto LABEL_7;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseMFISWAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_11;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    v8 = a1[1];
    if (v8 != v7 - 0x5555555555555556)
    {
      result = 0;
LABEL_11:
      v9 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (a3)
    {
      if (v8 < v7 || v8 - v7 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_13;
      }

      *a3 = v7;
      a3[1] = 0xAAAAAAAAAAAAAAAALL;
    }

    *a2 |= 0x30000000uLL;
    if (v7 <= v8)
    {
      *a1 = v7 - 0x5555555555555556;
      result = 1;
      goto LABEL_11;
    }
  }

LABEL_13:
  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseGenericSSLMarker()
{
  v2 = *MEMORY[0x277D85DE8];
  ccder_blob_decode_tl();
  result = 0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509ExtensionParseServerAuthMarker(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  result = ccder_blob_check_null();
  if (result)
  {
    if (a2 > 0xFFFFFFFFFFFFFFF6)
    {
      goto LABEL_26;
    }

    if (__CFADD__(a2, a3))
    {
      goto LABEL_26;
    }

    v10 = a2 + a3;
    if (a2 + a3 == -1)
    {
      goto LABEL_26;
    }

    v11 = a2 + 9;
    v12 = (a2 + 9);
    while (1)
    {
      v13 = v12 < v10 && v12 >= a2;
      v14 = v13;
      if (v12 >= v10 - 1)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = *v12++;
      if ((v15 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    if (!v14)
    {
LABEL_25:
      __break(0x5519u);
LABEL_26:
      __break(0x5513u);
      return result;
    }

    if ((*v12 & 0x80000000) == 0)
    {
      if (!a5)
      {
LABEL_22:
        *a4 |= 0x100000000uLL;
        return 1;
      }

      if (v11 >= a2 && v11 <= v10)
      {
        *a5 = v11;
        a5[1] = a3 - 9;
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    return 0;
  }

  return result;
}

uint64_t X509ExtensionParseDeviceAttestationIdentity(unint64_t *a1, void *a2, unint64_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_16;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    goto LABEL_17;
  }

  if (a1[1] != v7 - 0x5555555555555556)
  {
    result = 0;
LABEL_16:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v7 <= v7 - 0x5555555555555556)
  {
    v11 = *a1;
    v12 = a1[1];
    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_16;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_16;
    }

    if (a3)
    {
      if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_18;
      }

      *a3 = v11;
      a3[1] = 0xAAAAAAAAAAAAAAAALL;
    }

    *a2 |= 0x240000800000uLL;
    v8 = *a1;
    if (*a1 < 0x5555555555555556)
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        result = 1;
        goto LABEL_16;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(0x5513u);
  }

LABEL_18:
  __break(0x5519u);
  return result;
}

unint64_t *X509ExtensionParseMFI4Properties(unint64_t *result, void *a2, unint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  if (v5 != 32)
  {
    return (v5 == 32);
  }

  if (a3)
  {
    if (v4 > v3)
    {
LABEL_12:
      __break(0x5519u);
      goto LABEL_13;
    }

    *a3 = v4;
    a3[1] = 32;
  }

  *a2 |= 0xC00000000uLL;
  if (v4 < 0xFFFFFFFFFFFFFFE0)
  {
    v6 = v4 + 32;
    if (v4 + 32 <= v3 && v4 <= v6)
    {
      *result = v6;
      return (v5 == 32);
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x5513u);
  return result;
}

unint64_t *X509ChainParseCertificateSet(unint64_t *result, unint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4)
  {
LABEL_33:
    __break(0x5519u);
LABEL_34:
    __break(0x5513u);
    return result;
  }

  v5 = result;
  v6 = *result >= result[1] || a3 == 0;
  if (!v6)
  {
    v10 = 0;
    v11 = a2 + 304 * a3;
    v12 = ~a2;
    v13 = (a4 + 1);
    v14 = a3 - 1;
    v15 = (a2 + 272);
    while ((v10 * 304) >> 64 == (304 * v10) >> 63 && 304 * v10 <= v12)
    {
      v16 = (v15 - 34);
      if (v15 != 272 && (v16 < a2 || (v15 + 4) > v11 || v16 > (v15 + 4)))
      {
        goto LABEL_33;
      }

      result = X509CertificateParse(v15 - 34, v5);
      if (result)
      {
        return result;
      }

      if (v10)
      {
        if (v16 < a2)
        {
          goto LABEL_33;
        }

        if ((v15 + 4) > v11)
        {
          goto LABEL_33;
        }

        v17 = *v13;
        *v15 = 0;
        v15[1] = v17;
        if (v16 > (v15 + 4))
        {
          goto LABEL_33;
        }

        *v17 = v16;
        *v13 = v15;
      }

      else
      {
        v18 = *a4;
        *v15 = *a4;
        if (v18)
        {
          v19 = (v18 + 280);
        }

        else
        {
          v19 = v13;
        }

        *v19 = v15;
        *a4 = v16;
        if (v13 < a4)
        {
          goto LABEL_33;
        }

        v15[1] = a4;
      }

      v7 = v10 + 1;
      if (*v5 < v5[1])
      {
        v15 += 38;
        v6 = v14 == v10++;
        if (!v6)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v7 = 0;
LABEL_8:
  if (!a5)
  {
    return 0;
  }

  result = 0;
  *a5 = v7;
  return result;
}

unint64_t *X509ChainGetCertificateUsingKeyIdentifier(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    return v2;
  }

  while (!*(v2 + 192))
  {
LABEL_6:
    v2 = *(v2 + 272);
    if (!v2)
    {
      return v2;
    }
  }

  if (v2 < v2 + 304 && v2 + 184 <= v2 + 200)
  {
    result = compare_octet_string(a2, v2 + 184);
    if (!result)
    {
      return v2;
    }

    goto LABEL_6;
  }

  __break(0x5519u);
  return result;
}

void *X509ChainResetChain(void *result, void *a2)
{
  *result = 0;
  if (result + 1 < result)
  {
LABEL_7:
    __break(0x5519u);
    return result;
  }

  result[1] = result;
  v2 = *a2;
  if (*a2)
  {
    while (v2 < v2 + 38)
    {
      v2[36] = 0;
      v2[37] = 0;
      if (v2 + 36 > v2 + 38)
      {
        break;
      }

      v2 = v2[34];
      if (!v2)
      {
        return result;
      }
    }

    goto LABEL_7;
  }

  return result;
}

unint64_t X509ChainBuildPathPartial(unint64_t result, unint64_t *a2, unint64_t *a3, int a4)
{
  if (!result)
  {
    return 327691;
  }

  *a3 = 0;
  v5 = (a3 + 1);
  if (a3 + 1 < a3 || (v6 = result, a3[1] = a3, *(result + 288) = 0, result + 288 > result + 296) || (*a3 = result, a3[1] = result + 288, *(result + 296) = a3, result + 304 < result) || (v7 = result + 120, result + 120 > result + 136))
  {
LABEL_38:
    __break(0x5519u);
  }

  else
  {
    while (1)
    {
      result = compare_octet_string(v7, (v6 + 13));
      if (!result)
      {
        break;
      }

      v10 = (v6 + 21);
      if (!v6[22])
      {
        goto LABEL_13;
      }

      if (v10 > (v6 + 23))
      {
        goto LABEL_38;
      }

      result = X509ChainGetCertificateUsingKeyIdentifier(a2, (v6 + 21));
      if (!result)
      {
        goto LABEL_13;
      }

      v11 = result;
      v12 = result + 304;
      if (result >= result + 304)
      {
        goto LABEL_38;
      }

      result += 104;
      if (v11 + 13 > v11 + 15)
      {
        goto LABEL_38;
      }

      result = compare_octet_string(result, v7);
      if (result)
      {
LABEL_13:
        v11 = *a2;
        if (*a2)
        {
          do
          {
            v12 = (v11 + 38);
            if (v11 >= v11 + 38 || v11 + 13 > v11 + 15)
            {
              goto LABEL_38;
            }

            result = compare_octet_string(v7, (v11 + 13));
            if (!result)
            {
              goto LABEL_19;
            }

            v11 = v11[34];
          }

          while (v11);
        }

        if (v10 > (v6 + 23))
        {
          goto LABEL_38;
        }

        if (X509ChainGetAppleRootUsingKeyIdentifier((v6 + 21), 1))
        {
          return 0;
        }

        BAARootUsingKeyIdentifier = X509ChainGetBAARootUsingKeyIdentifier((v6 + 21));
        if (a4)
        {
          v16 = 0;
        }

        else
        {
          v16 = 524296;
        }

        if (BAARootUsingKeyIdentifier)
        {
          return 0;
        }

        else
        {
          return v16;
        }
      }

LABEL_19:
      v6 = v11;
      v13 = *a3;
      if (*a3)
      {
        while (v13 != v11)
        {
          v13 = v13[36];
          if (!v13)
          {
            goto LABEL_22;
          }
        }

        return 524297;
      }

LABEL_22:
      if ((v11 + 38) <= v12)
      {
        v14 = *v5;
        v11[36] = 0;
        v11[37] = v14;
        if (v11 <= v11 + 38)
        {
          *v14 = v11;
          *v5 = v11 + 36;
          v7 = (v11 + 15);
          if (v11 + 15 <= v11 + 17)
          {
            continue;
          }
        }
      }

      goto LABEL_38;
    }
  }

  return result;
}

uint64_t X509ChainGetAppleRootUsingKeyIdentifier(uint64_t result, int a2)
{
  v2 = &numAppleRoots;
  if (!a2)
  {
    v2 = &numAppleProdRoots;
  }

  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    for (i = &AppleRoots; ; ++i)
    {
      v6 = i + 1;
      v7 = i < &AppleRoots || v6 > AppleRootSPKIs;
      if (v7 || i > v6)
      {
        break;
      }

      v9 = *i;
      v10 = *i + 184;
      if (v10 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v4, v10);
      if (!result)
      {
        if (v9 < v9 + 304)
        {
          return v9;
        }

        break;
      }

      if (!--v3)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t X509ChainGetBAARootUsingKeyIdentifier(uint64_t result)
{
  v1 = numBAARoots;
  if (numBAARoots)
  {
    v2 = result;
    for (i = &BAARoots; ; ++i)
    {
      v4 = i + 1;
      v5 = i < &BAARoots || v4 > &SEKTestRootPublicKey;
      if (v5 || i > v4)
      {
        break;
      }

      v7 = *i;
      v8 = *i + 184;
      if (v8 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v2, v8);
      if (!result)
      {
        if (v7 < v7 + 304)
        {
          return v7;
        }

        break;
      }

      if (!--v1)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t X509ChainCheckPathWithOptions(char a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v55[4] = *MEMORY[0x277D85DE8];
  v8 = *a2;
  if (a3)
  {
    v9 = *(a3 + 48);
    if (v9)
    {
      if (*(v9 + 8))
      {
        if (v8 + 208 > v8 + 224)
        {
          goto LABEL_133;
        }

        if (compare_octet_string(v9, v8 + 208))
        {
          result = 327701;
          goto LABEL_128;
        }

        v8 = *v6;
      }
    }
  }

  if (!v8)
  {
    v23 = 0;
    v21 = 0;
    v13 = -1;
    if (a3)
    {
      goto LABEL_67;
    }

    goto LABEL_120;
  }

  v51 = v6;
  v52 = a4;
  v11 = 0;
  v12 = 0;
  v53 = 0;
  v13 = -1;
  do
  {
    v14 = v8 + 304;
    v15 = *(v8 + 288);
    v16 = v15 + 304;
    if (v15)
    {
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }

    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (!compare_octet_string(v8 + 120, v8 + 104))
    {
      v17 = 0;
      v15 = v8;
      v16 = v8 + 304;
      goto LABEL_12;
    }

    if (!a3)
    {
      goto LABEL_124;
    }

    if (*(a3 + 16) == 1)
    {
      AppleRootUsingKeyIdentifier = X509ChainGetAppleRootUsingKeyIdentifier(v8 + 168, *(a3 + 17));
      goto LABEL_63;
    }

    if (*(a3 + 24))
    {
      AppleRootUsingKeyIdentifier = X509ChainGetBAARootUsingKeyIdentifier(v8 + 168);
LABEL_63:
      v15 = AppleRootUsingKeyIdentifier;
      v53 |= AppleRootUsingKeyIdentifier != 0;
      v16 = AppleRootUsingKeyIdentifier + 304;
      if (AppleRootUsingKeyIdentifier)
      {
        goto LABEL_11;
      }
    }

    if ((*(a3 + 19) & 1) == 0)
    {
LABEL_124:
      result = v12 | 0x9000Du;
      goto LABEL_128;
    }

    v15 = 0;
    v17 = 1;
LABEL_12:
    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (v11 && *(v8 + 32) >= 2uLL)
    {
      if ((*(v8 + 265) & 1) == 0)
      {
        v49 = 589825;
        goto LABEL_127;
      }

      if ((*(v8 + 264) & 4) == 0)
      {
        v49 = 589826;
        goto LABEL_127;
      }
    }

    v18 = *(v8 + 200);
    if (v18 && v18 < v11)
    {
      v49 = 589827;
LABEL_127:
      result = v12 | v49;
      goto LABEL_128;
    }

    if (*(v8 + 266) == 1)
    {
      v49 = 589831;
      goto LABEL_127;
    }

    if (compare_octet_string(v8 + 40, v8 + 152))
    {
      v49 = 589828;
      goto LABEL_127;
    }

    if ((v17 & 1) == 0 && *(v8 + 168) && *(v8 + 176))
    {
      if (v15 + 304 > v16 || v15 > v15 + 304 || v15 + 184 > v15 + 200)
      {
        goto LABEL_133;
      }

      if (compare_octet_string(v8 + 168, v15 + 184))
      {
        result = v12 | 0x9000Au;
        goto LABEL_128;
      }
    }

    if (a3 && v11 && (*(v8 + 240) & *(a3 + 8)) == 0)
    {
      X509PolicySetFlagsForCommonNames(v8);
    }

    if (v15 == v8 && !*(v8 + 240))
    {
      X509PolicySetFlagsForRoots(a3, v8);
      if (!a3)
      {
        goto LABEL_38;
      }
    }

    else if (!a3)
    {
      goto LABEL_38;
    }

    if (v15 != v8 && *(a3 + 18) == 1 && !X509CertificateIsValid(v8))
    {
      result = v12 | 0x90009u;
      goto LABEL_128;
    }

LABEL_38:
    if (!a3 || v11)
    {
      v13 &= *(v8 + 240);
      if (!a3)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = *(v8 + 240);
      if ((v19 & *(a3 + 8)) == 0)
      {
        X509PolicySetFlagsForMFI(v8);
        v19 = *(v8 + 240);
      }

      v13 &= v19;
    }

    v20 = *(a3 + 8);
    if (v20 && (v20 & v13) == 0)
    {
      v49 = 589829;
      goto LABEL_127;
    }

LABEL_46:
    a1 |= v15 == v8;
    if ((v17 & 1) == 0)
    {
      if (v15 + 304 > v16 || v15 > v15 + 304)
      {
        goto LABEL_133;
      }

      result = X509CertificateCheckSignature(a1, v15, (v8 + 16), v8 + 40, (v8 + 56));
      if (result)
      {
        goto LABEL_128;
      }
    }

    v21 = v11 + 1;
    if (v11 == -1)
    {
      goto LABEL_134;
    }

    v8 = *(v8 + 288);
    v12 += 256;
    ++v11;
  }

  while (v8);
  v6 = v51;
  a4 = v52;
  v23 = v53;
  if (!a3)
  {
    goto LABEL_120;
  }

LABEL_67:
  if (!*a3)
  {
LABEL_71:
    v25 = *(a3 + 24);
    if (v25 && *(v25 + 8))
    {
      v26 = v21 << 8;
      v27 = **(v6[1] + 8);
      v28 = v27 + 304;
      if ((*(a3 + 16) & 1) == 0)
      {
        memset(v55, 170, 32);
        v29 = (v27 + 88);
        v30 = v27 >= v28 || v29 > v27 + 104;
        v54[0] = 0xAAAAAAAAAAAAAAAALL;
        v54[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!v30)
        {
          if (X509CertificateParseSPKI(v29, &v55[2], v54, v55))
          {
LABEL_82:
            v31 = 589832;
LABEL_114:
            result = v26 | v31;
            goto LABEL_128;
          }

          if (compare_octet_string(&v55[2], *(a3 + 32)) || compare_octet_string(v55, *(a3 + 24)))
          {
            if (X509CertificateCheckSignatureWithPublicKey(*(a3 + 24), *(a3 + 32), *(a3 + 40), (v27 + 16), (v27 + 40), (v27 + 56)))
            {
              goto LABEL_82;
            }
          }

          else if (!compare_octet_string(*(a3 + 32), &ecPublicKey))
          {
            compare_octet_string(v54, *(a3 + 40));
          }

LABEL_120:
          result = 0;
          if (a4)
          {
            *a4 = v13;
          }

          goto LABEL_128;
        }

        goto LABEL_133;
      }
    }

    else
    {
      if (*(a3 + 16) != 1)
      {
        goto LABEL_120;
      }

      v26 = v21 << 8;
      v27 = **(v6[1] + 8);
      v28 = v27 + 304;
    }

    if (v27 > v28)
    {
      goto LABEL_133;
    }

    v32 = 200;
    v33 = 184;
    if (v23)
    {
      v32 = 184;
      v33 = 168;
    }

    v34 = v27 + v33;
    v35 = v27 + v33 + 16;
    if (v35 > v27 + v32 || v34 > v35)
    {
      goto LABEL_133;
    }

    v37 = X509ChainGetAppleRootUsingKeyIdentifier(v34, *(a3 + 17));
    if (!v37)
    {
      result = v26 | 0x9000Bu;
      goto LABEL_128;
    }

    v38 = v37;
    v39 = v37 + 304;
    if ((v23 & 1) == 0)
    {
      v40 = v27 + 88 > v27 + 104 || v37 >= v39;
      v41 = v37 + 88;
      if (v40 || v41 > v37 + 104)
      {
        goto LABEL_133;
      }

      if (!compare_octet_string(v27 + 88, v41))
      {
        goto LABEL_120;
      }
    }

    v43 = (v27 + 16);
    v44 = v38 > v39 || v43 > v27 + 32;
    v45 = v27 + 40;
    v46 = (v27 + 56);
    if (!v44 && v45 <= v46 && v46 <= v27 + 72)
    {
      if (X509CertificateCheckSignature(29, v38, v43, v45, v46))
      {
        v31 = 589836;
        goto LABEL_114;
      }

      goto LABEL_120;
    }

LABEL_133:
    __break(0x5519u);
    goto LABEL_134;
  }

  v24 = v21;
  if (v23)
  {
    v24 = v21 + 1;
    if (v21 == -1)
    {
LABEL_134:
      __break(0x5500u);
    }
  }

  if (*a3 == v24)
  {
    goto LABEL_71;
  }

  result = (v24 << 8) | 0x90006u;
LABEL_128:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

void authInstalllogHandler_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&dword_259ABF000, v0, OS_LOG_TYPE_DEBUG, "AMAuthInstall: %{public}s", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void authInstalllogHandler_cold_5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_259ABF000, v0, OS_LOG_TYPE_ERROR, "AMAuthInstall: %{public}s", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}