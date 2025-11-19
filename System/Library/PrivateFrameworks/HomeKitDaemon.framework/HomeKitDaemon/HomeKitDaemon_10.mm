uint64_t sub_229631788()
{
  v14[3] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() driver];
  v1 = [v0 homeManager];

  v2 = [objc_opt_self() sharedSettings];
  if (([v2 isKeychainSyncEnabled] & 1) == 0)
  {
    goto LABEL_6;
  }

  result = [v1 reachabilityMonitor];
  if (result)
  {
    v4 = result;
    v5 = [result isReachable];

    if (v5)
    {
      v6 = [objc_allocWithZone(HMDCloudKitReachabilitySource) init];
      v14[0] = 0;
      v7 = [v6 areCloudKitServersReachableWithError_];
      v8 = v14[0];
      if (v7 == 1)
      {
        v9 = v14[0];
        sub_22A4DBD0C();

        result = 1;
LABEL_8:
        v10 = *MEMORY[0x277D85DE8];
        return result;
      }

      v14[0] = 0;
      v14[1] = 0xE000000000000000;
      v11 = v8;
      sub_22A4DE1FC();
      MEMORY[0x22AAD08C0](0xD000000000000036, 0x800000022A58E220);
      v14[2] = v8;
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2D0, &qword_22A57B5F8);
      v13 = sub_22A4DD64C();
      MEMORY[0x22AAD08C0](v13);

      sub_22A4DBD3C();

LABEL_7:

      result = 0;
      goto LABEL_8;
    }

LABEL_6:
    sub_22A4DBD3C();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_229631A04()
{
  result = qword_281401C60;
  if (!qword_281401C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401C60);
  }

  return result;
}

uint64_t sub_229631A50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_22963046C(v2, v3, v4);
}

uint64_t sub_229631AF8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229569B30;

  return sub_229630D98(v8, a1, a2, v6, v7);
}

uint64_t sub_229631BBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229631318(a1, v4, v5, v7);
}

uint64_t sub_229631C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_229631CE4()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_229631400(v4);
}

uint64_t sub_229631DA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

char *sub_229631EFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 16) = xmmword_22A5761B0;
  *(inited + 40) = 0x800000022A58E350;
  v3 = [v1 availableStreamHandlerCount];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000017;
  *(inited + 64) = 0x800000022A58E370;
  v4 = [v1 inUseStreamHandlerCount];
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD000000000000028;
  *(inited + 88) = 0x800000022A58E400;
  v5 = [v1 availableStreamHandlerCount];
  result = [v1 inUseStreamHandlerCount];
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v7 = sub_22956AC48(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
    swift_arrayDestroy();
    return v7;
  }

  return result;
}

void __swiftcall HMDCameraSettingProactiveReaderLogEvent.init()(HMDCameraSettingProactiveReaderLogEvent *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void __swiftcall HMDCameraSettingProactiveReaderLogEvent.init(startTime:)(HMDCameraSettingProactiveReaderLogEvent *__return_ptr retstr, Swift::Double startTime)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v3 initWithStartTime_];
}

uint64_t sub_2296321FC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t _s9LifeCycleOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9LifeCycleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2296323AC()
{
  result = qword_27D87E298;
  if (!qword_27D87E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E298);
  }

  return result;
}

uint64_t sub_229632400()
{
  v1 = *(*(type metadata accessor for HomePassState(0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_2296324C4;

  return sub_229633120(v2);
}

uint64_t sub_2296324C4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_229656528;
  }

  else
  {
    v3 = sub_2296325D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296325D8()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229632674, v1, 0);
}

uint64_t sub_229632674()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v6 = v0;
  v6[1] = sub_22963277C;

  return v9(v0 + 2, &unk_22A57BA60, v4, v7);
}

uint64_t sub_22963277C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_229632A60;
  }

  else
  {
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);

    v5 = sub_2296328A0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296328A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_22963294C;
  v4 = *(v0 + 64);

  return sub_229633730(v4);
}

uint64_t sub_22963294C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_229656538;
  }

  else
  {
    v5 = sub_229632AC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229632A60()
{
  v1 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_229656534, 0, 0);
}

uint64_t sub_229632AC8()
{
  if (v0[16])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[18] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_229632C04, v1, 0);
  }

  else
  {
    v2 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);
    v4 = v0[8];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_229632C04()
{
  v1 = v0[16];
  v2 = *(v0[18] + 112);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_229632CF0;

  return v7();
}

uint64_t sub_229632CF0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_229632FBC;
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);

    v5 = sub_229632E14;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229632E14()
{
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_229632EA8;
  v2 = *(v0 + 64);

  return sub_229633730(v2);
}

uint64_t sub_229632EA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v7 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v5 = sub_229656514;
  }

  else
  {
    v5 = sub_229633024;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229632FBC()
{
  v1 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_229656510, 0, 0);
}

uint64_t sub_229633024()
{
  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[8];
  if (v1)
  {
    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000020;
    v4[1] = 0x800000022A58EBE0;
    swift_willThrow();

    sub_229656184(v3);
    v5 = v0[8];
  }

  else
  {

    sub_229656184(v3);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_229633120(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_22A4DB7DC();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for HomePassData(0);
  v1[19] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229633234, 0, 0);
}

uint64_t sub_229633234()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  sub_22A4DB7CC();
  sub_22A4DB7CC();
  sub_22A4DB7CC();
  sub_229647574((v0 + 16));
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  sub_22A4DB7CC();
  sub_22A4DB76C();
  (*(v5 + 8))(v4, v6);
  v7 = sub_2295ACB54(4);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = MEMORY[0x22AAD0860](v7, v9, v11, v13);
  v16 = v15;

  v17 = productClass();
  v18 = [objc_opt_self() createGroupResolvingKey];
  if (v18)
  {
    v19 = v18;
    v20 = sub_22A4DB62C();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  *(v0 + 80) = v20;
  *(v0 + 88) = v22;
  v46 = MEMORY[0x277CC9318];
  sub_22A4DBD4C();
  sub_229590D18(*(v0 + 80), *(v0 + 88));
  v52 = *(v0 + 72);
  v53 = *(v0 + 64);
  v24 = [objc_opt_self() systemStore];
  v51 = [v24 getPreferredHH2ControllerKey];

  v25 = [objc_opt_self() createNIST256KeyPair];
  v55 = v14;
  v56 = v16;
  v54 = v17;
  if (v25)
  {
    v26 = v25;
    v27 = sub_22A4DB62C();
    v48 = v28;
    v49 = v27;
  }

  else
  {
    v48 = 0xF000000000000000;
    v49 = 0;
  }

  v29 = *(v0 + 152);
  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v47 = *(v0 + 144);
  v32 = *(v0 + 128);
  v50 = *(v0 + 120);
  v34 = *(v0 + 104);
  v33 = *(v0 + 112);
  v35 = *(v0 + 96);
  *v30 = 1;
  v36 = *(v33 + 32);
  v36(&v30[v29[5]]);
  (v36)(&v30[v29[6]], v31, v34);
  (v36)(&v30[v29[7]], v32, v34);
  v37 = &v30[v29[8]];
  v38 = *(v0 + 16);
  v39 = *(v0 + 48);
  v37[1] = *(v0 + 32);
  v37[2] = v39;
  *v37 = v38;
  v40 = &v30[v29[9]];
  *v40 = v55;
  v40[1] = v56;
  *&v30[v29[10]] = v54;
  v30[v29[11]] = 1;
  v30[v29[12]] = 0;
  *&v30[v29[13]] = 0;
  *&v30[v29[14]] = xmmword_22A57B6B0;
  v41 = &v30[v29[15]];
  *v41 = v53;
  v41[1] = v52;
  *&v30[v29[16]] = MEMORY[0x277D84F90];
  v30[v29[17]] = 1;
  v30[v29[18]] = 1;
  v30[v29[19]] = 1;
  *&v30[v29[20]] = v51;
  v42 = &v30[v29[21]];
  *v42 = v49;
  v42[1] = v48;
  v43 = &v30[v29[22]];
  *v43 = 0;
  v43[1] = 0;
  v30[v29[23]] = 1;
  *v35 = MEMORY[0x277D84FA0];
  *(v35 + 8) = 512;
  *(v35 + 10) = 16843009;
  *(v35 + 16) = 6;
  *(v35 + 24) = 0;
  v44 = type metadata accessor for HomePassState(0);
  sub_229656450(v30, v35 + *(v44 + 48));

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_229633750()
{
  v1 = v0[3];
  v2 = objc_opt_self();
  v3 = v1 + *(type metadata accessor for HomePassState(0) + 48);
  v4 = type metadata accessor for HomePassData(0);
  v5 = v3 + *(v4 + 20);
  v6 = sub_22A4DB77C();
  v7 = v3 + *(v4 + 28);
  v8 = sub_22A4DB77C();
  v9 = [v2 passSerialNumberWithHomeUUID:v6 userUUID:v8];

  v10 = sub_22A4DD5EC();
  v12 = v11;

  v0[4] = v10;
  v0[5] = v12;
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  v13 = static PassLibrary.shared;
  v0[6] = static PassLibrary.shared;
  if (qword_281402FC0 != -1)
  {
    v15 = v13;
    swift_once();
    v13 = v15;
  }

  v14 = unk_281405100;
  v0[7] = qword_2814050F8;
  v0[8] = v14;

  return MEMORY[0x2822009F8](sub_2296338D8, v13, 0);
}

uint64_t sub_2296338D8()
{
  v9 = *(v0 + 56);
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(*(v0 + 48) + 112);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  *v6 = v0;
  v6[1] = sub_2296339F0;

  return v10(v0 + 16, &unk_22A57B7C0, v4, v7);
}

uint64_t sub_2296339F0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = sub_229633B44;
  }

  else
  {
    v6 = v2[9];
    v7 = v2[5];
    v8 = v2[6];

    v5 = sub_229633B28;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229633B44()
{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_229633BB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229569B30;

  return sub_229632400();
}

uint64_t sub_229633C40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296348D4();
}

uint64_t sub_229633CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22963581C();
}

uint64_t sub_229633D58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229636618();
}

uint64_t sub_229633DE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229637500();
}

uint64_t sub_229633E70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229638270();
}

uint64_t sub_229633EFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296390A8();
}

uint64_t sub_229633F88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229639D38();
}

uint64_t sub_229634014()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22963A94C();
}

uint64_t sub_2296340A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22963B550();
}

uint64_t sub_22963412C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22963C220();
}

uint64_t sub_2296341B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22963CF9C();
}

uint64_t sub_229634244()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22963ED38();
}

uint64_t sub_2296342D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296417E8();
}

uint64_t sub_22963435C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229642754();
}

uint64_t sub_2296343E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296430D0();
}

uint64_t sub_229634474()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296438A4();
}

uint64_t sub_229634500()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229644788();
}

uint64_t sub_22963458C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22964550C();
}

uint64_t sub_229634618()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296479B0();
}

uint64_t sub_2296346A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_2296494D0();
}

uint64_t sub_229634730()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22964AF94();
}

uint64_t sub_2296347BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22964F018();
}

uint64_t sub_229634848()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229654A30();
}

uint64_t sub_2296348D4()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[14] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_22963499C;

  return sub_229633120(v3);
}

uint64_t sub_22963499C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_2296356D4;
  }

  else
  {
    v3 = sub_229634AB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229634AB0()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 144) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229634B4C, v1, 0);
}

uint64_t sub_229634B4C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[19] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[20] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[21] = v7;
  *v6 = v0;
  v6[1] = sub_229634C58;

  return v9(v0 + 2, &unk_22A57BA48, v4, v7);
}

uint64_t sub_229634C58()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_229634F3C;
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);

    v5 = sub_229634D7C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229634D7C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_229634E28;
  v4 = *(v0 + 120);

  return sub_229633730(v4);
}

uint64_t sub_229634E28(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v7 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_229635738;
  }

  else
  {
    v5 = sub_229635010;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229634F3C()
{
  v1 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_229634FA4, 0, 0);
}

uint64_t sub_229634FA4()
{
  sub_229656184(v0[15]);
  v1 = v0[22];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229635010()
{
  if (v0[24])
  {
    v1 = v0[18];
    *(v0[15] + *(v0[14] + 48)) = 0;

    return MEMORY[0x2822009F8](sub_22963511C, v1, 0);
  }

  else
  {
    v2 = v0[15];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);
    v4 = v0[15];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22963511C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[26] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_229635210;
  v7 = v0[21];

  return v9(v0 + 8, &unk_22A57BA50, v4, v7);
}

uint64_t sub_229635210()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_2296354F8;
  }

  else
  {
    v6 = *(v2 + 208);
    v7 = *(v2 + 144);

    v5 = sub_229635338;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229635338()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_2296353E4;
  v4 = *(v0 + 120);

  return sub_229633730(v4);
}

uint64_t sub_2296353E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v7 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v5 = sub_2296357A4;
  }

  else
  {
    v5 = sub_2296355D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2296354F8()
{
  v1 = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_229635560, 0, 0);
}

uint64_t sub_229635560()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);
  v2 = *(v0 + 224);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2296355D8()
{
  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[15];
  if (v1)
  {
    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000014;
    v4[1] = 0x800000022A58E730;
    swift_willThrow();

    sub_229656184(v3);
    v5 = v0[15];
  }

  else
  {

    sub_229656184(v3);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_2296356D4()
{
  v1 = v0[17];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229635738()
{
  sub_229656184(v0[15]);
  v1 = v0[25];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2296357A4()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);
  v2 = *(v0 + 248);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22963581C()
{
  v1 = *(*(type metadata accessor for HomePassState(0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_2296358E0;

  return sub_229633120(v2);
}

uint64_t sub_2296358E0()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_229656528;
  }

  else
  {
    v3 = sub_2296359F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296359F4()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229635A90, v1, 0);
}

uint64_t sub_229635A90()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v6 = v0;
  v6[1] = sub_229635B98;

  return v9(v0 + 2, &unk_22A57BA38, v4, v7);
}

uint64_t sub_229635B98()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_229632A60;
  }

  else
  {
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);

    v5 = sub_229635CBC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229635CBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_229635D68;
  v4 = *(v0 + 64);

  return sub_229633730(v4);
}

uint64_t sub_229635D68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_229636534;
  }

  else
  {
    v5 = sub_229635E7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229635E7C()
{
  if (v0[16])
  {
    v1 = v0[11];
    v0[18] = sub_22A4DBCDC();

    return MEMORY[0x2822009F8](sub_229635F88, v1, 0);
  }

  else
  {
    v2 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);
    v4 = v0[8];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_229635F88()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = *(v2 + 112);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_229636078;

  return v8();
}

uint64_t sub_229636078()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_229636350;
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 88);

    v5 = sub_2296361A0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296361A0()
{
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_22963623C;
  v2 = *(v0 + 64);

  return sub_229633730(v2);
}

