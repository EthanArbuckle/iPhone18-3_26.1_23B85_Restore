uint64_t sub_20DFAB47C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 24);
  if (v3)
  {
    v12 = sub_20E008A24();

    (v11)[2](v11, 0, v12);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 24), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t static UtilitySubscriptionService.fetchSubscriptionDetails(accessToken:subscriptionID:utilityID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_20DF6A53C;

  return sub_20DF88A90(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_20DFAB8F4(int a1, int a2, int a3, void *a4, void *aBlock)
{
  v5[2] = a4;
  v5[3] = _Block_copy(aBlock);
  v7 = sub_20E0091D4();
  v9 = v8;
  v5[4] = v8;
  v10 = sub_20E0091D4();
  v12 = v11;
  v5[5] = v11;
  v13 = sub_20E0091D4();
  v15 = v14;
  v5[6] = v14;
  v16 = a4;
  v17 = swift_task_alloc();
  v5[7] = v17;
  *v17 = v5;
  v17[1] = sub_20DFABA34;

  return sub_20DF88A90(v7, v9, v10, v12, v13, v15, v16);
}

uint64_t sub_20DFABA34(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 24);
  if (v3)
  {
    v13 = sub_20E008A24();

    (v12)[2](v12, 0, v13);
    _Block_release(v12);
  }

  else
  {
    (v12)[2](*(v5 + 24), a1, 0);
    _Block_release(v12);
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t static UtilitySubscriptionService.renewAuthorizationToken(utilityID:authorizationToken:accessToken:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_20DF9B274;

  return sub_20DF94C30(a1, a2, a5, a6, a3, a4, a7);
}

uint64_t sub_20DFABEC8(int a1, int a2, int a3, void *a4, void *aBlock)
{
  v5[2] = a4;
  v5[3] = _Block_copy(aBlock);
  v7 = sub_20E0091D4();
  v9 = v8;
  v5[4] = v8;
  v10 = sub_20E0091D4();
  v12 = v11;
  v5[5] = v11;
  v13 = sub_20E0091D4();
  v15 = v14;
  v5[6] = v14;
  v16 = a4;
  v17 = swift_task_alloc();
  v5[7] = v17;
  *v17 = v5;
  v17[1] = sub_20DFAC008;

  return sub_20DF94C30(v7, v9, v13, v15, v10, v12, v16);
}

uint64_t sub_20DFAC008()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  if (v2)
  {
    v10 = sub_20E008A24();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v13 = sub_20E0091C4();

    v12 = v13;
    v11 = 0;
    v10 = v13;
  }

  v14 = *(v3 + 24);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t static UtilitySubscriptionService.revokeSubscription(authorizationToken:subscriptionID:utilityID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_20DFAC2E4;

  return sub_20DF8A2E8(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_20DFAC2E4(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_20DFAC594(int a1, int a2, int a3, void *a4, void *aBlock)
{
  v5[2] = a4;
  v5[3] = _Block_copy(aBlock);
  v7 = sub_20E0091D4();
  v9 = v8;
  v5[4] = v8;
  v10 = sub_20E0091D4();
  v12 = v11;
  v5[5] = v11;
  v13 = sub_20E0091D4();
  v15 = v14;
  v5[6] = v14;
  v16 = a4;
  v17 = swift_task_alloc();
  v5[7] = v17;
  *v17 = v5;
  v17[1] = sub_20DFAC6D4;

  return sub_20DF8A2E8(v7, v9, v10, v12, v13, v15, v16);
}

uint64_t sub_20DFAC6D4(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 40);
  v10 = *(*v2 + 32);
  v11 = *(*v2 + 16);
  v12 = *v2;

  v13 = *(v5 + 24);
  if (v3)
  {
    v14 = sub_20E008A24();

    (*(v13 + 16))(v13, 0, v14);
  }

  else
  {
    (*(v13 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v15 = *(v12 + 8);

  return v15();
}

uint64_t static UtilitySubscriptionService.resendHistoricalData(authorizationToken:subscriptionID:utilityID:start:end:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_20DFAE848;

  return sub_20DF999FC(a3, a4, a1, a2, a5, a6, a7, a8);
}

void sub_20DFACB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, const void *a7)
{
  v7[2] = a6;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v7[3] = v11;
  v12 = sub_20E008CD4();
  v7[4] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v7[5] = v13;
  v15 = *(v13 + 64) + 15;
  v16 = swift_task_alloc();
  v7[6] = v16;
  v7[7] = swift_task_alloc();
  v7[8] = _Block_copy(a7);
  sub_20E0091D4();
  v7[9] = v17;
  sub_20E0091D4();
  v7[10] = v18;
  sub_20E0091D4();
  v7[11] = v19;
  sub_20E008C84();
  if (a5)
  {
    sub_20E008C84();
    (*(v14 + 32))(v11, v16, v12);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v14 + 56))(v11, v20, 1, v12);
  a6;
  v21 = swift_task_alloc();
  v7[12] = v21;
  *v21 = v7;
  v21[1] = sub_20DFACE08;

  JUMPOUT(0x20DF999FCLL);
}

uint64_t sub_20DFACE08(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = (*v2)[12];
  v8 = (*v2)[11];
  v9 = (*v2)[10];
  v10 = (*v2)[9];
  v11 = (*v2)[2];
  v12 = *v2;

  v13 = v5[8];
  v14 = v5[7];
  v15 = v5[5];
  v16 = v5[4];
  sub_20DFAE440(v5[3]);
  (*(v15 + 8))(v14, v16);
  if (v3)
  {
    v17 = sub_20E008A24();

    (*(v13 + 16))(v13, 0, v17);
  }

  else
  {
    (*(v13 + 16))(v13, a1 & 1, 0);
  }

  v19 = v6[7];
  v18 = v6[8];
  v20 = v6[6];
  v21 = v6[3];
  _Block_release(v18);

  v22 = v12[1];

  return v22();
}

id UtilitySubscriptionService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UtilitySubscriptionService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilitySubscriptionService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20DFAD1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_20DFAD1C8, 0, 0);
}

uint64_t sub_20DFAD1C8()
{
  v1 = v0[3];
  v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_20DFAD3CC;
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[4];
    v7 = v0[2];

    return sub_20DFF2560(0, 0, v7, v1, v6, v4, v5);
  }

  else
  {
    if (qword_27C852080 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_27C8626E0);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Attempting to generate token with a empty refreshToken!!!", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_20DFAD3CC(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t dispatch thunk of UtilitySubscriptionService.authorizeAccountWithTAF(fields:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x70);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20DFAE844;

  return v10(a1, a2);
}

uint64_t dispatch thunk of UtilitySubscriptionService.initiateOTPForAccount(forFactor:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20DFAD79C;

  return v10(a1, a2);
}

uint64_t sub_20DFAD79C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of UtilitySubscriptionService.verifyAccount(factor:oneTimePasscode:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0x80);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_20DF6BA84;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of UtilitySubscriptionService.createAccessToken(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x88);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_20DFAE844;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of UtilitySubscriptionService.fetchServiceLocations(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x90);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_20DFAD79C;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of UtilitySubscriptionService.fetchEligibleAndIneligibleLocations(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x98);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_20DF6BD98;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of UtilitySubscriptionService.createUtilitySubscription(serviceLocationID:accessToken:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0xA0);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_20DFAE844;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_20DFADF40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20DF6BD98;

  return sub_20DFAACDC(v2, v3, v4, v5, v6);
}

uint64_t sub_20DFAE008()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20DF6BD98;

  return sub_20DFAA1C0(v2, v3, v5, v4);
}

uint64_t sub_20DFAE0C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20DF6BD98;

  return sub_20DFA9A98(v2, v3, v5, v4);
}

uint64_t sub_20DFAE188()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20DF6BD98;

  return sub_20DFA8DD0(v2, v3, v5, v4);
}

uint64_t objectdestroy_47Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20DFAE298()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20DF6BD98;

  return sub_20DFA8550(v2, v3, v5, v4);
}

void sub_20DFAE358()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_20DF6BD98;

  sub_20DFACB94(v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_20DFAE440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DFAE4A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20DF6BD98;

  return sub_20DFAC594(v2, v3, v4, v5, v7);
}

uint64_t sub_20DFAE57C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20DF6BD98;

  return sub_20DFABEC8(v2, v3, v4, v5, v7);
}

uint64_t objectdestroy_122Tm()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20DFAE6A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20DF6BA84;

  return sub_20DFAB8F4(v2, v3, v4, v5, v7);
}

uint64_t sub_20DFAE77C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20DF6BD98;

  return sub_20DFAB364(v2, v3, v4, v5);
}

uint64_t sub_20DFAE84C()
{
  v1 = v0;
  v2 = [v0 allHeaderFields];
  v3 = sub_20E009164();

  sub_20E0096B4();
  if (*(v3 + 16) && (v4 = sub_20DFB85FC(v22), (v5 & 1) != 0))
  {
    sub_20DF6981C(*(v3 + 56) + 32 * v4, v23);
    sub_20DFAF37C(v22);

    if (swift_dynamicCast())
    {
      return 1734440005;
    }
  }

  else
  {

    sub_20DFAF37C(v22);
  }

  if (qword_281123100 != -1)
  {
    swift_once();
  }

  v7 = sub_20E009094();
  __swift_project_value_buffer(v7, qword_281124A48);
  v8 = sub_20E009074();
  v9 = sub_20E009544();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20DF74468(1734440005, 0xE400000000000000, v22);
    _os_log_impl(&dword_20DF62000, v8, v9, "Unable to retrieve %s header from response.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F32B3A0](v11, -1, -1);
    MEMORY[0x20F32B3A0](v10, -1, -1);
  }

  v12 = v1;
  v13 = sub_20E009074();
  v14 = sub_20E009544();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 136380675;
    v17 = [v12 allHeaderFields];
    sub_20E009164();

    v18 = sub_20E009174();
    v20 = v19;

    v21 = sub_20DF74468(v18, v20, v22);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_20DF62000, v13, v14, "%{private}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F32B3A0](v16, -1, -1);
    MEMORY[0x20F32B3A0](v15, -1, -1);
  }

  return 0;
}

double sub_20DFAEBC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D98, &qword_20E00F830);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v49 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852DA0, &qword_20E00F838);
  v52 = *(v54 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852DA8, &qword_20E00F840);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852DB0, &qword_20E00F848);
  v53 = v16;
  sub_20E008E84();
  v17 = &dword_277E1B000;
  v18 = [v1 allHeaderFields];
  v19 = sub_20E009164();

  strcpy(v55, "Cache-Control");
  v55[7] = -4864;
  sub_20E0096B4();
  if (*(v19 + 16) && (v20 = sub_20DFB85FC(v56), (v21 & 1) != 0))
  {
    sub_20DF6981C(*(v19 + 56) + 32 * v20, v57);
    sub_20DFAF37C(v56);

    if (swift_dynamicCast())
    {
      v51 = v1;
      sub_20E0093A4();

      sub_20DFAF3D0();
      sub_20E008E74();
      sub_20E008E94();
      v50 = *(v10 + 8);
      v50(v14, v9);

      v42 = v52;
      v43 = v54;
      v44 = (*(v52 + 48))(v5, 1, v54);
      v1 = v51;
      v17 = &dword_277E1B000;
      if (v44 == 1)
      {
        sub_20DFAF434(v5);
      }

      else
      {
        v49 = v10 + 8;
        (*(v42 + 32))(v8, v5, v43);
        swift_getKeyPath();
        sub_20E008EA4();

        v45 = MEMORY[0x20F32A440](v56[0], v56[1], v56[2], v56[3]);
        v47 = v46;

        v56[0] = 0;
        v48 = sub_20DFB9280(v45, v47);

        (*(v42 + 8))(v8, v43);
        if (v48)
        {
          v50(v53, v9);
          return *v56;
        }

        v1 = v51;
        v17 = &dword_277E1B000;
      }
    }
  }

  else
  {

    sub_20DFAF37C(v56);
  }

  if (qword_281123100 != -1)
  {
    swift_once();
  }

  v22 = sub_20E009094();
  v54 = __swift_project_value_buffer(v22, qword_281124A48);
  v23 = sub_20E009074();
  v24 = sub_20E009544();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v17;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_20DF62000, v23, v24, "Unable to generate max age value based on response.", v26, 2u);
    v27 = v26;
    v17 = v25;
    MEMORY[0x20F32B3A0](v27, -1, -1);
  }

  v28 = v1;
  v29 = sub_20E009074();
  v30 = sub_20E009544();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v56[0] = v32;
    *v31 = 136380675;
    v33 = [v28 *(v17 + 30)];
    sub_20E009164();

    v34 = sub_20E009174();
    v36 = v35;

    v37 = sub_20DF74468(v34, v36, v56);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_20DF62000, v29, v30, "%{private}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x20F32B3A0](v32, -1, -1);
    MEMORY[0x20F32B3A0](v31, -1, -1);
  }

  v38 = sub_20E009074();
  v39 = sub_20E009544();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_20DF62000, v38, v39, "Returning zero max age value for response.", v40, 2u);
    MEMORY[0x20F32B3A0](v40, -1, -1);
  }

  (*(v10 + 8))(v53, v9);
  return 0.0;
}

unint64_t sub_20DFAF3D0()
{
  result = qword_281123390;
  if (!qword_281123390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852DA8, &qword_20E00F840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123390);
  }

  return result;
}

uint64_t sub_20DFAF434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852D98, &qword_20E00F830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DFAF49C()
{
  result = sub_20DFAF4C0();
  qword_2811249C0 = result;
  *algn_2811249C8 = v1;
  return result;
}

uint64_t sub_20DFAF4C0()
{
  v0 = sub_20E008AF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 URLsForDirectory:13 inDomains:1];
  v10 = sub_20E009424();

  if (*(v10 + 16))
  {
    (*(v1 + 16))(v5, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 32))(v7, v5, v0);
    v11 = sub_20E008A84();
    v13 = v12;
    v14 = sub_20DFE7E38();
    v15 = 0xEA00000000006C61;
    v16 = 0x6E7265746E496171;
    v17 = 1953654115;
    if (v14 != 2)
    {
      v17 = 1685025392;
    }

    if (v14)
    {
      v16 = 7759204;
      v15 = 0xE300000000000000;
    }

    if (v14 <= 1)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    if (v14 <= 1)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    v22[0] = v11;
    v22[1] = v13;
    MEMORY[0x20F32A4B0](0xD00000000000002CLL, 0x800000020E0160E0);
    MEMORY[0x20F32A4B0](47, 0xE100000000000000);
    MEMORY[0x20F32A4B0](v18, v19);

    MEMORY[0x20F32A4B0](47, 0xE100000000000000);

    v20 = v22[0];
    (*(v1 + 8))(v7, v0);
  }

  else
  {

    return 0;
  }

  return v20;
}

uint64_t sub_20DFAF758()
{
  v0 = [objc_opt_self() defaultManager];
  sub_20E008A94();
  v1 = sub_20E0091C4();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    return sub_20E008B14();
  }

  if (qword_27C852050 != -1)
  {
    swift_once();
  }

  v4 = sub_20E009094();
  __swift_project_value_buffer(v4, qword_27C862668);
  v5 = sub_20E009074();
  v6 = sub_20E009544();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20DF62000, v5, v6, "File not found in provided location!", v7, 2u);
    MEMORY[0x20F32B3A0](v7, -1, -1);
  }

  return 0;
}

void _s19HomeUtilityServices0bC0C05clearB14TerritoryCacheyyFZ_0()
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (qword_27C852050 != -1)
  {
    swift_once();
  }

  v0 = sub_20E009094();
  __swift_project_value_buffer(v0, qword_27C862668);
  v1 = sub_20E009074();
  v2 = sub_20E009554();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20DF62000, v1, v2, "Clearing Client cache", v3, 2u);
    MEMORY[0x20F32B3A0](v3, -1, -1);
  }

  v4 = [objc_opt_self() defaultManager];
  if (qword_281123098 != -1)
  {
    swift_once();
  }

  v5 = sub_20E0091C4();
  v20[0] = 0;
  v6 = [v4 removeItemAtPath:v5 error:v20];

  v7 = v20[0];
  if (v6)
  {
    v8 = *MEMORY[0x277D85DE8];

    v9 = v7;
  }

  else
  {
    v10 = v20[0];
    v11 = sub_20E008A34();

    swift_willThrow();
    v12 = v11;
    v13 = sub_20E009074();
    v14 = sub_20E009544();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v11;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_20DF62000, v13, v14, "Error while trying to clear cache. %@", v15, 0xCu);
      sub_20DF912F8(v16);
      MEMORY[0x20F32B3A0](v16, -1, -1);
      MEMORY[0x20F32B3A0](v15, -1, -1);
    }

    else
    {
    }

    v19 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_20DFAFCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a1;
  v6[4] = a4;
  v11 = type metadata accessor for NetworkError();
  v6[5] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v13 = sub_20E008AF4();
  v6[7] = v13;
  v14 = *(v13 - 8);
  v6[8] = v14;
  v15 = *(v14 + 64) + 15;
  v6[9] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v17 = swift_task_alloc();
  v6[10] = v17;
  v18 = sub_20E008714();
  v6[11] = v18;
  v19 = *(v18 - 8);
  v6[12] = v19;
  v20 = *(v19 + 64) + 15;
  v6[13] = swift_task_alloc();
  v21 = swift_task_alloc();
  v6[14] = v21;
  *v21 = v6;
  v21[1] = sub_20DFAFEE8;

  return sub_20DF64E0C(v17, a2, a3, a5, a6);
}

uint64_t sub_20DFAFEE8()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DFAFFE4, 0, 0);
}

uint64_t sub_20DFAFFE4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_281124A00);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable generate request URL for Utility ID Lookup", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[3];

    (*(v9 + 56))(v10, 1, 1, v8);
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[10];
    v14 = v0[6];

    v15 = v0[1];

    return v15(0);
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    sub_20DFDF8DC(0xD000000000000027, 0x800000020E016890, 0xD000000000000015, 0x800000020E0168C0);
    v17 = *(MEMORY[0x277CC9D48] + 4);
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_20DFB0274;
    v19 = v0[13];
    v20 = v0[9];
    v21 = v0[4];

    return MEMORY[0x28211ED28](v20, v19, 0);
  }
}

uint64_t sub_20DFB0274(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_20DFB0C9C;
  }

  else
  {
    v5 = sub_20DFB0388;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20DFB0388()
{
  v82 = v0;
  v1 = v0[16];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v0[13];
    sub_20DFDFFF8(0xD000000000000016, 0x800000020E0168E0, [v2 statusCode], &unk_28252D3E8);
    v5 = [v3 statusCode];
    if (v5 == 304)
    {
      if (qword_2811230E0 != -1)
      {
        swift_once();
      }

      v28 = sub_20E009094();
      __swift_project_value_buffer(v28, qword_281124A00);
      v29 = sub_20E009074();
      v30 = sub_20E009534();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_20DF62000, v29, v30, "Geohash File unmodified. Use existing file on disk.", v31, 2u);
        MEMORY[0x20F32B3A0](v31, -1, -1);
      }

      v33 = v0[12];
      v32 = v0[13];
      v34 = v0[11];
      v36 = v0[8];
      v35 = v0[9];
      v37 = v0[7];
      v38 = v0[3];

      (*(v36 + 8))(v35, v37);
      (*(v33 + 8))(v32, v34);
      (*(v36 + 56))(v38, 1, 1, v37);
      goto LABEL_19;
    }

    if (v5 == 200)
    {
      if (qword_2811230E0 != -1)
      {
        swift_once();
      }

      v6 = sub_20E009094();
      __swift_project_value_buffer(v6, qword_281124A00);
      v7 = sub_20E009074();
      v8 = sub_20E009534();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_20DF62000, v7, v8, "New Geo Tile fetched", v9, 2u);
        MEMORY[0x20F32B3A0](v9, -1, -1);
      }

      v11 = v0[12];
      v10 = v0[13];
      v12 = v0[11];
      v14 = v0[8];
      v13 = v0[9];
      v15 = v0[7];
      v16 = v0[3];

      (*(v11 + 8))(v10, v12);
      (*(v14 + 32))(v16, v13, v15);
      (*(v14 + 56))(v16, 0, 1, v15);
