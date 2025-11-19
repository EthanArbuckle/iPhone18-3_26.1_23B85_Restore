uint64_t sub_2432A07B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2432A07F0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2432A082C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2432A0868()
{
  v1 = *(v0 + 4);
  v2 = sub_2432F790C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_2432A0938()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2432A0970()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F658, "hO");
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2432A0A40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2432A0A7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2432A0A8C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2432A0AC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2432A0AF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2432A0B30()
{
  v1 = sub_2432F770C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_weakDestroy();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2432A0C10()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F648, "dO");
  v22 = sub_2432F7A0C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 72) & ~v5;
  v7 = *(v4 + 64);
  v21 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = *(v1 - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = (v11 + *(v9 + 64) + v14) & ~v14;
  v16 = *(v12 + 64);
  v17 = v5 | v10 | v14;
  v18 = *(v0 + 2);
  swift_unknownObjectRelease();
  v19 = *(v0 + 8);

  (*(v4 + 8))(&v0[v6], v22);
  (*(v9 + 8))(&v0[v11], AssociatedTypeWitness);
  (*(v13 + 8))(&v0[v15], v21);

  return MEMORY[0x2821FE8E8](v0, v15 + v16, v17 | 7);
}

uint64_t sub_2432A0E28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2432A0E60()
{
  v1 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F648, "dO");
  v2 = sub_2432F7A0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 8);

  (*(v3 + 8))(&v0[v5], v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_2432A0F54()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 5);
  v18 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v17 = (v4 + 56) & ~v4;
  v5 = *(v2 - 8);
  v6 = *(v5 + 80);
  v7 = (v17 + *(v3 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F648, "dO");
  v9 = sub_2432F7A0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v4 | v6 | v11;
  v15 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v3 + 8))(&v0[v17], AssociatedTypeWitness);
  (*(v5 + 8))(&v0[v7], v18);
  (*(v10 + 8))(&v0[v12], v9);

  return MEMORY[0x2821FE8E8](v0, v12 + v13, v14 | 7);
}

uint64_t sub_2432A1170()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2432A11D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2432A1220()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __CATPerformBlock_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_2432A70C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak(va);
  objc_destroyWeak((v13 - 88));
  _Unwind_Resume(a1);
}

id _CATLogGeneral()
{
  if (_CATLogGeneral_onceToken_0 != -1)
  {
    _CATLogGeneral_cold_1();
  }

  v1 = _CATLogGeneral_logObj_0;

  return v1;
}

id CATGetCatalystQueue()
{
  if (onceToken != -1)
  {
    CATGetCatalystQueue_cold_1();
  }

  v1 = mainQueue;

  return v1;
}

void CATSetCatalystQueue(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATSetCatalystQueue_block_invoke;
  block[3] = &unk_278DA72D0;
  v5 = v1;
  v2 = onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&onceToken, block);
  }
}

id CATErrorWithDomainCodeAndUserInfo(void *a1, uint64_t a2, void (*a3)(uint64_t, id), void *a4)
{
  v7 = a1;
  v8 = a4;
  if (!a3)
  {
    CATErrorWithDomainCodeAndUserInfo_cold_1();
  }

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  if (v9 && (v10 = v9, [v8 objectForKeyedSubscript:@"NSDescription"], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = v8;
  }

  else
  {
    v13 = a3(a2, v8);
    v12 = v8;
    if (v13)
    {
      v14 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __CATErrorWithDomainCodeAndUserInfo_block_invoke;
      v19[3] = &unk_278DA7370;
      v20 = v14;
      v15 = v14;
      [v13 enumerateKeysAndObjectsUsingBlock:v19];
      v16 = [v15 copy];

      v12 = v16;
    }
  }

  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:a2 userInfo:v12];

  return v17;
}

void __CATErrorWithDomainCodeAndUserInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

void sub_2432A9A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __CATPerformBlock_block_invoke_0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id CATFormattedStringForKey(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = objc_opt_new();
  v27 = &a9;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [v11 objectForKeyedSubscript:{v16, v23}];
        v18 = objc_alloc(MEMORY[0x277CCACA8]);
        v19 = [v18 initWithFormat:v17 arguments:v27];
        [v10 setObject:v19 forKeyedSubscript:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v13);
  }

  v20 = [v10 copy];
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void sub_2432ABCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432ABE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432AC188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432AC49C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id _CATLogGeneral_0()
{
  if (_CATLogGeneral_onceToken_2 != -1)
  {
    _CATLogGeneral_cold_1_0();
  }

  v1 = _CATLogGeneral_logObj_2;

  return v1;
}