uint64_t sub_22963623C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v7 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v5 = sub_2296365A0;
  }

  else
  {
    v5 = sub_229636438;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229636350()
{
  v1 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_2296363C0, 0, 0);
}

uint64_t sub_2296363C0()
{
  v1 = *(v0 + 64);

  sub_229656184(v1);
  v2 = *(v0 + 168);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229636438()
{
  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[8];
  if (v1)
  {
    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000014;
    v4[1] = 0x800000022A58E730;
    swift_willThrow();

    sub_229656184(v3);
    v5 = v0[8];
  }

  else
  {

    sub_229656184(v3);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_229636534()
{
  sub_229656184(v0[8]);
  v1 = v0[17];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2296365A0()
{
  v1 = *(v0 + 64);

  sub_229656184(v1);
  v2 = *(v0 + 192);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229636618()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[14] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_2296366E0;

  return sub_229633120(v3);
}

uint64_t sub_2296366E0()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_22965652C;
  }

  else
  {
    v3 = sub_2296367F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296367F4()
{
  v1 = *(v0 + 120);
  v2 = *(*(v0 + 112) + 48);
  *(v0 + 60) = v2;
  v3 = v1 + v2;
  v4 = type metadata accessor for HomePassData(0);
  *(v0 + 144) = v4;
  *(v3 + *(v4 + 72)) = 2;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v5 = static PassUpdater.shared;
  *(v0 + 152) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_2296368B8, v5, 0);
}

uint64_t sub_2296368B8()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[20] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[21] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[22] = v7;
  *v6 = v0;
  v6[1] = sub_2296369C4;

  return v9(v0 + 2, &unk_22A57BA20, v4, v7);
}

uint64_t sub_2296369C4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_229636CBC;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);

    v5 = sub_229636AE8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229636AE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_229636B94;
  v4 = *(v0 + 120);

  return sub_229633730(v4);
}

uint64_t sub_229636B94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = sub_229656550;
  }

  else
  {
    *(v4 + 208) = a1;
    v7 = sub_229636D90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_229636CBC()
{
  v1 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_229636D24, 0, 0);
}

uint64_t sub_229636D24()
{
  sub_229656184(v0[15]);
  v1 = v0[23];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229636D90()
{
  v1 = *(v0 + 208);
  if (v1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v2 = *(v0 + 152);
    *(*(v0 + 120) + *(v0 + 60) + *(*(v0 + 144) + 68)) = 0;

    return MEMORY[0x2822009F8](sub_229636ED0, v2, 0);
  }

  else
  {
    v3 = *(v0 + 120);
    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000023;
    v4[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v3);
    v5 = *(v0 + 120);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_229636ED0()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[27] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_229636FC4;
  v7 = v0[22];

  return v9(v0 + 8, &unk_22A57BA28, v4, v7);
}

uint64_t sub_229636FC4()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v9 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_2296372AC;
  }

  else
  {
    v6 = *(v2 + 216);
    v7 = *(v2 + 152);

    v5 = sub_2296370EC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296370EC()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  v3 = swift_task_alloc();
  *(v0 + 240) = v3;
  *v3 = v0;
  v3[1] = sub_229637198;
  v4 = *(v0 + 120);

  return sub_229633730(v4);
}

uint64_t sub_229637198(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v7 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = sub_229637488;
  }

  else
  {
    v5 = sub_22963738C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2296372AC()
{
  v1 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_229637314, 0, 0);
}

uint64_t sub_229637314()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);
  v2 = *(v0 + 232);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22963738C()
{
  v1 = v0[31];
  v2 = v0[26];
  v3 = v0[15];
  if (v1)
  {
    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000014;
    v4[1] = 0x800000022A58E730;
    swift_willThrow();

    sub_229656184(v3);
    v5 = v0[15];
  }

  else
  {

    sub_229656184(v3);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_229637488()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);
  v2 = *(v0 + 256);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229637500()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[14] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_2296375C8;

  return sub_229633120(v3);
}

uint64_t sub_2296375C8()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_22965652C;
  }

  else
  {
    v3 = sub_2296376DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296376DC()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 144) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229637778, v1, 0);
}

uint64_t sub_229637778()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[19] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[20] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[21] = v7;
  *v6 = v0;
  v6[1] = sub_229637884;

  return v9(v0 + 2, &unk_22A57BA08, v4, v7);
}

uint64_t sub_229637884()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_229637B7C;
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);

    v5 = sub_2296379A8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296379A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_229637A54;
  v4 = *(v0 + 120);

  return sub_229633730(v4);
}

uint64_t sub_229637A54(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_22965654C;
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = sub_229637BE4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_229637B7C()
{
  v1 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_22965653C, 0, 0);
}

uint64_t sub_229637BE4()
{
  v1 = v0[25];
  if (v1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v2 = v0[18];
    v3 = v0[15] + *(v0[14] + 48);
    *(v3 + *(type metadata accessor for HomePassData(0) + 92)) = 0;

    return MEMORY[0x2822009F8](sub_229637D30, v2, 0);
  }

  else
  {
    v4 = v0[15];
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000023;
    v5[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v4);
    v6 = v0[15];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_229637D30()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[26] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_229637E24;
  v7 = v0[21];

  return v9(v0 + 8, &unk_22A57BA10, v4, v7);
}

uint64_t sub_229637E24()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_22963810C;
  }

  else
  {
    v6 = *(v2 + 208);
    v7 = *(v2 + 144);

    v5 = sub_229637F4C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229637F4C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_229637FF8;
  v4 = *(v0 + 120);

  return sub_229633730(v4);
}

uint64_t sub_229637FF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v7 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v5 = sub_229656520;
  }

  else
  {
    v5 = sub_229638174;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22963810C()
{
  v1 = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_22965651C, 0, 0);
}

uint64_t sub_229638174()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[15];
  if (v1)
  {
    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000014;
    v4[1] = 0x800000022A58E730;
    swift_willThrow();

    sub_229656184(v3);
    v5 = v0[15];
  }

  else
  {

    sub_229656184(v3);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_229638270()
{
  v1 = *(*(type metadata accessor for HomePassState(0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_229638334;

  return sub_229633120(v2);
}

uint64_t sub_229638334()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_229656528;
  }

  else
  {
    v3 = sub_229638448;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229638448()
{
  v1 = *(v0 + 64);
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_2296384F4, v2, 0);
}

uint64_t sub_2296384F4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v6 = v0;
  v6[1] = sub_2296385FC;

  return v9(v0 + 2, &unk_22A57B9F0, v4, v7);
}

uint64_t sub_2296385FC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_2296388D8;
  }

  else
  {
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);

    v5 = sub_229638720;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229638720()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  *(v0 + 120) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2296387A0, 0, 0);
}

uint64_t sub_2296387A0()
{
  if (v0[15] == 3)
  {
    v1 = swift_task_alloc();
    v0[16] = v1;
    *v1 = v0;
    v1[1] = sub_2296389AC;
    v2 = v0[8];

    return sub_229633730(v2);
  }

  else
  {
    v4 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000021;
    v5[1] = 0x800000022A58EA30;
    swift_willThrow();
    sub_229656184(v4);
    v6 = v0[8];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2296388D8()
{
  v1 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_229638940, 0, 0);
}

uint64_t sub_229638940()
{
  sub_229656184(v0[8]);
  v1 = v0[14];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2296389AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_22963903C;
  }

  else
  {
    v5 = sub_229638AC0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229638AC0()
{
  if (v0[17])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[19] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_229638BFC, v1, 0);
  }

  else
  {
    v2 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);
    v4 = v0[8];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_229638BFC()
{
  v1 = *(v0 + 17);
  v2 = *(*(v0 + 19) + 112);
  v3 = swift_task_alloc();
  *(v0 + 20) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 21) = v5;
  *v5 = v0;
  v5[1] = sub_229638CEC;

  return v7(v0 + 57, &unk_22A57B9F8, v3, &type metadata for ExpressSettings);
}

uint64_t sub_229638CEC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_229638F5C;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);

    v5 = sub_229638E10;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229638E10()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_229638E3C, 0, 0);
}

uint64_t sub_229638E3C()
{
  if (*(v0 + 59) == 1)
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 64);
    if (*(v0 + 60))
    {

      sub_229656184(v2);

      v3 = *(v0 + 8);
      goto LABEL_7;
    }

    v4 = 541218645;
  }

  else
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 64);
    v4 = 541279822;
  }

  sub_2296561E0();
  swift_allocError();
  *v5 = v4 | 0x20746F6E00000000;
  v5[1] = 0xEF64656C62616E65;
  swift_willThrow();

  sub_229656184(v2);
  v6 = *(v0 + 64);

  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

uint64_t sub_229638F5C()
{
  v1 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_229638FC4, 0, 0);
}

uint64_t sub_229638FC4()
{
  v1 = *(v0 + 64);

  sub_229656184(v1);
  v2 = *(v0 + 176);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22963903C()
{
  sub_229656184(v0[8]);
  v1 = v0[18];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2296390A8()
{
  v1 = *(*(type metadata accessor for HomePassState(0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_22963916C;

  return sub_229633120(v2);
}

uint64_t sub_22963916C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_229656528;
  }

  else
  {
    v3 = sub_229639280;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229639280()
{
  v1 = *(v0 + 64);
  *(v1 + 16) = 2;
  *(v1 + 24) = 0;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22963932C, v2, 0);
}

uint64_t sub_22963932C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v6 = v0;
  v6[1] = sub_229639434;

  return v9(v0 + 2, &unk_22A57B9D8, v4, v7);
}

uint64_t sub_229639434()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_229632A60;
  }

  else
  {
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);

    v5 = sub_229639558;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229639558()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  *(v0 + 120) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2296395D8, 0, 0);
}

uint64_t sub_2296395D8()
{
  if (v0[15] == 1)
  {
    v1 = swift_task_alloc();
    v0[16] = v1;
    *v1 = v0;
    v1[1] = sub_229639710;
    v2 = v0[8];

    return sub_229633730(v2);
  }

  else
  {
    v4 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD00000000000001DLL;
    v5[1] = 0x800000022A58EBC0;
    swift_willThrow();
    sub_229656184(v4);
    v6 = v0[8];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_229639710(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_229656540;
  }

  else
  {
    v5 = sub_229639824;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229639824()
{
  if (v0[17])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[19] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_229639960, v1, 0);
  }

  else
  {
    v2 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);
    v4 = v0[8];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_229639960()
{
  v1 = *(v0 + 17);
  v2 = *(*(v0 + 19) + 112);
  v3 = swift_task_alloc();
  *(v0 + 20) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 21) = v5;
  *v5 = v0;
  v5[1] = sub_229639A50;

  return v7(v0 + 57, &unk_22A57B9E0, v3, &type metadata for ExpressSettings);
}

uint64_t sub_229639A50()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_229639CD0;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);

    v5 = sub_229639B74;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229639B74()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_229639BA0, 0, 0);
}

uint64_t sub_229639BA0()
{
  if (*(v0 + 59) != 1)
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 64);
    v3 = 0xEF64656C62616E65;
    v4 = 0x20746F6E2043464ELL;
    goto LABEL_5;
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 64);
  if (*(v0 + 60))
  {
    v3 = 0x800000022A58EB00;
    v4 = 0xD000000000000021;
LABEL_5:
    sub_2296561E0();
    swift_allocError();
    *v5 = v4;
    v5[1] = v3;
    swift_willThrow();

    sub_229656184(v2);
    v6 = *(v0 + 64);

    v7 = *(v0 + 8);
    goto LABEL_7;
  }

  sub_229656184(v2);

  v7 = *(v0 + 8);
LABEL_7:

  return v7();
}

uint64_t sub_229639CD0()
{
  v1 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_229656518, 0, 0);
}

uint64_t sub_229639D38()
{
  v1 = *(*(type metadata accessor for HomePassState(0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_229639DFC;

  return sub_229633120(v2);
}

uint64_t sub_229639DFC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_229656528;
  }

  else
  {
    v3 = sub_229639F10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229639F10()
{
  v1 = *(v0 + 64);
  *(v1 + 16) = 4;
  *(v1 + 24) = 0;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229639FBC, v2, 0);
}

uint64_t sub_229639FBC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v6 = v0;
  v6[1] = sub_22963A0C4;

  return v9(v0 + 2, &unk_22A57B9C0, v4, v7);
}

uint64_t sub_22963A0C4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_229632A60;
  }

  else
  {
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);

    v5 = sub_22963A1E8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963A1E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  *(v0 + 120) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22963A268, 0, 0);
}

uint64_t sub_22963A268()
{
  if (v0[15] == 2)
  {
    v1 = swift_task_alloc();
    v0[16] = v1;
    *v1 = v0;
    v1[1] = sub_22963A3A0;
    v2 = v0[8];

    return sub_229633730(v2);
  }

  else
  {
    v4 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD00000000000001DLL;
    v5[1] = 0x800000022A58EBA0;
    swift_willThrow();
    sub_229656184(v4);
    v6 = v0[8];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22963A3A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_229656540;
  }

  else
  {
    v5 = sub_22963A4B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22963A4B4()
{
  if (v0[17])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[19] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_22963A5F0, v1, 0);
  }

  else
  {
    v2 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);
    v4 = v0[8];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22963A5F0()
{
  v1 = *(v0 + 17);
  v2 = *(*(v0 + 19) + 112);
  v3 = swift_task_alloc();
  *(v0 + 20) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 21) = v5;
  *v5 = v0;
  v5[1] = sub_22963A6E0;

  return v7(v0 + 57, &unk_22A57B9C8, v3, &type metadata for ExpressSettings);
}

uint64_t sub_22963A6E0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_229639CD0;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);

    v5 = sub_22963A804;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963A804()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_22963A830, 0, 0);
}

uint64_t sub_22963A830()
{
  v1 = 0xD000000000000013;
  if (*(v0 + 59))
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 64);
    v4 = " was not enabled";
    v1 = 0xD000000000000021;
  }

  else
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 64);
    if (*(v0 + 60))
    {

      sub_229656184(v3);

      v5 = *(v0 + 8);
      goto LABEL_7;
    }

    v4 = "NFC was not enabled";
  }

  v6 = v4 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v7 = v1;
  v7[1] = v6;
  swift_willThrow();

  sub_229656184(v3);
  v8 = *(v0 + 64);

  v5 = *(v0 + 8);