LABEL_19:
      v39 = v0[13];
      v41 = v0[9];
      v40 = v0[10];
      v42 = v0[6];

      v43 = v0[1];

      return v43(v3);
    }

    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v45 = sub_20E009094();
    __swift_project_value_buffer(v45, qword_281124A00);
    v46 = sub_20E009074();
    v47 = sub_20E009544();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_20DF62000, v46, v47, "Error while checking for geohash tiles", v48, 2u);
      MEMORY[0x20F32B3A0](v48, -1, -1);
    }

    v49 = v0[16];

    v50 = v49;
    v51 = [v3 description];
    v52 = sub_20E0091D4();
    v54 = v53;

    v55 = sub_20E009074();
    v56 = sub_20E009544();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v81 = v58;
      *v57 = 136315138;
      v59 = sub_20DF74468(v52, v54, &v81);

      *(v57 + 4) = v59;
      _os_log_impl(&dword_20DF62000, v55, v56, "%s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x20F32B3A0](v58, -1, -1);
      MEMORY[0x20F32B3A0](v57, -1, -1);
    }

    else
    {
    }

    v60 = v0[16];
    v62 = v0[8];
    v61 = v0[9];
    v63 = v0[7];
    v64 = v0[5];
    sub_20DFB2FBC(&qword_281123200, type metadata accessor for NetworkError);
    v26 = swift_allocError();
    *v65 = [v3 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v62 + 8))(v61, v63);
  }

  else
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v17 = sub_20E009094();
    __swift_project_value_buffer(v17, qword_281124A00);
    v18 = sub_20E009074();
    v19 = sub_20E009544();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20DF62000, v18, v19, "Unable to process GeoTiles Response.", v20, 2u);
      MEMORY[0x20F32B3A0](v20, -1, -1);
    }

    v21 = v0[16];
    v23 = v0[8];
    v22 = v0[9];
    v24 = v0[7];
    v25 = v0[5];

    sub_20DFB2FBC(&qword_281123200, type metadata accessor for NetworkError);
    v26 = swift_allocError();
    *v27 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v23 + 8))(v22, v24);
  }

  if (qword_2811230E0 != -1)
  {
    swift_once();
  }

  v66 = sub_20E009094();
  __swift_project_value_buffer(v66, qword_281124A00);
  v67 = v26;
  v68 = sub_20E009074();
  v69 = sub_20E009544();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v70 = 138412290;
    v72 = v26;
    v73 = _swift_stdlib_bridgeErrorToNSError();
    *(v70 + 4) = v73;
    *v71 = v73;
    _os_log_impl(&dword_20DF62000, v68, v69, "Error while trying to fetch geohash tiles from server %@", v70, 0xCu);
    sub_20DF66E28(v71, &qword_27C8521E0, &unk_20E011080);
    MEMORY[0x20F32B3A0](v71, -1, -1);
    MEMORY[0x20F32B3A0](v70, -1, -1);
  }

  v75 = v0[5];
  v74 = v0[6];

  v0[2] = v26;
  v76 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  if (swift_dynamicCast())
  {
    sub_20DFB2F60(v0[6]);
    swift_willThrow();
  }

  else
  {
    sub_20DFFF4B4(v26);
    swift_willThrow();
  }

  v77 = v0[10];
  v78 = v0[9];
  v79 = v0[6];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v80 = v0[1];

  return v80();
}

uint64_t sub_20DFB0C9C()
{
  v1 = v0[17];
  if (qword_2811230E0 != -1)
  {
    swift_once();
  }

  v2 = sub_20E009094();
  __swift_project_value_buffer(v2, qword_281124A00);
  v3 = v1;
  v4 = sub_20E009074();
  v5 = sub_20E009544();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20DF62000, v4, v5, "Error while trying to fetch geohash tiles from server %@", v6, 0xCu);
    sub_20DF66E28(v7, &qword_27C8521E0, &unk_20E011080);
    MEMORY[0x20F32B3A0](v7, -1, -1);
    MEMORY[0x20F32B3A0](v6, -1, -1);
  }

  v11 = v0[5];
  v10 = v0[6];

  v0[2] = v1;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  if (swift_dynamicCast())
  {
    sub_20DFB2F60(v0[6]);
    swift_willThrow();
  }

  else
  {
    sub_20DFFF4B4(v1);
    swift_willThrow();
  }

  v13 = v0[10];
  v14 = v0[9];
  v15 = v0[6];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v16 = v0[1];

  return v16();
}

void sub_20DFB0EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v120 = a2;
  v121 = a3;
  v127 = sub_20E008AF4();
  v4 = *(v127 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v127);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20E009234();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v130 = &v111 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v111 - v16;
  if (qword_2811230E0 != -1)
  {
    swift_once();
  }

  v119 = v13;
  v18 = sub_20E009094();
  v131 = __swift_project_value_buffer(v18, qword_281124A00);
  v19 = sub_20E009074();
  v20 = sub_20E009524();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_20DF62000, v19, v20, "Generating individual geohash tiles from parent geohash.", v21, 2u);
    MEMORY[0x20F32B3A0](v21, -1, -1);
  }

  v126 = a1;
  sub_20E008A84();
  sub_20E009214();
  v22 = type metadata accessor for StreamReader();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_fileHandle;
  *(v25 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_fileHandle) = 0;
  *(v25 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_atEof) = 0;
  *(v25 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_chunkSize) = 4096;
  v128 = *(v9 + 16);
  v129 = v9 + 16;
  v128(v25 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_encoding, v17, v8);
  v27 = sub_20E0091C4();

  v28 = [objc_opt_self() fileHandleForReadingAtPath_];

  v29 = &OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_buffer;
  v125 = v28;
  if (!v28)
  {
    (*(v9 + 8))(v17, v8);
    goto LABEL_47;
  }

  v30 = &OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_buffer;
  v31 = sub_20E0091E4();
  if (v32 >> 60 == 15)
  {
    (*(v9 + 8))(v17, v8);
LABEL_46:

    v29 = v30;
LABEL_47:
    *(v26 + v25) = 0;
    *(v25 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_delimData) = xmmword_20E00D7C0;
    *(v25 + *v29) = 0;
    swift_setDeallocating();
    v77 = *sub_20DF8FE98();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_deallocClassInstance();
    v80 = v127;
    (*(v4 + 16))(v7, v126, v127);
    v81 = sub_20E009074();
    v82 = sub_20E009544();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v134 = v84;
      *v83 = 136315138;
      v85 = sub_20E008A84();
      v87 = v86;
      (*(v4 + 8))(v7, v80);
      v88 = sub_20DF74468(v85, v87, &v134);

      *(v83 + 4) = v88;
      _os_log_impl(&dword_20DF62000, v81, v82, "Unable to open file stream for file :%s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);
      MEMORY[0x20F32B3A0](v84, -1, -1);
      MEMORY[0x20F32B3A0](v83, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v7, v80);
    }

    return;
  }

  v33 = v31;
  v34 = v32;
  v35 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity_];
  v36 = v8;
  v37 = v35;
  v38 = *(v9 + 8);
  v124 = v36;
  v117 = v38;
  v118 = v9 + 8;
  (v38)(v17);
  if (!v37)
  {
LABEL_45:
    sub_20DF64DE8(v33, v34);
    goto LABEL_46;
  }

  *(v26 + v25) = v125;
  v7 = &OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_delimData;
  v39 = (v25 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_delimData);
  *v39 = v33;
  v39[1] = v34;
  *(v25 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_buffer) = v37;
  if (qword_281123098 != -1)
  {
LABEL_63:
    swift_once();
  }

  v33 = qword_2811249C0;
  v40 = *algn_2811249C8;
  v134 = qword_2811249C0;
  v135 = *algn_2811249C8;

  MEMORY[0x20F32A4B0](v120, v121);
  v34 = v135;
  v41 = sub_20DFFCF8C();

  if ((v41 & 1) == 0)
  {
    v89 = sub_20E009074();
    v90 = sub_20E009544();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_20DF62000, v89, v90, "Unable to create directory for saving GeoHash Polygons", v91, 2u);
      MEMORY[0x20F32B3A0](v91, -1, -1);
    }

LABEL_52:

    swift_setDeallocating();
    v92 = *sub_20DF8FE98();
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    swift_deallocClassInstance();
    return;
  }

  v112 = v40;
  v113 = v33;
  v116 = [objc_opt_self() defaultManager];
  v42 = OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_fileHandle;
  v127 = OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_atEof;
  v123 = *v30;
  v43 = *v7;
  v122 = OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_encoding;
  v44 = MEMORY[0x20F32ADB0]();
  if (!*(v25 + v42))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v34 = v44;
  v115 = 0;
  v114 = 0;
  v26 = (v25 + v43);
  *&v45 = 136315138;
  v111 = v45;
  v126 = v42;
  while ((*(v25 + v127) & 1) == 0)
  {
    v30 = *(v25 + v123);
    if (!v30)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      return;
    }

    if (v26[1] >> 60 == 15)
    {
      goto LABEL_67;
    }

    v46 = *v26;
    v47 = sub_20E008B64();
    v33 = [v30 rangeOfData:v47 options:0 range:{0, objc_msgSend(v30, sel_length)}];
    v4 = v48;
    while (1)
    {

      if (v33 != sub_20E008674())
      {
        break;
      }

      v49 = *(v25 + v42);
      if (!v49)
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v50 = [v49 readDataOfLength_];
      v7 = sub_20E008B84();
      v52 = v51;

      v53 = v52 >> 62;
      if ((v52 >> 62) > 1)
      {
        if (v53 != 2 || *(v7 + 16) == *(v7 + 24))
        {
LABEL_32:
          *(v25 + v127) = 1;
          if ([v30 length] < 1)
          {
            sub_20DF67FFC(v7, v52);
            goto LABEL_54;
          }

          v33 = sub_20E008B84();
          v4 = v63;
          v128(v130, (v25 + v122), v124);
          v60 = sub_20E0091F4();
          v62 = v64;
          sub_20DF67FFC(v33, v4);
          [v30 setLength_];
          sub_20DF67FFC(v7, v52);
          goto LABEL_34;
        }
      }

      else if (v53)
      {
        if (v7 == v7 >> 32)
        {
          goto LABEL_32;
        }
      }

      else if ((v52 & 0xFF000000000000) == 0)
      {
        goto LABEL_32;
      }

      v54 = sub_20E008B64();
      [v30 appendData_];

      if (v26[1] >> 60 == 15)
      {
        goto LABEL_65;
      }

      v55 = *v26;
      v47 = sub_20E008B64();
      v33 = [v30 rangeOfData:v47 options:0 range:{0, objc_msgSend(v30, sel_length)}];
      v4 = v56;
      sub_20DF67FFC(v7, v52);
    }

    v57 = [v30 subdataWithRange_];
    v58 = sub_20E008B84();
    v7 = v59;

    v128(v130, (v25 + v122), v124);
    v60 = sub_20E0091F4();
    v62 = v61;
    sub_20DF67FFC(v58, v7);
    if (__OFADD__(v33, v4))
    {
      __break(1u);
      goto LABEL_63;
    }

    [v30 replaceBytesInRange:0 withBytes:v33 + v4 length:{0, 0}];
LABEL_34:
    objc_autoreleasePoolPop(v34);
    if (!v62)
    {
      goto LABEL_55;
    }

    v65 = sub_20DFFD394();
    if (v66)
    {
      v134 = v113;
      v135 = v112;
      v69 = v65;
      v70 = v66;

      MEMORY[0x20F32A4B0](v120, v121);
      MEMORY[0x20F32A4B0](47, 0xE100000000000000);
      MEMORY[0x20F32A4B0](v69, v70);
      MEMORY[0x20F32A4B0](0x6E6F736A2ELL, 0xE500000000000000);

      v72 = v134;
      v7 = v135;
      v33 = MEMORY[0x20F32ADB0](v71);
      v134 = v60;
      v135 = v62;
      v132 = v72;
      v133 = v7;
      v30 = v119;
      sub_20E009214();
      sub_20DF751E4();
      v73 = v114;
      sub_20E009624();
      v114 = v73;
      if (v73)
      {
        v117(v30, v124);

        objc_autoreleasePoolPop(v33);
        v102 = v114;
        v103 = v114;
        v104 = sub_20E009074();
        v105 = sub_20E009544();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          *v106 = 138412290;
          v108 = v102;
          v109 = _swift_stdlib_bridgeErrorToNSError();
          *(v106 + 4) = v109;
          *v107 = v109;
          _os_log_impl(&dword_20DF62000, v104, v105, "Error while trying to geohash String to file %@", v106, 0xCu);
          sub_20DF66E28(v107, &qword_27C8521E0, &unk_20E011080);
          MEMORY[0x20F32B3A0](v107, -1, -1);
          MEMORY[0x20F32B3A0](v106, -1, -1);
        }

        else
        {
        }

        v89 = v125;
        v110 = v126;
        [v125 closeFile];

        *(v25 + v110) = 0;
        goto LABEL_52;
      }

      v117(v30, v124);

      objc_autoreleasePoolPop(v33);

      v74 = sub_20E009074();
      v75 = sub_20E009534();

      if (os_log_type_enabled(v74, v75))
      {
        v33 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v134 = v30;
        *v33 = v111;
        *(v33 + 1) = sub_20DF74468(v72, v7, &v134);
        _os_log_impl(&dword_20DF62000, v74, v75, "Successfully wrote to %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x20F32B3A0](v30, -1, -1);
        MEMORY[0x20F32B3A0](v33, -1, -1);
      }

      v42 = v126;
      v76 = sub_20E0091C4();

      v115 = [v116 fileExistsAtPath_];

      v34 = MEMORY[0x20F32ADB0]();
      if (!*(v25 + v42))
      {
        goto LABEL_44;
      }
    }

    else
    {

      v67 = sub_20E009074();
      v68 = sub_20E009544();
      if (os_log_type_enabled(v67, v68))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_20DF62000, v67, v68, "Unable to find file name for the geo hash string", v33, 2u);
        MEMORY[0x20F32B3A0](v33, -1, -1);
      }

      v34 = MEMORY[0x20F32ADB0]();
      v42 = v126;
      if (!*(v25 + v126))
      {
        goto LABEL_44;
      }
    }
  }

LABEL_54:
  objc_autoreleasePoolPop(v34);
LABEL_55:
  v95 = sub_20E009074();
  v96 = sub_20E009554();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_20DF62000, v95, v96, "Wrote all geohash tile to disk.", v97, 2u);
    MEMORY[0x20F32B3A0](v97, -1, -1);
  }

  v98 = v125;
  [v125 closeFile];

  *(v25 + v126) = 0;
  swift_setDeallocating();
  v99 = *sub_20DF8FE98();
  v100 = *(v99 + 48);
  v101 = *(v99 + 52);
  swift_deallocClassInstance();
}

uint64_t sub_20DFB1E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20E008CD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811230E0 != -1)
  {
    swift_once();
  }

  v11 = sub_20E009094();
  __swift_project_value_buffer(v11, qword_281124A00);
  v12 = sub_20E009074();
  v13 = sub_20E009524();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_20DF62000, v12, v13, "Trying to save metadata about downloaded geohash tile.", v14, 2u);
    MEMORY[0x20F32B3A0](v14, -1, -1);
  }

  result = sub_20DFAE84C();
  if (v16)
  {
    v17 = result;
    v18 = v16;
    v28 = a1;
    sub_20DFAEBC4();
    sub_20E008C54();
    v31 = a2;
    v32 = a3;
    v33 = 0u;
    v34 = 0u;

    v19 = sub_20DF9C834();
    v30 = MEMORY[0x277D837D0];
    v29[0] = v17;
    v29[1] = v18;
    sub_20DF9C678(v19, v20, v29);

    sub_20DF66E28(v29, &qword_27C8521F0, &unk_20E00EC00);
    v21 = sub_20DF9C98C();
    v23 = v22;

    v30 = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(v7 + 16))(boxed_opaque_existential_0, v10, v6);
    sub_20DF9C678(v21, v23, v29);

    sub_20DF66E28(v29, &qword_27C8521F0, &unk_20E00EC00);
    v25 = sub_20E009074();
    v26 = sub_20E009554();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20DF62000, v25, v26, "Saved metadata about downloaded geohash tile to defaults", v27, 2u);
      MEMORY[0x20F32B3A0](v27, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_20DFB23F0()
{
  v0 = sub_20E009144();
  v30 = *(v0 - 8);
  v1 = *(v30 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20E0090F4();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20E009234();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20DFE7E38();
  v13 = 0xEA00000000006C61;
  v14 = 0x6E7265746E496171;
  v15 = 1953654115;
  if (v12 != 2)
  {
    v15 = 1685025392;
  }

  if (v12)
  {
    v14 = 7759204;
    v13 = 0xE300000000000000;
  }

  if (v12 <= 1)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  if (v12 <= 1)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_20E009714();
  MEMORY[0x20F32A4B0](0xD00000000000003BLL, 0x800000020E016850);
  MEMORY[0x20F32A4B0](v16, v17);

  v18 = v31;
  v19 = v32;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_20E0094D4();
  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  sub_20E0094D4();
  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  MEMORY[0x20F32A4B0](v18, v19);

  sub_20E009214();
  v20 = sub_20E0091E4();
  v22 = v21;

  (*(v8 + 8))(v11, v7);
  result = 0;
  if (v22 >> 60 != 15)
  {
    sub_20DFB2FBC(&qword_27C852DB8, MEMORY[0x277CC5540]);
    sub_20E0090E4();
    sub_20DF67FA8(v20, v22);
    sub_20DFF1E24(v20, v22);
    sub_20DF64DE8(v20, v22);
    v24 = v27;
    sub_20E0090D4();
    (*(v30 + 8))(v3, v0);
    v25 = sub_20DFEED38();
    sub_20DF64DE8(v20, v22);
    (*(v28 + 8))(v24, v29);
    return v25;
  }

  return result;
}

uint64_t sub_20DFB2810()
{
  sub_20DFB23F0();
  if (!v0)
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v14 = sub_20E009094();
    __swift_project_value_buffer(v14, qword_281124A00);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_18;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Unable to generate key for looking up utility info.";
    goto LABEL_17;
  }

  v1 = sub_20E0091C4();

  v2 = sub_20E0091C4();
  v3 = CFPreferencesCopyAppValue(v1, v2);

  if (!v3 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_281124A00);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_18;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Unable to lookup computed utility from disk.";
LABEL_17:
    _os_log_impl(&dword_20DF62000, v10, v11, v13, v12, 2u);
    MEMORY[0x20F32B3A0](v12, -1, -1);
LABEL_18:

    return 0;
  }

  if (qword_2811230E0 != -1)
  {
    swift_once();
  }

  v4 = sub_20E009094();
  __swift_project_value_buffer(v4, qword_281124A00);
  v5 = sub_20E009074();
  v6 = sub_20E009554();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20DF62000, v5, v6, "Successfully retrieved computed utility from disk.", v7, 2u);
    MEMORY[0x20F32B3A0](v7, -1, -1);
  }

  return v15;
}

void sub_20DFB2AD0(uint64_t a1)
{
  if (!a1)
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v6 = sub_20E009094();
    __swift_project_value_buffer(v6, qword_281124A00);
    oslog = sub_20E009074();
    v7 = sub_20E009544();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "No utility Territory information to save.";
    goto LABEL_12;
  }

  v2 = sub_20DFB23F0();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    v16[0] = a1;

    sub_20DF9C678(v4, v5, v16);

    sub_20DF66E28(v16, &qword_27C8521F0, &unk_20E00EC00);
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v11 = sub_20E009094();
    __swift_project_value_buffer(v11, qword_281124A00);
    v12 = sub_20E009074();
    v13 = sub_20E009554();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20DF62000, v12, v13, "Saved computed utility for coordinate value.", v14, 2u);
      MEMORY[0x20F32B3A0](v14, -1, -1);
    }

    return;
  }

  if (qword_2811230E0 != -1)
  {
    swift_once();
  }

  v10 = sub_20E009094();
  __swift_project_value_buffer(v10, qword_281124A00);
  oslog = sub_20E009074();
  v7 = sub_20E009544();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Unable to generate key for saving utility info.";
LABEL_12:
    _os_log_impl(&dword_20DF62000, oslog, v7, v9, v8, 2u);
    MEMORY[0x20F32B3A0](v8, -1, -1);
  }