void sub_2432ACBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __CATPerformBlock_block_invoke_1(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __CATPerformBlock_block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_2432B1004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432B1178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CATLogGeneral_1()
{
  if (_CATLogGeneral_onceToken_4 != -1)
  {
    _CATLogGeneral_cold_1_1();
  }

  v1 = _CATLogGeneral_logObj_4;

  return v1;
}

void sub_2432B1834(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2432B1F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __CATPerformBlock_block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_2432B2C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __CATPerformBlock_block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __CATPerformBlock_block_invoke_5(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_2432B85B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_2432B85D4(void *a1)
{
  objc_begin_catch(a1);
  if (!v1)
  {
    JUMPOUT(0x2432B8550);
  }

  JUMPOUT(0x2432B858CLL);
}

void __CATPerformBlock_block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_2432BA7BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

id _CATLogGeneral_2()
{
  if (_CATLogGeneral_onceToken_7 != -1)
  {
    _CATLogGeneral_cold_1_2();
  }

  v1 = _CATLogGeneral_logObj_7;

  return v1;
}

void sub_2432BBC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432BC320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __CATPerformBlock_block_invoke_7(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_2432BD2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return objc_opt_class();
}

void sub_2432BE498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432BE65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432BE7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432BE968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432BEC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CATLogGeneral_3()
{
  if (_CATLogGeneral_onceToken_8 != -1)
  {
    _CATLogGeneral_cold_1_3();
  }

  v1 = _CATLogGeneral_logObj_8;

  return v1;
}

void sub_2432BF238(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 72));
  _Unwind_Resume(a1);
}

void __CATPerformBlock_block_invoke_8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __CATPerformBlock_block_invoke_9(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_2432C0F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2432C133C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2432C2734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432C2898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432C2B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CATLogGeneral_4()
{
  if (_CATLogGeneral_onceToken_10 != -1)
  {
    _CATLogGeneral_cold_1_4();
  }

  v1 = _CATLogGeneral_logObj_10;

  return v1;
}

void sub_2432C2EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432C30E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_2432C3764(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __CATPerformBlock_block_invoke_10(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id _CATLogFSM()
{
  if (_CATLogFSM_onceToken != -1)
  {
    _CATLogFSM_cold_1();
  }

  v1 = _CATLogFSM_logObj;

  return v1;
}

void sub_2432C4AEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    v3 = *v2;
    *v2 = 0;

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_2432C80B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __CATPerformBlock_block_invoke_11(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_2432CA29C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

id _CATLogGeneral_5()
{
  if (_CATLogGeneral_onceToken_11 != -1)
  {
    _CATLogGeneral_cold_1_5();
  }

  v1 = _CATLogGeneral_logObj_11;

  return v1;
}

void __CATPerformBlock_block_invoke_12(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __CATPerformBlock_block_invoke_13(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id _CATLogGeneral_6()
{
  if (_CATLogGeneral_onceToken_12 != -1)
  {
    _CATLogGeneral_cold_1_6();
  }

  v1 = _CATLogGeneral_logObj_12;

  return v1;
}

void sub_2432CDE68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __CATPerformBlock_block_invoke_14(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id _CATLogGeneral_7()
{
  if (_CATLogGeneral_onceToken_14 != -1)
  {
    _CATLogGeneral_cold_1_7();
  }

  v1 = _CATLogGeneral_logObj_14;

  return v1;
}

void __CATPerformBlock_block_invoke_15(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_2432D6D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __CATPerformBlock_block_invoke_16(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_2432D78A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2432D7D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432D9B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432D9D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432DA02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432DA31C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2432DA6F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2432DABFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432DAE00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2432DB0DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2432DB77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __CATPerformBlock_block_invoke_17(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_2432DC31C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2432DCA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432DCB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432DCCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432DD0DC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2432DD410(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_2432DDAD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2432DDCA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __CATPerformBlock_block_invoke_18(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id _CATErrorDescriptionsWithCodeAndUserInfo(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v30 = a2;
  if (_CATErrorDescriptionsWithCodeAndUserInfo_onceToken != -1)
  {
    _CATErrorDescriptionsWithCodeAndUserInfo_cold_1();
  }

  v3 = 0;
  if (a1 > 403)
  {
    if (a1 <= 603)
    {
      if (a1 > 504)
      {
        if (a1 <= 600)
        {
          if (a1 == 505)
          {
            v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
            v5 = @"The client's transport was captured.";
          }

          else
          {
            v31 = 0;
            if (a1 != 600)
            {
              goto LABEL_114;
            }

            v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
            v5 = @"The connection timed out waiting to hear from the remote.";
          }
        }

        else if (a1 == 601)
        {
          v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
          v5 = @"The connection timed out waiting to receive the next segment in a full data send.";
        }

        else
        {
          v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
          if (a1 == 602)
          {
            v5 = @"The connection recieved an out of order data segment.";
          }

          else
          {
            v5 = @"The connection was closed by the other side of the connection.";
          }
        }
      }

      else if (a1 <= 501)
      {
        if (a1 == 404)
        {
          v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
          v5 = @"The operation was canceled.";
        }

        else
        {
          v31 = 0;
          if (a1 != 501)
          {
            goto LABEL_114;
          }

          v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
          v5 = @"Invalid task client.";
        }
      }

      else if (a1 == 502)
      {
        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        v5 = @"Server session invalidated.";
      }

      else
      {
        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        if (a1 == 503)
        {
          v5 = @"Client session invalidated.";
        }

        else
        {
          v5 = @"The connection was rejected.";
        }
      }
    }

    else if (a1 <= 703)
    {
      if (a1 <= 700)
      {
        if (a1 == 604)
        {
          v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
          v5 = @"The connection is no longer able to communicate with the remote.";
        }

        else
        {
          v31 = 0;
          if (a1 != 700)
          {
            goto LABEL_114;
          }

          v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
          v5 = @"Terminal interrupted.";
        }
      }

      else if (a1 == 701)
      {
        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        v5 = @"Terminal invalidated.";
      }

      else
      {
        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        if (a1 == 702)
        {
          v5 = @"Terminal invalidated by vending paired connection.";
        }

        else
        {
          v5 = @"The underlying session was closed.";
        }
      }
    }

    else if (a1 > 706)
    {
      if (a1 == 707)
      {
        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        v5 = @"Pairing verification is already in progress.";
      }

      else if (a1 == 708)
      {
        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        v5 = @"Verification is required to begin pairing.";
      }

      else
      {
        v31 = 0;
        if (a1 != 709)
        {
          goto LABEL_114;
        }

        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        v5 = @"Pairing is already in progress.";
      }
    }

    else if (a1 == 704)
    {
      v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
      v5 = @"Device session is not paired.";
    }

    else
    {
      v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
      if (a1 == 705)
      {
        v5 = @"Pairing terminal invalidated by caller.";
      }

      else
      {
        v5 = @"Pairing terminal is invalid.";
      }
    }

    goto LABEL_113;
  }

  if (a1 <= 106)
  {
    if (a1 > 101)
    {
      if (a1 <= 103)
      {
        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        if (a1 == 102)
        {
          v5 = @"Sending data failed.";
        }

        else
        {
          v5 = @"The remote connection has been closed by the peer.";
        }
      }

      else if (a1 == 104)
      {
        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        v5 = @"The remote connection could not create streams.";
      }

      else
      {
        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        if (a1 == 105)
        {
          v5 = @"The connection timed out.";
        }

        else
        {
          v5 = @"Unable to establish secure connection.";
        }
      }
    }

    else if (a1 <= 3)
    {
      if (a1 == 1)
      {
        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        v5 = @"An unknown error occurred.";
      }

      else
      {
        v31 = 0;
        if (a1 != 2)
        {
          goto LABEL_114;
        }

        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        v5 = @"A parameter was invalid.";
      }
    }

    else if (a1 == 4)
    {
      v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
      v5 = @"The operation timed out.";
    }

    else if (a1 == 100)
    {
      v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
      v5 = @"The remote connection has been closed.";
    }

    else
    {
      v31 = 0;
      if (a1 != 101)
      {
        goto LABEL_114;
      }

      v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
      v5 = @"Receiving data failed.";
    }

    goto LABEL_113;
  }

  if (a1 <= 301)
  {
    if (a1 <= 201)
    {
      if (a1 == 107)
      {
        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        v5 = @"Failed to configure secure settings on connection.";
      }

      else
      {
        v31 = 0;
        if (a1 != 200)
        {
          goto LABEL_114;
        }

        v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
        v5 = @"Transport has been invalidated.";
      }
    }

    else if (a1 == 202)
    {
      v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
      v5 = @"Transport could not connect.";
    }

    else if (a1 == 300)
    {
      v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
      v5 = @"Unable to parse message.";
    }

    else
    {
      v31 = 0;
      if (a1 != 301)
      {
        goto LABEL_114;
      }

      v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
      v5 = @"Malformed message.";
    }

    goto LABEL_113;
  }

  if (a1 <= 400)
  {
    if (a1 != 302)
    {
      v31 = 0;
      if (a1 != 400)
      {
        goto LABEL_114;
      }

      v31 = objc_opt_new();
      [_CATErrorDescriptionsWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"An unknown service request (%@)." value:&stru_2855FDC88 table:@"CATErrors"];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v3 = v39 = 0u;
      v17 = [v3 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v37;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(v3);
            }

            v21 = *(*(&v36 + 1) + 8 * i);
            v22 = [v3 objectForKeyedSubscript:v21];
            v23 = MEMORY[0x277CCACA8];
            v24 = [v30 objectForKeyedSubscript:@"kCATErrorRequestNameKey"];
            v25 = [v23 stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@" error:0, v24];
            v26 = v25;
            if (v25)
            {
              v27 = v25;
            }

            else
            {
              v27 = @"FORMAT SPECIFIER ERROR";
            }

            [v31 setObject:v27 forKeyedSubscript:v21];
          }

          v18 = [v3 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v18);
      }

      goto LABEL_87;
    }

    v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
    v5 = @"Unexpected message.";
  }

  else if (a1 == 401)
  {
    v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
    v5 = @"The operation is no longer available.";
  }

  else
  {
    if (a1 != 402)
    {
      v31 = objc_opt_new();
      [_CATErrorDescriptionsWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"Failed to create operation for request (%@)." value:&stru_2855FDC88 table:@"CATErrors"];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v3 = v35 = 0u;
      v6 = [v3 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v33;
        do
        {
          for (j = 0; j != v7; ++j)
          {
            if (*v33 != v8)
            {
              objc_enumerationMutation(v3);
            }

            v10 = *(*(&v32 + 1) + 8 * j);
            v11 = [v3 objectForKeyedSubscript:v10];
            v12 = MEMORY[0x277CCACA8];
            v13 = [v30 objectForKeyedSubscript:@"kCATErrorRequestNameKey"];
            v14 = [v12 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v13];
            v15 = v14;
            if (v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = @"FORMAT SPECIFIER ERROR";
            }

            [v31 setObject:v16 forKeyedSubscript:v10];
          }

          v7 = [v3 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v7);
      }

LABEL_87:

      goto LABEL_114;
    }

    v4 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
    v5 = @"There was a problem serializing the request.";
  }

LABEL_113:
  v31 = [v4 cat_localizedStringsForKey:v5 value:&stru_2855FDC88 table:@"CATErrors"];
  v3 = 0;
LABEL_114:

  v28 = *MEMORY[0x277D85DE8];

  return v31;
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

uint64_t CATAsyncPromise.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  CATAsyncPromise.init()();
  return v3;
}

char *CATAsyncPromise.init()()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  type metadata accessor for CATAsyncStreamMulticaster();
  sub_2432E7244(&v8);
  v6 = v8;
  v7 = v9;
  *(v0 + 2) = CATAsyncStreamMulticaster.__allocating_init(bufferingPolicy:)(&v6);
  (*(*(v2 - 8) + 56))(&v1[*(*v1 + 96)], 1, 1, v2);
  v3 = *(*v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F628, &qword_2432FE210);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v1[v3] = v4;
  return v1;
}

uint64_t CATAsyncPromise.isFulfilled.getter()
{
  v1 = *(v0 + *(*v0 + 104));
  os_unfair_lock_lock(v1 + 4);
  sub_2432E2ECC(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_2432E100C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = sub_2432F7B2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *(v4 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v10, a1 + v11, v6);
  LOBYTE(v5) = (*(*(v5 - 8) + 48))(v10, 1, v5) != 1;
  result = (*(v7 + 8))(v10, v6);
  *a2 = v5;
  return result;
}

void CATAsyncPromise.fulfill(_:)()
{
  v1 = *(v0 + *(*v0 + 104));
  os_unfair_lock_lock(v1 + 4);
  sub_2432E2F3C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_2432E1228(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = sub_2432F7B2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  v15 = *(v5 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v26 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v25 - v19;
  v21 = *(v4 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v14, &a1[v21], v6);
  if ((*(v15 + 48))(v14, 1, v5) == 1)
  {
    (*(v7 + 8))(v14, v6);
    v22 = *(a1 + 2);
    CATAsyncStreamMulticaster.yield(_:)(&v27);
    CATAsyncStreamMulticaster.finish()();
    (*(v15 + 16))(v11, a2, v5);
    (*(v15 + 56))(v11, 0, 1, v5);
    swift_beginAccess();
    (*(v7 + 40))(&a1[v21], v11, v6);
    return swift_endAccess();
  }

  else
  {
    (*(v15 + 32))(v20, v14, v5);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2432F7B3C();

    v27 = 0xD000000000000023;
    v28 = 0x8000000243301990;
    (*(v15 + 16))(v26, v20, v5);
    v24 = sub_2432F77BC();
    MEMORY[0x245D2E8F0](v24);

    result = sub_2432F7B6C();
    __break(1u);
  }

  return result;
}

uint64_t CATAsyncPromise.value.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = *(v3 + 80);
  v5 = sub_2432F7B2C();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2432E16BC, 0, 0);
}

uint64_t sub_2432E16BC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];
  sub_2432E1A44();
  v4 = *(v2 - 8);
  v5 = (*(v4 + 48))(v1, 1, v2);
  v6 = v0[8];
  if (v5 == 1)
  {
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[3];
    (*(v0[7] + 8))(v0[8], v0[6]);
    v10 = sub_2432F789C();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;

    v12 = sub_2432E2140(0, 0, v8, &unk_2432FE230, v11, v7);
    v0[9] = v12;
    sub_2432E3004(v8);
    v13 = *(MEMORY[0x277D857E0] + 4);
    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_2432E18F4;
    v15 = v0[5];
    v16 = v0[2];

    return MEMORY[0x282200460](v16, v12, v15);
  }

  else
  {
    (*(v4 + 32))(v0[2], v0[8], v0[5]);
    v17 = v0[8];
    v18 = v0[4];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2432E18F4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v8 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 32);

  v6 = *(v8 + 8);

  return v6();
}

void sub_2432E1A44()
{
  v1 = *(v0 + *(*v0 + 104));
  v2 = *(*v0 + 80);
  sub_2432F7B2C();
  v3 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v4));
  sub_2432E384C();
  os_unfair_lock_unlock((v1 + v4));
}

uint64_t sub_2432E1B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = *(*a4 + 80);
  v5 = *(*(sub_2432F7B2C() - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v4[4] = v6;
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_2432E1C18;

  return sub_2432E1E08(v6);
}

uint64_t sub_2432E1C18()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2432E1D14, 0, 0);
}

uint64_t sub_2432E1D14()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v1 - 8);
  result = (*(v3 + 48))(v2, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v0[2], v2, v1);

    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_2432E1E08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(*v1 + 80);
  v3 = sub_2432F794C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2432E1EE0, 0, 0);
}

uint64_t sub_2432E1EE0()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = *(v0[3] + 16);
  CATAsyncStreamMulticaster.makeStream()();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *(v5 + 16) = v3;
  v6 = *(MEMORY[0x277D85858] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_2432E1FE8;
  v9 = v0[7];
  v10 = v0[5];
  v11 = v0[2];

  return MEMORY[0x282200538](v11, &unk_2432FE360, v5, v10, WitnessTable);
}

void sub_2432E1FE8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[8];
    (*(v2[6] + 8))(v2[7], v2[5]);

    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t sub_2432E2140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v27[-1] - v12;
  v28[0] = a4;
  v28[1] = a5;
  sub_2432E3660(a3, &v27[-1] - v12);
  v14 = sub_2432F789C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_2432E3004(v13);
  }

  else
  {
    sub_2432F788C();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_2432F783C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_2432F77CC();
      v23 = *(v22 + 16);
      sub_2432E2BF0(v22 + 32, v28, a6, v27);

      return v27[0];
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = swift_allocObject();
  v25[2] = a6;
  v25[3] = a4;
  v25[4] = a5;
  if (v21 | v19)
  {
    v27[1] = 0;
    v27[2] = 0;
    v27[3] = v19;
    v27[4] = v21;
  }

  return swift_task_create();
}

uint64_t CATAsyncPromise.throwingValue.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(*v1 + 80);
  v3 = sub_2432F7B2C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2432E2474, 0, 0);
}

uint64_t sub_2432E2474()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = v0[4];
  sub_2432E1A44();
  v4 = *(v3 - 8);
  v0[9] = v4;
  v5 = *(v4 + 48);
  v0[10] = v5;
  v0[11] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    v6 = v0[8];
    v7 = v0[5];
    v8 = v0[6];
    v9 = *(v8 + 8);
    v0[12] = v9;
    v0[13] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_2432E2610;
    v11 = v0[7];
    v12 = v0[3];

    return sub_2432E1E08(v11);
  }

  else
  {
    v14 = v0[7];
    (*(v4 + 32))(v0[2], v0[8], v0[4]);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2432E2610()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2432E270C, 0, 0);
}

uint64_t sub_2432E270C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  if ((*(v0 + 80))(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 64);
    (*(v0 + 96))(v2, *(v0 + 40));
    sub_2432F784C();
    sub_2432E306C();
    swift_allocError();
    sub_2432F773C();
    swift_willThrow();
  }

  else
  {
    v7 = *(v0 + 64);
    (*(*(v0 + 72) + 32))(*(v0 + 16), v2, v3);
  }

  v6 = *(v0 + 8);

  return v6();
}

