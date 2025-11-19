uint64_t sub_226D365C4(_BYTE *a1, _BYTE *a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = &v27 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = *(_s8MetadataV23IsMarkedAsCompleteEntryVMa(0) + 20);
  v17 = *(v12 + 56);
  v30 = a1;
  sub_226AC40E8(&a1[v16], v15, &qword_27D7A8BE0, &unk_226D718F0);
  v28 = a2;
  sub_226AC40E8(&a2[v16], &v15[v17], &qword_27D7A8BE0, &unk_226D718F0);
  v18 = *(v5 + 48);
  LODWORD(v12) = v18(v15, 1, v4);
  v19 = v18(&v15[v17], 1, v4);
  if (v12 == 1)
  {
    if (v19 != 1)
    {
      sub_226AC47B0(&v15[v17], &qword_27D7A8BE0, &unk_226D718F0);
      v20 = 1;
      return v20 & 1;
    }
  }

  else
  {
    if (v19 == 1)
    {
      (*(v5 + 8))(v15, v4);
      goto LABEL_7;
    }

    v21 = *(v5 + 32);
    v22 = v29;
    v21(v29, v15, v4);
    v21(v9, &v15[v17], v4);
    if (sub_226D6D40C())
    {
      v23 = *(v5 + 8);
      v23(v9, v4);
      v23(v22, v4);
      v20 = 1;
      return v20 & 1;
    }

    v25 = sub_226D6D3FC();
    v26 = *(v5 + 8);
    v26(v9, v4);
    v26(v22, v4);
    if (v25)
    {
      goto LABEL_7;
    }
  }

  if (*v30 != 1)
  {
LABEL_7:
    v20 = 0;
    return v20 & 1;
  }

  v20 = *v28 ^ 1;
  return v20 & 1;
}

uint64_t sub_226D36924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D3698C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226D36A1C()
{
  _s8MetadataV9CloudItemV6ObjectVMa_2(319);
  if (v0 <= 0x3F)
  {
    sub_226D36DD0(319, &qword_27D7A9410, _s8MetadataV9CloudItemV6ObjectVMa_2, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 3)
  {
    return v7 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    v7 = (a2 + 2);
  }

  else
  {
    v7 = 0;
  }

  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, a3, v8);
}

uint64_t sub_226D36C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

void sub_226D36CEC()
{
  sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
  if (v0 <= 0x3F)
  {
    sub_226D6D4AC();
    if (v1 <= 0x3F)
    {
      sub_226D36DD0(319, &qword_281062B70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226D36DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_226D36E5C()
{
  sub_226D36DD0(319, &qword_281062B70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_226D36F30()
{
  sub_226D6D4AC();
  if (v0 <= 0x3F)
  {
    sub_226D6D52C();
    if (v1 <= 0x3F)
    {
      sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
      if (v2 <= 0x3F)
      {
        sub_226D36DD0(319, &qword_281062B70, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_226D3707C()
{
  result = sub_226D6B49C();
  if (v1 <= 0x3F)
  {
    result = _s8MetadataV15CloudItemStatusOMa_2(319);
    if (v2 <= 0x3F)
    {
      result = _s8MetadataV15LocalItemStatusOMa_2(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_226D37160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226D37358()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);

    sub_226D6E80C();

    v2 = *(v0 + 24);
  }

  *(v0 + 24) = 0;

  v3 = *(v0 + 16);

  v4 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_226D37410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v6 = sub_226D6CD9C();
  v4[39] = v6;
  v7 = *(v6 - 8);
  v4[40] = v7;
  v8 = *(v7 + 64) + 15;
  v4[41] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67B8, &unk_226D71D80) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v10 = sub_226D6EAEC();
  v4[43] = v10;
  v11 = *(v10 - 8);
  v4[44] = v11;
  v12 = *(v11 + 64) + 15;
  v4[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D3759C, 0, 0);
}

uint64_t sub_226D3759C()
{
  v1 = v0[45];
  v2 = v0[37];
  v3 = [objc_opt_self() defaultCenter];
  v4 = *MEMORY[0x277CBE260];
  v0[46] = sub_226D6EAFC();

  sub_226D6EADC();
  swift_beginAccess();
  v5 = *MEMORY[0x277CBE288];
  v0[47] = *MEMORY[0x277CBE200];
  v0[48] = v5;
  v6 = sub_226D37DAC();
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[49] = v8;
  *v8 = v0;
  v8[1] = sub_226D376DC;
  v9 = v0[45];
  v10 = v0[42];
  v11 = v0[43];

  return MEMORY[0x282200308](v10, v11, v6);
}

uint64_t sub_226D376DC()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_226D37D20;
  }

  else
  {
    v3 = sub_226D377F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226D3780C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 368);
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));

LABEL_12:
    v25 = *(v0 + 360);
    v26 = *(v0 + 328);
    v27 = *(v0 + 336);
    v28 = *(v0 + 304);

    v29 = *(v0 + 8);

    return v29();
  }

  v5 = *(v0 + 296);
  (*(v3 + 32))(*(v0 + 328), v1, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v19 = *(v0 + 360);
    v18 = *(v0 + 368);
    v20 = *(v0 + 344);
    v21 = *(v0 + 352);
    v23 = *(v0 + 320);
    v22 = *(v0 + 328);
    v24 = *(v0 + 312);

    (*(v23 + 8))(v22, v24);
    (*(v21 + 8))(v19, v20);
    goto LABEL_12;
  }

  v7 = Strong;
  v8 = *(v0 + 328);
  v9 = sub_226D6CD8C();
  if (!v9)
  {
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    goto LABEL_17;
  }

  v10 = v9;
  v11 = *(v0 + 376);
  *(v0 + 264) = sub_226D6E39C();
  *(v0 + 272) = v12;
  sub_226D6EE8C();
  if (!*(v10 + 16) || (v13 = sub_226C2FE4C(v0 + 96), (v14 & 1) == 0))
  {

    sub_226AE5030(v0 + 96);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    goto LABEL_17;
  }

  sub_226AC4708(*(v10 + 56) + 32 * v13, v0 + 136);
  sub_226AE5030(v0 + 96);

  if (!*(v0 + 160))
  {
LABEL_17:
    sub_226AC47B0(v0 + 136, &unk_27D7A8BB0, &unk_226D74340);
    v17 = 0;
    goto LABEL_18;
  }

  sub_226D37E04();
  v15 = swift_dynamicCast();
  v16 = *(v0 + 288);
  if (v15)
  {
    v17 = *(v0 + 288);
  }

  else
  {
    v17 = 0;
  }

LABEL_18:
  v31 = *(v0 + 328);
  v32 = sub_226D6CD8C();
  if (!v32)
  {
    *(v0 + 184) = 0u;
    *(v0 + 168) = 0u;
    goto LABEL_25;
  }

  v33 = v32;
  v34 = *(v0 + 384);
  *(v0 + 248) = sub_226D6E39C();
  *(v0 + 256) = v35;
  sub_226D6EE8C();
  if (!*(v33 + 16) || (v36 = sub_226C2FE4C(v0 + 56), (v37 & 1) == 0))
  {

    sub_226AE5030(v0 + 56);
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    goto LABEL_25;
  }

  sub_226AC4708(*(v33 + 56) + 32 * v36, v0 + 168);
  sub_226AE5030(v0 + 56);

  if (!*(v0 + 192))
  {
LABEL_25:
    v41 = *(v0 + 304);
    sub_226AC47B0(v0 + 168, &unk_27D7A8BB0, &unk_226D74340);
    v42 = sub_226D6D1AC();
    (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
    goto LABEL_26;
  }

  v38 = *(v0 + 304);
  v39 = sub_226D6D1AC();
  v40 = swift_dynamicCast();
  (*(*(v39 - 8) + 56))(v38, v40 ^ 1u, 1, v39);
LABEL_26:
  swift_beginAccess();
  v43 = *(v7 + 16);
  v44 = *(v43 + 16);
  if (v44)
  {
    v45 = v43 + 32;
    v46 = *(v7 + 16);

    do
    {
      v47 = *(v0 + 304);
      sub_226AE532C(v45, v0 + 16);
      v48 = *(v0 + 40);
      v49 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v48);
      (*(v49 + 8))(v17, v47, v48, v49);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
      v45 += 40;
      --v44;
    }

    while (v44);
  }

  v51 = *(v0 + 320);
  v50 = *(v0 + 328);
  v53 = *(v0 + 304);
  v52 = *(v0 + 312);

  (*(v51 + 8))(v50, v52);
  sub_226AC47B0(v53, &unk_27D7A62F8, &unk_226D73B70);
  v54 = sub_226D37DAC();
  v55 = *(MEMORY[0x277D856D0] + 4);
  v56 = swift_task_alloc();
  *(v0 + 392) = v56;
  *v56 = v0;
  v56[1] = sub_226D376DC;
  v57 = *(v0 + 360);
  v58 = *(v0 + 336);
  v59 = *(v0 + 344);

  return MEMORY[0x282200308](v58, v59, v54);
}

uint64_t sub_226D37D20()
{
  *(v0 + 280) = *(v0 + 400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

unint64_t sub_226D37DAC()
{
  result = qword_28105F440;
  if (!qword_28105F440)
  {
    sub_226D6EAEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F440);
  }

  return result;
}

unint64_t sub_226D37E04()
{
  result = qword_27D7A6F90;
  if (!qword_27D7A6F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A6F90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RetryStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RetryStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t BusinessQueryService.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x277CF3618]) init];
  return v0;
}

uint64_t sub_226D37EFC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_226D37F20, 0, 0);
}

uint64_t sub_226D37F20()
{
  v1 = [*(v0 + 64) emailAddressValue];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 emailAddressValue];
    v4 = [v3 simpleAddress];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [v2 stringValue];
    }

    v11 = v6;
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);

    v14 = v11;
    sub_226D6E39C();
    v16 = v15;

    *(v0 + 80) = v16;
    sub_226AE532C(v13 + 16, v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v17 = [v12 domain];
    if (v17)
    {
      v18 = v17;
      sub_226D6E39C();
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    *(v0 + 88) = v20;
    v21 = [*(v0 + 64) highLevelDomain];
    if (v21)
    {
      v22 = v21;
      sub_226D6E39C();
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    *(v0 + 96) = v24;
    type metadata accessor for BusinessQueryService();
    v25 = swift_task_alloc();
    *(v0 + 104) = v25;
    *v25 = v0;
    v25[1] = sub_226D38234;
    v26 = *(v0 + 56);

    JUMPOUT(0x226D39088);
  }

  v7 = *(v0 + 56);
  v8 = type metadata accessor for BusinessConnectProvider.EmailItem(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_226D38234()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v6 = sub_226D383A4;
  }

  else
  {
    v6 = sub_226B99748;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D383A4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[14];

  return v1();
}

uint64_t BusinessQueryService.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x277CF3618]) init];
  return v0;
}

void sub_226D38444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94D8, &qword_226D7DAE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a2 + 112);
  v10 = objc_allocWithZone(MEMORY[0x277CF3610]);
  v11 = sub_226D6E36C();
  v12 = [v10 initWithBusinessId_];

  (*(v5 + 16))(v8, a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v8, v4);
  aBlock[4] = sub_226D39620;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226D39850;
  aBlock[3] = &block_descriptor_18;
  v15 = _Block_copy(aBlock);

  [v9 fetchBusinessLogoForBusinessIdentifier:v12 completion:v15];
  _Block_release(v15);
}

uint64_t sub_226D3867C(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94D0, &qword_226D7DAE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v19 - v6);
  if (a2)
  {
    v19[1] = a2;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94D8, &qword_226D7DAE8);
    return sub_226D6E6EC();
  }

  else
  {
    if (a1)
    {
      v10 = [a1 businessId];
      v11 = sub_226D6E39C();
      v13 = v12;

      v14 = type metadata accessor for BusinessConnectProvider.BusinessLogo(0);
      v15 = *(v14 + 20);
      v16 = [a1 logoURL];
      sub_226D6D14C();

      v17 = sub_226D6D1AC();
      (*(*(v17 - 8) + 56))(v7 + v15, 0, 1, v17);
      *v7 = v11;
      v7[1] = v13;
      (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
    }

    else
    {
      v18 = type metadata accessor for BusinessConnectProvider.BusinessLogo(0);
      (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94D8, &qword_226D7DAE8);
    return sub_226D6E6FC();
  }
}

void sub_226D38880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a4;
  v26 = a6;
  v27 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94C8, &unk_226D7DAD0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = objc_allocWithZone(MEMORY[0x277CF35F0]);

  v19 = sub_226D39460(a2, a3, v25, a5, v26, a7);
  v20 = *(a8 + 112);
  (*(v14 + 16))(v17, v27, v13);
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = swift_allocObject();
  (*(v14 + 32))(v22 + v21, v17, v13);
  aBlock[4] = sub_226D39530;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226D39850;
  aBlock[3] = &block_descriptor_19;
  v23 = _Block_copy(aBlock);

  [v20 fetchBusinessMetadataForEmailIdentifier:v19 completion:v23];
  _Block_release(v23);
}

uint64_t sub_226D38ACC(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94C0, &qword_226D7DAC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (v29 - v10);
  if (a2)
  {
    v29[1] = a2;
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94C8, &unk_226D7DAD0);
    return sub_226D6E6EC();
  }

  else
  {
    if (a1)
    {
      v14 = a1;
      v15 = [v14 companyId];
      v16 = sub_226D6E39C();
      v18 = v17;

      v19 = [v14 businessId];
      v20 = sub_226D6E39C();
      v22 = v21;

      v23 = [v14 logoURL];
      if (v23)
      {
        v24 = v23;
        sub_226D6D14C();

        v25 = sub_226D6D1AC();
        (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
      }

      else
      {
        v27 = sub_226D6D1AC();
        (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
      }

      *v11 = v16;
      v11[1] = v18;
      v11[2] = v20;
      v11[3] = v22;
      v28 = type metadata accessor for BusinessConnectProvider.EmailItem(0);
      sub_226B60108(v7, v11 + *(v28 + 24));

      (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
    }

    else
    {
      v26 = type metadata accessor for BusinessConnectProvider.EmailItem(0);
      (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94C8, &unk_226D7DAD0);
    return sub_226D6E6FC();
  }
}

uint64_t BusinessQueryService.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226D38E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_226D38E2C, v5, 0);
}

uint64_t sub_226D38E2C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_226D393F8();
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94D0, &qword_226D7DAE0);
  *v7 = v0;
  v7[1] = sub_226D38F4C;
  v9 = v0[2];

  return MEMORY[0x2822008A0](v9, v1, v4, 0xD000000000000029, 0x8000000226D88390, sub_226D39590, v5, v8);
}

uint64_t sub_226D38F4C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](sub_226CFDD74, v4, 0);
  }

  else
  {
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_226D39088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *v7;
  v8[8] = a7;
  v8[9] = v9;
  return MEMORY[0x2822009F8](sub_226D390B8, v9, 0);
}

uint64_t sub_226D390B8()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = sub_226D393F8();
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v7;
  *(v5 + 48) = v6;
  *(v5 + 64) = v1;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94C0, &qword_226D7DAC8);
  *v9 = v0;
  v9[1] = sub_226D391E4;
  v11 = *(v0 + 16);

  return MEMORY[0x2822008A0](v11, v1, v4, 0xD00000000000003ALL, 0x8000000226D882F0, sub_226D3944C, v5, v10);
}

uint64_t sub_226D391E4()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[9];

    return MEMORY[0x2822009F8](sub_226D39320, v4, 0);
  }

  else
  {
    v5 = v3[10];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_226D39320()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

unint64_t sub_226D393F8()
{
  result = qword_27D7A94B8;
  if (!qword_27D7A94B8)
  {
    type metadata accessor for BusinessQueryService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A94B8);
  }

  return result;
}

id sub_226D39460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_226D6E36C();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_226D6E36C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_226D6E36C();

LABEL_6:
  v12 = [v6 initWithEmail:v9 fullDomain:v10 topLevelDomain:v11];

  return v12;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_226D39590(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_226D38444(a1, v1[2]);
}

uint64_t objectdestroyTm_3(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_226D39648(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

void sub_226D39728()
{
  sub_226CFB824();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_226D397CC()
{
  sub_226CFB824();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_226D39854(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  refreshed = type metadata accessor for OrderRefreshTask();
  v3[15] = refreshed;
  v5 = *(*(refreshed - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D3991C, 0, 0);
}

uint64_t sub_226D3991C()
{
  v49 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v4 = sub_226D6E07C();
  *(v0 + 168) = __swift_project_value_buffer(v4, qword_28105F5C0);
  sub_226D3C0EC(v3, v1, type metadata accessor for OrderRefreshTask);
  sub_226D3C0EC(v3, v2, type metadata accessor for OrderRefreshTask);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  if (v7)
  {
    v44 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v10 = 136315394;
    sub_226D6B49C();
    sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28]);
    v11 = sub_226D6F1CC();
    v13 = v12;
    sub_226D3C154(v8, type metadata accessor for OrderRefreshTask);
    v14 = sub_226AC4530(v11, v13, &v48);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = *(v44 + 20);
    sub_226D6D1AC();
    sub_226D3C0A4(&qword_27D7A7018, MEMORY[0x277CC9260]);
    v16 = sub_226D6F1CC();
    v18 = v17;
    sub_226D3C154(v9, type metadata accessor for OrderRefreshTask);
    v19 = sub_226AC4530(v16, v18, &v48);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_226AB4000, v5, v6, "Refreshing order %s from web service %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v45, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  else
  {

    sub_226D3C154(v9, type metadata accessor for OrderRefreshTask);
    sub_226D3C154(v8, type metadata accessor for OrderRefreshTask);
  }

  v20 = *(v0 + 136);
  v21 = *(v0 + 112);
  sub_226D3C0EC(v21, *(v0 + 144), type metadata accessor for OrderRefreshTask);
  sub_226D3C0EC(v21, v20, type metadata accessor for OrderRefreshTask);
  v22 = sub_226D6E05C();
  v23 = sub_226D6E9EC();
  v24 = os_log_type_enabled(v22, v23);
  v26 = *(v0 + 136);
  v25 = *(v0 + 144);
  if (v24)
  {
    v46 = *(v0 + 120);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v48 = v28;
    *v27 = 136315394;
    sub_226D6B49C();
    sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28]);
    v29 = sub_226D6F1CC();
    v31 = v30;
    sub_226D3C154(v25, type metadata accessor for OrderRefreshTask);
    v32 = sub_226AC4530(v29, v31, &v48);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v33 = *(v46 + 20);
    sub_226D6D1AC();
    sub_226D3C0A4(&qword_27D7A7018, MEMORY[0x277CC9260]);
    v34 = sub_226D6F1CC();
    v36 = v35;
    sub_226D3C154(v26, type metadata accessor for OrderRefreshTask);
    v37 = sub_226AC4530(v34, v36, &v48);

    *(v27 + 14) = v37;
    _os_log_impl(&dword_226AB4000, v22, v23, "Fetching order %s from web service %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v28, -1, -1);
    MEMORY[0x22AA8BEE0](v27, -1, -1);
  }

  else
  {

    sub_226D3C154(v26, type metadata accessor for OrderRefreshTask);
    sub_226D3C154(v25, type metadata accessor for OrderRefreshTask);
  }

  v38 = swift_task_alloc();
  *(v0 + 176) = v38;
  *(v38 + 16) = *(v0 + 104);
  v39 = *(MEMORY[0x277CC7900] + 4);
  v47 = (*MEMORY[0x277CC7900] + MEMORY[0x277CC7900]);
  v40 = swift_task_alloc();
  *(v0 + 184) = v40;
  *v40 = v0;
  v40[1] = sub_226D39F18;
  v41 = *(v0 + 104);
  v42 = MEMORY[0x277CC7EB8];

  return v47(v0 + 56, &unk_226D7DB20, v38, v42);
}

uint64_t sub_226D39F18()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_226D3A2A0;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_226D3A034;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D3A034()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_226D3A0E4;
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);

  return sub_226D3A9B8(v0 + 16, v4);
}

uint64_t sub_226D3A0E4()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_226D3A548;
  }

  else
  {
    v3 = sub_226D3A1F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226D3A1F8()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  sub_226C864F4((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_226D3A2A0()
{
  v26 = v0;
  v1 = v0[22];

  v2 = v0[24];
  v3 = v0[21];
  sub_226D3C0EC(v0[14], v0[16], type metadata accessor for OrderRefreshTask);
  v4 = v2;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136315394;
    sub_226D6B49C();
    sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28]);
    v12 = sub_226D6F1CC();
    v14 = v13;
    sub_226D3C154(v8, type metadata accessor for OrderRefreshTask);
    v15 = sub_226AC4530(v12, v14, &v25);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v2;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_226AB4000, v5, v6, "Error refreshing order %s with error %@", v9, 0x16u);
    sub_226AC47B0(v10, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {

    sub_226D3C154(v8, type metadata accessor for OrderRefreshTask);
  }

  v19 = v0[19];
  v18 = v0[20];
  v21 = v0[17];
  v20 = v0[18];
  v22 = v0[16];
  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t sub_226D3A548()
{
  v25 = v0;
  sub_226C864F4((v0 + 2));
  v1 = v0[26];
  v2 = v0[21];
  sub_226D3C0EC(v0[14], v0[16], type metadata accessor for OrderRefreshTask);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v8 = 136315394;
    sub_226D6B49C();
    sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28]);
    v11 = sub_226D6F1CC();
    v13 = v12;
    sub_226D3C154(v7, type metadata accessor for OrderRefreshTask);
    v14 = sub_226AC4530(v11, v13, &v24);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&dword_226AB4000, v4, v5, "Error refreshing order %s with error %@", v8, 0x16u);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {

    sub_226D3C154(v7, type metadata accessor for OrderRefreshTask);
  }

  v18 = v0[19];
  v17 = v0[20];
  v20 = v0[17];
  v19 = v0[18];
  v21 = v0[16];
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t type metadata accessor for OrderRefreshTask()
{
  result = qword_27D7A9500;
  if (!qword_27D7A9500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D3A83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  v5 = *(type metadata accessor for OrderRefreshTask() + 24);
  v6 = *(MEMORY[0x277CC7910] + 4);
  v9 = (*MEMORY[0x277CC7910] + MEMORY[0x277CC7910]);
  v7 = swift_task_alloc();
  *(v3 + 64) = v7;
  *v7 = v3;
  v7[1] = sub_226C6FBDC;

  return v9(v3 + 16, a3 + v5);
}

uint64_t sub_226D3A90C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226D3A83C(a1, v5, v4);
}

uint64_t sub_226D3A9B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for OrderRefreshTask() - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D3AA84, 0, 0);
}

uint64_t sub_226D3AA84()
{
  v32 = v0;
  v1 = v0[2];
  v2 = *v1;
  if (*v1)
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = swift_task_alloc();
    v6 = *(v1 + 1);
    v7 = *(v1 + 3);
    v0[7] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    *(v5 + 32) = v6;
    *(v5 + 48) = v7;
    *(v5 + 64) = v4;
    v8 = *(MEMORY[0x277CC6B90] + 4);
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_226D3AE64;

    return MEMORY[0x2821170B8]();
  }

  else
  {
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v10 = v0[6];
    v11 = v0[4];
    v12 = sub_226D6E07C();
    __swift_project_value_buffer(v12, qword_28105F5C0);
    sub_226D3C0EC(v11, v10, type metadata accessor for OrderRefreshTask);
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9EC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[6];
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136315138;
      sub_226D6B49C();
      sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28]);
      v19 = sub_226D6F1CC();
      v21 = v20;
      sub_226D3C154(v16, type metadata accessor for OrderRefreshTask);
      v22 = sub_226AC4530(v19, v21, &v31);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_226AB4000, v13, v14, "Order %s not modified since last fetch", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
    }

    else
    {

      sub_226D3C154(v16, type metadata accessor for OrderRefreshTask);
    }

    v23 = v0[5];
    v24 = sub_226D6D4AC();
    v30 = *(v0 + 3);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    v25 = swift_task_alloc();
    v25[1] = vextq_s8(v30, v30, 8uLL);
    v25[2].i64[0] = v23;
    sub_226D6EB7C();

    sub_226AC47B0(v23, &qword_27D7A8BE0, &unk_226D718F0);
    v27 = v0[5];
    v26 = v0[6];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_226D3AE64()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_226D3AFEC;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_226D3AF80;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D3AF80()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226D3AFEC()
{
  v1 = v0[7];

  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_226D3B060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[3] = a2;
  refreshed = type metadata accessor for OrderRefreshTask();
  v8[10] = refreshed;
  v10 = *(*(refreshed - 8) + 64) + 15;
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D3B100, 0, 0);
}