LABEL_7:

  return v5();
}

uint64_t sub_22963A94C()
{
  v1 = *(*(type metadata accessor for HomePassState(0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_22963AA10;

  return sub_229633120(v2);
}

uint64_t sub_22963AA10()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_229656528;
  }

  else
  {
    v3 = sub_22963AB24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22963AB24()
{
  v1 = *(v0 + 64);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22963ABCC, v2, 0);
}

uint64_t sub_22963ABCC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v6 = v0;
  v6[1] = sub_22963ACD4;

  return v9(v0 + 2, &unk_22A57B9A8, v4, v7);
}

uint64_t sub_22963ACD4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_229632A60;
  }

  else
  {
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);

    v5 = sub_22963ADF8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963ADF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  *(v0 + 120) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22963AE78, 0, 0);
}

uint64_t sub_22963AE78()
{
  if (v0[15])
  {
    v1 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v2 = 0xD00000000000001CLL;
    v2[1] = 0x800000022A58EB80;
    swift_willThrow();
    sub_229656184(v1);
    v3 = v0[8];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_22963AFAC;
    v7 = v0[8];

    return sub_229633730(v7);
  }
}

uint64_t sub_22963AFAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_229656540;
  }

  else
  {
    v5 = sub_22963B0C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22963B0C0()
{
  if (v0[17])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[19] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_22963B1FC, v1, 0);
  }

  else
  {
    v2 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);
    v4 = v0[8];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22963B1FC()
{
  v1 = *(v0 + 17);
  v2 = *(*(v0 + 19) + 112);
  v3 = swift_task_alloc();
  *(v0 + 20) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 21) = v5;
  *v5 = v0;
  v5[1] = sub_22963B2EC;

  return v7(v0 + 57, &unk_22A57B9B0, v3, &type metadata for ExpressSettings);
}

uint64_t sub_22963B2EC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_229639CD0;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);

    v5 = sub_22963B410;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963B410()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_22963B43C, 0, 0);
}

uint64_t sub_22963B43C()
{
  if (*(v0 + 59))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 64);
    v3 = "NFC was enabled but should not be";
LABEL_5:
    v4 = (v3 - 32) | 0x8000000000000000;
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000021;
    v5[1] = v4;
    swift_willThrow();

    sub_229656184(v2);
    v6 = *(v0 + 64);

    v7 = *(v0 + 8);
    goto LABEL_7;
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 64);
  if (*(v0 + 60))
  {
    v3 = "UWB was enabled but should not be";
    goto LABEL_5;
  }

  sub_229656184(v2);

  v7 = *(v0 + 8);
LABEL_7:

  return v7();
}

uint64_t sub_22963B550()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[8] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_22963B618;

  return sub_229633120(v3);
}

uint64_t sub_22963B618()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_229656530;
  }

  else
  {
    v3 = sub_22963B72C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22963B72C()
{
  v2 = v0[8];
  v1 = v0[9];
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = v1 + *(v2 + 48);
  *(v3 + *(type metadata accessor for HomePassData(0) + 40)) = 1;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v4 = static PassUpdater.shared;
  v0[12] = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22963B7F0, v4, 0);
}

uint64_t sub_22963B7F0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v6 = v0;
  v6[1] = sub_22963B8F8;

  return v9(v0 + 2, &unk_22A57B990, v4, v7);
}

uint64_t sub_22963B8F8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = sub_22963BBDC;
  }

  else
  {
    v7 = *(v2 + 96);
    v6 = *(v2 + 104);

    v5 = sub_22963BA1C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963BA1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_22963BAC8;
  v4 = *(v0 + 72);

  return sub_229633730(v4);
}

uint64_t sub_22963BAC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_22963C1B4;
  }

  else
  {
    v5 = sub_22963BC44;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22963BBDC()
{
  v1 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_229656544, 0, 0);
}

uint64_t sub_22963BC44()
{
  if (v0[17])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[19] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_22963BD80, v1, 0);
  }

  else
  {
    v2 = v0[9];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);
    v4 = v0[9];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22963BD80()
{
  v1 = *(v0 + 17);
  v2 = *(*(v0 + 19) + 112);
  v3 = swift_task_alloc();
  *(v0 + 20) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 21) = v5;
  *v5 = v0;
  v5[1] = sub_22963BE70;

  return v7(v0 + 57, &unk_22A57B998, v3, &type metadata for ExpressSettings);
}

uint64_t sub_22963BE70()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_22963C0D4;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);

    v5 = sub_22963BF94;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963BF94()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_22963BFC0, 0, 0);
}

uint64_t sub_22963BFC0()
{
  if (*(v0 + 59))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 72);
    v3 = "NFC was enabled but should not be";
LABEL_5:
    v4 = (v3 - 32) | 0x8000000000000000;
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000021;
    v5[1] = v4;
    swift_willThrow();

    sub_229656184(v2);
    v6 = *(v0 + 72);

    v7 = *(v0 + 8);
    goto LABEL_7;
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  if (*(v0 + 60))
  {
    v3 = "UWB was enabled but should not be";
    goto LABEL_5;
  }

  sub_229656184(v2);

  v7 = *(v0 + 8);
LABEL_7:

  return v7();
}

uint64_t sub_22963C0D4()
{
  v1 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_22963C13C, 0, 0);
}

uint64_t sub_22963C13C()
{
  v1 = *(v0 + 72);

  sub_229656184(v1);
  v2 = *(v0 + 176);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22963C1B4()
{
  sub_229656184(v0[9]);
  v1 = v0[18];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22963C220()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[8] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_22963C2E8;

  return sub_229633120(v3);
}

uint64_t sub_22963C2E8()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_229656530;
  }

  else
  {
    v3 = sub_22963C3FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22963C3FC()
{
  v2 = v0[8];
  v1 = v0[9];
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = v1 + *(v2 + 48);
  *(v3 + *(type metadata accessor for HomePassData(0) + 40)) = 5;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v4 = static PassUpdater.shared;
  v0[12] = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22963C4C4, v4, 0);
}

uint64_t sub_22963C4C4()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v6 = v0;
  v6[1] = sub_22963C5CC;

  return v9(v0 + 2, &unk_22A57B978, v4, v7);
}

uint64_t sub_22963C5CC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = sub_22963BBDC;
  }

  else
  {
    v7 = *(v2 + 96);
    v6 = *(v2 + 104);

    v5 = sub_22963C6F0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963C6F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  *(v0 + 128) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22963C770, 0, 0);
}

uint64_t sub_22963C770()
{
  if (v0[16] == 3)
  {
    v1 = swift_task_alloc();
    v0[17] = v1;
    *v1 = v0;
    v1[1] = sub_22963C8A8;
    v2 = v0[9];

    return sub_229633730(v2);
  }

  else
  {
    v4 = v0[9];
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000021;
    v5[1] = 0x800000022A58EA30;
    swift_willThrow();
    sub_229656184(v4);
    v6 = v0[9];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22963C8A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_22963CF30;
  }

  else
  {
    v5 = sub_22963C9BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22963C9BC()
{
  if (v0[18])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[20] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_22963CAF8, v1, 0);
  }

  else
  {
    v2 = v0[9];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);
    v4 = v0[9];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22963CAF8()
{
  v1 = *(v0 + 18);
  v2 = *(*(v0 + 20) + 112);
  v3 = swift_task_alloc();
  *(v0 + 21) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 22) = v5;
  *v5 = v0;
  v5[1] = sub_22963CBE8;

  return v7(v0 + 57, &unk_22A57B980, v3, &type metadata for ExpressSettings);
}

uint64_t sub_22963CBE8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = sub_22963CE50;
  }

  else
  {
    v7 = *(v2 + 160);
    v6 = *(v2 + 168);

    v5 = sub_22963CD0C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963CD0C()
{
  v0[59] = v0[57];
  v0[60] = v0[58];
  return MEMORY[0x2822009F8](sub_22963CD38, 0, 0);
}

uint64_t sub_22963CD38()
{
  if (*(v0 + 59) == 1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 72);
    if (*(v0 + 60))
    {

      sub_229656184(v2);

      v3 = *(v0 + 8);
      goto LABEL_7;
    }

    v4 = "UWB was not enabled";
  }

  else
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 72);
    v4 = "NFC was not enabled";
  }

  v5 = (v4 - 32) | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v6 = 0xD000000000000013;
  v6[1] = v5;
  swift_willThrow();

  sub_229656184(v2);
  v7 = *(v0 + 72);

  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

uint64_t sub_22963CE50()
{
  v1 = *(v0 + 168);

  return MEMORY[0x2822009F8](sub_22963CEB8, 0, 0);
}

uint64_t sub_22963CEB8()
{
  v1 = *(v0 + 72);

  sub_229656184(v1);
  v2 = *(v0 + 184);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22963CF30()
{
  sub_229656184(v0[9]);
  v1 = v0[19];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22963CF9C()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[20] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[21] = v3;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_22963D064;

  return sub_229633120(v3);
}

uint64_t sub_22963D064()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_22963EC68;
  }

  else
  {
    v3 = sub_22963D178;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22963D178()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  v3 = *(v2 + 48);
  *(v0 + 108) = v3;
  v4 = v1 + v3;
  v5 = type metadata accessor for HomePassData(0);
  *(v4 + *(v5 + 68)) = 1;
  v6 = *(v5 + 72);
  *(v0 + 156) = v6;
  *(v4 + v6) = 1;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v7 = static PassUpdater.shared;
  *(v0 + 192) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22963D250, v7, 0);
}

uint64_t sub_22963D250()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[25] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[26] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[27] = v7;
  *v6 = v0;
  v6[1] = sub_22963D35C;

  return v9(v0 + 2, &unk_22A57B940, v4, v7);
}

uint64_t sub_22963D35C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v9 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = sub_22963D640;
  }

  else
  {
    v7 = *(v2 + 192);
    v6 = *(v2 + 200);

    v5 = sub_22963D480;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963D480()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_22963D52C;
  v4 = *(v0 + 168);

  return sub_229633730(v4);
}

uint64_t sub_22963D52C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v7 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v5 = sub_22963ECCC;
  }

  else
  {
    v5 = sub_22963D714;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22963D640()
{
  v1 = *(v0 + 200);

  return MEMORY[0x2822009F8](sub_22963D6A8, 0, 0);
}

uint64_t sub_22963D6A8()
{
  sub_229656184(v0[21]);
  v1 = v0[28];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22963D714()
{
  if (v0[30])
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v1 = static PassLibrary.shared;
    v0[32] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_22963D850, v1, 0);
  }

  else
  {
    v2 = v0[21];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000023;
    v3[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v2);
    v4 = v0[21];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22963D850()
{
  v1 = *(v0 + 30);
  v2 = *(*(v0 + 32) + 112);
  v3 = swift_task_alloc();
  *(v0 + 33) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 34) = v5;
  *v5 = v0;
  v5[1] = sub_22963D940;

  return v7(v0 + 57, &unk_22A57B948, v3, &type metadata for ExpressSettings);
}

uint64_t sub_22963D940()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v9 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);
    v5 = sub_22963DBE4;
  }

  else
  {
    v7 = *(v2 + 256);
    v6 = *(v2 + 264);

    v5 = sub_22963DA64;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963DA64()
{
  v0[63] = v0[57];
  v0[105] = v0[58];
  return MEMORY[0x2822009F8](sub_22963DA90, 0, 0);
}

uint64_t sub_22963DA90()
{
  if (*(v0 + 63) == 1)
  {
    if (*(v0 + 105) == 1)
    {
      v1 = *(v0 + 192);
      v2 = *(v0 + 156);
      v3 = *(v0 + 168);
      v4 = v3 + *(v0 + 108);
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      *(v4 + v2) = 2;

      return MEMORY[0x2822009F8](sub_22963DCC4, v1, 0);
    }

    v5 = "UWB was not enabled";
  }

  else
  {
    v5 = "NFC was not enabled";
  }

  v6 = *(v0 + 168);
  v7 = *(v0 + 240);
  v8 = (v5 - 32) | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v9 = 0xD000000000000013;
  v9[1] = v8;
  swift_willThrow();

  sub_229656184(v6);
  v10 = *(v0 + 168);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22963DBE4()
{
  v1 = *(v0 + 264);

  return MEMORY[0x2822009F8](sub_22963DC4C, 0, 0);
}

uint64_t sub_22963DC4C()
{
  v1 = *(v0 + 168);

  sub_229656184(v1);
  v2 = *(v0 + 280);
  v3 = *(v0 + 168);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22963DCC4()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[36] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[37] = v6;
  *v6 = v0;
  v6[1] = sub_22963DDB8;
  v7 = v0[27];

  return v9(v0 + 8, &unk_22A57B950, v4, v7);
}

uint64_t sub_22963DDB8()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = sub_22963E174;
  }

  else
  {
    v6 = *(v2 + 288);
    v7 = *(v2 + 192);

    v5 = sub_22963DEE0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963DEE0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_22963DF5C, v1, 0);
}

uint64_t sub_22963DF5C()
{
  v1 = *(v0 + 30);
  v2 = *(*(v0 + 32) + 112);
  v3 = swift_task_alloc();
  *(v0 + 39) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_22963E04C;

  return v7(v0 + 59, &unk_22A57B958, v3, &type metadata for ExpressSettings);
}

uint64_t sub_22963E04C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v9 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);
    v5 = sub_22963E3CC;
  }

  else
  {
    v6 = *(v2 + 312);
    v7 = *(v2 + 256);

    v5 = sub_22963E254;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963E174()
{
  v1 = *(v0 + 288);

  return MEMORY[0x2822009F8](sub_22963E1DC, 0, 0);
}

uint64_t sub_22963E1DC()
{
  v1 = *(v0 + 168);

  sub_229656184(v1);
  v2 = *(v0 + 304);
  v3 = *(v0 + 168);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22963E254()
{
  v0[106] = v0[59];
  v0[107] = v0[60];
  return MEMORY[0x2822009F8](sub_22963E280, 0, 0);
}

uint64_t sub_22963E280()
{
  v1 = 0xD000000000000013;
  if (*(v0 + 106) != 1)
  {
    v2 = "pass was not in wallet";
    goto LABEL_5;
  }

  if (*(v0 + 107))
  {
    v2 = "as newly enabled";
    v1 = 0xD000000000000021;
LABEL_5:
    v3 = *(v0 + 168);
    v4 = *(v0 + 240);
    v5 = v2 | 0x8000000000000000;
    sub_2296561E0();
    swift_allocError();
    *v6 = v1;
    v6[1] = v5;
    swift_willThrow();

    sub_229656184(v3);
    v7 = *(v0 + 168);

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 192);
  *(*(v0 + 168) + *(v0 + 108) + *(v0 + 156)) = 1;

  return MEMORY[0x2822009F8](sub_22963E4AC, v10, 0);
}

uint64_t sub_22963E3CC()
{
  v1 = *(v0 + 312);

  return MEMORY[0x2822009F8](sub_22963E434, 0, 0);
}

uint64_t sub_22963E434()
{
  v1 = *(v0 + 168);

  sub_229656184(v1);
  v2 = *(v0 + 328);
  v3 = *(v0 + 168);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22963E4AC()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[42] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = sub_22963E5A0;
  v7 = v0[27];

  return v9(v0 + 14, &unk_22A57B960, v4, v7);
}

uint64_t sub_22963E5A0()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = sub_22963E95C;
  }

  else
  {
    v6 = *(v2 + 336);
    v7 = *(v2 + 192);

    v5 = sub_22963E6C8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963E6C8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_22963E744, v1, 0);
}