char *CATAsyncPromise.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 96);
  v4 = *(v1 + 80);
  v5 = sub_2432F7B2C();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  v6 = *&v0[*(*v0 + 104)];

  return v0;
}

uint64_t CATAsyncPromise.__deallocating_deinit()
{
  CATAsyncPromise.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2432E295C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2432E29F8;

  return CATAsyncPromise.value.getter(a1);
}

uint64_t sub_2432E29F8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2432E2AEC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2432E29F8;

  return CATAsyncPromise.throwingValue.getter(a1);
}

uint64_t sub_2432E2BF0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = v6;

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2432E2CDC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2432E2DD4;

  return v7(a1);
}

uint64_t sub_2432E2DD4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_2432E2ECC@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_2432E2F3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2432E2F64(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2432E29F8;

  return sub_2432E1B34(a1, v5, v6, v4);
}

uint64_t sub_2432E3004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2432E306C()
{
  result = qword_27ED6F638;
  if (!qword_27ED6F638)
  {
    sub_2432F784C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6F638);
  }

  return result;
}

uint64_t sub_2432E30C8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_2432F7B2C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of CATAsyncPromiseReading.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2432E38A4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CATAsyncPromiseReading.throwingValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2432E29F8;

  return v11(a1, a2, a3);
}

uint64_t sub_2432E3440(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2432E3460(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27ED6F640)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27ED6F640);
    }
  }
}

uint64_t sub_2432E34D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2432E3564;

  return sub_2432E2838();
}

uint64_t sub_2432E3564(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2432E3660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2432E36D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2432E38A4;

  return sub_2432E2CDC(a1, v5);
}

uint64_t sub_2432E3798@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_2432F7B2C();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_2432E384C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t static CATAsyncStreamVendors.from<A>(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CATAsyncGeneratorBackedVendor();

  return sub_2432E4598(a1, a2);
}

uint64_t getEnumTagSinglePayload for CATAsyncStreamVendors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CATAsyncStreamVendors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2432E39E8()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_2432E3A38(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2432E3AA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2432E3BE8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2432E3E08()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2432E3E50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2432E3E70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2432E3ED8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2432E29F8;

  return v7();
}

uint64_t (*sub_2432E3FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a1;
  swift_retain_n();
  return sub_2432E4080;
}

uint64_t sub_2432E4080()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  return sub_2432F796C();
}

uint64_t sub_2432E408C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v9 = sub_2432F7B2C();
  v4[3] = v9;
  v10 = *(v9 - 8);
  v4[4] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v4[5] = v12;
  v13 = *(MEMORY[0x277D857C8] + 4);
  v14 = swift_task_alloc();
  v4[6] = v14;
  *v14 = v4;
  v14[1] = sub_2432E41B8;

  return MEMORY[0x282200430](v12, a1, a2, a3, a4);
}

uint64_t sub_2432E41B8()
{
  v2 = *(*v1 + 48);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2432E438C;
  }

  else
  {
    v3 = sub_2432E42D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2432E42D0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  (*(*(v0[2] - 8) + 56))(v1, 0, 1);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2432E438C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  (*(*(v0[2] - 8) + 56))(v1, 1, 1);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2432E4448()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2432E29F8;

  return sub_2432E408C(v4, v2, v3, v5);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2432E4500(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2432E4548(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2432E4598(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t CATAsyncGeneratorBackedVendor.makeStream()@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = &v26 - v5;
  v6 = *(v2 + 80);
  v7 = sub_2432F78DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = sub_2432F790C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  (*(v8 + 104))(v11, *MEMORY[0x277D85778], v7);
  sub_2432F78AC();
  (*(v8 + 8))(v11, v7);
  v19 = sub_2432F789C();
  v20 = v27;
  (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
  (*(v13 + 16))(v16, v18, v12);
  v21 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v6;
  *(v22 + 5) = v1;
  (*(v13 + 32))(&v22[v21], v16, v12);

  v23 = sub_2432E5308(0, 0, v20, &unk_2432FE480, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = v6;
  *(v24 + 24) = v23;
  sub_2432F78CC();
  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_2432E492C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*a4 + 80);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_2432F78BC();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = *(*(sub_2432F7B2C() - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v13 = sub_2432F793C();
  v5[11] = v13;
  v14 = *(v13 - 8);
  v5[12] = v14;
  v15 = *(v14 + 64) + 15;
  v5[13] = swift_task_alloc();
  v16 = sub_2432F794C();
  v5[14] = v16;
  v17 = *(v16 - 8);
  v5[15] = v17;
  v18 = *(v17 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2432E4B4C, 0, 0);
}

uint64_t sub_2432E4B4C()
{
  sub_2432F799C();
  v0[17] = 0;
  v1 = v0[2];
  v2 = *(v1 + 24);
  v7 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_2432E4CD0;
  v5 = v0[16];

  return v7(v5);
}

uint64_t sub_2432E4CD0()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2432E4DCC, 0, 0);
}

uint64_t sub_2432E4DCC()
{
  v1 = v0[17];
  sub_2432F799C();
  if (v1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    v2 = v0[16];
    v3 = v0[13];
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[6];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    sub_2432F791C();
    v11 = *(MEMORY[0x277D85798] + 4);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_2432E4F20;
    v13 = v0[13];
    v14 = v0[10];
    v15 = v0[11];

    return MEMORY[0x2822003E8](v14, 0, 0, v15);
  }
}

uint64_t sub_2432E4F20()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2432E501C, 0, 0);
}

uint64_t sub_2432E501C()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    v7 = v0[9];
    v8 = v0[6];
    v9 = v0[3];
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_2432F790C();
    sub_2432F78FC();
    (*(v5 + 8))(v4, v6);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];
    v15 = v0[3];
    (*(v2 + 32))(v0[6], v1, v3);
    sub_2432F790C();
    sub_2432F78EC();
    (*(v13 + 8))(v12, v14);
    v16 = *(MEMORY[0x277D85798] + 4);
    v17 = swift_task_alloc();
    v0[19] = v17;
    *v17 = v0;
    v17[1] = sub_2432E4F20;
    v18 = v0[13];
    v19 = v0[10];
    v20 = v0[11];

    return MEMORY[0x2822003E8](v19, 0, 0, v20);
  }
}

uint64_t sub_2432E522C()
{
  v2 = *(v0 + 32);
  v3 = *(sub_2432F790C() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2432E29F8;

  return sub_2432E492C(v6, v7, v8, v5, v0 + v4);
}

uint64_t sub_2432E5308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2432E3660(a3, v24 - v10);
  v12 = sub_2432F789C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2432E3004(v11);
  }

  else
  {
    sub_2432F788C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2432F783C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2432F77CC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2432E3004(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2432E3004(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2432E5574()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F648, "dO");

  return sub_2432F796C();
}

uint64_t CATAsyncGeneratorBackedVendor.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CATAsyncGeneratorBackedVendor.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2432E56C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F650, "dO");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC8Catalyst12CATAsyncGate_continuation;
  (*(v3 + 16))(&v14 - v5, v1 + OBJC_IVAR____TtC8Catalyst12CATAsyncGate_continuation, v2);
  sub_2432F78FC();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v9 = OBJC_IVAR____TtC8Catalyst12CATAsyncGate_stream;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F658, "hO");
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v8((v1 + v7), v2);
  v11 = *(*v1 + 48);
  v12 = *(*v1 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2432E5858()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F660, "hO");
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - v4;
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  v8 = swift_allocObject();
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
  sub_2432F78AC();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_2432E59C8()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F658, "hO");
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2432E5AD4, 0, 0);
}

uint64_t sub_2432E5AD4()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = OBJC_IVAR____TtC8Catalyst12CATAsyncGate_stream;
  v8 = sub_2432F789C();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  (*(v4 + 16))(v1, v6 + v7, v5);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  (*(v4 + 32))(v10 + v9, v1, v5);
  v11 = sub_2432E634C(0, 0, v2, &unk_2432FE510, v10);
  v0[8] = v11;
  sub_2432E3004(v2);
  v12 = *(MEMORY[0x277D857E0] + 4);
  v13 = swift_task_alloc();
  v0[9] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F668, &qword_2432FE518);
  *v13 = v0;
  v13[1] = sub_2432E5C90;

  return MEMORY[0x282200460](v0 + 10, v11, v14);
}

uint64_t sub_2432E5C90()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2432E5DA8, 0, 0);
}

uint64_t sub_2432E5DA8()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2432E5E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F658, "hO");
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F680, &qword_2432FE548);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2432E5F44, 0, 0);
}

uint64_t sub_2432E5F44()
{
  v1 = v0[9];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_2432E6B70(&qword_27ED6F688, &qword_27ED6F658, "hO");
  sub_2432F79AC();
  v2 = sub_2432E6B70(&qword_27ED6F690, &qword_27ED6F680, &qword_2432FE548);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_2432E608C;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x282200308](v0 + 11, v6, v2);
}

uint64_t sub_2432E608C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v7 = nullsub_1;
  }

  else
  {
    v7 = sub_2432E61CC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2432E61CC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 88);
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  *v2 = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2432E6264(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F658, "hO") - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2432E29F8;

  return sub_2432E5E10(a1, v6, v7, v1 + v5);
}