LABEL_13:
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_20DFB2F60(uint64_t a1)
{
  v2 = type metadata accessor for NetworkError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DFB2FBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DFB3004(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E18, &qword_20E00FA48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFB5390();
  sub_20E009A84();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852DD8, &qword_20E00FA30);
  sub_20DFB5850(&qword_27C852E20, sub_20DFB58C8);
  sub_20E009944();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_20DFB31B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x416465686374616DLL && a2 == 0xEE00737365726464)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E009984();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20DFB3244(uint64_t a1)
{
  v2 = sub_20DFB5390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFB3280(uint64_t a1)
{
  v2 = sub_20DFB5390();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_20DFB32BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_20DFB51DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_20DFB3304(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E08, &qword_20E00FA40);
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFB56EC();
  sub_20E009A84();
  v10 = v3[4];
  v11 = v3[2];
  v33 = v3[3];
  v34 = v10;
  v12 = v3[4];
  v13 = v3[6];
  v35 = v3[5];
  v36 = v13;
  v14 = *v3;
  v15 = v3[2];
  v31 = v3[1];
  v32 = v15;
  v16 = *v3;
  v27 = v12;
  v28 = v35;
  v29 = v3[6];
  v30 = v16;
  v23 = v14;
  v24 = v31;
  v25 = v11;
  v26 = v33;
  v22 = 0;
  sub_20DFB57C4(&v30, v21);
  sub_20DFB57FC();
  sub_20E009944();
  v21[4] = v27;
  v21[5] = v28;
  v21[6] = v29;
  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v21[3] = v26;
  sub_20DFB5794(v21);
  if (!v2)
  {
    v17 = *(v3 + 14);
    v18 = *(v3 + 15);
    v20[15] = 1;
    sub_20E009914();
  }

  return (*(v37 + 8))(v8, v5);
}

uint64_t sub_20DFB3528(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E70, &qword_20E00FD30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFB6194();
  sub_20E009A84();
  v11 = *v3;
  v12 = v3[1];
  v26[15] = 0;
  sub_20E009914();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v26[14] = 1;
  sub_20E0098D4();
  v15 = v3[4];
  v16 = v3[5];
  v26[13] = 2;
  sub_20E0098D4();
  v17 = v3[6];
  v18 = v3[7];
  v26[12] = 3;
  sub_20E009914();
  v19 = v3[8];
  v20 = v3[9];
  v26[11] = 4;
  sub_20E009914();
  v21 = v3[10];
  v22 = v3[11];
  v26[10] = 5;
  sub_20E009914();
  v24 = v3[12];
  v25 = v3[13];
  v26[9] = 6;
  sub_20E009914();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20DFB3748()
{
  if (*v0)
  {
    result = 0x686374616DLL;
  }

  else
  {
    result = 0x73736572646461;
  }

  *v0;
  return result;
}

uint64_t sub_20DFB3780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v6 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x686374616DLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20DFB3858(uint64_t a1)
{
  v2 = sub_20DFB56EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFB3894(uint64_t a1)
{
  v2 = sub_20DFB56EC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20DFB38D0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_20DFB5438(a1, v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_20DFB393C(uint64_t a1)
{
  v2 = sub_20DFB6194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFB3978(uint64_t a1)
{
  v2 = sub_20DFB6194();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_20DFB39B4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20DFB5C24(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_20DFB3A20(uint64_t a1, uint64_t a2)
{
  v2[39] = a1;
  v2[40] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v5 = sub_20E008714();
  v2[42] = v5;
  v6 = *(v5 - 8);
  v2[43] = v6;
  v7 = *(v6 + 64) + 15;
  v2[44] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[45] = v8;
  *v8 = v2;
  v8[1] = sub_20DFB3B4C;

  return sub_20DF9D6CC(a2);
}

uint64_t sub_20DFB3B4C()
{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DFB3C48, 0, 0);
}

uint64_t sub_20DFB3C48()
{
  KeyPath = swift_getKeyPath();
  v0[46] = KeyPath;
  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_20DFB3CFC;
  v3 = v0[41];
  v4 = v0[39];

  return sub_20DFB97E0(v3, v4, KeyPath, 0);
}

uint64_t sub_20DFB3CFC()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DFB3E14, 0, 0);
}

uint64_t sub_20DFB3E14()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626B0);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable generate request URL for Address Verification Request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v9 = v0[44];
    v10 = v0[41];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v2 + 32))(v0[44], v3, v1);
    sub_20DFDF8DC(0xD000000000000024, 0x800000020E016900, 0xD00000000000001ALL, 0x800000020E016930);
    v13 = *(MEMORY[0x277CC9D18] + 4);
    v14 = swift_task_alloc();
    v0[48] = v14;
    *v14 = v0;
    v14[1] = sub_20DFB40A0;
    v15 = v0[44];
    v16 = v0[40];

    return MEMORY[0x28211ECF8](v15, 0);
  }
}

uint64_t sub_20DFB40A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 384);
  v9 = *v4;
  v5[49] = a1;
  v5[50] = a2;
  v5[51] = a3;
  v5[52] = v3;

  if (v3)
  {
    v7 = sub_20DFB4FAC;
  }

  else
  {
    v7 = sub_20DFB41B8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20DFB41B8()
{
  v1 = v0;
  v2 = *(v0 + 408);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v12 = sub_20E009094();
    __swift_project_value_buffer(v12, qword_27C8626B0);
    v13 = sub_20E009074();
    v14 = sub_20E009544();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20DF62000, v13, v14, "Unable to process Address Verification Response.", v15, 2u);
      MEMORY[0x20F32B3A0](v15, -1, -1);
    }

    v16 = *(v0 + 400);
    v17 = *(v0 + 408);
    super_class = v1[24].super_class;
    v20 = v1[21].super_class;
    receiver = v1[22].receiver;
    v21 = v1[21].receiver;

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v22 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(super_class, v16);
    goto LABEL_33;
  }

  v4 = v3;
  v5 = *(v0 + 352);
  v6 = *(v0 + 408);
  sub_20DFDFFF8(0xD00000000000001FLL, 0x800000020E016950, [v4 statusCode], &unk_28252D390);
  v7 = [v4 statusCode];
  if (v7 > 400)
  {
    switch(v7)
    {
      case 401:
        if (qword_27C852070 != -1)
        {
          swift_once();
        }

        v26 = sub_20E009094();
        __swift_project_value_buffer(v26, qword_27C8626B0);
        v9 = sub_20E009074();
        v27 = sub_20E009544();
        if (os_log_type_enabled(v9, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_20DF62000, v9, v27, "Request Unauthorized.", v28, 2u);
          MEMORY[0x20F32B3A0](v28, -1, -1);
        }

        goto LABEL_32;
      case 404:
        if (qword_27C852070 != -1)
        {
          swift_once();
        }

        v29 = sub_20E009094();
        __swift_project_value_buffer(v29, qword_27C8626B0);
        v9 = sub_20E009074();
        v30 = sub_20E009544();
        if (os_log_type_enabled(v9, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_20DF62000, v9, v30, "No Matching Address Found.", v31, 2u);
          MEMORY[0x20F32B3A0](v31, -1, -1);
        }

        goto LABEL_32;
      case 429:
        if (qword_27C852070 != -1)
        {
          swift_once();
        }

        v8 = sub_20E009094();
        __swift_project_value_buffer(v8, qword_27C8626B0);
        v9 = sub_20E009074();
        v10 = sub_20E009544();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_20DF62000, v9, v10, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v11, 2u);
          MEMORY[0x20F32B3A0](v11, -1, -1);
        }

LABEL_32:
        v32 = *(v0 + 400);
        v17 = *(v0 + 408);
        v33 = v1[24].super_class;
        v20 = v1[21].super_class;
        receiver = v1[22].receiver;
        v21 = v1[21].receiver;

        type metadata accessor for NetworkError();
        sub_20DF960FC();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v33, v32);

LABEL_33:
        (*(v20 + 1))(receiver, v21);
LABEL_34:
        v34 = v1[22].receiver;
        v35 = v1[20].super_class;

        v36 = v1->super_class;

        return v36();
    }

LABEL_45:
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v60 = *(v0 + 408);
    v61 = sub_20E009094();
    __swift_project_value_buffer(v61, qword_27C8626B0);
    v62 = v60;
    v63 = sub_20E009074();
    v64 = sub_20E009544();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = v1[25].super_class;
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = [v4 statusCode];

      _os_log_impl(&dword_20DF62000, v63, v64, "Request failed : Status Code %ld", v66, 0xCu);
      MEMORY[0x20F32B3A0](v66, -1, -1);
      v67 = v1[25].super_class;
    }

    else
    {

      v67 = v1[25].super_class;
      v63 = v67;
    }

    v69 = v1[24].super_class;
    v68 = v1[25].receiver;
    v70 = v1[21].super_class;
    v131 = v1[22].receiver;
    v129 = v1[21].receiver;

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v71 = [v4 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v69, v68);

    (*(v70 + 1))(v131, v129);
    goto LABEL_34;
  }

  if (v7 != 200)
  {
    if (v7 == 400)
    {
      if (qword_27C852070 != -1)
      {
        swift_once();
      }

      v23 = sub_20E009094();
      __swift_project_value_buffer(v23, qword_27C8626B0);
      v9 = sub_20E009074();
      v24 = sub_20E009544();
      if (os_log_type_enabled(v9, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_20DF62000, v9, v24, "BAD REQUEST | Check request", v25, 2u);
        MEMORY[0x20F32B3A0](v25, -1, -1);
      }

      goto LABEL_32;
    }

    goto LABEL_45;
  }

  if (qword_27C852070 != -1)
  {
    swift_once();
  }

  v38 = sub_20E009094();
  __swift_project_value_buffer(v38, qword_27C8626B0);
  v39 = sub_20E009074();
  v40 = sub_20E009554();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_20DF62000, v39, v40, "Address Verification Response received", v41, 2u);
    MEMORY[0x20F32B3A0](v41, -1, -1);
  }

  v42 = *(v0 + 416);
  v44 = *(v0 + 392);
  v43 = *(v0 + 400);

  v45 = sub_20E008744();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  sub_20E008734();
  sub_20DFB5034();
  sub_20E008724();
  v48 = v42;

  if (v42)
  {
    v49 = sub_20E009074();
    v50 = sub_20E009544();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_20DF62000, v49, v50, "Error while decoding response from server", v51, 2u);
      MEMORY[0x20F32B3A0](v51, -1, -1);
    }

    v52 = *(v0 + 400);
    v53 = *(v0 + 408);
    v54 = v1[24].super_class;
    v55 = v1;
    p_super_class = &v1[21].super_class;
    v57 = v1[21].super_class;
    v56 = p_super_class[1];
    v59 = v55[21].receiver;

    sub_20DFFE0B0(v48);
    swift_willThrow();
    sub_20DF67FFC(v54, v52);

    (*(v57 + 1))(v56, v59);
    v1 = v55;
    goto LABEL_34;
  }

  v72 = *(v0 + 304);
  v73 = *(v72 + 16);
  if (v73)
  {
    v133 = MEMORY[0x277D84F90];
    sub_20E0097B4();
    v118 = type metadata accessor for UtilityServiceAddress();
    v132 = v73 - 1;
    v74 = 32;
    v119 = v72;
    while (1)
    {
      v120 = v74;
      v75 = (v72 + v74);
      v76 = v75[4];
      v77 = v75[5];
      v78 = v75[6];
      v1[8] = v75[7];
      v79 = *v75;
      v80 = v75[1];
      v81 = v75[3];
      v1[3] = v75[2];
      v1[4] = v81;
      v1[1] = v79;
      v1[2] = v80;
      v1[6] = v77;
      v1[7] = v78;
      v1[5] = v76;
      v128 = v1[8].receiver;
      v130 = v1[8].super_class;
      v82 = v1[1].super_class;
      v83 = v1[2].super_class;
      v121 = v1[1].receiver;
      v122 = v1[2].receiver;
      v84 = v1[3].super_class;
      v85 = v1[4].super_class;
      v123 = v1[3].receiver;
      v124 = v1[4].receiver;
      v86 = v1[5].super_class;
      v87 = v1[6].super_class;
      v125 = v1[5].receiver;
      v126 = v1[6].receiver;
      v88 = v1[7].super_class;
      v127 = v1[7].receiver;
      v89 = v1;
      v90 = objc_allocWithZone(v118);
      v91 = &v90[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine1];
      *v91 = v121;
      *(v91 + 1) = v82;
      v92 = &v90[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine2];
      *v92 = v122;
      *(v92 + 1) = v83;
      v93 = &v90[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine3];
      *v93 = v123;
      *(v93 + 1) = v84;
      v94 = &v90[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_city];
      *v94 = v124;
      *(v94 + 1) = v85;
      v95 = &v90[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_state];
      *v95 = v125;
      *(v95 + 1) = v86;
      v96 = &v90[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_postalCode];
      *v96 = v126;
      *(v96 + 1) = v87;
      v97 = &v90[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_country];
      *v97 = v127;
      *(v97 + 1) = v88;
      sub_20DFB5088(&v89[1], &v89[9]);
      v89[17].receiver = v90;
      v89[17].super_class = v118;

      v98 = objc_msgSendSuper2(v89 + 17, sel_init);
      if (v128 != 0x5F54434546524550)
      {
        goto LABEL_56;
      }

      if (v130 == 0xED0000484354414DLL)
      {
        v99 = 2;
        v1 = v89;
        v72 = v119;
      }

      else
      {
LABEL_56:
        v1 = v89;
        v72 = v119;
        if (sub_20E009984())
        {
          v99 = 2;
        }

        else
        {
          v99 = v128 == 0x414D5F45534F4C43 && v130 == 0xEB00000000484354 || sub_20E009984() & 1;
        }
      }

      v100 = type metadata accessor for MatchedServiceAddress();
      v101 = objc_allocWithZone(v100);
      *&v101[OBJC_IVAR____TtC19HomeUtilityServices21MatchedServiceAddress_address] = v98;
      *&v101[OBJC_IVAR____TtC19HomeUtilityServices21MatchedServiceAddress_matchType] = v99;
      v1[18].receiver = v101;
      v1[18].super_class = v100;
      v102 = v98;
      objc_msgSendSuper2(v1 + 18, sel_init);
      sub_20DFB50C0(&v1[1]);

      sub_20E009794();
      v103 = *(v133 + 16);
      sub_20E0097C4();
      sub_20E0097D4();
      sub_20E0097A4();
      if (!v132)
      {
        break;
      }

      --v132;
      v74 = v120 + 128;
    }

    v104 = v1[25].receiver;
    v105 = v1[25].super_class;
    v106 = v1[24].super_class;
    (*(v1[21].super_class + 1))(v1[22].receiver, v1[21].receiver);
    sub_20DF67FFC(v106, v104);

    v107 = v133;
  }

  else
  {
    v109 = *(v0 + 400);
    v108 = *(v0 + 408);
    v110 = *(v0 + 392);
    v112 = *(v0 + 344);
    v111 = *(v0 + 352);
    v113 = *(v0 + 336);
    v114 = *(v0 + 304);

    sub_20DF67FFC(v110, v109);

    (*(v112 + 8))(v111, v113);
    v107 = MEMORY[0x277D84F90];
  }

  v115 = v1[22].receiver;
  v116 = v1[20].super_class;

  v117 = v1->super_class;

  return v117(v107);
}

uint64_t sub_20DFB4FAC()
{
  (*(v0[43] + 8))(v0[44], v0[42]);
  v1 = v0[52];
  v2 = v0[44];
  v3 = v0[41];

  v4 = v0[1];

  return v4();
}

unint64_t sub_20DFB5034()
{
  result = qword_27C852DC0;
  if (!qword_27C852DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852DC0);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_20DFB5114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20DFB515C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_20DFB51DC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852DC8, &qword_20E00FA28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFB5390();
  sub_20E009A74();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852DD8, &qword_20E00FA30);
    sub_20DFB5850(&qword_27C852DE0, sub_20DFB53E4);
    sub_20E0098C4();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

unint64_t sub_20DFB5390()
{
  result = qword_27C852DD0;
  if (!qword_27C852DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852DD0);
  }

  return result;
}

unint64_t sub_20DFB53E4()
{
  result = qword_27C852DE8;
  if (!qword_27C852DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852DE8);
  }

  return result;
}

uint64_t sub_20DFB5438@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852DF0, &qword_20E00FA38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFB56EC();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  v11 = v21;
  v48 = 0;
  sub_20DFB5740();
  sub_20E0098C4();
  v44 = v37;
  v45 = v38;
  v46 = v39;
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v43 = v36;
  v47 = 1;
  v12 = sub_20E009894();
  v14 = v13;
  (*(v10 + 8))(v8, v4);
  v26 = v44;
  v27 = v45;
  v28 = v46;
  v22 = v40;
  v23 = v41;
  v24 = v42;
  v25 = v43;
  *&v29 = v12;
  *(&v29 + 1) = v14;
  sub_20DFB5088(&v22, v30);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v30[4] = v44;
  v30[5] = v45;
  v30[6] = v46;
  v30[0] = v40;
  v30[1] = v41;
  v30[2] = v42;
  v30[3] = v43;
  v31 = v12;
  v32 = v14;
  result = sub_20DFB50C0(v30);
  v16 = v27;
  v11[4] = v26;
  v11[5] = v16;
  v17 = v29;
  v11[6] = v28;
  v11[7] = v17;
  v18 = v23;
  *v11 = v22;
  v11[1] = v18;
  v19 = v25;
  v11[2] = v24;
  v11[3] = v19;
  return result;
}

unint64_t sub_20DFB56EC()
{
  result = qword_27C852DF8;
  if (!qword_27C852DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852DF8);
  }

  return result;
}

unint64_t sub_20DFB5740()
{
  result = qword_27C852E00;
  if (!qword_27C852E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E00);
  }

  return result;
}

unint64_t sub_20DFB57FC()
{
  result = qword_27C852E10;
  if (!qword_27C852E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E10);
  }

  return result;
}

uint64_t sub_20DFB5850(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852DD8, &qword_20E00FA30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20DFB58C8()
{
  result = qword_27C852E28;
  if (!qword_27C852E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E28);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_20DFB5960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20DFB59A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFB5A18()
{
  result = qword_27C852E30;
  if (!qword_27C852E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E30);
  }

  return result;
}

unint64_t sub_20DFB5A70()
{
  result = qword_27C852E38;
  if (!qword_27C852E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E38);
  }

  return result;
}

unint64_t sub_20DFB5AC8()
{
  result = qword_27C852E40;
  if (!qword_27C852E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E40);
  }

  return result;
}

unint64_t sub_20DFB5B20()
{
  result = qword_27C852E48;
  if (!qword_27C852E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E48);
  }

  return result;
}

unint64_t sub_20DFB5B78()
{
  result = qword_27C852E50;
  if (!qword_27C852E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E50);
  }

  return result;
}

unint64_t sub_20DFB5BD0()
{
  result = qword_27C852E58;
  if (!qword_27C852E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E58);
  }

  return result;
}

uint64_t sub_20DFB5C24@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E60, &qword_20E00FD28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFB6194();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v48[0]) = 0;
  v11 = sub_20E009894();
  v40 = v12;
  LOBYTE(v48[0]) = 1;
  *&v39 = sub_20E009854();
  *(&v39 + 1) = v13;
  LOBYTE(v48[0]) = 2;
  v37 = sub_20E009854();
  v15 = v14;
  LOBYTE(v48[0]) = 3;
  v16 = sub_20E009894();
  v38 = v17;
  v33 = v16;
  LOBYTE(v48[0]) = 4;
  v36 = 0;
  v32 = sub_20E009894();
  v35 = v18;
  LOBYTE(v48[0]) = 5;
  v31 = sub_20E009894();
  v34 = v19;
  v60 = 6;
  v20 = sub_20E009894();
  v21 = *(v6 + 8);
  v22 = v20;
  v36 = v23;
  v21(v9, v5);
  *&v41 = v11;
  v24 = v40;
  *(&v41 + 1) = v40;
  v42 = v39;
  *&v43 = v37;
  *(&v43 + 1) = v15;
  *&v44 = v33;
  v25 = v38;
  *(&v44 + 1) = v38;
  *&v45 = v32;
  *(&v45 + 1) = v35;
  *&v46 = v31;
  *(&v46 + 1) = v34;
  *&v47 = v22;
  v26 = v36;
  *(&v47 + 1) = v36;
  sub_20DFB57C4(&v41, v48);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v48[0] = v11;
  v48[1] = v24;
  v49 = v39;
  v50 = v37;
  v51 = v15;
  v52 = v33;
  v53 = v25;
  v54 = v32;
  v55 = v35;
  v56 = v31;
  v57 = v34;
  v58 = v22;
  v59 = v26;
  result = sub_20DFB5794(v48);
  v28 = v46;
  a2[4] = v45;
  a2[5] = v28;
  a2[6] = v47;
  v29 = v42;
  *a2 = v41;
  a2[1] = v29;
  v30 = v44;
  a2[2] = v43;
  a2[3] = v30;
  return result;
}

unint64_t sub_20DFB6194()
{
  result = qword_27C852E68;
  if (!qword_27C852E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E68);
  }

  return result;
}

unint64_t sub_20DFB61FC()
{
  result = qword_27C852E78;
  if (!qword_27C852E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E78);
  }

  return result;
}