uint64_t sub_22963E744()
{
  v1 = *(v0 + 30);
  v2 = *(*(v0 + 32) + 112);
  v3 = swift_task_alloc();
  *(v0 + 45) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 46) = v5;
  *v5 = v0;
  v5[1] = sub_22963E834;

  return v7(v0 + 61, &unk_22A57B968, v3, &type metadata for ExpressSettings);
}

uint64_t sub_22963E834()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);
    v5 = sub_22963EB88;
  }

  else
  {
    v6 = *(v2 + 360);
    v7 = *(v2 + 256);

    v5 = sub_22963EA3C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963E95C()
{
  v1 = *(v0 + 336);

  return MEMORY[0x2822009F8](sub_22963E9C4, 0, 0);
}

uint64_t sub_22963E9C4()
{
  v1 = *(v0 + 168);

  sub_229656184(v1);
  v2 = *(v0 + 352);
  v3 = *(v0 + 168);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22963EA3C()
{
  v0[153] = v0[61];
  v0[154] = v0[62];
  return MEMORY[0x2822009F8](sub_22963EA68, 0, 0);
}

uint64_t sub_22963EA68()
{
  v1 = 0xD000000000000013;
  if (*(v0 + 153) != 1)
  {
    v2 = *(v0 + 240);
    v4 = "pass was not in wallet";
    v3 = *(v0 + 168);
    goto LABEL_5;
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 168);
  if (*(v0 + 154))
  {
    v4 = "as newly enabled";
    v1 = 0xD000000000000021;
LABEL_5:
    v5 = v4 | 0x8000000000000000;
    sub_2296561E0();
    swift_allocError();
    *v6 = v1;
    v6[1] = v5;
    swift_willThrow();

    sub_229656184(v3);
    v7 = *(v0 + 168);

    v8 = *(v0 + 8);
    goto LABEL_7;
  }

  sub_229656184(v3);

  v8 = *(v0 + 8);
LABEL_7:

  return v8();
}

uint64_t sub_22963EB88()
{
  v1 = *(v0 + 360);

  return MEMORY[0x2822009F8](sub_22963EBF0, 0, 0);
}

uint64_t sub_22963EBF0()
{
  v1 = *(v0 + 168);

  sub_229656184(v1);
  v2 = *(v0 + 376);
  v3 = *(v0 + 168);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22963EC68()
{
  v1 = v0[23];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22963ECCC()
{
  sub_229656184(v0[21]);
  v1 = v0[31];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22963ED38()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[27] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[28] = v3;
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_22963EE00;

  return sub_229633120(v3);
}

uint64_t sub_22963EE00()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_229641718;
  }

  else
  {
    v3 = sub_22963EF14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22963EF14()
{
  v1 = *(v0 + 224);
  v2 = *(*(v0 + 216) + 48);
  *(v0 + 68) = v2;
  v3 = v1 + v2;
  v4 = type metadata accessor for HomePassData(0);
  *(v3 + v4[17]) = 1;
  v5 = v4[18];
  *(v0 + 116) = v5;
  *(v3 + v5) = 1;
  *(v3 + v4[10]) = 5;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v6 = static PassUpdater.shared;
  *(v0 + 248) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22963EFEC, v6, 0);
}

uint64_t sub_22963EFEC()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[32] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[33] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[34] = v7;
  *v6 = v0;
  v6[1] = sub_22963F0F8;

  return v9(v0 + 2, &unk_22A57B8F8, v4, v7);
}

uint64_t sub_22963F0F8()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = *(v2 + 248);
    v5 = sub_22963F408;
  }

  else
  {
    v7 = *(v2 + 248);
    v6 = *(v2 + 256);

    v5 = sub_22963F21C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22963F21C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  *(v0 + 288) = *(v0 + 48);
  *(v0 + 65) = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_22963F2A4, 0, 0);
}

uint64_t sub_22963F2A4()
{
  v1 = 0xD000000000000021;
  if (*(v0 + 288) == 3)
  {
    if (*(v0 + 65) == 1)
    {
      v2 = swift_task_alloc();
      *(v0 + 296) = v2;
      *v2 = v0;
      v2[1] = sub_22963F4DC;
      v3 = *(v0 + 224);

      return sub_229633730(v3);
    }

    v5 = "n't newly enabled";
    v1 = 0xD000000000000023;
  }

  else
  {
    v5 = "addedPaymentApps";
  }

  v6 = *(v0 + 224);
  v7 = v5 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v8 = v1;
  v8[1] = v7;
  swift_willThrow();
  sub_229656184(v6);
  v9 = *(v0 + 224);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22963F408()
{
  v1 = *(v0 + 256);

  return MEMORY[0x2822009F8](sub_22963F470, 0, 0);
}

uint64_t sub_22963F470()
{
  sub_229656184(v0[28]);
  v1 = v0[35];
  v2 = v0[28];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22963F4DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v7 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {
    v5 = sub_22964177C;
  }

  else
  {
    v5 = sub_22963F5F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22963F5F0()
{
  v1 = v0[38];
  if (v1)
  {
    v2 = qword_281402F18;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = static PassLibrary.shared;
    v0[40] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_22963F730, v4, 0);
  }

  else
  {
    v5 = v0[28];
    sub_2296561E0();
    swift_allocError();
    *v6 = 0xD000000000000023;
    v6[1] = 0x800000022A58E4B0;
    swift_willThrow();
    sub_229656184(v5);
    v7 = v0[28];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22963F730()
{
  v1 = *(v0 + 38);
  v2 = *(*(v0 + 40) + 112);
  v3 = swift_task_alloc();
  *(v0 + 41) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 42) = v5;
  *v5 = v0;
  v5[1] = sub_22963F820;

  return v7(v0 + 57, &unk_22A57B900, v3, &type metadata for ExpressSettings);
}

uint64_t sub_22963F820()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(v2 + 344) = v0;

  v5 = *(v2 + 328);
  v6 = *(v2 + 320);
  if (v0)
  {

    v7 = sub_22963FB08;
  }

  else
  {

    v7 = sub_22963F984;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22963F984()
{
  v0[66] = v0[57];
  v0[67] = v0[58];
  return MEMORY[0x2822009F8](sub_22963F9B0, 0, 0);
}

uint64_t sub_22963F9B0()
{
  if (*(v0 + 66) == 1)
  {
    if (*(v0 + 67) == 1)
    {
      v1 = *(v0 + 248);
      v2 = *(v0 + 116);
      v3 = *(v0 + 224);
      v4 = v3 + *(v0 + 68);
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      *(v4 + v2) = 2;

      return MEMORY[0x2822009F8](sub_22963FB9C, v1, 0);
    }

    v5 = "UWB was not enabled";
  }

  else
  {
    v5 = "NFC was not enabled";
  }

  v6 = (v5 - 32) | 0x8000000000000000;
  v7 = *(v0 + 304);
  v8 = *(v0 + 224);

  sub_2296561E0();
  swift_allocError();
  *v9 = 0xD000000000000013;
  v9[1] = v6;
  swift_willThrow();

  sub_229656184(v8);
  v10 = *(v0 + 224);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22963FB24()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);
  v2 = *(v0 + 344);
  v3 = *(v0 + 224);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22963FB9C()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[44] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[45] = v6;
  *v6 = v0;
  v6[1] = sub_22963FC90;
  v7 = v0[34];

  return v9(v0 + 9, &unk_22A57B908, v4, v7);
}

uint64_t sub_22963FC90()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(v2 + 368) = v0;

  v5 = *(v2 + 352);
  if (v0)
  {
    v6 = *(v2 + 248);

    v7 = sub_22963FFE0;
  }

  else
  {
    v6 = *(v2 + 248);

    v7 = sub_22963FDE0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22963FDE0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 88);

  *(v0 + 376) = *(v0 + 104);
  *(v0 + 113) = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_22963FE68, 0, 0);
}

uint64_t sub_22963FE68()
{
  if (*(v0 + 376))
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 224);
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD000000000000030;
    v3[1] = 0x800000022A58EA90;
    swift_willThrow();

LABEL_5:
    sub_229656184(v2);
    v5 = *(v0 + 224);

    v6 = *(v0 + 8);

    return v6();
  }

  if (*(v0 + 113))
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 224);

    sub_2296561E0();
    swift_allocError();
    *v4 = 0xD000000000000020;
    v4[1] = 0x800000022A58EAD0;
    swift_willThrow();
    goto LABEL_5;
  }

  v8 = *(v0 + 320);

  return MEMORY[0x2822009F8](sub_229640074, v8, 0);
}

uint64_t sub_22963FFFC()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);
  v2 = *(v0 + 368);
  v3 = *(v0 + 224);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229640074()
{
  v1 = *(v0 + 38);
  v2 = *(*(v0 + 40) + 112);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 49) = v5;
  *v5 = v0;
  v5[1] = sub_229640164;

  return v7(v0 + 59, &unk_22A57B910, v3, &type metadata for ExpressSettings);
}

uint64_t sub_229640164()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(v2 + 400) = v0;

  v5 = *(v2 + 384);
  v6 = *(v2 + 320);
  if (v0)
  {

    v7 = sub_229640440;
  }

  else
  {

    v7 = sub_2296402C8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2296402C8()
{
  v0[114] = v0[59];
  v0[115] = v0[60];
  return MEMORY[0x2822009F8](sub_2296402F4, 0, 0);
}

uint64_t sub_2296402F4()
{
  v1 = 0xD000000000000013;
  if (*(v0 + 114) != 1)
  {
    v2 = "pass was not in wallet";
    goto LABEL_5;
  }

  if (*(v0 + 115))
  {
    v2 = "as newly enabled";
    v1 = 0xD000000000000021;
LABEL_5:
    v3 = *(v0 + 304);
    v4 = *(v0 + 224);

    sub_2296561E0();
    swift_allocError();
    *v5 = v1;
    v5[1] = v2 | 0x8000000000000000;
    swift_willThrow();

    sub_229656184(v4);
    v6 = *(v0 + 224);

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 248);
  *(*(v0 + 224) + *(v0 + 68) + *(v0 + 116)) = 0;

  return MEMORY[0x2822009F8](sub_2296404D4, v9, 0);
}

uint64_t sub_22964045C()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);
  v2 = *(v0 + 400);
  v3 = *(v0 + 224);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2296404D4()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[51] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[52] = v6;
  *v6 = v0;
  v6[1] = sub_2296405C8;
  v7 = v0[34];

  return v9(v0 + 15, &unk_22A57B918, v4, v7);
}

uint64_t sub_2296405C8()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(v2 + 424) = v0;

  v5 = *(v2 + 408);
  if (v0)
  {
    v6 = *(v2 + 248);

    v7 = sub_229640918;
  }

  else
  {
    v6 = *(v2 + 248);

    v7 = sub_229640718;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_229640718()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 136);

  *(v0 + 432) = *(v0 + 152);
  *(v0 + 161) = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_2296407A0, 0, 0);
}

uint64_t sub_2296407A0()
{
  v1 = *(v0 + 304);
  if (*(v0 + 432))
  {
    v2 = *(v0 + 224);
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD00000000000001CLL;
    v3[1] = 0x800000022A58EB30;
    swift_willThrow();

LABEL_5:
    sub_229656184(v2);
    v6 = *(v0 + 224);

    v7 = *(v0 + 8);

    return v7();
  }

  v4 = *(v0 + 161);

  if (v4)
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 224);
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000020;
    v5[1] = 0x800000022A58EAD0;
    swift_willThrow();
    goto LABEL_5;
  }

  v9 = *(v0 + 320);

  return MEMORY[0x2822009F8](sub_2296409AC, v9, 0);
}

uint64_t sub_229640934()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);
  v2 = *(v0 + 424);
  v3 = *(v0 + 224);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2296409AC()
{
  v1 = *(v0 + 38);
  v2 = *(*(v0 + 40) + 112);
  v3 = swift_task_alloc();
  *(v0 + 55) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_229640A9C;

  return v7(v0 + 61, &unk_22A57B920, v3, &type metadata for ExpressSettings);
}

uint64_t sub_229640A9C()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v9 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = *(v2 + 320);
    v5 = sub_229640D3C;
  }

  else
  {
    v6 = *(v2 + 440);
    v7 = *(v2 + 320);

    v5 = sub_229640BC4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229640BC4()
{
  v0[162] = v0[61];
  v0[163] = v0[62];
  return MEMORY[0x2822009F8](sub_229640BF0, 0, 0);
}

uint64_t sub_229640BF0()
{
  v1 = 0xD000000000000013;
  if (*(v0 + 162) != 1)
  {
    v2 = "pass was not in wallet";
    goto LABEL_5;
  }

  if (*(v0 + 163))
  {
    v2 = "express settings was changed";
    v1 = 0xD000000000000020;
LABEL_5:
    v3 = *(v0 + 304);
    v4 = *(v0 + 224);
    v5 = v2 | 0x8000000000000000;
    sub_2296561E0();
    swift_allocError();
    *v6 = v1;
    v6[1] = v5;
    swift_willThrow();

    sub_229656184(v4);
    v7 = *(v0 + 224);

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 248);
  *(*(v0 + 224) + *(v0 + 68) + *(v0 + 116)) = 1;

  return MEMORY[0x2822009F8](sub_229640E1C, v10, 0);
}

uint64_t sub_229640D3C()
{
  v1 = *(v0 + 440);

  return MEMORY[0x2822009F8](sub_229640DA4, 0, 0);
}

uint64_t sub_229640DA4()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);
  v2 = *(v0 + 456);
  v3 = *(v0 + 224);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229640E1C()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[58] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[59] = v6;
  *v6 = v0;
  v6[1] = sub_229640F10;
  v7 = v0[34];

  return v9(v0 + 21, &unk_22A57B928, v4, v7);
}