uint64_t sub_2432E634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2432E3660(a3, v27 - v11);
  v13 = sub_2432F789C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2432E3004(v12);
  }

  else
  {
    sub_2432F788C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2432F783C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2432F77CC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F668, &qword_2432FE518);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F668, &qword_2432FE518);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t type metadata accessor for CATAsyncGate()
{
  result = qword_27ED6FCA0;
  if (!qword_27ED6FCA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2432E6654()
{
  sub_2432E6758(319, &qword_27ED6F670, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2432E6758(319, &qword_27ED6F678, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2432E6758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2432E67B0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2432E68A4;

  return v6(v2 + 32);
}

uint64_t sub_2432E68A4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2432E69B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2432E38A4;

  return sub_2432E67B0(a1, v5);
}

uint64_t sub_2432E6A70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2432E29F8;

  return sub_2432E67B0(a1, v5);
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

uint64_t sub_2432E6B70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CATAsyncStreamMulticaster.YieldResult.hashValue.getter()
{
  v1 = *v0;
  sub_2432F7BEC();
  MEMORY[0x245D2ED10](v1);
  return sub_2432F7C0C();
}

uint64_t sub_2432E6C4C()
{
  sub_2432F7BEC();
  CATAsyncStreamMulticaster.YieldResult.hash(into:)();
  return sub_2432F7C0C();
}

unint64_t sub_2432E6C88()
{
  result = qword_27ED6F698;
  if (!qword_27ED6F698)
  {
    sub_2432F770C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6F698);
  }

  return result;
}

uint64_t CATAsyncStreamMulticaster.deinit()
{
  sub_2432E6D24();
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 80);
  sub_2432A0A7C(*(v0 + 72));
  v4 = *(v0 + 96);
  sub_2432A0A7C(*(v0 + 88));
  return v0;
}

uint64_t sub_2432E6D24()
{
  v1 = *(*v0 + 80);
  v2 = sub_2432F790C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v63 = &v45 - v5;
  v6 = sub_2432F770C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v10;
  v64 = v2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = sub_2432F7B2C();
  v12 = *(v61 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v61);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  swift_beginAccess();
  v19 = v0[4];
  v20 = *(v19 + 64);
  v45 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v48 = v3 + 16;
  v49 = v7 + 16;
  v47 = v7 + 32;
  v25 = (v3 + 32);
  v59 = (v12 + 32);
  v60 = TupleTypeMetadata2 - 8;
  v54 = v7;
  v55 = v3;
  v57 = (v7 + 8);
  v58 = (v3 + 8);
  v56 = v19;

  v27 = 0;
  v51 = v16;
  v52 = TupleTypeMetadata2;
  v50 = v18;
  v46 = (v3 + 32);
  if (v23)
  {
    while (1)
    {
      v28 = v27;
LABEL_12:
      v31 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v32 = v31 | (v28 << 6);
      v33 = v56;
      v34 = v54;
      (*(v54 + 16))(v53, *(v56 + 48) + *(v54 + 72) * v32, v62);
      v35 = *(v33 + 56);
      v36 = v55;
      v38 = v63;
      v37 = v64;
      (*(v55 + 16))(v63, v35 + *(v55 + 72) * v32, v64);
      v39 = *(v52 + 48);
      v40 = *(v34 + 32);
      TupleTypeMetadata2 = v52;
      v16 = v51;
      v40();
      v25 = v46;
      (*(v36 + 32))(&v16[v39], v38, v37);
      v41 = 0;
      v30 = v28;
      v18 = v50;
LABEL_13:
      v42 = *(TupleTypeMetadata2 - 8);
      (*(v42 + 56))(v16, v41, 1, TupleTypeMetadata2);
      (*v59)(v18, v16, v61);
      if ((*(v42 + 48))(v18, 1, TupleTypeMetadata2) == 1)
      {
      }

      v44 = v63;
      v43 = v64;
      (*v25)(v63, &v18[*(TupleTypeMetadata2 + 48)], v64);
      sub_2432F78FC();
      (*v58)(v44, v43);
      result = (*v57)(v18, v62);
      v27 = v30;
      if (!v23)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v24 <= v27 + 1)
    {
      v29 = v27 + 1;
    }

    else
    {
      v29 = v24;
    }

    v30 = v29 - 1;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v24)
      {
        v23 = 0;
        v41 = 1;
        goto LABEL_13;
      }

      v23 = *(v45 + 8 * v28);
      ++v27;
      if (v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CATAsyncStreamMulticaster.__deallocating_deinit()
{
  CATAsyncStreamMulticaster.deinit();

  return swift_deallocClassInstance();
}

uint64_t CATAsyncStreamMulticaster.__allocating_init(bufferingPolicy:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CATAsyncStreamMulticaster.init(bufferingPolicy:)(a1);
  return v2;
}

void *CATAsyncStreamMulticaster.init(bufferingPolicy:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  sub_2432F770C();
  v6 = *(v3 + 80);
  sub_2432F790C();
  sub_2432E6C88();
  v2[4] = sub_2432F771C();
  *(v2 + 48) = 0;
  v2[7] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  v2[12] = 0;
  v2[2] = v4;
  *(v2 + 24) = v5;
  type metadata accessor for CATQueue();
  if (v5)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v2[5] = sub_2432EC664(v7);
  return v2;
}

id CATAsyncStreamMulticaster.makeStream()()
{
  v1 = *v0;
  v2 = v0[7];
  sub_2432E7F50();
  v3 = *(v1 + 80);
  sub_2432F794C();
  [v2 lock];
  sub_2432E7A04();

  return [v2 unlock];
}

uint64_t sub_2432E7420(uint64_t *a1)
{
  v50 = *a1;
  v2 = *(v50 + 80);
  v3 = sub_2432F790C();
  v4 = sub_2432F7B2C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - v6;
  v8 = sub_2432F770C();
  v9 = *(v8 - 8);
  v53 = v8;
  v54 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v12;
  MEMORY[0x28223BE20](v11);
  v52 = &v45 - v14;
  v15 = sub_2432F78DC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v45 - v19);
  v21 = v3;
  v51 = *(v3 - 8);
  v22 = *(v51 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v45 - v23;
  if (a1[3])
  {
    v25 = MEMORY[0x277D85778];
  }

  else
  {
    *v20 = a1[2];
    v25 = MEMORY[0x277D85768];
  }

  (*(v16 + 104))(v20, *v25, v15);
  sub_2432F78AC();
  (*(v16 + 8))(v20, v15);
  v26 = v52;
  sub_2432F76FC();
  v46 = *(v54 + 16);
  v47 = v2;
  v27 = v13;
  v28 = v24;
  v29 = v13;
  v30 = v53;
  v46(v27, v26, v53);
  v31 = v51;
  (*(v51 + 16))(v7, v28, v21);
  (*(v31 + 56))(v7, 0, 1, v21);
  swift_beginAccess();
  v48 = sub_2432E6C88();
  sub_2432F777C();
  sub_2432F779C();
  swift_endAccess();
  sub_2432E7A30(v28);

  sub_2432E39E8();
  v32 = type metadata accessor for CATWeakSendableBox();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v57, v55, v32);
  v46(v29, v26, v30);
  v34 = v54;
  v35 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v47;
  (*(v33 + 32))(v36 + 24, v57, v32);
  (*(v34 + 32))(v36 + v35, v29, v30);
  sub_2432F78CC();
  v37 = *a1;
  swift_beginAccess();
  v38 = a1[4];
  v39 = *(v37 + 80);
  sub_2432F790C();

  v40 = sub_2432F774C();

  if (v40 == 1)
  {
    v41 = a1[9];
    if (v41)
    {
      v42 = a1[8];
      v43 = a1[10];
      v56[0] = a1;
      v56[1] = v42;

      sub_2432A0AC4(v41);
      v41(v56);
      sub_2432A0A7C(v41);
    }
  }

  if (*(a1 + 48) == 1)
  {
    sub_2432F78FC();
  }

  (*(v33 + 8))(v55, v32);
  (*(v54 + 8))(v52, v53);
  return (*(v51 + 8))(v28, v21);
}

uint64_t sub_2432E7A30(uint64_t a1)
{
  v24 = a1;
  v2 = *(*v1 + 80);
  v23 = sub_2432F78BC();
  v3 = *(v23 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = (MEMORY[0x28223BE20])();
  v7 = v22 - v6;
  v8 = *(v2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  v15 = v1[5];
  v25[0] = v15;
  v27 = v15;
  type metadata accessor for CATQueue();
  v22[1] = v15;

  swift_getWitnessTable();
  sub_2432F7A6C();
  sub_2432F7A7C();
  if (v26 != v25[0])
  {
    v16 = v8;
    v17 = (v8 + 16);
    v18 = (v16 + 32);
    v19 = (v3 + 8);
    do
    {
      v20 = sub_2432F7B0C();
      (*v17)(v14);
      v20(v25, 0);
      sub_2432F7A8C();
      (*v18)(v12, v14, v2);
      sub_2432F790C();
      sub_2432F78EC();
      (*v19)(v7, v23);
      sub_2432F7A7C();
    }

    while (v26 != v25[0]);
  }
}

uint64_t sub_2432E7D00(void *a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v5 = sub_2432F790C();
  v6 = sub_2432F7B2C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_2432F770C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  (*(v13 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  (*(*(v5 - 8) + 56))(v9, 1, 1, v5);
  swift_beginAccess();
  v14 = sub_2432E6C88();
  sub_2432F777C();
  sub_2432F779C();
  swift_endAccess();
  v15 = *a1;
  swift_beginAccess();
  v16 = a1[4];
  v17 = *(v15 + 80);
  v18 = sub_2432F790C();

  LOBYTE(v18) = MEMORY[0x245D2E870](v19, v10, v18, v14);

  if (v18)
  {
    ++a1[8];
    v21 = a1[11];
    if (v21)
    {
      v22 = a1[12];

      v21(v23);
      return sub_2432A0A7C(v21);
    }
  }

  return result;
}

unint64_t sub_2432E7F50()
{
  result = qword_27ED6F6A0;
  if (!qword_27ED6F6A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED6F6A0);
  }

  return result;
}

id sub_2432E7FA8@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 56);
  sub_2432E7F50();
  [v3 lock];
  sub_2432E91C8(a1);
  return [v3 unlock];
}

Swift::Void __swiftcall CATAsyncStreamMulticaster.clearBuffer()()
{
  v1 = *(v0 + 56);
  (*(**(v0 + 40) + 232))([v1 lock]);

  [v1 unlock];
}

Swift::Void __swiftcall CATAsyncStreamMulticaster.finish()()
{
  v1 = *(v0 + 56);
  [v1 lock];
  if ((*(v0 + 48) & 1) == 0)
  {
    *(v0 + 48) = 1;
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    sub_2432A0A7C(v2);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    sub_2432A0A7C(v4);
    sub_2432E6D24();
  }

  [v1 unlock];
}

uint64_t (*CATAsyncStreamMulticaster.subscriberSessionDidBegin.getter())()
{
  v1 = *v0;
  v2 = v0[7];
  sub_2432E7F50();
  v3 = *(v1 + 80);
  type metadata accessor for CATAsyncStreamMulticaster.SubscriberSessionContinuation();
  swift_getFunctionTypeMetadata1();
  sub_2432F7B2C();
  [v2 lock];
  sub_2432E8384(v8);
  [v2 unlock];
  v4 = v8[0];
  if (!v8[0])
  {
    return 0;
  }

  v5 = v8[1];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;
  return sub_2432E8454;
}

void *sub_2432E820C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  result = CATAsyncStreamMulticaster.subscriberSessionDidBegin.getter();
  if (result)
  {
    v9 = result;
    v10 = v8;
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v9;
    result[4] = v10;
    v11 = sub_2432E91A0;
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11;
  a4[1] = result;
  return result;
}

uint64_t sub_2432E8288(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v6;
    v9 = sub_2432E92E8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *a2;
  sub_2432A0AC4(v5);
  sub_2432E8C60(v9, v8);

  return sub_2432A0A7C(v9);
}

uint64_t CATAsyncStreamMulticaster.subscriberSessionDidBegin.setter(uint64_t a1, uint64_t a2)
{
  sub_2432E8C60(a1, a2);

  return sub_2432A0A7C(a1);
}

uint64_t sub_2432E8384@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = v1;
  v4 = v2[9];
  v5 = v2[10];
  if (v4)
  {
    v6 = *v2;
    v7 = swift_allocObject();
    *(v7 + 2) = *(v6 + 80);
    *(v7 + 3) = v4;
    *(v7 + 4) = v5;
    v8 = sub_2432E92D4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return sub_2432A0AC4(v4);
}

uint64_t sub_2432E8454()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t (*CATAsyncStreamMulticaster.subscriberSessionDidBegin.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CATAsyncStreamMulticaster.subscriberSessionDidBegin.getter();
  a1[1] = v3;
  return sub_2432E84C4;
}

uint64_t (*CATAsyncStreamMulticaster.subscriberSessionDidEnd.getter())()
{
  v1 = v0[7];
  [v1 lock];
  v3 = v0[11];
  v2 = v0[12];
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v5 = sub_2432E92EC;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_2432A0AC4(v3);
  [v1 unlock];
  if (!v3)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_2432E8CEC;
}

uint64_t sub_2432E85E4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = CATAsyncStreamMulticaster.subscriberSessionDidEnd.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_2432E9178;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_2432E8654(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2432E92E0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_2432A0AC4(v3);
  sub_2432E8D14(v6, v5);

  return sub_2432A0A7C(v6);
}

uint64_t CATAsyncStreamMulticaster.subscriberSessionDidEnd.setter(uint64_t a1, uint64_t a2)
{
  sub_2432E8D14(a1, a2);

  return sub_2432A0A7C(a1);
}

uint64_t (*CATAsyncStreamMulticaster.subscriberSessionDidEnd.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CATAsyncStreamMulticaster.subscriberSessionDidEnd.getter();
  a1[1] = v3;
  return sub_2432E878C;
}

uint64_t sub_2432E87CC(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a1;
  if (a2)
  {
    a4(v9, v7);
    a3(v6, v7);
    a5(v6, v7);
  }

  else
  {
    a3(v9, v7);
  }

  return (a5)(v6, v7);
}

uint64_t sub_2432E8870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v45 = a4;
  v9 = *(*a1 + 80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v43 = &v35 - v12;
  v42 = sub_2432F78BC();
  v13 = *(v42 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v35 - v15;
  v44 = v9;
  v16 = sub_2432F790C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v35 - v20;
  if (*(a1 + 48))
  {
    v22 = 2;
LABEL_17:
    *a5 = v22;
    return result;
  }

  if ((a3 & 1) == 0 && *(a1 + 64) != a2)
  {
    v22 = 1;
    goto LABEL_17;
  }

  v36 = a5;
  (*(**(a1 + 40) + 200))(v45);
  swift_beginAccess();
  v23 = *(a1 + 32);
  sub_2432F770C();
  sub_2432E6C88();
  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v23 + 64);
  v27 = v24 + 63;
  v28 = v13;
  v29 = v27 >> 6;
  v38 = (v10 + 16);
  v39 = v17 + 16;
  v37 = v17 + 8;
  v30 = (v28 + 8);
  v40 = v23;

  for (i = 0; v26; result = (*v30)(v34, v42))
  {
    v32 = i;
LABEL_13:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    (*(v17 + 16))(v21, *(v40 + 56) + *(v17 + 72) * (v33 | (v32 << 6)), v16);
    (*v38)(v43, v45, v44);
    v34 = v41;
    sub_2432F78EC();
    (*(v17 + 8))(v21, v16);
  }

  while (1)
  {
    v32 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v32 >= v29)
    {

      v22 = 0;
      a5 = v36;
      goto LABEL_17;
    }

    v26 = *(v23 + 64 + 8 * v32);
    ++i;
    if (v26)
    {
      i = v32;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id CATAsyncStreamMulticaster.SubscriberSessionContinuation.yield(_:)@<X0>(char *a1@<X8>)
{
  v2 = v1[1];
  v3 = *v1;
  return sub_2432E7FA8(a1);
}

id sub_2432E8C60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  [v5 lock];
  if ((*(v2 + 48) & 1) == 0)
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 80);
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
    sub_2432A0AC4(a1);
    sub_2432A0A7C(v6);
  }

  return [v5 unlock];
}

uint64_t sub_2432E8CEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_2432E8D14(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  [v5 lock];
  if ((*(v2 + 48) & 1) == 0)
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 96);
    *(v2 + 88) = a1;
    *(v2 + 96) = a2;
    sub_2432A0AC4(a1);
    sub_2432A0A7C(v6);
  }

  return [v5 unlock];
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2432E8EA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2432E8EC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2432E8EF4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2432E8F10(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_2432E8F44(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2432E8FD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2432E90AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2432E90F4(uint64_t *a1, int a2)
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

uint64_t sub_2432E913C(uint64_t result, int a2, int a3)
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

uint64_t sub_2432E9178()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2432E91A0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

void sub_2432E91FC()
{
  v1 = *(*(sub_2432F770C() - 8) + 80);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = (v1 + 32) & ~v1;
    v4 = Strong;
    v5 = *(Strong + 56);
    [v5 lock];
    sub_2432E7D00(v4, v0 + v3);
    [v5 unlock];
  }
}

uint64_t static Task<>.cat_withTimeout<A, B>(duration:clock:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = *(*(sub_2432F7B2C() - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F648, "dO");
  v10 = sub_2432F7A3C();
  v8[12] = v10;
  v11 = *(v10 - 8);
  v8[13] = v11;
  v12 = *(v11 + 64) + 15;
  v8[14] = swift_task_alloc();
  v13 = *(*(sub_2432F79DC() - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v14 = sub_2432F7A4C();
  v8[16] = v14;
  v15 = *(v14 - 8);
  v8[17] = v15;
  v16 = *(v15 + 64) + 15;
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2432E94C4, 0, 0);
}

uint64_t sub_2432E94C4()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 80);
  v6 = swift_task_alloc();
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  *(v6 + 16) = *(v0 + 64);
  *(v6 + 32) = v5;
  *(v6 + 40) = v7;
  *(v6 + 56) = v8;
  sub_2432EB730(v3);
  sub_2432F7A5C();

  sub_2432F791C();
  v9 = *(MEMORY[0x277D858B8] + 4);
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_2432E9600;
  v11 = *(v0 + 112);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);

  return MEMORY[0x2822005A8](v12, 0, 0, v13, v0 + 16);
}

uint64_t sub_2432E9600()
{
  v2 = *(*v1 + 152);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2432E9954;
  }

  else
  {
    v3 = sub_2432E9710;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2432E9710()
{
  v1 = v0[11];
  v2 = v0[8];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    if ((sub_2432F798C() & 1) == 0)
    {
      return sub_2432F7B6C();
    }

    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[16];
    sub_2432F784C();
    sub_2432E306C();
    swift_allocError();
    sub_2432F773C();
    swift_willThrow();
    (*(v5 + 8))(v4, v6);
    v7 = v0[18];
    v8 = v0[14];
    v9 = v0[15];
    v10 = v0[11];

    v11 = v0[1];
  }

  else
  {
    v12 = v0[15];
    v13 = v0[14];
    v14 = v0[11];
    v15 = v0[8];
    v16 = v0[3];
    (*(v0[17] + 8))(v0[18], v0[16]);
    (*(v3 + 32))(v16, v14, v15);

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_2432E9954()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];
  v5 = v0[18];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2432E9A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a5;
  v43 = a8;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a4;
  v45 = a2;
  v46 = a3;
  v8 = *(a7 - 8);
  v44 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v34 - v13;
  v36 = &v34 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F648, "dO");
  v15 = sub_2432F7A0C();
  v34 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v34 - v22;
  v37 = &v34 - v22;
  v24 = sub_2432F789C();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  (*(v16 + 16))(v19, v40, v15);
  (*(v11 + 16))(v14, v41, AssociatedTypeWitness);
  v25 = v8;
  v26 = v39;
  (*(v8 + 16))(v47, v42, v39);
  v27 = (*(v16 + 80) + 72) & ~*(v16 + 80);
  v28 = (v17 + *(v11 + 80) + v27) & ~*(v11 + 80);
  v29 = (v12 + *(v8 + 80) + v28) & ~*(v8 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v38;
  *(v30 + 5) = v26;
  v31 = v45;
  v32 = v46;
  *(v30 + 6) = v43;
  *(v30 + 7) = v31;
  *(v30 + 8) = v32;
  (*(v16 + 32))(&v30[v27], v19, v34);
  (*(v11 + 32))(&v30[v28], v36, v35);
  (*(v25 + 32))(&v30[v29], v47, v26);

  sub_2432EB470(0, 0, v37, &unk_2432FE848, v30);
}

uint64_t sub_2432E9E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v11;
  *(v8 + 64) = v10;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2432E9E54, 0, 0);
}