unint64_t sub_20DFB6254()
{
  result = qword_27C852E80;
  if (!qword_27C852E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E80);
  }

  return result;
}

unint64_t sub_20DFB62AC()
{
  result = qword_27C852E88;
  if (!qword_27C852E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E88);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JWToken.init(jwt:)(HomeUtilityServices::JWToken *__return_ptr retstr, Swift::String jwt)
{
  v3 = v2;
  object = jwt._object;
  countAndFlagsBits = jwt._countAndFlagsBits;
  sub_20DF751E4();
  v7 = sub_20E0095D4();
  v8 = v7[2];
  if (v8 != 3)
  {

    sub_20DFB649C();
    swift_allocError();
    *v17 = countAndFlagsBits;
    *(v17 + 8) = object;
    *(v17 + 16) = v8;
    *(v17 + 24) = 2;
    swift_willThrow();
    return;
  }

  v9 = v7[4];
  v10 = v7[5];
  v11 = v7;

  v12 = v9;
  v13 = v3;
  v14 = sub_20DFB67A4(v12, v10);

  if (v13)
  {

    return;
  }

  if (v11[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v15 = v11[6];
    v16 = v11[7];

    v18 = sub_20DFB67A4(v15, v16);

    if (v11[2] >= 3uLL)
    {
      v20 = v11[8];
      v19 = v11[9];

      retstr->header._rawValue = v14;
      retstr->body._rawValue = v18;
      retstr->signature.value._countAndFlagsBits = v20;
      retstr->signature.value._object = v19;
      retstr->string._countAndFlagsBits = countAndFlagsBits;
      retstr->string._object = object;
      return;
    }
  }

  __break(1u);
}

unint64_t sub_20DFB649C()
{
  result = qword_281123208;
  if (!qword_281123208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123208);
  }

  return result;
}

BOOL JWToken.expired.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v3 = v18 - v2;
  v4 = sub_20E008CD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v12 = v0[1];
  v18[2] = *v0;
  v18[3] = v12;
  v18[4] = v0[2];
  sub_20DFB69C0(7370853, 0xE300000000000000, v18);
  Claim.double.getter();
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    sub_20E008C64();
    v14 = 0;
  }

  sub_20DFB7BF8(v18);
  (*(v5 + 56))(v3, v14, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20DF66E28(v3, &qword_27C852A58, &qword_20E00F7A0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    sub_20E008CC4();
    v16 = sub_20E008CA4();
    v17 = *(v5 + 8);
    v17(v9, v4);
    v17(v11, v4);
    return v16 != 1;
  }
}

uint64_t JWToken.signature.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t JWToken.string.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

id sub_20DFB67A4(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = sub_20DFB80A0(a1, a2);
  if (v5 >> 60 != 15)
  {
    v8 = v4;
    v9 = v5;
    v10 = objc_opt_self();
    v11 = sub_20E008B64();
    v18 = 0;
    v12 = [v10 JSONObjectWithData:v11 options:0 error:&v18];

    v13 = v18;
    if (v12)
    {
      sub_20E009654();
      swift_unknownObjectRelease();
      sub_20DF77A64(v19, v20);
      sub_20DF77A64(v20, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
      if (swift_dynamicCast())
      {
        sub_20DF64DE8(v8, v9);
        result = v18;
        goto LABEL_8;
      }
    }

    else
    {
      v14 = v13;
      v15 = sub_20E008A34();

      swift_willThrow();
    }

    sub_20DFB649C();
    swift_allocError();
    *v16 = a1;
    *(v16 + 8) = a2;
    *(v16 + 16) = 0;
    *(v16 + 24) = 1;
    swift_willThrow();

    result = sub_20DF64DE8(v8, v9);
    goto LABEL_8;
  }

  sub_20DFB649C();
  swift_allocError();
  *v6 = a1;
  *(v6 + 8) = a2;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  swift_willThrow();

LABEL_8:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_20DFB69C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 8);
  if (*(v5 + 16) && (v6 = sub_20DFB866C(a1, a2, MEMORY[0x277D83758], sub_20DFB8700), (v7 & 1) != 0))
  {
    sub_20DF6981C(*(v5 + 56) + 32 * v6, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  result = *&v10;
  v9 = v11;
  *a3 = v10;
  a3[1] = v9;
  return result;
}

double JWT.claim(name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = (*(a4 + 16))(a3, a4);
  if (*(v8 + 16) && (v9 = sub_20DFB866C(a1, a2, MEMORY[0x277D83758], sub_20DFB8700), (v10 & 1) != 0))
  {
    sub_20DF6981C(*(v8 + 56) + 32 * v9, &v13);
  }

  else
  {

    v13 = 0u;
    v14 = 0u;
  }

  result = *&v13;
  v12 = v14;
  *a5 = v13;
  a5[1] = v12;
  return result;
}

uint64_t Claim.date.getter@<X0>(uint64_t a1@<X8>)
{
  Claim.double.getter();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    sub_20E008C64();
    v3 = 0;
  }

  v4 = sub_20E008CD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t Claim.string.getter()
{
  sub_20DF697AC(v0, v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_20DF66E28(v3, &qword_27C8521F0, &unk_20E00EC00);
    return 0;
  }
}

uint64_t sub_20DFB6C40(uint64_t a1)
{
  v2 = v1[1];
  v7 = *v1;
  v8 = v2;
  v9 = v1[2];
  sub_20DFB69C0(a1, 0xE300000000000000, &v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_20DF66E28(&v5, &qword_27C8521F0, &unk_20E00EC00);
    return 0;
  }
}

uint64_t JWToken.audience.getter()
{
  v1 = v0[1];
  v4[2] = *v0;
  v4[3] = v1;
  v4[4] = v0[2];
  sub_20DFB69C0(6583649, 0xE300000000000000, v4);
  v2 = Claim.array.getter();
  sub_20DFB7BF8(v4);
  return v2;
}

uint64_t Claim.array.getter()
{
  sub_20DF697AC(v0, v4);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_20DF66E28(v4, &qword_27C8521F0, &unk_20E00EC00);
  }

  sub_20DF697AC(v0, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
      result = swift_allocObject();
      *(result + 16) = xmmword_20E00AB50;
      *(result + 32) = v2;
      *(result + 40) = v3;
      return result;
    }
  }

  else
  {
    sub_20DF66E28(v4, &qword_27C8521F0, &unk_20E00EC00);
  }

  return 0;
}

uint64_t sub_20DFB6E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v9[2] = *v2;
  v9[3] = v4;
  v9[4] = v2[2];
  sub_20DFB69C0(a1, 0xE300000000000000, v9);
  Claim.double.getter();
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    sub_20E008C64();
    v6 = 0;
  }

  sub_20DFB7BF8(v9);
  v7 = sub_20E008CD4();
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

uint64_t sub_20DFB6F48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_20DFB6F78()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_20DFB6FBC()
{
  v1 = v0[1];
  v4[2] = *v0;
  v4[3] = v1;
  v4[4] = v0[2];
  sub_20DFB69C0(6583649, 0xE300000000000000, v4);
  v2 = Claim.array.getter();
  sub_20DFB7BF8(v4);
  return v2;
}

uint64_t sub_20DFB7038@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v9[2] = *v2;
  v9[3] = v4;
  v9[4] = v2[2];
  sub_20DFB69C0(a1, 0xE300000000000000, v9);
  Claim.double.getter();
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    sub_20E008C64();
    v6 = 0;
  }

  sub_20DFB7BF8(v9);
  v7 = sub_20E008CD4();
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

void static JWToken.mockJWToken()()
{
  v65 = sub_20E008CD4();
  v71 = *(v65 - 8);
  v0 = *(v71 + 64);
  v1 = MEMORY[0x28223BE20](v65);
  v67 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v61 - v3;
  v61 = sub_20E008D04();
  v5 = *(v61 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v61);
  v64 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v61 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v61 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E90, &unk_20E00FE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00D7A0;
  *(inited + 32) = 0x6C7974696C697475;
  v66 = inited + 32;
  *(inited + 40) = 0xE900000000000064;
  sub_20E008CF4();
  v68 = v13;
  v15 = sub_20E008CE4();
  v17 = v16;
  v18 = *(v5 + 8);
  v70 = v5 + 8;
  v19 = v13;
  v20 = v61;
  v18(v19, v61);
  v21 = MEMORY[0x277D837D0];
  *(inited + 48) = v15;
  *(inited + 56) = v17;
  *(inited + 72) = v21;
  *(inited + 80) = 7370853;
  *(inited + 88) = 0xE300000000000000;
  sub_20E008C54();
  sub_20E008C74();
  v23 = v22;
  v24 = *(v71 + 8);
  v71 += 8;
  v62 = v24;
  v25 = v65;
  v24(v4, v65);
  v26 = MEMORY[0x277D839F8];
  *(inited + 96) = v23;
  *(inited + 120) = v26;
  *(inited + 128) = 6709870;
  v27 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = 1644170208;
  *(inited + 168) = v27;
  strcpy((inited + 176), "subscriptionld");
  *(inited + 191) = -18;
  sub_20E008CF4();
  v28 = sub_20E008CE4();
  v30 = v29;
  v31 = v11;
  v32 = v20;
  v63 = v18;
  v18(v31, v20);
  *(inited + 192) = v28;
  *(inited + 200) = v30;
  *(inited + 216) = MEMORY[0x277D837D0];
  *(inited + 224) = 6911082;
  *(inited + 232) = 0xE300000000000000;
  v33 = v64;
  sub_20E008CF4();
  v34 = sub_20E008CE4();
  v36 = v35;
  v18(v33, v32);
  *(inited + 240) = v34;
  *(inited + 248) = v36;
  v37 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 272) = 7566185;
  *(inited + 280) = 0xE300000000000000;
  *(inited + 288) = 0xD000000000000018;
  *(inited + 296) = 0x800000020E016970;
  *(inited + 312) = v37;
  *(inited + 320) = 7627113;
  *(inited + 328) = 0xE300000000000000;
  v38 = v67;
  sub_20E008C94();
  sub_20E008C74();
  v40 = v39;
  v62(v38, v25);
  *(inited + 360) = MEMORY[0x277D839F8];
  *(inited + 336) = v40;
  v41 = sub_20DF74F30(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852598, &unk_20E00C120);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_20E00D7B0;
  *(v42 + 32) = 6777953;
  *(v42 + 40) = 0xE300000000000000;
  *(v42 + 48) = 0x3635325345;
  *(v42 + 56) = 0xE500000000000000;
  *(v42 + 64) = 1701869940;
  *(v42 + 72) = 0xE400000000000000;
  *(v42 + 80) = 5527370;
  *(v42 + 88) = 0xE300000000000000;
  *(v42 + 96) = 6580587;
  *(v42 + 104) = 0xE300000000000000;
  v43 = v68;
  sub_20E008CF4();
  v44 = sub_20E008CE4();
  v46 = v45;
  v63(v43, v32);
  *(v42 + 112) = v44;
  *(v42 + 120) = v46;
  v47 = sub_20DF74E1C(v42);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852140, &qword_20E011050);
  swift_arrayDestroy();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E98, &unk_20E00FE60);
  v72[0] = v47;
  v48 = v69;
  v49 = sub_20DFB77A4(v72);
  if (v48)
  {

    __swift_destroy_boxed_opaque_existential_0(v72);
    swift_getErrorValue();
    v54 = sub_20E0099E4();
    v56 = v55;
    sub_20DFB9378();
    swift_allocError();
    *v57 = v54;
    v57[1] = v56;
    swift_willThrow();
  }

  else
  {
    v51 = v50;
    v52 = v49;
    __swift_destroy_boxed_opaque_existential_0(v72);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
    v72[0] = v41;
    v53 = sub_20DFB77A4(v72);
    v59 = v58;
    v60 = v53;
    __swift_destroy_boxed_opaque_existential_0(v72);
    v72[0] = v52;
    v72[1] = v51;
    MEMORY[0x20F32A4B0](46, 0xE100000000000000);
    MEMORY[0x20F32A4B0](v60, v59);

    MEMORY[0x20F32A4B0](46, 0xE100000000000000);
    MEMORY[0x20F32A4B0](0xD00000000000005ELL, 0x800000020E016990);
  }
}

void *sub_20DFB77A4(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = 0;
  v3 = [v2 dataWithJSONObject:sub_20E009974() options:0 error:&v18];
  swift_unknownObjectRelease();
  v4 = v18;
  if (v3)
  {
    v5 = sub_20E008B84();
    v7 = v6;

    v18 = sub_20E008B74();
    v19 = v8;
    sub_20DF751E4();
    v9 = sub_20E0095F4();
    v11 = v10;

    v18 = v9;
    v19 = v11;
    v12 = sub_20E0095F4();
    v14 = v13;

    v18 = v12;
    v19 = v14;
    v15 = sub_20E0095F4();
    sub_20DF67FFC(v5, v7);
  }

  else
  {
    v15 = v4;
    sub_20E008A34();

    swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t Claim.BOOLean.getter()
{
  sub_20DF697AC(v0, v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_20DF66E28(v3, &qword_27C8521F0, &unk_20E00EC00);
    return 2;
  }
}

uint64_t Claim.double.getter()
{
  sub_20DF697AC(v0, v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      v5[0] = 0;
      v1 = sub_20DFB9280(v3, v4);

      if (v1)
      {
        return v5[0];
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    sub_20DF66E28(v5, &qword_27C8521F0, &unk_20E00EC00);
  }

  sub_20DF697AC(v0, v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      return 0;
    }
  }

  else
  {
    sub_20DF66E28(v5, &qword_27C8521F0, &unk_20E00EC00);
  }

  sub_20DF697AC(v0, v5);
  if (!v6)
  {
    sub_20DF66E28(v5, &qword_27C8521F0, &unk_20E00EC00);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t Claim.integer.getter()
{
  sub_20DF697AC(v0, v33);
  if (v34)
  {
    if (swift_dynamicCast())
    {
      result = v32;
      v2 = HIBYTE(v32) & 0xF;
      v3 = v31 & 0xFFFFFFFFFFFFLL;
      if ((v32 & 0x2000000000000000) != 0)
      {
        v4 = HIBYTE(v32) & 0xF;
      }

      else
      {
        v4 = v31 & 0xFFFFFFFFFFFFLL;
      }

      if (v4)
      {
        if ((v32 & 0x1000000000000000) != 0)
        {
          v8 = sub_20DFB8880(v31, v32, 10);
          v29 = v30;
LABEL_81:

          if (v29)
          {
            return 0;
          }

          else
          {
            return v8;
          }
        }

        if ((v32 & 0x2000000000000000) != 0)
        {
          v33[0] = v31;
          v33[1] = v32 & 0xFFFFFFFFFFFFFFLL;
          if (v31 == 43)
          {
            if (v2)
            {
              v5 = (v2 - 1);
              if (v2 != 1)
              {
                v8 = 0;
                v21 = v33 + 1;
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    break;
                  }

                  v23 = 10 * v8;
                  if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                  {
                    break;
                  }

                  v8 = v23 + v22;
                  if (__OFADD__(v23, v22))
                  {
                    break;
                  }

                  ++v21;
                  if (!--v5)
                  {
                    goto LABEL_80;
                  }
                }
              }

              goto LABEL_79;
            }

LABEL_93:
            __break(1u);
            return result;
          }

          if (v31 != 45)
          {
            if (v2)
            {
              v8 = 0;
              v26 = v33;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  break;
                }

                v28 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  break;
                }

                v8 = v28 + v27;
                if (__OFADD__(v28, v27))
                {
                  break;
                }

                ++v26;
                if (!--v2)
                {
LABEL_78:
                  LOBYTE(v5) = 0;
                  goto LABEL_80;
                }
              }
            }

            goto LABEL_79;
          }

          if (v2)
          {
            v5 = (v2 - 1);
            if (v2 != 1)
            {
              v8 = 0;
              v14 = v33 + 1;
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  break;
                }

                v16 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  break;
                }

                v8 = v16 - v15;
                if (__OFSUB__(v16, v15))
                {
                  break;
                }

                ++v14;
                if (!--v5)
                {
                  goto LABEL_80;
                }
              }
            }

            goto LABEL_79;
          }
        }

        else
        {
          if ((v31 & 0x1000000000000000) != 0)
          {
            v5 = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v5 = sub_20E009784();
            result = v32;
          }

          v6 = *v5;
          if (v6 == 43)
          {
            if (v3 >= 1)
            {
              v17 = v3 - 1;
              if (v3 != 1)
              {
                v8 = 0;
                if (v5)
                {
                  v18 = v5 + 1;
                  while (1)
                  {
                    v19 = *v18 - 48;
                    if (v19 > 9)
                    {
                      goto LABEL_79;
                    }

                    v20 = 10 * v8;
                    if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                    {
                      goto LABEL_79;
                    }

                    v8 = v20 + v19;
                    if (__OFADD__(v20, v19))
                    {
                      goto LABEL_79;
                    }

                    ++v18;
                    if (!--v17)
                    {
                      goto LABEL_78;
                    }
                  }
                }

                goto LABEL_80;
              }

              goto LABEL_79;
            }

            goto LABEL_92;
          }

          if (v6 != 45)
          {
            if (v3)
            {
              v8 = 0;
              if (v5)
              {
                while (1)
                {
                  v24 = *v5 - 48;
                  if (v24 > 9)
                  {
                    goto LABEL_79;
                  }

                  v25 = 10 * v8;
                  if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                  {
                    goto LABEL_79;
                  }

                  v8 = v25 + v24;
                  if (__OFADD__(v25, v24))
                  {
                    goto LABEL_79;
                  }

                  ++v5;
                  if (!--v3)
                  {
                    goto LABEL_78;
                  }
                }
              }

              goto LABEL_80;
            }

LABEL_79:
            v8 = 0;
            LOBYTE(v5) = 1;
            goto LABEL_80;
          }

          if (v3 >= 1)
          {
            v7 = v3 - 1;
            if (v3 != 1)
            {
              v8 = 0;
              if (v5)
              {
                v9 = v5 + 1;
                while (1)
                {
                  v10 = *v9 - 48;
                  if (v10 > 9)
                  {
                    goto LABEL_79;
                  }

                  v11 = 10 * v8;
                  if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                  {
                    goto LABEL_79;
                  }

                  v8 = v11 - v10;
                  if (__OFSUB__(v11, v10))
                  {
                    goto LABEL_79;
                  }

                  ++v9;
                  if (!--v7)
                  {
                    goto LABEL_78;
                  }
                }
              }

LABEL_80:
              v29 = v5;
              goto LABEL_81;
            }

            goto LABEL_79;
          }

          __break(1u);
        }

        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      goto LABEL_87;
    }
  }

  else
  {
    sub_20DF66E28(v33, &qword_27C8521F0, &unk_20E00EC00);
  }

  v12 = COERCE_DOUBLE(Claim.double.getter());
  if ((v13 & 1) == 0)
  {
    if ((~*&v12 & 0x7FF0000000000000) != 0)
    {
      if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
          return v12;
        }

        goto LABEL_86;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:

    return 0;
  }

  sub_20DF697AC(v0, v33);
  if (v34)
  {
    if (swift_dynamicCast())
    {
      return 0;
    }
  }

  else
  {
    sub_20DF66E28(v33, &qword_27C8521F0, &unk_20E00EC00);
  }

  sub_20DF697AC(v0, v33);
  if (!v34)
  {
    sub_20DF66E28(v33, &qword_27C8521F0, &unk_20E00EC00);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v31;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20DFB80A0(uint64_t a1, unint64_t a2)
{
  v4 = sub_20E009234();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a2;
  v20 = 45;
  v21 = 0xE100000000000000;
  v18 = 43;
  v19 = 0xE100000000000000;
  sub_20DF751E4();
  v22 = sub_20E0095F4();
  v23 = v9;
  v20 = 95;
  v21 = 0xE100000000000000;
  v18 = 47;
  v19 = 0xE100000000000000;
  v10 = sub_20E0095F4();
  v12 = v11;

  v22 = v10;
  v23 = v12;
  v20 = v10;
  v21 = v12;

  sub_20E009214();
  v13 = sub_20E0095E4();
  (*(v5 + 8))(v8, v4);

  v15 = ceil(vcvtd_n_f64_s64(v13, 2uLL)) * 4.0 - v13;
  if (v15 <= 0.0)
  {
    goto LABEL_6;
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  if (*&v15 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v15 < 9.22337204e18)
  {
    v18 = 61;
    v19 = 0xE100000000000000;
    v16 = sub_20E009634();
    MEMORY[0x20F32A4B0](v16);

LABEL_6:
    v17 = sub_20E008B24();

    return v17;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t DecodeError.localizedDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 24))
  {
    if (*(v0 + 24) != 1)
    {
      v7 = *(v0 + 16);
      sub_20E009714();
      MEMORY[0x20F32A4B0](0xD000000000000014, 0x800000020E016A30);
      MEMORY[0x20F32A4B0](v2, v1);
      MEMORY[0x20F32A4B0](0x2073616820, 0xE500000000000000);
      v8 = sub_20E009964();
      MEMORY[0x20F32A4B0](v8);

      v5 = 0xD000000000000022;
      v6 = 0x800000020E016A50;
      goto LABEL_7;
    }

    sub_20E009714();
    v3 = "hould have 3 parts";
    v4 = 43;
  }

  else
  {
    sub_20E009714();
    v3 = "|JHZICxKjNqCEvQDDLo1nJye4rjJws";
    v4 = 34;
  }

  MEMORY[0x20F32A4B0](v4 | 0xD000000000000014, v3 | 0x8000000000000000);
  v5 = v2;
  v6 = v1;
LABEL_7:
  MEMORY[0x20F32A4B0](v5, v6);
  return 0;
}

uint64_t EncodeError.localizedDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20E009714();
  MEMORY[0x20F32A4B0](0xD000000000000037, 0x800000020E016AC0);
  MEMORY[0x20F32A4B0](v1, v2);
  return 0;
}