uint64_t sub_226D3B100()
{
  v29 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F5C0);
  sub_226D3C0EC(v2, v1, type metadata accessor for OrderRefreshTask);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    sub_226D6B49C();
    sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28]);
    v10 = sub_226D6F1CC();
    v12 = v11;
    sub_226D3C154(v7, type metadata accessor for OrderRefreshTask);
    v13 = sub_226AC4530(v10, v12, &v28);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226AB4000, v4, v5, "Updating content for order %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {

    sub_226D3C154(v7, type metadata accessor for OrderRefreshTask);
  }

  v14 = *(v0 + 72);
  v16 = *(v0 + 24);
  v15 = *(v0 + 32);
  v17 = swift_task_alloc();
  v18 = *(v0 + 40);
  v19 = *(v0 + 56);
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  *(v17 + 32) = v15;
  *(v17 + 56) = v19;
  *(v17 + 40) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8760, &unk_226D79760);
  sub_226D6EB7C();
  v20 = *(v0 + 88);
  v21 = *(v0 + 80);
  v22 = *(v0 + 24);

  v23 = *(v0 + 16);
  v24 = (v22 + *(v21 + 28));
  v25 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_226D69AEC();

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_226D3B41C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v87 = a6;
  v88 = a7;
  v89 = a5;
  v90 = a3;
  v91 = a4;
  v92 = a2;
  v107 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v76[-v13];
  v15 = type metadata accessor for OrderNotificationCenter.Continuation();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v76[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  v20 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  v22 = &v76[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  refreshed = type metadata accessor for OrderRefreshTask();
  v24 = *(*(refreshed - 8) + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  v26 = &v76[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_226D6E83C();
  if (!v8)
  {
    v84 = v26;
    v85 = v18;
    v86 = v22;
    v81 = v11;
    v82 = v14;
    v83 = a8;
    sub_226D6751C();
    v28 = sub_226D6745C();
    if (v28)
    {
      v79 = 0;
      v80 = v28;
      v78 = sub_226B31FA8();
      v29 = type metadata accessor for WalletMessageUpdater();
      v30 = swift_allocObject();
      v31 = sub_226D69BFC();
      v32 = MEMORY[0x22AA85C90]();
      *(&v104 + 1) = &type metadata for ClassicOrderBiomeStream;
      *&v105[0] = &off_283A6D820;
      sub_226C02324(v105 + 8);
      v33 = sub_226D6B5EC();
      v34 = MEMORY[0x277CC7F68];
      v101 = v33;
      v102 = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(&v100);
      sub_226D6B58C();
      v98 = v33;
      v99 = v34;
      __swift_allocate_boxed_opaque_existential_1(&v97);
      sub_226D6B5AC();
      v35 = sub_226D6827C();
      v95 = v29;
      v96 = sub_226D3C0A4(&qword_281062070, type metadata accessor for WalletMessageUpdater);
      *&v94 = v30;
      type metadata accessor for ManagedOrderImporter();
      inited = swift_initStackObject();
      *(inited + 312) = 0xD000000000000018;
      *(inited + 320) = 0x8000000226D81BA0;
      sub_226AC484C(&v100, inited + 232);
      sub_226AC484C(&v97, inited + 272);
      v37 = MEMORY[0x277CC7238];
      *(inited + 16) = v35;
      *(inited + 24) = v37;
      *(inited + 72) = v105[4];
      *(inited + 88) = v106;
      *(inited + 96) = &type metadata for WidgetRefresher;
      *(inited + 104) = v78;
      sub_226AC484C(&v94, inited + 112);
      v38 = v105[2];
      *(inited + 40) = v105[3];
      v39 = v103;
      *(inited + 168) = v104;
      v40 = v105[1];
      *(inited + 184) = v105[0];
      *(inited + 200) = v40;
      *(inited + 216) = v38;
      *(inited + 32) = v32;
      v78 = inited + 32;
      v41 = MEMORY[0x277CC79A8];
      *(inited + 56) = v31;
      *(inited + 64) = v41;
      *(inited + 152) = v39;
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v42 = sub_226D6E07C();
      __swift_project_value_buffer(v42, qword_28105F5C0);
      v43 = v84;
      sub_226D3C0EC(a1, v84, type metadata accessor for OrderRefreshTask);
      v44 = sub_226D6E05C();
      v45 = sub_226D6E9EC();
      v46 = os_log_type_enabled(v44, v45);
      v48 = v85;
      v47 = v86;
      if (v46)
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v93[0] = v50;
        *v49 = 136315138;
        sub_226D6B49C();
        v77 = v45;
        v51 = v43;
        sub_226D3C0A4(&qword_27D7A6658, MEMORY[0x277CC7F28]);
        v52 = v48;
        v53 = sub_226D6F1CC();
        v55 = v54;
        sub_226D3C154(v51, type metadata accessor for OrderRefreshTask);
        v56 = v53;
        v48 = v52;
        v57 = sub_226AC4530(v56, v55, v93);

        v58 = v49;
        v47 = v86;
        *(v58 + 1) = v57;
        v59 = v58;
        _os_log_impl(&dword_226AB4000, v44, v77, "Updating content for order %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        MEMORY[0x22AA8BEE0](v50, -1, -1);
        MEMORY[0x22AA8BEE0](v59, -1, -1);
      }

      else
      {

        sub_226D3C154(v43, type metadata accessor for OrderRefreshTask);
      }

      v61 = v79;
      v62 = v80;
      sub_226BBCB6C(v80, v90, v91, v89, 0, v92, v47);
      if (v61)
      {
        goto LABEL_10;
      }

      v63 = [v62 requestAttemptCount];
      type metadata accessor for OrderImportAnalyticsEventsBuilder();
      v64 = swift_initStackObject();
      *(v64 + 16) = v63;
      *(v64 + 24) = 2;
      v91 = sub_226BB3780(v47);
      if (v88)
      {
        v65 = sub_226D6E36C();
      }

      else
      {
        v65 = 0;
      }

      v66 = v80;
      [v80 setLastModifiedValue_];

      [v66 setRequestAttemptCount_];
      [v66 setLastRequestAttemptDate_];
      v67 = v92;
      if ([v92 hasChanges])
      {
        v93[0] = 0;
        if (![v67 save_])
        {
          v75 = v93[0];

          sub_226D6D04C();

          swift_willThrow();
          sub_226D3C154(v47, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
LABEL_10:
          [v92 rollback];
          swift_willThrow();

          swift_setDeallocating();
          sub_226AC47B0(v78, &qword_27D7A7790, &unk_226D79770);
          sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
          sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
          result = __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));
          goto LABEL_21;
        }

        v68 = qword_281061980;
        v69 = v93[0];
        if (v68 != -1)
        {
          swift_once();
        }

        v70 = v81;
        v71 = __swift_project_value_buffer(v81, qword_281064538);
        v72 = v82;
        sub_226AE532C(v71, v82);
        sub_226D3C0EC(v71 + *(v70 + 48), v72 + *(v70 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
        sub_226BB36BC(v72 + *(v70 + 48), v48);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        sub_226BE7E54(v47, v48);
        sub_226D3C154(v48, type metadata accessor for OrderNotificationCenter.Continuation);
        v73 = v80;
        [v92 refreshObject:v80 mergeChanges:0];

        result = sub_226D3C154(v47, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      }

      else
      {
        sub_226D3C154(v47, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      }

      *v83 = v91;
      goto LABEL_21;
    }

    sub_226C5DB48();
    swift_allocError();
    *v60 = 0;
    result = swift_willThrow();
  }

LABEL_21:
  v74 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_226D3BCF0(uint64_t a1, void *a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  sub_226D6E83C();
  if (!v3)
  {
    sub_226D6751C();
    v10 = sub_226D6745C();
    v11 = v10;
    if (v10)
    {
      [v10 setRequestAttemptCount_];
      sub_226AF265C(a3, v9);
      v12 = sub_226D6D4AC();
      v13 = *(v12 - 8);
      v14 = 0;
      if ((*(v13 + 48))(v9, 1, v12) != 1)
      {
        v14 = sub_226D6D3EC();
        (*(v13 + 8))(v9, v12);
      }

      [v11 setLastRequestAttemptDate_];

      if ([a2 hasChanges])
      {
        v19[0] = 0;
        if (![a2 save_])
        {
          v17 = v19[0];
          sub_226D6D04C();

          swift_willThrow();
          [a2 rollback];
          swift_willThrow();

          goto LABEL_12;
        }

        v15 = v19[0];
        [a2 refreshObject:v11 mergeChanges:0];
      }
    }

    else
    {
      sub_226C5DB48();
      swift_allocError();
      *v16 = 0;
      swift_willThrow();
    }
  }

LABEL_12:
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D3BFA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_226AD827C;

  return sub_226D3B060(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_226D3C0A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226D3C0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D3C154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_226D3C1DC()
{
  result = sub_226D6B49C();
  if (v1 <= 0x3F)
  {
    result = sub_226D6D1AC();
    if (v2 <= 0x3F)
    {
      result = sub_226D6B03C();
      if (v3 <= 0x3F)
      {
        result = sub_226D3C290();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_226D3C290()
{
  result = qword_27D7A9510;
  if (!qword_27D7A9510)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D7A9510);
  }

  return result;
}

PKPaymentPass_optional __swiftcall BankConnectPaymentPassDataSource.paymentPass(with:)(Swift::String with)
{
  v2 = *v1;
  v3 = sub_226D6E36C();
  v4 = [v2 passWithFPANIdentifier_];

  v6 = v4;
  result.value.super.super.super.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t BankConnectPaymentPassDataSource.paymentPasses()()
{
  v1 = [*v0 passesOfType_];
  sub_226D3C4EC();
  v2 = sub_226D6E5EC();

  v12 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_226D6EDFC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AA8AFD0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = [v6 paymentPass];

    ++v4;
    if (v9)
    {
      MEMORY[0x22AA8A610]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226D6E61C();
      }

      sub_226D6E65C();
      v5 = v12;
      v4 = v8;
    }
  }

  return v5;
}

unint64_t sub_226D3C4EC()
{
  result = qword_27D7A9518;
  if (!qword_27D7A9518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A9518);
  }

  return result;
}

FinanceDaemon::BankConnectPaymentPassDataSource __swiftcall BankConnectPaymentPassDataSourceProvider.makePaymentPassDataSource()()
{
  v1 = v0;
  result.passLibrary.super.isa = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v1->passLibrary.super.isa = result.passLibrary.super.isa;
  return result;
}

Swift::Void __swiftcall BankConnectPaymentPassDataSource.setDynamicCardArt(enabled:for:)(Swift::Bool enabled, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = *v2;
  v7 = sub_226D6E36C();
  v8 = [v6 passWithFPANIdentifier_];

  if (v8 && (oslog = [v8 uniqueID], v8, oslog))
  {
    v9 = sub_226D6E39C();
    v11 = v10;
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v12 = sub_226D6E07C();
    __swift_project_value_buffer(v12, qword_27D7A7D10);

    v13 = sub_226D6E05C();
    v14 = sub_226D6E9EC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 67109378;
      *(v15 + 4) = enabled;
      *(v15 + 8) = 2080;
      v17 = sub_226AC4530(v9, v11, &v27);

      *(v15 + 10) = v17;
      _os_log_impl(&dword_226AB4000, v13, v14, "Calling setLiveRenderingEnabled(%{BOOL}d, %s)", v15, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    else
    {
    }

    [v6 setLiveRenderingEnabled:enabled forPassUniqueID:{oslog, oslog}];
  }

  else
  {
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v18 = sub_226D6E07C();
    __swift_project_value_buffer(v18, qword_27D7A7D10);

    osloga = sub_226D6E05C();
    v19 = sub_226D6E9CC();

    if (os_log_type_enabled(osloga, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315394;
      if (enabled)
      {
        v22 = 0x656C62616E65;
      }

      else
      {
        v22 = 0x656C6261736964;
      }

      if (enabled)
      {
        v23 = 0xE600000000000000;
      }

      else
      {
        v23 = 0xE700000000000000;
      }

      v24 = sub_226AC4530(v22, v23, &v27);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_226AC4530(countAndFlagsBits, object, &v27);
      _os_log_impl(&dword_226AB4000, osloga, v19, "Failed to %s dynamic card art, payment pass not found for fpanID %s.", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v21, -1, -1);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }
  }
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BankConnectPaymentPassDataSource.isDynamicCardArtEnabled(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  v5 = sub_226D6E36C();
  v6 = [v4 passWithFPANIdentifier_];

  if (v6)
  {
    v7 = [v6 uniqueID];

    if (v7)
    {
      v8 = sub_226D6E39C();
      v10 = v9;
      if (qword_27D7A5F60 != -1)
      {
        swift_once();
      }

      v11 = sub_226D6E07C();
      __swift_project_value_buffer(v11, qword_27D7A7D10);

      v12 = sub_226D6E05C();
      v13 = sub_226D6E9EC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v26 = v15;
        *v14 = 136315138;
        v16 = sub_226AC4530(v8, v10, &v26);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_226AB4000, v12, v13, "Calling isDynamicCardArtEnabled(%s)", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x22AA8BEE0](v15, -1, -1);
        MEMORY[0x22AA8BEE0](v14, -1, -1);
      }

      else
      {
      }

      v22 = [v4 dynamicStateForPassUniqueID_];

      if (v22)
      {
        v23 = [v22 liveRender];
        if (v23)
        {
          v24 = v23;
          LOBYTE(v4) = [v23 enabled];

          return v4 & 1;
        }
      }

      LOBYTE(v4) = 0;
      return v4 & 1;
    }
  }

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v17 = sub_226D6E07C();
  __swift_project_value_buffer(v17, qword_27D7A7D10);

  v18 = sub_226D6E05C();
  v19 = sub_226D6E9CC();

  if (os_log_type_enabled(v18, v19))
  {
    v4 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v4 = 136315138;
    *(v4 + 4) = sub_226AC4530(countAndFlagsBits, object, &v26);
    _os_log_impl(&dword_226AB4000, v18, v19, "Failed to get dynamic card art status, payment pass not found for fpanID %s.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  sub_226CCE0AC();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();
  return v4 & 1;
}

id sub_226D3CC94@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for BankConnectConsentTokenOutdatedTimeoutTask()
{
  result = qword_27D7A9520;
  if (!qword_27D7A9520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D3CD78()
{
  result = sub_226D6D4AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_226D3CDF4(uint64_t *a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6A30C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6794C();
  v10 = *a1;
  v11 = a1[1];
  v12 = sub_226D6788C();
  if (!v2)
  {
    v14 = v12;
    if (v12)
    {
      (*(v6 + 104))(v9, *MEMORY[0x277CC7B68], v5);
      sub_226D678DC();
      v17[0] = 0;
      if ([a2 save_])
      {
        v15 = v17[0];
      }

      else
      {
        v16 = v17[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D3CF90@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_226D3CFE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v0 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D70840;
  swift_storeEnumTagMultiPayload();
  v4 = sub_226B1ED68(v3);
  swift_setDeallocating();
  sub_226D3D490(v3 + v2);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_226D3D0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_226D6D4AC();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2, v2 + v4, v5);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_226D3D1AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_226D3D1CC, 0, 0);
}

uint64_t sub_226D3D1CC()
{
  v1 = *(v0 + 24);
  v2 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v3 = sub_226D676AC();
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  sub_226D6EB7C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226D3D2EC(uint64_t a1)
{
  result = sub_226D3D42C(&qword_27D7A7228, type metadata accessor for BankConnectConsentTokenOutdatedTimeoutTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D3D3D4(uint64_t a1)
{
  result = sub_226D3D42C(&qword_27D7A9530, type metadata accessor for BankConnectConsentTokenOutdatedTimeoutTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D3D42C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226D3D490(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226D3D4EC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  sub_226AC47B0(v0 + 80, &qword_27D7A6910, &unk_226D721C0);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 160));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 200));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 240));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 280));
  v2 = *(v0 + 320);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 328));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 368));
  v3 = *(v0 + 408);

  sub_226AC47B0(v0 + 416, &unk_27D7A7660, &unk_226D7B420);
  v4 = *(v0 + 456);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 464));
  v5 = *(v0 + 552);

  return v0;
}

uint64_t sub_226D3D5B4()
{
  sub_226D3D4EC();

  return swift_deallocClassInstance();
}

uint64_t sub_226D3D614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 544))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226D3D65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 536) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 544) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 544) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226D3D740@<X0>(__int16 *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_226D6D4AC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  if (*a1 < 1)
  {
    v24 = v13;
    v18 = type metadata accessor for TokenBucket.State();
    sub_226AF265C(a1 + *(v18 + 20), v7);
    if ((*(v24 + 48))(v7, 1, v8) == 1)
    {
      sub_226B905C4(v7);
      return (*(v24 + 56))(a2, 1, 1, v8);
    }

    else
    {
      v19 = *(v24 + 32);
      v19(v15, v7, v8);
      sub_226D6D3DC();
      v20 = sub_226D6D3FC();
      v21 = *(v24 + 8);
      v24 += 8;
      v21(v15, v8);
      v22 = (v24 + 48);
      if (v20)
      {
        v19(a2, v12, v8);
        return (*v22)(a2, 0, 1, v8);
      }

      else
      {
        v21(v12, v8);
        return (*v22)(a2, 1, 1, v8);
      }
    }
  }

  else
  {
    v16 = *(v13 + 56);

    return v16(a2, 1, 1, v8);
  }
}

uint64_t type metadata accessor for TokenBucket.State()
{
  result = qword_27D7A9538;
  if (!qword_27D7A9538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226D3DA94()
{
  sub_226B20350();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_226D3DB10(char *a1, uint64_t a2, __int16 a3, double a4)
{
  LOWORD(v5) = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = sub_226D6D4AC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for TokenBucket.State() + 20);
  sub_226AF265C(&a1[v20], v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_226B905C4(v14);
    *a1 = v5;
    sub_226B905C4(&a1[v20]);
    (*(v16 + 16))(&a1[v20], a2, v15);
    return (*(v16 + 56))(&a1[v20], 0, 1, v15);
  }

  (*(v16 + 32))(v19, v14, v15);
  result = sub_226D6D3BC();
  v23 = v22 * a4;
  v24 = 0.0;
  if (v22 * a4 >= 0.0)
  {
    v24 = 32767.0;
    if (v23 <= 32767.0)
    {
      if (v23 <= -32769.0)
      {
        __break(1u);
      }

      else
      {
        v24 = v22 * a4;
        if (v23 < 32768.0)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_13;
    }
  }

LABEL_7:
  v25 = *a1;
  v26 = v5 - *a1;
  if ((v5 - *a1) != v26)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v27 = v24;
  if (v24 > v26 || (v5 = v27 + v25, v5 == (v27 + v25)))
  {
    *a1 = v5;
    sub_226D6D3DC();
    (*(v16 + 8))(v19, v15);
    (*(v16 + 56))(v12, 0, 1, v15);
    return sub_226B3E298(v12, &a1[v20]);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t BankConnectServiceImplementation.loadTransactions(for:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v6 = sub_226D6B9BC();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_226D3DF2C;

  return sub_226C00808(v9, a1, a2);
}

uint64_t sub_226D3DF2C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B40E90, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[8] = v4;
    *v4 = v3;
    v4[1] = sub_226B40CFC;
    v5 = v3[2];
    v6 = v3[5];

    return BankConnectServiceImplementation.loadTransactions(for:)(v6);
  }
}

uint64_t BankConnectServiceImplementation.loadTransactions(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6764C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = sub_226D6BE1C();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_226D6D4AC();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v13 = sub_226D6B9BC();
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v15 = *(v14 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D3E2DC, 0, 0);
}

uint64_t sub_226D3E2DC()
{
  v49 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v3 + 16);
  *(v0 + 176) = v7;
  *(v0 + 184) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5, v2);
  v8 = *__swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  v9 = sub_226D676AC();
  *(v0 + 192) = v9;
  sub_226D6D46C();
  v10 = swift_task_alloc();
  v10[2] = v9;
  v10[3] = v1;
  v10[4] = v4;
  sub_226D6EB7C();

  if (*(v0 + 264) == 1)
  {
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 160);
    v12 = *(v0 + 168);
    v13 = *(v0 + 136);
    v14 = sub_226D6E07C();
    *(v0 + 200) = __swift_project_value_buffer(v14, qword_27D7A7D10);
    v7(v11, v12, v13);
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9AC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 160);
    v19 = *(v0 + 136);
    v20 = *(v0 + 144);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v21 = 136315138;
      sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      v22 = sub_226D6F1CC();
      v24 = v23;
      v25 = *(v20 + 8);
      v25(v18, v19);
      v26 = sub_226AC4530(v22, v24, &v48);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_226AB4000, v15, v16, "Fetching transactions (refresh) for %s.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x22AA8BEE0](v46, -1, -1);
      MEMORY[0x22AA8BEE0](v21, -1, -1);
    }

    else
    {

      v25 = *(v20 + 8);
      v25(v18, v19);
    }

    *(v0 + 208) = v25;
    v38 = *(v0 + 168);
    v39 = sub_226D6B97C();
    v41 = v40;
    *(v0 + 216) = v40;
    v42 = swift_task_alloc();
    *(v0 + 224) = v42;
    *v42 = v0;
    v42[1] = sub_226D3E7AC;
    v43 = *(v0 + 120);
    v44 = *(v0 + 32);

    return sub_226D3F680(v43, v39, v41);
  }

  else
  {
    v27 = *(v0 + 104);

    v28 = *(v0 + 160);
    v29 = *(v0 + 168);
    v31 = *(v0 + 144);
    v30 = *(v0 + 152);
    v32 = *(v0 + 136);
    v34 = *(v0 + 112);
    v33 = *(v0 + 120);
    v35 = *(v0 + 88);
    v45 = *(v0 + 64);
    v47 = *(v0 + 56);
    (*(v27 + 8))(*(v0 + 128), *(v0 + 96));
    (*(v31 + 8))(v29, v32);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_226D3E7AC()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_226D3EDC4;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_226D3E8C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D3E8C8()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[6];
  v20 = v0[5];
  v21 = v0[7];
  v8 = __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  sub_226B41FC0();
  v22 = swift_allocObject();
  sub_226B42014(v8, v22 + 16);
  v9 = sub_226D6BE3C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_226D6BDFC();
  v0[30] = v12;
  v0[2] = v12;
  (*(v3 + 16))(v1, v2, v4);
  (*(v3 + 56))(v6, 1, 1, v4);
  sub_226D6BE0C();
  (*(v7 + 104))(v21, *MEMORY[0x277CC6D38], v20);
  v13 = *(MEMORY[0x277CC81D8] + 4);
  v14 = swift_task_alloc();
  v0[31] = v14;
  *v14 = v0;
  v14[1] = sub_226D3EA98;
  v15 = v0[21];
  v16 = v0[11];
  v17 = v0[7];
  v18 = MEMORY[0x277CC8178];

  return MEMORY[0x28211A688](v15, v16, v17, v9, v18);
}

uint64_t sub_226D3EA98()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = v2[30];
  v6 = v2[11];
  v7 = v2[10];
  v8 = v2[9];
  (*(v2[6] + 8))(v2[7], v2[5]);
  (*(v7 + 8))(v6, v8);

  if (v0)
  {
    v9 = sub_226D3EF08;
  }

  else
  {
    v9 = sub_226D3EC80;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_226D3EC80()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[16];
  v4 = v0[4];
  v5 = *(v0[13] + 8);
  v5(v0[15], v0[12]);
  sub_226D3F4D4(v4);

  v6 = v0[20];
  v7 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  v11 = v0[15];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[8];
  v17 = v0[7];
  v5(v0[16], v0[12]);
  (*(v9 + 8))(v7, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_226D3EDC4()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[16];
  v5 = v0[4];

  sub_226D3F4D4(v5);

  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[18];
  v9 = v0[19];
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  v16 = v0[8];
  v17 = v0[7];
  v18 = v0[29];
  (*(v0[13] + 8))(v0[16], v0[12]);
  (*(v8 + 8))(v6, v10);

  v14 = v0[1];

  return v14();
}

uint64_t sub_226D3EF08()
{
  v48 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  (*(v0 + 176))(*(v0 + 152), *(v0 + 168), *(v0 + 136));
  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  if (os_log_type_enabled(v5, v6))
  {
    v43 = *(v0 + 208);
    v46 = *(v0 + 256);
    v7 = *(v0 + 152);
    v41 = *(v0 + 144);
    v8 = *(v0 + 136);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47 = v11;
    *v9 = 136315394;
    sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058]);
    v12 = sub_226D6F1CC();
    v14 = v13;
    v43(v7, v8);
    v15 = sub_226AC4530(v12, v14, &v47);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v46;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to fetch transactions (refresh) for %s with: %@.", v9, 0x16u);
    sub_226B17298(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {
    v18 = *(v0 + 208);
    v20 = *(v0 + 144);
    v19 = *(v0 + 152);
    v21 = *(v0 + 136);

    v18(v19, v21);
  }

  v22 = *(v0 + 256);
  v44 = *(v0 + 192);
  v23 = *(v0 + 168);
  v25 = *(v0 + 120);
  v24 = *(v0 + 128);
  v26 = *(v0 + 96);
  v27 = *(v0 + 104);
  v28 = *(v0 + 32);
  v29 = sub_226D6A0DC();
  sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
  swift_allocError();
  *v30 = v22;
  (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277CC7AB0], v29);
  swift_willThrow();
  (*(v27 + 8))(v25, v26);
  sub_226D3F4D4(v28);

  v32 = *(v0 + 160);
  v31 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = *(v0 + 152);
  v35 = *(v0 + 136);
  v37 = *(v0 + 112);
  v36 = *(v0 + 120);
  v38 = *(v0 + 88);
  v42 = *(v0 + 64);
  v45 = *(v0 + 56);
  (*(*(v0 + 104) + 8))(*(v0 + 128), *(v0 + 96));
  (*(v33 + 8))(v31, v35);

  v39 = *(v0 + 8);

  return v39();
}

void sub_226D3F2E4(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v16[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v16];

  v7 = v16[0];
  if (v6)
  {
    sub_226D69F0C();
    v8 = v7;
    v9 = sub_226D69D9C();
    if (v2)
    {
    }

    else
    {
      v12 = v9;
      if (v9)
      {
        if ((sub_226D69EAC() & 1) == 0)
        {

          *a2 = 0;
          goto LABEL_6;
        }

        v13 = sub_226D6D3EC();
        [v12 setLastTransactionsRefreshDate_];

        v16[0] = 0;
        if (![a1 save_])
        {
          v15 = v16[0];
          sub_226D6D04C();

          swift_willThrow();
          goto LABEL_6;
        }

        v14 = v16[0];
      }
    }

    *a2 = 1;
  }

  else
  {
    v10 = v16[0];
    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_226D3F4B4(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_226D3F2E4(*(v1 + 16), a1);
}

uint64_t sub_226D3F4D4(uint64_t a1)
{
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D46C();
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_226AE532C((v7 + 41), v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v8 = sub_226D6B97C();
  v10 = v9;
  sub_226D6D3BC();
  v12 = v11;
  v15[3] = &_s24InstitutionDurationEventVN;
  v15[4] = sub_226B420B8();
  v13 = swift_allocObject();
  v15[0] = v13;
  v13[2] = 0xD000000000000030;
  v13[3] = 0x8000000226D885E0;
  v13[4] = v8;
  v13[5] = v10;
  v13[6] = v12;
  sub_226D69AFC();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t sub_226D3F680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6EB9C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D3F744, 0, 0);
}

uint64_t sub_226D3F744()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v8 = *(*(v7 + 8) + 8);
  sub_226D6BAAC();
  v9 = sub_226D676AC();
  v0[9] = v9;

  v10 = swift_allocObject();
  v0[10] = v10;
  v10[2] = v6;
  v10[3] = v5;
  v10[4] = v9;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v4);
  v11 = *(MEMORY[0x277CBE118] + 4);

  v9;
  v12 = swift_task_alloc();
  v0[11] = v12;
  v13 = sub_226D6D4AC();
  *v12 = v0;
  v12[1] = sub_226C00A4C;
  v14 = v0[8];
  v15 = v0[2];

  return MEMORY[0x28210EE50](v15, v14, sub_226D3FC18, v10, v13);
}

uint64_t sub_226D3F8C4(uint64_t a1, unint64_t a2)
{
  v5 = sub_226D6D4AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6842C();
  v10 = sub_226D683EC();
  if (v2)
  {
  }

  else if (v10)
  {
    v21 = v10;
    sub_226D6D46C();
    [v21 maxAgeTransactionsRefreshRequest];
    sub_226D6D3DC();

    return (*(v6 + 8))(v9, v5);
  }

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6E07C();
  __swift_project_value_buffer(v11, qword_27D7A7D10);

  v12 = sub_226D6E05C();
  v13 = sub_226D6E9CC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_226AC4530(a1, a2, &v22);
    _os_log_impl(&dword_226AB4000, v12, v13, "Failed to fetch ManagedInstitution for: %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  v16 = sub_226D6A0DC();
  sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
  swift_allocError();
  v18 = v17;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_226D6EEFC();

  v22 = 0xD000000000000024;
  v23 = 0x8000000226D88620;
  MEMORY[0x22AA8A510](a1, a2);
  MEMORY[0x22AA8A510](46, 0xE100000000000000);
  v19 = v23;
  *v18 = v22;
  v18[1] = v19;
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277CC7AC0], v16);
  return swift_willThrow();
}

unint64_t sub_226D3FC38(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      sub_226D6EEFC();

      v20 = 0xD000000000000019;
      v6 = [a1 description];
      v7 = sub_226D6E39C();
      v9 = v8;

      MEMORY[0x22AA8A510](v7, v9);

      MEMORY[0x22AA8A510](8236, 0xE200000000000000);
      v4 = [a2 description];
      goto LABEL_10;
    }
  }

  else
  {
    if (!a3)
    {
      sub_226D6EEFC();

      v20 = 0xD000000000000021;
      v4 = [a1 description];
      goto LABEL_10;
    }

    if (a3 != 1)
    {
      sub_226D6EEFC();

      v20 = 0xD000000000000018;
      v11 = [a1 description];
      v12 = sub_226D6E39C();
      v14 = v13;

      MEMORY[0x22AA8A510](v12, v14);

      MEMORY[0x22AA8A510](8236, 0xE200000000000000);
      v4 = [a2 description];
      goto LABEL_10;
    }
  }

  sub_226D6EEFC();

  v20 = 0xD000000000000019;
  v4 = [a1 description];
LABEL_10:
  v15 = v4;
  v16 = sub_226D6E39C();
  v18 = v17;

  MEMORY[0x22AA8A510](v16, v18);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return v20;
}

uint64_t sub_226D3FF90(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a6 != 3)
      {
        return 0;
      }

LABEL_15:
      sub_226B509B0();
      if (sub_226D6EC3C())
      {
        return sub_226D6EC3C() & 1;
      }

      return 0;
    }

    if (a3 == 4)
    {
      if (a6 != 4)
      {
        return 0;
      }
    }

    else if (a6 != 5)
    {
      return 0;
    }