uint64_t sub_2432E9E54()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  *(v3 + 16) = *(v0 + 64);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v5;
  *(v3 + 72) = v2;
  v6 = *(MEMORY[0x277D858E8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_2432E9F68;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = MEMORY[0x277D84F78] + 8;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v8, v9, v10, 0, 0, &unk_2432FE870, v3, v11);
}

uint64_t sub_2432E9F68()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2432EA078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v17;
  v8[10] = v18;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v9 = *(v17 - 8);
  v8[11] = v9;
  v8[12] = *(v9 + 64);
  v8[13] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[14] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[15] = v11;
  v8[16] = *(v11 + 64);
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F648, "dO");
  v12 = sub_2432F7A0C();
  v8[18] = v12;
  v13 = *(v12 - 8);
  v8[19] = v13;
  v8[20] = *(v13 + 64);
  v8[21] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220) - 8) + 64) + 15;
  v8[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2432EA294, 0, 0);
}

uint64_t sub_2432EA294()
{
  v2 = v0[21];
  v1 = v0[22];
  v30 = v1;
  v3 = v0[19];
  v36 = v0[20];
  v4 = v0[18];
  v32 = v0[17];
  v28 = v0[16];
  v22 = v0[15];
  v25 = v0[14];
  v33 = v0[13];
  v27 = v0[12];
  v31 = v0[11];
  v35 = v0[10];
  v29 = v0[9];
  v34 = v0[8];
  v26 = v0[7];
  v5 = v0[5];
  v21 = v0[6];
  v6 = v0[4];
  v23 = v0[3];
  v37 = v0[2];
  v19 = sub_2432F789C();
  v18 = *(*(v19 - 8) + 56);
  v18(v1, 1, 1, v19);
  v20 = *(v3 + 16);
  v7 = v2;
  v20(v2, v5, v4);
  v8 = *(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = v34;
  *(v9 + 5) = v29;
  *(v9 + 6) = v35;
  *(v9 + 7) = v23;
  *(v9 + 8) = v6;
  v24 = *(v3 + 32);
  v24(&v9[(v8 + 72) & ~v8], v2, v4);

  sub_2432EACDC(v30, &unk_2432FE880, v9);
  sub_2432E3004(v30);
  v18(v30, 1, 1, v19);
  (*(v22 + 16))(v32, v21, v25);
  (*(v31 + 16))(v33, v26, v29);
  v20(v2, v5, v4);
  v10 = (*(v22 + 80) + 56) & ~*(v22 + 80);
  v11 = (v28 + *(v31 + 80) + v10) & ~*(v31 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v34;
  *(v12 + 5) = v29;
  *(v12 + 6) = v35;
  (*(v22 + 32))(&v12[v10], v32, v25);
  (*(v31 + 32))(&v12[v11], v33, v29);
  v24(&v12[(v27 + v8 + v11) & ~v8], v7, v4);
  sub_2432EACDC(v30, &unk_2432FE890, v12);
  sub_2432E3004(v30);
  v13 = *(MEMORY[0x277D856A0] + 4);
  v14 = swift_task_alloc();
  v0[23] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6B0, &qword_2432FE898);
  *v14 = v0;
  v14[1] = sub_2432EA664;
  v16 = v0[2];

  return MEMORY[0x2822002D0](v0 + 24, 0, 0, v15);
}

uint64_t sub_2432EA664()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2432EA760, 0, 0);
}

uint64_t sub_2432EA760()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 136);
  v4 = *(v0 + 104);
  v5 = **(v0 + 16);
  sub_2432F786C();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2432EA804(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[6] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F648, "dO");
  v10 = sub_2432F79CC();
  v7[7] = v10;
  v11 = *(v10 - 8);
  v7[8] = v11;
  v12 = *(v11 + 64) + 15;
  v7[9] = swift_task_alloc();
  v13 = *(a7 - 8);
  v7[10] = v13;
  v14 = *(v13 + 64) + 15;
  v7[11] = swift_task_alloc();
  v15 = swift_task_alloc();
  v7[12] = v15;
  v19 = (a4 + *a4);
  v16 = a4[1];
  v17 = swift_task_alloc();
  v7[13] = v17;
  *v17 = v7;
  v17[1] = sub_2432EA9F0;

  return v19(v15);
}