void *sub_20DFB855C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A0, &qword_20E013380);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_20DFB85FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_20E009694();

  return sub_20DFB87B8(a1, v5);
}

uint64_t sub_20DFB866C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 40);
  sub_20E009A34();
  a3(v12, a1, a2);
  v9 = sub_20E009A54();

  return a4(a1, a2, v9);
}

unint64_t sub_20DFB8700(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_20E009984())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20DFB87B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_20DFB9784(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F32A870](v9, a1);
      sub_20DFAF37C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unsigned __int8 *sub_20DFB8880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_20E009394();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_20DFB8E0C();
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
      result = sub_20E009784();
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

uint64_t sub_20DFB8E0C()
{
  v0 = sub_20E0093A4();
  v4 = sub_20DFB8E8C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_20DFB8E8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_20E009294();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_20E0095C4();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_20DFB855C(v9, 0);
  v12 = sub_20DFB8FE4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_20E009294();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_20E009784();
LABEL_4:

  return sub_20E009294();
}

unint64_t sub_20DFB8FE4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_20DFB9204(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_20E009344();
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
          result = sub_20E009784();
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

    result = sub_20DFB9204(v12, a6, a7);
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

    result = sub_20E009324();
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

uint64_t sub_20DFB9204(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_20E009354();
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
    v5 = MEMORY[0x20F32A500](15, a1 >> 16);
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

BOOL sub_20DFB9280(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_20E009704();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_20DFB9378()
{
  result = qword_27C852EA0;
  if (!qword_27C852EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852EA0);
  }

  return result;
}

uint64_t sub_20DFB93D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_20DFB941C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20DFB9580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_20DFB95DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_20DFB964C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20DFB9694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

_BYTE *sub_20DFB9704@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_20DFB97E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_20E008714();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v10 = sub_20E008AF4();
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFB9988, 0, 0);
}

uint64_t sub_20DFB9988()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_20DF85FEC(v0[4], v0[5]);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v0[11], &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626B0);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Request URL for Address Verification API not found", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

LABEL_16:
    v33 = v0[14];
    v34 = v0[15];
    v36 = v0[10];
    v35 = v0[11];
    v37 = v0[9];
    v38 = v0[6];
    (*(v0[8] + 56))(v0[2], 1, 1, v0[7]);

    v39 = v0[1];

    return v39();
  }

  v8 = v0[3];
  (*(v0[13] + 32))(v0[15], v0[11], v0[12]);
  v9 = [v8 data];
  if (!v9)
  {
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v26 = sub_20E009094();
    __swift_project_value_buffer(v26, qword_27C8626B0);
    v27 = sub_20E009074();
    v28 = sub_20E009544();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_20DF62000, v27, v28, "Unable to encode service address to data", v29, 2u);
      MEMORY[0x20F32B3A0](v29, -1, -1);
    }

    v30 = v0[15];
    v31 = v0[12];
    v32 = v0[13];

    (*(v32 + 8))(v30, v31);
    goto LABEL_16;
  }

  v10 = v0[14];
  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[13];
  v15 = v0[9];
  v14 = v0[10];
  v16 = v9;
  v17 = sub_20E008B84();
  v19 = v18;

  v0[16] = v17;
  v0[17] = v19;
  (*(v13 + 16))(v10, v11, v12);
  sub_20E0086B4();
  sub_20E008694();
  sub_20DF67FA8(v17, v19);
  sub_20E0086F4();
  sub_20DFDF668(v15);
  v20 = swift_task_alloc();
  v0[18] = v20;
  *v20 = v0;
  v20[1] = sub_20DFB9D94;
  v21 = v0[9];
  v23 = v0[5];
  v22 = v0[6];
  v24 = v0[4];

  return sub_20DF83234(v22, v21, v24);
}

uint64_t sub_20DFB9D94()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 144);
  v5 = *v1;

  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[7];
  if (v0)
  {

    v9 = *(v7 + 8);
    v3[21] = v9;
    v9(v6, v8);
    v10 = sub_20DFBA218;
  }

  else
  {
    v11 = *(v7 + 8);
    v3[19] = v11;
    v3[20] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v6, v8);
    v10 = sub_20DFB9F38;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_20DFB9F38()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v32 = v0[19];
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626B0);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to address verification request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];
    v11 = v0[12];
    v12 = v0[13];
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[8];

    sub_20DF67FFC(v9, v8);
    v32(v13, v14);
    (*(v12 + 8))(v10, v11);
    v16 = 1;
  }

  else
  {
    v18 = v0[19];
    v17 = v0[20];
    v20 = v0[16];
    v19 = v0[17];
    v33 = v0[15];
    v21 = v0[13];
    v31 = v0[12];
    v22 = v0[10];
    (*(v2 + 32))(v0[2], v3, v1);
    sub_20E008704();
    sub_20DF67FFC(v20, v19);
    v18(v22, v1);
    (*(v21 + 8))(v33, v31);
    v16 = 0;
  }

  v23 = v0[14];
  v24 = v0[15];
  v26 = v0[10];
  v25 = v0[11];
  v27 = v0[9];
  v28 = v0[6];
  (*(v0[8] + 56))(v0[2], v16, 1, v0[7]);

  v29 = v0[1];

  return v29();
}

uint64_t sub_20DFBA218()
{
  (*(v0[8] + 56))(v0[6], 1, 1, v0[7]);
  v21 = v0[21];
  sub_20DF66E28(v0[6], &qword_27C8520C8, &qword_20E010830);
  if (qword_27C852070 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C8626B0);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to address verification request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];

  sub_20DF67FFC(v6, v5);
  v21(v10, v11);
  (*(v9 + 8))(v7, v8);
  v13 = v0[14];
  v14 = v0[15];
  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[9];
  v18 = v0[6];
  (*(v0[8] + 56))(v0[2], 1, 1, v0[7]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_20DFBA434()
{
  v28[43] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E90, &unk_20E00FE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00AB50;
  *(inited + 32) = 0x73736572646461;
  *(inited + 40) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  v2 = swift_initStackObject();
  v3 = v2;
  *(v2 + 16) = xmmword_20E00D7A0;
  strcpy((v2 + 32), "addressLine1");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  v4 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine1 + 8);
  *(v2 + 48) = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine1);
  *(v2 + 56) = v4;
  strcpy((v2 + 64), "addressLine2");
  *(v2 + 77) = 0;
  *(v2 + 78) = -5120;
  if (*(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine2 + 8))
  {
    v5 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine2);
    v6 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine2 + 8);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v2 + 80) = v5;
  *(v2 + 88) = v6;
  strcpy((v2 + 96), "addressLine3");
  *(v2 + 109) = 0;
  *(v2 + 110) = -5120;
  if (*(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine3 + 8))
  {
    v7 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine3);
    v8 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine3 + 8);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v2 + 112) = v7;
  *(v2 + 120) = v8;
  *(v2 + 128) = 2037672291;
  *(v2 + 136) = 0xE400000000000000;
  v9 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_city + 8);
  *(v2 + 144) = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_city);
  *(v2 + 152) = v9;
  *(v2 + 160) = 0x6574617473;
  *(v2 + 168) = 0xE500000000000000;
  v10 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_state + 8);
  *(v2 + 176) = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_state);
  *(v2 + 184) = v10;
  *(v2 + 192) = 0x6F436C6174736F70;
  *(v2 + 200) = 0xEA00000000006564;
  v11 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_postalCode + 8);
  *(v2 + 208) = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_postalCode);
  *(v2 + 216) = v11;
  *(v2 + 224) = 0x7972746E756F63;
  *(v2 + 232) = 0xE700000000000000;
  v12 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_country);
  v13 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_country + 8);
  *(v2 + 240) = v12;
  *(v2 + 248) = v13;

  v14 = sub_20DF74E1C(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852140, &qword_20E011050);
  swift_arrayDestroy();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E98, &unk_20E00FE60);
  *(inited + 48) = v14;
  sub_20DF74F30(inited);
  swift_setDeallocating();
  sub_20DF66E28(inited + 32, &qword_27C852598, &unk_20E00C120);
  v15 = objc_opt_self();
  v16 = sub_20E009154();

  v28[0] = 0;
  v17 = [v15 dataWithJSONObject:v16 options:0 error:v28];

  v18 = v28[0];
  if (v17)
  {
    v19 = sub_20E008B84();
  }

  else
  {
    v20 = v18;
    v21 = sub_20E008A34();

    swift_willThrow();
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v22 = sub_20E009094();
    __swift_project_value_buffer(v22, qword_27C8626B0);
    v23 = sub_20E009074();
    v24 = sub_20E009544();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20DF62000, v23, v24, "Unable to encode service Address to Request Payload!!!", v25, 2u);
      MEMORY[0x20F32B3A0](v25, -1, -1);
    }

    v19 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t sub_20DFBA948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x277D85DE8];
  v8[18] = a8;
  v8[19] = v21;
  v8[16] = a6;
  v8[17] = a7;
  v8[14] = a4;
  v8[15] = a5;
  v8[12] = a2;
  v8[13] = a3;
  v8[11] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v10 = sub_20E008714();
  v8[21] = v10;
  v11 = *(v10 - 8);
  v8[22] = v11;
  v12 = *(v11 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v8[27] = swift_task_alloc();
  v14 = sub_20E008AF4();
  v8[28] = v14;
  v15 = *(v14 - 8);
  v8[29] = v15;
  v16 = *(v15 + 64) + 15;
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v17 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DFBAB48, 0, 0);
}

uint64_t sub_20DFBAB48()
{
  v70 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_20DF85FEC(*(v0 + 144), *(v0 + 152));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(*(v0 + 216), &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C8520A8 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862758);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Request URL for auth token refresh API not found", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = *(v0 + 88);

    (*(v9 + 56))(v10, 1, 1, v8);
LABEL_16:
    v53 = *(v0 + 240);
    v52 = *(v0 + 248);
    v55 = *(v0 + 208);
    v54 = *(v0 + 216);
    v57 = *(v0 + 192);
    v56 = *(v0 + 200);
    v58 = *(v0 + 184);
    v59 = *(v0 + 160);

    v60 = *(v0 + 8);
    v61 = *MEMORY[0x277D85DE8];

    return v60();
  }

  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  v16 = *(v0 + 192);
  v15 = *(v0 + 200);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  v19 = *(v0 + 168);
  v67 = *(v0 + 128);
  v68 = *(v0 + 136);
  v66 = *(v0 + 120);
  v64 = *(v0 + 208);
  v65 = *(v0 + 112);
  v62 = *(v0 + 96);
  v63 = *(v0 + 104);
  (*(v14 + 32))(v11, *(v0 + 216), v13);
  (*(v14 + 16))(v12, v11, v13);
  sub_20E0086B4();
  v20 = v16;
  sub_20DFDF668(v16);
  v21 = *(v17 + 8);
  *(v0 + 256) = v21;
  *(v0 + 264) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v18, v19);
  v22 = *(v17 + 16);
  v22(v15, v20, v19);
  sub_20E0086D4();
  v21(v20, v19);
  v22(v64, v15, v19);
  sub_20E0086D4();
  v21(v15, v19);
  sub_20E008694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00AB50;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000020E015810;
  *(inited + 48) = v67;
  *(inited + 56) = v68;

  sub_20DF74E1C(inited);
  swift_setDeallocating();
  sub_20DF66E28(inited + 32, &qword_27C852140, &qword_20E011050);
  v24 = objc_opt_self();
  v25 = sub_20E009154();

  *(v0 + 80) = 0;
  v26 = [v24 dataWithJSONObject:v25 options:0 error:v0 + 80];

  v27 = *(v0 + 80);
  if (!v26)
  {
    v39 = v27;
    v40 = sub_20E008A34();

    swift_willThrow();
    if (qword_27C8520A8 != -1)
    {
      swift_once();
    }

    v69 = v21;
    v41 = sub_20E009094();
    __swift_project_value_buffer(v41, qword_27C862758);
    v42 = sub_20E009074();
    v43 = sub_20E009544();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_20DF62000, v42, v43, "Unable to encode Token request body", v44, 2u);
      MEMORY[0x20F32B3A0](v44, -1, -1);
    }

    v45 = *(v0 + 248);
    v46 = *(v0 + 224);
    v47 = *(v0 + 232);
    v48 = *(v0 + 208);
    v49 = *(v0 + 168);
    v50 = *(v0 + 176);
    v51 = *(v0 + 88);

    v69(v48, v49);
    (*(v47 + 8))(v45, v46);
    (*(v50 + 56))(v51, 1, 1, v49);
    goto LABEL_16;
  }

  v28 = *(v0 + 208);
  v29 = sub_20E008B84();
  v31 = v30;

  *(v0 + 272) = v29;
  *(v0 + 280) = v31;
  sub_20DF67FA8(v29, v31);
  sub_20E0086F4();
  v32 = swift_task_alloc();
  *(v0 + 288) = v32;
  *v32 = v0;
  v32[1] = sub_20DFBB1FC;
  v33 = *(v0 + 208);
  v35 = *(v0 + 152);
  v34 = *(v0 + 160);
  v36 = *(v0 + 144);
  v37 = *MEMORY[0x277D85DE8];

  return sub_20DF83234(v34, v33, v36);
}

uint64_t sub_20DFBB1FC()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 288);
  v7 = *v1;

  if (v0)
  {

    v3 = sub_20DFBB674;
  }

  else
  {
    v3 = sub_20DFBB340;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DFBB340()
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C8520A8 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862758);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to sign authorization token refresh request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v9 = v0[34];
    v8 = v0[35];
    v10 = v0[32];
    v11 = v0[33];
    v13 = v0[28];
    v12 = v0[29];
    v14 = v0[26];
    v15 = v5;
    v17 = v0[21];
    v16 = v0[22];
    v36 = v0[31];
    v38 = v0[11];

    sub_20DF67FFC(v9, v8);
    v10(v14, v17);
    (*(v12 + 8))(v36, v13);
    (*(v16 + 56))(v38, 1, 1, v17);
  }

  else
  {
    v19 = v0[34];
    v18 = v0[35];
    v20 = v0[32];
    v39 = v0[31];
    v21 = v0[29];
    v35 = v0[33];
    v37 = v0[28];
    v22 = v0[26];
    v23 = v0[11];
    (*(v2 + 32))(v23, v3, v1);
    sub_20E008704();
    sub_20DF67FFC(v19, v18);
    v20(v22, v1);
    (*(v21 + 8))(v39, v37);
    (*(v2 + 56))(v23, 0, 1, v1);
  }

  v25 = v0[30];
  v24 = v0[31];
  v27 = v0[26];
  v26 = v0[27];
  v29 = v0[24];
  v28 = v0[25];
  v30 = v0[23];
  v31 = v0[20];

  v32 = v0[1];
  v33 = *MEMORY[0x277D85DE8];

  return v32();
}

uint64_t sub_20DFBB674()
{
  v28 = *MEMORY[0x277D85DE8];
  (*(v0[22] + 56))(v0[20], 1, 1, v0[21]);
  sub_20DF66E28(v0[20], &qword_27C8520C8, &qword_20E010830);
  if (qword_27C8520A8 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C862758);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to sign authorization token refresh request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v8 = v0[33];
  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[26];
  v12 = v2;
  v14 = v0[21];
  v13 = v0[22];
  v26 = v0[31];
  v27 = v0[11];

  sub_20DF67FFC(v6, v5);
  v7(v11, v14);
  (*(v9 + 8))(v26, v10);
  (*(v13 + 56))(v27, 1, 1, v14);
  v16 = v0[30];
  v15 = v0[31];
  v18 = v0[26];
  v17 = v0[27];
  v20 = v0[24];
  v19 = v0[25];
  v21 = v0[23];
  v22 = v0[20];

  v23 = v0[1];
  v24 = *MEMORY[0x277D85DE8];

  return v23();
}

uint64_t UtilityLookupError.hashValue.getter()
{
  v1 = *v0;
  sub_20E009A34();
  MEMORY[0x20F32AC10](v1);
  return sub_20E009A54();
}

uint64_t sub_20DFBB950(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852EE0, &qword_20E0103A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFC1718();
  sub_20E009A84();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852EC8, &qword_20E010390);
  sub_20DFC1A60(&qword_27C852EE8, sub_20DFC1AD8);
  sub_20E009944();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_20DFBBADC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852ED8, &qword_20E0103A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFC1A0C();
  sub_20E009A84();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_20E009914();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_20E009914();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_20E009914();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20DFBBC80()
{
  result = qword_27C852EA8;
  if (!qword_27C852EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852EA8);
  }

  return result;
}