LABEL_18:
    sub_226B509B0();
    return sub_226D6EC3C() & 1;
  }

  if (!a3)
  {
    if (a6)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (a3 == 1)
  {
    if (a6 != 1)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (a6 == 2)
  {
    goto LABEL_15;
  }

  return 0;
}

void sub_226D4009C(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D673EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6A43C();
  v9 = sub_226D6A40C();
  if (!v2)
  {
    v10 = v9;
    sub_226D6739C();

    (*(v5 + 8))(v8, v4);
    v15[0] = 0;
    v12 = [a2 save_];
    if (v12)
    {
      v13 = v15[0];
    }

    else
    {
      v14 = v15[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_226D403A4(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D68E6C();
  v4 = sub_226D68E4C();
  if (!v2)
  {
    v5 = v4;
    sub_226D6A43C();
    v6 = v5;
    v7 = a2;

    v11[0] = 0;
    if ([v7 save_])
    {
      v8 = v11[0];
    }

    else
    {
      v9 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_226D404B8(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D6A43C();
  v5 = sub_226D6A40C();
  if (!v3)
  {
    v6 = v5;
    v8 = sub_226D6A40C();
    sub_226D6A42C();
    v11[0] = 0;
    if ([a3 save_])
    {
      v9 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_226D406DC(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  sub_226D6A43C();
  v5 = sub_226D6A40C();
  if (!v3)
  {
    v6 = v5;
    sub_226D68E6C();
    v8 = sub_226D68E4C();
    sub_226D6A41C();
    v11[0] = 0;
    if ([a3 save_])
    {
      v9 = v11[0];
    }

    else
    {
      v10 = v11[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_226D40918(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7218, &unk_226D74820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - v6;
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D68E6C();
  v13 = sub_226D68E4C();
  if (!v2)
  {
    v14 = v13;
    sub_226D69F0C();
    sub_226D68E1C();
    v15 = sub_226D69D9C();
    (*(v9 + 8))(v12, v8);
    if (v15)
    {
      [v15 setExternalAccountId_];
      v16 = sub_226D68CBC();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
      sub_226D69E6C();
    }

    [a2 deleteObject_];
    v20[0] = 0;
    if ([a2 save_])
    {
      v17 = v20[0];
    }

    else
    {
      v18 = v20[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_226D40BBC(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_226D6A43C();
  v4 = sub_226D6A40C();
  if (!v2)
  {
    v5 = v4;
    [a2 deleteObject_];
    v9[0] = 0;
    if ([a2 save_])
    {
      v6 = v9[0];
    }

    else
    {
      v7 = v9[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D40CC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_226D40D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_226D40D60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 changedObjectID];
  v5 = [v4 entity];

  v6 = [v5 name];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = sub_226D6E39C();
  v9 = v8;

  if (v7 != 0x646572436B6E6142 || v9 != 0xEE006C6169746E65)
  {
    if ((sub_226D6F21C() & 1) == 0)
    {

      goto LABEL_18;
    }

    if (v7 == 0xD000000000000013 && 0x8000000226D88750 == v9)
    {

LABEL_14:
      v13 = a1;

      return sub_226D40F3C(v13, a2);
    }
  }

  v12 = sub_226D6F21C();

  if (v12)
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = type metadata accessor for BankCredentialMappingModel.Change();
  v16 = *(*(v15 - 8) + 56);

  return v16(a2, 1, 1, v15);
}

uint64_t sub_226D40F3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v44 - v5;
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v44 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BankCredentialMappingModel.Change();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 changedObjectID];
  *&v13[*(v10 + 24)] = v14;
  v46 = v14;
  v15 = [v14 entityName];
  v16 = sub_226D6E39C();
  v18 = v17;

  v19 = v16 == 0x646572436B6E6142 && v18 == 0xEE006C6169746E65;
  if (v19 || (sub_226D6F21C() & 1) != 0)
  {

    v20 = 1;
    v21 = 1;
  }

  else
  {
    if (v16 == 0xD000000000000013 && 0x8000000226D88750 == v18)
    {
    }

    else
    {
      v37 = sub_226D6F21C();

      if ((v37 & 1) == 0)
      {
        if (qword_28105F620 != -1)
        {
          swift_once();
        }

        v43 = sub_226D6E07C();
        __swift_project_value_buffer(v43, qword_28105F628);
        v39 = sub_226D6E05C();
        v40 = sub_226D6E9CC();
        if (!os_log_type_enabled(v39, v40))
        {
          goto LABEL_37;
        }

        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = "Change was not for a cloud or local bank credential";
LABEL_36:
        _os_log_impl(&dword_226AB4000, v39, v40, v42, v41, 2u);
        MEMORY[0x22AA8BEE0](v41, -1, -1);
LABEL_37:

        return (*(v47 + 56))(v48, 1, 1, v10);
      }
    }

    v20 = 0;
    v21 = 0;
  }

  v13[*(v10 + 20)] = v20;
  v22 = [a1 changeType];
  if (!v22)
  {

    (*(v7 + 56))(v13, 1, 2, v6);
    goto LABEL_11;
  }

  if (v22 == 1)
  {

    (*(v7 + 56))(v13, 2, 2, v6);
LABEL_11:
    v23 = v48;
    sub_226D4439C(v13, v48, type metadata accessor for BankCredentialMappingModel.Change);
    (*(v47 + 56))(v23, 0, 1, v10);
    return sub_226D44404(v13, type metadata accessor for BankCredentialMappingModel.Change);
  }

  if (v22 == 2)
  {
    if (v21)
    {
      v25 = 0xE200000000000000;
    }

    else
    {
      v25 = 0x8000000226D86940;
    }

    v26 = [a1 tombstone];
    if (v26)
    {
      if (v21)
      {
        v27 = 25705;
      }

      else
      {
        v27 = 0xD000000000000014;
      }

      v28 = v26;
      v29 = sub_226D6E2BC();

      v49 = v27;
      v50 = v25;
      sub_226D6EE8C();
      if (*(v29 + 16) && (v30 = sub_226C2FE4C(v51), (v31 & 1) != 0))
      {
        sub_226AC4708(*(v29 + 56) + 32 * v30, v52);
        sub_226AE5030(v51);

        v32 = v45;
        v33 = swift_dynamicCast();
        v34 = *(v7 + 56);
        v34(v32, v33 ^ 1u, 1, v6);
        if ((*(v7 + 48))(v32, 1, v6) != 1)
        {

          v35 = *(v7 + 32);
          v36 = v44;
          v35(v44, v32, v6);
          v35(v13, v36, v6);
          v34(v13, 0, 2, v6);
          goto LABEL_11;
        }
      }

      else
      {

        sub_226AE5030(v51);
        v32 = v45;
        (*(v7 + 56))(v45, 1, 1, v6);
      }

      sub_226AC47B0(v32, &qword_27D7A6D68, &qword_226D75210);
    }

    else
    {
    }

    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v38 = sub_226D6E07C();
    __swift_project_value_buffer(v38, qword_28105F628);
    v39 = sub_226D6E05C();
    v40 = sub_226D6E9CC();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_37;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "Received delete change but no tombstone";
    goto LABEL_36;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

void sub_226D41654(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9558, &qword_226D7E168);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v10 = [a2 changedObjectID];
  v11 = type metadata accessor for BankCredentialMappingModel.Change();
  v12 = *(a1 + *(v11 + 24));
  v13 = sub_226D6EC3C();

  if (v13)
  {
    sub_226D40F3C(a2, v9);
    v14 = *(*(v11 - 8) + 48);
    if (v14(v9, 1, v11) == 1)
    {
      sub_226D4439C(a1, a3, type metadata accessor for BankCredentialMappingModel.Change);
      if (v14(v9, 1, v11) != 1)
      {
        sub_226AC47B0(v9, &qword_27D7A9558, &qword_226D7E168);
      }
    }

    else
    {
      sub_226D444AC(v9, a3, type metadata accessor for BankCredentialMappingModel.Change);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226D41814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v6 = type metadata accessor for BankCredentialMappingModel.Change();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v64 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6CBBC();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v66 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v62 - v13;
  v75 = sub_226D6CBCC();
  v73 = *(v75 - 8);
  v14 = *(v73 + 64);
  v15 = MEMORY[0x28223BE20](v75);
  v69 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9550, &qword_226D7E160);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v62 - v25;
  sub_226D4432C(a1, &v62 - v25);
  v27 = sub_226D6D52C();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(v26, 2, v27))
  {
    (*(v28 + 32))(a3, v26, v27);
    return (*(v28 + 56))(a3, 0, 1, v27);
  }

  v70 = v28;
  v71 = v27;
  v72 = a3;
  sub_226AC47B0(v26, &qword_27D7A9550, &qword_226D7E160);
  v29 = *(a1 + *(v6 + 20));
  v63 = a1;
  if (v29 == 1)
  {
    sub_226D6980C();
    v30 = *(a1 + *(v6 + 24));
    v31 = sub_226D697DC();
    v32 = v75;
    if (!v3)
    {
      v33 = &selRef_id;
LABEL_14:
      v51 = v31;
      v52 = [v31 *v33];

      sub_226D6D4FC();
      (*(v70 + 56))(v22, 0, 1, v71);
      return sub_226BACBC0(v22, v72);
    }
  }

  else
  {
    sub_226D6AA2C();
    v35 = *(a1 + *(v6 + 24));
    v31 = sub_226D6A9FC();
    v32 = v75;
    if (!v3)
    {
      v33 = &selRef_credentialIdentifier;
      goto LABEL_14;
    }
  }

  v78 = v3;
  v36 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  v37 = swift_dynamicCast();
  v38 = v73;
  if (v37)
  {
    v75 = v6;
    v39 = v69;
    (*(v73 + 32))(v69, v18, v32);
    sub_226D44464(&qword_27D7A6DD8, 255, MEMORY[0x277CC8620]);
    v40 = v65;
    sub_226D6D02C();
    v41 = v66;
    sub_226D6CBAC();
    sub_226D44464(&qword_27D7A6DE0, 255, MEMORY[0x277CC8608]);
    v42 = v68;
    sub_226D6E53C();
    sub_226D6E53C();
    v43 = *(v67 + 8);
    v43(v41, v42);
    v43(v40, v42);
    if (v77 == v76)
    {

      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v44 = sub_226D6E07C();
      __swift_project_value_buffer(v44, qword_28105F628);
      v45 = v64;
      sub_226D4439C(v63, v64, type metadata accessor for BankCredentialMappingModel.Change);
      v46 = sub_226D6E05C();
      v47 = sub_226D6E9CC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        v50 = *(v45 + *(v75 + 24));
        sub_226D44404(v45, type metadata accessor for BankCredentialMappingModel.Change);
        *(v48 + 4) = v50;
        *v49 = v50;
        v39 = v69;
        _os_log_impl(&dword_226AB4000, v46, v47, "Object %@ does not exist. Ignoring.", v48, 0xCu);
        sub_226AC47B0(v49, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v49, -1, -1);
        MEMORY[0x22AA8BEE0](v48, -1, -1);
      }

      else
      {

        sub_226D44404(v45, type metadata accessor for BankCredentialMappingModel.Change);
      }

      (*(v73 + 8))(v39, v32);
      v61 = v78;
      goto LABEL_23;
    }

    (*(v38 + 8))(v39, v32);
  }

  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v53 = sub_226D6E07C();
  __swift_project_value_buffer(v53, qword_28105F628);
  v54 = v3;
  v55 = sub_226D6E05C();
  v56 = sub_226D6E9CC();

  if (!os_log_type_enabled(v55, v56))
  {

    v61 = v3;
LABEL_23:

    return (*(v70 + 56))(v72, 1, 1, v71);
  }

  v57 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  *v57 = 138412290;
  v59 = v3;
  v60 = _swift_stdlib_bridgeErrorToNSError();
  *(v57 + 4) = v60;
  *v58 = v60;
  _os_log_impl(&dword_226AB4000, v55, v56, "Error fetching identifier: %@", v57, 0xCu);
  sub_226AC47B0(v58, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v58, -1, -1);
  MEMORY[0x22AA8BEE0](v57, -1, -1);

  return (*(v70 + 56))(v72, 1, 1, v71);
}

uint64_t sub_226D420AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (**a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v49 = a2;
  v6 = _s8MetadataV15CloudItemStatusOMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s8MetadataV9CloudItemVMa(0);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9550, &qword_226D7E160);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v45 - v16;
  v18 = type metadata accessor for BankCredentialMappingModel.Change();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v52;
  result = sub_226D426E4(a1, v50, a4);
  if (!v23)
  {
    v25 = v48;
    v52 = v18;
    v51 = v10;
    v45[1] = 0;
    v26 = *(v49 + 16);
    if (v26)
    {
      v27 = a4;
      v28 = v13;
      v29 = v49 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v47 = v27;
      v48 += 56;
      v30 = *(v19 + 72);
      v46 = v9;
      v49 = v30;
      v50 = (v25 + 48);
      v45[0] = v13;
      do
      {
        sub_226D4439C(v29, v22, type metadata accessor for BankCredentialMappingModel.Change);
        sub_226D4432C(v22, v17);
        v31 = sub_226D6D52C();
        if ((*(*(v31 - 8) + 48))(v17, 2, v31))
        {
          sub_226D44404(v22, type metadata accessor for BankCredentialMappingModel.Change);
          result = sub_226AC47B0(v17, &qword_27D7A9550, &qword_226D7E160);
        }

        else
        {
          sub_226AC47B0(v17, &qword_27D7A9550, &qword_226D7E160);
          if (v22[*(v52 + 20)])
          {
            sub_226D44404(v22, type metadata accessor for BankCredentialMappingModel.Change);
            v32 = *(_s8MetadataVMa(0) + 24);
            sub_226D44404(v27 + v32, _s8MetadataV15LocalItemStatusOMa);
            v33 = _s8MetadataV9LocalItemVMa(0);
            result = (*(*(v33 - 8) + 56))(v27 + v32, 1, 2, v33);
          }

          else
          {
            v34 = *(_s8MetadataVMa(0) + 20);
            sub_226D4439C(v27 + v34, v9, _s8MetadataV15CloudItemStatusOMa);
            v35 = v51;
            if ((*v50)(v9, 2, v51))
            {
              sub_226D44404(v22, type metadata accessor for BankCredentialMappingModel.Change);
              sub_226D44404(v9, _s8MetadataV15CloudItemStatusOMa);
            }

            else
            {
              sub_226D444AC(v9, v28, _s8MetadataV9CloudItemVMa);
              v36 = v28 + *(v35 + 20);
              v37 = *(v36 + *(_s8MetadataV9CloudItemV6ObjectVMa(0) + 20));
              v38 = *&v22[*(v52 + 24)];
              sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
              v39 = v37;
              v40 = v38;
              LOBYTE(v36) = sub_226D6EC3C();

              if ((v36 & 1) == 0)
              {
                if (qword_28105F620 != -1)
                {
                  swift_once();
                }

                v41 = sub_226D6E07C();
                __swift_project_value_buffer(v41, qword_28105F628);
                v42 = sub_226D6E05C();
                v43 = sub_226D6E9AC();
                if (os_log_type_enabled(v42, v43))
                {
                  v44 = swift_slowAlloc();
                  *v44 = 0;
                  _os_log_impl(&dword_226AB4000, v42, v43, "Deleted duplicate cloud credential. Ignoring change.", v44, 2u);
                  MEMORY[0x22AA8BEE0](v44, -1, -1);
                }

                sub_226D44404(v28, _s8MetadataV9CloudItemVMa);
                result = sub_226D44404(v22, type metadata accessor for BankCredentialMappingModel.Change);
                v9 = v46;
                v27 = v47;
                v30 = v49;
                goto LABEL_5;
              }

              sub_226D44404(v45[0], _s8MetadataV9CloudItemVMa);
              sub_226D44404(v22, type metadata accessor for BankCredentialMappingModel.Change);
              v9 = v46;
              v27 = v47;
              v35 = v51;
            }

            sub_226D44404(v27 + v34, _s8MetadataV15CloudItemStatusOMa);
            result = (*v48)(v27 + v34, 1, 2, v35);
            v30 = v49;
          }
        }

LABEL_5:
        v29 += v30;
        --v26;
      }

      while (v26);
    }
  }

  return result;
}

void *sub_226D426E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v69 = a3;
  v4 = _s8MetadataV9CloudItemVMa(0);
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v67 = *(v70 - 8);
  v8 = *(v67 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v17 = _s8MetadataV15CloudItemStatusOMa(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s8MetadataV9LocalItemVMa(0);
  v71 = *(v21 - 8);
  v22 = *(v71 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = _s8MetadataV15LocalItemStatusOMa(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6980C();
  v29 = v74;
  result = sub_226D697BC();
  if (!v29)
  {
    v64 = v16;
    v65 = v28;
    v31 = v70;
    v63 = v20;
    v66 = a1;
    v74 = 0;
    if (result)
    {
      v32 = result;
      v33 = [result objectID];
      v34 = [v32 updatedDate];
      v35 = v24 + *(v21 + 20);
      sub_226D6D45C();

      *v24 = v33;
      v36 = v24;
      v37 = v65;
      sub_226D444AC(v36, v65, _s8MetadataV9LocalItemVMa);
      (*(v71 + 56))(v37, 0, 2, v21);
    }

    else
    {
      v37 = v65;
      (*(v71 + 56))(v65, 2, 2, v21);
    }

    v38 = v72;
    v39 = v73;
    v40 = v66;
    v41 = v74;
    v42 = sub_226D42EB8(v66, v75);
    if (v41)
    {
      return sub_226D44404(v37, _s8MetadataV15LocalItemStatusOMa);
    }

    else
    {
      v74 = 0;
      v43 = *(v42 + 16);
      if (v43)
      {
        v44 = v67;
        v45 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v46 = v42;
        v47 = v64;
        sub_226D4439C(v42 + v45, v64, _s8MetadataV9CloudItemV6ObjectVMa);
        sub_226B38744(v46, v46 + v45, 1, (2 * v43) | 1);
        v49 = v48;

        sub_226D4439C(v47, v14, _s8MetadataV9CloudItemV6ObjectVMa);
        v50 = *(v49 + 16);
        if (v50)
        {
          v51 = *(v31 + 24);
          v52 = v49 + v45;
          v53 = *(v44 + 72);
          do
          {
            sub_226D4439C(v52, v11, _s8MetadataV9CloudItemV6ObjectVMa);
            v54 = *(v31 + 24);
            if (sub_226D6D3FC())
            {
              sub_226D44404(v14, _s8MetadataV9CloudItemV6ObjectVMa);
              sub_226D444AC(v11, v14, _s8MetadataV9CloudItemV6ObjectVMa);
            }

            else
            {
              sub_226D44404(v11, _s8MetadataV9CloudItemV6ObjectVMa);
            }

            v52 += v53;
            --v50;
          }

          while (v50);
        }

        v55 = v14;
        v56 = v68;
        sub_226D444AC(v55, v68, _s8MetadataV9CloudItemV6ObjectVMa);
        v57 = v72;
        sub_226D444AC(v64, v56 + *(v72 + 20), _s8MetadataV9CloudItemV6ObjectVMa);
        *(v56 + *(v57 + 24)) = v49;
        v58 = v56;
        v59 = v63;
        sub_226D444AC(v58, v63, _s8MetadataV9CloudItemVMa);
        (*(v73 + 56))(v59, 0, 2, v57);
        v37 = v65;
        v40 = v66;
      }

      else
      {

        v59 = v63;
        (*(v39 + 56))(v63, 2, 2, v38);
      }

      v60 = sub_226D6D52C();
      v61 = v69;
      (*(*(v60 - 8) + 16))(v69, v40, v60);
      v62 = _s8MetadataVMa(0);
      sub_226D444AC(v59, v61 + *(v62 + 20), _s8MetadataV15CloudItemStatusOMa);
      return sub_226D444AC(v37, v61 + *(v62 + 24), _s8MetadataV15LocalItemStatusOMa);
    }
  }

  return result;
}

uint64_t sub_226D42E60(uint64_t a1, uint64_t a2)
{
  result = sub_226D44464(&qword_27D7A9548, a2, type metadata accessor for BankCredentialMappingModel);
  *(a1 + 8) = result;
  return result;
}

size_t sub_226D42EB8(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v2 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6AA2C();
  v7 = sub_226D6A9EC();
  v8 = sub_226D6A9CC();
  [v7 setPredicate_];

  [v7 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_226D71F20;
  v10 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v11 = sub_226D6E36C();
  v12 = [v10 initWithKey:v11 ascending:0];

  *(v9 + 32) = v12;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v13 = sub_226D6E5CC();

  [v7 setSortDescriptors_];

  v14 = v34;
  v15 = v35;
  v16 = sub_226D6EBBC();
  if (v15)
  {

    return v14;
  }

  v17 = v16;
  if (!(v16 >> 62))
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_15:

    return MEMORY[0x277D84F90];
  }

  v18 = sub_226D6EDFC();
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_5:
  v35 = v3;
  v32 = 0;
  v33 = v7;
  v36 = MEMORY[0x277D84F90];
  result = sub_226AE2340(0, v18 & ~(v18 >> 63), 0);
  v34 = v18;
  if ((v18 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v14 = v36;
    v21 = v17;
    v22 = v17 & 0xC000000000000001;
    v23 = v17;
    do
    {
      if (v22)
      {
        v24 = MEMORY[0x22AA8AFD0](v20, v21);
      }

      else
      {
        v24 = *(v21 + 8 * v20 + 32);
      }

      v25 = v24;
      v26 = [v24 objectID];
      v27 = [v25 id];
      sub_226D6D4FC();

      v28 = [v25 updatedDate];
      v29 = &v6[*(v2 + 24)];
      sub_226D6D45C();

      *&v6[*(v2 + 20)] = v26;
      v36 = v14;
      v31 = *(v14 + 16);
      v30 = *(v14 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_226AE2340(v30 > 1, v31 + 1, 1);
        v14 = v36;
      }

      ++v20;
      *(v14 + 16) = v31 + 1;
      sub_226D444AC(v6, v14 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31, _s8MetadataV9CloudItemV6ObjectVMa);
      v21 = v23;
    }

    while (v34 != v20);

    return v14;
  }

  __break(1u);
  return result;
}

char *sub_226D43270(uint64_t a1)
{
  v2 = _s8MetadataV9LocalItemVMa(0);
  v146 = *(v2 - 8);
  v147 = v2;
  v3 = *(v146 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v138 = (&v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v134 = &v130 - v6;
  v7 = _s8MetadataV15LocalItemStatusOMa(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v136 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v145 = &v130 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v142 = &v130 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v130 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v130 - v18;
  v20 = _s8MetadataV15CloudItemStatusOMa(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v143 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v140 = &v130 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v135 = &v130 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v130 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v130 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v130 - v34;
  v36 = _s8MetadataV9CloudItemVMa(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v141 = &v130 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v139 = &v130 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v137 = &v130 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v130 - v45;
  v152 = MEMORY[0x277D84F90];
  v150 = _s8MetadataVMa(0);
  v144 = *(v150 + 20);
  sub_226D4439C(a1 + v144, v35, _s8MetadataV15CloudItemStatusOMa);
  v47 = *(v37 + 48);
  v48 = v47(v35, 2, v36);
  v149 = v47;
  if (v48)
  {
    sub_226D44404(v35, _s8MetadataV15CloudItemStatusOMa);
    v148 = MEMORY[0x277D84F90];
LABEL_7:
    v53 = v145;
    goto LABEL_8;
  }

  v133 = a1;
  sub_226D444AC(v35, v46, _s8MetadataV9CloudItemVMa);
  v49 = &v46[*(v36 + 20)];
  v50 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v51 = *(v50 + 24);
  if ((sub_226D6D40C() & 1) == 0)
  {
    sub_226D44404(v46, _s8MetadataV9CloudItemVMa);
    v148 = MEMORY[0x277D84F90];
    a1 = v133;
    goto LABEL_7;
  }

  v52 = *(v150 + 24);
  (*(v146 + 56))(v19, 1, 2, v147);
  LOBYTE(v52) = sub_226AF19D8(v133 + v52, v19);
  sub_226D44404(v19, _s8MetadataV15LocalItemStatusOMa);
  if (v52)
  {
    sub_226D44404(v46, _s8MetadataV9CloudItemVMa);
    v148 = MEMORY[0x277D84F90];
    a1 = v133;
    v47 = v149;
    goto LABEL_7;
  }

  v108 = *(v50 + 20);
  v109 = *&v46[v108];
  v132 = *&v49[v108];
  v131 = v109;
  v110 = sub_226BBB788(0, 1, 1, MEMORY[0x277D84F90]);
  v112 = *(v110 + 2);
  v111 = *(v110 + 3);
  v148 = v110;
  v53 = v145;
  if (v112 >= v111 >> 1)
  {
    v148 = sub_226BBB788((v111 > 1), v112 + 1, 1, v148);
  }

  a1 = v133;
  sub_226D44404(v46, _s8MetadataV9CloudItemVMa);
  v113 = v148;
  *(v148 + 2) = v112 + 1;
  v114 = &v113[24 * v112];
  v115 = v131;
  *(v114 + 4) = v132;
  *(v114 + 5) = v115;
  v114[48] = 6;
  v152 = v113;
  v47 = v149;
LABEL_8:
  v54 = v144;
  sub_226D4439C(a1 + v144, v33, _s8MetadataV15CloudItemStatusOMa);
  if (v47(v33, 2, v36))
  {
    sub_226D44404(v33, _s8MetadataV15CloudItemStatusOMa);
LABEL_10:
    v55 = v147;
    v56 = v142;
    goto LABEL_16;
  }

  v57 = v137;
  sub_226D444AC(v33, v137, _s8MetadataV9CloudItemVMa);
  sub_226D4439C(a1 + *(v150 + 24), v17, _s8MetadataV15LocalItemStatusOMa);
  v55 = v147;
  if ((*(v146 + 48))(v17, 2, v147))
  {
    sub_226D44404(v57, _s8MetadataV9CloudItemVMa);
    sub_226D44404(v17, _s8MetadataV15LocalItemStatusOMa);
  }

  else
  {
    v58 = a1;
    v59 = v134;
    sub_226D444AC(v17, v134, _s8MetadataV9LocalItemVMa);
    v60 = _s8MetadataV9CloudItemV6ObjectVMa(0);
    v61 = v55;
    v62 = v60;
    v63 = *(v60 + 24);
    v64 = *(v61 + 20);
    sub_226D6D4AC();
    sub_226D44464(&qword_27D7A6C38, 255, MEMORY[0x277CC9578]);
    if ((sub_226D6E35C() & 1) == 0)
    {
      if (sub_226D6D3FC())
      {
        v116 = (v57 + *(v36 + 20) + *(v62 + 20));
        v117 = 4;
        v118 = v59;
      }

      else
      {
        v118 = (v57 + *(v62 + 20));
        v117 = 5;
        v116 = v59;
      }

      v119 = *v118;
      v120 = *v116;
      v121 = v119;
      v122 = v120;
      v123 = v121;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v145;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v148 = sub_226BBB788(0, *(v148 + 2) + 1, 1, v148);
      }

      a1 = v58;
      v126 = *(v148 + 2);
      v125 = *(v148 + 3);
      if (v126 >= v125 >> 1)
      {
        v148 = sub_226BBB788((v125 > 1), v126 + 1, 1, v148);
      }

      sub_226D44290(v122, v123, v117);
      sub_226D44404(v134, _s8MetadataV9LocalItemVMa);
      sub_226D44404(v137, _s8MetadataV9CloudItemVMa);
      v127 = v148;
      *(v148 + 2) = v126 + 1;
      v128 = &v127[24 * v126];
      *(v128 + 4) = v122;
      *(v128 + 5) = v123;
      v128[48] = v117;
      v152 = v127;
      v54 = v144;
      v47 = v149;
      goto LABEL_10;
    }

    sub_226D44404(v59, _s8MetadataV9LocalItemVMa);
    sub_226D44404(v57, _s8MetadataV9CloudItemVMa);
    a1 = v58;
    v54 = v144;
    v47 = v149;
    v55 = v147;
  }

  v56 = v142;
  v53 = v145;
LABEL_16:
  sub_226D4439C(a1 + v54, v30, _s8MetadataV15CloudItemStatusOMa);
  if (v47(v30, 2, v36))
  {
    sub_226D4439C(a1 + *(v150 + 24), v56, _s8MetadataV15LocalItemStatusOMa);
    v65 = v146;
    if (!(*(v146 + 48))(v56, 2, v55))
    {
      v67 = v138;
      sub_226D444AC(v56, v138, _s8MetadataV9LocalItemVMa);
      v68 = v135;
      sub_226D4439C(a1 + v54, v135, _s8MetadataV15CloudItemStatusOMa);
      v69 = v47(v68, 2, v36);
      sub_226D44404(v68, _s8MetadataV15CloudItemStatusOMa);
      v70 = *v67;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v66 = v143;
      v55 = a1;
      if (v69 == 1)
      {
        if (v71)
        {
          goto LABEL_22;
        }

        goto LABEL_77;
      }

      if ((v71 & 1) == 0)
      {
        v148 = sub_226BBB788(0, *(v148 + 2) + 1, 1, v148);
      }

      v78 = *(v148 + 2);
      v77 = *(v148 + 3);
      if (v78 >= v77 >> 1)
      {
        v148 = sub_226BBB788((v77 > 1), v78 + 1, 1, v148);
      }

      sub_226D44404(v138, _s8MetadataV9LocalItemVMa);
      v74 = v148;
      *(v148 + 2) = v78 + 1;
      v75 = &v74[24 * v78];
      *(v75 + 4) = v70;
      *(v75 + 5) = 0;
      v76 = 2;
      goto LABEL_30;
    }

    sub_226D44404(v56, _s8MetadataV15LocalItemStatusOMa);
    v66 = v143;
  }

  else
  {
    sub_226D44404(v30, _s8MetadataV15CloudItemStatusOMa);
    v66 = v143;
    v65 = v146;
  }

  while (1)
  {
    v79 = *(v150 + 24);
    sub_226D4439C(a1 + v79, v53, _s8MetadataV15LocalItemStatusOMa);
    v81 = *(v65 + 48);
    v65 += 48;
    v80 = v81;
    if (!v81(v53, 2, v55))
    {
      v82 = _s8MetadataV15LocalItemStatusOMa;
      goto LABEL_35;
    }

    v53 = v140;
    sub_226D4439C(a1 + v54, v140, _s8MetadataV15CloudItemStatusOMa);
    if (v149(v53, 2, v36))
    {
      v82 = _s8MetadataV15CloudItemStatusOMa;
LABEL_35:
      sub_226D44404(v53, v82);
      goto LABEL_48;
    }

    v83 = v53;
    v53 = v139;
    sub_226D444AC(v83, v139, _s8MetadataV9CloudItemVMa);
    v84 = a1 + v79;
    v85 = v136;
    sub_226D4439C(v84, v136, _s8MetadataV15LocalItemStatusOMa);
    v86 = v80(v85, 2, v55);
    sub_226D44404(v85, _s8MetadataV15LocalItemStatusOMa);
    v87 = *(v53 + *(v36 + 20) + *(_s8MetadataV9CloudItemV6ObjectVMa(0) + 20));
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v55 = a1;
    if (v86 == 1)
    {
      if ((v88 & 1) == 0)
      {
        v148 = sub_226BBB788(0, *(v148 + 2) + 1, 1, v148);
      }

      v90 = *(v148 + 2);
      v89 = *(v148 + 3);
      if (v90 >= v89 >> 1)
      {
        v148 = sub_226BBB788((v89 > 1), v90 + 1, 1, v148);
      }

      sub_226D44404(v139, _s8MetadataV9CloudItemVMa);
      v91 = v148;
      *(v148 + 2) = v90 + 1;
      v92 = &v91[24 * v90];
      *(v92 + 4) = v87;
      *(v92 + 5) = 0;
      v92[48] = 0;
      v152 = v91;
    }

    else
    {
      if ((v88 & 1) == 0)
      {
        v148 = sub_226BBB788(0, *(v148 + 2) + 1, 1, v148);
      }

      v94 = *(v148 + 2);
      v93 = *(v148 + 3);
      if (v94 >= v93 >> 1)
      {
        v148 = sub_226BBB788((v93 > 1), v94 + 1, 1, v148);
      }

      sub_226D44404(v139, _s8MetadataV9CloudItemVMa);
      v95 = v148;
      *(v148 + 2) = v94 + 1;
      v96 = &v95[24 * v94];
      *(v96 + 4) = v87;
      *(v96 + 5) = 0;
      v96[48] = 3;
      v152 = v95;
    }

    a1 = v55;
LABEL_48:
    sub_226D4439C(a1 + v54, v66, _s8MetadataV15CloudItemStatusOMa);
    if (v149(v66, 2, v36))
    {
      v97 = _s8MetadataV15CloudItemStatusOMa;
      v98 = v66;
      goto LABEL_75;
    }

    sub_226D444AC(v66, v141, _s8MetadataV9CloudItemVMa);
    v99 = sub_226AEF640();
    v70 = v99;
    if (v99 >> 62)
    {
      v100 = sub_226D6EDFC();
      if (!v100)
      {
LABEL_73:

        v102 = MEMORY[0x277D84F90];
        goto LABEL_74;
      }
    }

    else
    {
      v100 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v100)
      {
        goto LABEL_73;
      }
    }

    v151 = MEMORY[0x277D84F90];
    sub_226AE22A4(0, v100 & ~(v100 >> 63), 0);
    if ((v100 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_77:
    v148 = sub_226BBB788(0, *(v148 + 2) + 1, 1, v148);
LABEL_22:
    v73 = *(v148 + 2);
    v72 = *(v148 + 3);
    if (v73 >= v72 >> 1)
    {
      v148 = sub_226BBB788((v72 > 1), v73 + 1, 1, v148);
    }

    sub_226D44404(v138, _s8MetadataV9LocalItemVMa);
    v74 = v148;
    *(v148 + 2) = v73 + 1;
    v75 = &v74[24 * v73];
    *(v75 + 4) = v70;
    *(v75 + 5) = 0;
    v76 = 1;
LABEL_30:
    v75[48] = v76;
    v152 = v74;
    a1 = v55;
    v55 = v147;
  }

  v101 = 0;
  v102 = v151;
  do
  {
    if ((v70 & 0xC000000000000001) != 0)
    {
      v103 = MEMORY[0x22AA8AFD0](v101, v70);
    }

    else
    {
      v103 = *(v70 + 8 * v101 + 32);
    }

    v151 = v102;
    v105 = *(v102 + 16);
    v104 = *(v102 + 24);
    if (v105 >= v104 >> 1)
    {
      v107 = v103;
      sub_226AE22A4((v104 > 1), v105 + 1, 1);
      v103 = v107;
      v102 = v151;
    }

    ++v101;
    *(v102 + 16) = v105 + 1;
    v106 = v102 + 24 * v105;
    *(v106 + 32) = v103;
    *(v106 + 40) = 0;
    *(v106 + 48) = 0;
  }

  while (v100 != v101);

LABEL_74:
  sub_226CEDF88(v102);
  v97 = _s8MetadataV9CloudItemVMa;
  v98 = v141;
LABEL_75:
  sub_226D44404(v98, v97);
  return v152;
}

void sub_226D44290(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 4u)
  {
    if (a3 - 4 > 2)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t type metadata accessor for BankCredentialMappingModel.Change()
{
  result = qword_27D7A9560;
  if (!qword_27D7A9560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D4432C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9550, &qword_226D7E160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D4439C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D44404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D44464(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_226D444AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226D4453C()
{
  sub_226D445D8();
  if (v0 <= 0x3F)
  {
    sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226D445D8()
{
  if (!qword_27D7A9570)
  {
    sub_226D6D52C();
    sub_226D44464(&qword_281062B60, 255, MEMORY[0x277CC95F0]);
    v0 = type metadata accessor for StoreMappingChangeType();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A9570);
    }
  }
}

void *sub_226D446AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_226D6D1AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v11 = result;
    v12 = sub_226D6E39C();
    v14 = v13;

    v15[0] = v12;
    v15[1] = v14;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    (*(v3 + 32))(v9, v7, v2);
    sub_226D6D0FC();
    (*(v3 + 8))(v9, v2);
    return (*(v3 + 56))(a1, 0, 1, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static URL.financePersistingPlistURL.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_226D6D1AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v16 = result;
    v17 = sub_226D6E39C();
    v19 = v18;

    v25 = v17;
    v26 = v19;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v20 = *(v2 + 32);
    v20(v9, v6, v1);
    sub_226D6D0FC();
    v21 = *(v2 + 8);
    v21(v9, v1);
    v20(v14, v12, v1);
    v22 = v24;
    sub_226D6D10C();
    v21(v14, v1);
    return (*(v2 + 56))(v22, 0, 1, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static URL.libraryURL.getter@<X0>(uint64_t a1@<X8>)
{
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v3 = result;
    sub_226D6E39C();

    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v4 = sub_226D6D1AC();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 0, 1, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static URL.financeLocalDatabaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_226D6D1AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v16 = result;
    v17 = sub_226D6E39C();
    v19 = v18;

    v25 = v17;
    v26 = v19;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v20 = *(v2 + 32);
    v20(v9, v6, v1);
    sub_226D6D0FC();
    v21 = *(v2 + 8);
    v21(v9, v1);
    v20(v14, v12, v1);
    v22 = v24;
    sub_226D6D10C();
    v21(v14, v1);
    return (*(v2 + 56))(v22, 0, 1, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static URL.financeCloudDatabaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_226D6D1AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v16 = result;
    v17 = sub_226D6E39C();
    v19 = v18;

    v25 = v17;
    v26 = v19;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v20 = *(v2 + 32);
    v20(v9, v6, v1);
    sub_226D6D0FC();
    v21 = *(v2 + 8);
    v21(v9, v1);
    v20(v14, v12, v1);
    v22 = v24;
    sub_226D6D10C();
    v21(v14, v1);
    return (*(v2 + 56))(v22, 0, 1, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static URL.financeDropboxDatabaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_226D6D1AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v16 = result;
    v17 = sub_226D6E39C();
    v19 = v18;

    v25 = v17;
    v26 = v19;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v20 = *(v2 + 32);
    v20(v9, v6, v1);
    sub_226D6D0FC();
    v21 = *(v2 + 8);
    v21(v9, v1);
    v20(v14, v12, v1);
    v22 = v24;
    sub_226D6D10C();
    v21(v14, v1);
    return (*(v2 + 56))(v22, 0, 1, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t URL.filePath(relativeTo:resolveSymlinks:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v52 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9578, &qword_226D7E178);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v47 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v45 - v11;
  v13 = sub_226D6E17C();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v46 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v45 - v17;
  v19 = sub_226D6D1AC();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v45 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v45 - v28;
  v51 = v18;
  v53 = v27;
  if (a2)
  {
    sub_226D6D11C();
    sub_226D6D11C();
    v30 = v20[2];
  }

  else
  {
    v30 = v20[2];
    v30(v45 - v28, a1, v19);
    v30(v27, v4, v19);
  }

  v50 = v29;
  v30(v24, v29, v19);
  sub_226D6E15C();
  v32 = v48;
  v31 = v49;
  v33 = *(v48 + 48);
  if (v33(v12, 1, v49) == 1)
  {
    goto LABEL_7;
  }

  v45[0] = *(v32 + 32);
  v45[1] = v32 + 32;
  (v45[0])(v51, v12, v31);
  v30(v24, v53, v19);
  v12 = v47;
  sub_226D6E15C();
  if (v33(v12, 1, v31) == 1)
  {
    (*(v32 + 8))(v51, v31);
LABEL_7:
    v34 = v20[1];
    v34(v53, v19);
    v34(v50, v19);
    sub_226D45760(v12);
    return (*(v32 + 56))(v52, 1, 1, v31);
  }

  v36 = v46;
  v37 = v12;
  v38 = v45[0];
  (v45[0])(v46, v37, v31);
  v39 = v51;
  v40 = sub_226D6E16C();
  v41 = *(v32 + 8);
  v41(v39, v31);
  v42 = v20[1];
  v42(v53, v19);
  v42(v50, v19);
  v43 = (v32 + 56);
  if (v40)
  {
    v44 = v52;
    v38(v52, v36, v31);
    return (*v43)(v44, 0, 1, v31);
  }

  else
  {
    v41(v36, v31);
    return (*v43)(v52, 1, 1, v31);
  }
}

uint64_t sub_226D45760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9578, &qword_226D7E178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226D457C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D66FDC();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v27 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v25 = v7[2];
  v26 = a3;
  v25(&v24 - v11, a3, v6);
  v24 = v7;
  v13 = v7[11];
  v14 = v13(v12, v6);
  v15 = *MEMORY[0x277CC6A50];
  if (v14 == *MEMORY[0x277CC6A50])
  {
    if ((*(a2 + 24))(a1, a2))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v14 == *MEMORY[0x277CC6A48])
    {
      goto LABEL_10;
    }

    if (v14 != *MEMORY[0x277CC6A40])
    {
      (v24[1])(v12, v6);
      v22 = 1;
      return v22 & 1;
    }
  }

  if ((*(a2 + 8))(a1, a2))
  {
    v16 = v27;
    v25(v27, v26, v6);
    v17 = v13(v16, v6);
    if (v17 == v15)
    {
      v18 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
      v19 = [v18 aa_primaryAppleAccount];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 aa_isManagedAppleID];

        if (v21)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    else if (v17 != *MEMORY[0x277CC6A48])
    {
      if (v17 == *MEMORY[0x277CC6A40])
      {
        v22 = sub_226D320D4();
        return v22 & 1;
      }

      (v24[1])(v16, v6);
    }

    v22 = 0;
    return v22 & 1;
  }

LABEL_10:
  v22 = 1;
  return v22 & 1;
}

void *sub_226D45AA4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_226D45AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D46998();
  v5 = sub_226D469EC();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_226D45B2C(unint64_t a1)
{
  if (a1 - 129 < 0xFFFFFFFFFFFFFFAALL)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v3 = sub_226D6E07C();
    v4 = __swift_project_value_buffer(v3, qword_28105F710);
    v5 = sub_226D6E05C();
    v6 = sub_226D6E9CC();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_15;
    }

    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    v7 = "The codeVerifier length should be within [43,128] range: %ld";
    v8 = v6;
    v9 = v5;
    v10 = v4;
    v11 = 12;
    goto LABEL_14;
  }

  v12 = rintf((a1 * 6.0) * 0.125);
  if (v12 == INFINITY)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v12 <= -9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v12 >= 9.2234e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v13(v12);
  if (!*(v15 + 16))
  {

    if (qword_28105F708 == -1)
    {
LABEL_12:
      v19 = sub_226D6E07C();
      v4 = __swift_project_value_buffer(v19, qword_28105F710);
      v5 = sub_226D6E05C();
      v20 = sub_226D6E9CC();
      if (!os_log_type_enabled(v5, v20))
      {
LABEL_15:

        sub_226D46660();
        swift_allocError();
        *v21 = 0;
        swift_willThrow();
        return v4;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v7 = "Failed to generate random bytes";
      v8 = v20;
      v9 = v5;
      v10 = v4;
      v11 = 2;
LABEL_14:
      _os_log_impl(&dword_226AB4000, v9, v8, v7, v10, v11);
      MEMORY[0x22AA8BEE0](v4, -1, -1);
      goto LABEL_15;
    }

LABEL_20:
    swift_once();
    goto LABEL_12;
  }

  v16 = sub_226B3F994(v15);
  v18 = v17;

  sub_226D6D20C();
  sub_226AEEF6C();
  sub_226D6ECEC();

  sub_226D6ECEC();

  v4 = sub_226D6ECEC();
  sub_226B11B98(v16, v18);

  return v4;
}

uint64_t sub_226D45EDC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

NSObject *sub_226D45F38(uint64_t a1, unint64_t a2)
{
  v4 = sub_226D6E21C();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v52 - v8;
  v9 = sub_226D6E29C();
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6E3DC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9580, &unk_226D7E1F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  sub_226D6E3CC();
  v53 = a1;
  v57 = a2;
  v25 = sub_226D6E3AC();
  v27 = v26;
  (*(v14 + 8))(v17, v13);
  if (v27 >> 60 == 15)
  {
    v28 = 1;
  }

  else
  {
    sub_226D4678C(&qword_27D7A6E00, MEMORY[0x277CC5540]);
    sub_226D6E20C();
    sub_226B11B44(v25, v27);
    v29 = v66;
    sub_226B3F488(v25, v27);
    v66 = v29;
    sub_226B3FAEC(v25, v27);
    sub_226D6E1FC();
    sub_226B3FAEC(v25, v27);
    (*(v54 + 8))(v12, v9);
    v28 = 0;
  }

  v31 = v58;
  v30 = v59;
  (*(v58 + 56))(v24, v28, 1, v59);
  sub_226D466B4(v24, v22);
  if ((*(v31 + 48))(v22, 1, v30) == 1)
  {
    sub_226D46724(v24);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v32 = sub_226D6E07C();
    __swift_project_value_buffer(v32, qword_28105F710);
    v33 = v57;

    v34 = sub_226D6E05C();
    v35 = sub_226D6E9CC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v64 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_226AC4530(v53, v33, &v64);
      _os_log_impl(&dword_226AB4000, v34, v35, "Failed to create codeChallenge from codeVerifier: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
      MEMORY[0x22AA8BEE0](v36, -1, -1);
    }

    sub_226D46660();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();
  }

  else
  {
    v39 = v56;
    (*(v31 + 32))(v56, v22, v30);
    (*(v31 + 16))(v55, v39, v30);
    sub_226D4678C(&qword_27D7A9590, MEMORY[0x277CC5290]);
    sub_226D6E51C();
    (*(v31 + 8))(v39, v30);
    sub_226D46724(v24);

    v41 = sub_226B3F994(v40);
    v43 = v42;
    v64 = sub_226D6D20C();
    v65 = v44;
    v62 = 61;
    v63 = 0xE100000000000000;
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_226AEEF6C();
    v45 = sub_226D6ECEC();
    v47 = v46;

    v64 = v45;
    v65 = v47;
    v62 = 43;
    v63 = 0xE100000000000000;
    v60 = 45;
    v61 = 0xE100000000000000;
    v48 = sub_226D6ECEC();
    v50 = v49;

    v64 = v48;
    v65 = v50;
    v62 = 47;
    v63 = 0xE100000000000000;
    v60 = 95;
    v61 = 0xE100000000000000;
    v34 = sub_226D6ECEC();
    sub_226B11B98(v41, v43);
  }

  return v34;
}

unint64_t sub_226D46660()
{
  result = qword_27D7A9588;
  if (!qword_27D7A9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A9588);
  }

  return result;
}

uint64_t sub_226D466B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9580, &unk_226D7E1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D46724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9580, &unk_226D7E1F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226D4678C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226D467D4(size_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  v2 = a1;
  if (a1)
  {
    v3 = sub_226D6E63C();
    *(v3 + 16) = v2;
    bzero((v3 + 32), v2);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v2 = *(MEMORY[0x277D84F90] + 16);
  }

  v4 = SecRandomCopyBytes(*MEMORY[0x277CDC540], v2, (v3 + 32));
  if (!v4)
  {
    return v3;
  }

  v1 = v4;

  if (qword_28105F708 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v1;
    _os_log_impl(&dword_226AB4000, v6, v7, "Failed to generate random bytes %d", v8, 8u);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_226D46944()
{
  result = qword_27D7A9598;
  if (!qword_27D7A9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A9598);
  }

  return result;
}

unint64_t sub_226D46998()
{
  result = qword_27D7A95A0;
  if (!qword_27D7A95A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A95A0);
  }

  return result;
}

unint64_t sub_226D469EC()
{
  result = qword_27D7A95A8;
  if (!qword_27D7A95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A95A8);
  }

  return result;
}

void sub_226D46A40(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *&v105 = &v98 - v5;
  v112 = sub_226D6D52C();
  v106 = *(v112 - 8);
  v6 = *(v106 + 64);
  v7 = MEMORY[0x28223BE20](v112);
  v100 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v102 = &v98 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v101 = &v98 - v12;
  MEMORY[0x28223BE20](v11);
  v110 = &v98 - v13;
  v111 = sub_226D695EC();
  v14 = *(v111 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v111);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_226D6964C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a1;
  sub_226D6965C();
  v23 = sub_226D6961C();
  (*(v19 + 8))(v22, v18);
  v24 = v23[2];
  if (v24)
  {
    v26 = *(v14 + 16);
    v25 = v14 + 16;
    v27 = *(v25 + 64);
    v98 = v23;
    v28 = v23 + ((v27 + 32) & ~v27);
    v108 = *(v25 + 56);
    v109 = v26;
    v107 = (v25 - 8);
    v29 = MEMORY[0x277D84F90];
    v30 = v112;
    do
    {
      v32 = v111;
      v33 = v25;
      v109(v17, v28, v111);
      v34 = sub_226D695AC();
      v36 = v35;
      (*v107)(v17, v32);
      if (v36)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226BBAB0C(0, *(v29 + 2) + 1, 1, v29);
        }

        v38 = *(v29 + 2);
        v37 = *(v29 + 3);
        if (v38 >= v37 >> 1)
        {
          v29 = sub_226BBAB0C((v37 > 1), v38 + 1, 1, v29);
        }

        *(v29 + 2) = v38 + 1;
        v31 = &v29[16 * v38];
        *(v31 + 4) = v34;
        *(v31 + 5) = v36;
        v30 = v112;
      }

      v28 += v108;
      --v24;
      v25 = v33;
    }

    while (v24);

    v39 = v29;
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
    v30 = v112;
  }

  v111 = *(v39 + 2);
  if (v111)
  {
    v40 = 0;
    v41 = (v106 + 48);
    v42 = (v106 + 32);
    v43 = (v39 + 40);
    v44 = MEMORY[0x277D84F90];
    v45 = v105;
    while (v40 < *(v39 + 2))
    {
      v47 = *(v43 - 1);
      v46 = *v43;

      sub_226D6D4BC();

      if ((*v41)(v45, 1, v30) == 1)
      {
        sub_226D475E0(v45);
      }

      else
      {
        v48 = v45;
        v49 = *v42;
        (*v42)(v110, v48, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_226BBB95C(0, *(v44 + 2) + 1, 1, v44);
        }

        v51 = *(v44 + 2);
        v50 = *(v44 + 3);
        v52 = v44;
        if (v51 >= v50 >> 1)
        {
          v52 = sub_226BBB95C(v50 > 1, v51 + 1, 1, v44);
        }

        v44 = v52;
        *(v52 + 16) = v51 + 1;
        v53 = v52 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v51;
        v30 = v112;
        v49(v53, v110, v112);
        v45 = v105;
      }

      ++v40;
      v43 += 2;
      if (v111 == v40)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
LABEL_24:

    v108 = *(v44 + 2);
    if (!v108)
    {

      if (qword_28105F6A0 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_58;
    }

    v109 = v44;
    sub_226D693FC();
    v54 = sub_226D67B0C();

    v107 = v54;
    v56 = v103;
    if (!*(v54 + 16))
    {

      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v97 = sub_226D6E07C();
      __swift_project_value_buffer(v97, qword_28105F6A8);
      v93 = sub_226D6E05C();
      v94 = sub_226D6E9EC();
      if (!os_log_type_enabled(v93, v94))
      {
        goto LABEL_52;
      }

      v95 = swift_slowAlloc();
      *v95 = 0;
      v96 = "No mail items found in extracted order. Skipping insights generation.";
      goto LABEL_51;
    }

    v57 = 0;
    v110 = (v106 + 8);
    v111 = v106 + 16;
    *&v55 = 136315138;
    v105 = v55;
    v59 = v101;
    v58 = v102;
    v60 = v109;
    while (v57 < *(v60 + 2))
    {
      v62 = v60 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v57;
      v63 = *(v106 + 16);
      v63(v59, v62, v30);
      sub_226D6AC0C();
      v64 = sub_226D6AABC();
      if (v56)
      {
        (*v110)(v59, v30);
LABEL_54:

        return;
      }

      v65 = v64;
      if (v64)
      {
        if (qword_28105F6A0 != -1)
        {
          swift_once();
        }

        v66 = sub_226D6E07C();
        __swift_project_value_buffer(v66, qword_28105F6A8);
        v63(v58, v59, v30);
        v67 = sub_226D6E05C();
        v68 = sub_226D6E9EC();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v103 = 0;
          v70 = v69;
          v71 = swift_slowAlloc();
          v113 = v71;
          *v70 = v105;
          sub_226C459BC();
          v72 = sub_226D6F1CC();
          v74 = v73;
          v75 = v58;
          v76 = *v110;
          (*v110)(v75, v112);
          v77 = sub_226AC4530(v72, v74, &v113);

          *(v70 + 4) = v77;
          _os_log_impl(&dword_226AB4000, v67, v68, "Inserting or updating extracted order insight for %s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v71);
          MEMORY[0x22AA8BEE0](v71, -1, -1);
          v78 = v70;
          v56 = v103;
          v30 = v112;
          MEMORY[0x22AA8BEE0](v78, -1, -1);
        }

        else
        {

          v91 = v58;
          v76 = *v110;
          (*v110)(v91, v30);
        }

        sub_226D6C6BC();
        v59 = v101;
        v60 = v109;
        if (v56)
        {
          v76(v101, v30);

          return;
        }

        v76(v101, v30);
      }

      else
      {
        if (qword_28105F6A0 != -1)
        {
          swift_once();
        }

        v79 = sub_226D6E07C();
        __swift_project_value_buffer(v79, qword_28105F6A8);
        v80 = v100;
        v63(v100, v59, v30);
        v81 = sub_226D6E05C();
        v82 = sub_226D6E9EC();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = v80;
          v84 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v113 = v98;
          *v84 = v105;
          sub_226C459BC();
          v85 = sub_226D6F1CC();
          v103 = 0;
          v87 = v86;
          v99 = *v110;
          v99(v83, v112);
          v88 = v85;
          v59 = v101;
          v89 = sub_226AC4530(v88, v87, &v113);
          v56 = v103;
          v30 = v112;

          *(v84 + 4) = v89;
          _os_log_impl(&dword_226AB4000, v81, v82, "FoundIn Insight: Unable to find existing transaction for %s", v84, 0xCu);
          v90 = v98;
          __swift_destroy_boxed_opaque_existential_0Tm(v98);
          MEMORY[0x22AA8BEE0](v90, -1, -1);
          MEMORY[0x22AA8BEE0](v84, -1, -1);

          v99(v59, v30);
        }

        else
        {

          v61 = *v110;
          (*v110)(v80, v30);
          v61(v59, v30);
        }

        v60 = v109;
      }

      ++v57;
      v58 = v102;
      if (v108 == v57)
      {
        goto LABEL_54;
      }
    }
  }

  __break(1u);
LABEL_58:
  swift_once();
LABEL_45:
  v92 = sub_226D6E07C();
  __swift_project_value_buffer(v92, qword_28105F6A8);
  v93 = sub_226D6E05C();
  v94 = sub_226D6E9EC();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    v96 = "No transactions found in extracted order. Skipping insights generation.";
LABEL_51:
    _os_log_impl(&dword_226AB4000, v93, v94, v96, v95, 2u);
    MEMORY[0x22AA8BEE0](v95, -1, -1);
  }

LABEL_52:
}

uint64_t sub_226D475E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226D47648(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  LODWORD(v10) = a3;
  v49 = a2;
  v12 = sub_226D680EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x277D84F90];
  if ((v10 & 1) == 0)
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    inited = swift_initStackObject();
    v48 = v7;
    v18 = inited;
    *(inited + 16) = xmmword_226D72B90;
    v43 = a4;
    *(inited + 32) = sub_226D47C8C();
    v18[5] = sub_226D48234();
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v44 = a1;
    v46 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v47 = v6;
    v19 = swift_allocObject();
    v45 = v10;
    v10 = v19;
    v41 = xmmword_226D70840;
    *(v19 + 16) = xmmword_226D70840;
    (*(v13 + 104))(v16, *MEMORY[0x277CC7158], v12);
    v20 = sub_226D680DC();
    (*(v13 + 8))(v16, v12);
    v21 = MEMORY[0x277D849A0];
    *(v10 + 56) = MEMORY[0x277D84958];
    *(v10 + 64) = v21;
    *(v10 + 32) = v20;
    v18[6] = sub_226D6E91C();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_226D71F40;
    *(v22 + 32) = sub_226D6E91C();
    v23 = swift_allocObject();
    *(v23 + 16) = v41;
    v24 = sub_226D6D3EC();
    *(v23 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
    *(v23 + 64) = sub_226C19454();
    *(v23 + 32) = v24;
    LOBYTE(v10) = v45;
    *(v22 + 40) = sub_226D6E91C();
    v25 = sub_226D6E5CC();

    v26 = [objc_opt_self() orPredicateWithSubpredicates_];

    a1 = v44;
    v18[7] = v26;
    v27 = v18;
    v7 = v48;
    sub_226CEE1A0(v27);
  }

  if (a1)
  {
    sub_226D6AC0C();
    sub_226D6ABAC();
    MEMORY[0x22AA8A610]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v39 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_226D6E61C();
    }

    sub_226D6E65C();
  }

  if ((v49 & 1) != 0 && (v10 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_226D71F40;
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    *(v28 + 32) = sub_226D6E91C();
    *(v28 + 40) = sub_226D6E91C();
    v29 = sub_226D6E5CC();

    v30 = [objc_opt_self() orPredicateWithSubpredicates_];

    MEMORY[0x22AA8A610]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v40 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_226D6E61C();
    }

    sub_226D6E65C();
  }

  sub_226D6AC0C();
  v31 = sub_226D6AAFC();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v32 = sub_226D6E5CC();

  v33 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v31 setPredicate_];
  v34 = *(v7 + 24);
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v35 = sub_226D6E5CC();
  [v31 setSortDescriptors_];

  [v31 setReturnsObjectsAsFaults_];
  if (*(v7 + 48))
  {
    v36 = sub_226D6E5CC();
  }

  else
  {
    v36 = 0;
  }

  [v31 setRelationshipKeyPathsForPrefetching_];

  if ((*(v7 + 40) & 1) == 0)
  {
    [v31 setFetchLimit_];
  }

  v37 = sub_226D6EBBC();

  return v37;
}

uint64_t sub_226D47C8C()
{
  v23 = sub_226D67D7C();
  v0 = *(v23 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v23);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D70840;
  v5 = sub_226D47EF0();
  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = v4;
    v24 = MEMORY[0x277D84F90];
    sub_226AE24F0(0, v6, 0);
    v7 = v24;
    v9 = *(v0 + 16);
    v8 = v0 + 16;
    v10 = *(v8 + 64);
    v19 = v5;
    v11 = v5 + ((v10 + 32) & ~v10);
    v21 = *(v8 + 56);
    v22 = v9;
    v12 = (v8 - 8);
    do
    {
      v13 = v23;
      v14 = v8;
      v22(v3, v11, v23);
      v15 = sub_226D67D6C();
      (*v12)(v3, v13);
      v24 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_226AE24F0((v16 > 1), v17 + 1, 1);
        v7 = v24;
      }

      *(v7 + 16) = v17 + 1;
      *(v7 + 2 * v17 + 32) = v15;
      v11 += v21;
      --v6;
      v8 = v14;
    }

    while (v6);

    v4 = v20;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7160, &qword_226D7E370);
  *(v4 + 64) = sub_226B79CEC();
  *(v4 + 32) = v7;
  return sub_226D6E91C();
}

uint64_t sub_226D47EF0()
{
  v1 = sub_226D66DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (sub_226D6C7DC())
  {
    v7 = *(v2 + 104);
    v7(v5, *MEMORY[0x277CC6510], v1);
    v8 = sub_226D66D6C();
    (*(v2 + 8))(v5, v1);
    if (v8)
    {
      return sub_226D67D5C();
    }
  }

  else
  {
    v7 = *(v2 + 104);
  }

  v7(v5, *MEMORY[0x277CC6518], v1);
  v10 = sub_226D66D6C();
  (*(v2 + 8))(v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A95B0, qword_226D7E378);
  v11 = sub_226D67D7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v9 = swift_allocObject();
  if (v10)
  {
    *(v9 + 16) = xmmword_226D71190;
    v15 = v9 + v14;
    v16 = *(v12 + 104);
    v16(v15, *MEMORY[0x277CC6FE0], v11);
    v16(v15 + v13, *MEMORY[0x277CC6FD8], v11);
    v16(v15 + 2 * v13, *MEMORY[0x277CC7008], v11);
    v16(v15 + 3 * v13, *MEMORY[0x277CC7018], v11);
  }

  else
  {
    *(v9 + 16) = xmmword_226D70840;
    (*(v12 + 104))(v9 + v14, *MEMORY[0x277CC6FE0], v11);
  }

  return v9;
}

uint64_t sub_226D481C8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

id sub_226D48234()
{
  v0 = sub_226D6823C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v5 + 32) = sub_226D6E91C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D70840;
  (*(v1 + 104))(v4, *MEMORY[0x277CC71E8], v0);
  v7 = sub_226D6822C();
  (*(v1 + 8))(v4, v0);
  v8 = MEMORY[0x277D849A0];
  *(v6 + 56) = MEMORY[0x277D84958];
  *(v6 + 64) = v8;
  *(v6 + 32) = v7;
  *(v5 + 40) = sub_226D6E91C();
  v9 = sub_226D6E5CC();

  v10 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v10;
}

uint64_t dispatch thunk of FoundInMailItemDocumentFinderIndex.findFoundInMailItems(forMessageIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226D48590;

  return v11(a1, a2, a3);
}

uint64_t sub_226D48590(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_226D486B0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    sub_226AE1D68(0, v2, 0);
    v4 = v35;
    v5 = v1 + 64;
    v6 = -1 << *(v1 + 32);
    result = sub_226D6ED6C();
    v7 = result;
    v8 = 0;
    v29 = v1 + 64;
    v30 = *MEMORY[0x277CC32E0];
    v27 = v1 + 72;
    v28 = v2;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v31 = v8;
      v32 = *(v1 + 36);
      v11 = (*(v1 + 48) + 16 * v7);
      v13 = *v11;
      v12 = v11[1];
      v33 = sub_226D6E39C();
      v34 = v14;

      MEMORY[0x22AA8A510](0x22203D3D20, 0xE500000000000000);
      MEMORY[0x22AA8A510](v13, v12);
      MEMORY[0x22AA8A510](34, 0xE100000000000000);

      v15 = v4;
      v36 = v4;
      v16 = v1;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_226AE1D68((v17 > 1), v18 + 1, 1);
        v15 = v36;
      }

      *(v15 + 16) = v18 + 1;
      v19 = v15 + 16 * v18;
      *(v19 + 32) = v33;
      *(v19 + 40) = v34;
      v9 = 1 << *(v16 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v29;
      v20 = *(v29 + 8 * v10);
      if ((v20 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v16;
      v4 = v15;
      if (v32 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v7 & 0x3F));
      if (v21)
      {
        v9 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (v27 + 8 * v10);
        while (v23 < (v9 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_226AE5444(v7, v32, 0);
            v9 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_226AE5444(v7, v32, 0);
      }

LABEL_4:
      v8 = v31 + 1;
      v7 = v9;
      if (v31 + 1 == v28)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226D48940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_226BE57C8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_226C2FDD4(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_226C37EBC();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_226D4AA34(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_226D48A48(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6B88, &unk_226D72B68);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for XPCActivityScheduler.ActivityInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_226AC47B0(a1, &qword_27D7A6B88, &unk_226D72B68);
    v15 = *v3;
    v16 = sub_226C30098(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_226C38488();
        v21 = v26;
      }

      sub_226D4C890(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for XPCActivityScheduler.ActivityInfo);
      sub_226D4ABE4(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_226AC47B0(v9, &qword_27D7A6B88, &unk_226D72B68);
  }

  else
  {
    sub_226D4C890(a1, v14, type metadata accessor for XPCActivityScheduler.ActivityInfo);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_226BE5918(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_226D48C9C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7170, &qword_226D74560);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_226D68CEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_226AC47B0(a1, &qword_27D7A7170, &qword_226D74560);
    sub_226D49FBC(a2, v8);
    v14 = sub_226D680FC();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_226AC47B0(v8, &qword_27D7A7170, &qword_226D74560);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_226BE62D8(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_226D680FC();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_226D48EC8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8298, &qword_226D77F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_226D67E5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_226AC47B0(a1, &qword_27D7A8298, &qword_226D77F40);
    sub_226D4A200(a2, v8);
    v14 = sub_226D6D52C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_226AC47B0(v8, &qword_27D7A8298, &qword_226D77F40);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_226BE6938(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_226D6D52C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_226D490F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8968, &unk_226D7E430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_226AC47B0(a1, &qword_27D7A8968, &unk_226D7E430);
    sub_226D4A3A0(a2, v8);
    sub_226AE5030(a2);
    return sub_226AC47B0(v8, &qword_27D7A8968, &unk_226D7E430);
  }

  else
  {
    sub_226D4C890(a1, v12, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_226BE6C6C(v12, a2, isUniquelyReferenced_nonNull_native);
    result = sub_226AE5030(a2);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_226D492B4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_226D492D4, 0, 0);
}

void *sub_226D492D4()
{
  v18 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_226C24A6C(*(v1 + 16), 0);
    v4 = sub_226C3A908(&v17, v3 + 4, v2, v1);

    sub_226AD3C20();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  *(v0 + 40) = v3;
  *(v0 + 16) = MEMORY[0x277D84FA0];
  v5 = v3[2];
  *(v0 + 48) = v5;
  if (v5)
  {
    result = *(v0 + 32);
    *(v0 + 56) = 10;
    *(v0 + 96) = 0;
    if (v5 >= 0xA)
    {
      v5 = 10;
    }

    if (v3[2] < v5)
    {
      __break(1u);
    }

    else
    {
      v7 = (2 * v5) | 1;
      v8 = result[3];
      v9 = result[4];
      __swift_project_boxed_opaque_existential_1(result, v8);

      v10 = sub_226AE4778((v3 + 4), 0, v7);
      *(v0 + 64) = v10;
      v11 = *(v9 + 8);
      v16 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 72) = v13;
      *v13 = v0;
      v13[1] = sub_226D49548;

      return v16(v10, v8, v9);
    }
  }

  else
  {

    v14 = *(v0 + 8);
    v15 = MEMORY[0x277D84FA0];

    return v14(v15);
  }

  return result;
}

uint64_t sub_226D49548(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v12 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v6 = v4[8];
    v7 = v4[5];
    v8 = v4[2];

    v9 = sub_226D498E8;
  }

  else
  {
    v10 = v4[8];

    v4[11] = a1;
    v9 = sub_226D49694;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_226D49694()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  sub_226B04404(*(v0 + 88));

  if ((v1 & 1) == 0 && v2 < v3)
  {
    v6 = 0x7FFFFFFFFFFFFFF5;
    if (*(v0 + 96))
    {
LABEL_25:
      *(v0 + 56) = v6 + 20;
      *(v0 + 96) = 1;
LABEL_26:
      __break(1u);
      return result;
    }

    v7 = *(v0 + 56);
    v8 = v7 + 10;
    v9 = __OFADD__(v7, 10);
    *(v0 + 56) = v8;
    *(v0 + 96) = v9;
    if (v7 > 0x7FFFFFFFFFFFFFF5)
    {
      goto LABEL_26;
    }

    v6 = *(v0 + 48);
    if (v6 >= v8)
    {
      v6 = v7 + 10;
    }

    if (v6 < v7)
    {
      __break(1u);
    }

    else if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = *(v0 + 40);
      v11 = *(v10 + 16);
      if (v11 >= v7 && v11 >= v6)
      {
        v13 = *(v0 + 32);
        v14 = (2 * v6) | 1;
        v15 = v13[3];
        v16 = v13[4];
        __swift_project_boxed_opaque_existential_1(v13, v15);

        v17 = sub_226AE4778(v10 + 32, v7, v14);
        *(v0 + 64) = v17;
        v18 = *(v16 + 8);
        v24 = (v18 + *v18);
        v19 = v18[1];
        v20 = swift_task_alloc();
        *(v0 + 72) = v20;
        *v20 = v0;
        v20[1] = sub_226D49548;

        return v24(v17, v15, v16);
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = *(v0 + 40);

  v22 = *(v0 + 16);
  v23 = *(v0 + 8);

  return v23(v22);
}

uint64_t sub_226D498E8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

id sub_226D4994C(uint64_t *a1, void *a2)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D67B3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v51 - v11;
  v13 = sub_226D6D1AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67A3C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_226AC47B0(v12, &unk_27D7A62F8, &unk_226D73B70);
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v53 = a1;
  v54 = v5;
  v55 = v4;
  (*(v14 + 32))(v17, v12, v13);
  v18 = [a2 messageRepository];
  v19 = sub_226D6D0DC();
  v20 = [v18 messageObjectIDForURL_];

  v56[0] = 0;
  v21 = [v20 resultWithTimeout:v56 error:0.5];
  if (!v21)
  {
    v31 = v56[0];
    v32 = sub_226D6D04C();

    swift_willThrow();
LABEL_8:

    v35 = v54;
    v34 = v55;
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v36 = sub_226D6E07C();
    __swift_project_value_buffer(v36, qword_28105F6A8);
    (*(v35 + 16))(v8, v53, v34);
    v37 = v32;
    v38 = sub_226D6E05C();
    v39 = sub_226D6E9CC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56[0] = v53;
      *v40 = 136315394;
      v41 = sub_226D67B2C();
      v42 = v35;
      v44 = v43;
      (*(v42 + 8))(v8, v55);
      v45 = sub_226AC4530(v41, v44, v56);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      v46 = v32;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v47;
      v48 = v52;
      *v52 = v47;
      _os_log_impl(&dword_226AB4000, v38, v39, "Failed get authentication status for %s with error: %@", v40, 0x16u);
      sub_226AC47B0(v48, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v48, -1, -1);
      v49 = v53;
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x22AA8BEE0](v49, -1, -1);
      MEMORY[0x22AA8BEE0](v40, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v8, v34);
    }

    (*(v14 + 8))(v17, v13);
    goto LABEL_14;
  }

  v22 = v21;
  v23 = v56[0];
  v24 = [a2 messageRepository];
  v25 = [v24 messageForObjectID_];

  v56[0] = 0;
  v26 = [v25 resultWithTimeout:v56 error:0.5];
  if (!v26)
  {
    v33 = v56[0];
    v32 = sub_226D6D04C();

    swift_willThrow();
    v20 = v25;
    goto LABEL_8;
  }

  v27 = v26;
  v28 = v56[0];
  v29 = [v27 isAuthenticated];

  (*(v14 + 8))(v17, v13);
  result = v29;
LABEL_15:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226D49F0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE947C;

  return sub_226D4B9D0(a1);
}

uint64_t sub_226D49FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_226C302EC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226C38F34();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_226D680FC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_226D68CEC();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_226D4AFC4(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_226D68CEC();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_226D4A15C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_226C2FE4C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226C38F70();
      v11 = v13;
    }

    sub_226AE5030(*(v11 + 48) + 40 * v8);
    sub_226B24A98((*(v11 + 56) + 32 * v8), a2);
    sub_226D4B308(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_226D4A200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_226C3049C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226C392C0();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_226D6D52C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_226D67E5C();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_226D4B4AC(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_226D67E5C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_226D4A3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_226C2FE4C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226C39EB8();
      v11 = v21;
    }

    sub_226AE5030(*(v11 + 48) + 40 * v8);
    v12 = *(v11 + 56);
    v13 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
    v20 = *(v13 - 8);
    sub_226D4C890(v12 + *(v20 + 72) * v8, a2, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
    sub_226D4B7F0(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for WebServicePendingTasksRetryState.TaskState();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_226D4A50C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_226D6ED7C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v12 = *v10;
      v11 = v10[1];
      sub_226D6F2FC();
      sub_226D6F31C();
      if (v11)
      {

        sub_226D6E42C();
      }

      v13 = sub_226D6F35C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_12;
      }

LABEL_13:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(_s7ChangesV11FulfillmentVMa(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_22:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_226D4A714(int64_t a1, uint64_t a2)
{
  v43 = sub_226D689EC();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_226D6ED7C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_226D4C8F8(&qword_27D7A8248, MEMORY[0x277CC7568]);
      v26 = sub_226D6E2FC();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_226D4AA34(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_226D6ED7C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_226D6F2FC();

      sub_226D6E42C();
      v13 = sub_226D6F35C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_226D4ABE4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v24 = a2 + 64;
    v8 = (sub_226D6ED7C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_226D6F2FC();
      sub_226D6E42C();

      result = sub_226D6F35C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for XPCActivityScheduler.ActivityInfo(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      v4 = v24;
      if (((*(v24 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_226D4AE14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_226D6ED7C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_226D6F2FC();

      sub_226D6E42C();
      v13 = sub_226D6F35C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_226D4AFC4(int64_t a1, uint64_t a2)
{
  v4 = sub_226D680FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_226D6ED7C();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_226D4C8F8(&qword_281062BB8, MEMORY[0x277CC71A0]);
      v24 = sub_226D6E2FC();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_226D68CEC() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_226D4B308(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_226D6ED7C() + 1) & ~v5;
    do
    {
      sub_226AE4FD4(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_226D6EE6C();
      result = sub_226AE5030(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_226D4B4AC(int64_t a1, uint64_t a2)
{
  v4 = sub_226D6D52C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_226D6ED7C();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_226D4C8F8(&qword_281062B60, MEMORY[0x277CC95F0]);
      v24 = sub_226D6E2FC();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_226D67E5C() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_226D4B7F0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_226D6ED7C() + 1) & ~v5;
    do
    {
      sub_226AE4FD4(*(a2 + 48) + 40 * v6, v28);
      v9 = *(a2 + 40);
      v10 = sub_226D6EE6C();
      result = sub_226AE5030(v28);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = *(a2 + 48);
      v15 = v14 + 40 * v3;
      v16 = (v14 + 40 * v6);
      if (v3 != v6 || v15 >= v16 + 40)
      {
        v17 = *v16;
        v18 = v16[1];
        *(v15 + 32) = *(v16 + 4);
        *v15 = v17;
        *(v15 + 16) = v18;
      }

      v19 = *(a2 + 56);
      v20 = *(*(type metadata accessor for WebServicePendingTasksRetryState.TaskState() - 8) + 72);
      v21 = v20 * v3;
      result = v19 + v20 * v3;
      v22 = v20 * v6;
      v23 = v19 + v20 * v6 + v20;
      if (v21 < v22 || result >= v23)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v21 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_226D4B9D0(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_226D6E96C();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A95B8, &unk_226D7E420) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v6 = sub_226D6E98C();
  v1[12] = v6;
  v7 = *(v6 - 8);
  v1[13] = v7;
  v8 = *(v7 + 64) + 15;
  v1[14] = swift_task_alloc();
  v9 = sub_226D6E97C();
  v1[15] = v9;
  v10 = *(v9 - 8);
  v1[16] = v10;
  v11 = *(v10 + 64) + 15;
  v1[17] = swift_task_alloc();
  v12 = sub_226D67F1C();
  v1[18] = v12;
  v13 = *(v12 - 8);
  v1[19] = v13;
  v14 = *(v13 + 64) + 15;
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D4BBDC, 0, 0);
}

uint64_t sub_226D4BBDC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[7];
  v5 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v78 = v0;
  v0[21] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D70840;
  v7 = *MEMORY[0x277CC32E0];
  *(v6 + 32) = sub_226D6E39C();
  *(v6 + 40) = v8;
  v9 = sub_226D6E5CC();

  [v5 setFetchAttributes_];

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_226D70840;
  sub_226D67EBC();
  v11 = sub_226D67F0C();
  v13 = v12;
  (*(v2 + 8))(v1, v3);
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = sub_226D6E5CC();

  v74 = v5;
  [v5 setBundleIDs_];

  v15 = sub_226B224FC(MEMORY[0x277D84F90]);
  v16 = v4 + 56;
  v17 = -1;
  v18 = -1 << *(v4 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v4 + 56);
  v20 = (63 - v18) >> 6;
  v77 = v4;

  v24 = 0;
  v75 = v20;
  for (i = v4 + 56; ; v16 = i)
  {
    v78[22] = v15;
    if (!v19)
    {
      while (1)
      {
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
          goto LABEL_39;
        }

        if (v27 >= v20)
        {
          break;
        }

        v19 = *(v16 + 8 * v27);
        ++v24;
        if (v19)
        {
          v24 = v27;
          goto LABEL_11;
        }
      }

      v59 = v78[17];
      v60 = v78[13];
      v61 = v78[14];
      v62 = v78[12];
      v63 = v78[7];

      v65 = sub_226D486B0(v64);

      v78[4] = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
      sub_226AE3D6C();
      sub_226D6E31C();

      v66 = objc_allocWithZone(MEMORY[0x277CC3498]);
      v67 = v74;
      v68 = sub_226D6E36C();

      v78[23] = [v66 initWithQueryString:v68 queryContext:v67];

      v78[5] = MEMORY[0x277D84FA0];
      sub_226D6E99C();
      sub_226D6E94C();
      (*(v60 + 8))(v61, v62);
      v69 = sub_226D4C8F8(&unk_27D7A95C0, MEMORY[0x277CC21E8]);
      v70 = *(MEMORY[0x277D856D0] + 4);
      v71 = swift_task_alloc();
      v78[24] = v71;
      *v71 = v78;
      v71[1] = sub_226D4C2C0;
      v72 = v78[17];
      v22 = v78[15];
      v21 = v78[11];
      v23 = v69;

      return MEMORY[0x282200308](v21, v22, v23);
    }

LABEL_11:
    v28 = (*(v77 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v19)))));
    v30 = *v28;
    v29 = v28[1];

    v31 = v30;
    v32 = sub_226D67AFC();
    v34 = v33;
    v35 = v29;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = sub_226C2FDD4(v32, v34);
    v38 = v15[2];
    v39 = (v22 & 1) == 0;
    v21 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return MEMORY[0x282200308](v21, v22, v23);
    }

    v40 = v22;
    if (v15[3] >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = v31;
        if (v22)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v21 = sub_226C37EBC();
        v41 = v31;
        if (v40)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_226C31844(v21, isUniquelyReferenced_nonNull_native);
      v21 = sub_226C2FDD4(v32, v34);
      if ((v40 & 1) != (v22 & 1))
      {
        goto LABEL_35;
      }

      v37 = v21;
      v41 = v31;
      if (v40)
      {
LABEL_18:
        v42 = (v15[7] + 16 * v37);
        v43 = v42[1];
        *v42 = v41;
        v42[1] = v35;

        goto LABEL_22;
      }
    }

    v15[(v37 >> 6) + 8] |= 1 << v37;
    v44 = (v15[6] + 16 * v37);
    *v44 = v32;
    v44[1] = v34;
    v45 = (v15[7] + 16 * v37);
    *v45 = v41;
    v45[1] = v35;
    v46 = v15[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_41;
    }

    v15[2] = v48;

LABEL_22:
    MEMORY[0x22AA8A510](v32, v34);

    MEMORY[0x22AA8A510](62, 0xE100000000000000);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_226C2FDD4(60, 0xE100000000000000);
    v50 = v15[2];
    v51 = (v22 & 1) == 0;
    v47 = __OFADD__(v50, v51);
    v52 = v50 + v51;
    if (v47)
    {
      goto LABEL_40;
    }

    v53 = v22;
    if (v15[3] < v52)
    {
      break;
    }

    if (v49)
    {
      goto LABEL_27;
    }

    v58 = v21;
    sub_226C37EBC();
    v21 = v58;
    if (v53)
    {
LABEL_4:
      v25 = (v15[7] + 16 * v21);
      v26 = v25[1];
      *v25 = v41;
      v25[1] = v35;

      goto LABEL_5;
    }

LABEL_28:
    v15[(v21 >> 6) + 8] |= 1 << v21;
    v54 = (v15[6] + 16 * v21);
    *v54 = 60;
    v54[1] = 0xE100000000000000;
    v55 = (v15[7] + 16 * v21);
    *v55 = v41;
    v55[1] = v35;
    v56 = v15[2];
    v47 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (v47)
    {
      goto LABEL_42;
    }

    v15[2] = v57;
LABEL_5:
    v19 &= v19 - 1;

    v20 = v75;
  }

  sub_226C31844(v52, v49);
  v21 = sub_226C2FDD4(60, 0xE100000000000000);
  if ((v53 & 1) == (v22 & 1))
  {
LABEL_27:
    if (v53)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

LABEL_35:

  return sub_226D6F25C();
}

uint64_t sub_226D4C2C0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 176);
    v5 = *(v2 + 40);

    v6 = sub_226D4C72C;
  }

  else
  {
    v6 = sub_226D4C3E8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D4C3E8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[22];
    v5 = v0[23];
    v6 = v0[20];
    v7 = v0[21];
    v8 = v0[14];
    v9 = v0[10];
    (*(v0[16] + 8))(v0[17], v0[15]);

    v10 = v0[5];

    v11 = v0[1];

    return v11(v10);
  }

  else
  {
    (*(v3 + 32))(v0[10], v1, v2);
    v13 = sub_226D6E95C();
    v14 = [v13 attributeSet];

    v15 = [v14 mailMessageHeader];
    if (v15)
    {
      v16 = v0[22];
      v17 = v15;
      v18 = sub_226D6E39C();
      v20 = v19;

      if (*(v16 + 16))
      {
        v21 = v0[22];
        v22 = sub_226C2FDD4(v18, v20);
        v24 = v23;

        if (v24)
        {
          v26 = v0[9];
          v25 = v0[10];
          v27 = v0[8];
          v28 = (*(v0[22] + 56) + 16 * v22);
          v29 = *v28;
          v30 = v28[1];

          sub_226C24D14(v0 + 2, v29, v30);

          v31 = v0[3];

          (*(v26 + 8))(v25, v27);
        }

        else
        {
          v36 = v0[9];
          v35 = v0[10];
          v37 = v0[8];

          (*(v36 + 8))(v35, v37);
        }
      }

      else
      {
        v33 = v0[9];
        v32 = v0[10];
        v34 = v0[8];

        (*(v33 + 8))(v32, v34);
      }
    }

    else
    {
      (*(v0[9] + 8))(v0[10], v0[8]);
    }

    v38 = sub_226D4C8F8(&unk_27D7A95C0, MEMORY[0x277CC21E8]);
    v39 = *(MEMORY[0x277D856D0] + 4);
    v40 = swift_task_alloc();
    v0[24] = v40;
    *v40 = v0;
    v40[1] = sub_226D4C2C0;
    v41 = v0[17];
    v42 = v0[15];
    v43 = v0[11];

    return MEMORY[0x282200308](v43, v42, v38);
  }
}

uint64_t sub_226D4C72C()
{
  *(v0 + 48) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_226D4C7C0, 0, 0);
}

uint64_t sub_226D4C7C0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);

  (*(v4 + 8))(v3, v5);

  v9 = *(v0 + 8);
  v10 = *(v0 + 200);

  return v9();
}

uint64_t sub_226D4C890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D4C8F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t BankConnectServiceImplementation.validateAccountConnection(with:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_226D6B9BC();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v6 = *(*(type metadata accessor for BankConnectAccountConnectionValidationResult() - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D4CA48, 0, 0);
}

uint64_t sub_226D4CA48()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
  *(v0 + 80) = &type metadata for BankConnectEnvironmentImplementation;
  v2 = sub_226B6A16C();
  *(v0 + 88) = v2;
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  sub_226B42014(v1, v3 + 16);
  v4 = type metadata accessor for BankConnectAccountConnectionValidator();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, &type metadata for BankConnectEnvironmentImplementation);
  v7 = off_283A722F0;
  v8 = *(off_283A722F0 + 8) + 15;
  v9 = swift_task_alloc();
  v7[2](v9, v6, &type metadata for BankConnectEnvironmentImplementation);
  *(v0 + 120) = &type metadata for BankConnectEnvironmentImplementation;
  *(v0 + 128) = v2;
  v10 = swift_allocObject();
  *(v0 + 96) = v10;
  memcpy((v10 + 16), v9, 0x3B0uLL);
  sub_226AC484C((v0 + 96), v5 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  *(v0 + 40) = v4;
  *(v0 + 48) = &off_283A71A08;
  *(v0 + 16) = v5;
  v11 = *__swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_226D4CC58;
  v13 = *(v0 + 184);
  v14 = *(v0 + 136);

  return sub_226CE9490(v13, v14);
}

uint64_t sub_226D4CC58()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226D4CD54, 0, 0);
}

uint64_t sub_226D4CD54()
{
  v34 = v0;
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[17];
  v7 = sub_226D6E07C();
  __swift_project_value_buffer(v7, qword_27D7A7D10);
  (*(v4 + 16))(v3, v6, v5);
  sub_226CEB09C(v2, v1);
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9EC();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[22];
  v11 = v0[23];
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[19];
  if (v10)
  {
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v16 = 136315394;
    sub_226C0B634();
    v17 = sub_226D6F1CC();
    v32 = v11;
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_226AC4530(v17, v19, &v33);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_226D4D060();
    v23 = v22;
    sub_226D4D004(v12);
    v24 = sub_226AC4530(v21, v23, &v33);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_226AB4000, v8, v9, "Finished validating account(%s) with result %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v31, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);

    v25 = v32;
  }

  else
  {

    sub_226D4D004(v12);
    (*(v14 + 8))(v13, v15);
    v25 = v11;
  }

  sub_226D4D004(v25);
  v26 = v0[22];
  v27 = v0[23];
  v28 = v0[21];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v29 = v0[1];

  return v29();
}

uint64_t sub_226D4D004(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAccountConnectionValidationResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226D4D060()
{
  v1 = sub_226D6B9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D68CBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BankConnectAccountConnectionValidationResult();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226CEB09C(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v2 + 32))(v5, v14, v1);
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD000000000000040, 0x8000000226D88AE0);
      sub_226C0B634();
      v19 = sub_226D6F1CC();
      MEMORY[0x22AA8A510](v19);

      MEMORY[0x22AA8A510](10537, 0xE200000000000000);
      v16 = v22;
      (*(v2 + 8))(v5, v1);
    }

    else
    {
      (*(v7 + 32))(v10, v14, v6);
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD00000000000003DLL, 0x8000000226D88B30);
      sub_226D6EFBC();
      MEMORY[0x22AA8A510](10537, 0xE200000000000000);
      v16 = v22;
      (*(v7 + 8))(v10, v6);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v17 = *v14;
    v18 = v14[1];
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0xD000000000000035, 0x8000000226D88A00);
    v21[0] = v17;
    v21[1] = v18;
    sub_226D6EFBC();
    sub_226B3E1C8(v17, v18);
    MEMORY[0x22AA8A510](41, 0xE100000000000000);
    return v22;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0xD000000000000040;
  }

  else
  {
    return 0xD000000000000044;
  }

  return v16;
}

void sub_226D4D434(uint64_t a1)
{
  v39 = sub_226D6D1AC();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_226D6EDFC();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    v47 = MEMORY[0x277D84F90];
    sub_226AE1D68(0, v6 & ~(v6 >> 63), 0);
    v42 = v47;
    if (v40)
    {
      v7 = sub_226D6EFFC();
    }

    else
    {
      v9 = -1 << *(a1 + 32);
      v7 = sub_226D6ED6C();
      v8 = *(a1 + 36);
    }

    v44 = v7;
    v45 = v8;
    v46 = v40 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v36 = (v3 + 8);
      v37 = a1;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v34[1] = v1;
      v34[2] = v11;
      v35 = v6;
      while (v10 < v6)
      {
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

        v41 = v10 + 1;
        v19 = v44;
        v20 = v45;
        v21 = v46;
        sub_226D56C74(v44, v45, v46, a1);
        v23 = v22;
        v24 = [v22 URIRepresentation];
        v25 = v38;
        sub_226D6D14C();

        v26 = sub_226D6D0AC();
        v28 = v27;
        (*v36)(v25, v39);

        v29 = v42;
        v47 = v42;
        v31 = *(v42 + 16);
        v30 = *(v42 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_226AE1D68((v30 > 1), v31 + 1, 1);
          v29 = v47;
        }

        *(v29 + 16) = v31 + 1;
        v32 = v29 + 16 * v31;
        *(v32 + 32) = v26;
        *(v32 + 40) = v28;
        v42 = v29;
        if (v40)
        {
          a1 = v37;
          if (!v21)
          {
            goto LABEL_28;
          }

          if (sub_226D6F03C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v35;
          v18 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9678, &qword_226D7E598);
          v33 = sub_226D6E2DC();
          sub_226D6F09C();
          v33(v43, 0);
        }

        else
        {
          a1 = v37;
          sub_226D56B10(v19, v20, v21, v37);
          v13 = v12;
          v15 = v14;
          v17 = v16;
          sub_226AE5444(v19, v20, v21);
          v44 = v13;
          v45 = v15;
          v46 = v17 & 1;
          v6 = v35;
          v18 = v41;
        }

        ++v10;
        if (v18 == v6)
        {
          sub_226AE5444(v44, v45, v46);
          return;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }
}

uint64_t sub_226D4D7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_226D6F2FC();
  sub_226D6E42C();
  v7 = sub_226D6F35C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_226D6F21C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_226D4D898(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D6D52C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_226D58848(&qword_281062B60, MEMORY[0x277CC95F0]), v9 = sub_226D6E2FC(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_226D58848(&qword_27D7A6DA0, MEMORY[0x277CC95F0]);
      v17 = sub_226D6E35C();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_226D4DAB0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v54 = *(a1 + 16);
  v55 = *a1;
  v53 = *(a1 + 32);
  v52 = *(a1 + 48);
  v3 = *(a2 + 40);
  sub_226D6F2FC();
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (*(a1 + 48))
  {
    if (*(a1 + 48) != 1)
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      MEMORY[0x22AA8B3B0](2);
      sub_226D6E42C();
      sub_226D6E42C();
      goto LABEL_9;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x22AA8B3B0](v8);
  sub_226D6E42C();
LABEL_9:
  sub_226D6E42C();
  v12 = sub_226D6F35C();
  v13 = a2;
  v14 = -1 << *(a2 + 32);
  v15 = v12 & ~v14;
  if (((*(a2 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return 0;
  }

  v51 = ~v14;
  while (1)
  {
    v24 = *(v13 + 48) + 56 * v15;
    v26 = *v24;
    v25 = *(v24 + 8);
    v28 = *(v24 + 16);
    v27 = *(v24 + 24);
    v30 = *(v24 + 32);
    v29 = *(v24 + 40);
    v31 = *(v24 + 48);
    v57[0] = *v24;
    v57[1] = v25;
    v57[2] = v28;
    v57[3] = v27;
    v57[4] = v30;
    v57[5] = v29;
    v58 = v31;
    v59 = v55;
    v60 = v54;
    v61 = v53;
    v62 = v52;
    if (!v31)
    {
      break;
    }

    if (v31 == 1)
    {
      if (*(a1 + 48) != 1)
      {
        goto LABEL_48;
      }

      v32 = *(a1 + 16);
      v33 = *(a1 + 24);
      if (v26 != *a1 || v25 != *(a1 + 8))
      {
        v47 = *(a1 + 16);
        v35 = sub_226D6F21C();
        v32 = v47;
        if ((v35 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      if (v28 == v32 && v27 == v33)
      {
        goto LABEL_52;
      }

      v16 = sub_226D6F21C();
      sub_226AE50D8(a1, v56);
      v17 = v26;
      v18 = v25;
      v19 = v28;
      v20 = v27;
      v21 = v30;
      v22 = v29;
      v23 = 1;
    }

    else
    {
      if (*(a1 + 48) != 2)
      {
LABEL_48:
        sub_226AE50D8(a1, v56);
LABEL_50:
        sub_226AFD74C(v26, v25, v28, v27, v30, v29, v31);
        sub_226AC47B0(v57, &unk_27D7A9640, &qword_226D7A5E0);
        goto LABEL_13;
      }

      v43 = *(a1 + 16);
      v42 = *(a1 + 24);
      v46 = *(a1 + 40);
      v49 = *(a1 + 32);
      if (v26 != *a1 || v25 != *(a1 + 8))
      {
        v45 = *(a1 + 24);
        v44 = sub_226D6F21C();
        v42 = v45;
        if ((v44 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      if ((v28 != v43 || v27 != v42) && (sub_226D6F21C() & 1) == 0)
      {
        goto LABEL_49;
      }

      if (v30 == v49 && v29 == v46)
      {
        goto LABEL_52;
      }

      v16 = sub_226D6F21C();
      sub_226AE50D8(a1, v56);
      v17 = v26;
      v18 = v25;
      v19 = v28;
      v20 = v27;
      v21 = v30;
      v22 = v29;
      v23 = 2;
    }

LABEL_12:
    sub_226AFD74C(v17, v18, v19, v20, v21, v22, v23);
    sub_226AC47B0(v57, &unk_27D7A9640, &qword_226D7A5E0);
    v13 = a2;
    if (v16)
    {
      return 1;
    }

LABEL_13:
    v15 = (v15 + 1) & v51;
    if (((*(a2 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 48))
  {
    goto LABEL_48;
  }

  v37 = *(a1 + 16);
  v38 = *(a1 + 24);
  if (v26 != *a1 || v25 != *(a1 + 8))
  {
    v48 = *(a1 + 16);
    v40 = sub_226D6F21C();
    v37 = v48;
    if ((v40 & 1) == 0)
    {
LABEL_49:
      sub_226AE50D8(a1, v56);
      v13 = a2;
      goto LABEL_50;
    }
  }

  if (v28 != v37 || v27 != v38)
  {
    v16 = sub_226D6F21C();
    sub_226AE50D8(a1, v56);
    v17 = v26;
    v18 = v25;
    v19 = v28;
    v20 = v27;
    v21 = v30;
    v22 = v29;
    v23 = 0;
    goto LABEL_12;
  }

LABEL_52:
  sub_226AE50D8(a1, v56);
  sub_226AFD74C(v26, v25, v28, v27, v30, v29, v31);
  sub_226AC47B0(v57, &unk_27D7A9640, &qword_226D7A5E0);
  return 1;
}

uint64_t sub_226D4DF34(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D67F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_226D58848(&qword_27D7A9630, MEMORY[0x277CC7098]), v9 = sub_226D6E2FC(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_226D58848(&qword_281062BD0, MEMORY[0x277CC7098]);
      v17 = sub_226D6E35C();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_226D4E14C(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D680EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_226D58848(&qword_27D7A9690, MEMORY[0x277CC7180]), v9 = sub_226D6E2FC(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_226D58848(&qword_27D7A69E0, MEMORY[0x277CC7180]);
      v17 = sub_226D6E35C();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t WalletMessagingProvider.processMessages()()
{
  v1[7] = v0;
  v2 = sub_226D6D1AC();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_226D6EB9C();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D4E4AC, 0, 0);
}

uint64_t sub_226D4E4AC()
{
  if (qword_28105F6C0 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  v0[14] = __swift_project_value_buffer(v1, qword_28105F6C8);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Processing Wallet messages", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = *(v5 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_messageSink);
  v0[15] = v6;
  if (v6)
  {
    v7 = v0[7];
    v8 = OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore;
    if (*(v7 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore))
    {
      swift_unknownObjectRetain();
    }

    else
    {
      sub_226D67F5C();
      swift_unknownObjectRetain();
      sub_226D67F3C();
      v24 = sub_226D67F4C();

      v25 = *(v7 + v8);
      *(v7 + v8) = v24;
    }

    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];

    v12 = sub_226D676AC();
    v0[16] = v12;

    v13 = swift_allocObject();
    v0[17] = v13;
    *(v13 + 16) = v12;
    (*(v10 + 104))(v9, *MEMORY[0x277CBE110], v11);
    v14 = *(MEMORY[0x277CBE118] + 4);
    v12;
    v15 = swift_task_alloc();
    v0[18] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A95E8, qword_226D7E4D0);
    *v15 = v0;
    v15[1] = sub_226D4E910;
    v17 = v0[13];

    return MEMORY[0x28210EE50](v0 + 2, v17, sub_226D56F14, v13, v16);
  }

  else
  {
    v18 = sub_226D6E05C();
    v19 = sub_226D6E9CC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226AB4000, v18, v19, "No message sink, skipping Wallet message processing", v20, 2u);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }

    v21 = v0[13];
    v22 = v0[10];

    v23 = v0[1];

    return v23();
  }
}

void sub_226D4E910()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
  }

  else
  {
    v4 = v2[16];
    v5 = v2[17];
    v7 = v2[12];
    v6 = v2[13];
    v8 = v2[11];

    (*(v7 + 8))(v6, v8);

    MEMORY[0x2822009F8](sub_226D4EA74, 0, 0);
  }
}

void sub_226D4EA74()
{
  v110 = v0;
  v1 = *(v0 + 16);
  v2 = [*(v0 + 120) registrations];
  v3 = MEMORY[0x277D84F90];
  v106 = v0;
  v102 = v1;
  if (!v2)
  {
    goto LABEL_29;
  }

  v4 = v2;
  sub_226AE59B4(0, &qword_27D7A9600, 0x277D37D98);
  v5 = sub_226D6E5EC();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_25:

    v12 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_11;
    }

LABEL_26:
    v13 = sub_226D6EDFC();
    if (v13)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

  v6 = sub_226D6EDFC();
  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  v109[0] = v3;
  sub_226D6EF8C();
  if (v6 < 0)
  {
    goto LABEL_80;
  }

  v7 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AA8AFD0](v7, v5);
    }

    else
    {
      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    v10 = [v8 key];

    sub_226D6EF6C();
    v11 = *(v109[0] + 16);
    sub_226D6EF9C();
    sub_226D6EFAC();
    sub_226D6EF7C();
  }

  while (v6 != v7);

  v12 = v109[0];
  if (v109[0] >> 62)
  {
    goto LABEL_26;
  }

LABEL_11:
  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
LABEL_12:
    v109[0] = v3;
    sub_226AE1D68(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      goto LABEL_81;
    }

    v3 = v109[0];
    if ((v12 & 0xC000000000000001) != 0)
    {
      v14 = 0;
      do
      {
        MEMORY[0x22AA8AFD0](v14, v12);
        v15 = [swift_unknownObjectRetain() identifier];
        v16 = sub_226D6E39C();
        v18 = v17;

        swift_unknownObjectRelease_n();
        v109[0] = v3;
        v20 = *(v3 + 16);
        v19 = *(v3 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_226AE1D68((v19 > 1), v20 + 1, 1);
          v3 = v109[0];
        }

        ++v14;
        *(v3 + 16) = v20 + 1;
        v21 = v3 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
      }

      while (v13 != v14);
    }

    else
    {
      v22 = 32;
      do
      {
        v23 = *(v12 + v22);
        v24 = [v23 identifier];
        v25 = sub_226D6E39C();
        v27 = v26;

        v109[0] = v3;
        v29 = *(v3 + 16);
        v28 = *(v3 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_226AE1D68((v28 > 1), v29 + 1, 1);
          v3 = v109[0];
        }

        *(v3 + 16) = v29 + 1;
        v30 = v3 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v22 += 8;
        --v13;
      }

      while (v13);
    }

    v0 = v106;
    goto LABEL_28;
  }

LABEL_27:

  v3 = MEMORY[0x277D84F90];
LABEL_28:
  v1 = v102;
LABEL_29:
  v31 = sub_226AE3C28(v3);

  if ((v1 & 0xC000000000000001) != 0)
  {
    v32 = 0;
    v103 = 0;
    v33 = 0;
    v34 = sub_226D6F00C() | 0x8000000000000000;
  }

  else
  {
    v35 = -1 << *(v1 + 32);
    v103 = ~v35;
    v32 = v1 + 64;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v33 = v37 & *(v1 + 64);
    v34 = v1;
  }

  v38 = (v103 + 64) >> 6;
  v104 = (*(v0 + 72) + 8);
  v108 = v31 + 56;

  v39 = 0;
  v105 = v34;
  while ((v34 & 0x8000000000000000) != 0)
  {
    v48 = sub_226D6F08C();
    if (!v48)
    {
      goto LABEL_62;
    }

    v50 = v49;
    *(v0 + 32) = v48;
    sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    swift_dynamicCast();
    v46 = *(v0 + 24);
    *(v0 + 48) = v50;
    sub_226AE59B4(0, &qword_27D7A95F8, 0x277D37DA0);
    swift_dynamicCast();
    v47 = *(v0 + 40);
    v42 = v39;
    v107 = v33;
    if (!v46)
    {
LABEL_62:
      v79 = *(v0 + 152);
      sub_226AD3C20();
      sub_226D4D434(v102);
      v81 = v80;

      v82 = sub_226AE3C28(v81);

      if (*(v82 + 16) <= *(v31 + 16) >> 3)
      {
        v109[0] = v31;
        sub_226D53D38(v82);

        v83 = v109[0];
      }

      else
      {
        v83 = sub_226D549F0(v82, v31);
      }

      v84 = 0;
      v85 = -1;
      v86 = -1 << *(v83 + 32);
      if (-v86 < 64)
      {
        v85 = ~(-1 << -v86);
      }

      v87 = v85 & *(v83 + 56);
      v88 = (63 - v86) >> 6;
      if (v87)
      {
        while (1)
        {
          v89 = v84;
LABEL_73:
          v90 = *(v106 + 120);
          v91 = __clz(__rbit64(v87));
          v87 &= v87 - 1;
          v92 = (*(v83 + 48) + ((v89 << 10) | (16 * v91)));
          v93 = *v92;
          v94 = v92[1];

          v95 = sub_226D6E36C();

          [v90 unregisterMessageForIdentifier_];

          if (!v87)
          {
            goto LABEL_69;
          }
        }
      }

      while (1)
      {
LABEL_69:
        v89 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          __break(1u);
          goto LABEL_79;
        }

        if (v89 >= v88)
        {
          break;
        }

        v87 = *(v83 + 56 + 8 * v89);
        ++v84;
        if (v87)
        {
          v84 = v89;
          goto LABEL_73;
        }
      }

      v96 = *(v106 + 120);

      swift_unknownObjectRelease();
      v97 = *(v106 + 104);
      v98 = *(v106 + 80);

      v99 = *(v106 + 8);

      v99();
      return;
    }

LABEL_47:
    v51 = *(v0 + 80);
    v52 = *(v0 + 64);
    v53 = [v46 URIRepresentation];
    sub_226D6D14C();

    v54 = sub_226D6D0AC();
    v56 = v55;
    (*v104)(v51, v52);
    if (*(v31 + 16) && (v57 = *(v31 + 40), sub_226D6F2FC(), sub_226D6E42C(), v58 = sub_226D6F35C(), v59 = -1 << *(v31 + 32), v60 = v58 & ~v59, ((*(v108 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) != 0))
    {
      v61 = ~v59;
      while (1)
      {
        v62 = (*(v31 + 48) + 16 * v60);
        v63 = *v62 == v54 && v62[1] == v56;
        if (v63 || (sub_226D6F21C() & 1) != 0)
        {
          break;
        }

        v60 = (v60 + 1) & v61;
        if (((*(v108 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
LABEL_56:
      v64 = *(v0 + 120);
      v65 = sub_226D6E36C();

      v66 = v47;
      LOBYTE(v64) = [v64 registerMessageForIdentifier:v65 withRequest:v47];

      if (v64)
      {

        goto LABEL_37;
      }

      v67 = *(v0 + 112);
      v47 = v46;
      v68 = sub_226D6E05C();
      v69 = sub_226D6E9CC();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v109[0] = v71;
        *v70 = 136315138;
        v101 = v47;
        v72 = [v47 debugDescription];
        v73 = v32;
        v74 = sub_226D6E39C();
        v100 = v66;
        v76 = v75;

        v77 = v74;
        v32 = v73;
        v78 = sub_226AC4530(v77, v76, v109);

        *(v70 + 4) = v78;
        v0 = v106;
        _os_log_impl(&dword_226AB4000, v68, v69, "Error registering message %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        MEMORY[0x22AA8BEE0](v71, -1, -1);
        MEMORY[0x22AA8BEE0](v70, -1, -1);

        goto LABEL_37;
      }
    }

LABEL_37:
    v39 = v42;
    v33 = v107;
    v38 = (v103 + 64) >> 6;
    v34 = v105;
  }

  v40 = v39;
  v41 = v33;
  v42 = v39;
  if (v33)
  {
LABEL_43:
    v107 = (v41 - 1) & v41;
    v43 = (v42 << 9) | (8 * __clz(__rbit64(v41)));
    v44 = *(*(v34 + 48) + v43);
    v45 = *(*(v34 + 56) + v43);
    v46 = v44;
    v47 = v45;
    if (!v46)
    {
      goto LABEL_62;
    }

    goto LABEL_47;
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v42 >= v38)
    {
      goto LABEL_62;
    }

    v41 = *(v32 + 8 * v42);
    ++v40;
    if (v41)
    {
      goto LABEL_43;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
}

void sub_226D4F3D8(uint64_t isUniquelyReferenced_nonNull_native@<X8>)
{
  sub_226D691CC();
  v3 = sub_226D6919C();
  v4 = sub_226D6EBBC();
  v5 = v1;
  if (v1)
  {

    if (qword_28105F6C0 != -1)
    {
LABEL_40:
      swift_once();
    }

    v6 = sub_226D6E07C();
    __swift_project_value_buffer(v6, qword_28105F6C8);
    v7 = v5;
    v8 = sub_226D6E05C();
    v9 = sub_226D6E9CC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v5;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_226AB4000, v8, v9, "Error fetching messages: %@", v10, 0xCu);
      sub_226AC47B0(v11, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }

    v14 = sub_226B2459C(MEMORY[0x277D84F90]);
    goto LABEL_44;
  }

  v15 = v4;

  v16 = v15;
  if (v15 >> 62)
  {
    v17 = sub_226D6EDFC();
    v16 = v15;
    v39 = isUniquelyReferenced_nonNull_native;
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_42:
    v14 = MEMORY[0x277D84F98];
LABEL_43:

    isUniquelyReferenced_nonNull_native = v39;
LABEL_44:
    *isUniquelyReferenced_nonNull_native = v14;
    return;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v39 = isUniquelyReferenced_nonNull_native;
  if (!v17)
  {
    goto LABEL_42;
  }

LABEL_8:
  v5 = 0;
  v42 = v16 & 0xFFFFFFFFFFFFFF8;
  v43 = v16 & 0xC000000000000001;
  v14 = MEMORY[0x277D84F98];
  v40 = v17;
  v41 = v16;
  while (1)
  {
    if (v43)
    {
      v20 = MEMORY[0x22AA8AFD0](v5, v16);
    }

    else
    {
      if (v5 >= *(v42 + 16))
      {
        goto LABEL_35;
      }

      v20 = *(v16 + 8 * v5 + 32);
    }

    v21 = v20;
    v22 = (v5 + 1);
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v23 = [v20 objectID];
    v24 = [objc_allocWithZone(MEMORY[0x277D37DA0]) init];
    v25 = [v21 priority];
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    [v24 setPriority_];
    if ((v14 & 0xC000000000000001) != 0)
    {
      if (v14 < 0)
      {
        v26 = v14;
      }

      else
      {
        v26 = v14 & 0xFFFFFFFFFFFFFF8;
      }

      v27 = sub_226D6EDFC();
      if (__OFADD__(v27, 1))
      {
        goto LABEL_38;
      }

      v14 = sub_226D52C88(v26, v27 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = sub_226C3015C(v23);
    v30 = *(v14 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_37;
    }

    v33 = v28;
    if (*(v14 + 24) < v32)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v28)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_226C3A110();
      if (v33)
      {
LABEL_9:
        v18 = *(v14 + 56);
        v19 = *(v18 + 8 * v29);
        *(v18 + 8 * v29) = v24;

        goto LABEL_10;
      }
    }

LABEL_29:
    *(v14 + 8 * (v29 >> 6) + 64) |= 1 << v29;
    *(*(v14 + 48) + 8 * v29) = v23;
    *(*(v14 + 56) + 8 * v29) = v24;

    v36 = *(v14 + 16);
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_39;
    }

    *(v14 + 16) = v38;
LABEL_10:
    ++v5;
    v16 = v41;
    if (v22 == v40)
    {
      goto LABEL_43;
    }
  }

  sub_226C35FDC(v32, isUniquelyReferenced_nonNull_native);
  v34 = sub_226C3015C(v23);
  if ((v33 & 1) == (v35 & 1))
  {
    v29 = v34;
    if (v33)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

  sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  sub_226D6F25C();
  __break(1u);
}

uint64_t sub_226D4F98C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_226D4FA34;

  return WalletMessagingProvider.processMessages()();
}

uint64_t sub_226D4FA34()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

id WalletMessagingProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalletMessagingProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void WalletMessagingProvider.connect(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_messageSink);
  *(v2 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_messageSink) = a1;
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore;
  if (*(v2 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore))
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_226D67F5C();
    swift_unknownObjectRetain();
    sub_226D67F3C();
    v10 = sub_226D67F4C();

    v11 = *(v2 + v5);
    *(v2 + v5) = v10;
  }

  v6 = sub_226D676AC();

  v7 = sub_226AE532C(v2 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_userDefaults, v12);
  v8 = *(v2 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_deviceInfo);
  MEMORY[0x28223BE20](v7);
  sub_226D6EB8C();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  if (v13)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
    [v9 updateFinanceKitApplicationMessages];
  }

  else
  {
  }
}

uint64_t sub_226D4FFB4@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  sub_226D691CC();
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v10[3] = v4;
  v10[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  v8 = sub_226D6914C();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v10);
  *a2 = v8 & 1;
  return result;
}

void sub_226D50114(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = [objc_opt_self() currentQueryGenerationToken];
  v16[0] = 0;
  v9 = [a1 setQueryGenerationFromToken:v8 error:v16];

  if (v9)
  {
    v10 = v16[0];
    v11 = sub_226D571F4(a2, a1);
    if (v11)
    {
      v12 = v11;
      v13 = sub_226D50248(a3 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_imageProcessingService);

      *a4 = v13;
    }

    else
    {
      *a4 = 0;
    }
  }

  else
  {
    v14 = v16[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D50248(uint64_t a1)
{
  v2 = sub_226D6B49C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6916C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226D6918C();
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277CC77E8])
  {
    (*(v8 + 96))(v11, v7);
    v13 = *v11;
    v14 = v11[1];
    v15 = v11[2];
    v16 = v11[3];
    v17 = sub_226D57788();
    v18 = sub_226D6E36C();

    if (v16)
    {
      v19 = sub_226D6E36C();
    }

    else
    {
      v19 = 0;
    }

    v20 = [objc_opt_self() createWithGroup:v17 action:0 icon:0 title:v18 body:v19];

    return v20;
  }

  if (v12 == *MEMORY[0x277CC77E0])
  {
    (*(v8 + 96))(v11, v7);
    v20 = sub_226D50BD8(*v11, v11[1]);

    return v20;
  }

  if (v12 == *MEMORY[0x277CC77D8])
  {
    (*(v8 + 96))(v11, v7);
    v21 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9660, &qword_226D7E590) + 48));
    v22 = *v21;
    v23 = v21[1];
    (*(v3 + 32))(v6, v11, v2);
    v24 = sub_226D512E4(v6, v22, v23, a1);
LABEL_12:
    v20 = v24;

    (*(v3 + 8))(v6, v2);
    return v20;
  }

  if (v12 == *MEMORY[0x277CC77D0])
  {
    (*(v8 + 96))(v11, v7);
    v25 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A30, &qword_226D75DF8) + 48));
    v26 = *v25;
    v27 = v25[1];
    (*(v3 + 32))(v6, v11, v2);
    v24 = sub_226D51D68(v6, v26, v27, a1);
    goto LABEL_12;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

void sub_226D50698(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = sub_226D571F4(a1, a2);
  if (v4)
  {
    v5 = v4;
    [a2 deleteObject_];
    v19 = 0;
    if ([a2 save_])
    {
      v6 = v19;
    }

    else
    {
      v17 = v19;
      sub_226D6D04C();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_28105F6C0 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    __swift_project_value_buffer(v7, qword_28105F6C8);
    v8 = a1;
    v5 = sub_226D6E05C();
    v9 = sub_226D6E9CC();

    if (os_log_type_enabled(v5, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = [v8 debugDescription];
      v13 = sub_226D6E39C();
      v15 = v14;

      v16 = sub_226AC4530(v13, v15, &v19);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_226AB4000, v5, v9, "Could not find message to remove: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void WalletMessagingProvider.applicationMessageSink(_:tappedMessageWith:)(void *a1, void *a2)
{
  if (qword_28105F6C0 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F6C8);
  v5 = a2;
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v5 debugDescription];
    v11 = sub_226D6E39C();
    v13 = v12;

    v14 = sub_226AC4530(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_226AB4000, v6, v7, "Tapped message: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v15 = [v5 key];
  v16 = [v15 identifier];

  if (!v16)
  {
    sub_226D6E39C();
    v16 = sub_226D6E36C();
  }

  [a1 unregisterMessageForIdentifier_];

  sub_226D58158();
}

uint64_t sub_226D50BD8(uint64_t a1, uint64_t a2)
{
  v5 = sub_226D6D1AC();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v59 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6D4AC();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6C9BC();
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v56 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226D6D71C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_226D6D6DC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_226D6D5DC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_226D69B8C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_226D6C9DC();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [v2 managedObjectContext];
  if (v27)
  {
    v28 = v27;
    sub_226D6C37C();
    v29 = sub_226D6C36C();
    v30 = a2;
    v31 = v29;
    v50 = v30;
    if (v29)
    {
      v32 = a1;
      sub_226D6D56C();
      sub_226D6D66C();
      sub_226D6D70C();
      sub_226D69B5C();
      v49 = v26;
      sub_226D6C97C();
      v33 = [v31 inEffectOn];
      v34 = v51;
      sub_226D6D45C();

      v35 = v56;
      sub_226D6C9CC();
      (*(v52 + 8))(v34, v53);
      v36 = v59;
      v37 = v32;
      v38 = v50;
      sub_226D66D9C();
      v39 = objc_opt_self();
      v40 = sub_226D6D0DC();
      v41 = [v39 createWithURL_];

      v42 = objc_opt_self();
      v43 = sub_226D5799C(v37, v38);
      v44 = v41;
      sub_226D6C9AC();
      v45 = sub_226D6E36C();

      sub_226D6C99C();
      v46 = sub_226D6E36C();

      v47 = [v42 createWithGroup:v43 action:v44 icon:0 title:v45 body:v46];

      (*(v60 + 8))(v36, v61);
      (*(v57 + 8))(v35, v58);
      (*(v54 + 8))(v49, v55);
      return v47;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

uint64_t sub_226D512E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v87 = a2;
  v88 = a3;
  v6 = sub_226D6D1AC();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_226D6B22C();
  v76 = *(v78 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6CA6C();
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = *(v84 + 64);
  MEMORY[0x28223BE20](v11);
  v79 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226D6D71C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_226D6D6DC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v82 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_226D6D5DC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_226D69B8C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_226D6CA7C();
  v81 = *(v26 - 8);
  v27 = *(v81 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_226D6CA3C();
  v80 = *(v30 - 8);
  v31 = *(v80 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A80, &unk_226D75FF8);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v38);
  v86 = &v68 - v40;
  v41 = [v4 managedObjectContext];
  if (v41)
  {
    v42 = v41;
    sub_226D6751C();
    v89 = v42;
    v43 = sub_226D6745C();
    v44 = a1;
    v45 = v43;
    v71 = v44;
    if (v43)
    {
      v46 = [v43 ecommerceOrderContent];
      if (v46)
      {
        v47 = v46;
        v70 = sub_226D6B1EC();
        if ((~v70 & 0xF000000000000007) != 0)
        {
          v69 = v45;
          v48 = v47;
          sub_226D58830(v70);
          v68 = v48;
          sub_226D6CA1C();
          sub_226D6D56C();
          sub_226D6D66C();
          sub_226D6D70C();
          sub_226D69B5C();
          MEMORY[0x22AA88AB0](v25);
          sub_226D58848(&qword_27D7A9670, MEMORY[0x277CC83D0]);
          v49 = v86;
          sub_226D6CA2C();
          (*(v81 + 8))(v29, v26);
          (*(v80 + 8))(v33, v30);
          sub_226AC40E8(v49, v37, &qword_27D7A7A80, &unk_226D75FF8);
          v51 = v84;
          v50 = v85;
          if ((*(v84 + 48))(v37, 1, v85) != 1)
          {
            v53 = v79;
            (*(v51 + 32))(v79, v37, v50);
            v54 = v70;
            v55 = (v70 & 0x7FFFFFFFFFFFFFFFLL);
            v56 = v75;
            v57 = v68;
            sub_226D6B24C();
            sub_226BD4CD8(v54);
            v58 = sub_226D57BE4(v57, v56, v77);
            (*(v76 + 8))(v56, v78);
            sub_226D66D7C();
            v59 = objc_opt_self();
            v60 = sub_226D6D0DC();
            v61 = [v59 createWithURL_];

            v62 = objc_opt_self();
            v63 = sub_226D57788();
            v64 = v61;
            sub_226D6CA4C();
            v65 = sub_226D6E36C();

            sub_226D6CA5C();
            v66 = sub_226D6E36C();

            v67 = [v62 createWithGroup:v63 action:v64 icon:v58 title:v65 body:v66];

            sub_226BD4CD8(v70);
            (*(v72 + 8))(v74, v73);
            (*(v51 + 8))(v53, v50);
            sub_226AC47B0(v86, &qword_27D7A7A80, &unk_226D75FF8);
            return v67;
          }

          sub_226AC47B0(v49, &qword_27D7A7A80, &unk_226D75FF8);

          sub_226BD4CD8(v70);
          sub_226AC47B0(v37, &qword_27D7A7A80, &unk_226D75FF8);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  else
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

uint64_t sub_226D51D68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v77 = a4;
  v87 = a2;
  v88 = a3;
  v6 = sub_226D6D1AC();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_226D6B22C();
  v76 = *(v78 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6CA6C();
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = *(v84 + 64);
  MEMORY[0x28223BE20](v11);
  v79 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226D6D71C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_226D6D6DC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v82 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_226D6D5DC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_226D69B8C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_226D6CB0C();
  v81 = *(v26 - 8);
  v27 = *(v81 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_226D6CAFC();
  v80 = *(v30 - 8);
  v31 = *(v80 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7A80, &unk_226D75FF8);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v38);
  v86 = &v68 - v40;
  v41 = [v4 managedObjectContext];
  if (v41)
  {
    v42 = v41;
    sub_226D6751C();
    v89 = v42;
    v43 = sub_226D6745C();
    v44 = a1;
    v45 = v43;
    v71 = v44;
    if (v43)
    {
      v46 = [v43 ecommerceOrderContent];
      if (v46)
      {
        v47 = v46;
        v48 = sub_226D6B1FC();
        if (v48)
        {
          v70 = v48;
          v49 = v45;
          v50 = v47;
          v51 = v70;
          v68 = v49;
          v69 = v50;
          v70 = v51;
          sub_226D6CADC();
          sub_226D6D56C();
          sub_226D6D66C();
          sub_226D6D70C();
          sub_226D69B5C();
          MEMORY[0x22AA88B70](v25);
          sub_226D58848(&qword_27D7A7A88, MEMORY[0x277CC8570]);
          v52 = v86;
          sub_226D6CA2C();
          (*(v81 + 8))(v29, v26);
          (*(v80 + 8))(v33, v30);
          sub_226AC40E8(v52, v37, &qword_27D7A7A80, &unk_226D75FF8);
          v54 = v84;
          v53 = v85;
          if ((*(v84 + 48))(v37, 1, v85) != 1)
          {
            v56 = v68;
            (*(v54 + 32))(v79, v37, v53);
            v57 = v75;
            v58 = v69;
            sub_226D6B25C();
            v59 = sub_226D57BE4(v58, v57, v77);
            (*(v76 + 8))(v57, v78);
            sub_226D66D8C();
            v60 = objc_opt_self();
            v61 = sub_226D6D0DC();
            v62 = [v60 createWithURL_];

            v88 = objc_opt_self();
            v63 = sub_226D57788();
            v64 = v62;
            sub_226D6CA4C();
            v65 = sub_226D6E36C();

            sub_226D6CA5C();
            v66 = sub_226D6E36C();

            v67 = [v88 createWithGroup:v63 action:v64 icon:v59 title:v65 body:v66];

            (*(v72 + 8))(v74, v73);
            (*(v54 + 8))(v79, v53);
            sub_226AC47B0(v86, &qword_27D7A7A80, &unk_226D75FF8);
            return v67;
          }

          sub_226AC47B0(v52, &qword_27D7A7A80, &unk_226D75FF8);

          sub_226AC47B0(v37, &qword_27D7A7A80, &unk_226D75FF8);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  else
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

uint64_t sub_226D527BC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_226AE5A84;

  return v7();
}

uint64_t sub_226D528A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_226AD827C;

  return v8();
}

uint64_t sub_226D5298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_226AC40E8(a3, v25 - v11, &unk_27D7A8BA0, &qword_226D734E0);
  v13 = sub_226D6E79C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_226AC47B0(v12, &unk_27D7A8BA0, &qword_226D734E0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_226D6E78C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_226D6E6CC();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_226D6E40C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_226AC47B0(a3, &unk_27D7A8BA0, &qword_226D734E0);

    return v23;
  }

LABEL_8:
  sub_226AC47B0(a3, &unk_27D7A8BA0, &qword_226D734E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_226D52C88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9680, &qword_226D77EF0);
    v2 = sub_226D6F0FC();
    v20 = v2;
    sub_226D6F00C();
    v3 = sub_226D6F08C();
    if (v3)
    {
      v4 = v3;
      sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_226AE59B4(0, &qword_27D7A95F8, 0x277D37DA0);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_226C35FDC(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_226D6EC2C();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_226D6F08C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_226D52ED4()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_226D6EDFC();
  v4 = swift_unknownObjectRetain();
  v5 = sub_226C27938(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_226D6EC2C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_226D6EC3C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_226D537C4(v9);
  result = sub_226D6EC3C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_226D5303C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_226D6ED7C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_226D6F2FC();

        sub_226D6E42C();
        v15 = sub_226D6F35C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_226D53200(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_226D6ED7C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v33 = v4;
      v34 = v3;
      v31 = (v8 + 1) & v7;
      v32 = v7;
      while (1)
      {
        v35 = v2;
        v12 = 56 * v6;
        v13 = *(v3 + 40);
        v14 = *(v3 + 48) + 56 * v6;
        v15 = *v14;
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        v18 = *(v14 + 24);
        v20 = *(v14 + 32);
        v19 = *(v14 + 40);
        v21 = *(v14 + 48);
        sub_226D6F2FC();
        if (!v21)
        {
          break;
        }

        if (v21 == 1)
        {
          v22 = 1;
LABEL_10:
          MEMORY[0x22AA8B3B0](v22);

          sub_226D6E42C();
          goto LABEL_12;
        }

        MEMORY[0x22AA8B3B0](2);

        sub_226D6E42C();
        sub_226D6E42C();
LABEL_12:
        sub_226D6E42C();
        v23 = sub_226D6F35C();
        sub_226AE5134(v15, v16, v17, v18, v20, v19, v21);
        v24 = v23 & v32;
        v2 = v35;
        if (v35 >= v31)
        {
          v4 = v33;
          v3 = v34;
          if (v24 < v31)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v4 = v33;
          v3 = v34;
          if (v24 >= v31)
          {
            goto LABEL_17;
          }
        }

        if (v35 >= v24)
        {
LABEL_17:
          v25 = *(v3 + 48);
          v26 = v25 + 56 * v35;
          v27 = (v25 + v12);
          if (56 * v35 < v12 || v26 >= v27 + 56 || v35 != v6)
          {
            v9 = *v27;
            v10 = v27[1];
            v11 = v27[2];
            *(v26 + 48) = *(v27 + 6);
            *(v26 + 16) = v10;
            *(v26 + 32) = v11;
            *v26 = v9;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v32;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v22 = 0;
      goto LABEL_10;
    }

LABEL_21:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v28 = *(v3 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v30;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_226D534BC(int64_t a1)
{
  v3 = sub_226D6D52C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_226D6ED7C();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_226D58848(&qword_281062B60, MEMORY[0x277CC95F0]);
        v27 = sub_226D6E2FC();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_226D537C4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_226D6ED7C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_226D6EC2C();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_226D53964(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_226D6ED7C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        sub_226AE4FD4(*(v3 + 48) + 40 * v6, v24);
        v13 = *(v3 + 40);
        v14 = sub_226D6EE6C();
        sub_226AE5030(v24);
        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 >= v10 && v2 >= v15)
          {
LABEL_16:
            v18 = *(v3 + 48);
            v19 = v18 + 40 * v2;
            v20 = (v18 + 40 * v6);
            if (v2 != v6 || v19 >= v20 + 40)
            {
              v11 = *v20;
              v12 = v20[1];
              *(v19 + 32) = *(v20 + 4);
              *v19 = v11;
              *(v19 + 16) = v12;
              v2 = v6;
            }
          }
        }

        else if (v15 >= v10 || v2 >= v15)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_226D53B1C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_226D6D52C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_226AC47B0(v6, &qword_27D7A6D68, &qword_226D75210))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_226D5540C(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226D53D38(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_226D556B4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_226D53E64(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_226AC47B0(v11, &qword_27D7A9638, &qword_226D7E578))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_226AE4FD4(*(v2 + 48) + 40 * (v10 | (v9 << 6)), v12);
      sub_226D55988(v12, v11);
      sub_226AE5030(v12);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226D53F8C(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v69 - v10);
  v12 = sub_226D6D52C();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v69 - v17);
  MEMORY[0x28223BE20](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_226AC47B0(v32, &qword_27D7A6D68, &qword_226D75210);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_226D58848(&qword_281062B60, MEMORY[0x277CC95F0]);
    v35 = sub_226D6E2FC();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_226D58848(&qword_27D7A6DA0, MEMORY[0x277CC95F0]);
    v39 = sub_226D6E35C();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x28223BE20](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_226AC47B0(v26, &qword_27D7A6D68, &qword_226D75210);
        a2 = sub_226D563B0(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_226D6E2FC();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_226D6E35C();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_226D6E35C();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_226D55AC0(v68, v69, v84, v26, &v93);

  MEMORY[0x22AA8BEE0](v68, -1, -1);
LABEL_52:
  sub_226AD3C20();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_226D549F0(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_226D6F2FC();

    sub_226D6E42C();
    v24 = sub_226D6F35C();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_226D6F21C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_226D566D8(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_226D6F2FC();

            sub_226D6E42C();
            v43 = sub_226D6F35C();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_226D6F21C() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_226D55F94(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x22AA8BEE0](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_226AD3C20();
    goto LABEL_53;
  }

  result = MEMORY[0x22AA8BEE0](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_226D54F60(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v60[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x277D84FA0];
    goto LABEL_43;
  }

  v60[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v51 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v56 = v4;
  v57 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v54 = v5 + 1;
    v11 = *(v2 + 40);
    sub_226D6F2FC();

    sub_226D6E42C();
    v12 = sub_226D6F35C();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v54;
    if (v54 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((sub_226D6F21C() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v57;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v60[1] = v54;

  v22 = *(v2 + 32);
  v52 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v52;
  v24 = v57;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v45 = v23;

  v46 = v45;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v53 = &v50;
    MEMORY[0x28223BE20](v21);
    v14 = &v50 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v59 = v7;
    memcpy(v14, v7, v25);
    v58 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v55 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v56;
    v7 = *(v56 + 16);
    v30 = v54;
    while (1)
    {
      v54 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_226D566D8(v55, v52, v54, v58);
LABEL_42:

LABEL_43:
        v43 = *MEMORY[0x277D85DE8];
        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v58;
        v34 = *(v58 + 40);
        sub_226D6F2FC();

        sub_226D6E42C();
        v35 = sub_226D6F35C();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v59[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v57;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((sub_226D6F21C() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v59[v37 >> 6]) == 0)
          {
            v29 = v56;
            goto LABEL_37;
          }

          v42 = (*(v58 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v56;
      v31 = v55[v14];
      v55[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v54 - 1;
      v24 = v57;
      if (__OFSUB__(v54, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v54 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v7, v46);
  v48 = v51;
  v49 = sub_226D561CC(v47, v52, v2, v14, v60);

  if (!v48)
  {

    MEMORY[0x22AA8BEE0](v47, -1, -1);

    v2 = v49;
    goto LABEL_43;
  }

  result = MEMORY[0x22AA8BEE0](v47, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_226D5540C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226D58848(&qword_281062B60, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_226D6E2FC();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_226D58848(&qword_27D7A6DA0, MEMORY[0x277CC95F0]);
      v22 = sub_226D6E35C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_226C2CD18();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_226D534BC(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_226D556B4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_226D6F2FC();
  sub_226D6E42C();
  v7 = sub_226D6F35C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_226D6F21C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_226C2CBBC();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_226D5303C(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_226D557F0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_226D6EE3C();

    if (v7)
    {
      v8 = sub_226D52ED4();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v11 = *(v3 + 40);
  v12 = sub_226D6EC2C();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_226D6EC3C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_226C2D0C4();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_226D537C4(v14);
  result = v21;
  *v10 = v22;
  return result;
}

unint64_t sub_226D55988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  result = sub_226D6EE6C();
  v9 = -1 << *(v6 + 32);
  v10 = result & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_226AE4FD4(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x22AA8AF20](v18, a1);
      result = sub_226AE5030(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v18[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_226C2D218();
      v15 = v18[0];
    }

    v16 = *(v15 + 48) + 40 * v10;
    v17 = *(v16 + 16);
    *a2 = *v16;
    *(a2 + 16) = v17;
    *(a2 + 32) = *(v16 + 32);
    result = sub_226D53964(v10);
    *v3 = v18[0];
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_226D55AC0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_226D6D52C();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_226AC47B0(v12, &qword_27D7A6D68, &qword_226D75210);
          v48 = v64;

          return sub_226D563B0(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_226D58848(&qword_281062B60, MEMORY[0x277CC95F0]);
        v38 = sub_226D6E2FC();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_226D58848(&qword_27D7A6DA0, MEMORY[0x277CC95F0]);
        v46 = sub_226D6E35C();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_226D55F94(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_226D566D8(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_226D6F2FC();

        sub_226D6E42C();
        v20 = sub_226D6F35C();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_226D6F21C() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_226D561CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_226D566D8(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        sub_226D6F2FC();

        sub_226D6E42C();
        v17 = sub_226D6F35C();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((sub_226D6F21C() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_226D563B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_226D6D52C();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9620, &unk_226D77DD8);
  result = sub_226D6EECC();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226D58848(&qword_281062B60, MEMORY[0x277CC95F0]);
    result = sub_226D6E2FC();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_226D566D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6280, &unk_226D70CC0);
  result = sub_226D6EECC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_226D6F2FC();

    sub_226D6E42C();
    result = sub_226D6F35C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_226D56924(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_226D6EECC();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_226D6EC2C();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_226D56B10(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_226D6F04C() == *(a4 + 36))
    {
      sub_226D6F05C();
      sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
      swift_dynamicCast();
      sub_226C3015C(v8);
      v6 = v5;

      if (v6)
      {
        sub_226D6F02C();
        sub_226D6F07C();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_226D6ED8C();
  v7 = *(a4 + 36);
}

void sub_226D56C74(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_226D6F01C();
      sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_226D6F04C() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_226D6F05C();
  sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  swift_dynamicCast();
  v5 = sub_226C3015C(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

id _s13FinanceDaemon23WalletMessagingProviderC04makeE0ACyFZ_0()
{
  v11[3] = sub_226D6B5EC();
  v11[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_226D6B5AC();
  v0 = sub_226D6704C();
  v1 = sub_226D69BFC();
  v2 = MEMORY[0x22AA85C90]();
  v10[3] = v1;
  v10[4] = MEMORY[0x277CC79A8];
  v10[0] = v2;
  v3 = type metadata accessor for WalletMessagingProvider();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_messageSink] = 0;
  *&v4[OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore] = 0;
  sub_226AE532C(v11, &v4[OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_userDefaults]);
  v5 = &v4[OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_deviceInfo];
  v6 = MEMORY[0x277CC6A68];
  *v5 = v0;
  v5[1] = v6;
  sub_226AE532C(v10, &v4[OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_imageProcessingService]);
  v9.receiver = v4;
  v9.super_class = v3;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

uint64_t sub_226D56F30@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_226D4FFB4(*(v1 + 24), a1);
}

void *sub_226D56F50()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore;
  if (*(v0 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore);
  }

  else
  {
    sub_226D67F5C();
    sub_226D67F3C();
    v7 = sub_226D67F4C();

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
  }

  v3 = sub_226D676AC();

  MEMORY[0x28223BE20](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A9650, &unk_226D7E580);
  sub_226D6EB8C();
  if (v9)
  {
    v5 = v9;

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_226D571F4(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = sub_226D6D1AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 persistentStoreCoordinator];
  if (v14)
  {
    v15 = v14;
    v16 = [a1 key];
    v17 = [v16 identifier];

    sub_226D6E39C();
    sub_226D6D18C();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      sub_226AC47B0(v7, &unk_27D7A62F8, &unk_226D73B70);
    }

    else
    {
      (*(v9 + 32))(v13, v7, v8);
      v18 = sub_226D6D0DC();
      v19 = [v15 managedObjectIDForURIRepresentation_];

      if (v19)
      {
        sub_226D691CC();
        v32 = sub_226D691AC();
        (*(v9 + 8))(v13, v8);

        return v32;
      }

      (*(v9 + 8))(v13, v8);
    }
  }

  if (qword_28105F6C0 != -1)
  {
    swift_once();
  }

  v20 = sub_226D6E07C();
  __swift_project_value_buffer(v20, qword_28105F6C8);
  v21 = a1;
  v22 = sub_226D6E05C();
  v23 = sub_226D6E9CC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136315138;
    v26 = [v21 key];
    v27 = [v26 identifier];

    v28 = sub_226D6E39C();
    v30 = v29;

    v31 = sub_226AC4530(v28, v30, &v35);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_226AB4000, v22, v23, "Could not create ObjectID from %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x22AA8BEE0](v25, -1, -1);
    MEMORY[0x22AA8BEE0](v24, -1, -1);
  }

  return 0;
}

id sub_226D57788()
{
  v0 = sub_226D6913C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v5 = sub_226D6E36C();
  v6 = *MEMORY[0x277CC77B0];
  v7 = v1[13];
  v7(v4, v6, v0);
  sub_226D6811C();
  v8 = v1[1];
  v8(v4, v0);
  v9 = sub_226D6E36C();

  v7(v4, v6, v0);
  sub_226D6811C();
  v8(v4, v0);
  v10 = sub_226D6E36C();

  v11 = [v14 createForIdentifier:v5 withSingularSummary:v9 pluralSummary:v10];

  return v11;
}

id sub_226D5799C(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6913C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_opt_self();
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000037, 0x8000000226D88D10);
  MEMORY[0x22AA8A510](a1, a2);
  v17 = sub_226D6E36C();

  v9 = *MEMORY[0x277CC77B0];
  v10 = v5[13];
  v10(v8, v9, v4);
  sub_226D6811C();
  v11 = v5[1];
  v11(v8, v4);
  v12 = sub_226D6E36C();

  v10(v8, v9, v4);
  sub_226D6811C();
  v11(v8, v4);
  v13 = sub_226D6E36C();

  v14 = v17;
  v15 = [v18 createForIdentifier:v17 withSingularSummary:v12 pluralSummary:v13];

  return v15;
}

uint64_t sub_226D57BE4(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a3;
  v50 = a2;
  v44 = a1;
  v3 = sub_226D6809C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6804C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_226D6802C();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D6806C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_226D680AC();
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_226D6D5BC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_226D6D5DC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D56C();
  sub_226D6D5CC();
  v28 = v23;
  v29 = v50;
  (*(v24 + 8))(v27, v28);
  sub_226D6D5AC();
  (*(v19 + 8))(v22, v18);
  sub_226D6805C();
  (*(v9 + 104))(v47, *MEMORY[0x277CC7128], v48);
  sub_226D6803C();
  sub_226D6808C();
  sub_226D6807C();
  result = GSMainScreenScaleFactor();
  if ((LODWORD(v31) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v31 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v31 < 9.2234e18)
  {
    v32 = v31;
    v33 = v46;
    v34 = sub_226D6B21C();
    if (v33)
    {
      (*(v42 + 8))(v17, v43);
      return v29;
    }

    if (v35 >> 60 == 15)
    {
      (*(v42 + 8))(v17, v43);
    }

    else
    {
      v36 = v34;
      v37 = v35;
      v38 = objc_allocWithZone(MEMORY[0x277D37F10]);
      sub_226B11B44(v36, v37);
      v39 = sub_226D6D1FC();
      sub_226B3FAEC(v36, v37);
      v40 = [v38 initWithData:v39 scale:v32];

      sub_226B3FAEC(v36, v37);
      (*(v42 + 8))(v17, v43);
      if (v40)
      {
        v41 = [objc_opt_self() createForImage:v40 withTintColor:0];
        v29 = [objc_opt_self() createWithImage:v41 style:0];

        return v29;
      }
    }

    return 0;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_226D58158()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore;
  if (*(v0 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13FinanceDaemon23WalletMessagingProvider_coreDataStore);
  }

  else
  {
    sub_226D67F5C();
    sub_226D67F3C();
    v5 = sub_226D67F4C();

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
  }

  v3 = sub_226D676AC();

  MEMORY[0x28223BE20](v4);
  sub_226D6EB7C();
}

uint64_t sub_226D58408()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226AD827C;

  return sub_226D4F98C(v2, v3);
}

uint64_t sub_226D584B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_226AE5A84;

  return sub_226D527BC(v2, v3, v5);
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226D585B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AE5A84;

  return sub_226D528A4(a1, v4, v5, v7);
}

uint64_t sub_226D58680(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226C9ACEC(a1, v5);
}

uint64_t sub_226D58738(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226C9ACEC(a1, v5);
}

unint64_t sub_226D58830(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_226D58848(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226D58890(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_226D6D1AC();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94D0, &qword_226D7DAE0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v9 = type metadata accessor for BusinessConnectProvider.EmailItem(0);
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A94C0, &qword_226D7DAC8) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D58A70, 0, 0);
}

uint64_t sub_226D58A70()
{
  v34 = v0;
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 56);
  v4 = sub_226D676AC();
  v0[16] = v4;
  v5 = objc_allocWithZone(MEMORY[0x277D07080]);
  v6 = sub_226D6E36C();
  v7 = [v5 initWithString_];
  v0[17] = v7;

  if (v7)
  {
    v8 = [v7 domain];
    if (v8)
    {
      v9 = v0[4];
      v10 = v8;
      v11 = sub_226D6E39C();
      v13 = v12;

      v0[18] = v11;
      v0[19] = v13;
      v0[20] = *(v9 + 552);
      v14 = swift_task_alloc();
      v0[21] = v14;
      *v14 = v0;
      v14[1] = sub_226D58D68;
      v15 = v0[15];

      return sub_226D37EFC(v15, v7);
    }
  }

  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v17 = v0[3];
  v18 = sub_226D6E07C();
  __swift_project_value_buffer(v18, qword_28105F6A8);

  v19 = sub_226D6E05C();
  v20 = sub_226D6E9CC();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = v0[2];
    v21 = v0[3];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_226AC4530(v22, v21, &v33);
    _os_log_impl(&dword_226AB4000, v19, v20, "Failed to create ECEmailAddress from %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x22AA8BEE0](v24, -1, -1);
    MEMORY[0x22AA8BEE0](v23, -1, -1);
  }

  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[13];
  v29 = v0[9];
  v28 = v0[10];
  v30 = v0[8];
  v31 = v0[5];

  v32 = v0[1];

  return v32(0, 0xF000000000000000);
}

uint64_t sub_226D58D68()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);

    v5 = sub_226D59A38;
  }

  else
  {
    v5 = sub_226D58E84;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D58E84()
{
  v39 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  sub_226AC40E8(v0[15], v1, &qword_27D7A94C0, &qword_226D7DAC8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[14];
  if (v4 == 1)
  {
    v6 = v0[19];

    sub_226AC47B0(v5, &qword_27D7A94C0, &qword_226D7DAC8);
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v7 = v0[3];
    v8 = sub_226D6E07C();
    __swift_project_value_buffer(v8, qword_28105F6A8);

    v9 = sub_226D6E05C();
    v10 = sub_226D6E9EC();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[16];
    v13 = v0[17];
    v14 = v0[15];
    if (v11)
    {
      v16 = v0[2];
      v15 = v0[3];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v38 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_226AC4530(v16, v15, &v38);
      _os_log_impl(&dword_226AB4000, v9, v10, "No business connect item available for %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
    }

    sub_226AC47B0(v14, &qword_27D7A94C0, &qword_226D7DAC8);
    v20 = v0[14];
    v19 = v0[15];
    v21 = v0[13];
    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[8];
    v25 = v0[5];

    v26 = v0[1];

    return v26(0, 0xF000000000000000);
  }

  else
  {
    v28 = v0[20];
    v29 = v0[13];
    sub_226D5BD48(v0[14], v29);
    __swift_project_boxed_opaque_existential_1((v28 + 16), *(v28 + 40));
    v31 = *(v29 + 16);
    v30 = *(v29 + 24);
    v32 = off_283A72870;
    Service = type metadata accessor for BusinessQueryService();
    v37 = (v32 + *v32);
    v34 = v32[1];
    v35 = swift_task_alloc();
    v0[23] = v35;
    *v35 = v0;
    v35[1] = sub_226D59234;
    v36 = v0[10];

    return (v37)(v36, v31, v30, Service, &off_283A72868);
  }
}

uint64_t sub_226D59234()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);

    v5 = sub_226D59934;
  }

  else
  {
    v5 = sub_226D59350;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226D59350()
{
  v68 = v0;
  v1 = *(v0 + 72);
  sub_226AC40E8(*(v0 + 80), v1, &qword_27D7A94D0, &qword_226D7DAE0);
  v2 = type metadata accessor for BusinessConnectProvider.BusinessLogo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);
    sub_226AC47B0(*(v0 + 80), &qword_27D7A94D0, &qword_226D7DAE0);
    sub_226AC47B0(v3, &qword_27D7A94D0, &qword_226D7DAE0);
    (*(v5 + 56))(v6, 1, 1, v4);
LABEL_5:
    v11 = *(v0 + 152);
    sub_226AC47B0(*(v0 + 40), &unk_27D7A62F8, &unk_226D73B70);

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 24);
    v13 = sub_226D6E07C();
    __swift_project_value_buffer(v13, qword_28105F6A8);

    v14 = sub_226D6E05C();
    v15 = sub_226D6E9EC();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    v19 = *(v0 + 120);
    if (v16)
    {
      v21 = *(v0 + 16);
      v20 = *(v0 + 24);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v67 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_226AC4530(v21, v20, &v67);
      _os_log_impl(&dword_226AB4000, v14, v15, "No icon available for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x22AA8BEE0](v23, -1, -1);
      MEMORY[0x22AA8BEE0](v22, -1, -1);
    }

    sub_226AC47B0(v19, &qword_27D7A94C0, &qword_226D7DAC8);
    v24 = 0;
    v25 = *(v0 + 104);
    v26 = 0xF000000000000000;
    goto LABEL_10;
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  sub_226AC40E8(v7 + *(v2 + 20), v10, &unk_27D7A62F8, &unk_226D73B70);
  sub_226D5BDAC(v7, type metadata accessor for BusinessConnectProvider.BusinessLogo);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_226AC47B0(*(v0 + 80), &qword_27D7A94D0, &qword_226D7DAE0);
    goto LABEL_5;
  }

  v36 = *(v0 + 192);
  (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
  v37 = sub_226D6D1BC();
  v39 = *(v0 + 152);
  if (!v36)
  {
    v24 = v37;
    v26 = v38;
    v48 = *(v0 + 144);
    v49 = *(v0 + 128);
    v65 = *(v0 + 120);
    v66 = *(v0 + 136);
    v50 = *(v0 + 104);
    v51 = *(v0 + 80);
    v52 = *(v0 + 32);
    v64 = *(v0 + 16);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_226AC47B0(v51, &qword_27D7A94D0, &qword_226D7DAE0);
    v53 = *(v52 + 64);
    v54 = swift_task_alloc();
    *(v54 + 16) = v49;
    *(v54 + 24) = v48;
    *(v54 + 32) = v39;
    *(v54 + 40) = v64;
    *(v54 + 56) = v50;
    *(v54 + 64) = v24;
    *(v54 + 72) = v26;
    sub_226D6EA6C();
    sub_226AC47B0(v65, &qword_27D7A94C0, &qword_226D7DAC8);

    v55 = *(v0 + 104);

    v25 = v55;
LABEL_10:
    sub_226D5BDAC(v25, type metadata accessor for BusinessConnectProvider.EmailItem);
    v28 = *(v0 + 112);
    v27 = *(v0 + 120);
    v29 = *(v0 + 104);
    v31 = *(v0 + 72);
    v30 = *(v0 + 80);
    v32 = *(v0 + 64);
    v33 = *(v0 + 40);

    v34 = *(v0 + 8);

    return v34(v24, v26);
  }

  v40 = *(v0 + 80);
  v42 = *(v0 + 56);
  v41 = *(v0 + 64);
  v43 = *(v0 + 48);
  v44 = *(v0 + 152);

  (*(v42 + 8))(v41, v43);
  sub_226AC47B0(v40, &qword_27D7A94D0, &qword_226D7DAE0);
  v45 = *(v0 + 128);
  v46 = *(v0 + 120);
  v47 = *(v0 + 104);

  sub_226AC47B0(v46, &qword_27D7A94C0, &qword_226D7DAC8);
  sub_226D5BDAC(v47, type metadata accessor for BusinessConnectProvider.EmailItem);
  v57 = *(v0 + 112);
  v56 = *(v0 + 120);
  v58 = *(v0 + 104);
  v60 = *(v0 + 72);
  v59 = *(v0 + 80);
  v61 = *(v0 + 64);
  v62 = *(v0 + 40);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_226D59934()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 128);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);

  sub_226AC47B0(v3, &qword_27D7A94C0, &qword_226D7DAC8);
  sub_226D5BDAC(v4, type metadata accessor for BusinessConnectProvider.EmailItem);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 104);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);
  v11 = *(v0 + 40);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_226D59A38()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 176);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 64);
  v9 = *(v0 + 40);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_226D59B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_226D59B28, 0, 0);
}

uint64_t sub_226D59B28()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v12 = *(v0 + 24);
  v4 = *(v1 + 56);
  v5 = sub_226D676AC();
  *(v0 + 72) = v5;
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v12;
  *(v6 + 40) = v3;
  *(v6 + 48) = v2;
  *(v6 + 56) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
  sub_226D6EB8C();

  v7 = *(v0 + 16);
  *(v0 + 80) = v7;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_226D59CA8;
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);

  return sub_226D5A238(v7, v9);
}

uint64_t sub_226D59CA8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_226D59E44;
  }

  else
  {
    v8 = *(v4 + 80);

    *(v4 + 104) = a1 & 1;
    v7 = sub_226D59DDC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226D59DDC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_226D59E44()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[12];
  v4 = v0[1];

  return v4(0);
}

uint64_t sub_226D59EB0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_226D59ED4, 0, 0);
}

uint64_t sub_226D59ED4()
{
  v1 = v0[3];
  v2 = *(v0[5] + 56);
  v3 = sub_226D676AC();
  v0[6] = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
  sub_226D6EB8C();

  v5 = v0[2];
  v0[7] = v5;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_226D5A030;
  v7 = v0[4];
  v8 = v0[5];

  return sub_226D5A238(v5, v7);
}

uint64_t sub_226D5A030(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_226D5A1CC;
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 80) = a1 & 1;
    v7 = sub_226D5A164;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226D5A164()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_226D5A1CC()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[9];
  v4 = v0[1];

  return v4(0);
}

uint64_t sub_226D5A238(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return MEMORY[0x2822009F8](sub_226D5A25C, 0, 0);
}

uint64_t sub_226D5A25C()
{
  v1 = v0[15];
  sub_226AE532C(v1 + 464, (v0 + 8));
  sub_226D5BEC8((v0 + 8), (v0 + 2));
  v0[7] = *(v1 + 56);

  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_226D5A334;
  v3 = v0[13];
  v4 = v0[14];

  return sub_226C1527C(v4, v3);
}

uint64_t sub_226D5A334(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_226D5A4D0;
  }

  else
  {
    *(v4 + 144) = a1 & 1;
    v7 = sub_226D5A460;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226D5A460()
{
  sub_226C17BCC(v0 + 16);
  sub_226D5BF24(v0 + 64);
  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_226D5A4D0()
{
  sub_226C17BCC(v0 + 16);
  sub_226D5BF24(v0 + 64);
  v1 = *(v0 + 8);
  v2 = *(v0 + 136);

  return v1(0);
}

void sub_226D5A598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_226D67B3C();
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v12 = sub_226D6E07C();
  v13 = __swift_project_value_buffer(v12, qword_28105F5E0);

  v14 = sub_226D6E05C();
  v15 = sub_226D6E9EC();

  if (os_log_type_enabled(v14, v15))
  {
    v53 = v15;
    v16 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v61 = v52;
    v54 = v16;
    *v16 = 136315394;
    v17 = *(a1 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v46 = v14;
      v47 = v13;
      v48 = a3;
      v49 = a2;
      v51 = v3;
      v60 = MEMORY[0x277D84F90];
      sub_226AE1D68(0, v17, 0);
      v18 = v60;
      v19 = *(v59 + 16);
      v20 = *(v59 + 80);
      v50 = a1;
      v21 = a1 + ((v20 + 32) & ~v20);
      v55 = *(v59 + 72);
      v56 = v19;
      v59 += 16;
      v22 = (v59 - 8);
      do
      {
        v23 = v57;
        v24 = v58;
        v56(v57, v21, v58);
        v25 = sub_226D67B2C();
        v27 = v26;
        (*v22)(v23, v24);
        v60 = v18;
        v29 = *(v18 + 16);
        v28 = *(v18 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_226AE1D68((v28 > 1), v29 + 1, 1);
          v18 = v60;
        }

        *(v18 + 16) = v29 + 1;
        v30 = v18 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v21 += v55;
        --v17;
      }

      while (v17);
      a1 = v50;
      v4 = v51;
      a3 = v48;
      a2 = v49;
      v14 = v46;
    }

    v31 = MEMORY[0x22AA8A6A0](v18, MEMORY[0x277D837D0]);
    v33 = v32;

    v34 = sub_226AC4530(v31, v33, &v61);

    v35 = v54;
    *(v54 + 1) = v34;
    *(v35 + 6) = 2080;
    sub_226D6D52C();
    sub_226D5C68C(&qword_281062B60, MEMORY[0x277CC95F0]);
    v36 = sub_226D6E8AC();
    v38 = sub_226AC4530(v36, v37, &v61);

    *(v35 + 14) = v38;
    _os_log_impl(&dword_226AB4000, v14, v53, "Saving Mail Items with IDs: %s, %s", v35, 0x16u);
    v39 = v52;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v39, -1, -1);
    MEMORY[0x22AA8BEE0](v35, -1, -1);
  }

  v40 = *(a3 + 56);
  v41 = sub_226D676AC();
  *(&v45 - 4) = MEMORY[0x28223BE20](v41);
  *(&v45 - 3) = a2;
  *(&v45 - 2) = a1;
  sub_226D6EB7C();
  if (v4)
  {
  }

  else
  {
    v42 = sub_226D6E05C();
    v43 = sub_226D6E9EC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_226AB4000, v42, v43, "Saved Mail Items.", v44, 2u);
      MEMORY[0x22AA8BEE0](v44, -1, -1);
    }
  }
}

uint64_t sub_226D5AA64(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a2;
  v77[1] = *MEMORY[0x277D85DE8];
  v7 = sub_226D6D52C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v76 = v59 - v14;
  MEMORY[0x28223BE20](v13);
  v72 = v59 - v15;
  v16 = [objc_opt_self() currentQueryGenerationToken];
  v77[0] = 0;
  v17 = [a1 setQueryGenerationFromToken:v16 error:v77];

  v18 = v77[0];
  if (!v17)
  {
    v54 = v77[0];
    sub_226D6D04C();

    result = swift_willThrow();
    goto LABEL_24;
  }

  v66 = v12;
  v71 = a1;
  v59[1] = a3;
  v19 = sub_226D6C6DC();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = v18;
  v61 = sub_226D6C6CC();
  v23 = v74 + 56;
  v24 = 1 << *(v74 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v74 + 56);
  v27 = (v24 + 63) >> 6;
  v75 = v8 + 16;
  v68 = v8 + 32;
  v28 = (v8 + 8);

  v29 = 0;
  *&v30 = 136315138;
  v60 = v30;
  v67 = v27;
  v69 = v8;
  v70 = v7;
  v65 = (v8 + 8);
  if (v26)
  {
LABEL_9:
    while (1)
    {
      v32 = *(v8 + 16);
      v33 = v72;
      v32(v72, *(v74 + 48) + *(v8 + 72) * (__clz(__rbit64(v26)) | (v29 << 6)), v7);
      v34 = (*(v8 + 32))(v76, v33, v7);
      v73 = MEMORY[0x22AA8B6A0](v34);
      sub_226D6AC0C();
      v35 = sub_226D6AABC();
      if (v4)
      {
        break;
      }

      v51 = v35;
      if (!v35)
      {
        goto LABEL_11;
      }

      v52 = v71;
      sub_226D6C6BC();
      v8 = v69;
      v77[0] = 0;
      if (![v52 save_])
      {
        v57 = v77[0];
        sub_226D6D04C();

        swift_willThrow();
        v58 = v73;

        objc_autoreleasePoolPop(v58);

        result = (*v28)(v76, v70);
        goto LABEL_24;
      }

      v53 = v77[0];

      v7 = v70;
LABEL_20:
      v26 &= v26 - 1;
      objc_autoreleasePoolPop(v73);
      (*v28)(v76, v7);
      v27 = v67;
      if (!v26)
      {
        goto LABEL_5;
      }
    }

    v4 = 0;
LABEL_11:
    v36 = v70;
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v37 = sub_226D6E07C();
    __swift_project_value_buffer(v37, qword_28105F600);
    v38 = v66;
    v32(v66, v76, v36);
    v39 = sub_226D6E05C();
    v40 = sub_226D6E9CC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v62 = v41;
      v63 = swift_slowAlloc();
      v77[0] = v63;
      *v41 = v60;
      sub_226D5C68C(&qword_27D7A6648, MEMORY[0x277CC95F0]);
      v42 = sub_226D6F1CC();
      v64 = 0;
      v44 = v43;
      v45 = v38;
      v28 = v65;
      (*v65)(v45, v36);
      v46 = sub_226AC4530(v42, v44, v77);
      v4 = v64;

      v47 = v62;
      *(v62 + 1) = v46;
      v48 = v47;
      _os_log_impl(&dword_226AB4000, v39, v40, "Failed to insert or update Mail Items. Transaction with %s doesn't exist.", v47, 0xCu);
      v49 = v63;
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x22AA8BEE0](v49, -1, -1);
      MEMORY[0x22AA8BEE0](v48, -1, -1);
    }

    else
    {

      v50 = v38;
      v28 = v65;
      (*v65)(v50, v36);
    }

    v7 = v36;
    v8 = v69;
    goto LABEL_20;
  }

  while (1)
  {
LABEL_5:
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
    }

    if (v31 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v31);
    ++v29;
    if (v26)
    {
      v29 = v31;
      goto LABEL_9;
    }
  }

LABEL_24:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_226D5B054(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v54 = a7;
  v55 = a8;
  v57 = a6;
  v58 = a4;
  v59 = a5;
  v60[1] = *MEMORY[0x277D85DE8];
  v12 = sub_226D6D4AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() currentQueryGenerationToken];
  v60[0] = 0;
  v18 = [a1 setQueryGenerationFromToken:v17 error:v60];

  v19 = v60[0];
  if (!v18)
  {
    v25 = v60[0];
    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_6;
  }

  v52 = v13;
  v53 = v12;
  sub_226D69D3C();
  v20 = v19;
  v21 = sub_226D69D1C();
  sub_226B2A4F4();
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_226D70840;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_226B16404();
  *(v22 + 32) = a2;
  *(v22 + 40) = a3;

  v23 = sub_226D6E91C();
  [v21 setPredicate_];

  v24 = sub_226D6EBBC();
  if (v8)
  {

    goto LABEL_6;
  }

  v26 = v24;
  sub_226D6990C();
  v27 = sub_226D6983C();
  v58 = v21;
  v59 = v27;
  v29 = v57[2];
  v28 = v57[3];
  v31 = *v57;
  v30 = v57[1];
  sub_226D6AF2C();
  v32 = sub_226D6AF1C();
  v34 = v32;
  if (!v32)
  {
    v35 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v34 = [v35 initWithContext_];
    v36 = sub_226D6E36C();
    [v34 setBusinessID_];

    v37 = sub_226D6E36C();
    [v34 setCompanyID_];
  }

  v38 = v53;
  v39 = sub_226D6D1FC();
  [v34 setLogo_];

  sub_226D6D46C();
  v40 = sub_226D6D3EC();
  (*(v52 + 8))(v16, v38);
  [v34 setLastUpdatedAt_];

  v41 = v59;
  if (v26 >> 62)
  {
    v42 = sub_226D6EDFC();
    if (!v42)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v42 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v42)
    {
      goto LABEL_18;
    }
  }

  if (v42 < 1)
  {
    __break(1u);
    goto LABEL_32;
  }

  for (i = 0; i != v42; ++i)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x22AA8AFD0](i, v26);
    }

    else
    {
      v44 = *(v26 + 8 * i + 32);
    }

    v45 = v44;
    [v44 setBusinessConnectBrandObject_];
  }

LABEL_18:

  if (v41 >> 62)
  {
    v46 = sub_226D6EDFC();
    if (v46)
    {
LABEL_20:
      if (v46 >= 1)
      {
        for (j = 0; j != v46; ++j)
        {
          if ((v41 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x22AA8AFD0](j, v41);
          }

          else
          {
            v48 = *(v41 + 8 * j + 32);
          }

          v49 = v48;
          [v48 setBusinessConnectBrandObject_];
        }

        goto LABEL_27;
      }

LABEL_32:
      __break(1u);
    }
  }

  else
  {
    v46 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_20;
    }
  }

LABEL_27:

  v60[0] = 0;
  if ([v56 save_])
  {
    v50 = v60[0];
  }

  else
  {
    v51 = v60[0];
    sub_226D6D04C();

    swift_willThrow();
  }

LABEL_6:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_226D5B5A8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X8>)
{
  v7 = v6;
  if (qword_27D7A5F58 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6E07C();
  __swift_project_value_buffer(v13, qword_27D7A7CF8);
  v14 = sub_226D6E05C();
  v15 = sub_226D6E9EC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_226AB4000, v14, v15, "Pruning deleted extracted order emails", v16, 2u);
    v17 = v16;
    v7 = v6;
    MEMORY[0x22AA8BEE0](v17, -1, -1);
  }

  v18 = sub_226D5BF78(a1, a2, a3, a4, a5);
  if (!v7)
  {
    if (!v18)
    {
      v33 = sub_226D6E05C();
      v34 = sub_226D6E9EC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_226AB4000, v33, v34, "Transaction has no FoundIn insight", v35, 2u);
        MEMORY[0x22AA8BEE0](v35, -1, -1);
      }

      v36 = MEMORY[0x277D84FA0];
      goto LABEL_24;
    }

    v37 = v18;
    v19 = sub_226D6BBEC();
    v20 = v19;
    if (v19 >> 62)
    {
      v21 = sub_226D6EDFC();
      if (v21)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
LABEL_9:
        v39 = MEMORY[0x277D84F90];
        sub_226AE1D68(0, v21 & ~(v21 >> 63), 0);
        if (v21 < 0)
        {
          __break(1u);
          return;
        }

        v22 = 0;
        v23 = v39;
        do
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x22AA8AFD0](v22, v20);
          }

          else
          {
            v24 = *(v20 + 8 * v22 + 32);
          }

          v25 = v24;
          v26 = [v25 messageID];
          v27 = sub_226D6E39C();
          v29 = v28;

          v31 = *(v39 + 16);
          v30 = *(v39 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_226AE1D68((v30 > 1), v31 + 1, 1);
          }

          ++v22;
          *(v39 + 16) = v31 + 1;
          v32 = v39 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
        }

        while (v21 != v22);

        goto LABEL_23;
      }
    }

    v23 = MEMORY[0x277D84F90];
LABEL_23:
    v36 = sub_226AE3C28(v23);

LABEL_24:
    *a6 = v36;
  }
}

uint64_t sub_226D5B8EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (qword_27D7A5F58 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v3 = sub_226D6E07C();
    __swift_project_value_buffer(v3, qword_27D7A7CF8);
    v4 = sub_226D6E05C();
    v5 = sub_226D6E9EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_226AB4000, v4, v5, "Pruning deleted extracted order emails", v6, 2u);
      MEMORY[0x22AA8BEE0](v6, -1, -1);
    }

    sub_226D6BBFC();

    sub_226AE45DC(v7);

    v8 = sub_226D6BBDC();

    if (v2)
    {
      return result;
    }

    if (v8 >> 62)
    {
      v2 = sub_226D6EDFC();
    }

    else
    {
      v2 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = MEMORY[0x277D84F90];
    if (!v2)
    {
      v12 = MEMORY[0x277D84F90];
LABEL_43:

      v35 = sub_226AE3C28(v12);

      *a1 = v35;
      return result;
    }

    v11 = 0;
    v40 = v8 & 0xFFFFFFFFFFFFFF8;
    v41 = v8 & 0xC000000000000001;
    v38 = v2;
    v39 = v8 + 32;
    v12 = MEMORY[0x277D84F90];
    v37 = v8;
    while (v41)
    {
      v13 = MEMORY[0x22AA8AFD0](v11, v8);
      v14 = __OFADD__(v11, 1);
      v15 = v11 + 1;
      if (v14)
      {
        goto LABEL_45;
      }

LABEL_14:
      v43 = v13;
      v44 = v12;
      v16 = sub_226D6BBEC();
      v2 = v16;
      if (v16 >> 62)
      {
        v17 = sub_226D6EDFC();
        v42 = v15;
        if (!v17)
        {
LABEL_29:

          v19 = v10;
          goto LABEL_30;
        }
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v42 = v15;
        if (!v17)
        {
          goto LABEL_29;
        }
      }

      sub_226AE1D68(0, v17 & ~(v17 >> 63), 0);
      if (v17 < 0)
      {
        goto LABEL_49;
      }

      v18 = 0;
      v19 = v10;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x22AA8AFD0](v18, v2);
        }

        else
        {
          v20 = *(v2 + 8 * v18 + 32);
        }

        v21 = v20;
        v22 = [v21 messageID];
        v23 = sub_226D6E39C();
        v25 = v24;

        v27 = *(v19 + 16);
        v26 = *(v19 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_226AE1D68((v26 > 1), v27 + 1, 1);
        }

        ++v18;
        *(v19 + 16) = v27 + 1;
        v28 = v19 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
      }

      while (v17 != v18);

      v8 = v37;
LABEL_30:
      v2 = *(v19 + 16);
      v12 = v44;
      v29 = *(v44 + 2);
      v30 = v29 + v2;
      if (__OFADD__(v29, v2))
      {
        goto LABEL_47;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v30 > *(v44 + 3) >> 1)
      {
        if (v29 <= v30)
        {
          v32 = v29 + v2;
        }

        else
        {
          v32 = v29;
        }

        v12 = sub_226BBAB0C(isUniquelyReferenced_nonNull_native, v32, 1, v44);
      }

      v10 = MEMORY[0x277D84F90];
      v11 = v42;
      if (*(v19 + 16))
      {
        if ((*(v12 + 3) >> 1) - *(v12 + 2) < v2)
        {
          goto LABEL_50;
        }

        swift_arrayInitWithCopy();

        if (v2)
        {
          v33 = *(v12 + 2);
          v14 = __OFADD__(v33, v2);
          v34 = v33 + v2;
          if (v14)
          {
            goto LABEL_51;
          }

          *(v12 + 2) = v34;
        }
      }

      else
      {

        if (v2)
        {
          goto LABEL_48;
        }
      }

      v2 = v38;
      if (v42 == v38)
      {
        goto LABEL_43;
      }
    }

    if (v11 >= *(v40 + 16))
    {
      goto LABEL_46;
    }

    v13 = *(v39 + 8 * v11);
    v14 = __OFADD__(v11, 1);
    v15 = v11 + 1;
    if (!v14)
    {
      goto LABEL_14;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }
}

uint64_t sub_226D5BD48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BusinessConnectProvider.EmailItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D5BDAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D5BE0C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  return sub_226D6EB7C();
}

uint64_t sub_226D5BF78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v72 = a5;
  v70 = a3;
  v67 = a2;
  v64 = a1;
  v69 = sub_226D6C18C();
  v66 = *(v69 - 8);
  v6 = *(v66 + 64);
  v7 = MEMORY[0x28223BE20](v69);
  v63 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = &v62 - v9;
  v10 = sub_226D671FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_226D6B9BC();
  v15 = *(v71 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v71);
  v65 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v62 - v19;
  v21 = sub_226D69F0C();

  sub_226D692DC();
  sub_226D671AC();
  (*(v11 + 8))(v14, v10);
  v22 = v70;
  sub_226D6B99C();
  v23 = v21;
  v24 = v73;
  v25 = sub_226D69D9C();
  v73 = v24;
  if (!v24)
  {
    v26 = v69;
    v27 = v25;
    (*(v15 + 8))(v20, v71);
    if (v27)
    {
      v28 = v27;
      v29 = v26;
      v30 = v66;
    }

    else
    {
      v35 = v22;
      v36 = a4;
      v28 = sub_226D69D8C();
      v73 = 0;
      v29 = v26;
      if (v28)
      {
        v30 = v66;
      }

      else
      {
        v55 = v73;
        v28 = sub_226D69D6C();
        v73 = v55;
        v30 = v66;
        if (!v28)
        {
          if (qword_27D7A5F58 != -1)
          {
            swift_once();
          }

          v56 = sub_226D6E07C();
          __swift_project_value_buffer(v56, qword_27D7A7CF8);

          v57 = sub_226D6E05C();
          v58 = sub_226D6E9CC();

          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v74 = v60;
            *v59 = 136315138;
            *(v59 + 4) = sub_226AC4530(v35, v36, &v74);
            _os_log_impl(&dword_226AB4000, v57, v58, "Failed to find account for account identifier: %s", v59, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v60);
            MEMORY[0x22AA8BEE0](v60, -1, -1);
            MEMORY[0x22AA8BEE0](v59, -1, -1);
          }

          return 0;
        }
      }
    }

    v31 = v28;

    sub_226D69D5C();
    v32 = v68;
    sub_226D6C17C();
    v23 = sub_226D6AC0C();
    v33 = v73;
    v34 = sub_226D6AACC();
    v73 = v33;
    if (v33)
    {
      (*(v30 + 8))(v32, v29);

      return v23;
    }

    if (v34)
    {
      v38 = v34;
      v23 = sub_226D6AB1C();

      (*(v30 + 8))(v32, v29);
      return v23;
    }

    if (qword_27D7A5F58 != -1)
    {
      swift_once();
    }

    v39 = sub_226D6E07C();
    __swift_project_value_buffer(v39, qword_27D7A7CF8);
    v40 = v63;
    (*(v30 + 16))(v63, v32, v29);
    v41 = v32;
    v42 = sub_226D6E05C();
    v43 = sub_226D6E9CC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v40;
      v45 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v74 = v72;
      *v45 = 136315138;
      sub_226D5C68C(&qword_27D7A9698, MEMORY[0x277CC8200]);
      v46 = sub_226D6F1CC();
      v47 = v29;
      v49 = v48;
      v50 = *(v30 + 8);
      v51 = v44;
      v52 = v47;
      v50(v51, v47);
      v53 = sub_226AC4530(v46, v49, &v74);

      *(v45 + 4) = v53;
      _os_log_impl(&dword_226AB4000, v42, v43, "Transaction %s not found", v45, 0xCu);
      v54 = v72;
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      MEMORY[0x22AA8BEE0](v54, -1, -1);
      MEMORY[0x22AA8BEE0](v45, -1, -1);

      v50(v68, v52);
    }

    else
    {

      v61 = *(v30 + 8);
      v61(v40, v29);
      v61(v41, v29);
    }

    return 0;
  }

  (*(v15 + 8))(v20, v71);
  return v23;
}

uint64_t sub_226D5C68C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226D5C6D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_226D5B8EC(a1);
}

uint64_t sub_226D5C6F0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_226D6D4AC();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = sub_226D682FC();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v10 = sub_226D6BB7C();
  v2[17] = v10;
  v11 = *(v10 - 8);
  v2[18] = v11;
  v12 = *(v11 + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D5C8AC, 0, 0);
}

uint64_t sub_226D5C8AC()
{
  if (sub_226D6E82C())
  {
    v1 = v0[19];
    v2 = v0[16];
    v3 = v0[13];
    v5 = v0[9];
    v4 = v0[10];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v7 = v0[8];
    sub_226D6CCAC();
    sub_226D6CC2C();
    v8 = type metadata accessor for BankConnectPassLinkingRequestTask();
    v9 = *(v8 + 20);
    sub_226D6B9BC();
    sub_226D5E4B0(&qword_27D7A81F8, MEMORY[0x277CC8058]);
    v10 = sub_226D6CC8C();
    v33 = v0[19];
    v34 = v0[16];
    v11 = v0[7];
    v12 = v0[8];
    v13 = v10;
    v15 = v14;

    sub_226D6D20C();
    sub_226B11B98(v13, v15);
    v16 = (v12 + *(v8 + 24));
    v17 = *v16;
    v18 = v16[1];

    sub_226D6BB6C();
    v19 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v20 = *(v19 + 8);
    sub_226D6BACC();
    v21 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_226D6A67C();
    v22 = v0[19];
    v24 = v0[16];
    v25 = v0[7];
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v26 = __swift_project_boxed_opaque_existential_1(v25, v11[3]);
    v27 = v26[5];
    __swift_project_boxed_opaque_existential_1(v26 + 1, v26[4]);
    v28 = sub_226D6C2AC();
    v0[20] = v28;
    v29 = swift_task_alloc();
    v0[21] = v29;
    v29[2] = v28;
    v29[3] = v24;
    v29[4] = v22;
    v30 = *(MEMORY[0x277CC7D90] + 4);
    v31 = swift_task_alloc();
    v0[22] = v31;
    *v31 = v0;
    v31[1] = sub_226D5CC1C;
    v32 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282119B28](v31, &unk_226D7E668, v29, v32);
  }
}

uint64_t sub_226D5CC1C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_226D5CF84;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_226D5CD38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D5CD38()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v30 = v0[8];
  v32 = v0[23];
  v6 = v0[7];
  sub_226D6D46C();
  v7 = *(v2 + 16);
  v7(v3, v1, v4);
  v8 = *(v2 + 56);
  v8(v3, 0, 1, v4);
  v7(v5, v1, v4);
  v8(v5, 0, 1, v4);
  v9 = *__swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v10 = sub_226D676AC();
  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = v30;
  *(v11 + 32) = v3;
  *(v11 + 40) = v5;
  *(v11 + 48) = 0;
  sub_226D6EB7C();
  v12 = v0[20];
  v31 = v0[19];
  v13 = v0[18];
  v14 = v0[15];
  v28 = v0[16];
  v29 = v0[17];
  v15 = v0[13];
  v16 = v0[11];
  v17 = v0[12];
  v18 = v0[9];
  v26 = v0[10];
  v27 = v0[14];

  (*(v17 + 8))(v15, v16);
  sub_226AC47B0(v18, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC47B0(v26, &qword_27D7A8BE0, &unk_226D718F0);
  (*(v14 + 8))(v28, v27);
  (*(v13 + 8))(v31, v29);
  v19 = v0[19];
  v20 = v0[16];
  v21 = v0[13];
  v23 = v0[9];
  v22 = v0[10];

  v24 = v0[1];

  return v24();
}

uint64_t sub_226D5CF84()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v8 = v0[15];

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  v9 = v0[23];
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[13];
  v14 = v0[9];
  v13 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t sub_226D5D078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_226D682FC();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = sub_226D6C61C();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D5D198, 0, 0);
}

uint64_t sub_226D5D198()
{
  v1 = v0[10];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A92C0, &qword_226D7CE10);
  v3 = sub_226D6BB7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226D70840;
  (*(v4 + 16))(v7 + v6, v2, v3);
  sub_226D6C60C();
  v8 = *(MEMORY[0x277CC7D68] + 4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_226D08E54;
  v10 = v0[10];
  v11 = v0[2];

  return MEMORY[0x282119B00](v10);
}

uint64_t sub_226D5D330(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = sub_226D66DFC();
  v3[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for BankConnectPassLinkingRequestTask();
  v3[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D5D43C, 0, 0);
}

uint64_t sub_226D5D43C()
{
  v40 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  sub_226D5E3D0(v3, v1, type metadata accessor for BankConnectPassLinkingRequestTask);
  sub_226D5E3D0(v4, v2, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  if (!v8)
  {
    v22 = v0[8];

    sub_226D5E438(v22, MEMORY[0x277CC6528]);
    sub_226D5E438(v9, type metadata accessor for BankConnectPassLinkingRequestTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = v0[8];
  v10 = v0[9];
  v38 = v0[7];
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v39 = v14;
  *v12 = 136315394;
  v15 = *(v10 + 20);
  sub_226D6B9BC();
  sub_226D5E4B0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
  v16 = sub_226D6F1CC();
  v18 = v17;
  sub_226D5E438(v9, type metadata accessor for BankConnectPassLinkingRequestTask);
  v19 = sub_226AC4530(v16, v18, &v39);

  *(v12 + 4) = v19;
  *(v12 + 12) = 2112;
  sub_226D5E4B0(&qword_27D7A6990, MEMORY[0x277CC6528]);
  swift_allocError();
  sub_226D5E3D0(v11, v20, MEMORY[0x277CC6528]);
  v21 = _swift_stdlib_bridgeErrorToNSError();
  sub_226D5E438(v11, MEMORY[0x277CC6528]);
  *(v12 + 14) = v21;
  *v13 = v21;
  _os_log_impl(&dword_226AB4000, v6, v7, "Failed to send a pass linking request for an account %s: %@.", v12, 0x16u);
  sub_226AC47B0(v13, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v13, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  MEMORY[0x22AA8BEE0](v14, -1, -1);
  MEMORY[0x22AA8BEE0](v12, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v24 = v0[5];
    v23 = v0[6];
    v25 = v0[3];
    v26 = v0[4];
    sub_226D6D46C();
    v27 = sub_226D6D4AC();
    v28 = *(*(v27 - 8) + 56);
    v28(v23, 0, 1, v27);
    v28(v24, 1, 1, v27);
    v29 = *__swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v30 = sub_226D676AC();
    v31 = swift_task_alloc();
    *(v31 + 16) = v30;
    *(v31 + 24) = v26;
    *(v31 + 32) = v23;
    *(v31 + 40) = v24;
    *(v31 + 48) = 1;
    sub_226D6EB7C();

    sub_226AC47B0(v24, &qword_27D7A8BE0, &unk_226D718F0);
    sub_226AC47B0(v23, &qword_27D7A8BE0, &unk_226D718F0);
  }

LABEL_8:
  v32 = v0[10];
  v33 = v0[8];
  v35 = v0[5];
  v34 = v0[6];

  v36 = v0[1];

  return v36();
}

void sub_226D5D938(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a3;
  v45 = a4;
  v48[1] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v41[-v12];
  v14 = sub_226D6D4AC();
  v46 = *(v14 - 8);
  v15 = *(v46 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v43 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v19 = &v41[-v18];
  v20 = [objc_opt_self() currentQueryGenerationToken];
  v48[0] = 0;
  v21 = [a1 setQueryGenerationFromToken:v20 error:v48];

  v22 = v48[0];
  if (!v21)
  {
    v31 = v48[0];
    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_19;
  }

  v42 = a5;
  sub_226D69F0C();
  v23 = a1;
  v24 = *(type metadata accessor for BankConnectPassLinkingRequestTask() + 20);
  v25 = v22;
  v26 = v47;
  v27 = sub_226D69D9C();
  if (!v26)
  {
    v47 = v27;
    sub_226AF265C(v44, v13);
    v28 = v46;
    v29 = *(v46 + 48);
    if (v29(v13, 1, v14) == 1)
    {
      sub_226AC47B0(v13, &qword_27D7A8BE0, &unk_226D718F0);
      v30 = v47;
    }

    else
    {
      (*(v28 + 32))(v19, v13, v14);
      v30 = v47;
      if (v47)
      {
        v32 = v47;
        v33 = sub_226D6D3EC();
        [v32 setLastPassLinkingAttemptDate_];

        v30 = v47;
        v28 = v46;
      }

      (*(v28 + 8))(v19, v14);
    }

    sub_226AF265C(v45, v11);
    if (v29(v11, 1, v14) == 1)
    {
      sub_226AC47B0(v11, &qword_27D7A8BE0, &unk_226D718F0);
      if (!v30)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v34 = v43;
      (*(v28 + 32))(v43, v11, v14);
      if (v30)
      {
        v35 = v30;
        v36 = sub_226D6D3EC();
        [v35 setLastPassLinkingDate_];

        v28 = v46;
      }

      (*(v28 + 8))(v34, v14);
      if (!v30)
      {
        goto LABEL_16;
      }
    }

    [v30 setNeedsPassLinking_];
LABEL_16:
    v48[0] = 0;
    v37 = [v23 save_];
    v38 = v48[0];
    if ((v37 & 1) == 0)
    {
      v39 = v38;
      sub_226D6D04C();

      swift_willThrow();
    }
  }

LABEL_19:
  v40 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226D5DD7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226D5C6F0(a1);
}

uint64_t sub_226D5DE10(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226D5D330(a1, a2);
}

uint64_t sub_226D5DEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67A0, &unk_226D7E670) + 48));
  v6 = *(a1 + 20);
  v7 = sub_226D6B9BC();
  (*(*(v7 - 8) + 16))(a2, v2 + v6, v7);
  v8 = (v2 + *(a1 + 24));
  v9 = v8[1];
  *v5 = *v8;
  v5[1] = v9;
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_226D5DF80(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v3 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = 2 * *(v3 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D72130;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v7 = *(a1 + 20);
  v8 = sub_226D6B9BC();
  (*(*(v8 - 8) + 16))(v6 + v4 + v5, v1 + v7, v8);
  swift_storeEnumTagMultiPayload();
  v9 = sub_226B1ED68(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v9;
}

unint64_t sub_226D5E10C(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 + 20);
  sub_226D6B9BC();
  sub_226D5E4B0(&qword_27D7A6E40, MEMORY[0x277CC8058]);
  v5 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v5);

  MEMORY[0x22AA8A510](32, 0xE100000000000000);
  MEMORY[0x22AA8A510](*(v3 + *(a1 + 24)), *(v3 + *(a1 + 24) + 8));
  return 0xD000000000000022;
}

uint64_t sub_226D5E27C(uint64_t a1)
{
  result = sub_226D5E4B0(&qword_27D7A96A0, type metadata accessor for BankConnectPassLinkingRequestTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectPassLinkingRequestTask()
{
  result = qword_27D7A96B0;
  if (!qword_27D7A96B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D5E320(uint64_t a1)
{
  result = sub_226D5E4B0(&qword_27D7A7220, type metadata accessor for BankConnectPassLinkingRequestTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D5E378(uint64_t a1)
{
  result = sub_226D5E4B0(&qword_27D7A96A8, type metadata accessor for BankConnectPassLinkingRequestTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226D5E3D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226D5E438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226D5E4B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226D5E4F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226D5D078(a1, v4, v5, v6);
}

void sub_226D5E5F8()
{
  sub_226B20350();
  if (v0 <= 0x3F)
  {
    sub_226D6B9BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t BankConnectServiceImplementation.loadScheduledPayments(for:)(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v6 = sub_226D6B9BC();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_226D5E7AC;

  return sub_226C00808(v9, a1, a2);
}

uint64_t sub_226D5E7AC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B40E90, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[8] = v4;
    *v4 = v3;
    v4[1] = sub_226B40CFC;
    v5 = v3[2];
    v6 = v3[5];

    return BankConnectServiceImplementation.loadScheduledPayments(for:)(v6);
  }
}

uint64_t BankConnectServiceImplementation.loadScheduledPayments(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6764C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_226D6B9BC();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v9 = sub_226D6D4AC();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D5EAA4, 0, 0);
}

uint64_t sub_226D5EAA4()
{
  v46 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_226D6D46C();
  v4 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v5 = sub_226D676AC();
  *(v0 + 120) = v5;
  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v3;
  sub_226D6EB7C();

  if (*(v0 + 184) == 1)
  {
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 88);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v10 = *(v0 + 24);
    v11 = sub_226D6E07C();
    *(v0 + 128) = __swift_project_value_buffer(v11, qword_27D7A7D10);
    v12 = *(v9 + 16);
    *(v0 + 136) = v12;
    *(v0 + 144) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v7, v10, v8);
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9AC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 88);
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45[0] = v44;
      *v19 = 136315138;
      sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058]);
      v20 = sub_226D6F1CC();
      v22 = v21;
      v43 = v14;
      v23 = *(v17 + 8);
      v23(v16, v18);
      v24 = sub_226AC4530(v20, v22, v45);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_226AB4000, v13, v43, "Fetching scheduled payments for %s.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x22AA8BEE0](v44, -1, -1);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
    }

    else
    {

      v23 = *(v17 + 8);
      v23(v16, v18);
    }

    *(v0 + 152) = v23;
    v31 = *(v0 + 48);
    v30 = *(v0 + 56);
    v32 = *(v0 + 40);
    v33 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    v45[3] = &type metadata for BankConnectEnvironmentImplementation;
    v45[4] = sub_226B41FC0();
    v45[0] = swift_allocObject();
    sub_226B42014(v33, v45[0] + 16);
    v34 = sub_226D6C51C();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v37 = sub_226D6C50C();
    *(v0 + 16) = v37;
    *(v0 + 160) = v37;
    (*(v31 + 104))(v30, *MEMORY[0x277CC6D38], v32);
    v38 = *(MEMORY[0x277CC82A0] + 4);
    v39 = swift_task_alloc();
    *(v0 + 168) = v39;
    *v39 = v0;
    v39[1] = sub_226D5EF58;
    v40 = *(v0 + 56);
    v41 = *(v0 + 24);
    v42 = MEMORY[0x277CC8280];

    return MEMORY[0x28211A9B0](v41, v40, v34, v42);
  }

  else
  {

    v25 = *(v0 + 88);
    v26 = *(v0 + 80);
    v27 = *(v0 + 56);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_226D5EF58()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = v2[20];
  (*(v2[6] + 8))(v2[7], v2[5]);

  if (v0)
  {
    v6 = sub_226D5F18C;
  }

  else
  {
    v6 = sub_226D5F0DC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226D5F0DC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226D5F18C()
{
  v35 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  (*(v0 + 136))(*(v0 + 80), *(v0 + 24), *(v0 + 64));
  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  if (os_log_type_enabled(v5, v6))
  {
    v32 = *(v0 + 152);
    v33 = *(v0 + 176);
    v7 = *(v0 + 80);
    v31 = *(v0 + 72);
    v8 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v9 = 136315394;
    sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058]);
    v12 = sub_226D6F1CC();
    v14 = v13;
    v32(v7, v8);
    v15 = sub_226AC4530(v12, v14, &v34);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v33;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to fetch scheduled payments for %s with: %@.", v9, 0x16u);
    sub_226B17298(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {
    v18 = *(v0 + 152);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v0 + 64);

    v18(v19, v21);
  }

  v22 = *(v0 + 176);
  v23 = *(v0 + 120);
  v24 = sub_226D6A0DC();
  sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0]);
  swift_allocError();
  *v25 = v22;
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277CC7AB0], v24);
  swift_willThrow();

  v26 = *(v0 + 88);
  v27 = *(v0 + 80);
  v28 = *(v0 + 56);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v29 = *(v0 + 8);

  return v29();
}

void sub_226D5F4D4(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v20[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v20];

  v7 = v20[0];
  if (!v6)
  {
    v10 = v20[0];
    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_226D69F0C();
  v8 = v7;
  v9 = sub_226D69D9C();
  if (v2)
  {

LABEL_4:
    *a2 = 1;
    goto LABEL_6;
  }

  v12 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  if (sub_226D69ECC())
  {
    v13 = sub_226D6D3EC();
    [v12 setLastScheduledPaymentsRefreshDate_];

    v20[0] = 0;
    if (![a1 save_])
    {
      v19 = v20[0];
      sub_226D6D04C();

      swift_willThrow();
      goto LABEL_6;
    }

    v14 = v20[0];

    goto LABEL_4;
  }

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v15 = sub_226D6E07C();
  __swift_project_value_buffer(v15, qword_27D7A7D10);
  v16 = sub_226D6E05C();
  v17 = sub_226D6E9EC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    MEMORY[0x22AA8BEE0](v18, -1, -1);
  }

  *a2 = 0;
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_226D5F758(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_226D5F4D4(*(v1 + 16), a1);
}

uint64_t type metadata accessor for PrismWebServiceRegisterTransactionTask()
{
  result = qword_27D7A9708;
  if (!qword_27D7A9708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226D5F854(uint64_t *a1)
{
  v53 = a1;
  v2 = sub_226D6B3BC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = v3[2];
  v14(&v48 - v12, v1, v2, v11);
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v15 = sub_226D6E07C();
  v16 = __swift_project_value_buffer(v15, qword_28105F5C0);
  v52 = v14;
  (v14)(v9, v13, v2);
  v51 = v16;
  v17 = sub_226D6E05C();
  v18 = sub_226D6E9EC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v50 = v3;
    v20 = v19;
    v48 = swift_slowAlloc();
    v49 = v13;
    v56 = v48;
    *v20 = 136315138;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
    v21 = sub_226D6F1CC();
    v22 = v6;
    v24 = v23;
    v55 = v50[1];
    v55(v9, v2);
    v25 = sub_226AC4530(v21, v24, &v56);
    v6 = v22;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_226AB4000, v17, v18, "Fetching pending registration for transaction %s", v20, 0xCu);
    v26 = v48;
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    v13 = v49;
    MEMORY[0x22AA8BEE0](v26, -1, -1);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
  }

  else
  {

    v55 = v3[1];
    v55(v9, v2);
  }

  sub_226D6C8EC();
  v27 = v54;
  v28 = sub_226D6C88C();
  if (v27)
  {
    v52(v6, v13, v2);
    v29 = v27;
    v30 = sub_226D6E05C();
    v31 = sub_226D6E9CC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v54 = v28;
      v33 = v32;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56 = v53;
      *v33 = 136315394;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
      LODWORD(v51) = v31;
      v34 = sub_226D6F1CC();
      v35 = v13;
      v37 = v36;
      v38 = v6;
      v39 = v55;
      v55(v38, v2);
      v40 = sub_226AC4530(v34, v37, &v56);
      v13 = v35;

      *(v33 + 4) = v40;
      *(v33 + 12) = 2112;
      v41 = v27;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v42;
      v43 = v52;
      *v52 = v42;
      _os_log_impl(&dword_226AB4000, v30, v51, "Failed to fetch pending registration for transaction %s with error: %@", v33, 0x16u);
      sub_226AC47B0(v43, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v43, -1, -1);
      v44 = v53;
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x22AA8BEE0](v44, -1, -1);
      v45 = v33;
      v28 = v54;
      MEMORY[0x22AA8BEE0](v45, -1, -1);
    }

    else
    {

      v46 = v6;
      v39 = v55;
      v55(v46, v2);
    }

    swift_willThrow();
    v39(v13, v2);
  }

  else
  {
    v55(v13, v2);
  }

  return v28;
}

uint64_t sub_226D5FDB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v79 = a1;
  v75 = a2;
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v82 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v70 - v7;
  v8 = sub_226D6C3BC();
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v8);
  v78 = (&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_226D6D4AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  sub_226D6C8DC();
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v19 = sub_226D6E07C();
  v20 = __swift_project_value_buffer(v19, qword_28105F5C0);
  (*(v12 + 16))(v15, v18, v11);
  v77 = v20;
  v21 = sub_226D6E05C();
  v22 = sub_226D6E9EC();
  v23 = os_log_type_enabled(v21, v22);
  v72 = v3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v76 = v18;
    v25 = v24;
    v26 = swift_slowAlloc();
    v71 = v2;
    v27 = v26;
    v84 = v26;
    *v25 = 136315138;
    sub_226D66C08(&qword_281062B80, MEMORY[0x277CC9578]);
    v28 = sub_226D6F1CC();
    v29 = v12;
    v30 = v11;
    v32 = v31;
    v81 = *(v29 + 8);
    v81(v15, v30);
    v33 = sub_226AC4530(v28, v32, &v84);
    v11 = v30;
    v12 = v29;

    *(v25 + 4) = v33;
    _os_log_impl(&dword_226AB4000, v21, v22, "Retrieving credential valid until %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v34 = v27;
    v2 = v71;
    MEMORY[0x22AA8BEE0](v34, -1, -1);
    v35 = v25;
    v18 = v76;
    MEMORY[0x22AA8BEE0](v35, -1, -1);
  }

  else
  {

    v81 = *(v12 + 8);
    v81(v15, v11);
  }

  v36 = v78;
  v37 = v80;
  sub_226D6C73C();
  v39 = v82;
  v38 = v83;
  if (v37)
  {
    v40 = v37;
    v41 = sub_226D6E05C();
    v42 = sub_226D6E9CC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = v18;
      v44 = swift_slowAlloc();
      v45 = v11;
      v46 = swift_slowAlloc();
      *v44 = 138412290;
      v47 = v37;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_226AB4000, v41, v42, "Failed to retrieve credential with error: %@", v44, 0xCu);
      sub_226AC47B0(v46, &qword_27D7A5FB0, &qword_226D70870);
      v49 = v46;
      v11 = v45;
      MEMORY[0x22AA8BEE0](v49, -1, -1);
      v50 = v44;
      v18 = v43;
      MEMORY[0x22AA8BEE0](v50, -1, -1);
    }

    swift_willThrow();
    goto LABEL_13;
  }

  v80 = v12;
  (*(v73 + 32))(v75, v36, v74);
  sub_226D6C39C();
  v51 = v72;
  (*(v72 + 16))(v39, v38, v2);
  v52 = sub_226D6E05C();
  v53 = sub_226D6E9EC();
  v54 = v39;
  v55 = v2;
  if (!os_log_type_enabled(v52, v53))
  {

    v68 = *(v51 + 8);
    v68(v54, v2);
    v68(v83, v2);
LABEL_13:
    v67 = v18;
    v66 = v11;
    return (v81)(v67, v66);
  }

  v56 = swift_slowAlloc();
  v76 = v18;
  v77 = v56;
  v57 = v56;
  v78 = swift_slowAlloc();
  v84 = v78;
  *v57 = 136315138;
  sub_226D66C08(&qword_27D7A6648, MEMORY[0x277CC95F0]);
  v58 = sub_226D6F1CC();
  v79 = v11;
  v60 = v59;
  v61 = *(v51 + 8);
  v61(v54, v55);
  v62 = sub_226AC4530(v58, v60, &v84);

  v63 = v77;
  *(v77 + 4) = v62;
  v64 = v63;
  _os_log_impl(&dword_226AB4000, v52, v53, "Got credential %s", v63, 0xCu);
  v65 = v78;
  __swift_destroy_boxed_opaque_existential_0Tm(v78);
  MEMORY[0x22AA8BEE0](v65, -1, -1);
  MEMORY[0x22AA8BEE0](v64, -1, -1);

  v61(v83, v55);
  v66 = v79;
  v67 = v76;
  return (v81)(v67, v66);
}

uint64_t sub_226D604B8(uint64_t a1, uint64_t a2, void *a3)
{
  v174 = a2;
  v181[1] = *MEMORY[0x277D85DE8];
  v176 = sub_226D6D4AC();
  v179 = *(v176 - 8);
  v4 = *(v179 + 64);
  MEMORY[0x28223BE20](v176);
  v170 = (&v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v168 = &v158 - v7;
  MEMORY[0x28223BE20](v8);
  v175 = &v158 - v9;
  v177 = sub_226D6B3BC();
  v180 = *(v177 - 8);
  v10 = v180[8];
  MEMORY[0x28223BE20](v177);
  v171 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v158 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v158 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v158 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v158 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v158 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v158 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v158 - v31;
  sub_226D6C8EC();
  v33 = v178;
  result = sub_226D6C8AC();
  if (!v33)
  {
    v178 = v29;
    v163 = v26;
    v164 = v23;
    v166 = a3;
    v159 = v20;
    v160 = v17;
    v161 = v14;
    v35 = result;
    v37 = v180 + 2;
    v36 = v180[2];
    v38 = v172;
    v39 = v177;
    v36(v32, v172, v177);
    v40 = *(v38 + *(type metadata accessor for PrismWebServiceRegisterTransactionTask() + 20));
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
    }

    else
    {
      v38 = v39;
      v169 = v35;
      v162 = 0;
      if (qword_28105F5B8 == -1)
      {
        goto LABEL_4;
      }
    }

    swift_once();
LABEL_4:
    v42 = sub_226D6E07C();
    v43 = __swift_project_value_buffer(v42, qword_28105F5C0);
    v44 = v178;
    v173 = v32;
    v36(v178, v32, v38);
    v172 = v43;
    v45 = sub_226D6E05C();
    v46 = sub_226D6E9EC();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v175;
    v167 = v36;
    if (v47)
    {
      v49 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v181[0] = v158;
      *v49 = 136315394;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
      v50 = sub_226D6F1CC();
      v52 = v51;
      v178 = v180[1];
      v178(v44, v38);
      v53 = sub_226AC4530(v50, v52, v181);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2048;
      *(v49 + 14) = v41;
      _os_log_impl(&dword_226AB4000, v45, v46, "Registration for transaction %s failed %lld times", v49, 0x16u);
      v54 = v158;
      __swift_destroy_boxed_opaque_existential_0Tm(v158);
      v55 = v54;
      v48 = v175;
      MEMORY[0x22AA8BEE0](v55, -1, -1);
      v56 = v49;
      v36 = v167;
      MEMORY[0x22AA8BEE0](v56, -1, -1);
    }

    else
    {

      v178 = v180[1];
      v178(v44, v38);
    }

    v57 = v38;
    v58 = v169;
    if (v41 >= 1)
    {
      exp2((v41 - 1));
    }

    v59 = v48;
    sub_226D6D3DC();
    v60 = sub_226D6C8BC();
    v61 = (v179 + 16);
    v165 = v37;
    if (v60)
    {
      v164 = v41;
      v62 = v163;
      v36(v163, v173, v57);
      v63 = v168;
      (*v61)(v168, v59, v176);
      v64 = sub_226D6E05C();
      v65 = sub_226D6E9EC();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v181[0] = v67;
        *v66 = 136315394;
        sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
        v68 = sub_226D6F1CC();
        v69 = v57;
        v71 = v70;
        v178(v62, v69);
        v72 = sub_226AC4530(v68, v71, v181);

        *(v66 + 4) = v72;
        *(v66 + 12) = 2080;
        sub_226D66C08(&qword_281062B80, MEMORY[0x277CC9578]);
        v73 = v63;
        v74 = v176;
        v75 = sub_226D6F1CC();
        v77 = v76;
        v170 = *(v179 + 8);
        v170(v73, v74);
        v78 = sub_226AC4530(v75, v77, v181);

        *(v66 + 14) = v78;
        _os_log_impl(&dword_226AB4000, v64, v65, "Updating pending registration for transaction %s eligible for earliest next attempt at %s", v66, 0x16u);
        swift_arrayDestroy();
        v79 = v67;
        v58 = v169;
        MEMORY[0x22AA8BEE0](v79, -1, -1);
        MEMORY[0x22AA8BEE0](v66, -1, -1);
      }

      else
      {

        v170 = *(v179 + 8);
        v170(v63, v176);
        v178(v62, v57);
      }

      v99 = v171;
      [v58 setRegistrationAttemptCount_];
      v100 = sub_226D6D3EC();
      [v58 setLastRegistrationAttemptDate_];

      v101 = v166;
    }

    else
    {
      v80 = v164;
      v36(v164, v173, v57);
      v81 = v176;
      v82 = v170;
      (*v61)(v170, v59, v176);
      v83 = sub_226D6E05C();
      v84 = sub_226D6E9EC();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v181[0] = v86;
        *v85 = 136315394;
        sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
        v87 = sub_226D6F1CC();
        v88 = v57;
        v90 = v89;
        v178(v80, v88);
        v91 = v84;
        v92 = sub_226AC4530(v87, v90, v181);

        *(v85 + 4) = v92;
        *(v85 + 12) = 2080;
        sub_226D66C08(&qword_281062B80, MEMORY[0x277CC9578]);
        v93 = v170;
        v94 = sub_226D6F1CC();
        v96 = v95;
        v170 = *(v179 + 8);
        v170(v93, v81);
        v97 = sub_226AC4530(v94, v96, v181);

        *(v85 + 14) = v97;
        _os_log_impl(&dword_226AB4000, v83, v91, "Deleting pending registration for transaction %s not eligible for earliest next attempt at %s", v85, 0x16u);
        swift_arrayDestroy();
        v98 = v86;
        v58 = v169;
        MEMORY[0x22AA8BEE0](v98, -1, -1);
        MEMORY[0x22AA8BEE0](v85, -1, -1);
      }

      else
      {

        v170 = *(v179 + 8);
        v170(v82, v81);
        v178(v80, v57);
      }

      v99 = v171;
      v101 = v166;
      [v166 deleteObject_];
    }

    v102 = [v58 isDeleted];
    v181[0] = 0;
    v103 = [v101 save_];
    v104 = v181[0];
    if (v103)
    {
      v105 = v177;
      v106 = v173;
      if (v102)
      {
        v107 = v159;
        v167(v159, v173, v177);
        v108 = v104;
        v109 = sub_226D6E05C();
        v110 = sub_226D6E9EC();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v181[0] = v112;
          *v111 = 136315138;
          sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
          v113 = sub_226D6F1CC();
          v114 = v107;
          v116 = v115;
          v117 = v105;
          v118 = v105;
          v119 = v178;
          v178(v114, v117);
          v120 = sub_226AC4530(v113, v116, v181);

          *(v111 + 4) = v120;
          v121 = "Deleted pending registration for transaction %s";
LABEL_27:
          _os_log_impl(&dword_226AB4000, v109, v110, v121, v111, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v112);
          MEMORY[0x22AA8BEE0](v112, -1, -1);
          MEMORY[0x22AA8BEE0](v111, -1, -1);

          v170(v175, v176);
          result = v119(v173, v118);
          goto LABEL_34;
        }
      }

      else
      {
        v107 = v160;
        v167(v160, v173, v177);
        v139 = v104;
        v109 = sub_226D6E05C();
        v110 = sub_226D6E9EC();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v181[0] = v112;
          *v111 = 136315138;
          sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
          v140 = sub_226D6F1CC();
          v141 = v107;
          v143 = v142;
          v144 = v105;
          v118 = v105;
          v119 = v178;
          v178(v141, v144);
          v145 = sub_226AC4530(v140, v143, v181);

          *(v111 + 4) = v145;
          v121 = "Updated pending registration for transaction %s";
          goto LABEL_27;
        }
      }

      v156 = v178;
      v178(v107, v105);
      v170(v175, v176);
      result = v156(v106, v105);
      goto LABEL_34;
    }

    v122 = v181[0];
    v123 = sub_226D6D04C();

    swift_willThrow();
    v124 = v123;
    if (v102)
    {
      v99 = v161;
      v125 = v177;
      v167(v161, v173, v177);
      v126 = v123;
      v127 = sub_226D6E05C();
      v128 = sub_226D6E9CC();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v131 = v99;
        v180 = swift_slowAlloc();
        v181[0] = v180;
        *v129 = 136315394;
        sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
        v132 = sub_226D6F1CC();
        v134 = v133;
        v178(v131, v177);
        v135 = sub_226AC4530(v132, v134, v181);
        v125 = v177;

        *(v129 + 4) = v135;
        *(v129 + 12) = 2112;
        v136 = v124;
        v137 = _swift_stdlib_bridgeErrorToNSError();
        *(v129 + 14) = v137;
        *v130 = v137;
        v138 = "Failed to delete pending registration for transaction %s with error: %@";
LABEL_30:
        _os_log_impl(&dword_226AB4000, v127, v128, v138, v129, 0x16u);
        sub_226AC47B0(v130, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v130, -1, -1);
        v154 = v180;
        __swift_destroy_boxed_opaque_existential_0Tm(v180);
        MEMORY[0x22AA8BEE0](v154, -1, -1);
        MEMORY[0x22AA8BEE0](v129, -1, -1);

        v155 = v178;
LABEL_33:
        swift_willThrow();

        v170(v175, v176);
        result = v155(v173, v125);
        goto LABEL_34;
      }
    }

    else
    {
      v125 = v177;
      v167(v99, v173, v177);
      v146 = v123;
      v127 = sub_226D6E05C();
      v128 = sub_226D6E9CC();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v147 = v99;
        v180 = swift_slowAlloc();
        v181[0] = v180;
        *v129 = 136315394;
        sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
        v148 = sub_226D6F1CC();
        v150 = v149;
        v178(v147, v177);
        v151 = sub_226AC4530(v148, v150, v181);
        v125 = v177;

        *(v129 + 4) = v151;
        *(v129 + 12) = 2112;
        v152 = v124;
        v153 = _swift_stdlib_bridgeErrorToNSError();
        *(v129 + 14) = v153;
        *v130 = v153;
        v138 = "Failed to update pending registration for transaction %s with error: %@";
        goto LABEL_30;
      }
    }

    v155 = v178;
    v178(v99, v125);
    goto LABEL_33;
  }

LABEL_34:
  v157 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226D616B0(void *a1, void *a2)
{
  v84 = a2;
  v82 = a1;
  v88[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6B3BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v85 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v78 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v78 - v16;
  v87 = v5;
  v18 = *(v5 + 16);
  (v18)(&v78 - v16, v2, v4, v15);
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v19 = sub_226D6E07C();
  v20 = __swift_project_value_buffer(v19, qword_28105F5C0);
  v83 = v18;
  (v18)(v13, v17, v4);
  v81 = v20;
  v21 = sub_226D6E05C();
  v22 = sub_226D6E9EC();
  v23 = os_log_type_enabled(v21, v22);
  v80 = v3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v78 = v10;
    v25 = v24;
    v26 = swift_slowAlloc();
    v79 = v17;
    v27 = v4;
    v28 = v26;
    v88[0] = v26;
    *v25 = 136315138;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
    v29 = sub_226D6F1CC();
    v31 = v30;
    v86 = *(v87 + 8);
    v86(v13, v27);
    v32 = sub_226AC4530(v29, v31, v88);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_226AB4000, v21, v22, "Deleting pending registration for transaction %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    v33 = v28;
    v4 = v27;
    v17 = v79;
    MEMORY[0x22AA8BEE0](v33, -1, -1);
    v34 = v25;
    v10 = v78;
    MEMORY[0x22AA8BEE0](v34, -1, -1);
  }

  else
  {

    v86 = *(v87 + 8);
    v86(v13, v4);
  }

  v35 = v84;
  v36 = [v84 objectWithID_];
  [v35 deleteObject_];
  v88[0] = 0;
  v37 = [v35 save_];
  v38 = v88[0];
  v39 = v85;
  v40 = v83;
  if (v37)
  {
    (v83)(v10, v17, v4);
    v41 = v38;
    v42 = sub_226D6E05C();
    v43 = sub_226D6E9EC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v10;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v84 = v36;
      v85 = v46;
      v47 = v4;
      v88[0] = v46;
      *v45 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
      v48 = sub_226D6F1CC();
      v50 = v49;
      v51 = v44;
      v52 = v86;
      v86(v51, v47);
      v53 = sub_226AC4530(v48, v50, v88);

      *(v45 + 4) = v53;
      _os_log_impl(&dword_226AB4000, v42, v43, "Deleted pending registration for transaction %s", v45, 0xCu);
      v54 = v85;
      __swift_destroy_boxed_opaque_existential_0Tm(v85);
      MEMORY[0x22AA8BEE0](v54, -1, -1);
      MEMORY[0x22AA8BEE0](v45, -1, -1);

      result = v52(v17, v47);
    }

    else
    {

      v76 = v86;
      v86(v10, v4);
      result = v76(v17, v4);
    }
  }

  else
  {
    v56 = v88[0];
    v57 = sub_226D6D04C();

    swift_willThrow();
    (v40)(v39, v17, v4);
    v58 = v57;
    v59 = sub_226D6E05C();
    v60 = sub_226D6E9CC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v84 = v36;
      v62 = v61;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v88[0] = v83;
      *v62 = 136315394;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
      LODWORD(v81) = v60;
      v63 = sub_226D6F1CC();
      v64 = v39;
      v65 = v17;
      v66 = v4;
      v68 = v67;
      v69 = v86;
      v86(v64, v66);
      v70 = sub_226AC4530(v63, v68, v88);
      v4 = v66;
      v17 = v65;

      *(v62 + 4) = v70;
      *(v62 + 12) = 2112;
      v71 = v57;
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 14) = v72;
      v73 = v82;
      *v82 = v72;
      _os_log_impl(&dword_226AB4000, v59, v81, "Failed to delete pending registration for transaction %s with error: %@", v62, 0x16u);
      sub_226AC47B0(v73, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v73, -1, -1);
      v74 = v83;
      __swift_destroy_boxed_opaque_existential_0Tm(v83);
      MEMORY[0x22AA8BEE0](v74, -1, -1);
      v75 = v62;
      v36 = v84;
      MEMORY[0x22AA8BEE0](v75, -1, -1);
    }

    else
    {

      v69 = v86;
      v86(v39, v4);
    }

    swift_willThrow();

    result = v69(v17, v4);
  }

  v77 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226D61E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v205 = a2;
  v198 = a1;
  v177 = a3;
  v191 = sub_226D6A07C();
  v190 = *(v191 - 8);
  v3 = *(v190 + 64);
  MEMORY[0x28223BE20](v191);
  v194 = &v168[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v185 = sub_226D6E23C();
  v184 = *(v185 - 8);
  v5 = *(v184 + 64);
  MEMORY[0x28223BE20](v185);
  v183 = &v168[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v182 = &v168[-v8];
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96F8, &qword_226D7E7B8);
  v188 = *(v189 - 8);
  v9 = *(v188 + 64);
  MEMORY[0x28223BE20](v189);
  v176 = &v168[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v193 = &v168[-v12];
  v187 = sub_226D6E26C();
  v186 = *(v187 - 8);
  v13 = *(v186 + 64);
  MEMORY[0x28223BE20](v187);
  v192 = &v168[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v202 = sub_226D6E28C();
  v208 = *(v202 - 8);
  v15 = *(v208 + 64);
  MEMORY[0x28223BE20](v202);
  v181 = &v168[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v197 = &v168[-v18];
  MEMORY[0x28223BE20](v19);
  v207 = &v168[-v20];
  v213 = sub_226D6D52C();
  v206 = *(v213 - 8);
  v21 = *(v206 + 64);
  MEMORY[0x28223BE20](v213);
  v175 = &v168[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v200 = &v168[-v24];
  MEMORY[0x28223BE20](v25);
  v211 = &v168[-v26];
  v27 = sub_226D6BEFC();
  v214 = *(v27 - 8);
  v28 = v214[8];
  MEMORY[0x28223BE20](v27);
  v174 = &v168[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v32 = &v168[-v31];
  MEMORY[0x28223BE20](v33);
  v35 = &v168[-v34];
  v36 = sub_226D6B3BC();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v178 = &v168[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40);
  v196 = &v168[-v41];
  MEMORY[0x28223BE20](v42);
  v179 = &v168[-v43];
  MEMORY[0x28223BE20](v44);
  v195 = &v168[-v45];
  MEMORY[0x28223BE20](v46);
  v48 = &v168[-v47];
  MEMORY[0x28223BE20](v49);
  v51 = &v168[-v50];
  v53 = MEMORY[0x28223BE20](v52);
  v55 = &v168[-v54];
  v216 = v37;
  v58 = *(v37 + 16);
  v56 = v37 + 16;
  v57 = v58;
  (v58)(&v168[-v54], v215, v36, v53);
  v58(v51, v55, v36);
  v180 = v51;
  sub_226D6BEEC();
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v59 = sub_226D6E07C();
  v60 = __swift_project_value_buffer(v59, qword_28105F5C0);
  v61 = v214[2];
  v203 = v35;
  v173 = v214 + 2;
  v172 = v61;
  v61(v32, v35, v27);
  v217 = v55;
  v209 = v56;
  v210 = v57;
  v57(v48, v55, v36);
  v212 = v60;
  v62 = sub_226D6E05C();
  v63 = sub_226D6E9EC();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v213;
  v204 = v27;
  v221 = v36;
  if (v64)
  {
    v66 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v220[0] = v171;
    *v66 = 136315394;
    sub_226D66C08(&qword_27D7A9700, MEMORY[0x277CC8188]);
    v67 = sub_226D6F1CC();
    v69 = v68;
    v201 = v214[1];
    v201(v32, v27);
    v70 = sub_226AC4530(v67, v69, v220);
    v65 = v213;

    *(v66 + 4) = v70;
    *(v66 + 12) = 2080;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
    v71 = sub_226D6F1CC();
    v73 = v72;
    v215 = *(v216 + 8);
    v215(v48, v221);
    v74 = sub_226AC4530(v71, v73, v220);

    *(v66 + 14) = v74;
    _os_log_impl(&dword_226AB4000, v62, v63, "Using topic %s to register for transaction %s", v66, 0x16u);
    v75 = v171;
    swift_arrayDestroy();
    v76 = v211;
    MEMORY[0x22AA8BEE0](v75, -1, -1);
    v77 = v66;
    v36 = v221;
    MEMORY[0x22AA8BEE0](v77, -1, -1);
  }

  else
  {

    v215 = *(v216 + 8);
    v215(v48, v36);
    v201 = v214[1];
    v201(v32, v27);
    v76 = v211;
  }

  v78 = v200;
  sub_226D6C39C();
  v79 = v206;
  v80 = *(v206 + 16);
  v171 = v206 + 16;
  v170 = v80;
  v80(v78, v76, v65);
  v81 = v195;
  v82 = v210;
  v210(v195, v217, v36);
  v83 = sub_226D6E05C();
  v84 = sub_226D6E9EC();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = v81;
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v220[0] = v87;
    *v86 = 136315394;
    sub_226D66C08(&qword_27D7A6648, MEMORY[0x277CC95F0]);
    v169 = v84;
    v88 = sub_226D6F1CC();
    v89 = v78;
    v91 = v90;
    v200 = *(v79 + 8);
    (v200)(v89, v65);
    v92 = sub_226AC4530(v88, v91, v220);

    *(v86 + 4) = v92;
    *(v86 + 12) = 2080;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
    v93 = sub_226D6F1CC();
    v95 = v94;
    v215(v85, v36);
    v96 = sub_226AC4530(v93, v95, v220);

    *(v86 + 14) = v96;
    _os_log_impl(&dword_226AB4000, v83, v169, "Using credential %s to register for transaction %s", v86, 0x16u);
    swift_arrayDestroy();
    v82 = v210;
    MEMORY[0x22AA8BEE0](v87, -1, -1);
    MEMORY[0x22AA8BEE0](v86, -1, -1);
  }

  else
  {

    v215(v81, v36);
    v200 = *(v79 + 8);
    (v200)(v78, v65);
  }

  v97 = v207;
  v98 = v196;
  v99 = v197;
  v100 = v199;
  sub_226D6C87C();
  if (v100)
  {
    v82(v98, v217, v36);
    v101 = v100;
    v102 = sub_226D6E05C();
    v103 = sub_226D6E9CC();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106 = v98;
      v212 = swift_slowAlloc();
      v220[0] = v212;
      *v104 = 136315394;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
      v107 = sub_226D6F1CC();
      v109 = v108;
      v215(v106, v221);
      v110 = sub_226AC4530(v107, v109, v220);

      *(v104 + 4) = v110;
      *(v104 + 12) = 2112;
      v111 = v100;
      v112 = _swift_stdlib_bridgeErrorToNSError();
      *(v104 + 14) = v112;
      *v105 = v112;
      _os_log_impl(&dword_226AB4000, v102, v103, "Failed to access private key for transaction %s with error: %@", v104, 0x16u);
      sub_226AC47B0(v105, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v105, -1, -1);
      v113 = v212;
      __swift_destroy_boxed_opaque_existential_0Tm(v212);
      MEMORY[0x22AA8BEE0](v113, -1, -1);
      v114 = v104;
      v36 = v221;
      v115 = v211;
      MEMORY[0x22AA8BEE0](v114, -1, -1);

      v116 = v213;
    }

    else
    {

      v215(v98, v36);
      v116 = v213;
      v115 = v211;
    }

    swift_willThrow();
  }

  else
  {
    v196 = 0;
    (*(v208 + 32))(v97, v99, v202);
    v117 = sub_226D6E27C();
    v118 = MEMORY[0x22AA8A300](v117);
    v120 = v119;
    v121 = v179;
    v82(v179, v217, v36);
    sub_226B11B44(v118, v120);
    v122 = v118;
    v123 = sub_226D6E05C();
    v124 = sub_226D6E9EC();
    sub_226B11B98(v118, v120);
    v125 = os_log_type_enabled(v123, v124);
    v199 = v120;
    v198 = v118;
    if (v125)
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v220[0] = v127;
      *v126 = 136315394;
      v128 = sub_226D6D20C();
      v130 = sub_226AC4530(v128, v129, v220);

      *(v126 + 4) = v130;
      *(v126 + 12) = 2080;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
      v131 = v221;
      v132 = sub_226D6F1CC();
      v134 = v133;
      v215(v121, v131);
      v135 = sub_226AC4530(v132, v134, v220);
      v122 = v198;

      *(v126 + 14) = v135;
      v120 = v199;
      _os_log_impl(&dword_226AB4000, v123, v124, "Using public key %s to register for transaction %s", v126, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v127, -1, -1);
      MEMORY[0x22AA8BEE0](v126, -1, -1);
    }

    else
    {

      v215(v121, v221);
    }

    v136 = v185;
    v137 = v184;
    v220[0] = v122;
    v220[1] = v120;
    v138 = v217;
    v218 = sub_226D6B3AC();
    v219 = v139;
    v140 = v182;
    sub_226D6E22C();
    sub_226D6E29C();
    sub_226D66C08(&qword_27D7A6E00, MEMORY[0x277CC5540]);
    sub_226C61B28();
    sub_226D6E24C();
    v141 = *(v137 + 8);
    v141(v140, v136);
    v210(v180, v138, v221);
    (*(v208 + 16))(v181, v207, v202);
    sub_226D6A05C();
    v142 = v183;
    sub_226D6C3AC();
    v143 = v196;
    v144 = sub_226D6A06C();
    if (!v143)
    {
      v212 = v144;
      v141(v142, v136);
      v172(v174, v203, v204);
      v163 = v213;
      v170(v175, v211, v213);
      v164 = v188;
      v165 = v193;
      v166 = v189;
      (*(v188 + 16))(v176, v193, v189);
      sub_226D6C71C();
      (*(v190 + 8))(v194, v191);
      (*(v164 + 8))(v165, v166);
      (*(v186 + 8))(v192, v187);
      (*(v208 + 8))(v207, v202);
      (v200)(v211, v163);
      v201(v203, v204);
      return (v215)(v217, v221);
    }

    v141(v142, v136);
    v145 = v178;
    v210(v178, v217, v221);
    v146 = v143;
    v147 = sub_226D6E05C();
    v148 = sub_226D6E9CC();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v220[0] = v212;
      *v149 = 136315394;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
      v150 = v221;
      v151 = sub_226D6F1CC();
      v153 = v152;
      v215(v145, v150);
      v154 = sub_226AC4530(v151, v153, v220);
      v116 = v213;

      *(v149 + 4) = v154;
      *(v149 + 12) = 2112;
      v155 = v143;
      v156 = _swift_stdlib_bridgeErrorToNSError();
      *(v149 + 14) = v156;
      v157 = v210;
      *v210 = v156;
      _os_log_impl(&dword_226AB4000, v147, v148, "Failed to encrypt info for transaction %s with error: %@", v149, 0x16u);
      sub_226AC47B0(v157, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v157, -1, -1);
      v158 = v212;
      __swift_destroy_boxed_opaque_existential_0Tm(v212);
      MEMORY[0x22AA8BEE0](v158, -1, -1);
      v159 = v194;
      MEMORY[0x22AA8BEE0](v149, -1, -1);

      v36 = v150;
      v160 = v193;
      v161 = v207;
      v162 = v202;
    }

    else
    {

      v36 = v221;
      v215(v145, v221);
      v116 = v213;
      v160 = v193;
      v161 = v207;
      v162 = v202;
      v159 = v194;
    }

    swift_willThrow();
    sub_226B11B98(v198, v199);
    (*(v190 + 8))(v159, v191);
    (*(v188 + 8))(v160, v189);
    (*(v186 + 8))(v192, v187);
    (*(v208 + 8))(v161, v162);
    v115 = v211;
  }

  (v200)(v115, v116);
  v201(v203, v204);
  return (v215)(v217, v36);
}

uint64_t sub_226D635D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6C7AC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_226D6B3BC();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D63718, 0, 0);
}

uint64_t sub_226D63718()
{
  v31 = v0;
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[5];
  v5 = *(v3 + 16);
  v0[15] = v5;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[9];
  v9 = sub_226D6E07C();
  v0[17] = __swift_project_value_buffer(v9, qword_28105F5C0);
  v5(v6, v7, v8);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[13];
  v14 = v0[9];
  v15 = v0[10];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v16 = 136315138;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    v20 = *(v15 + 8);
    v20(v13, v14);
    v21 = sub_226AC4530(v17, v19, &v30);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226AB4000, v10, v11, "Registering for transaction %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x22AA8BEE0](v28, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  else
  {

    v20 = *(v15 + 8);
    v20(v13, v14);
  }

  v0[18] = v20;
  v22 = *(MEMORY[0x277CC7920] + 4);
  v29 = (*MEMORY[0x277CC7920] + MEMORY[0x277CC7920]);
  v23 = swift_task_alloc();
  v0[19] = v23;
  *v23 = v0;
  v23[1] = sub_226D639C8;
  v24 = v0[8];
  v25 = v0[3];
  v26 = v0[4];

  return v29(v24, v25);
}

uint64_t sub_226D639C8()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_226D63D44;
  }

  else
  {
    v3 = sub_226D63ADC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226D63ADC()
{
  v31 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[9];
  (*(v0[7] + 32))(v0[2], v0[8], v0[6]);
  v4(v5, v3, v6);
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9EC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v11 = v0[14];
  v12 = v0[12];
  v14 = v0[9];
  v13 = v0[10];
  if (v9)
  {
    v29 = v0[18];
    v15 = swift_slowAlloc();
    v28 = v11;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    v29(v12, v14);
    v20 = sub_226AC4530(v17, v19, &v30);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_226AB4000, v7, v8, "Registered for transaction %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
    MEMORY[0x22AA8BEE0](v15, -1, -1);

    v29(v28, v14);
  }

  else
  {

    v10(v12, v14);
    v10(v11, v14);
  }

  v22 = v0[13];
  v21 = v0[14];
  v24 = v0[11];
  v23 = v0[12];
  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_226D63D44()
{
  v37 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  (*(v0 + 120))(*(v0 + 88), *(v0 + 112), *(v0 + 72));
  v4 = v1;
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9CC();

  if (os_log_type_enabled(v5, v6))
  {
    v33 = *(v0 + 144);
    v34 = *(v0 + 160);
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v9 = *(v0 + 72);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v10 = 136315394;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
    v12 = sub_226D6F1CC();
    v14 = v13;
    v33(v7, v9);
    v15 = sub_226AC4530(v12, v14, &v36);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v34;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_226AB4000, v5, v6, "Failed to register for transaction %s with error: %@", v10, 0x16u);
    sub_226AC47B0(v11, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x22AA8BEE0](v35, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  else
  {
    v18 = *(v0 + 144);
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    v21 = *(v0 + 72);

    v18(v19, v21);
  }

  v22 = *(v0 + 160);
  v23 = *(v0 + 144);
  v24 = *(v0 + 104);
  v25 = *(v0 + 112);
  v27 = *(v0 + 88);
  v26 = *(v0 + 96);
  v29 = *(v0 + 64);
  v28 = *(v0 + 72);
  swift_willThrow();
  v23(v25, v28);

  v30 = *(v0 + 8);
  v31 = *(v0 + 160);

  return v30();
}

uint64_t sub_226D64004(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6E70C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_226D6C7AC();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_226D6C72C();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96D8, &qword_226D7E770);
  v2[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96E0, &qword_226D7E778);
  v2[16] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96E8, &qword_226D7E780);
  v2[19] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v18 = sub_226D6B3BC();
  v2[22] = v18;
  v19 = *(v18 - 8);
  v2[23] = v19;
  v20 = *(v19 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226D642D4, 0, 0);
}

uint64_t sub_226D642D4()
{
  v125 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 32);
  v5 = *(v3 + 16);
  *(v0 + 232) = v5;
  *(v0 + 240) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 176);
  v9 = sub_226D6E07C();
  *(v0 + 248) = __swift_project_value_buffer(v9, qword_28105F5C0);
  v117 = v5;
  v5(v7, v6, v8);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 216);
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v124[0] = v111;
    *v16 = 136315138;
    sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
    v17 = sub_226D6F1CC();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_226AC4530(v17, v19, v124);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226AB4000, v10, v11, "Starting register task for transaction %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v111);
    MEMORY[0x22AA8BEE0](v111, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v13, v15);
  }

  *(v0 + 256) = v20;
  v22 = v20;
  v23 = *(v0 + 224);
  v24 = *(v0 + 168);
  v25 = *(v0 + 152);
  v27 = *(v0 + 24);
  v26 = *(v0 + 32);
  v28 = *v27;
  v29 = sub_226D676AC();
  *(v0 + 264) = v29;
  v30 = swift_task_alloc();
  v30[2] = v26;
  v30[3] = v29;
  v30[4] = v23;
  v30[5] = v27;
  sub_226D6EB8C();
  v112 = v22;
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);

  sub_226AC40E8(v31, v32, &qword_27D7A96E8, &qword_226D7E780);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96F0, &unk_226D7E788);
  if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
  {
    v120 = v29;
    v34 = *(v0 + 224);
    v35 = *(v0 + 200);
    v36 = *(v0 + 176);
    sub_226AC47B0(*(v0 + 160), &qword_27D7A96E8, &qword_226D7E780);
    v117(v35, v34, v36);
    v37 = sub_226D6E05C();
    v38 = sub_226D6E9EC();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 200);
    v42 = *(v0 + 176);
    v41 = *(v0 + 184);
    v43 = *(v0 + 168);
    if (v39)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v124[0] = v45;
      *v44 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
      v46 = sub_226D6F1CC();
      v118 = v43;
      v48 = v47;
      v112(v40, v42);
      v49 = sub_226AC4530(v46, v48, v124);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_226AB4000, v37, v38, "Stopping register task for transaction %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x22AA8BEE0](v45, -1, -1);
      MEMORY[0x22AA8BEE0](v44, -1, -1);

      v50 = &qword_27D7A96E8;
      v51 = &qword_226D7E780;
      v52 = v118;
    }

    else
    {

      v22(v40, v42);
      v50 = &qword_27D7A96E8;
      v51 = &qword_226D7E780;
      v52 = v43;
    }

    goto LABEL_19;
  }

  v53 = *(v0 + 160);
  v55 = *(v0 + 136);
  v54 = *(v0 + 144);
  v56 = *(v0 + 128);
  *(v0 + 272) = *v53;
  sub_226D66AC4(v53 + *(v33 + 48), v54);
  sub_226AC40E8(v54, v55, &qword_27D7A96E0, &qword_226D7E778);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v58 = *(v0 + 136);
  if (EnumCaseMultiPayload == 1)
  {
    v59 = *(v0 + 112);
    **(v0 + 120) = *v58;
    swift_storeEnumTagMultiPayload();
    v70 = *(v0 + 264);
    v71 = *(v0 + 120);
    v72 = *(v0 + 32);
    v73 = [*(v0 + 272) objectID];
    v74 = swift_task_alloc();
    v74[2] = v71;
    v74[3] = v72;
    v74[4] = v73;
    v74[5] = v70;
    sub_226D6EB7C();
    v76 = *(v0 + 240);
    v75 = *(v0 + 248);
    v77 = *(v0 + 224);
    v78 = *(v0 + 232);
    v79 = *(v0 + 208);
    v80 = *(v0 + 176);

    v78(v79, v77, v80);
    v81 = sub_226D6E05C();
    v82 = sub_226D6E9EC();
    v83 = os_log_type_enabled(v81, v82);
    v84 = *(v0 + 272);
    v85 = *(v0 + 256);
    v86 = *(v0 + 208);
    v88 = *(v0 + 176);
    v87 = *(v0 + 184);
    v89 = *(v0 + 168);
    v90 = *(v0 + 144);
    if (v83)
    {
      v119 = *(v0 + 264);
      v122 = *(v0 + 144);
      v91 = swift_slowAlloc();
      v115 = v84;
      v92 = swift_slowAlloc();
      v124[0] = v92;
      *v91 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
      v93 = sub_226D6F1CC();
      v94 = v85;
      v95 = v93;
      v113 = v89;
      v97 = v96;
      v94(v86, v88);
      v98 = sub_226AC4530(v95, v97, v124);

      *(v91 + 4) = v98;
      _os_log_impl(&dword_226AB4000, v81, v82, "Finished register task for transaction %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v92);
      MEMORY[0x22AA8BEE0](v92, -1, -1);
      MEMORY[0x22AA8BEE0](v91, -1, -1);

      sub_226AC47B0(v122, &qword_27D7A96E0, &qword_226D7E778);
      v99 = v113;
    }

    else
    {

      v85(v86, v88);
      sub_226AC47B0(v90, &qword_27D7A96E0, &qword_226D7E778);
      v99 = v89;
    }

    sub_226AC47B0(v99, &qword_27D7A96E8, &qword_226D7E780);
    v52 = *(v0 + 120);
    v50 = &qword_27D7A96D8;
    v51 = &qword_226D7E770;
LABEL_19:
    sub_226AC47B0(v52, v50, v51);
    v100 = *(v0 + 216);
    v102 = *(v0 + 200);
    v101 = *(v0 + 208);
    v103 = *(v0 + 192);
    v104 = *(v0 + 168);
    v105 = *(v0 + 160);
    v107 = *(v0 + 136);
    v106 = *(v0 + 144);
    v114 = *(v0 + 120);
    v116 = *(v0 + 104);
    v108 = *(v0 + 80);
    v123 = *(v0 + 56);
    v109 = (*(v0 + 184) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (*(v0 + 256))(*(v0 + 224), *(v0 + 176));

    v110 = *(v0 + 8);

    return v110();
  }

  (*(*(v0 + 96) + 32))(*(v0 + 104), v58, *(v0 + 88));
  v60 = sub_226B5F900();
  *(v0 + 280) = v60;
  v61 = v60;
  v62 = *(v0 + 104);
  v63 = *(v0 + 32);
  v64 = swift_task_alloc();
  *(v0 + 288) = v64;
  v64[2] = v63;
  v64[3] = v62;
  v64[4] = v61;
  v65 = *(MEMORY[0x277CC7928] + 4);
  v121 = (*MEMORY[0x277CC7928] + MEMORY[0x277CC7928]);
  v66 = swift_task_alloc();
  *(v0 + 296) = v66;
  *v66 = v0;
  v66[1] = sub_226D650B8;
  v67 = *(v0 + 80);
  v68 = *(v0 + 64);

  return v121(v67, &unk_226D7E7A0, v64, v68);
}

uint64_t sub_226D650B8()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_226D65714;
  }

  else
  {
    v5 = *(v2 + 288);

    v4 = sub_226D651D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226D651D4()
{
  v76 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);

  (*(v5 + 32))(v3, v4, v6);
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 304);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v8 = *(v0 + 264);
  v9 = *(v0 + 120);
  v10 = *(v0 + 32);
  v11 = [*(v0 + 272) objectID];
  v12 = swift_task_alloc();
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = v11;
  v12[5] = v8;
  sub_226D6EB7C();
  if (v7)
  {
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v15 = *(v0 + 168);
    v16 = *(v0 + 144);
    v17 = *(v0 + 120);

    sub_226AC47B0(v16, &qword_27D7A96E0, &qword_226D7E778);
    sub_226AC47B0(v15, &qword_27D7A96E8, &qword_226D7E780);
    sub_226AC47B0(v17, &qword_27D7A96D8, &qword_226D7E770);
    v18 = *(v0 + 216);
    v20 = *(v0 + 200);
    v19 = *(v0 + 208);
    v21 = *(v0 + 192);
    v22 = *(v0 + 168);
    v23 = *(v0 + 160);
    v24 = *(v0 + 136);
    v25 = *(v0 + 144);
    v65 = *(v0 + 120);
    v66 = *(v0 + 104);
    v26 = *(v0 + 80);
    v71 = *(v0 + 56);
    v27 = (*(v0 + 184) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (*(v0 + 256))(*(v0 + 224), *(v0 + 176));

    v28 = *(v0 + 8);
  }

  else
  {
    v30 = *(v0 + 240);
    v29 = *(v0 + 248);
    v31 = *(v0 + 224);
    v32 = *(v0 + 232);
    v33 = *(v0 + 208);
    v34 = *(v0 + 176);

    v32(v33, v31, v34);
    v35 = sub_226D6E05C();
    v36 = sub_226D6E9EC();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 272);
    v39 = *(v0 + 256);
    v40 = *(v0 + 208);
    v42 = *(v0 + 176);
    v41 = *(v0 + 184);
    v43 = *(v0 + 168);
    v44 = *(v0 + 144);
    if (v37)
    {
      v72 = *(v0 + 264);
      v73 = *(v0 + 144);
      v45 = swift_slowAlloc();
      v69 = v38;
      v46 = swift_slowAlloc();
      v75 = v46;
      *v45 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
      v47 = sub_226D6F1CC();
      v48 = v39;
      v49 = v47;
      v67 = v43;
      v51 = v50;
      v48(v40, v42);
      v52 = sub_226AC4530(v49, v51, &v75);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_226AB4000, v35, v36, "Finished register task for transaction %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x22AA8BEE0](v46, -1, -1);
      MEMORY[0x22AA8BEE0](v45, -1, -1);

      sub_226AC47B0(v73, &qword_27D7A96E0, &qword_226D7E778);
      v53 = v67;
    }

    else
    {

      v39(v40, v42);
      sub_226AC47B0(v44, &qword_27D7A96E0, &qword_226D7E778);
      v53 = v43;
    }

    sub_226AC47B0(v53, &qword_27D7A96E8, &qword_226D7E780);
    sub_226AC47B0(*(v0 + 120), &qword_27D7A96D8, &qword_226D7E770);
    v54 = *(v0 + 216);
    v56 = *(v0 + 200);
    v55 = *(v0 + 208);
    v57 = *(v0 + 192);
    v58 = *(v0 + 168);
    v59 = *(v0 + 160);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v68 = *(v0 + 120);
    v70 = *(v0 + 104);
    v62 = *(v0 + 80);
    v74 = *(v0 + 56);
    v63 = (*(v0 + 184) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (*(v0 + 256))(*(v0 + 224), *(v0 + 176));

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_226D65714()
{
  v91 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  v3 = *(v0 + 304);
  *(v0 + 16) = v3;
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 224);
    v10 = *(v0 + 232);
    v11 = *(v0 + 192);
    v12 = *(v0 + 176);

    v10(v11, v9, v12);
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9CC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 272);
    v17 = *(v0 + 256);
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v20 = *(v0 + 168);
    v21 = *(v0 + 176);
    v22 = *(v0 + 144);
    if (v15)
    {
      v85 = *(v0 + 264);
      v87 = *(v0 + 144);
      v23 = swift_slowAlloc();
      v82 = v16;
      v24 = swift_slowAlloc();
      v90[0] = v24;
      *v23 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
      v25 = sub_226D6F1CC();
      v26 = v17;
      v27 = v25;
      v79 = v20;
      v29 = v28;
      v26(v18, v21);
      v30 = sub_226AC4530(v27, v29, v90);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_226AB4000, v13, v14, "Register task for transaction %s was cancelled", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
      MEMORY[0x22AA8BEE0](v23, -1, -1);

      sub_226AC47B0(v87, &qword_27D7A96E0, &qword_226D7E778);
      v31 = v79;
    }

    else
    {

      v17(v18, v21);
      sub_226AC47B0(v22, &qword_27D7A96E0, &qword_226D7E778);
      v31 = v20;
    }

    sub_226AC47B0(v31, &qword_27D7A96E8, &qword_226D7E780);
    v40 = *(v0 + 96);
    v39 = *(v0 + 104);
    v41 = *(v0 + 88);
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

    (*(v40 + 8))(v39, v41);
  }

  else
  {
    v32 = *(v0 + 112);
    v33 = *(v0 + 120);

    *v33 = v3;
    swift_storeEnumTagMultiPayload();
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    v34 = *(v0 + 264);
    v35 = *(v0 + 120);
    v36 = *(v0 + 32);
    v37 = [*(v0 + 272) objectID];
    v38 = swift_task_alloc();
    v38[2] = v35;
    v38[3] = v36;
    v38[4] = v37;
    v38[5] = v34;
    sub_226D6EB7C();
    v43 = *(v0 + 240);
    v42 = *(v0 + 248);
    v44 = *(v0 + 224);
    v45 = *(v0 + 232);
    v46 = *(v0 + 208);
    v47 = *(v0 + 176);

    v45(v46, v44, v47);
    v48 = sub_226D6E05C();
    v49 = sub_226D6E9EC();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 272);
    v52 = *(v0 + 256);
    v53 = *(v0 + 208);
    v55 = *(v0 + 176);
    v54 = *(v0 + 184);
    v56 = *(v0 + 168);
    v57 = *(v0 + 144);
    if (v50)
    {
      v86 = *(v0 + 264);
      v88 = *(v0 + 144);
      v58 = swift_slowAlloc();
      v83 = v51;
      v59 = swift_slowAlloc();
      v90[0] = v59;
      *v58 = 136315138;
      sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
      v60 = sub_226D6F1CC();
      v61 = v52;
      v62 = v60;
      v80 = v56;
      v64 = v63;
      v61(v53, v55);
      v65 = sub_226AC4530(v62, v64, v90);

      *(v58 + 4) = v65;
      _os_log_impl(&dword_226AB4000, v48, v49, "Finished register task for transaction %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      MEMORY[0x22AA8BEE0](v59, -1, -1);
      MEMORY[0x22AA8BEE0](v58, -1, -1);

      sub_226AC47B0(v88, &qword_27D7A96E0, &qword_226D7E778);
      v66 = v80;
    }

    else
    {

      v52(v53, v55);
      sub_226AC47B0(v57, &qword_27D7A96E0, &qword_226D7E778);
      v66 = v56;
    }

    sub_226AC47B0(v66, &qword_27D7A96E8, &qword_226D7E780);
    sub_226AC47B0(*(v0 + 120), &qword_27D7A96D8, &qword_226D7E770);
  }

  v67 = *(v0 + 216);
  v69 = *(v0 + 200);
  v68 = *(v0 + 208);
  v70 = *(v0 + 192);
  v71 = *(v0 + 168);
  v72 = *(v0 + 160);
  v74 = *(v0 + 136);
  v73 = *(v0 + 144);
  v81 = *(v0 + 120);
  v84 = *(v0 + 104);
  v75 = *(v0 + 80);
  v89 = *(v0 + 56);
  v76 = (*(v0 + 184) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 256))(*(v0 + 224), *(v0 + 176));

  v77 = *(v0 + 8);

  return v77();
}

void *sub_226D65ED8@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v53 = a1;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v4 = sub_226D6C3BC();
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96E0, &qword_226D7E778);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v47 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = sub_226D6B3BC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v54;
  result = sub_226D5F854(v53);
  if (!v24)
  {
    v54 = 0;
    if (result)
    {
      v26 = *(v51 + 88);
      v27 = result;
      v28 = v54;
      sub_226D5FDB0(v26, v8);
      if (v28)
      {

        v54 = 0;
        *v15 = v28;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_226D61E5C(v27, v8, v12);
        v54 = 0;

        (*(v49 + 8))(v8, v48);
        swift_storeEnumTagMultiPayload();
        sub_226D66AC4(v12, v15);
      }

      sub_226D66AC4(v15, v18);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96F0, &unk_226D7E788);
      v43 = *(v42 + 48);
      v44 = v52;
      *v52 = v27;
      sub_226D66AC4(v18, v44 + v43);
      return (*(*(v42 - 8) + 56))(v44, 0, 1, v42);
    }

    else
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v29 = sub_226D6E07C();
      __swift_project_value_buffer(v29, qword_28105F5C0);
      v30 = v20;
      v31 = *(v20 + 16);
      v32 = v23;
      v33 = v19;
      v31(v23, v50, v19);
      v34 = sub_226D6E05C();
      v35 = sub_226D6E9CC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v55 = v37;
        *v36 = 136315138;
        sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
        v38 = sub_226D6F1CC();
        v40 = v39;
        (*(v30 + 8))(v32, v33);
        v41 = sub_226AC4530(v38, v40, &v55);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_226AB4000, v34, v35, "Pending registration for transaction %s not found", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x22AA8BEE0](v37, -1, -1);
        MEMORY[0x22AA8BEE0](v36, -1, -1);
      }

      else
      {

        (*(v30 + 8))(v23, v33);
      }

      v45 = v52;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96F0, &unk_226D7E788);
      return (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
    }
  }

  return result;
}

uint64_t sub_226D66400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_226AD827C;

  return sub_226D635D4(a1, a3, a4);
}

uint64_t sub_226D664B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16[0] = a4;
  v16[1] = a2;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96D8, &qword_226D7E770);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v16 - v13;
  sub_226AC40E8(a1, v16 - v13, &qword_27D7A96D8, &qword_226D7E770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_226AC47B0(v14, &qword_27D7A96D8, &qword_226D7E770);
    sub_226D6D46C();
    sub_226D604B8(a3, v10, v16[0]);
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    sub_226D616B0(a3, v16[0]);
    return sub_226AC47B0(v14, &qword_27D7A96D8, &qword_226D7E770);
  }
}

uint64_t sub_226D6668C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226D6B3BC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for OrderWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226D6670C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v1 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71840;
  v5 = sub_226D6B3BC();
  (*(*(v5 - 8) + 16))(v4 + v3, v0, v5);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v6 = sub_226B1FBC0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_226D66864(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226D64004(a1);
}

uint64_t sub_226D668F8(uint64_t a1)
{
  result = sub_226D66C08(&qword_27D7A96C0, type metadata accessor for PrismWebServiceRegisterTransactionTask);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226D66950()
{
  sub_226D6EEFC();

  sub_226D6B3BC();
  sub_226D66C08(&qword_27D7A8B08, MEMORY[0x277CC7ED0]);
  v0 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v0);

  return 0xD00000000000001ELL;
}

uint64_t sub_226D66A20(uint64_t a1)
{
  *(a1 + 8) = sub_226D66C08(&qword_27D7A96C8, type metadata accessor for PrismWebServiceRegisterTransactionTask);
  result = sub_226D66C08(&qword_27D7A96D0, type metadata accessor for PrismWebServiceRegisterTransactionTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226D66AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A96E0, &qword_226D7E778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226D66B54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226D66400(a1, v4, v5, v6);
}

uint64_t sub_226D66C08(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226D66C78()
{
  sub_226D6B3BC();
  if (v0 <= 0x3F)
  {
    sub_226B20350();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}