uint64_t sub_2432EA9F0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2432EAC38;
  }

  else
  {
    v3 = sub_2432EAB04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2432EAB04()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[4];
  (*(v3 + 16))(v0[11], v1, v6);
  sub_2432F7A0C();
  sub_2432F79EC();
  (*(v5 + 8))(v2, v4);
  v0[3] = 0;
  sub_2432F79FC();
  (*(v3 + 8))(v1, v6);
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2432EAC38()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v0[2] = v0[14];
  sub_2432F7A0C();
  sub_2432F79FC();
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2432EACDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_2432E3660(a1, v22 - v10);
  v12 = sub_2432F789C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2432E3004(v11);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_2432F783C();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2432F788C();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_2432EAED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v14;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[10] = swift_getAssociatedTypeWitness();
  v9 = sub_2432F7B2C();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2432EAFC8, 0, 0);
}

uint64_t sub_2432EAFC8()
{
  (*(*(v0[10] - 8) + 56))(v0[13], 1, 1);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_2432EB0B0;
  v2 = v0[13];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[4];
  v5 = v0[5];

  return sub_2432EB398(v6, v2, v5, v3, v4);
}

uint64_t sub_2432EB0B0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2432EB2E8;
  }

  else
  {
    v6 = sub_2432EB220;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2432EB220()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_2432EC108();
  v0[3] = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F648, "dO");
  sub_2432F7A0C();
  sub_2432F79FC();
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2432EB2E8()
{
  v2 = v0[6];
  v1 = v0[7];
  v0[2] = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F648, "dO");
  sub_2432F7A0C();
  sub_2432F79FC();
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2432EB398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2432E29F8;

  return sub_2432EC15C(a1, a2, a4, a5);
}

uint64_t sub_2432EB470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2432E3660(a3, v27 - v11);
  v13 = sub_2432F789C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2432E3004(v12);
  }

  else
  {
    sub_2432F788C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2432F783C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2432F77CC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2432E3004(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2432E3004(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2432EB730@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F648, "dO");
  v3 = sub_2432F79DC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t CATTaskTimeoutError.hashValue.getter()
{
  sub_2432F7BEC();
  MEMORY[0x245D2ED10](0);
  return sub_2432F7C0C();
}

uint64_t sub_2432EB850()
{
  sub_2432F7BEC();
  MEMORY[0x245D2ED10](0);
  return sub_2432F7C0C();
}

uint64_t sub_2432EB8BC()
{
  sub_2432F7BEC();
  MEMORY[0x245D2ED10](0);
  return sub_2432F7C0C();
}

unint64_t sub_2432EB900()
{
  result = qword_27ED6F6A8;
  if (!qword_27ED6F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6F6A8);
  }

  return result;
}

uint64_t sub_2432EB974(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F648, "dO");
  v7 = *(sub_2432F7A0C() - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (v11 + *(v10 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v13 = v1[7];
  v14 = v1[8];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_2432E29F8;

  return sub_2432E9E18(a1, v15, v16, v13, v14, v1 + v8, v1 + v11, v1 + v12);
}

uint64_t sub_2432EBB78(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2432EC660;

  return v7(a1);
}

uint64_t sub_2432EBC70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2432E38A4;

  return sub_2432EBB78(a1, v5);
}

uint64_t sub_2432EBD28(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v12 = v2[8];
  v11 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2432E38A4;

  return sub_2432EA078(v13, a2, v7, v9, v10, v12, v11, v5);
}

uint64_t sub_2432EBE0C()
{
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F648, "dO");
  v3 = *(sub_2432F7A0C() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2432E38A4;

  return sub_2432EA804(v7, v8, v9, v5, v6, v0 + v4, v2);
}

uint64_t sub_2432EBF20()
{
  v2 = v1;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v9 = *(*(v4 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F648, "dO");
  v10 = *(sub_2432F7A0C() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2432E38A4;

  return sub_2432EAED4(v12, v13, v14, v0 + v7, v0 + v8, v0 + v11, v3, v4);
}

unint64_t sub_2432EC108()
{
  result = qword_27ED6F6B8;
  if (!qword_27ED6F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED6F6B8);
  }

  return result;
}

uint64_t sub_2432EC15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2432EC248, 0, 0);
}

uint64_t sub_2432EC248()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v0[2];
  sub_2432F7B8C();
  swift_getAssociatedConformanceWitness();
  sub_2432F7B5C();
  v9 = *(v4 + 8);
  v0[11] = v9;
  v0[12] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v3);
  v10 = *(MEMORY[0x277D85A58] + 4);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_2432EC380;
  v12 = v0[10];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[3];
  v16 = v0[4];

  return MEMORY[0x2822008C8](v12, v15, v16, v13);
}

uint64_t sub_2432EC380()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 56);
  v7 = *v1;
  v7[14] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2432EC53C, 0, 0);
  }

  else
  {
    v9 = v7[9];
    v8 = v7[10];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_2432EC53C()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_2432EC5A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2432E29F8;

  return sub_2432E2CDC(a1, v5);
}

void *sub_2432EC664(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(*v2 + 80);
  v4 = sub_2432F771C();
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = v4;
  return v2;
}

uint64_t sub_2432EC6CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = sub_2432F7B2C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15[-v7];
  sub_2432ECC80();
  v9 = v1[5];
  v10 = *(v4 - 8);
  (*(v10 + 16))(v8, a1, v4);
  (*(v10 + 56))(v8, 0, 1, v4);
  v16 = v9;
  swift_beginAccess();
  sub_2432F777C();
  sub_2432F779C();
  result = swift_endAccess();
  v12 = v2[5];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v2[5] = v14;
    return sub_2432ED074();
  }

  return result;
}

uint64_t sub_2432EC840@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = sub_2432F7B2C();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v19 - v9;
  if ((*(v4 + 216))(v8) < 1)
  {
    v18 = *(*(v5 - 8) + 56);

    return v18(a1, 1, 1, v5);
  }

  else
  {
    v11 = v1[4];
    swift_beginAccess();
    v12 = v1[3];
    v19[1] = v11;

    sub_2432F778C();

    v13 = v2[4];
    (*(*(v5 - 8) + 56))(v10, 1, 1, v5);
    v19[4] = v13;
    swift_beginAccess();
    sub_2432F777C();
    sub_2432F779C();
    result = swift_endAccess();
    v15 = v2[4];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      v2[4] = v17;
    }
  }

  return result;
}

uint64_t sub_2432ECA74()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  result = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2432ECA88(uint64_t a1)
{
  v2 = (*(*(*(*v1 + 80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v4 = &v10 - v3;
  v11 = sub_2432F772C();
  (*(*v1 + 216))();
  sub_2432F782C();
  v5 = sub_2432F780C();
  if (!(*(*v1 + 216))(v5))
  {
    return v11;
  }

  for (i = 0; ; ++i)
  {
    result = sub_2432ED210(i, v4);
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = sub_2432F781C();
    if (v8 == (*(*v1 + 216))(v9))
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2432ECBF8()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = *(v2 + 80);
  sub_2432F777C();
  sub_2432F776C();
  result = swift_endAccess();
  v1[4] = 0;
  v1[5] = 0;
  return result;
}

uint64_t sub_2432ECC80()
{
  if (v0[5] == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = (*(*v0 + 248))();
    if (v0[5] == 0x7FFFFFFFFFFFFFFFLL)
    {
      result = sub_2432F7B6C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2432ECD30()
{
  v1 = *(*v0 + 80);
  v2 = sub_2432F7B2C();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v32 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = *(v1 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v6);
  v33 = &v25 - v12;
  v13 = v0[4];
  if (v13 >= 1)
  {
    v14 = v0[5];
    if (v14 < v13)
    {
      __break(1u);
    }

    else
    {
      result = swift_beginAccess();
      v31 = v13 - v14;
      if (v13 != v14)
      {
        v15 = 0;
        v29 = (v9 + 32);
        v30 = (v9 + 48);
        v27 = v8;
        v28 = (v9 + 56);
        v25 = (v9 + 8);
        v26 = (v9 + 16);
        v16 = v33;
        do
        {
          v17 = v13;
          v18 = v13 + v15;
          v19 = v0[3];
          v34 = v18;

          sub_2432F778C();
          result = (*v30)(v8, 1, v1);
          if (result == 1)
          {
            goto LABEL_12;
          }

          (*v29)(v16, v8, v1);
          v20 = *v28;
          v21 = v32;
          (*v28)(v32, 1, 1, v1);
          v35 = v18;
          swift_beginAccess();
          sub_2432F777C();
          sub_2432F779C();
          (*v26)(v21, v16, v1);
          v20(v21, 0, 1, v1);
          v8 = v27;
          v35 = v15;
          sub_2432F779C();
          swift_endAccess();
          result = (*v25)(v16, v1);
          ++v15;
          v13 = v17;
        }

        while (v31 + v15);
      }

      v0[4] = 0;
      v22 = v0[5];
      v23 = __OFSUB__(v22, v13);
      v24 = v22 - v13;
      if (!v23)
      {
        v0[5] = v24;
        return result;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_2432ED074()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_2432F7B2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v10 - v7;
  result = (*(v1 + 216))(v6);
  if (v0[2] < result)
  {
    (*(*v0 + 208))();
    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_2432ED1B4()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2432ED210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = sub_2432F7B2C();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v15 - v9;
  v11 = v2[4];
  v12 = a1 + v11;
  if (__OFADD__(a1, v11))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v13 = v2[3];
    v15 = v12;

    sub_2432F778C();
    v14 = *(v5 - 8);
    result = (*(v14 + 48))(v10, 1, v5);
    if (result != 1)
    {

      return (*(v14 + 32))(a2, v10, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2432ED37C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2432ED1EC();
  *a1 = result;
  return result;
}

void (*sub_2432ED3A8(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v6 = *v2;
  v5[4] = sub_2432ED46C(v5, *a2);
  return sub_2432ED424;
}

void sub_2432ED424(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_2432ED46C(void *a1, uint64_t a2))(void *a1)
{
  v5 = *(*v2 + 80);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  v7 = *(v6 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  a1[2] = v8;
  sub_2432ED210(a2, v8);
  return sub_2432ED53C;
}

void sub_2432ED53C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_2432ED588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 80);
  v6 = type metadata accessor for CATQueue();

  return MEMORY[0x2821FC888](a1, v6, a3);
}

uint64_t sub_2432ED5E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v4 = type metadata accessor for CATQueue();

  return MEMORY[0x2821FC868](v4, a2);
}

void sub_2432ED68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for CATQueue();

  JUMPOUT(0x245D2EBD0);
}

uint64_t sub_2432ED6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 80);
  v10 = type metadata accessor for CATQueue();

  return MEMORY[0x2821FC7E8](a1, a2, a3, v10, a5);
}

uint64_t sub_2432ED76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 80);
  v8 = type metadata accessor for CATQueue();

  return MEMORY[0x2821FC830](a1, a2, v8, a4);
}

uint64_t sub_2432ED7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 80);
  v8 = type metadata accessor for CATQueue();
  return sub_2432EDCA8(a1, a2, v8, a4, MEMORY[0x277D83D00], MEMORY[0x277D83608]);
}

uint64_t sub_2432ED840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 80);
  v8 = type metadata accessor for CATQueue();
  return sub_2432EDCA8(a1, a2, v8, a4, MEMORY[0x277D83638], MEMORY[0x277D83618]);
}

uint64_t sub_2432ED8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  type metadata accessor for CATQueue();

  return sub_2432EDBDC();
}

void *sub_2432ED914@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2432ED92C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_2432ED9CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2432EDA28(uint64_t a1)
{
  v2 = *(a1 + 80);
  type metadata accessor for CATQueue();
  swift_getWitnessTable();
  v3 = sub_2432EDD8C();
  v4 = *v1;

  return v3;
}

void sub_2432EDA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for CATQueue();

  JUMPOUT(0x245D2E900);
}

uint64_t sub_2432EDAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  type metadata accessor for CATQueue();
  return sub_2432F77FC();
}

uint64_t sub_2432EDBDC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_2432F77AC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_2432F7B1C() + 36);
  result = sub_2432F77AC();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2432EDCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_2432F77AC();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for CATSerializer.Nucleus()
{
  result = qword_27ED70378;
  if (!qword_27ED70378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CATSerializer.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6C0, &qword_2432FEA80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - v4;
  v6 = *(v0 + 16);
  memset(v9, 0, 41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6C8, &qword_2432FEA88);
  sub_2432F78EC();

  (*(v2 + 8))(v5, v1);
  v7 = *(v0 + 16);

  return v0;
}

uint64_t CATSerializer.__deallocating_deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6C0, &qword_2432FEA80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - v4;
  v6 = *(v0 + 16);
  memset(v9, 0, 41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6C8, &qword_2432FEA88);
  sub_2432F78EC();

  (*(v2 + 8))(v5, v1);
  v7 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t CATSerializer.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for CATSerializer.Nucleus();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  sub_2432EE86C();
  *(v0 + 16) = v4;
  return v0;
}