uint64_t sub_20DFBBD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656974696C697475 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E009984();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20DFBBD90(uint64_t a1)
{
  v2 = sub_20DFC1718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFBBDCC(uint64_t a1)
{
  v2 = sub_20DFC1718();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_20DFBBE08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_20DFC1564(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_20DFBBE50(uint64_t a1)
{
  v2 = sub_20DFC1A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFBBE8C(uint64_t a1)
{
  v2 = sub_20DFC1A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20DFBBEC8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_20DFC17C0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_20DFBBF24(uint64_t a1, double a2, double a3)
{
  v14 = *MEMORY[0x277D85DE8];
  *(v3 + 144) = a1;
  *(v3 + 128) = a2;
  *(v3 + 136) = a3;
  v4 = sub_20E008AF4();
  *(v3 + 152) = v4;
  v5 = *(v4 - 8);
  *(v3 + 160) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0) - 8) + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v9 = sub_20E008CD4();
  *(v3 + 216) = v9;
  v10 = *(v9 - 8);
  *(v3 + 224) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DFBC110, 0, 0);
}

uint64_t sub_20DFBC110()
{
  v156 = v0;
  v155[2] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  sub_20DFF96EC(12, v2, v1);
  swift_setDeallocating();
  v4 = *(inited + 16);

  v5 = *(inited + 24);

  v6 = sub_20DFFC884(2);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x20F32A440](v6, v8, v10, v12);
  v15 = v14;

  *(v0 + 248) = v13;
  *(v0 + 256) = v15;
  if (qword_281123098 != -1)
  {
    swift_once();
  }

  v155[0] = qword_2811249C0;
  v155[1] = *algn_2811249C8;

  MEMORY[0x20F32A4B0](v13, v15);
  *(v0 + 16) = v13;
  *(v0 + 24) = v15;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 312) = 1;
  v16 = objc_opt_self();

  v17 = [v16 defaultManager];
  v18 = sub_20E0091C4();

  v19 = [v17 fileExistsAtPath:v18 isDirectory:v0 + 312];

  if (!v19)
  {

    if (qword_2811230E0 != -1)
    {
LABEL_87:
      swift_once();
    }

    v56 = sub_20E009094();
    __swift_project_value_buffer(v56, qword_281124A00);
    v57 = sub_20E009074();
    v58 = sub_20E009544();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_37;
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = "Unable to find GeoHash 2 folder on disk. Proceed to fetch new file.";
    goto LABEL_36;
  }

  sub_20DF9C98C();
  v20 = sub_20E0091C4();

  v21 = sub_20E0091C4();
  v22 = CFPreferencesCopyAppValue(v20, v21);

  v23 = *(v0 + 216);
  v24 = *(v0 + 224);
  v25 = *(v0 + 208);
  if (!v22)
  {
    (*(v24 + 56))(v25, 1, 1, *(v0 + 216));
    goto LABEL_28;
  }

  *(v0 + 120) = v22;
  v26 = v25;
  v27 = swift_dynamicCast();
  (*(v24 + 56))(v26, v27 ^ 1u, 1, v23);
  if ((*(v24 + 48))(v26, 1, v23) == 1)
  {
LABEL_28:
    sub_20DF66E28(*(v0 + 208), &qword_27C852A58, &qword_20E00F7A0);
    goto LABEL_29;
  }

  v28 = *(v0 + 232);
  v29 = *(v0 + 216);
  v30 = *(v0 + 224);
  (*(v30 + 32))(*(v0 + 240), *(v0 + 208), v29);
  sub_20E008C94();
  v31 = sub_20E008C44();
  v32 = *(v30 + 8);
  (v32)(v28, v29);
  if ((v31 & 1) == 0)
  {
    (v32)(*(v0 + 240), *(v0 + 216));
LABEL_29:
    sub_20DF9C834();

    v61 = *(v0 + 40);

    v62 = *(v0 + 56);

    v63 = sub_20E0091C4();

    v64 = sub_20E0091C4();
    v65 = CFPreferencesCopyAppValue(v63, v64);

    if (v65)
    {
      *(v0 + 112) = v65;
      if (swift_dynamicCast())
      {
        v66 = *(v0 + 96);
        v67 = *(v0 + 104);
        v68 = 1;
LABEL_38:
        *(v0 + 264) = v66;
        *(v0 + 272) = v67;
        *(v0 + 313) = v68;
        v70 = swift_task_alloc();
        *(v0 + 280) = v70;
        *v70 = v0;
        v70[1] = sub_20DFBD1B4;
        v71 = *(v0 + 144);
        v72 = *MEMORY[0x277D85DE8];

        return sub_20DF9D6CC(v71);
      }
    }

    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v69 = sub_20E009094();
    __swift_project_value_buffer(v69, qword_281124A00);
    v57 = sub_20E009074();
    v58 = sub_20E009544();
    if (!os_log_type_enabled(v57, v58))
    {
LABEL_37:

      v68 = 0;
      v66 = 0;
      v67 = 0;
      goto LABEL_38;
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = "Geohash folder exist, but no ETag for geohash stored in disk.";
LABEL_36:
    _os_log_impl(&dword_20DF62000, v57, v58, v60, v59, 2u);
    MEMORY[0x20F32B3A0](v59, -1, -1);
    goto LABEL_37;
  }

  v33 = *(v0 + 56);

  v34 = &unk_281123000;
  if (qword_2811230E0 != -1)
  {
LABEL_89:
    swift_once();
  }

  v35 = sub_20E009094();
  __swift_project_value_buffer(v35, qword_281124A00);
  v36 = sub_20E009074();
  v37 = sub_20E009554();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_20DF62000, v36, v37, "Geohash folder exist, and valid. Use local geohash tiles. Skipping fetching", v38, 2u);
    MEMORY[0x20F32B3A0](v38, -1, -1);
  }

  v39 = *(v0 + 240);
  v40 = *(v0 + 216);
  v42 = *(v0 + 128);
  v41 = *(v0 + 136);

  (v32)(v39, v40);
  v43 = sub_20DFB2810();
  if (v43)
  {
    v44 = v43;
    v45 = *(v43 + 16);
    if (v45)
    {
      v46 = 0;
      v47 = -v45;
      v48 = v43 + 40;
      v49 = MEMORY[0x277D84F90];
      do
      {
        v50 = (v48 + 16 * v46++);
        while (1)
        {
          if ((v46 - 1) >= *(v44 + 16))
          {
            __break(1u);
            goto LABEL_87;
          }

          v52 = *(v50 - 1);
          v51 = *v50;

          if ((sub_20DFA1500(v52, v51) & 1) == 0)
          {
            break;
          }

          ++v46;
          v50 += 2;
          if (v47 + v46 == 1)
          {
            goto LABEL_53;
          }
        }

        v155[0] = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_20DF749AC(0, *(v49 + 16) + 1, 1);
          v49 = v155[0];
        }

        v54 = *(v49 + 16);
        v53 = *(v49 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_20DF749AC((v53 > 1), v54 + 1, 1);
          v49 = v155[0];
        }

        *(v49 + 16) = v54 + 1;
        v55 = v49 + 16 * v54;
        *(v55 + 32) = v52;
        *(v55 + 40) = v51;
      }

      while (v47 + v46);
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
    }

LABEL_53:

    v97 = sub_20E009074();
    v98 = sub_20E009554();

    if (os_log_type_enabled(v97, v98))
    {
      v100 = *(v0 + 128);
      v99 = *(v0 + 136);
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v155[0] = v102;
      *v101 = 136315906;
      *(v101 + 4) = sub_20DF74468(0xD000000000000013, 0x800000020E016BC0, v155);
      *(v101 + 12) = 2048;
      *(v101 + 14) = v100;
      *(v101 + 22) = 2048;
      *(v101 + 24) = v99;
      *(v101 + 32) = 2080;
      v103 = MEMORY[0x20F32A600](v49, MEMORY[0x277D837D0]);
      v105 = sub_20DF74468(v103, v104, v155);

      *(v101 + 34) = v105;
      _os_log_impl(&dword_20DF62000, v97, v98, "%s for coordinate %f %f returning %s", v101, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F32B3A0](v102, -1, -1);
      MEMORY[0x20F32B3A0](v101, -1, -1);
    }

LABEL_56:
    v107 = *(v0 + 232);
    v106 = *(v0 + 240);
    v109 = *(v0 + 200);
    v108 = *(v0 + 208);
    v111 = *(v0 + 184);
    v110 = *(v0 + 192);
    v113 = *(v0 + 168);
    v112 = *(v0 + 176);

    v114 = *(v0 + 8);
    v115 = *MEMORY[0x277D85DE8];

    return v114(v49);
  }

  v74 = *(v0 + 184);
  v75 = *(v0 + 152);
  v76 = *(v0 + 160);
  sub_20DFFC920(v74, *(v0 + 128), *(v0 + 136));
  v77 = (*(v76 + 48))(v74, 1, v75);
  v78 = *(v0 + 184);
  if (v77 != 1)
  {
    v117 = *(v0 + 128);
    v116 = *(v0 + 136);
    (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 184), *(v0 + 152));
    v118 = sub_20DF68334(v117, v116);
    sub_20DFB2AD0(v118);
    if (v118)
    {
      v119 = *(v118 + 2);
      if (v119)
      {
        v34 = 0;
        v32 = -v119;
        v120 = v118 + 40;
        v49 = MEMORY[0x277D84F90];
        do
        {
          v121 = &v120[16 * v34];
          v34 = v34 + 1;
          while (1)
          {
            if (v34 - 1 >= *(v118 + 2))
            {
              __break(1u);
              goto LABEL_89;
            }

            v123 = *(v121 - 1);
            v122 = *v121;

            if ((sub_20DFA1500(v123, v122) & 1) == 0)
            {
              break;
            }

            v34 = v34 + 1;
            v121 += 2;
            if (v34 + v32 == 1)
            {
              goto LABEL_81;
            }
          }

          v155[0] = v49;
          v153 = v120;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_20DF749AC(0, *(v49 + 16) + 1, 1);
            v49 = v155[0];
          }

          v125 = *(v49 + 16);
          v124 = *(v49 + 24);
          v126 = v125 + 1;
          if (v125 >= v124 >> 1)
          {
            sub_20DF749AC((v124 > 1), v125 + 1, 1);
            v126 = v125 + 1;
            v49 = v155[0];
          }

          *(v49 + 16) = v126;
          v127 = v49 + 16 * v125;
          *(v127 + 32) = v123;
          *(v127 + 40) = v122;
          v120 = v153;
        }

        while (v34 + v32);
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
      }

LABEL_81:

      if (qword_2811230E0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v35, qword_281124A00);

      v139 = sub_20E009074();
      v140 = sub_20E009554();

      v141 = os_log_type_enabled(v139, v140);
      v142 = *(v0 + 160);
      v143 = *(v0 + 168);
      v144 = *(v0 + 152);
      if (v141)
      {
        v146 = *(v0 + 128);
        v145 = *(v0 + 136);
        v154 = *(v0 + 168);
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v155[0] = v148;
        *v147 = 136315906;
        *(v147 + 4) = sub_20DF74468(0xD000000000000013, 0x800000020E016BC0, v155);
        *(v147 + 12) = 2048;
        *(v147 + 14) = v146;
        *(v147 + 22) = 2048;
        *(v147 + 24) = v145;
        *(v147 + 32) = 2080;
        v149 = MEMORY[0x20F32A600](v49, MEMORY[0x277D837D0]);
        v151 = sub_20DF74468(v149, v150, v155);

        *(v147 + 34) = v151;
        _os_log_impl(&dword_20DF62000, v139, v140, "%s for coordinate %f %f returning %s", v147, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x20F32B3A0](v148, -1, -1);
        MEMORY[0x20F32B3A0](v147, -1, -1);

        (*(v142 + 8))(v154, v144);
      }

      else
      {

        (*(v142 + 8))(v143, v144);
      }
    }

    else
    {
      if (*(v34 + 28) != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v35, qword_281124A00);
      v128 = sub_20E009074();
      v129 = sub_20E009544();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&dword_20DF62000, v128, v129, "No Utility Territory found for provided coordinates", v130, 2u);
        MEMORY[0x20F32B3A0](v130, -1, -1);
      }

      v131 = sub_20E009074();
      v132 = sub_20E009554();
      if (os_log_type_enabled(v131, v132))
      {
        v134 = *(v0 + 128);
        v133 = *(v0 + 136);
        v135 = swift_slowAlloc();
        *v135 = 134218240;
        *(v135 + 4) = v134;
        *(v135 + 12) = 2048;
        *(v135 + 14) = v133;
        _os_log_impl(&dword_20DF62000, v131, v132, "Utility Territory not found for coordinate %f %f", v135, 0x16u);
        MEMORY[0x20F32B3A0](v135, -1, -1);
      }

      v137 = *(v0 + 160);
      v136 = *(v0 + 168);
      v138 = *(v0 + 152);

      (*(v137 + 8))(v136, v138);
      v49 = MEMORY[0x277D84F90];
    }

    goto LABEL_56;
  }

  sub_20DF66E28(*(v0 + 184), &qword_27C8520D0, &qword_20E00AB70);
  if (*(v34 + 28) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v35, qword_281124A00);
  v79 = sub_20E009074();
  v80 = sub_20E009534();
  if (os_log_type_enabled(v79, v80))
  {
    v82 = *(v0 + 128);
    v81 = *(v0 + 136);
    v83 = swift_slowAlloc();
    *v83 = 134218240;
    *(v83 + 4) = v82;
    *(v83 + 12) = 2048;
    *(v83 + 14) = v81;
    _os_log_impl(&dword_20DF62000, v79, v80, "Unable to locate matching geohash tile for coordinate %f:%f)", v83, 0x16u);
    MEMORY[0x20F32B3A0](v83, -1, -1);
  }

  v84 = sub_20E009074();
  v85 = sub_20E009544();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_20DF62000, v84, v85, "Returning no utility information. This could be intentional as the region is not supported", v86, 2u);
    MEMORY[0x20F32B3A0](v86, -1, -1);
  }

  sub_20DFC14F0();
  swift_allocError();
  *v87 = 2;
  v89 = *(v0 + 232);
  v88 = *(v0 + 240);
  v91 = *(v0 + 200);
  v90 = *(v0 + 208);
  v93 = *(v0 + 184);
  v92 = *(v0 + 192);
  v94 = *(v0 + 176);
  v152 = *(v0 + 168);
  swift_willThrow();

  v95 = *(v0 + 8);
  v96 = *MEMORY[0x277D85DE8];

  return v95();
}

uint64_t sub_20DFBD1B4()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[36] = v4;
  *v4 = v3;
  v4[1] = sub_20DFBD388;
  v5 = v1[34];
  v6 = v1[33];
  v7 = v1[32];
  v8 = v1[31];
  v9 = v1[25];
  v10 = v1[18];
  v11 = *MEMORY[0x277D85DE8];

  return sub_20DFAFCFC(v9, v8, v7, v10, v6, v5);
}

uint64_t sub_20DFBD388(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 288);
  v11 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v5 = v3[34];
    v6 = v3[32];

    v7 = sub_20DFBE3FC;
  }

  else
  {
    v7 = sub_20DFBD4E4;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20DFBD4E4()
{
  v136 = v0;
  v135[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 296);
  if (!v1)
  {
    v13 = *(v0 + 272);
    v14 = *(v0 + 256);

    if (qword_2811230E0 != -1)
    {
LABEL_84:
      swift_once();
    }

    v15 = sub_20E009094();
    __swift_project_value_buffer(v15, qword_281124A00);
    v16 = sub_20E009074();
    v17 = sub_20E009544();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20DF62000, v16, v17, "Unknown error occurred while fetching geohash tile from server.", v18, 2u);
      MEMORY[0x20F32B3A0](v18, -1, -1);
    }

    v19 = *(v0 + 200);

    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v20 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v21 = v19;
    goto LABEL_63;
  }

  v2 = v1;
  v3 = [v2 statusCode];
  if (v3 == 304)
  {
    if (*(v0 + 313) == 1)
    {
      if (*(v0 + 272))
      {
        v22 = *(v0 + 272);

        if (qword_2811230E0 != -1)
        {
          swift_once();
        }

        v23 = sub_20E009094();
        __swift_project_value_buffer(v23, qword_281124A00);
        v24 = sub_20E009074();
        v25 = sub_20E009554();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_20DF62000, v24, v25, "Geohash file unmodified. Continue using locally stored geohash tile", v26, 2u);
          MEMORY[0x20F32B3A0](v26, -1, -1);
        }

        v28 = *(v0 + 248);
        v27 = *(v0 + 256);

        sub_20DFB1E20(v2, v28, v27);

        goto LABEL_25;
      }

      v81 = *(v0 + 256);
    }

    else
    {
      v60 = *(v0 + 256);
    }

    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v82 = sub_20E009094();
    __swift_project_value_buffer(v82, qword_281124A00);
    v83 = sub_20E009074();
    v84 = sub_20E009544();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_20DF62000, v83, v84, "Error while trying to fetch new Geohash tile from server.", v85, 2u);
      MEMORY[0x20F32B3A0](v85, -1, -1);
    }

    v61 = *(v0 + 200);

    sub_20DFC14F0();
    swift_allocError();
    *v86 = 1;
    goto LABEL_62;
  }

  if (v3 != 200)
  {
    v29 = *(v0 + 272);
    v30 = *(v0 + 256);

    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v31 = sub_20E009094();
    __swift_project_value_buffer(v31, qword_281124A00);
    v32 = sub_20E009074();
    v33 = sub_20E009544();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20DF62000, v32, v33, "Unknown error occurred while fetching geohash tile from server.", v34, 2u);
      MEMORY[0x20F32B3A0](v34, -1, -1);
    }

    v2 = v2;
    v35 = sub_20E009074();
    v36 = sub_20E009544();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = [v2 statusCode];

      _os_log_impl(&dword_20DF62000, v35, v36, "Status Code returned %ld", v37, 0xCu);
      MEMORY[0x20F32B3A0](v37, -1, -1);
    }

    else
    {
    }

    v61 = *(v0 + 200);
    type metadata accessor for NetworkError();
    sub_20DF960FC();
    swift_allocError();
    *v62 = [v2 statusCode];
    swift_storeEnumTagMultiPayload();
    goto LABEL_62;
  }

  v4 = *(v0 + 272);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);

  sub_20DF66D80(v5, v6);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = *(v0 + 256);
  if (v9 == 1)
  {
    v11 = *(v0 + 192);
    v12 = *(v0 + 256);

    sub_20DF66E28(v11, &qword_27C8520D0, &qword_20E00AB70);
LABEL_51:
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v76 = sub_20E009094();
    __swift_project_value_buffer(v76, qword_281124A00);
    v77 = sub_20E009074();
    v78 = sub_20E009544();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_20DF62000, v77, v78, "Error while creating geoHash tiles.", v79, 2u);
      MEMORY[0x20F32B3A0](v79, -1, -1);
    }

    v61 = *(v0 + 200);

    sub_20DFC14F0();
    swift_allocError();
    *v80 = 0;
LABEL_62:
    swift_willThrow();

    v21 = v61;
LABEL_63:
    sub_20DF66E28(v21, &qword_27C8520D0, &qword_20E00AB70);
LABEL_64:
    v88 = *(v0 + 232);
    v87 = *(v0 + 240);
    v90 = *(v0 + 200);
    v89 = *(v0 + 208);
    v92 = *(v0 + 184);
    v91 = *(v0 + 192);
    v93 = *(v0 + 168);
    v94 = *(v0 + 176);
    swift_willThrow();

    v95 = *(v0 + 8);
    v96 = *MEMORY[0x277D85DE8];

    return v95();
  }

  v38 = *(v0 + 248);
  v39 = *(v0 + 176);
  (*(*(v0 + 160) + 32))(v39, *(v0 + 192), *(v0 + 152));
  sub_20DFB0EE0(v39, v38, v10);
  v40 = *(v0 + 256);
  if ((v41 & 1) == 0)
  {
    (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));

    goto LABEL_51;
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 152);
  v44 = *(v0 + 160);
  sub_20DFB1E20(v2, *(v0 + 248), *(v0 + 256));

  (*(v44 + 8))(v42, v43);
LABEL_25:
  sub_20DF66E28(*(v0 + 200), &qword_27C8520D0, &qword_20E00AB70);
  v45 = *(v0 + 184);
  v46 = *(v0 + 152);
  v47 = *(v0 + 160);
  sub_20DFFC920(v45, *(v0 + 128), *(v0 + 136));
  v48 = (*(v47 + 48))(v45, 1, v46);
  v49 = *(v0 + 184);
  if (v48 == 1)
  {
    sub_20DF66E28(*(v0 + 184), &qword_27C8520D0, &qword_20E00AB70);
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v50 = sub_20E009094();
    __swift_project_value_buffer(v50, qword_281124A00);
    v51 = sub_20E009074();
    v52 = sub_20E009534();
    if (os_log_type_enabled(v51, v52))
    {
      v54 = *(v0 + 128);
      v53 = *(v0 + 136);
      v55 = swift_slowAlloc();
      *v55 = 134218240;
      *(v55 + 4) = v54;
      *(v55 + 12) = 2048;
      *(v55 + 14) = v53;
      _os_log_impl(&dword_20DF62000, v51, v52, "Unable to locate matching geohash tile for coordinate %f:%f)", v55, 0x16u);
      MEMORY[0x20F32B3A0](v55, -1, -1);
    }

    v56 = sub_20E009074();
    v57 = sub_20E009544();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_20DF62000, v56, v57, "Returning no utility information. This could be intentional as the region is not supported", v58, 2u);
      MEMORY[0x20F32B3A0](v58, -1, -1);
    }

    sub_20DFC14F0();
    swift_allocError();
    *v59 = 2;
    goto LABEL_64;
  }

  v64 = *(v0 + 128);
  v63 = *(v0 + 136);
  (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 184), *(v0 + 152));
  v65 = sub_20DF68334(v64, v63);
  sub_20DFB2AD0(v65);
  if (v65)
  {
    v66 = *(v65 + 2);
    if (v66)
    {
      v67 = 0;
      v68 = -v66;
      v69 = MEMORY[0x277D84F90];
      do
      {
        v70 = &v65[16 * v67++ + 40];
        while (1)
        {
          if ((v67 - 1) >= *(v65 + 2))
          {
            __break(1u);
            goto LABEL_84;
          }

          v72 = *(v70 - 1);
          v71 = *v70;

          if ((sub_20DFA1500(v72, v71) & 1) == 0)
          {
            break;
          }

          ++v67;
          v70 += 2;
          if (v68 + v67 == 1)
          {
            goto LABEL_75;
          }
        }

        v135[0] = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_20DF749AC(0, *(v69 + 16) + 1, 1);
          v69 = v135[0];
        }

        v74 = *(v69 + 16);
        v73 = *(v69 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_20DF749AC((v73 > 1), v74 + 1, 1);
          v69 = v135[0];
        }

        *(v69 + 16) = v74 + 1;
        v75 = v69 + 16 * v74;
        *(v75 + 32) = v72;
        *(v75 + 40) = v71;
      }

      while (v68 + v67);
    }

    else
    {
      v69 = MEMORY[0x277D84F90];
    }