uint64_t sub_229640F10()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v9 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = *(v2 + 248);
    v5 = sub_2296411F8;
  }

  else
  {
    v6 = *(v2 + 464);
    v7 = *(v2 + 248);

    v5 = sub_229641038;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229641038()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 184);

  *(v0 + 488) = *(v0 + 200);
  *(v0 + 164) = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_2296410C0, 0, 0);
}

uint64_t sub_2296410C0()
{
  v1 = 0xD00000000000001CLL;
  if (*(v0 + 488) == 2)
  {
    if (*(v0 + 164) == 1)
    {
      v2 = *(v0 + 320);

      return MEMORY[0x2822009F8](sub_2296412D8, v2, 0);
    }

    v3 = "n't newly enabled";
    v1 = 0xD000000000000023;
  }

  else
  {
    v3 = "but should not be";
  }

  v4 = *(v0 + 304);
  v5 = *(v0 + 224);
  v6 = v3 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v7 = v1;
  v7[1] = v6;
  swift_willThrow();

  sub_229656184(v5);
  v8 = *(v0 + 224);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2296411F8()
{
  v1 = *(v0 + 464);

  return MEMORY[0x2822009F8](sub_229641260, 0, 0);
}

uint64_t sub_229641260()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);
  v2 = *(v0 + 480);
  v3 = *(v0 + 224);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2296412D8()
{
  v1 = *(v0 + 38);
  v2 = *(*(v0 + 40) + 112);
  v3 = swift_task_alloc();
  *(v0 + 62) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 63) = v5;
  *v5 = v0;
  v5[1] = sub_2296413C8;

  return v7(v0 + 63, &unk_22A57B930, v3, &type metadata for ExpressSettings);
}

uint64_t sub_2296413C8()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v9 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = *(v2 + 320);
    v5 = sub_229641638;
  }

  else
  {
    v6 = *(v2 + 496);
    v7 = *(v2 + 320);

    v5 = sub_2296414F0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296414F0()
{
  v0[165] = v0[63];
  v0[166] = v0[64];
  return MEMORY[0x2822009F8](sub_22964151C, 0, 0);
}

uint64_t sub_22964151C()
{
  if (*(v0 + 165) == 1)
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 224);
    if (*(v0 + 166))
    {

      sub_229656184(v2);

      v3 = *(v0 + 8);
      goto LABEL_7;
    }

    v4 = "NFC was not enabled";
  }

  else
  {
    v1 = *(v0 + 304);
    v4 = "pass was not in wallet";
    v2 = *(v0 + 224);
  }

  v5 = v4 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v6 = 0xD000000000000013;
  v6[1] = v5;
  swift_willThrow();

  sub_229656184(v2);
  v7 = *(v0 + 224);

  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

uint64_t sub_229641638()
{
  v1 = *(v0 + 496);

  return MEMORY[0x2822009F8](sub_2296416A0, 0, 0);
}

uint64_t sub_2296416A0()
{
  v1 = *(v0 + 224);

  sub_229656184(v1);
  v2 = *(v0 + 512);
  v3 = *(v0 + 224);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229641718()
{
  v1 = v0[30];
  v2 = v0[28];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22964177C()
{
  sub_229656184(v0[28]);
  v1 = v0[39];
  v2 = v0[28];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2296417E8()
{
  v1 = *(*(type metadata accessor for HomePassState(0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_2296418AC;

  return sub_229633120(v2);
}

uint64_t sub_2296418AC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_229641F9C;
  }

  else
  {
    v3 = sub_2296419C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296419C0()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 88) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229641A5C, v1, 0);
}

uint64_t sub_229641A5C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v6 = v0;
  v6[1] = sub_229641B64;

  return v9(v0 + 2, &unk_22A57B8E8, v4, v7);
}

uint64_t sub_229641B64()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_2296388D8;
  }

  else
  {
    v7 = *(v2 + 88);
    v6 = *(v2 + 96);

    v5 = sub_229641C88;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229641C88()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_229641D34;
  v4 = *(v0 + 64);

  return sub_229633730(v4);
}

uint64_t sub_229641D34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_229642000;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_229641E5C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_229641E5C()
{
  v1 = v0[17];
  if (v1 && (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    v4 = v0[16];
    v5 = v1;
    sub_22964206C(v3, 1, 1);
    sub_229656184(v0[8]);

    if (!v4)
    {

      v6 = v0[1];
      goto LABEL_7;
    }
  }

  else
  {
    v7 = v0[8];
    sub_2296561E0();
    swift_allocError();
    *v8 = 0xD000000000000023;
    v8[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v7);
  }

  v9 = v0[8];

  v6 = v0[1];
LABEL_7:

  return v6();
}

uint64_t sub_229641F9C()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229642000()
{
  sub_229656184(v0[8]);
  v1 = v0[16];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

void sub_22964206C(void *a1, char a2, char a3)
{
  v5 = [a1 secureElementPass];
  v50 = a2;
  if (!v5 || (v6 = v5, v7 = [v5 paymentApplications], v6, !v7))
  {
    v14 = 0;
    v15 = 0;
    v8 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_6;
  }

  v49 = a3;
  sub_229562F68(0, &qword_281401930, 0x277D37FE0);
  sub_2296562D4();
  v8 = sub_22A4DDB6C();

  if ((v8 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_22A4DDBAC();
    v9 = v52;
    v10 = v53;
    v12 = v54;
    v11 = v55;
    v13 = v56;
  }

  else
  {
    v18 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v12 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v13 = v20 & *(v8 + 56);
    swift_bridgeObjectRetain_n();
    v11 = 0;
    v9 = v8;
  }

  v21 = (v12 + 64) >> 6;
  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (!sub_22A4DE12C() || (swift_dynamicCast(), v22 = v51, v23 = v11, v24 = v13, !v51))
  {
LABEL_25:
    v48 = 0;
LABEL_26:
    sub_22953EE84();

    if ((v8 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_22A4DE09C();
      sub_22A4DDBAC();
      v27 = v57;
      v28 = v58;
      v29 = v59;
      v30 = v60;
      v31 = v61;
    }

    else
    {
      v32 = -1 << *(v8 + 32);
      v28 = v8 + 56;
      v29 = ~v32;
      v33 = -v32;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v31 = v34 & *(v8 + 56);
      swift_bridgeObjectRetain_n();
      v30 = 0;
      v27 = v8;
    }

    v35 = (v29 + 64) >> 6;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_33:
    if (sub_22A4DE12C())
    {
      swift_dynamicCast();
      v14 = v51;
      i = v30;
      v37 = v31;
      if (v51)
      {
        while ([v14 paymentType] != 1004)
        {

          v30 = i;
          v31 = v37;
          if (v27 < 0)
          {
            goto LABEL_33;
          }

LABEL_36:
          v38 = v30;
          v39 = v31;
          for (i = v30; !v39; ++v38)
          {
            i = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_72;
            }

            if (i >= v35)
            {
              goto LABEL_44;
            }

            v39 = *(v28 + 8 * i);
          }

          v37 = (v39 - 1) & v39;
          v14 = *(*(v27 + 48) + ((i << 9) | (8 * __clz(__rbit64(v39)))));
          if (!v14)
          {
            break;
          }
        }
      }
    }

    else
    {
LABEL_44:
      v14 = 0;
    }

    sub_22953EE84();

    a3 = v49;
    v15 = v48;
    if ((v50 & 1) == 0)
    {
LABEL_46:
      if ((a3 & 1) == 0)
      {
        v16 = 0;
        if (v8)
        {
LABEL_48:
          if ((v8 & 0xC000000000000001) != 0)
          {

            v17 = sub_22A4DE0EC();
          }

          else
          {
            v17 = *(v8 + 16);
          }

LABEL_53:
          sub_22A4DE1FC();
          MEMORY[0x22AAD08C0](0xD000000000000027, 0x800000022A58E570);
          v40 = sub_22A4DE5CC();
          MEMORY[0x22AAD08C0](v40);

          MEMORY[0x22AAD08C0](0x6F6620747562202CLL, 0xEC00000020646E75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2B0, &qword_22A57B7B8);
          v41 = sub_22A4DD64C();
          MEMORY[0x22AAD08C0](v41);

          if (v17 != v16)
          {
            sub_2296561E0();
            swift_allocError();
            *v44 = 0;
            v44[1] = 0xE000000000000000;
LABEL_66:
            swift_willThrow();

            goto LABEL_67;
          }

          if (v50)
          {
            v42 = v15;
            if (!v15)
            {
              sub_2296561E0();
              swift_allocError();
              *v43 = 0x5520676E7373696DLL;
              v43[1] = 0xE900000000000041;
              swift_willThrow();
              v15 = v14;
LABEL_67:

              return;
            }
          }

          else
          {
            v42 = v15;
            if (v15)
            {
              v45 = 0x800000022A58E5A0;
              sub_2296561E0();
              swift_allocError();
              *v46 = 0xD000000000000015;
LABEL_65:
              v46[1] = v45;
              goto LABEL_66;
            }
          }

          if (a3)
          {
            if (!v14)
            {
              sub_2296561E0();
              swift_allocError();
              strcpy(v47, "missng aliro");
              v47[13] = 0;
              *(v47 + 7) = -5120;
              swift_willThrow();
              goto LABEL_67;
            }

            v42 = v15;
            goto LABEL_68;
          }

          if (!v14)
          {
LABEL_68:

            return;
          }

          v45 = 0x800000022A58E5C0;
          sub_2296561E0();
          swift_allocError();
          *v46 = 0xD000000000000018;
          goto LABEL_65;
        }

LABEL_8:
        v17 = 0;
        goto LABEL_53;
      }

LABEL_47:
      v16 = 1;
      if (v8)
      {
        goto LABEL_48;
      }

      goto LABEL_8;
    }

LABEL_6:
    if (a3)
    {
      v16 = 2;
      if (v8)
      {
        goto LABEL_48;
      }

      goto LABEL_8;
    }

    goto LABEL_47;
  }

  while (1)
  {
    if ([v22 paymentType] == 1003)
    {
      v48 = v22;
      goto LABEL_26;
    }

    v11 = v23;
    v13 = v24;
    if (v9 < 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v25 = v11;
    v26 = v13;
    v23 = v11;
    if (!v13)
    {
      break;
    }

LABEL_21:
    v24 = (v26 - 1) & v26;
    v22 = *(*(v9 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v22)
    {
      goto LABEL_25;
    }
  }

  while (1)
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v23 >= v21)
    {
      goto LABEL_25;
    }

    v26 = *(v10 + 8 * v23);
    ++v25;
    if (v26)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t sub_229642754()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[8] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_22964281C;

  return sub_229633120(v3);
}

uint64_t sub_22964281C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_229643000;
  }

  else
  {
    v3 = sub_229642930;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229642930()
{
  v1 = v0[9] + *(v0[8] + 48);
  *(v1 + *(type metadata accessor for HomePassData(0) + 72)) = 2;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  v0[12] = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_2296429EC, v2, 0);
}

uint64_t sub_2296429EC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v6 = v0;
  v6[1] = sub_229642AF4;

  return v9(v0 + 2, &unk_22A57B8D8, v4, v7);
}

uint64_t sub_229642AF4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = sub_229642DEC;
  }

  else
  {
    v7 = *(v2 + 96);
    v6 = *(v2 + 104);

    v5 = sub_229642C18;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229642C18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_229642CC4;
  v4 = *(v0 + 72);

  return sub_229633730(v4);
}

uint64_t sub_229642CC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_229643064;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_229642EC0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_229642DEC()
{
  v1 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_229642E54, 0, 0);
}

uint64_t sub_229642E54()
{
  sub_229656184(v0[9]);
  v1 = v0[15];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229642EC0()
{
  v1 = v0[18];
  if (v1 && (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    v4 = v0[17];
    v5 = v1;
    sub_22964206C(v3, 1, 0);
    sub_229656184(v0[9]);

    if (!v4)
    {

      v6 = v0[1];
      goto LABEL_7;
    }
  }

  else
  {
    v7 = v0[9];
    sub_2296561E0();
    swift_allocError();
    *v8 = 0xD000000000000023;
    v8[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v7);
  }

  v9 = v0[9];

  v6 = v0[1];
LABEL_7:

  return v6();
}

uint64_t sub_229643000()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229643064()
{
  sub_229656184(v0[9]);
  v1 = v0[17];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2296430D0()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[8] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_229643198;

  return sub_229633120(v3);
}

uint64_t sub_229643198()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_229656530;
  }

  else
  {
    v3 = sub_2296432AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296432AC()
{
  v1 = v0[9] + *(v0[8] + 48);
  *(v1 + *(type metadata accessor for HomePassData(0) + 68)) = 0;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  v0[12] = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229643364, v2, 0);
}

uint64_t sub_229643364()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[13] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  *v6 = v0;
  v6[1] = sub_22964346C;

  return v9(v0 + 2, &unk_22A57B8C8, v4, v7);
}

uint64_t sub_22964346C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = sub_22963BBDC;
  }

  else
  {
    v7 = *(v2 + 96);
    v6 = *(v2 + 104);

    v5 = sub_229643590;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229643590()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_22964363C;
  v4 = *(v0 + 72);

  return sub_229633730(v4);
}

uint64_t sub_22964363C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_229656548;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_229643764;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_229643764()
{
  v1 = v0[18];
  if (v1 && (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    v4 = v0[17];
    v5 = v1;
    sub_22964206C(v3, 0, 1);
    sub_229656184(v0[9]);

    if (!v4)
    {

      v6 = v0[1];
      goto LABEL_7;
    }
  }

  else
  {
    v7 = v0[9];
    sub_2296561E0();
    swift_allocError();
    *v8 = 0xD000000000000023;
    v8[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v7);
  }

  v9 = v0[9];

  v6 = v0[1];
LABEL_7:

  return v6();
}

uint64_t sub_2296438A4()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[14] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_22964396C;

  return sub_229633120(v3);
}

uint64_t sub_22964396C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_22965652C;
  }

  else
  {
    v3 = sub_229643A80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229643A80()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 144) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229643B1C, v1, 0);
}

uint64_t sub_229643B1C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[19] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[20] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[21] = v7;
  *v6 = v0;
  v6[1] = sub_229643C28;

  return v9(v0 + 2, &unk_22A57B8B0, v4, v7);
}

uint64_t sub_229643C28()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_229637B7C;
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);

    v5 = sub_229643D4C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229643D4C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_229643DF8;
  v4 = *(v0 + 120);

  return sub_229633730(v4);
}