uint64_t CATSerializer.init()()
{
  v1 = v0;
  v2 = type metadata accessor for CATSerializer.Nucleus();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_2432EE86C();
  *(v1 + 16) = v5;
  return v1;
}

Swift::Void __swiftcall CATSerializer.cancelAllTasks()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6C0, &qword_2432FEA80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v7 - v4;
  v6 = *(v0 + 16);
  memset(v7, 0, 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6C8, &qword_2432FEA88);
  sub_2432F78EC();
  (*(v2 + 8))(v5, v1);
}

Swift::Void __swiftcall CATSerializer.cancelAllQueuedTasks()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6C0, &qword_2432FEA80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - v4;
  v6 = *(v0 + 16);
  v7 = 1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6C8, &qword_2432FEA88);
  sub_2432F78EC();
  (*(v2 + 8))(v5, v1);
}

uint64_t sub_2432EE338()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F738, &qword_2432FEC10);
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v49 = &v43 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6C8, &qword_2432FEA88);
  v45 = *(v50 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v50);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F740, &qword_2432FEC18);
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  if (*(v1 + 112))
  {
    v13 = *(v1 + 112);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F648, "dO");
    sub_2432F796C();
  }

  v14 = v9[2];
  v48 = OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_executionLoopContinuation;
  v14(v12, v1 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_executionLoopContinuation, v8);
  sub_2432F78FC();
  v15 = v9[1];
  v44 = v8;
  v47 = v15;
  v15(v12, v8);
  v16 = v1 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_currentWorkItem;
  if (*(v1 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_currentWorkItem))
  {
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = *(v16 + 32);

    sub_2432E3EB0(v17);
  }

  v46 = OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_commandLoop;
  if (*(v1 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_commandLoop))
  {
    v21 = *(v1 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_commandLoop);

    sub_2432F796C();
  }

  v43 = OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_commandLoopContinuation;
  v22 = v45;
  v23 = v50;
  (*(v45 + 16))(v7, v1 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_commandLoopContinuation, v50);
  sub_2432F78FC();
  v24 = *(v22 + 8);
  v24(v7, v23);
  v45 = OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_phaseContinuation;
  v26 = v51;
  v25 = v52;
  v27 = v49;
  (*(v51 + 16))(v49, v1 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_phaseContinuation, v52);
  sub_2432F78FC();
  v28 = *(v26 + 8);
  v28(v27, v25);
  v29 = *(v1 + 112);

  v47(v1 + v48, v44);
  v30 = OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_executionLoopStream;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F720, &qword_2432FEBF8);
  (*(*(v31 - 8) + 8))(v1 + v30, v31);
  v32 = *(v16 + 8);
  v33 = *(v16 + 16);
  v34 = *(v16 + 24);
  v35 = *(v16 + 32);
  v36 = *(v16 + 40);
  sub_2432F1A78(*v16);
  v37 = *(v1 + v46);

  v24((v1 + v43), v23);
  v38 = OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_commandLoopStream;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F710, &qword_2432FEBD8);
  (*(*(v39 - 8) + 8))(v1 + v38, v39);
  v40 = OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_phaseStream;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6D0, &qword_2432FEA90);
  (*(*(v41 - 8) + 8))(v1 + v40, v41);
  v28((v1 + v45), v25);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2432EE840()
{
  sub_2432EE338();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2432EE86C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v79 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F718, &qword_2432FEBF0);
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v5);
  v76 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F750, &qword_2432FEC48);
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = *(v72 + 64);
  MEMORY[0x28223BE20](v8);
  v71 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F738, &qword_2432FEC10);
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v11);
  v68 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6D0, &qword_2432FEA90);
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = *(v69 + 64);
  MEMORY[0x28223BE20](v14);
  v67 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F758, &qword_2432FEC50);
  v63 = *(v17 - 8);
  v64 = v17;
  v18 = *(v63 + 64);
  MEMORY[0x28223BE20](v17);
  v62 = &v56 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6C8, &qword_2432FEA88);
  v65 = *(v20 - 8);
  v66 = v20;
  v21 = *(v65 + 64);
  MEMORY[0x28223BE20](v20);
  v59 = &v56 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F710, &qword_2432FEBD8);
  v60 = *(v23 - 8);
  v61 = v23;
  v24 = *(v60 + 64);
  MEMORY[0x28223BE20](v23);
  v58 = &v56 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED6F760, &qword_2432FEC58);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v56 - v29;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F740, &qword_2432FEC18);
  v31 = *(v57 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v57);
  v34 = &v56 - v33;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F720, &qword_2432FEBF8);
  v35 = *(v56 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v56);
  v38 = &v56 - v37;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  v39 = (v0 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_currentWorkItem);
  *v39 = 0u;
  v39[1] = 0u;
  *(v39 + 25) = 0u;
  *(v0 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_phase) = 0;
  *(v0 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_commandLoop) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6E0, &qword_2432FEB00);
  v40 = *MEMORY[0x277D85778];
  (*(v27 + 104))(v30, v40, v26);
  sub_2432F78AC();
  (*(v27 + 8))(v30, v26);
  (*(v35 + 32))(v0 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_executionLoopStream, v38, v56);
  (*(v31 + 32))(v0 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_executionLoopContinuation, v34, v57);
  v42 = v62;
  v41 = v63;
  v43 = v64;
  (*(v63 + 104))(v62, v40, v64);
  v44 = v58;
  v45 = v59;
  sub_2432F78AC();
  (*(v41 + 8))(v42, v43);
  (*(v60 + 32))(v1 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_commandLoopStream, v44, v61);
  (*(v65 + 32))(v1 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_commandLoopContinuation, v45, v66);
  v47 = v71;
  v46 = v72;
  v48 = v73;
  (*(v72 + 104))(v71, v40, v73);
  v50 = v67;
  v49 = v68;
  sub_2432F78AC();
  (*(v46 + 8))(v47, v48);
  (*(v69 + 32))(v1 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_phaseStream, v50, v70);
  (*(v74 + 32))(v1 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_phaseContinuation, v49, v75);
  v80 = *(v1 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_phase);
  v51 = v76;
  sub_2432F78EC();
  (*(v77 + 8))(v51, v78);
  v52 = sub_2432F789C();
  v53 = v79;
  (*(*(v52 - 8) + 56))(v79, 1, 1, v52);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v1;

  sub_2432EB470(0, 0, v53, &unk_2432FEC68, v54);

  return v1;
}

uint64_t sub_2432EF17C()
{
  v1 = *(v0 + 16);
  sub_2432EFA8C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2432EF1DC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6C0, &qword_2432FEA80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28[-v16];
  type metadata accessor for CATAsyncGate();
  v18 = sub_2432E5858();
  v19 = sub_2432F789C();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a4;
  v20[5] = v18;
  v20[6] = a2;
  v20[7] = a3;
  v20[8] = v5;

  v21 = sub_2432EF868(0, 0, v17, &unk_2432FEC40, v20);
  sub_2432E3004(v17);

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F648, "dO");
  v23 = sub_2432E3FC0(v21, a4, v22, MEMORY[0x277D84950]);
  v30 = v18;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F6C8, &qword_2432FEA88);
  sub_2432F78EC();

  (*(v10 + 8))(v13, v9);
  return v21;
}

uint64_t sub_2432EF49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_2432EF538;

  return sub_2432E59C8();
}

uint64_t sub_2432EF538()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2432EF634, 0, 0);
}

uint64_t sub_2432EF634()
{
  sub_2432F799C();
  v6 = (v0[3] + *v0[3]);
  v1 = *(v0[3] + 4);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_2432EF774;
  v3 = v0[4];
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_2432EF774()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2432EF868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25[-1] - v11;
  v26[0] = a4;
  v26[1] = a5;
  sub_2432E3660(a3, &v25[-1] - v11);
  v13 = sub_2432F789C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2432E3004(v12);
  }

  else
  {
    sub_2432F788C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2432F783C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2432F77CC();
      v22 = *(v21 + 16);
      sub_2432F1B78(v21 + 32, v26, v25);

      return v25[0];
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v20 | v18)
  {
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = v18;
    v25[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2432EFA8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F710, &qword_2432FEBD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_commandLoopStream;
  v11 = sub_2432F789C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v2 + 16))(v5, v0 + v10, v1);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v2 + 32))(v15 + v13, v5, v1);
  *(v15 + v14) = v12;
  v16 = sub_2432EB470(0, 0, v9, &unk_2432FEBE8, v15);
  v17 = *(v0 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_commandLoop);
  *(v0 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_commandLoop) = v16;
}

uint64_t sub_2432EFCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F718, &qword_2432FEBF0);
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v8 = *(v7 + 64) + 15;
  v5[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F720, &qword_2432FEBF8);
  v5[29] = v9;
  v10 = *(v9 - 8);
  v5[30] = v10;
  v5[31] = *(v10 + 64);
  v5[32] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F630, &qword_2432FE220) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F728, &qword_2432FEC00);
  v5[35] = v12;
  v13 = *(v12 - 8);
  v5[36] = v13;
  v14 = *(v13 + 64) + 15;
  v5[37] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F730, &qword_2432FEC08);
  v5[38] = v15;
  v16 = *(v15 - 8);
  v5[39] = v16;
  v17 = *(v16 + 64) + 15;
  v5[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2432EFF0C, 0, 0);
}

uint64_t sub_2432EFF0C()
{
  v1 = v0[40];
  v2 = v0[24];
  v3 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F710, &qword_2432FEBD8);
  sub_2432F791C();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_2432EFFF4;
  v6 = v0[40];
  v7 = v0[38];

  return MEMORY[0x2822003E8](v0 + 9, 0, 0, v7);
}