LABEL_75:

    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v110 = sub_20E009094();
    __swift_project_value_buffer(v110, qword_281124A00);

    v111 = sub_20E009074();
    v112 = sub_20E009554();

    v113 = os_log_type_enabled(v111, v112);
    v114 = *(v0 + 160);
    v115 = *(v0 + 168);
    v116 = *(v0 + 152);
    if (v113)
    {
      v118 = *(v0 + 128);
      v117 = *(v0 + 136);
      v134 = *(v0 + 168);
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v135[0] = v120;
      *v119 = 136315906;
      *(v119 + 4) = sub_20DF74468(0xD000000000000013, 0x800000020E016BC0, v135);
      *(v119 + 12) = 2048;
      *(v119 + 14) = v118;
      *(v119 + 22) = 2048;
      *(v119 + 24) = v117;
      *(v119 + 32) = 2080;
      v121 = MEMORY[0x20F32A600](v69, MEMORY[0x277D837D0]);
      v123 = sub_20DF74468(v121, v122, v135);

      *(v119 + 34) = v123;
      _os_log_impl(&dword_20DF62000, v111, v112, "%s for coordinate %f %f returning %s", v119, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F32B3A0](v120, -1, -1);
      MEMORY[0x20F32B3A0](v119, -1, -1);

      (*(v114 + 8))(v134, v116);
    }

    else
    {

      (*(v114 + 8))(v115, v116);
    }
  }

  else
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v98 = sub_20E009094();
    __swift_project_value_buffer(v98, qword_281124A00);
    v99 = sub_20E009074();
    v100 = sub_20E009544();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_20DF62000, v99, v100, "No Utility Territory found for provided coordinates", v101, 2u);
      MEMORY[0x20F32B3A0](v101, -1, -1);
    }

    v102 = sub_20E009074();
    v103 = sub_20E009554();
    if (os_log_type_enabled(v102, v103))
    {
      v105 = *(v0 + 128);
      v104 = *(v0 + 136);
      v106 = swift_slowAlloc();
      *v106 = 134218240;
      *(v106 + 4) = v105;
      *(v106 + 12) = 2048;
      *(v106 + 14) = v104;
      _os_log_impl(&dword_20DF62000, v102, v103, "Utility Territory not found for coordinate %f %f", v106, 0x16u);
      MEMORY[0x20F32B3A0](v106, -1, -1);
    }

    v108 = *(v0 + 160);
    v107 = *(v0 + 168);
    v109 = *(v0 + 152);

    (*(v108 + 8))(v107, v109);
    v69 = MEMORY[0x277D84F90];
  }

  v125 = *(v0 + 232);
  v124 = *(v0 + 240);
  v127 = *(v0 + 200);
  v126 = *(v0 + 208);
  v129 = *(v0 + 184);
  v128 = *(v0 + 192);
  v131 = *(v0 + 168);
  v130 = *(v0 + 176);

  v132 = *(v0 + 8);
  v133 = *MEMORY[0x277D85DE8];

  return v132(v69);
}

uint64_t sub_20DFBE3FC()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[38];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v12 = v0[21];
  swift_willThrow();

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

unint64_t sub_20DFBE500(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DFE7E38();
  v5 = 0xEA00000000006C61;
  v6 = 0x6E7265746E496171;
  v7 = 1953654115;
  if (v4 != 2)
  {
    v7 = 1685025392;
  }

  if (v4)
  {
    v6 = 7759204;
    v5 = 0xE300000000000000;
  }

  if (v4 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v4 <= 1)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x20F32A4B0](v8, v9);

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  MEMORY[0x20F32A4B0](a1, a2);
  return 0xD000000000000017;
}

uint64_t sub_20DFBE5F0()
{
  v0 = sub_20E008A44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v21 - v7;
  v9 = sub_20E008AF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);

  sub_20E008AD4();
  v14 = sub_20E008B14();
  v16 = v15;
  v17 = sub_20E008744();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_20E008734();
  sub_20DFC149C();
  sub_20E008724();
  sub_20DF67FFC(v14, v16);

  (*(v10 + 8))(v13, v9);
  return 1;
}

uint64_t sub_20DFBE964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v4 = type metadata accessor for NetworkError();
  v3[17] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v6 = sub_20E008A44();
  v3[19] = v6;
  v7 = *(v6 - 8);
  v3[20] = v7;
  v8 = *(v7 + 64) + 15;
  v3[21] = swift_task_alloc();
  v9 = sub_20E008AF4();
  v3[22] = v9;
  v10 = *(v9 - 8);
  v3[23] = v10;
  v11 = *(v10 + 64) + 15;
  v3[24] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v14 = sub_20E008714();
  v3[28] = v14;
  v15 = *(v14 - 8);
  v3[29] = v15;
  v16 = *(v15 + 64) + 15;
  v3[30] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v18 = sub_20E008CD4();
  v3[32] = v18;
  v19 = *(v18 - 8);
  v3[33] = v19;
  v20 = *(v19 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFBEC2C, 0, 0);
}

uint64_t sub_20DFBEC2C()
{
  v1 = sub_20DFBE500(*(v0 + 112), *(v0 + 120));
  v3 = v2;
  *(v0 + 288) = v1;
  *(v0 + 296) = v2;
  if (qword_281123098 != -1)
  {
    swift_once();
  }

  v116 = qword_2811249C0;
  v119 = *algn_2811249C8;

  MEMORY[0x20F32A4B0](v1, v3);
  v4 = sub_20DFF20F8();
  v6 = v5;

  MEMORY[0x20F32A4B0](v4, v6);

  *(v0 + 304) = v116;
  *(v0 + 312) = v119;
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_20E0091C4();
  v9 = [v7 fileExistsAtPath_];

  if (!v9 || (sub_20DFBE5F0() & 1) == 0)
  {
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v37 = sub_20E009094();
    __swift_project_value_buffer(v37, qword_281124A18);
    v38 = sub_20E009074();
    v39 = sub_20E009544();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_20DF62000, v38, v39, "No perviously fetched Config file found on disk. Proceed to fetch new file.", v40, 2u);
      MEMORY[0x20F32B3A0](v40, -1, -1);
    }

    v41 = 0;
    v42 = 0;
    v43 = 0;
    goto LABEL_17;
  }

  sub_20DFD795C(v1);
  v10 = sub_20E0091C4();

  v11 = sub_20E0091C4();
  v12 = CFPreferencesCopyAppValue(v10, v11);

  v13 = *(v0 + 256);
  v14 = *(v0 + 264);
  v15 = *(v0 + 248);
  if (!v12)
  {
    (*(v14 + 56))(v15, 1, 1, *(v0 + 256));
    goto LABEL_21;
  }

  *(v0 + 104) = v12;
  v16 = v15;
  v17 = swift_dynamicCast();
  (*(v14 + 56))(v16, v17 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v16, 1, v13) == 1)
  {
LABEL_21:
    sub_20DF66E28(*(v0 + 248), &qword_27C852A58, &qword_20E00F7A0);
LABEL_22:
    sub_20DFD7AB8(v1);
    v47 = sub_20E0091C4();

    v48 = sub_20E0091C4();
    v49 = CFPreferencesCopyAppValue(v47, v48);

    if (v49 && (*(v0 + 96) = v49, (swift_dynamicCast() & 1) != 0))
    {
      v41 = *(v0 + 56);
      v42 = *(v0 + 64);
      v43 = 1;
    }

    else
    {
      if (qword_2811230E8 != -1)
      {
        swift_once();
      }

      v50 = sub_20E009094();
      __swift_project_value_buffer(v50, qword_281124A18);
      v51 = sub_20E009074();
      v52 = sub_20E009544();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_20DF62000, v51, v52, "Config file exists on disk. But no eTag Value!", v53, 2u);
        MEMORY[0x20F32B3A0](v53, -1, -1);
      }

      v41 = 0;
      v42 = 0;
      v43 = 1;
    }

LABEL_17:
    *(v0 + 392) = v43;
    *(v0 + 320) = v41;
    *(v0 + 328) = v42;
    v44 = swift_task_alloc();
    *(v0 + 336) = v44;
    *v44 = v0;
    v44[1] = sub_20DFBF9F0;
    v45 = *(v0 + 128);

    return sub_20DF9D6CC(v45);
  }

  v18 = *(v0 + 272);
  v19 = *(v0 + 256);
  v20 = *(v0 + 264);
  (*(v20 + 32))(*(v0 + 280), *(v0 + 248), v19);
  sub_20E008C94();
  v21 = sub_20E008C44();
  v22 = *(v20 + 8);
  v22(v18, v19);
  if ((v21 & 1) == 0)
  {
    v22(*(v0 + 280), *(v0 + 256));
    goto LABEL_22;
  }

  if (qword_2811230E8 != -1)
  {
LABEL_56:
    swift_once();
  }

  v23 = sub_20E009094();
  __swift_project_value_buffer(v23, qword_281124A18);
  v24 = sub_20E009074();
  v25 = sub_20E009554();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  if (v26)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_20DF62000, v24, v25, "Configuration exists locally and is Valid. Skip Fetching.", v29, 2u);
    MEMORY[0x20F32B3A0](v29, -1, -1);
  }

  v22(v27, v28);
  v30 = *(v0 + 304);
  v31 = *(v0 + 312);
  v32 = *(v0 + 192);
  v34 = *(v0 + 160);
  v33 = *(v0 + 168);
  v35 = *(v0 + 152);
  (*(*(v0 + 184) + 56))(*(v0 + 200), 1, 1, *(v0 + 176));
  v36 = *(v34 + 104);
  v22 = (v34 + 104);
  v36(v33, *MEMORY[0x277CC91D8], v35);
  sub_20E008AD4();
  v54 = sub_20E008B14();
  v56 = v55;
  v57 = sub_20E008744();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  sub_20E008734();
  sub_20DFC149C();
  sub_20E008724();

  v60 = *(v0 + 88);
  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v23, qword_281124A18);
  v61 = sub_20E009074();
  v62 = sub_20E009554();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_20DF62000, v61, v62, "> Utility Config values being returned", v63, 2u);
    MEMORY[0x20F32B3A0](v63, -1, -1);
  }

  v110 = v54;
  v111 = v56;

  v64 = *(v60 + 16);
  v65 = MEMORY[0x277D84F90];
  if (v64)
  {
    v66 = 0;
    v114 = -v64;
    v67 = v60 + 40;
    v109 = v60 + 40;
    do
    {
      v112 = v65;
      v68 = v67 + 48 * v66++;
      while (1)
      {
        if ((v66 - 1) >= *(v60 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }

        v69 = v60;
        v70 = *(v68 - 8);
        v22 = *v68;
        v72 = *(v68 + 8);
        v71 = *(v68 + 16);
        v74 = *(v68 + 24);
        v73 = *(v68 + 32);

        if ((sub_20DFA1500(v72, v71) & 1) == 0)
        {
          break;
        }

        ++v66;
        v68 += 48;
        v60 = v69;
        if (v114 + v66 == 1)
        {
          v65 = v112;
          goto LABEL_47;
        }
      }

      v65 = v112;
      v117 = v112;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_20DF74A0C(0, v112[2] + 1, 1);
        v65 = v112;
      }

      v76 = v65[2];
      v75 = v65[3];
      v77 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        v113 = v76 + 1;
        v108 = v65[2];
        sub_20DF74A0C((v75 > 1), v76 + 1, 1);
        v77 = v113;
        v76 = v108;
        v65 = v117;
      }

      v65[2] = v77;
      v78 = &v65[6 * v76];
      v78[4] = v70;
      v78[5] = v22;
      v78[6] = v72;
      v78[7] = v71;
      v78[8] = v74;
      v78[9] = v73;
      v60 = v69;
      v67 = v109;
    }

    while (v114 + v66);
  }

LABEL_47:

  v79 = v65[2];
  if (v79)
  {
    v118 = MEMORY[0x277D84F90];
    sub_20E0097B4();
    v80 = type metadata accessor for UtilityRegion();
    v81 = v65 + 9;
    do
    {
      v83 = *(v81 - 5);
      v82 = *(v81 - 4);
      v84 = *(v81 - 3);
      v85 = *(v81 - 2);
      v86 = *(v81 - 1);
      v87 = *v81;
      v88 = objc_allocWithZone(v80);
      v89 = &v88[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_name];
      *v89 = v83;
      *(v89 + 1) = v82;
      v90 = &v88[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_identifier];
      *v90 = v84;
      *(v90 + 1) = v85;
      v91 = &v88[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_shortName];
      *v91 = v86;
      *(v91 + 1) = v87;
      *(v0 + 40) = v88;
      *(v0 + 48) = v80;

      objc_msgSendSuper2((v0 + 40), sel_init);
      sub_20E009794();
      v92 = *(v118 + 16);
      sub_20E0097C4();
      sub_20E0097D4();
      sub_20E0097A4();
      v81 += 6;
      --v79;
    }

    while (v79);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    sub_20DF67FFC(v110, v111);

    v93 = v118;
  }

  else
  {
    v94 = *(v0 + 184);
    v95 = *(v0 + 192);
    v96 = *(v0 + 176);

    sub_20DF67FFC(v110, v111);
    (*(v94 + 8))(v95, v96);
    v93 = MEMORY[0x277D84F90];
  }

  v115 = v93;
  v98 = *(v0 + 272);
  v97 = *(v0 + 280);
  v100 = *(v0 + 240);
  v99 = *(v0 + 248);
  v102 = *(v0 + 208);
  v101 = *(v0 + 216);
  v104 = *(v0 + 192);
  v103 = *(v0 + 200);
  v105 = *(v0 + 168);
  v106 = *(v0 + 144);

  v107 = *(v0 + 8);

  return v107(v115);
}

uint64_t sub_20DFBF9F0()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[43] = v4;
  *v4 = v3;
  v4[1] = sub_20DFBFB84;
  v5 = v1[41];
  v6 = v1[40];
  v7 = v1[27];
  v8 = v1[15];
  v9 = v1[14];

  return sub_20DF65A24(v7, v9, v8, v6, v5);
}

uint64_t sub_20DFBFB84()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DFBFC80, 0, 0);
}

uint64_t sub_20DFBFC80()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[41];
    v5 = v0[39];
    v6 = v0[37];

    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v7 = sub_20E009094();
    __swift_project_value_buffer(v7, qword_281124A18);
    v8 = sub_20E009074();
    v9 = sub_20E009544();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20DF62000, v8, v9, "Unable to generate Request URL for All Utility Region Lookup", v10, 2u);
      MEMORY[0x20F32B3A0](v10, -1, -1);
    }

    v11 = v0[17];

    sub_20DF960FC();
    swift_allocError();
    *v12 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v14 = v0[34];
    v13 = v0[35];
    v16 = v0[30];
    v15 = v0[31];
    v18 = v0[26];
    v17 = v0[27];
    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[21];
    v30 = v0[18];

    v22 = v0[1];

    return v22();
  }

  else
  {
    v25 = v0[14];
    v24 = v0[15];
    (*(v2 + 32))(v0[30], v3, v1);
    sub_20E009714();

    MEMORY[0x20F32A4B0](v25, v24);
    sub_20DFDF8DC(0xD00000000000001ALL, 0x800000020E016B20, 0xD000000000000022, 0x800000020E016B40);

    v26 = *(MEMORY[0x277CC9D18] + 4);
    v27 = swift_task_alloc();
    v0[44] = v27;
    *v27 = v0;
    v27[1] = sub_20DFBFFE0;
    v28 = v0[30];
    v29 = v0[16];

    return MEMORY[0x28211ECF8](v28, 0);
  }
}

uint64_t sub_20DFBFFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 352);
  v12 = *v4;
  v5[45] = a1;
  v5[46] = a2;
  v5[47] = a3;
  v5[48] = v3;

  if (v3)
  {
    v7 = v5[41];
    v8 = v5[39];
    v9 = v5[37];

    v10 = sub_20DFC1218;
  }

  else
  {
    v10 = sub_20DFC0120;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_20DFC0120()
{
  v1 = *(v0 + 376);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = &unk_281123000;
  if (!v2)
  {
    v35 = *(v0 + 328);
    v36 = *(v0 + 312);
    v37 = *(v0 + 296);

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v38 = sub_20E009094();
    __swift_project_value_buffer(v38, qword_281124A18);
    v39 = sub_20E009074();
    v40 = sub_20E009544();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_20DF62000, v39, v40, "Unable to process All Utility Region response.", v41, 2u);
      MEMORY[0x20F32B3A0](v41, -1, -1);
    }

    v29 = *(v0 + 368);
    v42 = *(v0 + 376);
    v43 = *(v0 + 360);
    v44 = *(v0 + 136);

    sub_20DF960FC();
    v32 = swift_allocError();
    *v45 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_36:
    v34 = v43;
LABEL_37:
    v59 = v29;
    goto LABEL_38;
  }

  v4 = v2;
  v5 = *(v0 + 240);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 376);
  sub_20E009714();

  MEMORY[0x20F32A4B0](v7, v6);
  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  sub_20DFDFFF8(0xD000000000000024, 0x800000020E016B70, [v4 statusCode], &unk_28252D418);

  v9 = [v4 statusCode];
  if (v9 == 304)
  {
    if (*(v0 + 392) == 1)
    {
      if (*(v0 + 328))
      {
        v46 = *(v0 + 328);

        if (qword_2811230E8 != -1)
        {
LABEL_74:
          swift_once();
        }

        v47 = sub_20E009094();
        __swift_project_value_buffer(v47, qword_281124A18);
        v48 = sub_20E009074();
        v49 = sub_20E009534();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_20DF62000, v48, v49, "Utility Territory on disk unmodified. Use existing file on disk.", v50, 2u);
          MEMORY[0x20F32B3A0](v50, -1, -1);
        }

        v51 = *(v0 + 384);
        v53 = *(v0 + 288);
        v52 = *(v0 + 296);

        sub_20DFD7BA4(v4, v53);
        if (!v51)
        {
          goto LABEL_49;
        }

        v32 = v51;
        v55 = *(v0 + 368);
        v54 = *(v0 + 376);
        v56 = *(v0 + 360);
        v57 = *(v0 + 312);
        v58 = *(v0 + 296);

        v34 = v56;
        v59 = v55;
LABEL_38:
        sub_20DF67FFC(v34, v59);
        if (v3[29] != -1)
        {
          swift_once();
        }

        v85 = sub_20E009094();
        __swift_project_value_buffer(v85, qword_281124A18);
        v86 = sub_20E009074();
        v87 = sub_20E009544();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_20DF62000, v86, v87, "Error while trying to fetch All Utility Region data.", v88, 2u);
          MEMORY[0x20F32B3A0](v88, -1, -1);
        }

        v90 = *(v0 + 136);
        v89 = *(v0 + 144);

        *(v0 + 72) = v32;
        v91 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
        v92 = swift_dynamicCast();
        v93 = *(v0 + 232);
        v94 = *(v0 + 240);
        v95 = *(v0 + 224);
        if (v92)
        {
          sub_20DFB2F60(*(v0 + 144));
          swift_willThrow();
        }

        else
        {
          sub_20DFFF4B4(v32);
          swift_willThrow();
        }

        (*(v93 + 8))(v94, v95);
        v97 = *(v0 + 272);
        v96 = *(v0 + 280);
        v99 = *(v0 + 240);
        v98 = *(v0 + 248);
        v101 = *(v0 + 208);
        v100 = *(v0 + 216);
        v103 = *(v0 + 192);
        v102 = *(v0 + 200);
        v104 = *(v0 + 168);
        v105 = *(v0 + 144);

        v106 = *(v0 + 8);

        return v106();
      }

      v76 = *(v0 + 312);
    }

    else
    {
      v71 = *(v0 + 312);
    }

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v77 = sub_20E009094();
    __swift_project_value_buffer(v77, qword_281124A18);
    v78 = sub_20E009074();
    v79 = sub_20E009534();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_20DF62000, v78, v79, "Server return 304, but inconsistency in stored Config detected!", v80, 2u);
      MEMORY[0x20F32B3A0](v80, -1, -1);
    }

    v29 = *(v0 + 368);
    v81 = *(v0 + 376);
    v43 = *(v0 + 360);
    v83 = *(v0 + 288);
    v82 = *(v0 + 296);

    sub_20DFD7F58(v83, v82);

    sub_20DFC1448();
    v32 = swift_allocError();
    *v84 = 1;
    swift_willThrow();

    goto LABEL_36;
  }

  if (v9 != 200)
  {
    v60 = *(v0 + 328);
    v61 = *(v0 + 312);
    v62 = *(v0 + 296);

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v63 = *(v0 + 376);
    v64 = sub_20E009094();
    __swift_project_value_buffer(v64, qword_281124A18);
    v65 = v63;
    v66 = sub_20E009074();
    v67 = sub_20E009544();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = *(v0 + 376);
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      *(v69 + 4) = [v4 statusCode];

      _os_log_impl(&dword_20DF62000, v66, v67, "Unhandled Response code %ld", v69, 0xCu);
      MEMORY[0x20F32B3A0](v69, -1, -1);
      v70 = *(v0 + 376);
    }

    else
    {

      v70 = *(v0 + 376);
      v66 = v70;
    }

    v73 = *(v0 + 360);
    v72 = *(v0 + 368);
    v74 = *(v0 + 136);

    sub_20DF960FC();
    v32 = swift_allocError();
    *v75 = [v4 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v34 = v73;
    v59 = v72;
    goto LABEL_38;
  }

  v10 = *(v0 + 384);
  v11 = *(v0 + 360);
  v12 = *(v0 + 368);
  v13 = *(v0 + 328);

  sub_20DFD29C0();
  v14 = v10;
  if (v10)
  {
    v22 = *(v0 + 312);
    v23 = *(v0 + 296);

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v24 = sub_20E009094();
    __swift_project_value_buffer(v24, qword_281124A18);
    v25 = sub_20E009074();
    v26 = sub_20E009544();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20DF62000, v25, v26, "Error while decoding all Utility region response from server.", v27, 2u);
      MEMORY[0x20F32B3A0](v27, -1, -1);
    }

    v29 = *(v0 + 368);
    v28 = *(v0 + 376);
    v30 = *(v0 + 360);
    v31 = *(v0 + 136);

    sub_20DF960FC();
    v32 = swift_allocError();
    *v33 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v34 = v30;
    goto LABEL_37;
  }

  v15 = *(v0 + 360);
  v16 = *(v0 + 368);
  v18 = *(v0 + 288);
  v17 = *(v0 + 296);
  v19 = *(v0 + 208);

  sub_20DFD2EB0(v15, v16, v18, v17, v19);
  v20 = *(v0 + 288);
  v21 = *(v0 + 296);
  sub_20DF66E28(*(v0 + 208), &qword_27C8520D0, &qword_20E00AB70);
  sub_20DFD7BA4(v4, v20);