uint64_t sub_229643DF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_2296446A4;
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = sub_229643F20;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_229643F20()
{
  v1 = v0[25];
  if (!v1 || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) == 0))
  {
    v6 = v0[15];
    sub_2296561E0();
    swift_allocError();
    *v7 = 0xD000000000000023;
    v7[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v6);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = v0[24];
  v5 = v1;
  sub_22964206C(v3, 1, 1);
  if (v4)
  {
    sub_229656184(v0[15]);

LABEL_6:
    v8 = v0[15];

    v9 = v0[1];

    return v9();
  }

  v11 = v0[18];
  v12 = v0[15] + *(v0[14] + 48);
  *(v12 + *(type metadata accessor for HomePassData(0) + 72)) = 2;

  return MEMORY[0x2822009F8](sub_2296440AC, v11, 0);
}

uint64_t sub_2296440AC()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[26] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_2296441A0;
  v7 = v0[21];

  return v9(v0 + 8, &unk_22A57B8B8, v4, v7);
}

uint64_t sub_2296441A0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(v2 + 224) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = *(v2 + 144);

    v7 = sub_2296444B8;
  }

  else
  {
    v6 = *(v2 + 144);

    v7 = sub_2296442F0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2296442F0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_22964439C;
  v4 = *(v0 + 120);

  return sub_229633730(v4);
}

uint64_t sub_22964439C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v7 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {

    v5 = sub_229644710;
  }

  else
  {
    v5 = sub_22964454C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2296444D4()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);
  v2 = *(v0 + 224);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22964454C()
{
  v1 = v0[30];
  if (v1 && (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    v4 = v0[31];
    v5 = v1;
    sub_22964206C(v3, 1, 0);
    v6 = v4;
    v7 = v0[25];
    sub_229656184(v0[15]);

    if (!v6)
    {

      v8 = v0[1];
      goto LABEL_7;
    }
  }

  else
  {
    v9 = v0[25];
    v10 = v0[15];

    sub_2296561E0();
    swift_allocError();
    *v11 = 0xD000000000000016;
    v11[1] = 0x800000022A58E510;
    swift_willThrow();

    sub_229656184(v10);
  }

  v12 = v0[15];

  v8 = v0[1];
LABEL_7:

  return v8();
}

uint64_t sub_2296446A4()
{
  sub_229656184(v0[15]);
  v1 = v0[24];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229644710()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);
  v2 = *(v0 + 248);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229644788()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[14] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_229644850;

  return sub_229633120(v3);
}

uint64_t sub_229644850()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_22965652C;
  }

  else
  {
    v3 = sub_229644964;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229644964()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 144) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229644A00, v1, 0);
}

uint64_t sub_229644A00()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[19] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[20] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[21] = v7;
  *v6 = v0;
  v6[1] = sub_229644B0C;

  return v9(v0 + 2, &unk_22A57B898, v4, v7);
}

uint64_t sub_229644B0C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_229637B7C;
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);

    v5 = sub_229644C30;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229644C30()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_229644CDC;
  v4 = *(v0 + 120);

  return sub_229633730(v4);
}

uint64_t sub_229644CDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_22965654C;
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = sub_229644E04;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_229644E04()
{
  v1 = v0[25];
  if (!v1 || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) == 0))
  {
    v6 = v0[15];
    sub_2296561E0();
    swift_allocError();
    *v7 = 0xD000000000000023;
    v7[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v6);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = v0[24];
  v5 = v1;
  sub_22964206C(v3, 1, 1);
  if (v4)
  {
    sub_229656184(v0[15]);

LABEL_6:
    v8 = v0[15];

    v9 = v0[1];

    return v9();
  }

  v11 = v0[18];
  v12 = v0[15] + *(v0[14] + 48);
  *(v12 + *(type metadata accessor for HomePassData(0) + 68)) = 0;

  return MEMORY[0x2822009F8](sub_229644F8C, v11, 0);
}

uint64_t sub_229644F8C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[26] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_229645080;
  v7 = v0[21];

  return v9(v0 + 8, &unk_22A57B8A0, v4, v7);
}

uint64_t sub_229645080()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(v2 + 224) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = *(v2 + 144);

    v7 = sub_229645398;
  }

  else
  {
    v6 = *(v2 + 144);

    v7 = sub_2296451D0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2296451D0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_22964527C;
  v4 = *(v0 + 120);

  return sub_229633730(v4);
}

uint64_t sub_22964527C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v7 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {

    v5 = sub_229656520;
  }

  else
  {
    v5 = sub_2296453B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2296453B4()
{
  v1 = v0[30];
  if (v1 && (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    v4 = v0[31];
    v5 = v1;
    sub_22964206C(v3, 0, 1);
    v6 = v4;
    v7 = v0[25];
    sub_229656184(v0[15]);

    if (!v6)
    {

      v8 = v0[1];
      goto LABEL_7;
    }
  }

  else
  {
    v9 = v0[25];
    v10 = v0[15];

    sub_2296561E0();
    swift_allocError();
    *v11 = 0xD000000000000016;
    v11[1] = 0x800000022A58E510;
    swift_willThrow();

    sub_229656184(v10);
  }

  v12 = v0[15];

  v8 = v0[1];
LABEL_7:

  return v8();
}

uint64_t sub_22964550C()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[38] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[39] = v3;
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_2296455D4;

  return sub_229633120(v3);
}

uint64_t sub_2296455D4()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_229647510;
  }

  else
  {
    v3 = sub_2296456E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296456E8()
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v1 = static PassUpdater.shared;
  *(v0 + 336) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229645784, v1, 0);
}

uint64_t sub_229645784()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[43] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[44] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[45] = v7;
  *v6 = v0;
  v6[1] = sub_229645890;

  return v9(v0 + 8, &unk_22A57B868, v4, v7);
}

uint64_t sub_229645890()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v9 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = *(v2 + 336);
    v5 = sub_229645BC8;
  }

  else
  {
    v7 = *(v2 + 336);
    v6 = *(v2 + 344);

    v5 = sub_2296459B4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296459B4()
{
  *(v0 + 376) = *(v0 + 72);
  *(v0 + 392) = *(v0 + 88);
  return MEMORY[0x2822009F8](sub_2296459E4, 0, 0);
}

uint64_t sub_2296459E4()
{
  v1 = *(v0 + 376);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v12 = *(v0 + 376);
    }

    v2 = sub_22A4DE0EC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0xD00000000000001BLL;
  if (v2 == 2)
  {
    v4 = *(v0 + 384);
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v13 = *(v0 + 384);
      }

      if (sub_22A4DE0EC() == 2)
      {
        goto LABEL_6;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
    {
LABEL_6:
      v5 = *(v0 + 336);
      v6 = *(v0 + 312);
      v7 = *(*(v0 + 304) + 48);
      *(v0 + 108) = v7;
      v8 = type metadata accessor for HomePassData(0);
      *(v0 + 400) = v8;
      v9 = (v6 + *(v8 + 36) + v7);
      v10 = v9[1];

      *v9 = 7824750;
      v9[1] = 0xE300000000000000;

      return MEMORY[0x2822009F8](sub_229645C9C, v5, 0);
    }

    v11 = "wrong count for paymentApps";
    v3 = 0xD000000000000020;
  }

  else
  {
    v11 = "ions changed on non roll update";
  }

  v14 = *(v0 + 384);
  v15 = *(v0 + 392);
  v16 = v11 | 0x8000000000000000;
  v17 = *(v0 + 376);
  v18 = *(v0 + 312);
  sub_2296561E0();
  swift_allocError();
  *v19 = v3;
  v19[1] = v16;
  swift_willThrow();

  sub_229656184(v18);
  v20 = *(v0 + 312);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_229645BC8()
{
  v1 = *(v0 + 344);

  return MEMORY[0x2822009F8](sub_229645C30, 0, 0);
}

uint64_t sub_229645C30()
{
  sub_229656184(v0[39]);
  v1 = v0[46];
  v2 = v0[39];

  v3 = v0[1];

  return v3();
}

uint64_t sub_229645C9C()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[51] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[52] = v6;
  *v6 = v0;
  v6[1] = sub_229645D90;
  v7 = v0[45];

  return v9(v0 + 14, &unk_22A57B870, v4, v7);
}

uint64_t sub_229645D90()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v9 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = *(v2 + 336);
    v5 = sub_229646120;
  }

  else
  {
    v6 = *(v2 + 408);
    v7 = *(v2 + 336);

    v5 = sub_229645EB8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229645EB8()
{
  *(v0 + 432) = *(v0 + 120);
  *(v0 + 448) = *(v0 + 136);
  return MEMORY[0x2822009F8](sub_229645EE4, 0, 0);
}

uint64_t sub_229645EE4()
{
  v1 = (v0 + 448);
  v2 = (v0 + 432);
  v3 = *(v0 + 432);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v23 = *(v0 + 432);
    }

    v4 = sub_22A4DE0EC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = (v0 + 440);
  if (v4 != 2)
  {
    v30 = 0xD00000000000001BLL;
    v7 = (v0 + 448);
    v1 = (v0 + 392);
    v8 = (v0 + 440);
    v5 = (v0 + 384);
    v10 = "ions changed on non roll update";
    v9 = (v0 + 432);
    v2 = (v0 + 376);
    goto LABEL_8;
  }

  v6 = *v5;
  if (*v5 >> 62)
  {
    if (v6 < 0)
    {
      v24 = *v5;
    }

    if (sub_22A4DE0EC())
    {
      goto LABEL_6;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    v7 = (v0 + 392);
    v8 = (v0 + 384);
    v9 = (v0 + 376);
    v10 = "wrong count for paymentApps";
    v30 = 0xD000000000000020;
LABEL_8:
    v11 = *v1;
    v12 = *v7;
    v13 = *v5;
    v14 = *v2;
    v15 = *v8;
    v16 = *v9;
    v17 = v10 | 0x8000000000000000;
    v18 = *(v0 + 312);
    sub_2296561E0();
    swift_allocError();
    *v19 = v30;
    v19[1] = v17;
    swift_willThrow();

    sub_229656184(v18);
    v20 = *(v0 + 312);

    v21 = *(v0 + 8);

    return v21();
  }

  v25 = *(v0 + 400);
  v26 = *(v0 + 336);
  v27 = *(v0 + 312);
  v28 = v27 + *(v0 + 108);
  *(v27 + 16) = 0;
  *(v27 + 24) = 1;
  v29 = *(v25 + 72);
  *(v0 + 156) = v29;
  *(v28 + v29) = 2;

  return MEMORY[0x2822009F8](sub_229646218, v26, 0);
}

uint64_t sub_229646120()
{
  v1 = *(v0 + 408);

  return MEMORY[0x2822009F8](sub_229646188, 0, 0);
}

uint64_t sub_229646188()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[39];

  sub_229656184(v4);
  v5 = v0[53];
  v6 = v0[39];

  v7 = v0[1];

  return v7();
}

uint64_t sub_229646218()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[57] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[58] = v6;
  *v6 = v0;
  v6[1] = sub_22964630C;
  v7 = v0[45];

  return v9(v0 + 20, &unk_22A57B878, v4, v7);
}

uint64_t sub_22964630C()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v9 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = *(v2 + 336);
    v5 = sub_2296466B8;
  }

  else
  {
    v6 = *(v2 + 456);
    v7 = *(v2 + 336);

    v5 = sub_229646434;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229646434()
{
  *(v0 + 480) = *(v0 + 168);
  *(v0 + 496) = *(v0 + 184);
  return MEMORY[0x2822009F8](sub_229646460, 0, 0);
}

uint64_t sub_229646460()
{
  v1 = (v0 + 496);
  v2 = (v0 + 480);
  v3 = *(v0 + 480);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v23 = *(v0 + 480);
    }

    v4 = sub_22A4DE0EC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = (v0 + 488);
  if (v4 != 1)
  {
    v29 = 0xD00000000000001BLL;
    v7 = (v0 + 496);
    v1 = (v0 + 392);
    v8 = (v0 + 488);
    v5 = (v0 + 384);
    v10 = "ions changed on non roll update";
    v9 = (v0 + 480);
    v2 = (v0 + 376);
    goto LABEL_8;
  }

  v6 = *v5;
  if (*v5 >> 62)
  {
    if (v6 < 0)
    {
      v24 = *v5;
    }

    if (sub_22A4DE0EC())
    {
      goto LABEL_6;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    v7 = (v0 + 392);
    v8 = (v0 + 384);
    v9 = (v0 + 376);
    v10 = "wrong count for paymentApps";
    v29 = 0xD000000000000020;
LABEL_8:
    v11 = *(v0 + 440);
    v27 = *(v0 + 448);
    v28 = *v1;
    v26 = *v7;
    v12 = *v5;
    v13 = *v2;
    v14 = *(v0 + 432);
    v15 = *v8;
    v16 = *v9;
    v17 = v10 | 0x8000000000000000;
    v18 = *(v0 + 312);
    sub_2296561E0();
    swift_allocError();
    *v19 = v29;
    v19[1] = v17;
    swift_willThrow();

    sub_229656184(v18);
    v20 = *(v0 + 312);

    v21 = *(v0 + 8);

    return v21();
  }

  v25 = *(v0 + 336);
  *(*(v0 + 312) + *(v0 + 108) + *(v0 + 156)) = 1;

  return MEMORY[0x2822009F8](sub_2296467D4, v25, 0);
}

uint64_t sub_2296466B8()
{
  v1 = *(v0 + 456);

  return MEMORY[0x2822009F8](sub_229646720, 0, 0);
}

uint64_t sub_229646720()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[54];
  v4 = v0[48];
  v5 = v0[49];
  v6 = v0[47];
  v7 = v0[39];

  sub_229656184(v7);
  v8 = v0[59];
  v9 = v0[39];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2296467D4()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[63] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[64] = v6;
  *v6 = v0;
  v6[1] = sub_2296468C8;
  v7 = v0[45];

  return v9(v0 + 26, &unk_22A57B880, v4, v7);
}