uint64_t sub_2432EFFF4()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2432F00F0, 0, 0);
}

uint64_t sub_2432F00F0()
{
  v1 = *(v0 + 72);
  *(v0 + 336) = v1;
  *(v0 + 352) = *(v0 + 88);
  *(v0 + 368) = *(v0 + 104);
  *(v0 + 113) = *(v0 + 112);
  if (v1 == 2)
  {
    v2 = *(v0 + 296);
    v4 = *(v0 + 264);
    v3 = *(v0 + 272);
    v5 = *(v0 + 256);
    v6 = *(v0 + 224);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 200);
    Strong = swift_weakLoadStrong();
    *(v0 + 376) = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_2432F02D8, Strong, 0);
    }

    else
    {
      v11 = *(v0 + 360);
      v12 = *(v0 + 368);
      v13 = *(v0 + 344);
      v14 = *(v0 + 352);
      v15 = *(v0 + 113);
      sub_2432F1838(*(v0 + 336));
      v16 = *(MEMORY[0x277D85798] + 4);
      v17 = swift_task_alloc();
      *(v0 + 328) = v17;
      *v17 = v0;
      v17[1] = sub_2432EFFF4;
      v18 = *(v0 + 320);
      v19 = *(v0 + 304);

      return MEMORY[0x2822003E8](v0 + 72, 0, 0, v19);
    }
  }
}

uint64_t sub_2432F02D8()
{
  v1 = *(v0 + 336);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = *(v0 + 376);
      v4 = *(v0 + 216);
      v3 = *(v0 + 224);
      v5 = *(v0 + 208);
      v6 = *(v2 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_phase) + 1;
      *(v2 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_phase) = v6;
      *(v0 + 176) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F738, &qword_2432FEC10);
      sub_2432F78EC();

      (*(v4 + 8))(v3, v5);
    }

    else
    {
      v17 = *(v0 + 376);
      v18 = *(v17 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_phase);
      *(v0 + 16) = v1;
      v19 = *(v0 + 113);
      v20 = *(v0 + 368);
      v22 = *(v0 + 288);
      v21 = *(v0 + 296);
      v23 = *(v0 + 280);
      *(v0 + 24) = *(v0 + 344);
      *(v0 + 32) = *(v0 + 352);
      *(v0 + 48) = v20;
      *(v0 + 56) = v19 & 1;
      *(v0 + 64) = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F740, &qword_2432FEC18);
      sub_2432F78EC();
      (*(v22 + 8))(v21, v23);
      v24 = *(v0 + 376);
      if (!*(v17 + 112))
      {
        v25 = *(v0 + 272);
        v46 = *(v0 + 264);
        v26 = *(v0 + 256);
        v44 = *(v0 + 248);
        v28 = *(v0 + 232);
        v27 = *(v0 + 240);
        v29 = OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_executionLoopStream;
        v30 = sub_2432F789C();
        v45 = *(v30 - 8);
        (*(v45 + 56))(v25, 1, 1, v30);
        v31 = swift_allocObject();
        swift_weakInit();
        (*(v27 + 16))(v26, v24 + v29, v28);
        v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = 0;
        *(v33 + 24) = 0;
        (*(v27 + 32))(v33 + v32, v26, v28);
        *(v33 + ((v44 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
        sub_2432E3660(v25, v46);
        LODWORD(v32) = (*(v45 + 48))(v46, 1, v30);

        v34 = *(v0 + 264);
        if (v32 == 1)
        {
          sub_2432E3004(*(v0 + 264));
        }

        else
        {
          sub_2432F788C();
          (*(v45 + 8))(v34, v30);
        }

        v35 = *(v33 + 16);
        v36 = *(v33 + 24);
        swift_unknownObjectRetain();

        if (v35)
        {
          swift_getObjectType();
          v37 = sub_2432F783C();
          v39 = v38;
          swift_unknownObjectRelease();
        }

        else
        {
          v37 = 0;
          v39 = 0;
        }

        sub_2432E3004(*(v0 + 272));
        if (v39 | v37)
        {
          *(v0 + 120) = 0;
          *(v0 + 128) = 0;
          *(v0 + 136) = v37;
          *(v0 + 144) = v39;
        }

        v40 = *(v0 + 376);
        v41 = swift_task_create();
        v42 = *(v17 + 112);
        *(v17 + 112) = v41;
      }
    }
  }

  else
  {
    v7 = *(v0 + 376);
    v8 = v7 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_currentWorkItem;
    if (*(v7 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_currentWorkItem) && (*(v8 + 40) & 1) != 0)
    {
      v10 = *(v8 + 24);
      v9 = *(v8 + 32);
      v12 = *(v8 + 8);
      v11 = *(v8 + 16);

      sub_2432E3EB0(v12);

      v7 = *(v0 + 376);
    }

    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = *(v0 + 208);
    v16 = *(v7 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_phase) + 1;
    *(v7 + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_phase) = v16;
    *(v0 + 184) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F738, &qword_2432FEC10);
    sub_2432F78EC();

    (*(v14 + 8))(v13, v15);
  }

  return MEMORY[0x2822009F8](sub_2432F07C4, 0, 0);
}

uint64_t sub_2432F07C4()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = *(v0 + 113);
  sub_2432F1838(*(v0 + 336));
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  *(v0 + 328) = v7;
  *v7 = v0;
  v7[1] = sub_2432EFFF4;
  v8 = *(v0 + 320);
  v9 = *(v0 + 304);

  return MEMORY[0x2822003E8](v0 + 72, 0, 0, v9);
}

uint64_t sub_2432F0880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F748, &qword_2432FEC30);
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2432F094C, 0, 0);
}

uint64_t sub_2432F094C()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F720, &qword_2432FEBF8);
  sub_2432F791C();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_2432F0A34;
  v6 = v0[16];
  v7 = v0[14];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v7);
}

uint64_t sub_2432F0A34()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2432F0B30, 0, 0);
}

uint64_t sub_2432F0B30()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 32);
  v3 = *(v0 + 48);
  *(v0 + 144) = v2;
  *(v0 + 160) = v1;
  *(v0 + 176) = v3;
  *(v0 + 192) = *(v0 + 64);
  if (v2)
  {
    v4 = *(v0 + 104);
    Strong = swift_weakLoadStrong();
    *(v0 + 200) = Strong;
    if (Strong)
    {
      v6 = Strong;

      return MEMORY[0x2822009F8](sub_2432F0D00, v6, 0);
    }

    else
    {

      v8 = *(MEMORY[0x277D85798] + 4);
      v9 = swift_task_alloc();
      *(v0 + 136) = v9;
      *v9 = v0;
      v9[1] = sub_2432F0A34;
      v10 = *(v0 + 128);
      v11 = *(v0 + 112);

      return MEMORY[0x2822003E8](v0 + 16, 0, 0, v11);
    }
  }

  else
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2432F0D00()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 176);
    v4 = *(v0 + 160);
    v5 = *(v0 + 144);
    v6 = *(*(v0 + 200) + OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_phase);

    if (v6 == v2)
    {
      v7 = v4;
      v8 = v3;
    }

    else
    {
      v11 = *(v0 + 168);
      sub_2432E3EB0(*(v0 + 152));
      v8 = *(v0 + 176);
      v1 = *(v0 + 184);
      v7 = *(v0 + 160);
      v5 = *(v0 + 144);
    }
  }

  else
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 160);
    v5 = *(v0 + 144);

    v7 = v10;

    v8 = v9;
  }

  v12 = *(v0 + 200);
  v13 = *(v0 + 168);
  v14 = *(v0 + 152);
  sub_2432E5988();
  v15 = OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_currentWorkItem;
  v16 = v1 & 1;
  *(v0 + 208) = OBJC_IVAR____TtCC8Catalyst13CATSerializerP33_1A781C39BDB9099759BB8DE3CBC296947Nucleus_currentWorkItem;
  v17 = v12 + v15;
  v18 = *(v17 + 8);
  v19 = *(v17 + 16);
  v20 = *(v17 + 24);
  v24 = *(v17 + 32);
  v25 = *v17;
  *v17 = v5;
  *(v17 + 8) = v14;
  *(v17 + 16) = v7;
  *(v17 + 24) = v13;
  *(v17 + 32) = v8;
  v21 = *(v17 + 40);
  *(v17 + 40) = v16;

  sub_2432F1A78(v25);
  v22 = swift_task_alloc();
  *(v0 + 216) = v22;
  *v22 = v0;
  v22[1] = sub_2432F0ED8;

  return sub_2432E3ED8(v14, v7, v13);
}

uint64_t sub_2432F0ED8()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2432F0FE8, v2, 0);
}

uint64_t sub_2432F0FE8()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[25] + v0[26];

  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v10 = *(v4 + 40);
  *(v4 + 25) = 0u;
  sub_2432F1A78(v5);

  return MEMORY[0x2822009F8](sub_2432F10AC, 0, 0);
}

uint64_t sub_2432F10AC()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[18];

  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_2432F0A34;
  v6 = v0[16];
  v7 = v0[14];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v7);
}

void sub_2432F1200()
{
  sub_2432F14AC(319, &qword_27ED6F6D8, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_2432F14AC(319, &qword_27ED6F6E8, MEMORY[0x277D857B8]);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_2432F1518(319, &qword_27ED6F6F0, &type metadata for CATSerializer.Nucleus.Command, MEMORY[0x277D85788]);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_2432F1518(319, &qword_27ED6F6F8, &type metadata for CATSerializer.Nucleus.Command, MEMORY[0x277D857B8]);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_2432F1518(319, &qword_27ED6F700, MEMORY[0x277D83E88], MEMORY[0x277D857B8]);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_2432F1518(319, &qword_27ED6F708, MEMORY[0x277D83E88], MEMORY[0x277D85788]);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2432F14AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED6F6E0, &qword_2432FEB00);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2432F1518(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2432F157C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2432F15C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8Catalyst13CATSerializerC7Nucleus33_1A781C39BDB9099759BB8DE3CBC29694LLC7CommandO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2432F1638(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 41))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2432F168C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2432F16F0(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0u;
    *(result + 40) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_2432F172C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F710, &qword_2432FEBD8) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2432E29F8;

  return sub_2432EFCBC(v5, v6, v7, v0 + v3, v4);
}

unint64_t sub_2432F1838(unint64_t result)
{
  if (result != 2)
  {
    return sub_2432F1848(result);
  }

  return result;
}

unint64_t sub_2432F1848(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t objectdestroy_34Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);
  v9 = *(v2 + v7);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_2432F196C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED6F720, &qword_2432FEBF8) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2432E29F8;

  return sub_2432F0880(v5, v6, v7, v0 + v3, v4);
}

uint64_t sub_2432F1A78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2432F1AC4(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2432E38A4;

  return sub_2432EF49C(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_2432F1B78@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2432F1C34()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2432E38A4;

  return sub_2432EF15C(v3, v4, v5, v2);
}

void CATErrorWithDomainCodeAndUserInfo_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSError *CATErrorWithDomainCodeAndUserInfo(NSString *__strong, NSInteger, CATErrorDescriptionsGenerator, NSDictionary *__strong)"}];
  [v1 handleFailureInFunction:v0 file:@"CATError.m" lineNumber:12 description:{@"Invalid parameter not satisfying: %@", @"errorDescriptionsWithCodeAndUserInfo"}];
}