LABEL_49:
  v108 = *(v0 + 368);
  v109 = *(v0 + 376);
  v110 = *(v0 + 360);
  v111 = *(v0 + 296);
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

  sub_20DF67FFC(v110, v108);
  v112 = *(v0 + 304);
  v113 = *(v0 + 312);
  v114 = *(v0 + 192);
  v116 = *(v0 + 160);
  v115 = *(v0 + 168);
  v117 = *(v0 + 152);
  (*(*(v0 + 184) + 56))(*(v0 + 200), 1, 1, *(v0 + 176));
  (*(v116 + 104))(v115, *MEMORY[0x277CC91D8], v117);
  sub_20E008AD4();
  v118 = sub_20E008B14();
  v4 = v119;
  v120 = sub_20E008744();
  v121 = *(v120 + 48);
  v122 = *(v120 + 52);
  swift_allocObject();
  sub_20E008734();
  sub_20DFC149C();
  sub_20E008724();

  v123 = *(v0 + 88);
  if (v3[29] != -1)
  {
    swift_once();
  }

  v124 = sub_20E009094();
  __swift_project_value_buffer(v124, qword_281124A18);
  v125 = sub_20E009074();
  v126 = sub_20E009554();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    *v127 = 0;
    _os_log_impl(&dword_20DF62000, v125, v126, "> Utility Config values being returned", v127, 2u);
    MEMORY[0x20F32B3A0](v127, -1, -1);
  }

  v173 = v118;
  v174 = v4;

  v128 = v123[2];
  v129 = MEMORY[0x277D84F90];
  if (v128)
  {
    v130 = 0;
    v177 = -v128;
    v131 = v123 + 5;
    v172 = v123 + 5;
    do
    {
      v175 = v129;
      v132 = &v131[6 * v130++];
      while (1)
      {
        if ((v130 - 1) >= v123[2])
        {
          __break(1u);
          goto LABEL_74;
        }

        v4 = v123;
        v133 = *(v132 - 1);
        v3 = *v132;
        v135 = v132[1];
        v134 = v132[2];
        v136 = v132[3];
        v137 = v132[4];

        if ((sub_20DFA1500(v135, v134) & 1) == 0)
        {
          break;
        }

        ++v130;
        v132 += 6;
        v123 = v4;
        if (v177 + v130 == 1)
        {
          v129 = v175;
          goto LABEL_65;
        }
      }

      v129 = v175;
      v179 = v175;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_20DF74A0C(0, v175[2] + 1, 1);
        v129 = v175;
      }

      v139 = v129[2];
      v138 = v129[3];
      v140 = v139 + 1;
      if (v139 >= v138 >> 1)
      {
        v176 = v139 + 1;
        v171 = v129[2];
        sub_20DF74A0C((v138 > 1), v139 + 1, 1);
        v140 = v176;
        v139 = v171;
        v129 = v179;
      }

      v129[2] = v140;
      v141 = &v129[6 * v139];
      v141[4] = v133;
      v141[5] = v3;
      v141[6] = v135;
      v141[7] = v134;
      v141[8] = v136;
      v141[9] = v137;
      v123 = v4;
      v131 = v172;
    }

    while (v177 + v130);
  }

LABEL_65:

  v142 = v129[2];
  if (v142)
  {
    v180 = MEMORY[0x277D84F90];
    sub_20E0097B4();
    v143 = type metadata accessor for UtilityRegion();
    v144 = v129 + 9;
    do
    {
      v146 = *(v144 - 5);
      v145 = *(v144 - 4);
      v147 = *(v144 - 3);
      v148 = *(v144 - 2);
      v149 = *(v144 - 1);
      v150 = *v144;
      v151 = objc_allocWithZone(v143);
      v152 = &v151[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_name];
      *v152 = v146;
      *(v152 + 1) = v145;
      v153 = &v151[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_identifier];
      *v153 = v147;
      *(v153 + 1) = v148;
      v154 = &v151[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_shortName];
      *v154 = v149;
      *(v154 + 1) = v150;
      *(v0 + 40) = v151;
      *(v0 + 48) = v143;

      objc_msgSendSuper2((v0 + 40), sel_init);
      sub_20E009794();
      v155 = *(v180 + 16);
      sub_20E0097C4();
      sub_20E0097D4();
      sub_20E0097A4();
      v144 += 6;
      --v142;
    }

    while (v142);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    sub_20DF67FFC(v173, v174);

    v156 = v180;
  }

  else
  {
    v157 = *(v0 + 184);
    v158 = *(v0 + 192);
    v159 = *(v0 + 176);

    sub_20DF67FFC(v173, v174);
    (*(v157 + 8))(v158, v159);
    v156 = MEMORY[0x277D84F90];
  }

  v178 = v156;
  v161 = *(v0 + 272);
  v160 = *(v0 + 280);
  v163 = *(v0 + 240);
  v162 = *(v0 + 248);
  v165 = *(v0 + 208);
  v164 = *(v0 + 216);
  v167 = *(v0 + 192);
  v166 = *(v0 + 200);
  v168 = *(v0 + 168);
  v169 = *(v0 + 144);

  v170 = *(v0 + 8);

  return v170(v178);
}

uint64_t sub_20DFC1218()
{
  v1 = v0[48];
  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  v2 = sub_20E009094();
  __swift_project_value_buffer(v2, qword_281124A18);
  v3 = sub_20E009074();
  v4 = sub_20E009544();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20DF62000, v3, v4, "Error while trying to fetch All Utility Region data.", v5, 2u);
    MEMORY[0x20F32B3A0](v5, -1, -1);
  }

  v7 = v0[17];
  v6 = v0[18];

  v0[9] = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v9 = swift_dynamicCast();
  v10 = v0[29];
  v11 = v0[30];
  v12 = v0[28];
  if (v9)
  {
    sub_20DFB2F60(v0[18]);
    swift_willThrow();
  }

  else
  {
    sub_20DFFF4B4(v1);
    swift_willThrow();
  }

  (*(v10 + 8))(v11, v12);
  v14 = v0[34];
  v13 = v0[35];
  v16 = v0[30];
  v15 = v0[31];
  v18 = v0[26];
  v17 = v0[27];
  v20 = v0[24];
  v19 = v0[25];
  v21 = v0[21];
  v22 = v0[18];

  v23 = v0[1];

  return v23();
}

unint64_t sub_20DFC1448()
{
  result = qword_27C852EB0;
  if (!qword_27C852EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852EB0);
  }

  return result;
}

unint64_t sub_20DFC149C()
{
  result = qword_281123350;
  if (!qword_281123350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123350);
  }

  return result;
}

unint64_t sub_20DFC14F0()
{
  result = qword_27C852EB8;
  if (!qword_27C852EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852EB8);
  }

  return result;
}

void *sub_20DFC1564(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852EC0, &qword_20E010388);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFC1718();
  sub_20E009A74();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852EC8, &qword_20E010390);
    sub_20DFC1A60(&qword_2811230B0, sub_20DFC176C);
    sub_20E0098C4();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

unint64_t sub_20DFC1718()
{
  result = qword_281123368;
  if (!qword_281123368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123368);
  }

  return result;
}

unint64_t sub_20DFC176C()
{
  result = qword_281123370;
  if (!qword_281123370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123370);
  }

  return result;
}

uint64_t sub_20DFC17C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852ED0, &qword_20E010398);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFC1A0C();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_20E009894();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_20E009894();
  v23 = v14;
  v25 = 2;
  v15 = sub_20E009894();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_20DFC1A0C()
{
  result = qword_281123388;
  if (!qword_281123388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123388);
  }

  return result;
}

uint64_t sub_20DFC1A60(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852EC8, &qword_20E010390);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20DFC1AD8()
{
  result = qword_27C852EF0;
  if (!qword_27C852EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852EF0);
  }

  return result;
}

unint64_t sub_20DFC1B50()
{
  result = qword_27C852EF8;
  if (!qword_27C852EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852EF8);
  }

  return result;
}

unint64_t sub_20DFC1BA8()
{
  result = qword_27C852F00;
  if (!qword_27C852F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F00);
  }

  return result;
}

unint64_t sub_20DFC1C00()
{
  result = qword_281123378;
  if (!qword_281123378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123378);
  }

  return result;
}

unint64_t sub_20DFC1C58()
{
  result = qword_281123380;
  if (!qword_281123380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123380);
  }

  return result;
}

unint64_t sub_20DFC1CB0()
{
  result = qword_281123358;
  if (!qword_281123358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123358);
  }

  return result;
}

unint64_t sub_20DFC1D08()
{
  result = qword_281123360;
  if (!qword_281123360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123360);
  }

  return result;
}

uint64_t sub_20DFC1D5C(uint64_t a1, char a2)
{
  *(v2 + 600) = a2;
  *(v2 + 432) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0) - 8) + 64) + 15;
  *(v2 + 440) = swift_task_alloc();
  v4 = type metadata accessor for UtilityServicesConfigurationsModel();
  *(v2 + 448) = v4;
  v5 = *(v4 - 8);
  *(v2 + 456) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 464) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFC1E58, 0, 0);
}

uint64_t sub_20DFC1E58()
{
  v1 = sub_20DFC3D68();
  if (v2)
  {
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = v0[58];
      v5 = v0[55];
      v6 = v1;
      v7 = v2;

      v8 = v0[1];

      return v8(v6, v7);
    }
  }

  v10 = [objc_opt_self() ephemeralSessionConfiguration];
  v11 = [objc_opt_self() sessionWithConfiguration_];
  v0[59] = v11;

  v12 = swift_task_alloc();
  v0[60] = v12;
  *v12 = v0;
  v12[1] = sub_20DFC201C;

  return sub_20DF9D6CC(v11);
}

uint64_t sub_20DFC201C()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DFC2130, 0, 0);
}

uint64_t sub_20DFC2130()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[55];
  sub_20DF9EE34(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v0[55], &qword_27C852A60, &unk_20E00EBE0);
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862698);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to retrieve serviceProxy configuration", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_9;
  }

  v10 = v0[54];
  sub_20DF85D48(v0[55], v0[58]);
  v8 = sub_20DFC4408(v10);
  v12 = v0[58];
  if (v11)
  {
    v9 = v11;
    sub_20DF85E5C(v12);
LABEL_9:
    v13 = v0[58];
    v14 = v0[55];

    v15 = v0[1];

    return v15(v8, v9);
  }

  v18 = v12[31];
  v17 = v12[32];
  v19 = v12[34];
  v0[21] = v12[33];
  v0[22] = v19;
  v0[23] = 45;
  v0[24] = 0xE100000000000000;
  v0[25] = 43;
  v0[26] = 0xE100000000000000;
  v20 = sub_20DF751E4();
  v0[61] = v20;
  v21 = MEMORY[0x277D837D0];
  v0[27] = sub_20E0095F4();
  v0[28] = v22;
  v0[29] = 95;
  v0[30] = 0xE100000000000000;
  v0[31] = 47;
  v0[32] = 0xE100000000000000;
  v58 = v20;
  v59 = v20;
  v56 = v21;
  v57 = v20;
  sub_20E0095F4();

  LOBYTE(v21) = sub_20E0092B4();

  if ((v21 & 3) != 0)
  {
    sub_20E0092B4();
    v23 = sub_20E009364();
    MEMORY[0x20F32A4B0](v23);
  }

  v24 = sub_20E008B24();
  v26 = v25;

  v0[62] = v24;
  v0[63] = v26;
  if (v26 >> 60 == 15)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v27 = sub_20E009094();
    __swift_project_value_buffer(v27, qword_27C862698);
    v28 = sub_20E009074();
    v29 = sub_20E009544();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20DF62000, v28, v29, "Unable to generate encoded Token Key.", v30, 2u);
      MEMORY[0x20F32B3A0](v30, -1, -1);
    }

    v31 = v0[58];

    sub_20DFC4CCC();
    swift_allocError();
    *v32 = 2;
    swift_willThrow();
LABEL_34:
    sub_20DF85E5C(v31);
    v53 = v0[58];
    v54 = v0[55];

    v55 = v0[1];

    return v55();
  }

  v33 = v0[54];

  v34 = sub_20E0091C4();

  if (v33)
  {
    v35 = sub_20E009414();
  }

  else
  {
    v35 = 0;
  }

  v36 = [objc_allocWithZone(MEMORY[0x277D2CA58]) initRSABlindSignatureChallengeWithIssuerName:v34 redemptionNonce:0 originNames:{v35, v56, v57, v58, v59}];
  v0[64] = v36;

  v37 = [v36 challengeData];
  if (!v37)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v48 = sub_20E009094();
    __swift_project_value_buffer(v48, qword_27C862698);
    v49 = sub_20E009074();
    v50 = sub_20E009544();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_20DF62000, v49, v50, "Unable to generate challenge data", v51, 2u);
      MEMORY[0x20F32B3A0](v51, -1, -1);
    }

    v31 = v0[58];

    sub_20DFC4CCC();
    swift_allocError();
    *v52 = 3;
    swift_willThrow();
    sub_20DF64DE8(v24, v26);

    goto LABEL_34;
  }

  v38 = v37;
  v39 = sub_20E008B84();
  v41 = v40;

  v0[65] = v39;
  v0[66] = v41;
  v42 = objc_allocWithZone(MEMORY[0x277D2CA60]);
  sub_20DF67FA8(v39, v41);
  sub_20DF8F738(v24, v26);
  v43 = sub_20E008B64();
  v44 = sub_20E008B64();
  v45 = [v42 initWithChallenge:v43 tokenKey:v44 originNameKey:0];
  v0[67] = v45;

  sub_20DF64DE8(v24, v26);
  sub_20DF67FFC(v39, v41);
  [v45 setSystemClient_];
  if (qword_27C852020 != -1)
  {
    swift_once();
  }

  v46 = qword_27C862630;
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_20DFC2930;
  v47 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F20, &unk_20E0106E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DFC3A50;
  v0[13] = &block_descriptor_0;
  v0[14] = v47;
  [v45 fetchTokenWithQueue:v46 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DFC2930()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 544) = v2;
  if (v2)
  {
    v3 = sub_20DFC3308;
  }

  else
  {
    v3 = sub_20DFC2A40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DFC2A40()
{
  v67 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(v1 + 16) == *(v1 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v3)
  {
    if (v1 == v1 >> 32)
    {
LABEL_11:
      sub_20DFC4CCC();
      v20 = swift_allocError();
      *v21 = 1;
      swift_willThrow();
      sub_20DF67FFC(v1, v2);
      *(v0 + 552) = v20;
      if (qword_27C852068 != -1)
      {
        swift_once();
      }

      v22 = sub_20E009094();
      __swift_project_value_buffer(v22, qword_27C862698);
      v23 = sub_20E009074();
      v24 = sub_20E009544();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_20DF62000, v23, v24, "Error while trying to fetch Private Access Token", v25, 2u);
        MEMORY[0x20F32B3A0](v25, -1, -1);
      }

      v26 = sub_20E008A24();
      *(v0 + 560) = v26;
      if ([v26 code] != 1007)
      {
        goto LABEL_19;
      }

      v27 = sub_20E009074();
      v28 = sub_20E009544();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_20DF62000, v27, v28, "Private Access Token Error caused by Token issuance server error", v29, 2u);
        MEMORY[0x20F32B3A0](v29, -1, -1);
      }

      v30 = *(v0 + 600);

      if ((v30 & 1) == 0)
      {
        v53 = sub_20E009074();
        v54 = sub_20E009554();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_20DF62000, v53, v54, "Trying to fetch token again.", v55, 2u);
          MEMORY[0x20F32B3A0](v55, -1, -1);
        }

        v56 = swift_task_alloc();
        *(v0 + 568) = v56;
        *v56 = v0;
        v56[1] = sub_20DFC30EC;
        v57 = *(v0 + 432);

        return sub_20DFC1D5C(v57, 1);
      }

      else
      {
LABEL_19:

        v31 = v20;
        v32 = sub_20E009074();
        v33 = sub_20E009544();

        v65 = v20;
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v66 = v35;
          *v34 = 136315138;
          swift_getErrorValue();
          v37 = *(v0 + 144);
          v36 = *(v0 + 152);
          v38 = *(v0 + 160);
          v39 = sub_20E0099E4();
          v41 = sub_20DF74468(v39, v40, &v66);

          *(v34 + 4) = v41;
          _os_log_impl(&dword_20DF62000, v32, v33, "%s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x20F32B3A0](v35, -1, -1);
          MEMORY[0x20F32B3A0](v34, -1, -1);
        }

        v42 = *(v0 + 536);
        v43 = *(v0 + 528);
        v44 = *(v0 + 520);
        v46 = *(v0 + 504);
        v45 = *(v0 + 512);
        v47 = *(v0 + 496);
        v48 = *(v0 + 464);
        swift_allocError();
        *v49 = 1;
        swift_willThrow();
        sub_20DF67FFC(v44, v43);
        sub_20DF64DE8(v47, v46);

        sub_20DF85E5C(v48);
        v50 = *(v0 + 464);
        v51 = *(v0 + 440);

        v52 = *(v0 + 8);

        return v52();
      }
    }
  }

  else if ((v2 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v63 = *(v0 + 536);
  v64 = *(v0 + 512);
  v60 = *(v0 + 528);
  v61 = *(v0 + 504);
  v58 = *(v0 + 520);
  v59 = *(v0 + 496);
  v4 = *(v0 + 488);
  v62 = *(v0 + 464);
  v5 = *(v0 + 432);
  *(v0 + 280) = sub_20E008B74();
  *(v0 + 288) = v6;
  *(v0 + 296) = 43;
  *(v0 + 304) = 0xE100000000000000;
  *(v0 + 312) = 45;
  *(v0 + 320) = 0xE100000000000000;
  v7 = sub_20E0095F4();
  v9 = v8;

  *(v0 + 328) = v7;
  *(v0 + 336) = v9;
  *(v0 + 344) = 47;
  *(v0 + 352) = 0xE100000000000000;
  *(v0 + 360) = 95;
  *(v0 + 368) = 0xE100000000000000;
  v10 = sub_20E0095F4();
  v12 = v11;

  *(v0 + 376) = v10;
  *(v0 + 384) = v12;
  *(v0 + 392) = 61;
  *(v0 + 400) = 0xE100000000000000;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0xE000000000000000;
  v13 = sub_20E0095F4();
  v15 = v14;

  sub_20DFC47D0(v5, v13, v15);
  sub_20DF67FFC(v58, v60);
  sub_20DF64DE8(v59, v61);
  sub_20DF67FFC(v1, v2);

  sub_20DF85E5C(v62);
  v16 = *(v0 + 464);
  v17 = *(v0 + 440);

  v18 = *(v0 + 8);

  return v18(v13, v15);
}