uint64_t sub_2296468C8()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v9 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = *(v2 + 336);
    v5 = sub_229646D08;
  }

  else
  {
    v6 = *(v2 + 504);
    v7 = *(v2 + 336);

    v5 = sub_2296469F0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296469F0()
{
  *(v0 + 528) = *(v0 + 216);
  *(v0 + 544) = *(v0 + 232);
  return MEMORY[0x2822009F8](sub_229646A1C, 0, 0);
}

uint64_t sub_229646A1C()
{
  v1 = *(v0 + 528);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v15 = *(v0 + 536);
    v16 = *(v0 + 528);
    v17 = *(v0 + 488);
    v8 = *(v0 + 496);
    v18 = *(v0 + 480);
    v10 = *(v0 + 448);
    v39 = *(v0 + 432);
    v42 = *(v0 + 440);
    v11 = *(v0 + 392);
    v30 = *(v0 + 544);
    v32 = *(v0 + 376);
    v19 = 0x800000022A58E9E0;
    v34 = *(v0 + 312);
    v36 = *(v0 + 384);
    sub_2296561E0();
    swift_allocError();
    v21 = 0xD00000000000001BLL;
LABEL_18:
    *v20 = v21;
    v20[1] = v19;
    swift_willThrow();
    v4 = v30;
    goto LABEL_19;
  }

  if (v1 < 0)
  {
    v14 = *(v0 + 528);
  }

  if (sub_22A4DE0EC() != 2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = *(v0 + 536);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  if (v2 < 0)
  {
    v22 = *(v0 + 536);
  }

  if (sub_22A4DE0EC() != 1)
  {
LABEL_17:
    v23 = *(v0 + 536);
    v24 = *(v0 + 528);
    v25 = *(v0 + 488);
    v8 = *(v0 + 496);
    v26 = *(v0 + 480);
    v10 = *(v0 + 448);
    v40 = *(v0 + 432);
    v43 = *(v0 + 440);
    v11 = *(v0 + 392);
    v30 = *(v0 + 544);
    v33 = *(v0 + 376);
    v19 = 0x800000022A58EA00;
    v34 = *(v0 + 312);
    v37 = *(v0 + 384);
    sub_2296561E0();
    swift_allocError();
    v21 = 0xD000000000000020;
    goto LABEL_18;
  }

LABEL_5:
  v3 = *(v0 + 520);
  sub_229647574((v0 + 16));
  if (v3)
  {
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = *(v0 + 528);
    v7 = *(v0 + 488);
    v8 = *(v0 + 496);
    v9 = *(v0 + 480);
    v10 = *(v0 + 448);
    v38 = *(v0 + 432);
    v41 = *(v0 + 440);
    v11 = *(v0 + 392);
    v31 = *(v0 + 376);
    v12 = *(v0 + 312);
    v34 = v12;
    v35 = *(v0 + 384);
LABEL_19:

    sub_229656184(v34);
    v27 = *(v0 + 312);

    v28 = *(v0 + 8);

    return v28();
  }

  v13 = *(v0 + 336);
  sub_2296564B4(v0 + 16, *(v0 + 312) + *(v0 + 108) + *(*(v0 + 400) + 32));

  return MEMORY[0x2822009F8](sub_229646E50, v13, 0);
}

uint64_t sub_229646D08()
{
  v1 = *(v0 + 504);

  return MEMORY[0x2822009F8](sub_229646D70, 0, 0);
}

uint64_t sub_229646D70()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[60];
  v4 = v0[55];
  v5 = v0[56];
  v6 = v0[54];
  v7 = v0[48];
  v8 = v0[49];
  v9 = v0[47];
  v10 = v0[39];

  sub_229656184(v10);
  v11 = v0[65];
  v12 = v0[39];

  v13 = v0[1];

  return v13();
}

uint64_t sub_229646E50()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[69] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[70] = v6;
  *v6 = v0;
  v6[1] = sub_229646F44;
  v7 = v0[45];

  return v9(v0 + 32, &unk_22A57B888, v4, v7);
}

uint64_t sub_229646F44()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v9 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v4 = *(v2 + 336);
    v5 = sub_229647398;
  }

  else
  {
    v6 = *(v2 + 552);
    v7 = *(v2 + 336);

    v5 = sub_22964706C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22964706C()
{
  *(v0 + 576) = *(v0 + 264);
  *(v0 + 592) = *(v0 + 280);
  return MEMORY[0x2822009F8](sub_22964709C, 0, 0);
}

uint64_t sub_22964709C()
{
  v1 = v0[72];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v27 = v0[72];
    }

    v2 = sub_22A4DE0EC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0xD00000000000001BLL;
  if (v2 == 2)
  {
    v4 = v0[73];
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v28 = v0[73];
      }

      v5 = sub_22A4DE0EC();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v0[73];
    v7 = v0[68];
    v8 = v0[67];
    v9 = v0[66];
    v10 = v0[60];
    v11 = v0[54];
    v12 = v0[47];
    v13 = v0[39];
    v41 = v7;
    v42 = v0[74];
    v39 = v0[56];
    v40 = v0[62];
    v36 = v0[48];
    v38 = v0[49];
    if (v5 == 2)
    {

      sub_229656184(v13);

      v14 = v0[1];
      goto LABEL_11;
    }

    v34 = v0[72];
    v35 = v0[39];
    v22 = "wrong count for paymentApps";
    v3 = 0xD000000000000020;
    v30 = v0[61];
    v32 = v0[55];
  }

  else
  {
    v15 = v0[73];
    v41 = v0[68];
    v42 = v0[74];
    v16 = v0[67];
    v17 = v0[66];
    v29 = v0[61];
    v18 = v0[60];
    v19 = v0[56];
    v39 = v19;
    v40 = v0[62];
    v31 = v0[55];
    v33 = v0[72];
    v20 = v0[54];
    v37 = v0[48];
    v38 = v0[49];
    v21 = v0[47];
    v22 = "ions changed on non roll update";
    v35 = v0[39];
  }

  v23 = v22 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v24 = v3;
  v24[1] = v23;
  swift_willThrow();

  sub_229656184(v35);
  v25 = v0[39];

  v14 = v0[1];
LABEL_11:

  return v14();
}

uint64_t sub_229647398()
{
  v1 = *(v0 + 552);

  return MEMORY[0x2822009F8](sub_229647400, 0, 0);
}

uint64_t sub_229647400()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[61];
  v5 = v0[62];
  v6 = v0[60];
  v7 = v0[55];
  v8 = v0[54];
  v9 = v0[48];
  v17 = v0[49];
  v10 = v0[47];
  v15 = v0[56];
  v16 = v0[39];

  sub_229656184(v16);
  v11 = v0[71];
  v12 = v0[39];

  v13 = v0[1];

  return v13();
}

uint64_t sub_229647510()
{
  v1 = v0[41];
  v2 = v0[39];

  v3 = v0[1];

  return v3();
}

void sub_229647574(uint64_t *a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = [v3 createNIST256KeyPair];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22A4DB62C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  v38 = v8;
  v9 = MEMORY[0x277CC9318];
  v35 = MEMORY[0x277CC9318];
  sub_22A4DBD4C();
  if (v1)
  {
    sub_229590D18(v6, v38);
  }

  else
  {
    v37 = a1;
    sub_229590D18(v6, v38);
    v10 = sub_22A4DB61C();
    v11 = [v3 publicKeyExternalRepresentationFromKeyPairExternalRepresentation_];

    if (v11)
    {
      v12 = sub_22A4DB62C();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    sub_22A4DBD4C();
    sub_229590D18(v12, v14);
    v15 = sub_22A4DB61C();
    v16 = [v3 publicKeyFromKeyPairExternalRepresentation_];

    if (v16)
    {
      v17 = sub_22A4DB62C();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xF000000000000000;
    }

    sub_22A4DBD4C();
    sub_229590D18(v17, v19);
    v20 = sub_22A4DB61C();
    v21 = [v3 privateKeyFromKeyPairExternalRepresentation_];

    if (v21)
    {
      v22 = sub_22A4DB62C();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xF000000000000000;
    }

    sub_22A4DBD4C();
    sub_229590D18(v22, v24);
    v25 = objc_opt_self();
    v26 = sub_22A4DB61C();
    v27 = [v25 identifierForKey_];

    v36 = sub_22A4DB62C();
    v29 = v28;

    v30 = sub_22A4DB61C();
    v31 = [v3 identifier16BytesForKey_];

    v32 = sub_22A4DB62C();
    v34 = v33;
    sub_2295798D4(v39, v40);
    sub_2295798D4(v39, v40);
    sub_2295798D4(v39, v40);

    *v37 = v39;
    v37[1] = v40;
    v37[2] = v36;
    v37[3] = v29;
    v37[4] = v32;
    v37[5] = v34;
  }
}

uint64_t sub_2296479B0()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[14] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_229647A78;

  return sub_229633120(v3);
}

uint64_t sub_229647A78()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_22965652C;
  }

  else
  {
    v3 = sub_229647B8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229647B8C()
{
  v1 = *(v0 + 120);
  *(v1 + 9) = 1;
  *(v1 + 16) = 4;
  *(v1 + 24) = 0;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  *(v0 + 144) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_229647C40, v2, 0);
}

uint64_t sub_229647C40()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[19] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[20] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[21] = v7;
  *v6 = v0;
  v6[1] = sub_229647D4C;

  return v9(v0 + 2, &unk_22A57B840, v4, v7);
}

uint64_t sub_229647D4C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_229634F3C;
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);

    v5 = sub_229647E70;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229647E70()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  *(v0 + 184) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_229647EF0, 0, 0);
}

uint64_t sub_229647EF0()
{
  if (v0[23] == 2)
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = sub_229648028;
    v2 = v0[15];

    return sub_229633730(v2);
  }

  else
  {
    v4 = v0[15];
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000020;
    v5[1] = 0x800000022A58E900;
    swift_willThrow();
    sub_229656184(v4);
    v6 = v0[15];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_229648028(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = sub_229635738;
  }

  else
  {
    *(v4 + 208) = a1;
    v7 = sub_229648150;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_229648150()
{
  v1 = v0[26];
  if (v1 && (objc_opt_self(), v2 = swift_dynamicCastObjCClass(), (v0[27] = v2) != 0))
  {
    if (qword_281402F18 != -1)
    {
      swift_once();
    }

    v3 = static PassLibrary.shared;
    v0[28] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_2296482BC, v3, 0);
  }

  else
  {
    v4 = v0[15];
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000023;
    v5[1] = 0x800000022A58E4B0;
    swift_willThrow();

    sub_229656184(v4);
    v6 = v0[15];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2296482BC()
{
  v1 = *(v0 + 27);
  v2 = *(*(v0 + 28) + 112);
  v3 = swift_task_alloc();
  *(v0 + 29) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 30) = v5;
  *v5 = v0;
  v5[1] = sub_2296483A8;

  return v7(v0 + 57, &unk_22A57B848, v3, &type metadata for ExpressSettings);
}

uint64_t sub_2296483A8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v9 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = *(v2 + 224);
    v5 = sub_229648674;
  }

  else
  {
    v7 = *(v2 + 224);
    v6 = *(v2 + 232);

    v5 = sub_2296484CC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296484CC()
{
  v0[61] = v0[57];
  v0[62] = v0[58];
  return MEMORY[0x2822009F8](sub_2296484F8, 0, 0);
}

uint64_t sub_2296484F8()
{
  v1 = 0xD000000000000013;
  if (*(v0 + 61))
  {
    v2 = " was not enabled";
    v1 = 0xD000000000000021;
LABEL_8:
    v9 = v2 | 0x8000000000000000;
    v10 = *(v0 + 208);
    v11 = *(v0 + 120);
    sub_2296561E0();
    swift_allocError();
    *v12 = v1;
    v12[1] = v9;
    swift_willThrow();

    sub_229656184(v11);
    v13 = *(v0 + 120);

    v14 = *(v0 + 8);

    return v14();
  }

  if (*(v0 + 62) != 1)
  {
    v2 = "NFC was not enabled";
    goto LABEL_8;
  }

  v3 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  *(v5 + 9) = 2;
  v6 = *(v4 + 48);
  v7 = (v5 + *(type metadata accessor for HomePassData(0) + 36) + v6);
  v8 = v7[1];

  *v7 = 0x656D616E2077656ELL;
  v7[1] = 0xE800000000000000;

  return MEMORY[0x2822009F8](sub_229648754, v3, 0);
}

uint64_t sub_229648674()
{
  v1 = *(v0 + 232);

  return MEMORY[0x2822009F8](sub_2296486DC, 0, 0);
}

uint64_t sub_2296486DC()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);
  v2 = *(v0 + 248);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229648754()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[32] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_229648848;
  v7 = v0[21];

  return v9(v0 + 8, &unk_22A57B850, v4, v7);
}

uint64_t sub_229648848()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_229648B38;
  }

  else
  {
    v6 = *(v2 + 256);
    v7 = *(v2 + 144);

    v5 = sub_229648970;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_229648970()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  *(v0 + 280) = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_2296489F0, 0, 0);
}

uint64_t sub_2296489F0()
{
  if (v0[35])
  {
    v1 = v0[26];
    v2 = v0[15];
    sub_2296561E0();
    swift_allocError();
    *v3 = 0xD00000000000001FLL;
    v3[1] = 0x800000022A58E960;
    swift_willThrow();

    sub_229656184(v2);
    v4 = v0[15];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[36] = v7;
    *v7 = v0;
    v7[1] = sub_229648C18;
    v8 = v0[15];

    return sub_229633730(v8);
  }
}

uint64_t sub_229648B38()
{
  v1 = *(v0 + 256);

  return MEMORY[0x2822009F8](sub_229648BA0, 0, 0);
}

uint64_t sub_229648BA0()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);
  v2 = *(v0 + 272);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229648C18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v7 = sub_229649458;
  }

  else
  {
    *(v4 + 304) = a1;
    v7 = sub_229648D40;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_229648D40()
{
  v1 = v0[38];
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v0[39] = v2;
    if (v2)
    {
      v3 = v2;
      v4 = v0[27];
      v5 = v1;
      v6 = [v4 paymentApplications];
      if (v6)
      {
        v7 = v6;
        sub_229562F68(0, &qword_281401930, 0x277D37FE0);
        sub_2296562D4();
        v8 = sub_22A4DDB6C();
      }

      else
      {
        v8 = 0;
      }

      v11 = [v3 paymentApplications];
      if (v11)
      {
        v12 = v11;
        sub_229562F68(0, &qword_281401930, 0x277D37FE0);
        sub_2296562D4();
        v13 = sub_22A4DDB6C();

        if (v8)
        {
          if (v13)
          {
            v14 = sub_2296CBED4(v8, v13);

            if (v14)
            {
              goto LABEL_20;
            }

            goto LABEL_16;
          }

LABEL_15:

LABEL_16:
          v15 = v0[26];
          v9 = v0[15];
          sub_2296561E0();
          swift_allocError();
          *v16 = 0xD00000000000002FLL;
          v16[1] = 0x800000022A58E9B0;
          swift_willThrow();

          v1 = v5;
          goto LABEL_17;
        }

        if (v13)
        {
          goto LABEL_15;
        }
      }

      else if (v8)
      {
        goto LABEL_15;
      }

LABEL_20:
      v20 = v0[28];

      return MEMORY[0x2822009F8](sub_229648FE4, v20, 0);
    }
  }

  v5 = v0[26];
  v9 = v0[15];
  sub_2296561E0();
  swift_allocError();
  *v10 = 0xD000000000000025;
  v10[1] = 0x800000022A58E980;
  swift_willThrow();
LABEL_17:

  sub_229656184(v9);
  v17 = v0[15];

  v18 = v0[1];

  return v18();
}

uint64_t sub_229648FE4()
{
  v1 = *(v0 + 39);
  v2 = *(*(v0 + 28) + 112);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 41) = v5;
  *v5 = v0;
  v5[1] = sub_2296490D4;

  return v7(v0 + 59, &unk_22A57B858, v3, &type metadata for ExpressSettings);
}

uint64_t sub_2296490D4()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = *(v2 + 224);
    v5 = sub_229649364;
  }

  else
  {
    v6 = *(v2 + 320);
    v7 = *(v2 + 224);

    v5 = sub_2296491FC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296491FC()
{
  v0[63] = v0[59];
  v0[105] = v0[60];
  return MEMORY[0x2822009F8](sub_229649228, 0, 0);
}

uint64_t sub_229649228()
{
  v1 = 0xD000000000000013;
  if (*(v0 + 63))
  {
    v2 = *(v0 + 304);
    v3 = *(v0 + 208);
    v4 = *(v0 + 120);
    v5 = " was not enabled";
    v1 = 0xD000000000000021;
  }

  else
  {
    v2 = *(v0 + 304);
    v3 = *(v0 + 208);
    v4 = *(v0 + 120);
    if (*(v0 + 105))
    {

      sub_229656184(v4);

      v6 = *(v0 + 8);
      goto LABEL_7;
    }

    v5 = "NFC was not enabled";
  }

  v7 = v5 | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v8 = v1;
  v8[1] = v7;
  swift_willThrow();

  sub_229656184(v4);
  v9 = *(v0 + 120);

  v6 = *(v0 + 8);
LABEL_7:

  return v6();
}

uint64_t sub_229649364()
{
  v1 = *(v0 + 320);

  return MEMORY[0x2822009F8](sub_2296493CC, 0, 0);
}

uint64_t sub_2296493CC()
{
  v1 = v0[38];
  v2 = v0[26];
  v3 = v0[15];

  sub_229656184(v3);
  v4 = v0[42];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_229649458()
{
  v1 = *(v0 + 120);

  sub_229656184(v1);
  v2 = *(v0 + 296);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2296494D0()
{
  v1 = type metadata accessor for HomePassState(0);
  v0[14] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_229649598;

  return sub_229633120(v3);
}

uint64_t sub_229649598()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_22965652C;
  }

  else
  {
    v3 = sub_2296496AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2296496AC()
{
  v1 = *(v0 + 120);
  v2 = *(*(v0 + 112) + 48);
  *(v0 + 108) = v2;
  v3 = v1 + v2;
  v4 = type metadata accessor for HomePassData(0);
  v5 = *(v4 + 72);
  *(v0 + 344) = v5;
  *(v3 + v5) = 2;
  *(v3 + *(v4 + 40)) = 5;
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v6 = static PassUpdater.shared;
  *(v0 + 144) = static PassUpdater.shared;

  return MEMORY[0x2822009F8](sub_22964977C, v6, 0);
}

uint64_t sub_22964977C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[19] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[20] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E2A0, &qword_22A57B798);
  v0[21] = v7;
  *v6 = v0;
  v6[1] = sub_229649888;

  return v9(v0 + 2, &unk_22A57B818, v4, v7);
}

uint64_t sub_229649888()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_229637B7C;
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);

    v5 = sub_2296499AC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2296499AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  *(v0 + 184) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_229649A2C, 0, 0);
}

uint64_t sub_229649A2C()
{
  if (v0[23] == 1)
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = sub_229649B64;
    v2 = v0[15];

    return sub_229633730(v2);
  }

  else
  {
    v4 = v0[15];
    sub_2296561E0();
    swift_allocError();
    *v5 = 0xD000000000000022;
    v5[1] = 0x800000022A58E7D0;
    swift_willThrow();
    sub_229656184(v4);
    v6 = v0[15];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_229649B64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = sub_229656550;
  }

  else
  {
    *(v4 + 208) = a1;
    v7 = sub_229649C8C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_229649C8C()
{
  v1 = v0[26];
  if (v1 && (objc_opt_self(), v2 = swift_dynamicCastObjCClass(), (v0[27] = v2) != 0))
  {
    v3 = qword_281402F18;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = static PassLibrary.shared;
    v0[28] = static PassLibrary.shared;

    return MEMORY[0x2822009F8](sub_229649DFC, v5, 0);
  }

  else
  {
    v6 = v0[15];
    sub_2296561E0();
    swift_allocError();
    *v7 = 0xD000000000000016;
    v7[1] = 0x800000022A58E510;
    swift_willThrow();

    sub_229656184(v6);
    v8 = v0[15];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_229649DFC()
{
  v1 = *(v0 + 27);
  v2 = *(*(v0 + 28) + 112);
  v3 = swift_task_alloc();
  *(v0 + 29) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 30) = v5;
  *v5 = v0;
  v5[1] = sub_229649EE8;

  return v7(v0 + 57, &unk_22A57B820, v3, &type metadata for ExpressSettings);
}

uint64_t sub_229649EE8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(v2 + 248) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 224);
  if (v0)
  {

    v7 = sub_22964A1DC;
  }

  else
  {

    v7 = sub_22964A04C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22964A04C()
{
  v0[61] = v0[57];
  v0[62] = v0[58];
  return MEMORY[0x2822009F8](sub_22964A078, 0, 0);
}

uint64_t sub_22964A078()
{
  if (*(v0 + 61) != 1)
  {
    v1 = 0x800000022A58E800;
    v2 = 0xD000000000000021;
    goto LABEL_5;
  }

  if (*(v0 + 62))
  {
    v1 = 0xEF64656C62616E65;
    v2 = 0x2073617720425755;
LABEL_5:
    v3 = *(v0 + 208);
    v4 = *(v0 + 120);
    sub_2296561E0();
    swift_allocError();
    *v5 = v2;
    v5[1] = v1;
    swift_willThrow();

    sub_229656184(v4);
    v6 = *(v0 + 120);

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 144);
  v10 = *(v0 + 120);
  *(v10 + *(v0 + 108) + *(v0 + 344)) = 1;
  *(v10 + 9) = 1;

  return MEMORY[0x2822009F8](sub_22964A1F8, v9, 0);
}

uint64_t sub_22964A1F8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v0[32] = v4;
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D0EF78] + 4);
  v9 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_22964A2EC;
  v7 = v0[21];

  return v9(v0 + 8, &unk_22A57B828, v4, v7);
}

uint64_t sub_22964A2EC()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_22964A5E4;
  }

  else
  {
    v6 = *(v2 + 256);
    v7 = *(v2 + 144);

    v5 = sub_22964A414;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22964A414()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  *(v0 + 280) = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_22964A494, 0, 0);
}

uint64_t sub_22964A494()
{
  if (v0[35] == 2)
  {
    v1 = swift_task_alloc();
    v0[36] = v1;
    *v1 = v0;
    v1[1] = sub_22964A6C8;
    v2 = v0[15];

    return sub_229633730(v2);
  }

  else
  {
    v4 = v0[26];
    v5 = v0[15];
    sub_2296561E0();
    swift_allocError();
    *v6 = 0xD000000000000022;
    v6[1] = 0x800000022A58E830;
    swift_willThrow();

    sub_229656184(v5);
    v7 = v0[15];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22964A5E4()
{
  v1 = *(v0 + 256);

  return MEMORY[0x2822009F8](sub_22964A64C, 0, 0);
}

uint64_t sub_22964A64C()
{
  v1 = v0[26];
  v2 = v0[15];

  sub_229656184(v2);
  v3 = v0[34];
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22964A6C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v7 = sub_22964AF18;
  }

  else
  {
    *(v4 + 304) = a1;
    v7 = sub_22964A7F0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22964A7F0()
{
  v1 = *(v0 + 304);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    *(v0 + 312) = v2;
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      v5 = [v3 paymentApplications];
      if (v5)
      {
        v6 = v5;
        sub_229562F68(0, &qword_281401930, 0x277D37FE0);
        sub_2296562D4();
        v7 = sub_22A4DDB6C();
      }

      else
      {
        v7 = 0;
      }

      v14 = [*(v0 + 216) paymentApplications];
      if (v14)
      {
        v15 = v14;
        sub_229562F68(0, &qword_281401930, 0x277D37FE0);
        sub_2296562D4();
        v16 = sub_22A4DDB6C();

        if (v7)
        {
          if (v16)
          {
            v17 = sub_2296CBED4(v7, v16);

            if ((v17 & 1) == 0)
            {

LABEL_19:
              v18 = *(v0 + 224);

              return MEMORY[0x2822009F8](sub_22964AAAC, v18, 0);
            }

            goto LABEL_22;
          }

LABEL_18:

          goto LABEL_19;
        }

        if (v16)
        {
          goto LABEL_18;
        }
      }

      else if (v7)
      {
        goto LABEL_18;
      }

LABEL_22:
      v8 = *(v0 + 208);
      v9 = *(v0 + 120);
      sub_2296561E0();
      swift_allocError();
      *v19 = 0xD000000000000032;
      v19[1] = 0x800000022A58E8C0;
      swift_willThrow();

      v1 = v4;
      goto LABEL_6;
    }
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 120);
  sub_2296561E0();
  swift_allocError();
  *v10 = 0xD000000000000028;
  v10[1] = 0x800000022A58E860;
  swift_willThrow();
  v4 = v8;
LABEL_6:

  sub_229656184(v9);
  v11 = *(v0 + 120);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22964AAAC()
{
  v1 = *(v0 + 39);
  v2 = *(*(v0 + 28) + 112);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D0EF78] + 4);
  v7 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 41) = v5;
  *v5 = v0;
  v5[1] = sub_22964AB9C;

  return v7(v0 + 59, &unk_22A57B830, v3, &type metadata for ExpressSettings);
}

uint64_t sub_22964AB9C()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = *(v2 + 224);
    v5 = sub_22964AE2C;
  }

  else
  {
    v6 = *(v2 + 320);
    v7 = *(v2 + 224);

    v5 = sub_22964ACD8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22964ACD8()
{
  v0[63] = v0[59];
  v0[105] = v0[60];
  return MEMORY[0x2822009F8](sub_22964AD04, 0, 0);
}

uint64_t sub_22964AD04()
{
  if (*(v0 + 63) == 1)
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 208);
    v3 = *(v0 + 120);
    if (*(v0 + 105))
    {

      sub_229656184(v3);

      v4 = *(v0 + 8);
      goto LABEL_7;
    }

    v5 = "UWB was not enabled but should be";
  }

  else
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 208);
    v3 = *(v0 + 120);
    v5 = "NFC was not enabled but should be";
  }

  v6 = (v5 - 32) | 0x8000000000000000;
  sub_2296561E0();
  swift_allocError();
  *v7 = 0xD000000000000021;
  v7[1] = v6;
  swift_willThrow();

  sub_229656184(v3);
  v8 = *(v0 + 120);

  v4 = *(v0 + 8);
LABEL_7:

  return v4();
}

uint64_t sub_22964AE2C()
{
  v1 = *(v0 + 320);

  return MEMORY[0x2822009F8](sub_22964AE94, 0, 0);
}

uint64_t sub_22964AE94()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 120);

  sub_229656184(v2);
  v3 = *(v0 + 336);
  v4 = *(v0 + 120);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22964AF18()
{
  v1 = v0[26];
  v2 = v0[15];

  sub_229656184(v2);
  v3 = v0[37];
  v4 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22964AF94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  v0[22] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v0[23] = swift_task_alloc();
  v3 = sub_22A4DB7DC();
  v0[24] = v3;
  v4 = *(v3 - 8);
  v0[25] = v4;
  v5 = *(v4 + 64) + 15;
  v0[26] = swift_task_alloc();
  v6 = type metadata accessor for HomePassState(0);
  v0[27] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v0[28] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22964B220, 0, 0);
}

uint64_t sub_22964B220()
{
  v1 = [objc_opt_self() driver];
  v2 = [v1 homeManager];
  v0[55] = v2;

  v3 = [v2 homes];
  if (v3)
  {
    v4 = v3;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v5 = sub_22A4DD83C();
  }

  else
  {
    v5 = 0;
  }

  v0[21] = v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
  sub_22A4DBD4C();

  v18 = v0[20];
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v32 = v0[20];
    }

    result = sub_22A4DE0EC();
    if (result)
    {
      goto LABEL_10;
    }

LABEL_22:

    sub_2296561E0();
    swift_allocError();
    *v33 = 0xD000000000000013;
    v33[1] = 0x800000022A58E770;
    swift_willThrow();

    v7 = v0[53];
    v6 = v0[54];
    v9 = v0[51];
    v8 = v0[52];
    v11 = v0[49];
    v10 = v0[50];
    v12 = v0[47];
    v13 = v0[48];
    v15 = v0[45];
    v14 = v0[46];
    v35 = v0[44];
    v36 = v0[43];
    v37 = v0[42];
    v38 = v0[41];
    v39 = v0[40];
    v40 = v0[39];
    v41 = v0[38];
    v42 = v0[37];
    v43 = v0[36];
    v44 = v0[35];
    v45 = v0[34];
    v46 = v0[33];
    v47 = v0[32];
    v48 = v0[31];
    v49 = v0[30];
    v50 = v0[29];
    v51 = v0[28];
    v52 = v0[26];
    v53 = v0[23];

    v16 = v0[1];

    return v16();
  }

  result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x22AAD13F0](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v18 + 32);
  }

  v20 = v19;
  v0[56] = v19;

  v21 = v20;
  v22 = [v21 clientWalletKeyUUID];
  if (v22)
  {
    v23 = v0[53];
    v24 = v22;
    sub_22A4DB79C();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v27 = v0[53];
  v26 = v0[54];
  v28 = v0[24];
  v29 = *(v0[25] + 56);
  v0[57] = v29;
  v29(v27, v25, 1, v28);
  sub_229564B0C(v27, v26);
  [v21 saveClientWalletKeyUUIDToLocalStore_];
  v30 = swift_task_alloc();
  v0[58] = v30;
  *v30 = v0;
  v30[1] = sub_22964B6C4;
  v31 = v0[28];

  return sub_229633120(v31);
}