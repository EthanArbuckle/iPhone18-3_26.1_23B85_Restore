uint64_t sub_226B03154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B031C4()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);

    sub_226D6E80C();
  }

  v2 = *(v0 + 112);

  v3 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_226B03268()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_226D6EA9C();
  [v0 postNotificationName:v1 object:0 userInfo:0 deliverImmediately:1];
}

uint64_t sub_226B032F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v10 = sub_226D6E07C();
  __swift_project_value_buffer(v10, qword_28105F5C0);
  v11 = sub_226D6E05C();
  v12 = sub_226D6E9EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_226AB4000, v11, v12, "Starting to observe persistent store remote change notifications", v13, 2u);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  if (*(v3 + 120))
  {
    v14 = *(v3 + 120);

    sub_226D6E80C();
  }

  v15 = sub_226D6E79C();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  v17[5] = a1;
  v17[6] = a2;

  v18 = sub_226B60364(0, 0, v9, &unk_226D71D78, v17);
  v19 = *(v3 + 120);
  *(v3 + 120) = v18;
}

uint64_t sub_226B03534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_226D6CD9C();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67B8, &unk_226D71D80) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v11 = sub_226D6EAEC();
  v6[13] = v11;
  v12 = *(v11 - 8);
  v6[14] = v12;
  v13 = *(v12 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B0368C, 0, 0);
}

uint64_t sub_226B0368C()
{
  v1 = v0[15];
  v2 = v0[6];
  v0[16] = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x277CBE1A8];
  v0[17] = sub_226D6EAFC();

  sub_226D6EADC();
  swift_beginAccess();
  v4 = *MEMORY[0x277CBE310];
  v0[18] = *MEMORY[0x277CBE188];
  v0[19] = v4;
  v0[20] = *MEMORY[0x277CBE150];
  v5 = sub_226B040B4(&qword_28105F440, MEMORY[0x277CC9D68]);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_226B03804;
  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[13];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_226B03804()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_226B03C28;
  }

  else
  {
    v3 = sub_226B03918;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B03934()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

LABEL_15:
    v38 = *(v0 + 120);
    v39 = *(v0 + 88);
    v40 = *(v0 + 96);

    v41 = *(v0 + 8);

    return v41();
  }

  v6 = *(v0 + 48);
  (*(v3 + 32))(*(v0 + 88), v1, v2);
  if (!swift_weakLoadStrong())
  {
    v31 = *(v0 + 136);
    v33 = *(v0 + 112);
    v32 = *(v0 + 120);
    v34 = *(v0 + 104);
    v36 = *(v0 + 80);
    v35 = *(v0 + 88);
    v37 = *(v0 + 72);

    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v32, v34);
    goto LABEL_15;
  }

  v7 = *(v0 + 144);
  v8 = *(v0 + 88);
  v9 = sub_226D6CD8C();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = sub_226D6E39C();
  sub_226B03CB4(v11, v12, v10);
  v14 = v13;

  if (v14 & 1) != 0 || (v15 = *(v0 + 152), v16 = sub_226D6E39C(), sub_226B03CB4(v16, v17, v10), v19 = v18, , (v19))
  {
  }

  else
  {
    v42 = *(v0 + 160);
    v43 = sub_226D6E39C();
    sub_226B03CB4(v43, v44, v10);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(v0 + 64);
  (*(v0 + 56))(v20);
LABEL_11:
  v23 = *(v0 + 80);
  v22 = *(v0 + 88);
  v24 = *(v0 + 72);

  (*(v23 + 8))(v22, v24);
  v25 = sub_226B040B4(&qword_28105F440, MEMORY[0x277CC9D68]);
  v26 = *(MEMORY[0x277D856D0] + 4);
  v27 = swift_task_alloc();
  *(v0 + 168) = v27;
  *v27 = v0;
  v27[1] = sub_226B03804;
  v28 = *(v0 + 120);
  v29 = *(v0 + 96);
  v30 = *(v0 + 104);

  return MEMORY[0x282200308](v29, v30, v25);
}

uint64_t sub_226B03C28()
{
  *(v0 + 40) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_226B03CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_226D6EE8C();
  if (!*(a3 + 16) || (v4 = sub_226C2FE4C(v20), (v5 & 1) == 0))
  {
    sub_226AE5030(v20);
    return;
  }

  sub_226AC4708(*(a3 + 56) + 32 * v4, &v19);
  sub_226AE5030(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67C0, &unk_226D71D90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_226D6EDBC();
    sub_226B04068();
    sub_226B040B4(&qword_27D7A67D0, sub_226B04068);
    sub_226D6E8DC();
    v6 = v20[0];
    v7 = v20[1];
    v8 = v20[2];
    v9 = v20[3];
    v10 = v20[4];
  }

  else
  {
    v9 = 0;
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);
  }

  while (v6 < 0)
  {
    if (!sub_226D6EE2C())
    {
      goto LABEL_27;
    }

    sub_226B04068();
    swift_dynamicCast();
    v16 = v19;
    if (!v19)
    {
      goto LABEL_27;
    }

LABEL_21:
    sub_226D6751C();
    if (swift_dynamicCastClass() || (sub_226D6990C(), swift_dynamicCastClass()))
    {

LABEL_27:
      sub_226AD3C20();
      return;
    }

    sub_226D6B1CC();
    v17 = swift_dynamicCastClass();

    if (v17)
    {
      goto LABEL_27;
    }
  }

  v14 = v9;
  v15 = v10;
  if (v10)
  {
LABEL_17:
    v10 = (v15 - 1) & v15;
    v16 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v9 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v9 >= ((v8 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v15 = *(v7 + 8 * v9);
    ++v14;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_226B03FA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_226AD827C;

  return sub_226B03534(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_226B04068()
{
  result = qword_27D7A67C8;
  if (!qword_27D7A67C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A67C8);
  }

  return result;
}

uint64_t sub_226B040B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B040FC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_226AE5134(v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v15))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 56 * (v9 | (v8 << 6));
    v12 = *(v10 + 16);
    v11 = *(v10 + 32);
    v13 = *v10;
    v17 = *(v10 + 48);
    v16[1] = v12;
    v16[2] = v11;
    v16[0] = v13;
    sub_226AE50D8(v16, v14);
    sub_226C25434(v14, v16);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_226B04214(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_226D6EDBC();
    sub_226D6C02C();
    sub_226B11AFC(&qword_27D7A6820, MEMORY[0x277CC81E0]);
    sub_226D6E8DC();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_226AD3C20();
      return;
    }

    while (1)
    {
      sub_226C2594C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_226D6EE2C())
      {
        sub_226D6C02C();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_226B04404(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_226C24D14(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_226B04508(uint64_t a1)
{
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_226C2514C(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226B04718(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_226AE5030(v12))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_226AE4FD4(*(v1 + 48) + 40 * (v9 | (v8 << 6)), v13);
    v10[0] = v13[0];
    v10[1] = v13[1];
    v11 = v14;
    sub_226C26A54(v12, v10);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226B0481C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader____lazy_storage___mapsInsightsServiceTask;
  if (*(v0 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader____lazy_storage___mapsInsightsServiceTask))
  {
    v6 = *(v0 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader____lazy_storage___mapsInsightsServiceTask);
  }

  else
  {
    v7 = sub_226D6E79C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v0;

    v6 = sub_226C41BF0(0, 0, v4, &unk_226D71F18, v8);
    v9 = *(v0 + v5);
    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_226B04958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return MEMORY[0x2822009F8](sub_226B04978, 0, 0);
}

uint64_t sub_226B04978()
{
  v1 = *(v0 + 64);
  sub_226D68FEC();
  sub_226AE532C(v1 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_extensionFinder, v0 + 16);
  v2 = *(MEMORY[0x277CC76D0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_226B04A34;

  return MEMORY[0x2821185B0](v0 + 16);
}

uint64_t sub_226B04A34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_226B04B80;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_226B04B5C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226B04B98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 160) = a4;
  *(v4 + 112) = a2;
  *(v4 + 120) = a3;
  return MEMORY[0x2822009F8](sub_226B04BBC, 0, 0);
}

uint64_t sub_226B04BBC()
{
  v14 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    sub_226D6D52C();
    sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0]);
    v8 = sub_226D6E8AC();
    v10 = sub_226AC4530(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_226AB4000, v3, v4, "Fetching transaction insights for: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v11 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_226B04D64, v11, 0);
}

uint64_t sub_226B04D64()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_inProgressTransactionIDs;
  *(v0 + 128) = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_inProgressTransactionIDs;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v0 + 120);
  if (*(*(v2 + v3) + 16) <= v4 >> 3)
  {
    v16 = *(v0 + 120);

    sub_226D53B1C(v9);

    v8 = v16;
  }

  else
  {
    v6 = *(v0 + 120);

    v8 = sub_226D53F8C(v7, v5);
  }

  *(v0 + 136) = v8;
  if (*(v8 + 16))
  {
    swift_beginAccess();

    sub_226B04508(v10);
    swift_endAccess();
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_226B04F14;
    v12 = *(v0 + 160);
    v13 = *(v0 + 112);

    return sub_226B05178(v8, v13, v12);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_226B04F14()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_226B050DC;
  }

  else
  {
    v6 = sub_226B05040;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226B05040()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  swift_beginAccess();
  sub_226D53B1C(v1);
  swift_endAccess();
  v4 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t sub_226B050DC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  swift_beginAccess();
  sub_226D53B1C(v1);
  swift_endAccess();

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_226B05178(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 136) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_226D6891C();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B0523C, 0, 0);
}

uint64_t sub_226B0523C()
{
  v9 = v0;
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_226C24B18(*(v1 + 16), 0);
    v4 = *(sub_226D6D52C() - 8);
    v5 = sub_226C3ACB8(&v8, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, v1);

    sub_226AD3C20();
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v0[7] = v3;
  v6 = v0[3];

  return MEMORY[0x2822009F8](sub_226B0536C, v6, 0);
}

void sub_226B0539C()
{
  v26 = v0;
  v1 = *(v0 + 64);
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = sub_226B114F4(0, *(*(v0 + 56) + 16), v1, *(v0 + 56), *(v0 + 64));
  *(v0 + 72) = v2;

  v3 = *(v2 + 16);
  *(v0 + 80) = v3;
  if (v3)
  {
    *(v0 + 88) = 0;
    v4 = *(v0 + 72);
    if (*(v4 + 16))
    {
      v5 = *(v4 + 32);

      v7 = sub_226AE45DC(v6);
      *(v0 + 96) = v7;

      v8 = swift_task_alloc();
      *(v0 + 104) = v8;
      *v8 = v0;
      v8[1] = sub_226B0564C;
      v9 = *(v0 + 48);
      v10 = *(v0 + 136);
      v11 = *(v0 + 24);

      sub_226B05C98(v9, v7, v10);
      return;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v12 = *(v0 + 72);
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);

  v15 = sub_226D6E05C();
  v16 = sub_226D6E9EC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 16);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    sub_226D6D52C();
    sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0]);
    v20 = sub_226D6E8AC();
    v22 = sub_226AC4530(v20, v21, &v25);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_226AB4000, v15, v16, "Fetched and stored transaction insights for: %s.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x22AA8BEE0](v19, -1, -1);
    MEMORY[0x22AA8BEE0](v18, -1, -1);
  }

  v23 = *(v0 + 48);

  v24 = *(v0 + 8);

  v24();
}

uint64_t sub_226B0564C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  v2[14] = v0;

  v5 = v2[12];
  if (v0)
  {
    v6 = v2[9];

    return MEMORY[0x2822009F8](sub_226B05BB8, 0, 0);
  }

  else
  {

    v7 = swift_task_alloc();
    v2[15] = v7;
    *v7 = v4;
    v7[1] = sub_226B057F8;
    v8 = v2[3];
    v9 = v2[6];

    return sub_226B073DC(v9);
  }
}

uint64_t sub_226B057F8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_226B05C1C;
  }

  else
  {
    v5 = sub_226B05914;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226B05914()
{
  v27 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88) + 1;
  result = (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  if (v2 == v1)
  {
    v4 = *(v0 + 72);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);

    v7 = sub_226D6E05C();
    v8 = sub_226D6E9EC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 16);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136315138;
      sub_226D6D52C();
      sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0]);
      v12 = sub_226D6E8AC();
      v14 = sub_226AC4530(v12, v13, &v26);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_226AB4000, v7, v8, "Fetched and stored transaction insights for: %s.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }

    v15 = *(v0 + 48);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v17 = *(v0 + 88) + 1;
    *(v0 + 88) = v17;
    v18 = *(v0 + 72);
    if (v17 >= *(v18 + 16))
    {
      __break(1u);
    }

    else
    {
      v19 = *(v18 + 8 * v17 + 32);

      v21 = sub_226AE45DC(v20);
      *(v0 + 96) = v21;

      v22 = swift_task_alloc();
      *(v0 + 104) = v22;
      *v22 = v0;
      v22[1] = sub_226B0564C;
      v23 = *(v0 + 48);
      v24 = *(v0 + 136);
      v25 = *(v0 + 24);

      return sub_226B05C98(v23, v21, v24);
    }
  }

  return result;
}

uint64_t sub_226B05BB8()
{
  v1 = v0[14];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226B05C1C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[16];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226B05C98(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = v3;
  *(v4 + 336) = a3;
  *(v4 + 120) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v6 = sub_226D66DFC();
  *(v4 + 176) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v8 = sub_226D6D4AC();
  *(v4 + 192) = v8;
  v9 = *(v8 - 8);
  *(v4 + 200) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  v11 = sub_226D6B32C();
  *(v4 + 232) = v11;
  v12 = *(v11 - 8);
  *(v4 + 240) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v14 = sub_226D6C2CC();
  *(v4 + 256) = v14;
  v15 = *(v14 - 8);
  *(v4 + 264) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B05EBC, v3, 0);
}

uint64_t sub_226B05EBC()
{
  v1 = *(*(v0 + 136) + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_requestBuilder);
  *(v0 + 280) = v1;

  return MEMORY[0x2822009F8](sub_226B05F3C, v1, 0);
}

uint64_t sub_226B05F3C()
{
  v1 = *(v0 + 280);
  sub_226BEEE4C(*(v0 + 128), *(v0 + 336), *(v0 + 272));
  *(v0 + 288) = 0;
  v2 = *(v0 + 280);
  v3 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_226B05FDC, v3, 0);
}

uint64_t sub_226B05FDC()
{
  v1 = v0[34];
  v2 = v0[17];
  v3 = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_environment;
  v0[37] = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_environment;
  v4 = *(v2 + v3 + 32);
  __swift_project_boxed_opaque_existential_1((v2 + v3), *(v2 + v3 + 24));
  v5 = sub_226D6BB2C();
  v0[38] = v5;
  v6 = swift_task_alloc();
  v0[39] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v7 = *(MEMORY[0x277CC7D90] + 4);
  v8 = swift_task_alloc();
  v0[40] = v8;
  v9 = sub_226D6891C();
  *v8 = v0;
  v8[1] = sub_226B060F4;
  v10 = v0[15];

  return MEMORY[0x282119B28](v10, &unk_226D71F00, v6, v9);
}

uint64_t sub_226B060F4()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v9 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = sub_226B06418;
  }

  else
  {
    v6 = *(v2 + 312);
    v7 = *(v2 + 136);

    v5 = sub_226B0621C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_226B0621C()
{
  v1 = v0[38];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v9 = v0[23];
  v10 = v0[21];
  v13 = v0[20];
  v14 = v0[19];
  v15 = v0[18];

  (*(v3 + 8))(v2, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_226B0632C()
{
  v13 = v0[36];
  v1 = v0[34];
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[18];
  v10 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_226B06418()
{
  v159 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 224);
  v149 = (v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);
  v8 = *(v0 + 192);
  v9 = *(v0 + 200);
  v10 = *(v0 + 184);
  v151 = *(v0 + 176);

  v150 = *(v4 + 104);
  v150(v3, *MEMORY[0x277CC7E78], v6);
  sub_226D6D46C();
  sub_226D6D3DC();
  v155 = *(v9 + 8);
  v155(v7, v8);
  v157 = v0;
  *(v0 + 88) = v1;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v12 = *(v0 + 176);
  v13 = *(v0 + 184);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v16 = *(v0 + 160);
        v15 = *(v0 + 168);
        v17 = *(v0 + 128);
        v18 = *(v0 + 136);
        sub_226AFD80C(v13, v15, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC40E8(v15, v16, &qword_27D7A8BE0, &unk_226D718F0);

        v19 = sub_226D6E05C();
        v20 = sub_226D6E9CC();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = *(v0 + 200);
          v152 = *(v0 + 192);
          v22 = *(v0 + 152);
          v148 = *(v0 + 160);
          v23 = *(v0 + 128);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v158[0] = v25;
          *v24 = 136315394;
          sub_226D6D52C();
          sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0]);
          v26 = sub_226D6E8AC();
          v28 = sub_226AC4530(v26, v27, v158);

          *(v24 + 4) = v28;
          *(v24 + 12) = 2080;
          sub_226AC40E8(v148, v22, &qword_27D7A8BE0, &unk_226D718F0);
          if ((*(v21 + 48))(v22, 1, v152) == 1)
          {
            sub_226AC47B0(v157[19], &qword_27D7A8BE0, &unk_226D718F0);
            v29 = 0xE300000000000000;
            v30 = 7104878;
          }

          else
          {
            v102 = v157[24];
            v103 = v157[19];
            v30 = sub_226D6D48C();
            v29 = v104;
            v155(v103, v102);
          }

          v105 = v157[30];
          v153 = v157[31];
          v106 = v157[29];
          sub_226AC47B0(v157[20], &qword_27D7A8BE0, &unk_226D718F0);
          v107 = sub_226AC4530(v30, v29, v158);

          *(v24 + 14) = v107;
          _os_log_impl(&dword_226AB4000, v19, v20, "Too many requests (429) classifying transactions %s, retry after: %s", v24, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v25, -1, -1);
          MEMORY[0x22AA8BEE0](v24, -1, -1);

          (*(v105 + 8))(v153, v106);
        }

        else
        {
          v99 = *(v0 + 240);
          v98 = *(v0 + 248);
          v100 = *(v0 + 232);
          v101 = *(v0 + 160);

          sub_226AC47B0(v101, &qword_27D7A8BE0, &unk_226D718F0);
          (*(v99 + 8))(v98, v100);
        }

        v109 = v157 + 18;
        v108 = v157[18];
        v110 = v157[24];
        v111 = v157[25];
        v112 = v157[21];
        v150(v157[31], *MEMORY[0x277CC7E90], v157[29]);
        sub_226AFD80C(v112, v108, &qword_27D7A8BE0, &unk_226D718F0);
        v113 = *(v111 + 48);
        v114 = (v111 + 32);
        if (v113(v108, 1, v110) == 1)
        {
          sub_226AC47B0(*v109, &qword_27D7A8BE0, &unk_226D718F0);
          v109 = v149;
        }

        else
        {
          v155(v157[28], v157[24]);
        }

        v115 = *v109;
        v116 = v157[28];
        v117 = v157[26];
        v118 = v157[24];
        v119 = *v114;
        (*v114)(v117, v115, v118);
        v119(v116, v117, v118);
        v97 = v157[11];
        goto LABEL_31;
      }

      goto LABEL_12;
    }

    v68 = *(v0 + 128);
    v69 = *(v0 + 136);
    v71 = *v13;
    v70 = v13[1];

    v72 = sub_226D6E05C();
    v73 = sub_226D6E9CC();

    if (!os_log_type_enabled(v72, v73))
    {
      goto LABEL_21;
    }

    v74 = *(v0 + 128);
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v158[0] = v76;
    *v75 = 136315650;
    sub_226D6D52C();
    sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0]);
    v77 = sub_226D6E8AC();
    v79 = sub_226AC4530(v77, v78, v158);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2080;
    v80 = sub_226D6F3EC();
    v82 = sub_226AC4530(v80, v81, v158);

    *(v75 + 14) = v82;
    *(v75 + 22) = 2080;
    v83 = sub_226D6F3EC();
    v85 = sub_226AC4530(v83, v84, v158);

    *(v75 + 24) = v85;
    _os_log_impl(&dword_226AB4000, v72, v73, "Invalid response classifying transactions %s: expected %s, actual %s", v75, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v76, -1, -1);
    v86 = v75;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v88 = *(v0 + 128);
    v87 = *(v0 + 136);
    v89 = *v13;

    v72 = sub_226D6E05C();
    v90 = sub_226D6E9CC();

    if (!os_log_type_enabled(v72, v90))
    {
LABEL_21:

LABEL_22:
      v97 = *(v0 + 88);
LABEL_31:

      goto LABEL_32;
    }

    v91 = *(v0 + 128);
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v158[0] = v93;
    *v92 = 136315394;
    sub_226D6D52C();
    sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0]);
    v94 = sub_226D6E8AC();
    v96 = sub_226AC4530(v94, v95, v158);

    *(v92 + 4) = v96;
    *(v92 + 12) = 2048;
    *(v92 + 14) = v89;
    _os_log_impl(&dword_226AB4000, v72, v90, "Unexpected response classifying transactions %s, status code: %ld", v92, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v93);
    MEMORY[0x22AA8BEE0](v93, -1, -1);
    v86 = v92;
LABEL_20:
    MEMORY[0x22AA8BEE0](v86, -1, -1);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v32 = *(v0 + 128);
    v31 = *(v0 + 136);
    v33 = *v13;

    v34 = v33;
    v35 = sub_226D6E05C();
    v36 = sub_226D6E9CC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 128);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v158[0] = v39;
      *v38 = 136315394;
      sub_226D6D52C();
      sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0]);
      v40 = sub_226D6E8AC();
      v42 = sub_226AC4530(v40, v41, v158);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      swift_getErrorValue();
      v44 = *(v0 + 64);
      v43 = *(v0 + 72);
      v45 = *(v0 + 80);
      v46 = sub_226D6F26C();
      v48 = sub_226AC4530(v46, v47, v158);

      *(v38 + 14) = v48;
      _os_log_impl(&dword_226AB4000, v35, v36, "Invalid data classifying transactions %s: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v39, -1, -1);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
    }

    else
    {
    }

    goto LABEL_22;
  }

LABEL_12:
  sub_226B11CB8(v13, MEMORY[0x277CC6528]);
LABEL_13:
  v49 = *(v0 + 328);
  v51 = *(v0 + 128);
  v50 = *(v0 + 136);

  v52 = v49;

  v53 = sub_226D6E05C();
  v54 = sub_226D6E9CC();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = *(v0 + 328);
    v56 = *(v0 + 128);
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v158[0] = v58;
    *v57 = 136315394;
    sub_226D6D52C();
    sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0]);
    v59 = sub_226D6E8AC();
    v61 = sub_226AC4530(v59, v60, v158);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    swift_getErrorValue();
    v63 = *(v0 + 40);
    v62 = *(v0 + 48);
    v64 = *(v0 + 56);
    v65 = sub_226D6F26C();
    v67 = sub_226AC4530(v65, v66, v158);

    *(v57 + 14) = v67;
    _os_log_impl(&dword_226AB4000, v53, v54, "Unexpected error classifying transactions %s: %s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v58, -1, -1);
    MEMORY[0x22AA8BEE0](v57, -1, -1);
  }

LABEL_32:
  v120 = v157[31];
  v121 = v157[28];
  v122 = v157[16];
  v123 = (v157[17] + v157[37]);
  v124 = v123[4];
  __swift_project_boxed_opaque_existential_1(v123, v123[3]);
  v125 = sub_226D6BB3C();
  v126 = swift_task_alloc();
  v126[2] = v125;
  v126[3] = v122;
  v126[4] = v121;
  v126[5] = v120;
  sub_226D6EB7C();

  v127 = v157[41];
  v128 = v157[38];
  v129 = v157[33];
  v154 = v157[34];
  v131 = v157[31];
  v130 = v157[32];
  v133 = v157[29];
  v132 = v157[30];
  v134 = v157[28];
  v135 = v157[24];
  swift_willThrow();

  v155(v134, v135);
  (*(v132 + 8))(v131, v133);
  (*(v129 + 8))(v154, v130);
  v156 = v157[41];
  v136 = v157[34];
  v137 = v157[31];
  v139 = v157[27];
  v138 = v157[28];
  v140 = v157[26];
  v141 = v157[23];
  v143 = v157[20];
  v142 = v157[21];
  v144 = v157[18];
  v145 = v157[19];

  v146 = v157[1];

  return v146();
}

uint64_t sub_226B07328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277CC7D70] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226AD827C;

  return MEMORY[0x282119B08](a1, a3);
}

uint64_t sub_226B073DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D68AAC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_226D689AC();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_226D68B2C();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6828, &qword_226D782F0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = sub_226D68B6C();
  v2[14] = v13;
  v14 = *(v13 - 8);
  v2[15] = v14;
  v15 = *(v14 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B075E8, v1, 0);
}

uint64_t sub_226B075E8()
{
  v1 = *(v0 + 16);
  result = sub_226D6890C();
  *(v0 + 136) = result;
  v3 = *(result + 16);
  v4 = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_environment;
  *(v0 + 144) = v3;
  *(v0 + 152) = v4;
  if (v3)
  {
    v5 = *(v0 + 120);
    *(v0 + 256) = *MEMORY[0x277CC7598];
    *(v0 + 260) = *MEMORY[0x277CC7588];
    *(v0 + 264) = *MEMORY[0x277CC7590];
    *(v0 + 160) = 0;
    if (*(result + 16))
    {
      (*(v5 + 16))(*(v0 + 128), result + ((*(v5 + 80) + 32) & ~*(v5 + 80)), *(v0 + 112));
      v6 = swift_task_alloc();
      *(v0 + 168) = v6;
      *v6 = v0;
      v6[1] = sub_226B07798;
      v7 = *(v0 + 128);
      v8 = *(v0 + 24);

      return sub_226B088E4(v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = *(v0 + 128);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 72);
    v13 = *(v0 + 48);

    v14 = *(v0 + 8);

    return v14();
  }

  return result;
}

uint64_t sub_226B07798(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  if (v1)
  {
    v7 = v4[17];

    v4[31] = v1;
    v8 = v4[3];

    return MEMORY[0x2822009F8](sub_226B08828, v8, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v4[24] = v9;
    *v9 = v6;
    v9[1] = sub_226B07930;
    v10 = v4[16];
    v11 = v4[13];
    v12 = v4[3];

    return sub_226B0A3E8(v11, v10, a1);
  }
}

uint64_t sub_226B07930()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226B07A40, v2, 0);
}

uint64_t sub_226B07A40()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 128);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  sub_226D68ABC();
  v6 = (*(v4 + 88))(v3, v5);
  if (v6 == v1)
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    (*(*(v0 + 88) + 96))(v7, *(v0 + 80));
    (*(v10 + 32))(v8, v7, v9);
    v11 = sub_226D6899C();
    *(v0 + 200) = v11;
    v12 = swift_task_alloc();
    *(v0 + 208) = v12;
    *v12 = v0;
    v13 = sub_226B07F78;
LABEL_5:
    v12[1] = v13;
    v18 = *(v0 + 24);

    return sub_226B0BCE8(v11);
  }

  if (v6 == *(v0 + 260))
  {
    v14 = *(v0 + 96);
    v16 = *(v0 + 40);
    v15 = *(v0 + 48);
    v17 = *(v0 + 32);
    (*(*(v0 + 88) + 96))(v14, *(v0 + 80));
    (*(v16 + 32))(v15, v14, v17);
    v11 = sub_226D6899C();
    *(v0 + 224) = v11;
    v12 = swift_task_alloc();
    *(v0 + 232) = v12;
    *v12 = v0;
    v13 = sub_226B083D0;
    goto LABEL_5;
  }

  if (v6 != *(v0 + 264))
  {
    return sub_226D6F0AC();
  }

  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  v21 = *(v0 + 176);
  v20 = *(v0 + 184);
  v22 = *(v0 + 128);
  v23 = *(v0 + 104);
  v24 = *(v0 + 24);
  v25 = (v24 + *(v0 + 152));
  v26 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v27 = sub_226D6BB3C();
  v28 = swift_task_alloc();
  v28[2] = v27;
  v28[3] = v22;
  v28[4] = v24;
  v28[5] = v23;
  v28[6] = MEMORY[0x277D84F90];
  v28[7] = v21;
  sub_226D6EB7C();
  v29 = *(v0 + 176);
  if (v20)
  {
    v30 = *(v0 + 136);
    v31 = *(v0 + 104);

    sub_226AC47B0(v31, &qword_27D7A6828, &qword_226D782F0);
    *(v0 + 248) = v20;
    v32 = *(v0 + 24);
    v33 = sub_226B08828;
    v34 = 0;

    return MEMORY[0x2822009F8](v33, v32, v34);
  }

  v35 = *(v0 + 160);
  v36 = *(v0 + 144);
  v38 = *(v0 + 120);
  v37 = *(v0 + 128);
  v40 = *(v0 + 104);
  v39 = *(v0 + 112);

  sub_226AC47B0(v40, &qword_27D7A6828, &qword_226D782F0);
  v33 = (*(v38 + 8))(v37, v39);
  if (v35 + 1 == v36)
  {
    v42 = *(v0 + 128);
    v41 = *(v0 + 136);
    v44 = *(v0 + 96);
    v43 = *(v0 + 104);
    v45 = *(v0 + 72);
    v46 = *(v0 + 48);

    v47 = *(v0 + 8);

    return v47();
  }

  else
  {
    v48 = *(v0 + 160) + 1;
    *(v0 + 160) = v48;
    v49 = *(v0 + 136);
    if (v48 >= *(v49 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v33, v32, v34);
    }

    (*(*(v0 + 120) + 16))(*(v0 + 128), v49 + ((*(*(v0 + 120) + 80) + 32) & ~*(*(v0 + 120) + 80)) + *(*(v0 + 120) + 72) * v48, *(v0 + 112));
    v50 = swift_task_alloc();
    *(v0 + 168) = v50;
    *v50 = v0;
    v50[1] = sub_226B07798;
    v51 = *(v0 + 128);
    v52 = *(v0 + 24);

    return sub_226B088E4(v51);
  }
}

uint64_t sub_226B07F78(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_226B080AC, v4, 0);
}

uint64_t sub_226B080AC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[3];
  v7 = (v6 + v0[19]);
  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v9 = sub_226D6BB3C();
  v10 = swift_task_alloc();
  v10[2] = v9;
  v10[3] = v4;
  v10[4] = v6;
  v10[5] = v5;
  v10[6] = v1;
  v10[7] = v3;
  sub_226D6EB7C();
  v11 = v0[22];
  if (v2)
  {
    v12 = v0[17];
    v13 = v0[13];

    sub_226AC47B0(v13, &qword_27D7A6828, &qword_226D782F0);
    v0[31] = v2;
    v14 = v0[3];
    v15 = sub_226B08828;
    v16 = 0;

    return MEMORY[0x2822009F8](v15, v14, v16);
  }

  v17 = v0[20];
  v35 = v0[18];
  v19 = v0[15];
  v18 = v0[16];
  v21 = v0[13];
  v20 = v0[14];

  sub_226AC47B0(v21, &qword_27D7A6828, &qword_226D782F0);
  v15 = (*(v19 + 8))(v18, v20);
  if (v17 + 1 == v35)
  {
    v23 = v0[16];
    v22 = v0[17];
    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[9];
    v27 = v0[6];

    v28 = v0[1];

    return v28();
  }

  else
  {
    v30 = v0[20] + 1;
    v0[20] = v30;
    v31 = v0[17];
    if (v30 >= *(v31 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v15, v14, v16);
    }

    (*(v0[15] + 16))(v0[16], v31 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v30, v0[14]);
    v32 = swift_task_alloc();
    v0[21] = v32;
    *v32 = v0;
    v32[1] = sub_226B07798;
    v33 = v0[16];
    v34 = v0[3];

    return sub_226B088E4(v33);
  }
}

uint64_t sub_226B083D0(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_226B08504, v4, 0);
}

uint64_t sub_226B08504()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[30];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[3];
  v7 = (v6 + v0[19]);
  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v9 = sub_226D6BB3C();
  v10 = swift_task_alloc();
  v10[2] = v9;
  v10[3] = v4;
  v10[4] = v6;
  v10[5] = v5;
  v10[6] = v1;
  v10[7] = v3;
  sub_226D6EB7C();
  v11 = v0[22];
  if (v2)
  {
    v12 = v0[17];
    v13 = v0[13];

    sub_226AC47B0(v13, &qword_27D7A6828, &qword_226D782F0);
    v0[31] = v2;
    v14 = v0[3];
    v15 = sub_226B08828;
    v16 = 0;

    return MEMORY[0x2822009F8](v15, v14, v16);
  }

  v17 = v0[20];
  v35 = v0[18];
  v19 = v0[15];
  v18 = v0[16];
  v21 = v0[13];
  v20 = v0[14];

  sub_226AC47B0(v21, &qword_27D7A6828, &qword_226D782F0);
  v15 = (*(v19 + 8))(v18, v20);
  if (v17 + 1 == v35)
  {
    v23 = v0[16];
    v22 = v0[17];
    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[9];
    v27 = v0[6];

    v28 = v0[1];

    return v28();
  }

  else
  {
    v30 = v0[20] + 1;
    v0[20] = v30;
    v31 = v0[17];
    if (v30 >= *(v31 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v15, v14, v16);
    }

    (*(v0[15] + 16))(v0[16], v31 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v30, v0[14]);
    v32 = swift_task_alloc();
    v0[21] = v32;
    *v32 = v0;
    v32[1] = sub_226B07798;
    v33 = v0[16];
    v34 = v0[3];

    return sub_226B088E4(v33);
  }
}

uint64_t sub_226B08828()
{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v5 = v0[1];
  v6 = v0[31];

  return v5();
}

uint64_t sub_226B088E4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_226D6A49C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_226D68A4C();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v9 = sub_226D68B5C();
  v2[14] = v9;
  v10 = *(v9 - 8);
  v2[15] = v10;
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6838, &qword_226D71E90) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v13 = sub_226D68AEC();
  v2[19] = v13;
  v14 = *(v13 - 8);
  v2[20] = v14;
  v15 = *(v14 + 64) + 15;
  v2[21] = swift_task_alloc();
  v16 = sub_226D68B1C();
  v2[22] = v16;
  v17 = *(v16 - 8);
  v2[23] = v17;
  v18 = *(v17 + 64) + 15;
  v2[24] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6880, &qword_226D71EE0);
  v2[25] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6888, &unk_226D71EE8) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v22 = sub_226D689EC();
  v2[29] = v22;
  v23 = *(v22 - 8);
  v2[30] = v23;
  v24 = *(v23 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v25 = sub_226D68AAC();
  v2[33] = v25;
  v26 = *(v25 - 8);
  v2[34] = v26;
  v27 = *(v26 + 64) + 15;
  v2[35] = swift_task_alloc();
  v28 = sub_226D689AC();
  v2[36] = v28;
  v29 = *(v28 - 8);
  v2[37] = v29;
  v30 = *(v29 + 64) + 15;
  v2[38] = swift_task_alloc();
  v31 = sub_226D68B2C();
  v2[39] = v31;
  v32 = *(v31 - 8);
  v2[40] = v32;
  v33 = *(v32 + 64) + 15;
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B08D60, v1, 0);
}

uint64_t sub_226B08D60()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v4 = v0[5];
  sub_226D68ABC();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == *MEMORY[0x277CC7598])
  {
    v6 = v0[41];
    v7 = v0[38];
    v8 = v0[36];
    v9 = v0[37];
    (*(v0[40] + 96))(v6, v0[39]);
    (*(v9 + 32))(v7, v6, v8);
    v10 = sub_226D6899C();
  }

  else
  {
    if (v5 != *MEMORY[0x277CC7588])
    {
      if (v5 != *MEMORY[0x277CC7590])
      {
        return sub_226D6F0AC();
      }

      (*(v0[40] + 8))(v0[41], v0[39]);
      goto LABEL_11;
    }

    v11 = v0[41];
    v9 = v0[34];
    v7 = v0[35];
    v8 = v0[33];
    (*(v0[40] + 96))(v11, v0[39]);
    (*(v9 + 32))(v7, v11, v8);
    v10 = sub_226D6899C();
  }

  v12 = v10;
  (*(v9 + 8))(v7, v8);
  v0[42] = v12;
  if (v12)
  {
    v13 = v0[6];
    v14 = sub_226B0481C();
    v0[43] = v14;
    v15 = *(MEMORY[0x277D857C8] + 4);
    v16 = swift_task_alloc();
    v0[44] = v16;
    v17 = sub_226D68FEC();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
    *v16 = v0;
    v16[1] = sub_226B09110;
    v19 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 2, v14, v17, v18, v19);
  }

LABEL_11:
  v38 = sub_226B22C08(MEMORY[0x277D84F90]);
  v20 = v0[41];
  v21 = v0[38];
  v22 = v0[35];
  v24 = v0[31];
  v23 = v0[32];
  v26 = v0[27];
  v25 = v0[28];
  v27 = v0[26];
  v28 = v0[24];
  v29 = v0[21];
  v32 = v0[18];
  v33 = v0[17];
  v34 = v0[16];
  v35 = v0[13];
  v36 = v0[12];
  v37 = v0[9];

  v30 = v0[1];

  return v30(v38);
}

uint64_t sub_226B09110()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  v2[45] = v0;

  v5 = v2[43];
  if (v0)
  {
    v6 = v2[42];
    v7 = v2[6];

    v8 = sub_226B0A2B4;
    v9 = v7;
  }

  else
  {
    v10 = v2[6];

    v8 = sub_226B09268;
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_226B09268()
{
  v1 = *(v0 + 336);
  *(v0 + 368) = *(v0 + 16);
  v2 = sub_226B22C08(MEMORY[0x277D84F90]);
  v70 = v2;
  v3 = *(v1 + 16);
  *(v0 + 376) = v3;
  if (!v3)
  {
LABEL_16:
    v39 = *(v0 + 336);

    v40 = *(v0 + 328);
    v41 = *(v0 + 304);
    v42 = *(v0 + 280);
    v44 = *(v0 + 248);
    v43 = *(v0 + 256);
    v46 = *(v0 + 216);
    v45 = *(v0 + 224);
    v47 = *(v0 + 208);
    v48 = *(v0 + 192);
    v64 = *(v0 + 168);
    v65 = *(v0 + 144);
    v66 = *(v0 + 136);
    v67 = *(v0 + 128);
    v68 = *(v0 + 104);
    v69 = *(v0 + 96);
    v49 = *(v0 + 72);

    v50 = *(v0 + 8);

    return v50(v70);
  }

  v4 = 0;
  *(v0 + 448) = *(*(v0 + 184) + 80);
  while (1)
  {
    *(v0 + 392) = v4;
    *(v0 + 400) = v70;
    *(v0 + 384) = v70;
    v5 = *(v0 + 336);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return MEMORY[0x2821185B8](v2);
    }

    v6 = *(v0 + 176);
    sub_226B11A34(v5 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 184) + 72) * v4, *(v0 + 192));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    v10 = *(v0 + 192);
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *(v0 + 136);
      (*(*(v0 + 120) + 32))(*(v0 + 128), v10, *(v0 + 112));
      v12 = *(v8 + 48);
      sub_226D68ACC();
      sub_226D68B4C();
      v13 = sub_226D68A7C();
      v14 = *(v13 - 8);
      v15 = (*(v14 + 48))(v11, 1, v13);
      v17 = *(v0 + 128);
      v16 = *(v0 + 136);
      v19 = *(v0 + 112);
      v18 = *(v0 + 120);
      if (v15 == 1)
      {
        v21 = *(v0 + 80);
        v20 = *(v0 + 88);
        (*(v18 + 8))(*(v0 + 128), *(v0 + 112));
LABEL_9:
        sub_226AC47B0(v16, &qword_27D7A6838, &qword_226D71E90);
        (*(v20 + 56))(v9 + v12, 1, 1, v21);
        goto LABEL_13;
      }

      sub_226D68A5C();
      (*(v18 + 8))(v17, v19);
    }

    else
    {
      v22 = *(v0 + 144);
      (*(*(v0 + 160) + 32))(*(v0 + 168), v10, *(v0 + 152));
      v12 = *(v8 + 48);
      sub_226D68ACC();
      sub_226D68ADC();
      v13 = sub_226D68A7C();
      v14 = *(v13 - 8);
      v23 = (*(v14 + 48))(v22, 1, v13);
      v24 = *(v0 + 160);
      v25 = *(v0 + 168);
      v16 = *(v0 + 144);
      v26 = *(v0 + 152);
      if (v23 == 1)
      {
        v21 = *(v0 + 80);
        v20 = *(v0 + 88);
        (*(v24 + 8))(*(v0 + 168), *(v0 + 152));
        goto LABEL_9;
      }

      sub_226D68A5C();
      (*(v24 + 8))(v25, v26);
    }

    (*(v14 + 8))(v16, v13);
LABEL_13:
    v28 = *(v0 + 216);
    v27 = *(v0 + 224);
    v29 = *(v0 + 208);
    v31 = *(v0 + 80);
    v30 = *(v0 + 88);
    v32 = *(*(v0 + 200) + 48);
    (*(*(v0 + 240) + 32))(*(v0 + 256), v29, *(v0 + 232));
    sub_226AFD80C(v29 + v32, v27, &qword_27D7A6888, &unk_226D71EE8);
    sub_226AC40E8(v27, v28, &qword_27D7A6888, &unk_226D71EE8);
    v33 = (*(v30 + 48))(v28, 1, v31);
    v34 = *(v0 + 256);
    if (v33 != 1)
    {
      break;
    }

    v36 = *(v0 + 232);
    v35 = *(v0 + 240);
    v37 = *(v0 + 216);
    sub_226AC47B0(*(v0 + 224), &qword_27D7A6888, &unk_226D71EE8);
    (*(v35 + 8))(v34, v36);
    v2 = sub_226AC47B0(v37, &qword_27D7A6888, &unk_226D71EE8);
    v4 = *(v0 + 392) + 1;
    if (v4 == *(v0 + 376))
    {
      v38 = *(v0 + 368);
      goto LABEL_16;
    }
  }

  v53 = *(v0 + 240);
  v52 = *(v0 + 248);
  v54 = *(v0 + 232);
  v56 = *(v0 + 96);
  v55 = *(v0 + 104);
  v57 = *(v0 + 80);
  v58 = *(v0 + 88);
  v59 = *(v0 + 72);
  (*(v58 + 32))(v55, *(v0 + 216), v57);
  v60 = *(v53 + 16);
  *(v0 + 408) = v60;
  *(v0 + 416) = (v53 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v60(v52, v34, v54);
  (*(v58 + 16))(v56, v55, v57);
  sub_226B0E5CC(v56, v59);
  v61 = *(MEMORY[0x277CC76D8] + 4);
  v62 = swift_task_alloc();
  *(v0 + 424) = v62;
  *v62 = v0;
  v62[1] = sub_226B0981C;
  v63 = *(v0 + 368);
  v2 = *(v0 + 72);

  return MEMORY[0x2821185B8](v2);
}

uint64_t sub_226B0981C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 48);
  v10 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = a2;

  (*(v6 + 8))(v5, v7);

  return MEMORY[0x2822009F8](sub_226B09990, v8, 0);
}

uint64_t sub_226B09990()
{
  v1 = *(v0 + 248);
  if (*(v0 + 440) >> 60 == 15)
  {
    v2 = *(v0 + 400);
    v3 = sub_226C2FED4(*(v0 + 248));
    if ((v4 & 1) == 0)
    {
      v32 = *(v0 + 256);
      v33 = *(v0 + 232);
      v1 = *(v0 + 224);
      v34 = *(v0 + 104);
      v35 = *(v0 + 80);
      v36 = *(v0 + 88);
      v37 = *(*(v0 + 240) + 8);
      v37(*(v0 + 248), v33);
      (*(v36 + 8))(v34, v35);
      sub_226AC47B0(v1, &qword_27D7A6888, &unk_226D71EE8);
      v37(v32, v33);
      v129 = *(v0 + 400);
      v17 = *(v0 + 384);
      goto LABEL_27;
    }

    v1 = v3;
    v5 = *(v0 + 384);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 24) = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      v7 = (v0 + 384);
LABEL_5:
      v8 = *v7;
      v9 = *(v0 + 248);
      v10 = *(v0 + 232);
      v11 = *(v0 + 240);
      v124 = *(v0 + 224);
      v128 = *(v0 + 256);
      v12 = *(v0 + 104);
      v14 = *(v0 + 80);
      v13 = *(v0 + 88);
      v15 = *(*v7 + 48);
      v16 = *(v11 + 8);
      v16(v15 + *(v11 + 72) * v1, v10);
      sub_226B11B98(*(*(v8 + 56) + 16 * v1), *(*(v8 + 56) + 16 * v1 + 8));
      sub_226D4A714(v1, v8);
      v16(v9, v10);
      (*(v13 + 8))(v12, v14);
      sub_226AC47B0(v124, &qword_27D7A6888, &unk_226D71EE8);
      v16(v128, v10);
      v17 = v8;
      v129 = v8;
      goto LABEL_27;
    }

LABEL_36:
    v7 = (v0 + 24);
    sub_226C37C30();
    goto LABEL_5;
  }

  v18 = *(v0 + 384);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 32) = v18;
  v20 = sub_226C2FED4(v1);
  v22 = *(v18 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v26 = v21;
  if (*(*(v0 + 384) + 24) >= v25)
  {
    if ((v19 & 1) == 0)
    {
      v117 = v20;
      sub_226C37C30();
      v20 = v117;
    }
  }

  else
  {
    v27 = *(v0 + 248);
    sub_226C31458(v25, v19);
    v28 = *(v0 + 32);
    v20 = sub_226C2FED4(v27);
    if ((v26 & 1) != (v29 & 1))
    {
      v30 = *(v0 + 232);

      return sub_226D6F25C();
    }
  }

  v38 = *(v0 + 32);
  v40 = *(v0 + 432);
  v39 = *(v0 + 440);
  if (v26)
  {
    v1 = *(v0 + 248);
    v125 = *(v0 + 32);
    v130 = *(v0 + 256);
    v42 = *(v0 + 232);
    v41 = *(v0 + 240);
    v43 = *(v0 + 224);
    v44 = *(v0 + 104);
    v46 = *(v0 + 80);
    v45 = *(v0 + 88);
    v47 = (*(v38 + 56) + 16 * v20);
    v48 = *v47;
    v49 = v47[1];
    *v47 = v40;
    v47[1] = v39;
    sub_226B11B98(v48, v49);
    v50 = *(v41 + 8);
    v50(v1, v42);
    (*(v45 + 8))(v44, v46);
    sub_226AC47B0(v43, &qword_27D7A6888, &unk_226D71EE8);
    v50(v130, v42);
    v17 = v125;
    v129 = v125;
    goto LABEL_27;
  }

  v52 = *(v0 + 408);
  v51 = *(v0 + 416);
  v1 = *(v0 + 248);
  v54 = *(v0 + 232);
  v53 = *(v0 + 240);
  v126 = *(v0 + 224);
  v131 = *(v0 + 256);
  v122 = *(v0 + 104);
  v56 = *(v0 + 80);
  v55 = *(v0 + 88);
  *(v38 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v57 = v20;
  v17 = v38;
  v52(*(v38 + 48) + *(v53 + 72) * v20, v1, v54);
  v58 = (*(v17 + 56) + 16 * v57);
  *v58 = v40;
  v58[1] = v39;
  v59 = *(v53 + 8);
  v59(v1, v54);
  (*(v55 + 8))(v122, v56);
  sub_226AC47B0(v126, &qword_27D7A6888, &unk_226D71EE8);
  v60 = (v59)(v131, v54);
  v61 = *(v17 + 16);
  v24 = __OFADD__(v61, 1);
  v62 = v61 + 1;
  if (v24)
  {
    __break(1u);
    return MEMORY[0x2821185B8](v60);
  }

  *(v17 + 16) = v62;
  v129 = v17;
  while (1)
  {
LABEL_27:
    v92 = *(v0 + 392) + 1;
    if (v92 == *(v0 + 376))
    {
      v93 = *(v0 + 368);
      v94 = *(v0 + 336);

      v95 = *(v0 + 328);
      v96 = *(v0 + 304);
      v97 = *(v0 + 280);
      v99 = *(v0 + 248);
      v98 = *(v0 + 256);
      v101 = *(v0 + 216);
      v100 = *(v0 + 224);
      v102 = *(v0 + 208);
      v103 = *(v0 + 192);
      v104 = *(v0 + 168);
      v118 = *(v0 + 144);
      v119 = *(v0 + 136);
      v120 = *(v0 + 128);
      v121 = *(v0 + 104);
      v123 = *(v0 + 96);
      v127 = *(v0 + 72);

      v105 = *(v0 + 8);

      return v105(v129);
    }

    *(v0 + 392) = v92;
    *(v0 + 400) = v129;
    *(v0 + 384) = v17;
    v63 = *(v0 + 336);
    if (v92 >= *(v63 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    v64 = *(v0 + 176);
    sub_226B11A34(v63 + ((*(v0 + 448) + 32) & ~*(v0 + 448)) + *(*(v0 + 184) + 72) * v92, *(v0 + 192));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v66 = *(v0 + 200);
    v67 = *(v0 + 208);
    v68 = *(v0 + 192);
    if (EnumCaseMultiPayload == 1)
    {
      v69 = *(v0 + 136);
      (*(*(v0 + 120) + 32))(*(v0 + 128), v68, *(v0 + 112));
      v70 = *(v66 + 48);
      sub_226D68ACC();
      sub_226D68B4C();
      v71 = sub_226D68A7C();
      v72 = *(v71 - 8);
      v73 = (*(v72 + 48))(v69, 1, v71);
      v75 = *(v0 + 128);
      v74 = *(v0 + 136);
      v76 = *(v0 + 112);
      v77 = *(v0 + 120);
      if (v73 != 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v78 = *(v0 + 144);
      (*(*(v0 + 160) + 32))(*(v0 + 168), v68, *(v0 + 152));
      v70 = *(v66 + 48);
      sub_226D68ACC();
      sub_226D68ADC();
      v71 = sub_226D68A7C();
      v72 = *(v71 - 8);
      v79 = (*(v72 + 48))(v78, 1, v71);
      v77 = *(v0 + 160);
      v75 = *(v0 + 168);
      v74 = *(v0 + 144);
      v76 = *(v0 + 152);
      if (v79 != 1)
      {
LABEL_22:
        sub_226D68A5C();
        (*(v77 + 8))(v75, v76);
        (*(v72 + 8))(v74, v71);
        goto LABEL_25;
      }
    }

    v81 = *(v0 + 80);
    v80 = *(v0 + 88);
    (*(v77 + 8))(v75, v76);
    sub_226AC47B0(v74, &qword_27D7A6838, &qword_226D71E90);
    (*(v80 + 56))(v67 + v70, 1, 1, v81);
LABEL_25:
    v83 = *(v0 + 216);
    v82 = *(v0 + 224);
    v84 = *(v0 + 208);
    v86 = *(v0 + 80);
    v85 = *(v0 + 88);
    v87 = *(*(v0 + 200) + 48);
    (*(*(v0 + 240) + 32))(*(v0 + 256), v84, *(v0 + 232));
    sub_226AFD80C(v84 + v87, v82, &qword_27D7A6888, &unk_226D71EE8);
    sub_226AC40E8(v82, v83, &qword_27D7A6888, &unk_226D71EE8);
    v88 = (*(v85 + 48))(v83, 1, v86);
    v89 = *(v0 + 256);
    v90 = *(v0 + 216);
    if (v88 != 1)
    {
      break;
    }

    v1 = *(v0 + 232);
    v91 = *(v0 + 240);
    sub_226AC47B0(*(v0 + 224), &qword_27D7A6888, &unk_226D71EE8);
    (*(v91 + 8))(v89, v1);
    sub_226AC47B0(v90, &qword_27D7A6888, &unk_226D71EE8);
  }

  v107 = *(v0 + 240);
  v106 = *(v0 + 248);
  v108 = *(v0 + 232);
  v110 = *(v0 + 96);
  v109 = *(v0 + 104);
  v111 = *(v0 + 80);
  v112 = *(v0 + 88);
  v132 = *(v0 + 72);
  (*(v112 + 32))(v109, v90, v111);
  v113 = *(v107 + 16);
  *(v0 + 408) = v113;
  *(v0 + 416) = (v107 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v113(v106, v89, v108);
  (*(v112 + 16))(v110, v109, v111);
  sub_226B0E5CC(v110, v132);
  v114 = *(MEMORY[0x277CC76D8] + 4);
  v115 = swift_task_alloc();
  *(v0 + 424) = v115;
  *v115 = v0;
  v115[1] = sub_226B0981C;
  v116 = *(v0 + 368);
  v60 = *(v0 + 72);

  return MEMORY[0x2821185B8](v60);
}

uint64_t sub_226B0A2B4()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[35];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v9 = v0[24];
  v10 = v0[21];
  v14 = v0[18];
  v15 = v0[17];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[12];
  v19 = v0[9];

  v11 = v0[1];
  v12 = v0[45];

  return v11();
}

uint64_t sub_226B0A3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D68AAC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6860, &qword_226D71EB0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v9 = sub_226D6D52C();
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v12 = sub_226D689AC();
  v4[17] = v12;
  v13 = *(v12 - 8);
  v4[18] = v13;
  v14 = *(v13 + 64) + 15;
  v4[19] = swift_task_alloc();
  v15 = sub_226D68B2C();
  v4[20] = v15;
  v16 = *(v15 - 8);
  v4[21] = v16;
  v17 = *(v16 + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B0A628, v3, 0);
}

uint64_t sub_226B0A628()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[3];
  sub_226D68ABC();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == *MEMORY[0x277CC7598])
  {
    v6 = v0[22];
    v7 = v0[19];
    v8 = v0[17];
    v9 = v0[18];
    v10 = v0[16];
    v11 = v0[12];
    v12 = v0[3];
    (*(v0[21] + 96))(v6, v0[20]);
    (*(v9 + 32))(v7, v6, v8);
    sub_226D6897C();
    sub_226D6898C();
    v13 = sub_226D6896C();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    v16 = v15(v11, 1, v13);
    v17 = v0[12];
    if (v16 == 1)
    {
      sub_226AC47B0(v0[12], &qword_27D7A6860, &qword_226D71EB0);
      v18 = 12;
    }

    else
    {
      v18 = sub_226D6894C();
      (*(v14 + 8))(v17, v13);
    }

    v31 = v0[19];
    v32 = v0[11];
    sub_226D6898C();
    v33 = v15(v32, 1, v13);
    v34 = v0[11];
    if (v33 == 1)
    {
      sub_226AC47B0(v0[11], &qword_27D7A6860, &qword_226D71EB0);
      v35 = 2;
    }

    else
    {
      v48 = sub_226D6895C();
      (*(v14 + 8))(v34, v13);
      v35 = v48 & 1;
    }

    v49 = v0[19];
    v50 = sub_226D6899C();
    v0[23] = v50;
    v51 = swift_task_alloc();
    v0[24] = v51;
    *v51 = v0;
    v51[1] = sub_226B0AC14;
    v52 = v0[16];
LABEL_22:
    v60 = v0[4];
    v61 = v0[5];
    v62 = v0[2];

    return sub_226B0E8E0(v62, v52, v18, v35, v50, v60);
  }

  if (v5 == *MEMORY[0x277CC7588])
  {
    v19 = v0[22];
    v20 = v0[15];
    v21 = v0[10];
    v23 = v0[7];
    v22 = v0[8];
    v24 = v0[6];
    v25 = v0[3];
    (*(v0[21] + 96))(v19, v0[20]);
    (*(v23 + 32))(v22, v19, v24);
    sub_226D6897C();
    sub_226D68A8C();
    v26 = sub_226D6896C();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    v29 = v28(v21, 1, v26);
    v30 = v0[10];
    if (v29 == 1)
    {
      sub_226AC47B0(v0[10], &qword_27D7A6860, &qword_226D71EB0);
      v18 = 12;
    }

    else
    {
      v18 = sub_226D6894C();
      (*(v27 + 8))(v30, v26);
    }

    v53 = v0[8];
    v54 = v0[9];
    sub_226D68A8C();
    v55 = v28(v54, 1, v26);
    v56 = v0[9];
    if (v55 == 1)
    {
      sub_226AC47B0(v0[9], &qword_27D7A6860, &qword_226D71EB0);
      v35 = 2;
    }

    else
    {
      v57 = sub_226D6895C();
      (*(v27 + 8))(v56, v26);
      v35 = v57 & 1;
    }

    v58 = v0[8];
    v50 = sub_226D6899C();
    v0[25] = v50;
    v59 = swift_task_alloc();
    v0[26] = v59;
    *v59 = v0;
    v59[1] = sub_226B0AE94;
    v52 = v0[15];
    goto LABEL_22;
  }

  if (v5 != *MEMORY[0x277CC7590])
  {
    return sub_226D6F0AC();
  }

  v36 = v0[2];
  v37 = sub_226D6735C();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  v38 = v0[19];
  v40 = v0[15];
  v39 = v0[16];
  v42 = v0[11];
  v41 = v0[12];
  v44 = v0[9];
  v43 = v0[10];
  v45 = v0[8];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v46 = v0[1];

  return v46();
}

uint64_t sub_226B0AC14()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 104);
  v6 = *(*v0 + 40);
  v8 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_226B0ADA4, v6, 0);
}

uint64_t sub_226B0ADA4()
{
  v1 = v0[16];
  v2 = v0[22];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_226B0AE94()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 104);
  v6 = *(*v0 + 40);
  v8 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_226B0B024, v6, 0);
}

uint64_t sub_226B0B024()
{
  v1 = v0[22];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v9 = v0[1];

  return v9();
}

void sub_226B0B114(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v72 = a2;
  v67 = a5;
  v68 = a6;
  v66 = a4;
  v62[1] = a3;
  v73[5] = *MEMORY[0x277D85DE8];
  v7 = sub_226D6D4AC();
  isa = v7[-1].isa;
  v70 = v7;
  v8 = *(isa + 8);
  MEMORY[0x28223BE20](v7);
  v10 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D68B6C();
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = *(v64 + 64);
  MEMORY[0x28223BE20](v11);
  v63 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226D6D52C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v62[0] = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6858, &qword_226D71EA8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v62 - v23;
  v25 = [objc_opt_self() currentQueryGenerationToken];
  v73[0] = 0;
  v26 = [a1 setQueryGenerationFromToken:v25 error:v73];

  v27 = v73[0];
  if (v26)
  {
    v28 = sub_226D6974C();
    (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
    v29 = sub_226D6973C();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = v27;
    v33 = sub_226D6972C();
    v73[3] = v29;
    v73[4] = MEMORY[0x277CC78A8];
    v73[0] = v33;
    v34 = sub_226D6C49C();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v37 = sub_226D6C48C();
    sub_226D6AC0C();
    sub_226D6897C();
    v38 = v71;
    v39 = sub_226D6AABC();
    if (v38)
    {
      (*(v15 + 8))(v20, v14);
    }

    else
    {
      v42 = v39;
      v43 = v72;
      v71 = v37;
      v44 = *(v15 + 8);
      v44(v20, v14);
      if (v42)
      {
        sub_226D6D46C();
        sub_226D6C46C();
        (*(isa + 1))(v10, v70);
        v73[0] = 0;
        if ([a1 save_])
        {
          v60 = v73[0];
        }

        else
        {
          v61 = v73[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }

      else
      {
        v45 = v63;
        v46 = v64;
        v47 = v65;
        (*(v64 + 16))(v63, v43, v65);
        v48 = sub_226D6E05C();
        v49 = sub_226D6E9CC();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v68 = v50;
          v72 = swift_slowAlloc();
          v73[0] = v72;
          *v50 = 136315138;
          v70 = v48;
          v51 = v62[0];
          LODWORD(isa) = v49;
          sub_226D6897C();
          sub_226B11AFC(&qword_27D7A6648, MEMORY[0x277CC95F0]);
          v52 = sub_226D6F1CC();
          v53 = v45;
          v55 = v54;
          v44(v51, v14);
          (*(v46 + 8))(v53, v65);
          v56 = sub_226AC4530(v52, v55, v73);

          v57 = v68;
          *(v68 + 1) = v56;
          v58 = v70;
          _os_log_impl(&dword_226AB4000, v70, isa, "Failed to save insights. Transaction with ID %s isn't found.", v57, 0xCu);
          v59 = v72;
          __swift_destroy_boxed_opaque_existential_0Tm(v72);
          MEMORY[0x22AA8BEE0](v59, -1, -1);
          MEMORY[0x22AA8BEE0](v57, -1, -1);
        }

        else
        {

          (*(v46 + 8))(v45, v47);
        }
      }
    }
  }

  else
  {
    v40 = v73[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226B0B790()
{
  v1 = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_logger;
  v2 = sub_226D6E07C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_environment));
  v3 = *(v0 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_requestBuilder);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_extensionFinder));
  v4 = *(v0 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_inProgressTransactionIDs);

  v5 = *(v0 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader____lazy_storage___mapsInsightsServiceTask);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for BankConnectInsightsDataLoader()
{
  result = qword_27D7A6810;
  if (!qword_27D7A6810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B0B8AC()
{
  result = sub_226D6E07C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_226B0B988(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  v4 = *v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return MEMORY[0x2822009F8](sub_226B0B9AC, v4, 0);
}

uint64_t sub_226B0B9AC()
{
  v1 = v0[3].i8[8];
  v2 = swift_task_alloc();
  v0[2].i64[0] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i8[0] = v1;
  v3 = *(MEMORY[0x277CC6558] + 4);
  v4 = swift_task_alloc();
  v0[2].i64[1] = v4;
  *v4 = v0;
  v4[1] = sub_226B0BA94;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v4, "bankConnect/insights", 20, 2, &unk_226D71E60, v2, v5);
}

uint64_t sub_226B0BA94()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_226B0BBD0;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = sub_226B0BBB8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_226B0BBD0()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_226B0BC34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B04B98(a1, v4, v5, v6);
}

uint64_t sub_226B0BCE8(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6830, &qword_226D71E88) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = sub_226D68B5C();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v6 = *(v5 + 64) + 15;
  v2[21] = swift_task_alloc();
  v7 = sub_226D68F8C();
  v2[22] = v7;
  v8 = *(v7 - 8);
  v2[23] = v8;
  v9 = *(v8 + 64) + 15;
  v2[24] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6838, &qword_226D71E90) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6840, &qword_226D71E98) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v12 = sub_226D68F9C();
  v2[29] = v12;
  v13 = *(v12 - 8);
  v2[30] = v13;
  v14 = *(v13 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v15 = sub_226D689BC();
  v2[35] = v15;
  v16 = *(v15 - 8);
  v2[36] = v16;
  v17 = *(v16 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v18 = sub_226D689EC();
  v2[41] = v18;
  v19 = *(v18 - 8);
  v2[42] = v19;
  v20 = *(v19 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v21 = *(sub_226D68B1C() - 8);
  v2[47] = v21;
  v22 = *(v21 + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6848, &qword_226D71EA0) - 8) + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v24 = sub_226D68AEC();
  v2[54] = v24;
  v25 = *(v24 - 8);
  v2[55] = v25;
  v26 = *(v25 + 64) + 15;
  v2[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B0C16C, v1, 0);
}

uint64_t sub_226B0C16C()
{
  v1 = v0[16];
  v2 = sub_226B0481C();
  v0[57] = v2;
  v3 = *(MEMORY[0x277D857C8] + 4);
  v4 = swift_task_alloc();
  v0[58] = v4;
  v5 = sub_226D68FEC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  *v4 = v0;
  v4[1] = sub_226B0C250;
  v7 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 13, v2, v5, v6, v7);
}

uint64_t sub_226B0C250()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 472) = v0;

  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_226B0E010;
  }

  else
  {
    v7 = sub_226B0C398;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_226B0C398()
{
  v164 = v0;
  v1 = v0[15];
  v0[60] = v0[13];
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    v3 = v0[47];
    v4 = (v0[55] + 48);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    while (1)
    {
      v7 = v0[54];
      v8 = v0[52];
      sub_226B11A34(v5, v0[50]);
      sub_226D68AFC();
      v9 = *v4;
      if ((*v4)(v8, 1, v7) != 1)
      {
        break;
      }

      v10 = v0[52];
      sub_226B11CB8(v0[50], MEMORY[0x277CC7580]);
      sub_226AC47B0(v10, &qword_27D7A6848, &qword_226D71EA0);
      v5 += v6;
      if (!--v2)
      {
        goto LABEL_6;
      }
    }

    v38 = v0[53];
    v39 = v0[54];
    v40 = v0[51];
    v41 = v0[50];
    sub_226AC47B0(v0[52], &qword_27D7A6848, &qword_226D71EA0);
    sub_226B11A98(v41, v40);
    sub_226D68AFC();
    sub_226B11CB8(v40, MEMORY[0x277CC7580]);
    if (v9(v38, 1, v39) != 1)
    {
      v42 = v0[46];
      v43 = v0[41];
      v44 = v0[42];
      (*(v0[55] + 32))(v0[56], v0[53], v0[54]);
      sub_226D68ACC();
      v45 = sub_226D689DC();
      v47 = v46;
      v48 = *(v44 + 8);
      v49 = v48(v42, v43);
      v52 = HIBYTE(v47) & 0xF;
      v53 = v45 & 0xFFFFFFFFFFFFLL;
      if ((v47 & 0x2000000000000000) != 0)
      {
        v54 = HIBYTE(v47) & 0xF;
      }

      else
      {
        v54 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (!v54)
      {

        goto LABEL_108;
      }

      if ((v47 & 0x1000000000000000) != 0)
      {
        v56 = sub_226B10AFC(v45, v47, 10);
        v143 = v142;

        if ((v143 & 1) == 0)
        {
LABEL_95:
          v160 = v56;
          v114 = v0[56];
          v115 = v0[45];
          v117 = v0[40];
          v116 = v0[41];
          v118 = v0[39];
          v120 = v0[35];
          v119 = v0[36];
          sub_226D68ACC();
          sub_226D689CC();
          v48(v115, v116);
          (*(v119 + 104))(v118, *MEMORY[0x277CC7550], v120);
          sub_226B11AFC(&qword_27D7A6850, MEMORY[0x277CC7558]);
          sub_226D6E53C();
          sub_226D6E53C();
          v122 = v0[39];
          v121 = v0[40];
          v124 = v0[35];
          v123 = v0[36];
          if (v0[9] == v0[11] && v0[10] == v0[12])
          {
            v125 = *(v123 + 8);
            v125(v0[39], v0[35]);
            v125(v121, v124);

LABEL_99:
            v130 = v0[56];
            v131 = v0[26];
            sub_226D68ADC();
            v132 = sub_226D68A7C();
            v133 = *(v132 - 8);
            v134 = (*(v133 + 48))(v131, 1, v132);
            v135 = v0[26];
            if (v134 == 1)
            {
              sub_226AC47B0(v0[26], &qword_27D7A6838, &qword_226D71E90);
              v136 = 0;
              LOBYTE(v137) = 1;
            }

            else
            {
              v138 = sub_226D68A6C();
              v139 = v138;
              v137 = HIDWORD(v138) & 1;
              (*(v133 + 8))(v135, v132);
              v136 = v139;
            }

            (*(v0[23] + 104))(v0[24], *MEMORY[0x277CC76B0], v0[22]);
            v140 = *(MEMORY[0x277CC76E0] + 4);
            v141 = swift_task_alloc();
            v0[61] = v141;
            LOBYTE(v163[0]) = v137;
            v50 = v136 | (v137 << 32);
            *v141 = v0;
            v141[1] = sub_226B0D1C4;
            v49 = v0[28];
            v51 = v0[24];
            v53 = v160;
LABEL_103:

            return MEMORY[0x2821185C0](v49, v53, v50, v51);
          }

          v126 = v0[10];
          v127 = v0[12];
          v128 = sub_226D6F21C();
          v129 = *(v123 + 8);
          v129(v122, v124);
          v129(v121, v124);

          if (v128)
          {
            goto LABEL_99;
          }
        }

LABEL_108:
        (*(v0[55] + 8))(v0[56], v0[54]);
        goto LABEL_8;
      }

      if ((v47 & 0x2000000000000000) != 0)
      {
        v163[0] = v45;
        v163[1] = v47 & 0xFFFFFFFFFFFFFFLL;
        if (v45 == 43)
        {
          if (v52)
          {
            if (--v52)
            {
              v56 = 0;
              v108 = v163 + 1;
              while (1)
              {
                v109 = *v108 - 48;
                if (v109 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v56, 0xAuLL))
                {
                  break;
                }

                v59 = __CFADD__(10 * v56, v109);
                v56 = 10 * v56 + v109;
                if (v59)
                {
                  break;
                }

                ++v108;
                if (!--v52)
                {
                  goto LABEL_94;
                }
              }
            }

            goto LABEL_93;
          }

LABEL_113:
          __break(1u);
          return MEMORY[0x2821185C0](v49, v53, v50, v51);
        }

        if (v45 != 45)
        {
          if (v52)
          {
            v56 = 0;
            v111 = v163;
            while (1)
            {
              v112 = *v111 - 48;
              if (v112 > 9)
              {
                break;
              }

              if (!is_mul_ok(v56, 0xAuLL))
              {
                break;
              }

              v59 = __CFADD__(10 * v56, v112);
              v56 = 10 * v56 + v112;
              if (v59)
              {
                break;
              }

              ++v111;
              if (!--v52)
              {
                goto LABEL_94;
              }
            }
          }

          goto LABEL_93;
        }

        if (v52)
        {
          if (--v52)
          {
            v56 = 0;
            v75 = v163 + 1;
            while (1)
            {
              v76 = *v75 - 48;
              if (v76 > 9)
              {
                break;
              }

              if (!is_mul_ok(v56, 0xAuLL))
              {
                break;
              }

              v59 = 10 * v56 >= v76;
              v56 = 10 * v56 - v76;
              if (!v59)
              {
                break;
              }

              ++v75;
              if (!--v52)
              {
                goto LABEL_94;
              }
            }
          }

          goto LABEL_93;
        }
      }

      else
      {
        if ((v45 & 0x1000000000000000) != 0)
        {
          v49 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v49 = sub_226D6EF4C();
        }

        v55 = *v49;
        if (v55 == 43)
        {
          if (v53 >= 1)
          {
            v52 = v53 - 1;
            if (v53 != 1)
            {
              v56 = 0;
              if (v49)
              {
                v106 = v49 + 1;
                while (1)
                {
                  v107 = *v106 - 48;
                  if (v107 > 9)
                  {
                    goto LABEL_93;
                  }

                  if (!is_mul_ok(v56, 0xAuLL))
                  {
                    goto LABEL_93;
                  }

                  v59 = __CFADD__(10 * v56, v107);
                  v56 = 10 * v56 + v107;
                  if (v59)
                  {
                    goto LABEL_93;
                  }

                  ++v106;
                  if (!--v52)
                  {
                    goto LABEL_94;
                  }
                }
              }

              goto LABEL_85;
            }

            goto LABEL_93;
          }

          goto LABEL_112;
        }

        if (v55 != 45)
        {
          if (v53)
          {
            v56 = 0;
            if (v49)
            {
              while (1)
              {
                v110 = *v49 - 48;
                if (v110 > 9)
                {
                  goto LABEL_93;
                }

                if (!is_mul_ok(v56, 0xAuLL))
                {
                  goto LABEL_93;
                }

                v59 = __CFADD__(10 * v56, v110);
                v56 = 10 * v56 + v110;
                if (v59)
                {
                  goto LABEL_93;
                }

                ++v49;
                if (!--v53)
                {
                  goto LABEL_85;
                }
              }
            }

            goto LABEL_85;
          }

LABEL_93:
          v56 = 0;
          LOBYTE(v52) = 1;
LABEL_94:
          v113 = v52;

          if ((v113 & 1) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_108;
        }

        if (v53 >= 1)
        {
          v52 = v53 - 1;
          if (v53 != 1)
          {
            v56 = 0;
            if (v49)
            {
              v57 = v49 + 1;
              while (1)
              {
                v58 = *v57 - 48;
                if (v58 > 9)
                {
                  goto LABEL_93;
                }

                if (!is_mul_ok(v56, 0xAuLL))
                {
                  goto LABEL_93;
                }

                v59 = 10 * v56 >= v58;
                v56 = 10 * v56 - v58;
                if (!v59)
                {
                  goto LABEL_93;
                }

                ++v57;
                if (!--v52)
                {
                  goto LABEL_94;
                }
              }
            }

LABEL_85:
            LOBYTE(v52) = 0;
            goto LABEL_94;
          }

          goto LABEL_93;
        }

        __break(1u);
      }

      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }
  }

  else
  {
LABEL_6:
    (*(v0[55] + 56))(v0[53], 1, 1, v0[54]);
  }

  sub_226AC47B0(v0[53], &qword_27D7A6848, &qword_226D71EA0);
LABEL_8:
  v0[62] = MEMORY[0x277D84F90];
  v11 = v0[15];
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v0[47];
      v14 = (v0[20] + 48);
      v15 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v16 = *(v13 + 72);
      while (1)
      {
        v17 = v0[19];
        v18 = v0[17];
        sub_226B11A34(v15, v0[48]);
        sub_226D68B0C();
        v19 = *v14;
        if ((*v14)(v18, 1, v17) != 1)
        {
          break;
        }

        v20 = v0[17];
        sub_226B11CB8(v0[48], MEMORY[0x277CC7580]);
        sub_226AC47B0(v20, &qword_27D7A6830, &qword_226D71E88);
        v15 += v16;
        if (!--v12)
        {
          goto LABEL_13;
        }
      }

      v60 = v0[48];
      v61 = v0[49];
      v62 = v0[18];
      v63 = v0[19];
      sub_226AC47B0(v0[17], &qword_27D7A6830, &qword_226D71E88);
      sub_226B11A98(v60, v61);
      sub_226D68B0C();
      sub_226B11CB8(v61, MEMORY[0x277CC7580]);
      if (v19(v62, 1, v63) == 1)
      {
        v64 = v0[60];

        goto LABEL_14;
      }

      v65 = v0[44];
      v66 = v0[41];
      v67 = v0[42];
      (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
      sub_226D68ACC();
      v68 = sub_226D689DC();
      v70 = v69;
      v71 = *(v67 + 8);
      v71(v65, v66);
      v72 = sub_226B0E2CC(v68, v70);
      if (v73)
      {
LABEL_42:
        v74 = v0[60];
        (*(v0[20] + 8))(v0[21], v0[19]);

        goto LABEL_15;
      }

      v162 = v72;
      v77 = v0[43];
      v78 = v0[41];
      v80 = v0[37];
      v79 = v0[38];
      v82 = v0[35];
      v81 = v0[36];
      v83 = v0[21];
      sub_226D68ACC();
      sub_226D689CC();
      v71(v77, v78);
      (*(v81 + 104))(v80, *MEMORY[0x277CC7550], v82);
      sub_226B11AFC(&qword_27D7A6850, MEMORY[0x277CC7558]);
      sub_226D6E53C();
      sub_226D6E53C();
      v85 = v0[37];
      v84 = v0[38];
      v86 = v0[35];
      v87 = v0[36];
      if (v0[5] == v0[7] && v0[6] == v0[8])
      {
        v88 = *(v87 + 8);
        v88(v0[37], v0[35]);
        v88(v84, v86);
      }

      else
      {
        v89 = v0[6];
        v90 = v0[8];
        v91 = sub_226D6F21C();
        v92 = *(v87 + 8);
        v92(v85, v86);
        v92(v84, v86);

        if ((v91 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      v93 = v0[25];
      v94 = v0[21];
      sub_226D68B4C();
      v95 = sub_226D68A7C();
      v96 = *(v95 - 8);
      v97 = (*(v96 + 48))(v93, 1, v95);
      v98 = v0[25];
      if (v97 == 1)
      {
        sub_226AC47B0(v0[25], &qword_27D7A6838, &qword_226D71E90);
        v99 = 0;
        LOBYTE(v100) = 1;
      }

      else
      {
        v101 = sub_226D68A6C();
        v102 = v101;
        v100 = HIDWORD(v101) & 1;
        (*(v96 + 8))(v98, v95);
        v99 = v102;
      }

      (*(v0[23] + 104))(v0[24], *MEMORY[0x277CC76B8], v0[22]);
      v103 = *(MEMORY[0x277CC76E0] + 4);
      v104 = swift_task_alloc();
      v0[63] = v104;
      LOBYTE(v163[0]) = v100;
      v50 = v99 | (v100 << 32);
      *v104 = v0;
      v104[1] = sub_226B0DB50;
      v105 = v0[60];
      v49 = v0[27];
      v51 = v0[24];
      v53 = v162;
      goto LABEL_103;
    }
  }

LABEL_13:
  v21 = v0[60];
  v22 = v0[19];
  v23 = v0[20];
  v24 = v0[18];

  (*(v23 + 56))(v24, 1, 1, v22);
LABEL_14:
  sub_226AC47B0(v0[18], &qword_27D7A6830, &qword_226D71E88);
LABEL_15:
  v25 = v0[56];
  v27 = v0[52];
  v26 = v0[53];
  v28 = v0[50];
  v29 = v0[51];
  v31 = v0[48];
  v30 = v0[49];
  v33 = v0[45];
  v32 = v0[46];
  v34 = v0[44];
  v144 = v0[43];
  v145 = v0[40];
  v146 = v0[39];
  v147 = v0[38];
  v148 = v0[37];
  v149 = v0[34];
  v150 = v0[33];
  v151 = v0[32];
  v152 = v0[31];
  v153 = v0[28];
  v154 = v0[27];
  v155 = v0[26];
  v156 = v0[25];
  v157 = v0[24];
  v158 = v0[21];
  v159 = v0[18];
  v161 = v0[17];

  v35 = v0[1];
  v36 = MEMORY[0x277D84F90];

  return v35(v36);
}

uint64_t sub_226B0D1C4()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 128);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_226B0D330, v5, 0);
}

uint64_t sub_226B0D330()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[55] + 8))(v0[56], v0[54]);
    sub_226AC47B0(v3, &qword_27D7A6840, &qword_226D71E98);
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v6 = v0[33];
    v5 = v0[34];
    v7 = *(v2 + 32);
    v7(v5, v3, v1);
    (*(v2 + 16))(v6, v5, v1);
    v4 = sub_226BBB268(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    v107 = v7;
    if (v9 >= v8 >> 1)
    {
      v4 = sub_226BBB268(v8 > 1, v9 + 1, 1, v4);
    }

    v11 = v0[55];
    v10 = v0[56];
    v12 = v0[54];
    v13 = v0[33];
    v14 = v0[29];
    v15 = v0[30];
    (*(v15 + 8))(v0[34], v14);
    (*(v11 + 8))(v10, v12);
    *(v4 + 2) = v9 + 1;
    v107(&v4[((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v9], v13, v14);
  }

  v108 = v4;
  v0[62] = v4;
  v16 = v0[15];
  if (!v16 || (v17 = *(v16 + 16)) == 0)
  {
LABEL_11:
    v26 = v0[60];
    v27 = v0[19];
    v28 = v0[20];
    v29 = v0[18];

    (*(v28 + 56))(v29, 1, 1, v27);
LABEL_12:
    sub_226AC47B0(v0[18], &qword_27D7A6830, &qword_226D71E88);
LABEL_13:
    v30 = v0[56];
    v31 = v0[52];
    v32 = v0[53];
    v34 = v0[50];
    v33 = v0[51];
    v36 = v0[48];
    v35 = v0[49];
    v38 = v0[45];
    v37 = v0[46];
    v39 = v0[44];
    v89 = v0[43];
    v90 = v0[40];
    v91 = v0[39];
    v92 = v0[38];
    v93 = v0[37];
    v94 = v0[34];
    v95 = v0[33];
    v96 = v0[32];
    v97 = v0[31];
    v98 = v0[28];
    v99 = v0[27];
    v100 = v0[26];
    v101 = v0[25];
    v102 = v0[24];
    v103 = v0[21];
    v104 = v0[18];
    v105 = v0[17];

    v40 = v0[1];

    return v40(v108);
  }

  v18 = v0[47];
  v19 = (v0[20] + 48);
  v20 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v21 = *(v18 + 72);
  while (1)
  {
    v22 = v0[19];
    v23 = v0[17];
    sub_226B11A34(v20, v0[48]);
    sub_226D68B0C();
    v24 = *v19;
    if ((*v19)(v23, 1, v22) != 1)
    {
      break;
    }

    v25 = v0[17];
    sub_226B11CB8(v0[48], MEMORY[0x277CC7580]);
    sub_226AC47B0(v25, &qword_27D7A6830, &qword_226D71E88);
    v20 += v21;
    if (!--v17)
    {
      goto LABEL_11;
    }
  }

  v42 = v0[48];
  v43 = v0[49];
  v44 = v0[18];
  v45 = v0[19];
  sub_226AC47B0(v0[17], &qword_27D7A6830, &qword_226D71E88);
  sub_226B11A98(v42, v43);
  sub_226D68B0C();
  sub_226B11CB8(v43, MEMORY[0x277CC7580]);
  if (v24(v44, 1, v45) == 1)
  {
    v46 = v0[60];

    goto LABEL_12;
  }

  v47 = v0[44];
  v48 = v0[41];
  v49 = v0[42];
  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  sub_226D68ACC();
  v50 = sub_226D689DC();
  v52 = v51;
  v53 = *(v49 + 8);
  v53(v47, v48);
  v54 = sub_226B0E2CC(v50, v52);
  if (v55)
  {
LABEL_19:
    v56 = v0[60];
    (*(v0[20] + 8))(v0[21], v0[19]);

    goto LABEL_13;
  }

  v106 = v54;
  v57 = v0[43];
  v58 = v0[41];
  v60 = v0[37];
  v59 = v0[38];
  v62 = v0[35];
  v61 = v0[36];
  v63 = v0[21];
  sub_226D68ACC();
  sub_226D689CC();
  v53(v57, v58);
  (*(v61 + 104))(v60, *MEMORY[0x277CC7550], v62);
  sub_226B11AFC(&qword_27D7A6850, MEMORY[0x277CC7558]);
  sub_226D6E53C();
  sub_226D6E53C();
  v65 = v0[37];
  v64 = v0[38];
  v66 = v0[35];
  v67 = v0[36];
  if (v0[5] == v0[7] && v0[6] == v0[8])
  {
    v68 = *(v67 + 8);
    v68(v0[37], v0[35]);
    v68(v64, v66);
  }

  else
  {
    v69 = v0[6];
    v70 = v0[8];
    v71 = sub_226D6F21C();
    v72 = *(v67 + 8);
    v72(v65, v66);
    v72(v64, v66);

    if ((v71 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v73 = v0[25];
  v74 = v0[21];
  sub_226D68B4C();
  v75 = sub_226D68A7C();
  v76 = *(v75 - 8);
  v77 = (*(v76 + 48))(v73, 1, v75);
  v78 = v0[25];
  if (v77 == 1)
  {
    sub_226AC47B0(v0[25], &qword_27D7A6838, &qword_226D71E90);
    v79 = 0;
    LOBYTE(v80) = 1;
  }

  else
  {
    v81 = sub_226D68A6C();
    v82 = v81;
    v80 = HIDWORD(v81) & 1;
    (*(v76 + 8))(v78, v75);
    v79 = v82;
  }

  (*(v0[23] + 104))(v0[24], *MEMORY[0x277CC76B8], v0[22]);
  v83 = *(MEMORY[0x277CC76E0] + 4);
  v84 = swift_task_alloc();
  v0[63] = v84;
  v85 = v79 | (v80 << 32);
  *v84 = v0;
  v84[1] = sub_226B0DB50;
  v86 = v0[60];
  v87 = v0[27];
  v88 = v0[24];

  return MEMORY[0x2821185C0](v87, v106, v85, v88);
}

uint64_t sub_226B0DB50()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 128);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_226B0DCBC, v5, 0);
}

uint64_t sub_226B0DCBC()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[60];
    (*(v0[20] + 8))(v0[21], v0[19]);

    sub_226AC47B0(v3, &qword_27D7A6840, &qword_226D71E98);
    v50 = v0[62];
  }

  else
  {
    v5 = v0[62];
    v7 = v0[31];
    v6 = v0[32];
    v48 = *(v2 + 32);
    v48(v6, v3, v1);
    (*(v2 + 16))(v7, v6, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v0[62];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_226BBB268(0, v9[2] + 1, 1, v0[62]);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_226BBB268(v10 > 1, v11 + 1, 1, v9);
    }

    v12 = v0[60];
    v13 = v0[32];
    v46 = v0[31];
    v14 = v0[29];
    v15 = v0[30];
    v16 = v0[20];
    v17 = v0[21];
    v18 = v0[19];

    (*(v15 + 8))(v13, v14);
    (*(v16 + 8))(v17, v18);
    v9[2] = v11 + 1;
    v50 = v9;
    v48(v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v11, v46, v14);
  }

  v19 = v0[56];
  v20 = v0[52];
  v21 = v0[53];
  v22 = v0[50];
  v23 = v0[51];
  v25 = v0[48];
  v24 = v0[49];
  v27 = v0[45];
  v26 = v0[46];
  v28 = v0[44];
  v31 = v0[43];
  v32 = v0[40];
  v33 = v0[39];
  v34 = v0[38];
  v35 = v0[37];
  v36 = v0[34];
  v37 = v0[33];
  v38 = v0[32];
  v39 = v0[31];
  v40 = v0[28];
  v41 = v0[27];
  v42 = v0[26];
  v43 = v0[25];
  v44 = v0[24];
  v45 = v0[21];
  v47 = v0[18];
  v49 = v0[17];

  v29 = v0[1];

  return v29(v50);
}

uint64_t sub_226B0E010()
{
  v46 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 128);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 472);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v45 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = sub_226D6F26C();
    v14 = sub_226AC4530(v12, v13, &v45);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_226AB4000, v4, v5, "Error fetching hero image details: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v15 = *(v0 + 448);
  v17 = *(v0 + 416);
  v16 = *(v0 + 424);
  v18 = *(v0 + 400);
  v19 = *(v0 + 408);
  v21 = *(v0 + 384);
  v20 = *(v0 + 392);
  v23 = *(v0 + 360);
  v22 = *(v0 + 368);
  v24 = *(v0 + 352);
  v28 = *(v0 + 344);
  v29 = *(v0 + 320);
  v30 = *(v0 + 312);
  v31 = *(v0 + 304);
  v32 = *(v0 + 296);
  v33 = *(v0 + 272);
  v34 = *(v0 + 264);
  v35 = *(v0 + 256);
  v36 = *(v0 + 248);
  v37 = *(v0 + 224);
  v38 = *(v0 + 216);
  v39 = *(v0 + 208);
  v40 = *(v0 + 200);
  v41 = *(v0 + 192);
  v42 = *(v0 + 168);
  v43 = *(v0 + 144);
  v44 = *(v0 + 136);

  v25 = *(v0 + 8);
  v26 = MEMORY[0x277D84F90];

  return v25(v26);
}

uint64_t sub_226B0E2CC(uint64_t result, unint64_t a2)
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
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
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
        result = sub_226D6EF4C();
        v3 = v21;
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
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
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
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
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
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_226B10AFC(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_226B0E5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226D68A1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D68A2C();
  v10 = sub_226B22B2C(MEMORY[0x277D84F90]);
  v11 = v9;
  v38 = *(v9 + 16);
  if (v38)
  {
    v31[1] = a2;
    v32 = a1;
    v12 = 0;
    v37 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v35 = (v5 + 8);
    v36 = v5 + 16;
    v33 = v11;
    v34 = v5;
    while (v12 < *(v11 + 16))
    {
      v13 = v4;
      (*(v5 + 16))(v8, v37 + *(v5 + 72) * v12, v4);
      v14 = sub_226D689FC();
      v15 = v8;
      v16 = sub_226D68A0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v10;
      v19 = sub_226C2FE90(v14);
      v20 = v10[2];
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_19;
      }

      v23 = v18;
      if (v10[3] >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226C37AE4();
        }
      }

      else
      {
        sub_226C311F4(v22, isUniquelyReferenced_nonNull_native);
        v24 = sub_226C2FE90(v14);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_21;
        }

        v19 = v24;
      }

      v4 = v13;
      v10 = v39;
      if (v23)
      {
        *(v39[7] + 8 * v19) = v16;
        v8 = v15;
        (*v35)(v15, v13);
      }

      else
      {
        v39[(v19 >> 6) + 8] |= 1 << v19;
        *(v10[6] + 8 * v19) = v14;
        *(v10[7] + 8 * v19) = v16;
        v8 = v15;
        (*v35)(v15, v13);
        v26 = v10[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_20;
        }

        v10[2] = v28;
      }

      ++v12;
      v11 = v33;
      v5 = v34;
      if (v38 == v12)
      {

        a1 = v32;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_226D6F25C();
    __break(1u);
  }

  else
  {

LABEL_17:
    sub_226D68A3C();
    sub_226D6A48C();
    v29 = sub_226D68A4C();
    return (*(*(v29 - 8) + 8))(a1, v29);
  }

  return result;
}

uint64_t sub_226B0E8E0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = v6;
  *(v7 + 64) = a2;
  *(v7 + 72) = a5;
  *(v7 + 417) = a4;
  *(v7 + 416) = a3;
  *(v7 + 56) = a1;
  v8 = sub_226D6D52C();
  *(v7 + 96) = v8;
  v9 = *(v8 - 8);
  *(v7 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v11 = *(*(sub_226D6D4AC() - 8) + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  v12 = sub_226D69FAC();
  *(v7 + 128) = v12;
  v13 = *(v12 - 8);
  *(v7 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  v15 = *(*(sub_226D6A85C() - 8) + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  v16 = *(*(sub_226D690CC() - 8) + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6868, &qword_226D71EC0) - 8) + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  v18 = sub_226D68AEC();
  *(v7 + 184) = v18;
  v19 = *(v18 - 8);
  *(v7 + 192) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6848, &qword_226D71EA0) - 8) + 64) + 15;
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6870, &qword_226D71EC8) - 8) + 64) + 15;
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  v23 = sub_226D689EC();
  *(v7 + 256) = v23;
  v24 = *(v23 - 8);
  *(v7 + 264) = v24;
  v25 = *(v24 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  v26 = sub_226D68B5C();
  *(v7 + 288) = v26;
  v27 = *(v26 - 8);
  *(v7 + 296) = v27;
  v28 = *(v27 + 64) + 15;
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6830, &qword_226D71E88) - 8) + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  v30 = *(sub_226D68B1C() - 8);
  *(v7 + 344) = v30;
  v31 = *(v30 + 64) + 15;
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6878, &unk_226D71ED0) - 8) + 64) + 15;
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B0EDB0, v6, 0);
}

uint64_t sub_226B0EDB0()
{
  v94 = *(v0 + 72);
  if (v94 && (v1 = *(v0 + 72), (v2 = *(v94 + 16)) != 0))
  {
    v3 = *(v0 + 344);
    v4 = (*(v0 + 296) + 48);
    v5 = *(v0 + 72);
    v6 = v94 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    while (1)
    {
      v8 = *(v0 + 336);
      v9 = *(v0 + 288);
      sub_226B11A34(v6, *(v0 + 368));
      sub_226D68B0C();
      v10 = *v4;
      if ((*v4)(v8, 1, v9) != 1)
      {
        break;
      }

      v11 = *(v0 + 336);
      sub_226B11CB8(*(v0 + 368), MEMORY[0x277CC7580]);
      sub_226AC47B0(v11, &qword_27D7A6830, &qword_226D71E88);
      v6 += v7;
      if (!--v2)
      {
        goto LABEL_6;
      }
    }

    v51 = *(v0 + 368);
    v52 = *(v0 + 376);
    v53 = *(v0 + 328);
    v54 = *(v0 + 320);
    v55 = *(v0 + 288);
    sub_226AC47B0(*(v0 + 336), &qword_27D7A6830, &qword_226D71E88);
    sub_226B11A98(v51, v52);
    sub_226D68B0C();
    sub_226B11CB8(v52, MEMORY[0x277CC7580]);
    sub_226AC40E8(v53, v54, &qword_27D7A6830, &qword_226D71E88);
    if (v10(v54, 1, v55) != 1)
    {
      v61 = *(v0 + 312);
      v63 = *(v0 + 296);
      v62 = *(v0 + 304);
      v64 = *(v0 + 288);
      v65 = *(v0 + 80);
      (*(v63 + 32))(v61, *(v0 + 320), v64);
      (*(v63 + 16))(v62, v61, v64);
      sub_226D68ACC();
      if (*(v65 + 16))
      {
        v66 = *(v0 + 80);
        v67 = sub_226C2FED4(*(v0 + 280));
        if (v68)
        {
          v69 = *(*(v0 + 80) + 56) + 16 * v67;
          sub_226B11B44(*v69, *(v69 + 8));
        }
      }

      v80 = *(v0 + 392);
      v81 = *(v0 + 328);
      v83 = *(v0 + 304);
      v82 = *(v0 + 312);
      v84 = *(v0 + 288);
      v85 = *(v0 + 296);
      (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
      sub_226D6752C();
      (*(v85 + 8))(v82, v84);
      sub_226AC47B0(v81, &qword_27D7A6830, &qword_226D71E88);
      goto LABEL_8;
    }

    v12 = *(v0 + 392);
    sub_226AC47B0(*(v0 + 328), &qword_27D7A6830, &qword_226D71E88);
  }

  else
  {
LABEL_6:
    v12 = *(v0 + 392);
  }

  v13 = sub_226D6753C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  if (!v94)
  {
LABEL_12:
    v24 = *(v0 + 248);
LABEL_13:
    v25 = sub_226D6CB8C();
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    goto LABEL_14;
  }

LABEL_8:
  v14 = *(v0 + 72);
  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = *(v0 + 344);
  v17 = (*(v0 + 192) + 48);
  v18 = v14 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v19 = *(v16 + 72);
  while (1)
  {
    v20 = *(v0 + 232);
    v21 = *(v0 + 184);
    sub_226B11A34(v18, *(v0 + 352));
    sub_226D68AFC();
    v22 = *v17;
    if ((*v17)(v20, 1, v21) != 1)
    {
      break;
    }

    v23 = *(v0 + 232);
    sub_226B11CB8(*(v0 + 352), MEMORY[0x277CC7580]);
    sub_226AC47B0(v23, &qword_27D7A6848, &qword_226D71EA0);
    v18 += v19;
    if (!--v15)
    {
      goto LABEL_12;
    }
  }

  v56 = *(v0 + 352);
  v57 = *(v0 + 360);
  v58 = *(v0 + 224);
  v59 = *(v0 + 216);
  v60 = *(v0 + 184);
  sub_226AC47B0(*(v0 + 232), &qword_27D7A6848, &qword_226D71EA0);
  sub_226B11A98(v56, v57);
  sub_226D68AFC();
  sub_226B11CB8(v57, MEMORY[0x277CC7580]);
  sub_226AC40E8(v58, v59, &qword_27D7A6848, &qword_226D71EA0);
  if (v22(v59, 1, v60) == 1)
  {
    v24 = *(v0 + 248);
    sub_226AC47B0(*(v0 + 224), &qword_27D7A6848, &qword_226D71EA0);
    goto LABEL_13;
  }

  v70 = *(v0 + 272);
  v71 = *(v0 + 208);
  v73 = *(v0 + 192);
  v72 = *(v0 + 200);
  v74 = *(v0 + 184);
  v75 = *(v0 + 80);
  (*(v73 + 32))(v71, *(v0 + 216), v74);
  (*(v73 + 16))(v72, v71, v74);
  sub_226D68ACC();
  if (*(v75 + 16))
  {
    v76 = *(v0 + 80);
    v77 = sub_226C2FED4(*(v0 + 272));
    if (v78)
    {
      v79 = *(*(v0 + 80) + 56) + 16 * v77;
      sub_226B11B44(*v79, *(v79 + 8));
    }
  }

  v86 = *(v0 + 248);
  v87 = *(v0 + 224);
  v89 = *(v0 + 200);
  v88 = *(v0 + 208);
  v90 = *(v0 + 184);
  v91 = *(v0 + 192);
  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
  sub_226D6CB7C();
  (*(v91 + 8))(v88, v90);
  sub_226AC47B0(v87, &qword_27D7A6848, &qword_226D71EA0);
LABEL_14:
  v26 = *(v0 + 176);
  v27 = *(v0 + 417);
  v28 = *(v0 + 416);
  v29 = sub_226D6B37C();
  v30 = *(*(v29 - 8) + 56);
  v30(v26, 1, 1, v29);
  if (v28 != 12 && v27 != 2)
  {
    v32 = *(v0 + 168);
    v31 = *(v0 + 176);
    v34 = *(v0 + 152);
    v33 = *(v0 + 160);
    v35 = *(v0 + 417);
    v36 = *(v0 + 416);
    sub_226D690DC();
    sub_226D6A86C();
    sub_226D6B36C();
    sub_226AC47B0(v31, &qword_27D7A6868, &qword_226D71EC0);
    v30(v32, 0, 1, v29);
    sub_226AFD80C(v32, v31, &qword_27D7A6868, &qword_226D71EC0);
  }

  v37 = *(v0 + 384);
  v38 = *(v0 + 392);
  v39 = *(v0 + 240);
  v40 = *(v0 + 168);
  v41 = *(v0 + 176);
  v93 = *(v0 + 248);
  v95 = *(v0 + 144);
  v42 = *(v0 + 120);
  v43 = (*(v0 + 88) + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_environment);
  v44 = v43[4];
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  sub_226D6BB0C();
  v45 = *(v0 + 40);
  v46 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v45);
  sub_226D6D46C();
  sub_226AC40E8(v41, v40, &qword_27D7A6868, &qword_226D71EC0);
  sub_226AC40E8(v38, v37, &qword_27D7A6878, &unk_226D71ED0);
  sub_226AC40E8(v93, v39, &qword_27D7A6870, &qword_226D71EC8);
  sub_226D69F9C();
  v47 = *(MEMORY[0x277CC7BE8] + 4);
  v48 = swift_task_alloc();
  *(v0 + 400) = v48;
  *v48 = v0;
  v48[1] = sub_226B0F5A4;
  v49 = *(v0 + 144);
  v50 = *(v0 + 56);

  return MEMORY[0x282119258](v50, v49, v45, v46);
}

uint64_t sub_226B0F5A4()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 408) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 88);
  if (v0)
  {
    v9 = sub_226B0F930;
  }

  else
  {
    v9 = sub_226B0F72C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_226B0F72C()
{
  v1 = v0[49];
  v2 = v0[31];
  sub_226AC47B0(v0[22], &qword_27D7A6868, &qword_226D71EC0);
  sub_226AC47B0(v2, &qword_27D7A6870, &qword_226D71EC8);
  sub_226AC47B0(v1, &qword_27D7A6878, &unk_226D71ED0);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[46];
  v6 = v0[47];
  v8 = v0[44];
  v7 = v0[45];
  v10 = v0[41];
  v9 = v0[42];
  v12 = v0[39];
  v11 = v0[40];
  v15 = v0[38];
  v16 = v0[35];
  v17 = v0[34];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[29];
  v21 = v0[28];
  v22 = v0[27];
  v23 = v0[26];
  v24 = v0[25];
  v25 = v0[22];
  v26 = v0[21];
  v27 = v0[20];
  v28 = v0[19];
  v29 = v0[18];
  v30 = v0[15];
  v31 = v0[14];

  v13 = v0[1];

  return v13();
}

uint64_t sub_226B0F930()
{
  v58 = v0;
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[31];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[8];
  sub_226AC47B0(v0[22], &qword_27D7A6868, &qword_226D71EC0);
  sub_226AC47B0(v3, &qword_27D7A6870, &qword_226D71EC8);
  sub_226AC47B0(v2, &qword_27D7A6878, &unk_226D71ED0);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  (*(v5 + 16))(v4, v8, v6);
  v9 = v1;
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9CC();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[51];
  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[12];
  if (v12)
  {
    v17 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = v55;
    *v17 = 136315394;
    sub_226B11AFC(&qword_27D7A6648, MEMORY[0x277CC95F0]);
    v18 = sub_226D6F1CC();
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = sub_226AC4530(v18, v20, &v57);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    v22 = v13;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v53 = v23;
    _os_log_impl(&dword_226AB4000, v10, v11, "Failed to generate icon for transaction with ID %s with error: %@.", v17, 0x16u);
    sub_226AC47B0(v53, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v53, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    MEMORY[0x22AA8BEE0](v55, -1, -1);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v24 = v0[7];
  v25 = sub_226D6735C();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v27 = v0[48];
  v26 = v0[49];
  v28 = v0[46];
  v29 = v0[47];
  v31 = v0[44];
  v30 = v0[45];
  v33 = v0[41];
  v32 = v0[42];
  v35 = v0[39];
  v34 = v0[40];
  v38 = v0[38];
  v39 = v0[35];
  v40 = v0[34];
  v41 = v0[31];
  v42 = v0[30];
  v43 = v0[29];
  v44 = v0[28];
  v45 = v0[27];
  v46 = v0[26];
  v47 = v0[25];
  v48 = v0[22];
  v49 = v0[21];
  v50 = v0[20];
  v51 = v0[19];
  v52 = v0[18];
  v54 = v0[15];
  v56 = v0[14];

  v36 = v0[1];

  return v36();
}

uint64_t sub_226B0FD78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v100 = a4;
  v112 = a2;
  v115[5] = *MEMORY[0x277D85DE8];
  v109 = sub_226D6D4AC();
  v8 = *(v109 - 8);
  v9 = *(v8 + 8);
  v10 = MEMORY[0x28223BE20](v109);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v84 - v13;
  v110 = sub_226D6D52C();
  v107 = *(v110 - 8);
  v14 = v107[8];
  v15 = MEMORY[0x28223BE20](v110);
  v98 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v92 = &v84 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v114 = &v84 - v20;
  MEMORY[0x28223BE20](v19);
  v106 = &v84 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6858, &qword_226D71EA8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v84 - v24;
  v26 = sub_226D6E07C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v108 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [objc_opt_self() currentQueryGenerationToken];
  v115[0] = 0;
  v113 = a1;
  LODWORD(a1) = [a1 setQueryGenerationFromToken:v30 error:v115];

  if (a1)
  {
    v96 = v12;
    v101 = a3;
    v31 = qword_28105F708;
    v32 = v115[0];
    if (v31 != -1)
    {
LABEL_29:
      swift_once();
    }

    v33 = __swift_project_value_buffer(v26, qword_28105F710);
    v90 = v27;
    v34 = *(v27 + 16);
    v91 = v26;
    v34(v108, v33, v26);
    v35 = sub_226D6974C();
    (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
    v36 = sub_226D6973C();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v39 = sub_226D6972C();
    v115[3] = v36;
    v115[4] = MEMORY[0x277CC78A8];
    v115[0] = v39;
    v40 = sub_226D6C49C();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v99 = sub_226D6C48C();
    v43 = v112 + 56;
    v44 = 1 << *(v112 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v25 = v45 & *(v112 + 56);
    v46 = (v44 + 63) >> 6;
    v111 = v107 + 2;
    v104 = v107 + 4;
    v95 = (v8 + 16);
    v105 = (v107 + 1);
    v94 = (v8 + 8);

    v47 = 0;
    *&v48 = 136315394;
    v88 = v48;
    *&v48 = 136315650;
    v89 = v48;
    v26 = v109;
    v27 = v110;
    v103 = v46;
    v102 = v43;
    while (v25)
    {
      v51 = v26;
      v52 = v47;
      v8 = v114;
LABEL_15:
      v54 = v106;
      v53 = v107;
      v55 = v107[2];
      v55(v106, *(v112 + 48) + v107[9] * (__clz(__rbit64(v25)) | (v52 << 6)), v27);
      (v53[4])(v8, v54, v27);
      sub_226D6AC0C();
      v56 = sub_226D6AABC();
      if (v5)
      {

        (*v105)(v114, v110);
        goto LABEL_26;
      }

      v57 = v56;
      v25 &= v25 - 1;
      if (v56)
      {
        sub_226D6C45C();
        v27 = v110;
        (*v105)(v114, v110);

        v47 = v52;
        v26 = v109;
      }

      else
      {
        v97 = 0;
        v58 = v93;
        v26 = v51;
        (*v95)(v93, v101, v51);
        v59 = v92;
        v60 = v114;
        v61 = v110;
        v55(v92, v114, v110);
        v62 = sub_226D6E05C();
        v63 = sub_226D6E9CC();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v86 = v63;
          v65 = v64;
          v87 = swift_slowAlloc();
          v115[0] = v87;
          *v65 = v88;
          v85 = v62;
          v66 = sub_226D6D48C();
          v67 = v58;
          v69 = v68;
          (*v94)(v67, v109);
          v70 = sub_226AC4530(v66, v69, v115);

          *(v65 + 4) = v70;
          *(v65 + 12) = 2080;
          sub_226B11AFC(&qword_27D7A6648, MEMORY[0x277CC95F0]);
          v71 = sub_226D6F1CC();
          v73 = v72;
          v74 = *v105;
          (*v105)(v59, v61);
          v75 = sub_226AC4530(v71, v73, v115);
          v76 = v109;

          *(v65 + 14) = v75;
          v77 = v85;
          _os_log_impl(&dword_226AB4000, v85, v86, "Failed to store retry after date (%s). Transaction with ID %s not found.", v65, 0x16u);
          v78 = v87;
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v78, -1, -1);
          MEMORY[0x22AA8BEE0](v65, -1, -1);

          v74(v114, v61);
          v26 = v76;
        }

        else
        {

          v79 = *v105;
          (*v105)(v59, v61);
          (*v94)(v58, v26);
          v79(v60, v61);
        }

        v47 = v52;
        v5 = v97;
        v27 = v61;
      }

      v46 = v103;
      v43 = v102;
    }

    v8 = v114;
    while (1)
    {
      v52 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v52 >= v46)
      {
        break;
      }

      v25 = *(v43 + 8 * v52);
      ++v47;
      if (v25)
      {
        v51 = v26;
        goto LABEL_15;
      }
    }

    v115[0] = 0;
    if ([v113 save_])
    {
      v80 = *(v90 + 8);
      v81 = v115[0];
      v80(v108, v91);

      goto LABEL_27;
    }

    v82 = v115[0];
    sub_226D6D04C();

    swift_willThrow();

LABEL_26:
    result = (*(v90 + 8))(v108, v91);
  }

  else
  {
    v49 = v115[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

LABEL_27:
  v83 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_226B10A88(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62E0, &qword_226D70D30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_226B10AFC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_226D6E4FC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_226B11080();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_226D6EF4C();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_226B11080()
{
  v0 = sub_226D6E50C();
  v4 = sub_226B11100(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_226B11100(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_226D6E41C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_226D6ECAC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_226B10A88(v9, 0);
  v12 = sub_226B11258(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_226D6E41C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_226D6EF4C();
LABEL_4:

  return sub_226D6E41C();
}

unint64_t sub_226B11258(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_226B11478(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_226D6E4BC();
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
          result = sub_226D6EF4C();
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

    result = sub_226B11478(v12, a6, a7);
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

    result = sub_226D6E49C();
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

uint64_t sub_226B11478(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_226D6E4CC();
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
    v5 = MEMORY[0x22AA8A550](15, a1 >> 16);
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

size_t sub_226B114F4(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v49 = MEMORY[0x277D84F90];
  result = sub_226AE2050(0, v9, 0);
  v48 = v7;
  if (v9)
  {
    v14 = a4[2];
    v15 = a5;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_71;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_72;
      }

      if (v8 < 0)
      {
        goto LABEL_73;
      }

      if (v14 == v19)
      {

        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6250, &qword_226D70C70);
            v23 = *(sub_226D6D52C() - 8);
            v43 = (*(v23 + 80) + 32) & ~*(v23 + 80);
            v45 = *(v23 + 72);
            v20 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v20);
            if (!v45)
            {
              goto LABEL_77;
            }

            if (result - v43 == 0x8000000000000000 && v45 == -1)
            {
              goto LABEL_79;
            }

            v20[2] = v19;
            v20[3] = 2 * ((result - v43) / v45);
          }

          v25 = *(sub_226D6D52C() - 8);
          v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
          v27 = *(v25 + 72);
          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v22 = *(v49 + 16);
      v21 = *(v49 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_226AE2050((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v49 + 16) = v22 + 1;
      *(v49 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v48;
      if (!v9)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_39:
    v28 = v17 <= v7;
    if (a3 > 0)
    {
      v28 = v17 >= v7;
    }

    if (v28)
    {
      return v49;
    }

    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      v30 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v31 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v32 = a4[2];
      if (v32 < v31)
      {
        v31 = a4[2];
      }

      v33 = v31 - v17;
      if (v31 < v17)
      {
        goto LABEL_75;
      }

      if (v17 < 0)
      {
        goto LABEL_76;
      }

      if (v32 == v33)
      {

        v34 = a4;
      }

      else
      {
        v34 = v29;
        if (v31 != v17)
        {
          if (v33 < 1)
          {
            v34 = v29;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6250, &qword_226D70C70);
            v38 = *(sub_226D6D52C() - 8);
            v44 = (*(v38 + 80) + 32) & ~*(v38 + 80);
            v46 = *(v38 + 72);
            v34 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v34);
            if (!v46)
            {
              goto LABEL_78;
            }

            if (result - v44 == 0x8000000000000000 && v46 == -1)
            {
              goto LABEL_80;
            }

            v34[2] = v33;
            v34[3] = 2 * ((result - v44) / v46);
          }

          v40 = *(sub_226D6D52C() - 8);
          v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
          v42 = *(v40 + 72);
          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v36 = *(v49 + 16);
      v35 = *(v49 + 24);
      if (v36 >= v35 >> 1)
      {
        result = sub_226AE2050((v35 > 1), v36 + 1, 1);
        v15 = a5;
      }

      *(v49 + 16) = v36 + 1;
      *(v49 + 8 * v36 + 32) = v34;
      v37 = v30 <= v48;
      if (a3 > 0)
      {
        v37 = v30 >= v48;
      }

      v17 = v30;
      if (v37)
      {
        return v49;
      }
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_226B11A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D68B1C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B11A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D68B1C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B11AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B11B44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_226B11B98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_226B11BEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226B07328(a1, v5, v4);
}

uint64_t sub_226B11CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B11D18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B04958(a1, v4, v5, v6);
}

unint64_t sub_226B11DCC(char *a1, void *a2)
{
  v177 = a1;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A8, &qword_226D72090);
  v4 = *(*(v174 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v174);
  v172 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v173 = &v127 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v171 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v127 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v127 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v127 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v127 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v127 - v24;
  v26 = sub_226D69CAC();
  v176 = *(v26 - 8);
  v27 = *(v176 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v178;
  v175 = a2;
  sub_226B132E8(v177, a2);
  if (v30)
  {
    return v2 & 1;
  }

  v162 = v23;
  v163 = v25;
  v155 = v20;
  v169 = v26;
  v170 = v29;
  v158 = v14;
  v159 = v17;
  v178 = 0;
  v168 = v2;
  v32 = v31;
  v177 = sub_226D69CBC();
  v33 = sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  swift_getKeyPath();
  v167 = v33;
  v166 = sub_226D6E9FC();
  v179 = MEMORY[0x277D84F90];
  v34 = (v32 + 56);
  v35 = 1 << *(v32 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v32 + 56);
  v38 = (v35 + 63) >> 6;
  v39 = *MEMORY[0x277CC7A10];
  v40 = "Unknown classification outcome";
  v164 = (v176 + 8);
  v165 = (v176 + 104);
  v157 = *MEMORY[0x277CC7A20];
  v161 = *MEMORY[0x277CC79B0];
  v156 = *MEMORY[0x277CC79B8];

  v42 = 0;
  v43 = "classicOrderTypeIdentifier";
  v44 = "otherMerchantEmailDisplayName";
  v45 = xmmword_226D71F30;
  v46 = xmmword_226D71F40;
  v47 = xmmword_226D70840;
  v48 = xmmword_226D71840;
  v49 = "merchantEmailAddress";
  v50 = "eventTypeValue == %@";
LABEL_5:
  v51 = v170;
  while (v37)
  {
LABEL_6:
    v52 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v53 = *(result + 48) + 56 * (v52 | (v42 << 6));
    v54 = *(v53 + 48);
    if (v54 != 2)
    {
      v154 = v39;
      v142 = result;
      v153 = v40;
      v141 = v43;
      v140 = v44;
      v148 = v45;
      v147 = v46;
      v152 = v47;
      v151 = v48;
      v139 = v49;
      v138 = v50;
      if (v54)
      {
        v134 = 0xD000000000000014;
        v135 = 0xD000000000000018;
        v56 = v39;
        v129 = v157;
        v57 = v50;
        v58 = v49;
      }

      else
      {
        v134 = 0xD00000000000001ALL;
        v135 = 0xD00000000000001ELL;
        v56 = v161;
        v129 = v156;
        v57 = v44;
        v58 = v43;
      }

      v133 = v58 | 0x8000000000000000;
      v131 = v57 | 0x8000000000000000;
      v59 = *(v53 + 8);
      v146 = *v53;
      v145 = v59;
      v60 = *(v53 + 24);
      v132 = *(v53 + 16);
      v150 = v60;
      v62 = *(v53 + 32);
      v61 = *(v53 + 40);
      v137 = v62;
      v136 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v130 = swift_allocObject();
      *(v130 + 16) = v148;
      v144 = swift_allocObject();
      v144[1] = v147;
      v128 = *v165;
      v128(v51, v56, v169);
      v160 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v63 = swift_allocObject();
      *(v63 + 16) = v152;

      v64 = sub_226D69C9C();
      v66 = v65;
      *(v63 + 56) = MEMORY[0x277D837D0];
      v143 = sub_226B16404();
      *(v63 + 64) = v143;
      *(v63 + 32) = v64;
      *(v63 + 40) = v66;
      v67 = sub_226D6E91C();
      v68 = *v164;
      v69 = v169;
      v70 = v170;
      (*v164)(v170, v169);
      *(v144 + 4) = v67;
      v128(v70, v129, v69);
      v71 = swift_allocObject();
      *(v71 + 16) = v152;
      v72 = sub_226D69C9C();
      v73 = v143;
      *(v71 + 56) = MEMORY[0x277D837D0];
      *(v71 + 64) = v73;
      *(v71 + 32) = v72;
      *(v71 + 40) = v74;
      v75 = sub_226D6E91C();
      v68(v70, v169);
      *(v144 + 5) = v75;
      v76 = sub_226D6E5CC();

      v144 = objc_opt_self();
      v77 = [v144 orPredicateWithSubpredicates_];

      v78 = v130;
      *(v130 + 32) = v77;
      v79 = swift_allocObject();
      *(v79 + 16) = v151;
      v80 = MEMORY[0x277D837D0];
      v81 = v143;
      *(v79 + 56) = MEMORY[0x277D837D0];
      *(v79 + 64) = v81;
      v82 = v131;
      *(v79 + 32) = v134;
      *(v79 + 40) = v82;
      *(v79 + 96) = v80;
      *(v79 + 104) = v81;
      *(v79 + 72) = v146;
      *(v79 + 80) = v145;

      *(v78 + 40) = sub_226D6E91C();
      v83 = swift_allocObject();
      *(v83 + 16) = v151;
      v84 = MEMORY[0x277D837D0];
      *(v83 + 56) = MEMORY[0x277D837D0];
      *(v83 + 64) = v81;
      v85 = v133;
      *(v83 + 32) = v135;
      *(v83 + 40) = v85;
      *(v83 + 96) = v84;
      *(v83 + 104) = v81;
      v86 = v132;
      *(v83 + 72) = v132;
      *(v83 + 80) = v150;

      *(v78 + 48) = sub_226D6E91C();
      v87 = sub_226D6E5CC();

      v88 = [v144 andPredicateWithSubpredicates_];

      v89 = sub_226AE5134(v146, v145, v86, v150, v137, v136, v54);
      MEMORY[0x22AA8A610](v89);
      if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v90 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226D6E61C();
      }

      sub_226D6E65C();
      v39 = v154;
      result = v142;
      v40 = v153;
      v43 = v141;
      v44 = v140;
      v45 = v148;
      v46 = v147;
      v47 = v152;
      v48 = v151;
      v49 = v139;
      v50 = v138;
      goto LABEL_5;
    }
  }

  while (1)
  {
    v55 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v55 >= v38)
    {
      break;
    }

    v37 = v34[v55];
    ++v42;
    if (v37)
    {
      v42 = v55;
      goto LABEL_6;
    }
  }

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v91 = sub_226D6E5CC();

  v92 = [objc_opt_self() orPredicateWithSubpredicates_];

  v51 = v177;
  [v177 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_226D71F20;
  v94 = v166;
  *(v93 + 32) = v166;
  v34 = v94;
  v95 = sub_226D6E5CC();

  [v51 setSortDescriptors_];

  [v51 setFetchLimit_];
  v40 = v178;
  result = sub_226D6EBBC();
  if (v40)
  {
    LOBYTE(v2) = v40;

    return v2 & 1;
  }

  v154 = v39;
  if (!(result >> 62))
  {
    v96 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_23;
  }

LABEL_45:
  v126 = result;
  v96 = sub_226D6EDFC();
  result = v126;
LABEL_23:
  v97 = v169;
  v98 = v174;
  v100 = v162;
  v99 = v163;
  if (!v96)
  {

    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  v178 = v40;
  v166 = v34;
  if ((result & 0xC000000000000001) != 0)
  {
    v101 = MEMORY[0x22AA8AFD0](0);
LABEL_27:
    v102 = v101;

    v175 = v102;
    sub_226D69CFC();
    v103 = v176;
    v168 = *(v176 + 104);
    v168(v100, v161, v97);
    v167 = *(v103 + 56);
    v167(v100, 0, 1, v97);
    v104 = *(v98 + 48);
    v105 = v173;
    sub_226B16494(v99, v173);
    sub_226B16494(v100, v105 + v104);
    v106 = v100;
    v107 = *(v103 + 48);
    if (v107(v105, 1, v97) == 1)
    {
      sub_226AC47B0(v106, &qword_27D7A68B0, qword_226D72098);
      v108 = v173;
      sub_226AC47B0(v99, &qword_27D7A68B0, qword_226D72098);
      if (v107(v108 + v104, 1, v97) == 1)
      {
        sub_226AC47B0(v108, &qword_27D7A68B0, qword_226D72098);
LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {
      v109 = v155;
      sub_226B16494(v105, v155);
      v108 = v105;
      if (v107(v105 + v104, 1, v97) != 1)
      {
        v118 = v105 + v104;
        v119 = v170;
        (*(v103 + 32))(v170, v118, v97);
        sub_226B16504(&qword_27D7A68B8, MEMORY[0x277CC7A48]);
        v161 = sub_226D6E35C();
        v120 = *(v103 + 8);
        v120(v119, v97);
        v121 = v162;
        v162 = v107;
        sub_226AC47B0(v121, &qword_27D7A68B0, qword_226D72098);
        sub_226AC47B0(v163, &qword_27D7A68B0, qword_226D72098);
        v120(v109, v97);
        v107 = v162;
        sub_226AC47B0(v105, &qword_27D7A68B0, qword_226D72098);
        if (v161)
        {
          goto LABEL_41;
        }

        goto LABEL_34;
      }

      sub_226AC47B0(v162, &qword_27D7A68B0, qword_226D72098);
      sub_226AC47B0(v163, &qword_27D7A68B0, qword_226D72098);
      (*v164)(v109, v97);
    }

    sub_226AC47B0(v108, &qword_27D7A68A8, &qword_226D72090);
LABEL_34:
    v110 = v159;
    v111 = v175;
    sub_226D69CFC();
    v112 = v107;
    v113 = v158;
    v114 = v169;
    v168(v158, v154, v169);
    v167(v113, 0, 1, v114);
    v115 = *(v174 + 48);
    v116 = v172;
    sub_226B16494(v110, v172);
    sub_226B16494(v113, v116 + v115);
    if (v112(v116, 1, v114) == 1)
    {

      sub_226AC47B0(v113, &qword_27D7A68B0, qword_226D72098);
      sub_226AC47B0(v110, &qword_27D7A68B0, qword_226D72098);
      if (v112(v116 + v115, 1, v114) == 1)
      {
        sub_226AC47B0(v116, &qword_27D7A68B0, qword_226D72098);
LABEL_42:
        LOBYTE(v2) = 1;
        return v2 & 1;
      }
    }

    else
    {
      v117 = v171;
      sub_226B16494(v116, v171);
      if (v112(v116 + v115, 1, v114) != 1)
      {
        v122 = v176 + 32;
        v123 = v116 + v115;
        v124 = v170;
        (*(v176 + 32))(v170, v123, v114);
        sub_226B16504(&qword_27D7A68B8, MEMORY[0x277CC7A48]);
        LOBYTE(v2) = sub_226D6E35C();

        v125 = *(v122 - 24);
        v125(v124, v114);
        sub_226AC47B0(v158, &qword_27D7A68B0, qword_226D72098);
        sub_226AC47B0(v159, &qword_27D7A68B0, qword_226D72098);
        v125(v117, v114);
        sub_226AC47B0(v116, &qword_27D7A68B0, qword_226D72098);
        return v2 & 1;
      }

      sub_226AC47B0(v158, &qword_27D7A68B0, qword_226D72098);
      sub_226AC47B0(v159, &qword_27D7A68B0, qword_226D72098);
      (*v164)(v117, v114);
    }

    sub_226AC47B0(v116, &qword_27D7A68A8, &qword_226D72090);
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v101 = *(result + 32);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t ManagedCloudOrderEvent.MerchantSource.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (!*(v0 + 48))
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 48) == 1)
  {
    v5 = 1;
LABEL_5:
    MEMORY[0x22AA8B3B0](v5);
    sub_226D6E42C();
    goto LABEL_7;
  }

  v7 = v0[4];
  v6 = v0[5];
  MEMORY[0x22AA8B3B0](2);
  sub_226D6E42C();
  sub_226D6E42C();
LABEL_7:

  return sub_226D6E42C();
}

uint64_t ManagedCloudOrderEvent.MerchantSource.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_226D6F2FC();
  if (v7)
  {
    if (v7 != 1)
    {
      MEMORY[0x22AA8B3B0](2);
      sub_226D6E42C();
      sub_226D6E42C();
      goto LABEL_7;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x22AA8B3B0](v8);
  sub_226D6E42C();
LABEL_7:
  sub_226D6E42C();
  return sub_226D6F35C();
}

uint64_t sub_226B13138()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (!*(v0 + 48))
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 48) == 1)
  {
    v5 = 1;
LABEL_5:
    MEMORY[0x22AA8B3B0](v5);
    sub_226D6E42C();
    goto LABEL_7;
  }

  v7 = v0[4];
  v6 = v0[5];
  MEMORY[0x22AA8B3B0](2);
  sub_226D6E42C();
  sub_226D6E42C();
LABEL_7:

  return sub_226D6E42C();
}

uint64_t sub_226B13208()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_226D6F2FC();
  if (v7)
  {
    if (v7 != 1)
    {
      MEMORY[0x22AA8B3B0](2);
      sub_226D6E42C();
      sub_226D6E42C();
      goto LABEL_7;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x22AA8B3B0](v8);
  sub_226D6E42C();
LABEL_7:
  sub_226D6E42C();
  return sub_226D6F35C();
}

void sub_226B132E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71[0] = a2;
  v5 = sub_226D6708C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6898, &unk_226D75B90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v71 - v12;
  v94 = sub_226D670CC();
  v14 = *(v94 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v94);
  v87 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x277D84FA0];
  v100 = a1;
  v17 = *(a1 + 16);

  if (!v17)
  {
LABEL_54:

    return;
  }

  v88 = (v14 + 48);
  v86 = (v14 + 32);
  v85 = (v6 + 88);
  v84 = (v14 + 8);
  v72 = (v6 + 8);
  v83 = *MEMORY[0x277CC6AF0];
  v79 = (v6 + 96);
  v77 = *MEMORY[0x277CC6B08];
  v75 = *MEMORY[0x277CC6A98];
  v78 = xmmword_226D71840;
  v80 = v5;
  v95 = v9;
  v93 = v13;
LABEL_4:
  v18 = -1 << *(a1 + 32);
  v19 = sub_226D6ED6C();
  sub_226BDEFE0(v19, *(a1 + 36), &v96);
  v103 = v96;
  v104 = v97;
  v105 = v98;
  v106 = v99;
  sub_226AE50D8(&v103, &v96);
  sub_226C25434(&v96, &v103);
  sub_226AE5134(v96, *(&v96 + 1), v97, *(&v97 + 1), v98, *(&v98 + 1), v99);
  v20 = sub_226D69CBC();
  v96 = v103;
  v97 = v104;
  v98 = v105;
  v99 = v106;
  v21 = sub_226B14D88(&v96);
  sub_226B16458(&v103);
  [v20 setPredicate_];

  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v22 = sub_226D6E5CC();
  [v20 setSortDescriptors_];

  v23 = sub_226D6EBBC();
  if (v3)
  {

    return;
  }

  v73 = v20;
  if (v23 >> 62)
  {
    v70 = v23;
    v24 = sub_226D6EDFC();
    v23 = v70;
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v94;
  v74 = 0;
  if (v24)
  {
    v26 = 0;
    v92 = v23 & 0xC000000000000001;
    v91 = v23 & 0xFFFFFFFFFFFFFF8;
    v27 = MEMORY[0x277D84F90];
    v89 = v24;
    v90 = v23;
    while (1)
    {
      if (v92)
      {
        v28 = MEMORY[0x22AA8AFD0](v26, v23);
      }

      else
      {
        if (v26 >= *(v91 + 16))
        {
          goto LABEL_58;
        }

        v28 = *(v23 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_57;
      }

      sub_226D69C8C();
      if ((*v88)(v13, 1, v25) == 1)
      {
        sub_226AC47B0(v13, &qword_27D7A6898, &unk_226D75B90);
      }

      else
      {
        v32 = v87;
        (*v86)();
        sub_226D670AC();
        v33 = (*v85)(v9, v5);
        if (v33 == v83)
        {
          (*v79)(v9, v5);
          v81 = *v9;
          v34 = *(v9 + 2);
          v35 = *(v9 + 3);
          v82 = *(v9 + 2);
          v36 = *(v95 + 6);
          v37 = *(v95 + 7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A0, &unk_226D75900);
          v31 = swift_allocObject();
          v38 = v81;
          *(v31 + 16) = v78;
          *(v31 + 32) = v38;
          *(v31 + 48) = v34;
          *(v31 + 56) = v35;
          *(v31 + 64) = 0;
          *(v31 + 72) = 0;
          *(v31 + 80) = 1;
          *(v31 + 88) = v82;
          *(v31 + 104) = v36;
          *(v31 + 112) = v37;
          v9 = v95;
          v5 = v80;
          *(v31 + 120) = 0;
          *(v31 + 128) = 0;
          *(v31 + 136) = 1;
LABEL_24:

          (*v84)(v87, v94);
          goto LABEL_25;
        }

        if (v33 == v77)
        {
          (*v79)(v9, v5);
          v39 = *v9;
          v40 = *(v9 + 1);
          v41 = *(v9 + 2);
          v42 = *(v95 + 3);
          v82 = *(v95 + 2);
          *&v81 = *(v95 + 6);
          v76 = *(v95 + 7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A0, &unk_226D75900);
          v31 = swift_allocObject();
          *(v31 + 16) = v78;
          *(v31 + 32) = v39;
          *(v31 + 40) = v40;
          *(v31 + 48) = v41;
          *(v31 + 56) = v42;
          v5 = v80;
          v9 = v95;
          *(v31 + 64) = 0;
          *(v31 + 72) = 0;
          *(v31 + 80) = 1;
          *(v31 + 88) = v39;
          *(v31 + 96) = v40;
          *(v31 + 104) = v82;
          v43 = v76;
          *(v31 + 120) = v81;
          *(v31 + 128) = v43;
          *(v31 + 136) = 2;

          goto LABEL_24;
        }

        if (v33 == v75)
        {
          (*v79)(v9, v5);
          v82 = *v9;
          v44 = *(v9 + 2);
          v45 = *(v9 + 3);
          v81 = *(v9 + 2);
          v46 = *(v95 + 6);
          v47 = *(v95 + 7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A0, &unk_226D75900);
          v31 = swift_allocObject();
          v48 = v81;
          *(v31 + 16) = v78;
          *(v31 + 32) = v48;
          *(v31 + 48) = v46;
          *(v31 + 56) = v47;
          v9 = v95;
          *(v31 + 64) = 0;
          *(v31 + 72) = 0;
          *(v31 + 80) = 1;
          *(v31 + 88) = v82;
          *(v31 + 104) = v44;
          *(v31 + 112) = v45;
          v5 = v80;
          *(v31 + 120) = 0;
          *(v31 + 128) = 0;
          *(v31 + 136) = 0;
          goto LABEL_24;
        }

        (*v84)(v32, v25);
        (*v72)(v9, v5);
      }

      v31 = MEMORY[0x277D84F90];
LABEL_25:
      v49 = *(v31 + 16);
      v50 = *(v27 + 2);
      v51 = v50 + v49;
      if (__OFADD__(v50, v49))
      {
        goto LABEL_59;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v51 > *(v27 + 3) >> 1)
      {
        if (v50 <= v51)
        {
          v53 = v50 + v49;
        }

        else
        {
          v53 = v50;
        }

        v27 = sub_226BBAE6C(isUniquelyReferenced_nonNull_native, v53, 1, v27);
      }

      v13 = v93;
      v25 = v94;
      if (*(v31 + 16))
      {
        if ((*(v27 + 3) >> 1) - *(v27 + 2) < v49)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v49)
        {
          v54 = *(v27 + 2);
          v55 = __OFADD__(v54, v49);
          v56 = v54 + v49;
          if (v55)
          {
            goto LABEL_62;
          }

          *(v27 + 2) = v56;
        }
      }

      else
      {

        if (v49)
        {
          goto LABEL_60;
        }
      }

      ++v26;
      v23 = v90;
      if (v30 == v89)
      {
        goto LABEL_40;
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_40:

  v57 = sub_226AE43CC(v27);

  v58 = 0;
  v59 = 1 << *(v57 + 32);
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  else
  {
    v60 = -1;
  }

  v61 = v60 & *(v57 + 56);
  v62 = (v59 + 63) >> 6;
  v63 = v107;
  if (v61)
  {
    while (2)
    {
      v64 = v58;
LABEL_50:
      v65 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      v66 = *(v57 + 48) + 56 * (v65 | (v64 << 6));
      v67 = *(v66 + 48);
      v68 = *(v66 + 32);
      v69 = *v66;
      v101[1] = *(v66 + 16);
      v101[2] = v68;
      v101[0] = v69;
      v102 = v67;
      sub_226AE50D8(v101, &v96);
      if (sub_226D4DAB0(v101, v63))
      {
        sub_226B16458(v101);
        v58 = v64;
        if (v61)
        {
          continue;
        }
      }

      else
      {
        sub_226C25434(&v96, v101);
        sub_226AE5134(v96, *(&v96 + 1), v97, *(&v97 + 1), v98, *(&v98 + 1), v99);
        v58 = v64;
        if (v61)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v64 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v64 >= v62)
    {

      a1 = v100;
      v3 = v74;
      v13 = v93;
      if (!*(v100 + 16))
      {
        goto LABEL_54;
      }

      goto LABEL_4;
    }

    v61 = *(v57 + 56 + 8 * v64);
    ++v58;
    if (v61)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t sub_226B13DBC()
{
  v1 = sub_226D67A8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = MEMORY[0x277D84FA0];
  v6 = [v0 merchantEmailAddress];
  if (v6)
  {
    v7 = v6;
    v8 = sub_226D6E39C();
    v10 = v9;

    v11 = [v0 merchantEmailDisplayName];
    if (v11)
    {
      v12 = v11;
      v13 = sub_226D6E39C();
      v14 = v5;
      v16 = v15;

      v139[0] = v8;
      v139[1] = v10;
      v139[2] = v13;
      v139[3] = v16;
      v5 = v14;
      v139[4] = 0;
      v139[5] = 0;
      v140 = 1;
      sub_226C25434(&v118, v139);
      sub_226AE5134(v118, *(&v118 + 1), v119, *(&v119 + 1), v120, v121, v122);
    }

    else
    {
    }
  }

  v17 = sub_226D6987C();
  v20 = v17;
  if ((v17 & 0xC000000000000001) != 0)
  {
    sub_226D6EDBC();
    sub_226D6C02C();
    sub_226B16504(&qword_27D7A6820, MEMORY[0x277CC81E0]);
    sub_226D6E8DC();
    v20 = v134;
    v21 = v135;
    v22 = v136;
    v23 = v137;
    v24 = v138;
  }

  else
  {
    v23 = 0;
    v25 = -1 << *(v17 + 32);
    v21 = v17 + 56;
    v22 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v17 + 56);
  }

  v103 = v22;
  v28 = (v22 + 64) >> 6;
  v109 = v28;
  v110 = (v2 + 8);
  while (1)
  {
    if (v20 < 0)
    {
      v34 = sub_226D6EE2C();
      if (!v34 || (*&v131 = v34, sub_226D6C02C(), swift_dynamicCast(), v33 = v118, v31 = v23, v32 = v24, !v118))
      {
LABEL_72:
        sub_226AD3C20();
        return v133;
      }

      goto LABEL_22;
    }

    v29 = v23;
    v30 = v24;
    v31 = v23;
    if (!v24)
    {
      break;
    }

LABEL_18:
    v32 = (v30 - 1) & v30;
    v33 = *(*(v20 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v33)
    {
      goto LABEL_72;
    }

LABEL_22:
    v35 = v33;
    sub_226D6C01C();
    v36 = sub_226D67A7C();
    (*v110)(v5, v1);
    if ((v36 & 1) == 0)
    {

      v23 = v31;
      v24 = v32;
      v28 = v109;
      continue;
    }

    v106 = v32;
    v37 = sub_226D6E36C();
    v107 = v35;
    v38 = [v35 valueForKey_];

    if (v38)
    {
      sub_226D6ED0C();
      swift_unknownObjectRelease();
    }

    else
    {
      v131 = 0u;
      v132 = 0u;
    }

    v118 = v131;
    v119 = v132;
    v24 = v106;
    if (!*(&v132 + 1))
    {
      sub_226AC47B0(&v118, &unk_27D7A8BB0, &unk_226D74340);
LABEL_42:

      v23 = v31;
      v28 = v109;
      continue;
    }

    sub_226D69D3C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_42;
    }

    v102 = v1;
    v39 = v130;
    v40 = [v130 fromEmailAddress];
    v41 = sub_226D6E39C();
    v43 = v42;

    v44 = v107;
    v45 = [v107 merchantDisplayName];
    if (!v45)
    {

      v23 = v31;
      v28 = v109;
      v1 = v102;
      continue;
    }

    v98 = v39;
    v99 = v21;
    v100 = v20;
    v101 = v5;
    v46 = v45;
    v47 = sub_226D6E39C();
    v20 = v48;

    v21 = v133;
    v49 = *(v133 + 40);
    sub_226D6F2FC();
    MEMORY[0x22AA8B3B0](1);
    v115 = v41;
    v117 = v43;
    sub_226D6E42C();
    v114 = v47;
    v116 = v20;
    sub_226D6E42C();
    v50 = sub_226D6F35C();
    v111 = v21 + 56;
    v112 = v21;
    v51 = -1 << *(v21 + 32);
    v52 = v50 & ~v51;
    if (((*(v21 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
    {
LABEL_44:
      v63 = v133;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v131 = v63;
      v23 = *(v63 + 16);
      v65 = *(v63 + 24);

      if (v65 <= v23)
      {
        v66 = v23 + 1;
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_226C28280(v66);
        }

        else
        {
          sub_226C2DE40(v66);
        }

        v67 = v131;
        v68 = *(v131 + 40);
        sub_226D6F2FC();
        MEMORY[0x22AA8B3B0](1);
        sub_226D6E42C();
        sub_226D6E42C();
        v69 = sub_226D6F35C();
        v111 = v67 + 56;
        v112 = v67;
        v70 = -1 << *(v67 + 32);
        v52 = v69 & ~v70;
        if ((*(v67 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
        {
          v108 = ~v70;
          v19 = v116;
          v71 = v117;
          v18 = v114;
          v72 = v115;
          while (1)
          {
            v73 = *(v112 + 48) + 56 * v52;
            v21 = *v73;
            v20 = *(v73 + 8);
            v74 = *(v73 + 16);
            v75 = *(v73 + 24);
            v23 = *(v73 + 32);
            v76 = *(v73 + 40);
            v77 = *(v73 + 48);
            *&v118 = *v73;
            *(&v118 + 1) = v20;
            *&v119 = v74;
            *(&v119 + 1) = v75;
            v120 = v23;
            v121 = v76;
            v113 = v76;
            v122 = v77;
            v123 = v72;
            v124 = v71;
            v125 = v18;
            v126 = v19;
            v127 = 0;
            v128 = 0;
            v129 = 1;
            if (v77 == 1 && (v21 == v72 ? (v78 = v20 == v71) : (v78 = 0), v78 || (v79 = sub_226D6F21C(), v18 = v114, v19 = v116, (v79 & 1) != 0)))
            {
              if (v74 == v18 && v75 == v19)
              {
                goto LABEL_75;
              }

              v81 = sub_226D6F21C();

              sub_226AFD74C(v21, v20, v74, v75, v23, v113, 1u);
              sub_226AC47B0(&v118, &unk_27D7A9640, &qword_226D7A5E0);
              if (v81)
              {
                goto LABEL_76;
              }
            }

            else
            {

              sub_226AFD74C(v21, v20, v74, v75, v23, v113, v77);
              sub_226AC47B0(&v118, &unk_27D7A9640, &qword_226D7A5E0);
            }

            v52 = (v52 + 1) & v108;
            v19 = v116;
            v71 = v117;
            v18 = v114;
            v72 = v115;
            if (((*(v111 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
            {
              goto LABEL_67;
            }
          }
        }
      }

      else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226C2CD40();
      }

      v19 = v116;
      v71 = v117;
      v18 = v114;
      v72 = v115;
LABEL_67:
      v82 = v131;
      *(v131 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v52;
      v83 = *(v82 + 48) + 56 * v52;
      *v83 = v72;
      *(v83 + 8) = v71;
      *(v83 + 16) = v18;
      *(v83 + 24) = v19;
      *(v83 + 32) = 0;
      *(v83 + 40) = 0;
      *(v83 + 48) = 1;
      v84 = *(v82 + 16);
      v85 = __OFADD__(v84, 1);
      v86 = v84 + 1;
      if (!v85)
      {
        *(v82 + 16) = v86;

        v133 = v82;
        v23 = v31;
        v24 = v106;
        v1 = v102;
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    v108 = ~v51;
    v53 = v116;
    while (1)
    {
      v54 = 56 * v52;
      v55 = *(v112 + 48) + 56 * v52;
      v20 = *v55;
      v56 = *(v55 + 8);
      v21 = *(v55 + 16);
      v57 = *(v55 + 24);
      v58 = *(v55 + 32);
      v59 = *(v55 + 40);
      v60 = *(v55 + 48);
      *&v118 = *v55;
      *(&v118 + 1) = v56;
      *&v119 = v21;
      *(&v119 + 1) = v57;
      v113 = v58;
      v120 = v58;
      v121 = v59;
      v122 = v60;
      v61 = v114;
      v123 = v115;
      v124 = v117;
      v125 = v114;
      v126 = v53;
      v127 = 0;
      v128 = 0;
      v129 = 1;
      if (v60 != 1 || (v20 != v115 || v56 != v117) && (v62 = sub_226D6F21C(), v54 = 56 * v52, v61 = v114, v53 = v116, (v62 & 1) == 0))
      {

        sub_226AFD74C(v20, v56, v21, v57, v113, v59, v60);
        sub_226AC47B0(&v118, &unk_27D7A9640, &qword_226D7A5E0);
        goto LABEL_32;
      }

      v104 = v54;
      if (v21 == v61 && v57 == v53)
      {
        break;
      }

      v105 = sub_226D6F21C();

      sub_226AFD74C(v20, v56, v21, v57, v113, v59, 1u);
      sub_226AC47B0(&v118, &unk_27D7A9640, &qword_226D7A5E0);
      if (v105)
      {

        goto LABEL_70;
      }

LABEL_32:
      v52 = (v52 + 1) & v108;
      v53 = v116;
      if (((*(v111 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    sub_226AC47B0(&v118, &unk_27D7A9640, &qword_226D7A5E0);
LABEL_70:
    v1 = v102;
    v87 = *(v112 + 48) + v104;
    v88 = *v87;
    v89 = *(v87 + 8);
    v90 = *(v87 + 16);
    v91 = *(v87 + 24);
    v92 = *(v87 + 32);
    v93 = *(v87 + 40);
    v94 = *(v87 + 48);
    sub_226AFD74C(*v87, v89, v90, v91, v92, v93, v94);

    sub_226AE5134(v88, v89, v90, v91, v92, v93, v94);
    v23 = v31;
    v24 = v106;
LABEL_71:
    v20 = v100;
    v5 = v101;
    v21 = v99;
    v28 = v109;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
      goto LABEL_72;
    }

    v30 = *(v21 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  v96 = v19;
  v97 = v18;

  sub_226AFD74C(v21, v20, v97, v96, v23, v113, 1u);
  sub_226AC47B0(&v118, &unk_27D7A9640, &qword_226D7A5E0);
LABEL_76:
  result = sub_226D6F24C();
  __break(1u);
  return result;
}

uint64_t _s10FinanceKit22ManagedCloudOrderEventC0A6DaemonE14MerchantSourceO2eeoiySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v35[0] = *a1;
  v35[1] = v3;
  v35[2] = v5;
  v35[3] = v4;
  v33 = v6;
  v34 = v4;
  v35[4] = v6;
  v35[5] = v7;
  v31 = v3;
  v32 = v7;
  v36 = v8;
  v37 = v9;
  v38 = v10;
  v39 = v11;
  v40 = v12;
  v41 = v14;
  v42 = v13;
  v43 = v15;
  if (v8)
  {
    if (v8 == 1)
    {
      if (v15 == 1)
      {
        if (v2 == v9 && v3 == v10 || (sub_226D6F21C() & 1) != 0)
        {
          v16 = v34;
          if (v5 != v11 || v34 != v12)
          {
            v23 = sub_226D6F21C();
            LOBYTE(v8) = 1;
            sub_226AFD74C(v9, v10, v11, v12, v14, v13, 1u);
            goto LABEL_31;
          }

          LOBYTE(v8) = 1;
          v17 = v9;
          v18 = v10;
          v19 = v5;
          v20 = v14;
          v21 = v13;
          v22 = 1;
          goto LABEL_27;
        }

        LOBYTE(v8) = 1;
        v24 = v9;
        v25 = v10;
        v26 = v11;
        v27 = v12;
        v28 = v14;
        v29 = v13;
        LOBYTE(v15) = 1;
        goto LABEL_29;
      }
    }

    else if (v15 == 2)
    {
      if (v2 == v9 && v3 == v10 || (sub_226D6F21C()) && (v5 == v11 && v34 == v12 || (sub_226D6F21C()))
      {
        v21 = v32;
        if (v33 != v14 || v32 != v13)
        {
          v23 = sub_226D6F21C();
          LOBYTE(v8) = 2;
          sub_226AFD74C(v9, v10, v11, v12, v14, v13, 2u);
          goto LABEL_31;
        }

        LOBYTE(v8) = 2;
        v17 = v9;
        v18 = v10;
        v19 = v11;
        v16 = v12;
        v20 = v33;
        v22 = 2;
LABEL_27:
        sub_226AFD74C(v17, v18, v19, v16, v20, v21, v22);
        v23 = 1;
        goto LABEL_31;
      }

      LOBYTE(v8) = 2;
      v24 = v9;
      v25 = v10;
      v26 = v11;
      v27 = v12;
      v28 = v14;
      v29 = v13;
      LOBYTE(v15) = 2;
      goto LABEL_29;
    }

LABEL_28:
    v24 = v9;
    v25 = v10;
    v26 = v11;
    v27 = v12;
    v28 = v14;
    v29 = v13;
LABEL_29:
    sub_226AFD74C(v24, v25, v26, v27, v28, v29, v15);
LABEL_30:
    v23 = 0;
    goto LABEL_31;
  }

  if (v15)
  {
    goto LABEL_28;
  }

  if ((v2 != v9 || v3 != v10) && (sub_226D6F21C() & 1) == 0)
  {
    sub_226AFD74C(v9, v10, v11, v12, v14, v13, 0);
    LOBYTE(v8) = 0;
    goto LABEL_30;
  }

  if (v5 == v11 && v34 == v12)
  {
    sub_226AFD74C(v9, v10, v5, v34, v14, v13, 0);
    LOBYTE(v8) = 0;
    v23 = 1;
  }

  else
  {
    v23 = sub_226D6F21C();
    sub_226AFD74C(v9, v10, v11, v12, v14, v13, 0);
    LOBYTE(v8) = 0;
  }

LABEL_31:
  sub_226AFD74C(v2, v31, v5, v34, v33, v32, v8);
  sub_226AC47B0(v35, &unk_27D7A9640, &qword_226D7A5E0);
  return v23 & 1;
}

unint64_t sub_226B14C58()
{
  result = qword_27D7A6890;
  if (!qword_27D7A6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6890);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_226B14CD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_226B14D1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

id sub_226B14D88(uint64_t *a1)
{
  v2 = sub_226D69CAC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v152 = a1[1];
  v153 = v8;
  v10 = a1[2];
  v9 = a1[3];
  v11 = *(a1 + 48);
  v150 = v5;
  if (v11)
  {
    v145 = v7;
    if (v11 == 1)
    {
      *&v148 = v9;
      *&v146 = v10;
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v12 = swift_allocObject();
      v147 = xmmword_226D71F40;
      *(v12 + 16) = xmmword_226D71F40;
      v134 = v12;
      v13 = *MEMORY[0x277CC7A18];
      v14 = v3[13];
      v137 = v3 + 13;
      v138 = v14;
      v14(v7, v13, v2);
      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      v140 = "Unknown classification outcome";
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v15 = swift_allocObject();
      v142 = xmmword_226D70840;
      *(v15 + 16) = xmmword_226D70840;
      v16 = sub_226D69C9C();
      v18 = v17;
      *(v15 + 56) = MEMORY[0x277D837D0];
      v19 = sub_226B16404();
      *(v15 + 64) = v19;
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      v20 = sub_226D6E91C();
      v21 = v3[1];
      v149 = v3 + 1;
      v141 = v21;
      v21(v7, v2);
      *(v12 + 32) = v20;
      v22 = swift_allocObject();
      *(v22 + 16) = v147;
      v23 = swift_allocObject();
      *(v23 + 16) = v147;
      v24 = swift_allocObject();
      v151 = xmmword_226D71840;
      *(v24 + 16) = xmmword_226D71840;
      v139 = 0x8000000226D7F180;
      v25 = MEMORY[0x277D837D0];
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = v19;
      *(v24 + 32) = 0xD000000000000014;
      *(v24 + 40) = 0x8000000226D7F180;
      *(v24 + 96) = v25;
      *(v24 + 104) = v19;
      v26 = v25;
      v27 = v152;
      *(v24 + 72) = v153;
      *(v24 + 80) = v27;

      *(v23 + 32) = sub_226D6E91C();
      v28 = swift_allocObject();
      *(v28 + 16) = v151;
      v136 = 0x8000000226D7F1A0;
      *(v28 + 56) = v26;
      *(v28 + 64) = v19;
      v135 = 0xD000000000000018;
      *(v28 + 32) = 0xD000000000000018;
      *(v28 + 40) = 0x8000000226D7F1A0;
      *(v28 + 96) = v26;
      *(v28 + 104) = v19;
      v29 = v146;
      *(v28 + 72) = v146;
      *(v28 + 80) = v148;

      *(v23 + 40) = sub_226D6E91C();
      v30 = sub_226D6E5CC();

      v144 = objc_opt_self();
      v31 = [v144 andPredicateWithSubpredicates_];

      *(v22 + 32) = v31;
      v32 = swift_allocObject();
      *(v32 + 16) = v147;
      v33 = swift_allocObject();
      *(v33 + 16) = v151;
      v34 = MEMORY[0x277D837D0];
      *(v33 + 56) = MEMORY[0x277D837D0];
      *(v33 + 64) = v19;
      *(v33 + 32) = 0xD000000000000019;
      *(v33 + 40) = 0x8000000226D7F1C0;
      *(v33 + 96) = v34;
      *(v33 + 104) = v19;
      *(v33 + 72) = v153;
      *(v33 + 80) = v27;

      *(v32 + 32) = sub_226D6E91C();
      v35 = swift_allocObject();
      *(v35 + 16) = v151;
      *(v35 + 56) = v34;
      *(v35 + 64) = v19;
      *(v35 + 32) = 0xD00000000000001DLL;
      *(v35 + 40) = 0x8000000226D7F200;
      *(v35 + 96) = v34;
      *(v35 + 104) = v19;
      *(v35 + 72) = v29;
      *(v35 + 80) = v148;

      *(v32 + 40) = sub_226D6E91C();
      v36 = sub_226D6E5CC();

      v37 = v144;
      v38 = [v144 andPredicateWithSubpredicates_];

      *(v22 + 40) = v38;
      v39 = sub_226D6E5CC();

      v40 = [v37 orPredicateWithSubpredicates_];

      v134[5] = v40;
      v41 = sub_226D6E5CC();

      v134 = [v37 andPredicateWithSubpredicates_];

      v42 = swift_allocObject();
      *(v42 + 16) = v147;
      v43 = v145;
      v44 = v150;
      v138(v145, *MEMORY[0x277CC7A30], v150);
      v45 = swift_allocObject();
      *(v45 + 16) = v142;
      v46 = v43;
      v47 = sub_226D69C9C();
      v48 = MEMORY[0x277D837D0];
      *(v45 + 56) = MEMORY[0x277D837D0];
      *(v45 + 64) = v19;
      *(v45 + 32) = v47;
      *(v45 + 40) = v49;
      v50 = sub_226D6E91C();
      v141(v46, v44);
      *(v42 + 32) = v50;
      v51 = swift_allocObject();
      *(v51 + 16) = v151;
      *(v51 + 56) = v48;
      *(v51 + 64) = v19;
      *(v51 + 32) = 0xD000000000000014;
      *(v51 + 40) = v139;
      *(v51 + 96) = v48;
      *(v51 + 104) = v19;
      v52 = v152;
      *(v51 + 72) = v153;
      *(v51 + 80) = v52;

      *(v42 + 40) = sub_226D6E91C();
      v53 = sub_226D6E5CC();

      v133 = [v144 andPredicateWithSubpredicates_];

      v54 = swift_allocObject();
      v147 = xmmword_226D71F30;
      *(v54 + 16) = xmmword_226D71F30;
      v55 = v150;
      v138(v46, *MEMORY[0x277CC79C0], v150);
      v56 = swift_allocObject();
      *(v56 + 16) = v142;
      v57 = sub_226D69C9C();
      *(v56 + 56) = v48;
      *(v56 + 64) = v19;
      *(v56 + 32) = v57;
      *(v56 + 40) = v58;
      v59 = sub_226D6E91C();
      v141(v46, v55);
      *(v54 + 32) = v59;
      v60 = swift_allocObject();
      *(v60 + 16) = v151;
      *(v60 + 56) = v48;
      *(v60 + 64) = v19;
      *(v60 + 32) = 0xD000000000000014;
      *(v60 + 40) = v139;
      *(v60 + 96) = v48;
      *(v60 + 104) = v19;
      *(v60 + 72) = v153;
      *(v60 + 80) = v52;

      *(v54 + 40) = sub_226D6E91C();
      v61 = swift_allocObject();
      *(v61 + 16) = v151;
      *(v61 + 56) = v48;
      *(v61 + 64) = v19;
      v62 = v136;
      *(v61 + 32) = v135;
      *(v61 + 40) = v62;
      *(v61 + 96) = v48;
      *(v61 + 104) = v19;
      *(v61 + 72) = v146;
      *(v61 + 80) = v148;

      *(v54 + 48) = sub_226D6E91C();
      v63 = sub_226D6E5CC();

      v64 = v144;
      v65 = [v144 andPredicateWithSubpredicates_];

      v66 = swift_allocObject();
      *(v66 + 16) = v147;
      v67 = v134;
      v68 = v133;
      *(v66 + 32) = v134;
      *(v66 + 40) = v68;
      *(v66 + 48) = v65;
      v69 = v67;
      v70 = v68;
      v71 = v65;
      v72 = sub_226D6E5CC();

      v73 = [v64 orPredicateWithSubpredicates_];
    }

    else
    {
      v86 = a1[4];
      v140 = a1[5];
      v139 = v86;
      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
      v137 = swift_allocObject();
      v151 = xmmword_226D71F40;
      v137[1] = xmmword_226D71F40;
      v87 = *MEMORY[0x277CC7A18];
      *&v142 = v3[13];
      *&v147 = v3 + 13;
      (v142)(v7, v87, v2);
      sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
      v144 = "Unknown classification outcome";
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
      v88 = swift_allocObject();
      v146 = xmmword_226D70840;
      *(v88 + 16) = xmmword_226D70840;
      v89 = sub_226D69C9C();
      v91 = v90;
      *(v88 + 56) = MEMORY[0x277D837D0];
      v92 = sub_226B16404();
      *(v88 + 64) = v92;
      *(v88 + 32) = v89;
      *(v88 + 40) = v91;
      v93 = sub_226D6E91C();
      v94 = v3[1];
      v149 = v3 + 1;
      v143 = v94;
      v94(v7, v2);
      v95 = v137;
      *(v137 + 4) = v93;
      v96 = swift_allocObject();
      *(v96 + 16) = v151;
      v97 = swift_allocObject();
      v148 = xmmword_226D71840;
      *(v97 + 16) = xmmword_226D71840;
      v138 = 0x8000000226D7F180;
      v98 = MEMORY[0x277D837D0];
      *(v97 + 56) = MEMORY[0x277D837D0];
      *(v97 + 64) = v92;
      *(v97 + 32) = 0xD000000000000014;
      *(v97 + 40) = 0x8000000226D7F180;
      *(v97 + 96) = v98;
      *(v97 + 104) = v92;
      v100 = v152;
      v99 = v153;
      *(v97 + 72) = v153;
      *(v97 + 80) = v100;
      v101 = v99;

      *(v96 + 32) = sub_226D6E91C();
      v102 = swift_allocObject();
      *(v102 + 16) = v148;
      v103 = MEMORY[0x277D837D0];
      *(v102 + 56) = MEMORY[0x277D837D0];
      *(v102 + 64) = v92;
      *(v102 + 32) = 0xD000000000000019;
      *(v102 + 40) = 0x8000000226D7F1C0;
      *(v102 + 96) = v103;
      *(v102 + 104) = v92;
      *(v102 + 72) = v101;
      *(v102 + 80) = v100;

      *(v96 + 40) = sub_226D6E91C();
      v104 = sub_226D6E5CC();

      v105 = objc_opt_self();
      v136 = v105;
      v106 = [v105 orPredicateWithSubpredicates_];

      *(v95 + 5) = v106;
      v107 = sub_226D6E5CC();

      v137 = [v105 andPredicateWithSubpredicates_];

      v108 = swift_allocObject();
      *(v108 + 16) = v151;
      v109 = v145;
      v110 = v150;
      (v142)(v145, *MEMORY[0x277CC7A30], v150);
      v111 = swift_allocObject();
      *(v111 + 16) = v146;
      v112 = sub_226D69C9C();
      v113 = MEMORY[0x277D837D0];
      *(v111 + 56) = MEMORY[0x277D837D0];
      *(v111 + 64) = v92;
      *(v111 + 32) = v112;
      *(v111 + 40) = v114;
      v115 = sub_226D6E91C();
      v143(v109, v110);
      *(v108 + 32) = v115;
      v116 = swift_allocObject();
      *(v116 + 16) = v148;
      *(v116 + 56) = v113;
      *(v116 + 64) = v92;
      *(v116 + 32) = 0xD000000000000018;
      *(v116 + 40) = 0x8000000226D7F1E0;
      *(v116 + 96) = v113;
      *(v116 + 104) = v92;
      *(v116 + 72) = v139;
      *(v116 + 80) = v140;

      *(v108 + 40) = sub_226D6E91C();
      v117 = sub_226D6E5CC();

      v118 = v136;
      v140 = [v136 andPredicateWithSubpredicates_];

      v119 = swift_allocObject();
      *(v119 + 16) = v151;
      (v142)(v109, *MEMORY[0x277CC79C0], v110);
      v120 = swift_allocObject();
      *(v120 + 16) = v146;
      v121 = sub_226D69C9C();
      *(v120 + 56) = v113;
      *(v120 + 64) = v92;
      *(v120 + 32) = v121;
      *(v120 + 40) = v122;
      v123 = sub_226D6E91C();
      v143(v109, v110);
      *(v119 + 32) = v123;
      v124 = swift_allocObject();
      *(v124 + 16) = v148;
      *(v124 + 56) = v113;
      *(v124 + 64) = v92;
      *(v124 + 32) = 0xD000000000000014;
      *(v124 + 40) = v138;
      *(v124 + 96) = v113;
      *(v124 + 104) = v92;
      *(v124 + 72) = v153;
      *(v124 + 80) = v152;

      *(v119 + 40) = sub_226D6E91C();
      v125 = sub_226D6E5CC();

      v126 = [v118 andPredicateWithSubpredicates_];

      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_226D71F30;
      v128 = v137;
      v129 = v140;
      *(v127 + 32) = v137;
      *(v127 + 40) = v129;
      *(v127 + 48) = v126;
      v69 = v128;
      v70 = v129;
      v130 = v126;
      v72 = sub_226D6E5CC();

      v73 = [v118 orPredicateWithSubpredicates_];
    }
  }

  else
  {
    *&v148 = v9;
    *&v146 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_226D71F30;
    (v3[13])(v7, *MEMORY[0x277CC79C0], v2);
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    *&v151 = "Unknown classification outcome";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_226D70840;
    v76 = sub_226D69C9C();
    v78 = v77;
    v79 = v152;
    *(v75 + 56) = MEMORY[0x277D837D0];
    v80 = sub_226B16404();
    *(v75 + 64) = v80;
    *(v75 + 32) = v76;
    *(v75 + 40) = v78;
    v81 = sub_226D6E91C();
    (v3[1])(v7, v150);
    *(v74 + 32) = v81;
    v82 = swift_allocObject();
    v151 = xmmword_226D71840;
    *(v82 + 16) = xmmword_226D71840;
    v83 = MEMORY[0x277D837D0];
    *(v82 + 56) = MEMORY[0x277D837D0];
    *(v82 + 64) = v80;
    *(v82 + 32) = 0xD00000000000001ALL;
    *(v82 + 40) = 0x8000000226D7F220;
    *(v82 + 96) = v83;
    *(v82 + 104) = v80;
    v84 = v83;
    *(v82 + 72) = v153;
    *(v82 + 80) = v79;

    *(v74 + 40) = sub_226D6E91C();
    v85 = swift_allocObject();
    *(v85 + 16) = v151;
    *(v85 + 56) = v84;
    *(v85 + 64) = v80;
    *(v85 + 32) = 0xD00000000000001ELL;
    *(v85 + 40) = 0x8000000226D7F240;
    *(v85 + 96) = v84;
    *(v85 + 104) = v80;
    *(v85 + 72) = v146;
    *(v85 + 80) = v148;

    *(v74 + 48) = sub_226D6E91C();
    v72 = sub_226D6E5CC();

    v73 = [objc_opt_self() andPredicateWithSubpredicates_];
  }

  return v73;
}

BOOL sub_226B16018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v33 = a3;
  v34 = a4;
  v31 = a1;
  v32 = a2;
  v5 = sub_226D69CAC();
  *&v30 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_226D69D0C();
  v35 = sub_226D69CBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_226D71F30;
  (*(v6 + 104))(v9, *MEMORY[0x277CC7A28], v5);
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v29[1] = "Unknown classification outcome";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_226D70840;
  v12 = sub_226D69C9C();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x277D837D0];
  v15 = sub_226B16404();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v16 = sub_226D6E91C();
  (*(v6 + 8))(v9, v30);
  *(v10 + 32) = v16;
  v17 = swift_allocObject();
  v30 = xmmword_226D71840;
  *(v17 + 16) = xmmword_226D71840;
  v18 = MEMORY[0x277D837D0];
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = v15;
  *(v17 + 32) = 0xD000000000000014;
  *(v17 + 40) = 0x8000000226D7F180;
  *(v17 + 96) = v18;
  *(v17 + 104) = v15;
  v19 = v18;
  *(v17 + 72) = v31;
  *(v17 + 80) = v32;

  *(v10 + 40) = sub_226D6E91C();
  v20 = swift_allocObject();
  *(v20 + 16) = v30;
  *(v20 + 56) = v19;
  *(v20 + 64) = v15;
  *(v20 + 32) = 0xD000000000000018;
  *(v20 + 40) = 0x8000000226D7F1A0;
  *(v20 + 96) = v19;
  *(v20 + 104) = v15;
  *(v20 + 72) = v33;
  *(v20 + 80) = v34;

  *(v10 + 48) = sub_226D6E91C();
  v21 = sub_226D6E5CC();

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];

  v23 = v35;
  [v35 setPredicate_];
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v24 = sub_226D6E5CC();
  [v23 setSortDescriptors_];

  [v23 setFetchLimit_];
  v25 = v38;
  v26 = sub_226D6EBAC();

  if (!v25)
  {
    return v26 > 0;
  }

  return v27;
}

unint64_t sub_226B16404()
{
  result = qword_28105F578;
  if (!qword_28105F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F578);
  }

  return result;
}

uint64_t sub_226B16494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B16504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226B1654C(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_226B1656C, 0, 0);
}

uint64_t sub_226B1656C()
{
  v1 = v0[6];
  v2 = v0[7];
  type metadata accessor for MaintenanceSystemTask();
  inited = swift_initStackObject();
  v0[8] = inited;
  *(inited + 16) = v1;
  *(inited + 24) = v2;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_226B16634;

  return sub_226B1679C();
}

uint64_t sub_226B16634()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226B16730, 0, 0);
}

uint64_t sub_226B16730()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226B1679C()
{
  v1[2] = v0;
  v2 = sub_226D6BFCC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_226D67F7C();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_226D6D4AC();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B16914, 0, 0);
}

uint64_t sub_226B16914()
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F5E0);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Starting background maintenance", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];
  v20 = v0[3];
  v21 = v12;
  v22 = v0[6];

  v13 = *(v12 + 16);
  sub_226D6D46C();
  sub_226CB76C0(v5);
  v14 = *(v6 + 8);
  v14(v5, v8);
  sub_226D6D46C();
  sub_226D67F6C();
  sub_226D6BFBC();
  sub_226B16D70(v5, v7, v11, v13);
  v14(v5, v8);
  (*(v10 + 8))(v11, v20);
  (*(v9 + 8))(v7, v22);
  v15 = *(v21 + 24);
  v0[12] = v15;
  sub_226D6D46C();
  v16 = *(v15 + 112);
  v17 = sub_226D676AC();
  sub_226C163B8(v5, v17);
  sub_226C1685C(v5, v17);
  sub_226C16D00();
  sub_226C1704C();
  sub_226C17398();

  v14(v5, v8);
  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_226B16B9C;

  return sub_226C0F0F0();
}

uint64_t sub_226B16B9C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226B16CAC, v2, 0);
}

uint64_t sub_226B16CAC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[5];
  sub_226C0F724();

  v5 = v0[1];

  return v5();
}

uint64_t sub_226B16D70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_226D67F7C();
  v17[3] = v7;
  v17[4] = MEMORY[0x277CC70E0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a2, v7);
  v9 = sub_226D6BFCC();
  v16[3] = v9;
  v16[4] = MEMORY[0x277CC81C8];
  v10 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v9 - 8) + 16))(v10, a3, v9);
  v11 = a4[18];
  __swift_project_boxed_opaque_existential_1(a4 + 14, a4[17]);
  v12 = *(*(v11 + 8) + 8);
  sub_226D6BAAC();
  v13 = sub_226D676AC();

  sub_226D6EB8C();
  if (v15)
  {
    sub_226B6F2B0();
  }

  else
  {
    sub_226B6F5E4();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

void sub_226B17028(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedScheduler];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_226D6E36C();
  v7 = swift_allocObject();
  v7[2] = 0xD00000000000001ELL;
  v7[3] = 0x8000000226D7F2D0;
  v7[4] = &unk_226D72120;
  v7[5] = v5;
  v14[4] = sub_226B173EC;
  v14[5] = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_226C01160;
  v14[3] = &block_descriptor;
  v8 = _Block_copy(v14);

  v9 = [v4 registerForTaskWithIdentifier:v6 usingQueue:0 launchHandler:v8];
  _Block_release(v8);

  if ((v9 & 1) == 0)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F5E0);
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9DC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226AB4000, v11, v12, "Unable to register maintenance tasks", v13, 2u);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
    }
  }
}

uint64_t sub_226B17298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FB0, &qword_226D70870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226B17300(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);

  v3 = *(v1 + 24);

  return a1(v1, 32, 7);
}

uint64_t sub_226B17354()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226AD827C;

  return sub_226B1654C(v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226B17410()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D0, &qword_226D72168);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68D8, &qword_226D72170);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68F0, &unk_226D72180);
  v6 = *(v5 + 52);
  v7 = (*(v5 + 48) + 3) & 0x1FFFFFFFCLL;
  v8 = swift_allocObject();
  *&v8[(*(*v8 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_226B19AE8(v3, &v8[*(*v8 + *MEMORY[0x277D841D0] + 16)]);
  off_27D7A68C0 = v8;
  return result;
}

uint64_t sub_226B1757C(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 96) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = swift_task_alloc();
  v4 = sub_226D6B0FC();
  *(v2 + 40) = v4;
  v5 = *(v4 - 8);
  *(v2 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B17684, 0, 0);
}

uint64_t sub_226B17684()
{
  *(v0 + 64) = os_transaction_create();
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  *(v0 + 72) = __swift_project_value_buffer(v1, qword_27D7A7D10);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Attempting to show BackgroundRefreshAlert", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_226B177EC;
  v6 = *(v0 + 56);
  v7 = *(v0 + 96);

  return sub_226B18988(v6, v7);
}

uint64_t sub_226B177EC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_226B17EB8;
  }

  else
  {
    v3 = sub_226B17900;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_226B17900()
{
  v1 = (*(v0[6] + 88))(v0[7], v0[5]);
  if (v1 != *MEMORY[0x277CC7DF0])
  {
    if (v1 == *MEMORY[0x277CC7E00])
    {
      v10 = v0[9];
      v11 = sub_226D6E05C();
      v12 = sub_226D6E9EC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_226AB4000, v11, v12, "BackgroundRefreshAlertResult review", v13, 2u);
        MEMORY[0x22AA8BEE0](v13, -1, -1);
      }

      v14 = v0[11];
      v15 = v0[2];

      v16 = sub_226D676AC();
      v17 = swift_task_alloc();
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      sub_226D6EB8C();

      if (!v14)
      {
        v18 = v0[4];
        sub_226D6D18C();
        result = [objc_opt_self() defaultWorkspace];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v20 = result;
        v21 = v0[3];
        sub_226AC40E8(v0[4], v21, &unk_27D7A62F8, &unk_226D73B70);
        v22 = sub_226D6D1AC();
        v23 = *(v22 - 8);
        v24 = (*(v23 + 48))(v21, 1, v22);
        v25 = 0;
        if (v24 != 1)
        {
          v26 = v0[3];
          v25 = sub_226D6D0DC();
          (*(v23 + 8))(v26, v22);
        }

        v27 = v0[4];
        sub_226B22DF0(MEMORY[0x277D84F90]);
        v28 = sub_226D6E2AC();

        [v20 openSensitiveURL:v25 withOptions:v28];

        sub_226AC47B0(v27, &unk_27D7A62F8, &unk_226D73B70);
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v1 == *MEMORY[0x277CC7DF8])
    {
      v29 = v0[11];
      v30 = v0[2];
      v31 = sub_226D676AC();
      v32 = swift_task_alloc();
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      sub_226D6EB8C();

      if (v29)
      {
        goto LABEL_16;
      }

      v43 = v0[9];
      v39 = sub_226D6E05C();
      v40 = sub_226D6E9EC();
      if (!os_log_type_enabled(v39, v40))
      {
LABEL_24:

LABEL_25:
        v45 = v0[7];
        v44 = v0[8];
        v47 = v0[3];
        v46 = v0[4];
        swift_unknownObjectRelease();

        v37 = v0[1];
        goto LABEL_26;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "BackgroundRefreshAlertResult not now";
    }

    else
    {
      if (v1 != *MEMORY[0x277CC7DE8])
      {
        return sub_226D6F0AC();
      }

      v38 = v0[9];
      v39 = sub_226D6E05C();
      v40 = sub_226D6E9EC();
      if (!os_log_type_enabled(v39, v40))
      {
        goto LABEL_24;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "BackgroundRefreshAlertResult already scheduled";
    }

    _os_log_impl(&dword_226AB4000, v39, v40, v42, v41, 2u);
    MEMORY[0x22AA8BEE0](v41, -1, -1);
    goto LABEL_24;
  }

  v2 = v0[9];
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "BackgroundRefreshAlertResult allow", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = v0[11];
  v7 = v0[2];

  v8 = sub_226D676AC();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = 1;
  sub_226D6EB8C();

  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_16:
  v33 = v0[8];
  swift_unknownObjectRelease();
  v34 = v0[7];
  v35 = v0[3];
  v36 = v0[4];

  v37 = v0[1];
LABEL_26:

  return v37();
}

uint64_t sub_226B17EB8()
{
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[11];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  v6 = v0[1];

  return v6();
}

id sub_226B17F40(void *a1, int a2)
{
  v90 = a2;
  v98 = a1;
  v108[1] = *MEMORY[0x277D85DE8];
  v97 = sub_226D6B81C();
  v101 = *(v97 - 8);
  v2 = v101;
  v3 = *(v101 + 64);
  MEMORY[0x28223BE20](v97);
  v86 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6BDEC();
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = *(v92 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v91 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v77 - v9;
  v107 = sub_226D67C0C();
  v89 = *(v107 - 8);
  v10 = *(v89 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_226D6B9BC();
  v106 = *(v104 - 8);
  v12 = *(v106 + 64);
  MEMORY[0x28223BE20](v104);
  v88 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226D6D4AC();
  v15 = *(v14 - 8);
  v99 = v14;
  v100 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v87 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v84 = &v77 - v20;
  MEMORY[0x28223BE20](v19);
  v103 = &v77 - v21;
  v22 = sub_226D6BFCC();
  v95 = *(v22 - 8);
  v96 = v22;
  v23 = *(v95 + 64);
  MEMORY[0x28223BE20](v22);
  v94 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6BFBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68C8, &qword_226D74270);
  v25 = sub_226D6B7FC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_226D72130;
  v30 = v29 + v28;
  v31 = *(v26 + 104);
  v31(v30, *MEMORY[0x277CC8000], v25);
  v31(v30 + v27, *MEMORY[0x277CC8008], v25);
  v31(v30 + 2 * v27, *MEMORY[0x277CC8010], v25);
  v32 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C20, &qword_226D72160);
  v33 = *(v101 + 72);
  v34 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_226D71840;
  v37 = *MEMORY[0x277CC8020];
  v39 = v2 + 104;
  v38 = *(v2 + 104);
  v36 = v35 + v34;
  v40 = v97;
  v38(v36, *MEMORY[0x277CC8020], v97);
  v41 = v36 + v33;
  v42 = v40;
  v43 = v38;
  v38(v41, *MEMORY[0x277CC8028], v42);
  sub_226D6D46C();
  v44 = MEMORY[0x277D84F90];
  v45 = v94;
  v46 = v102;
  v47 = sub_226D6BFAC();
  if (v46)
  {

    (*(v100 + 8))(v103, v99);
    result = (*(v95 + 8))(v45, v96);
    goto LABEL_18;
  }

  v78 = v43;
  v79 = v37;
  v80 = v39;
  v49 = v88;
  v50 = v89;
  v83 = 0;
  v82 = v47;

  v51 = *(v100 + 8);
  v100 += 8;
  v81 = v51;
  v51(v103, v99);
  (*(v95 + 8))(v45, v96);
  v52 = *(v82 + 16);
  if (v52)
  {
    v96 = v32;
    v108[0] = v44;
    v53 = v82;
    sub_226AE2090(0, v52, 0);
    v54 = v107;
    v55 = v108[0];
    v56 = v50 + 16;
    v57 = *(v50 + 16);
    v58 = v53 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v102 = *(v50 + 72);
    v103 = v57;
    v59 = (v50 + 8);
    v101 = v106 + 32;
    do
    {
      v60 = v105;
      v61 = v56;
      (v103)(v105, v58, v54);
      sub_226D67B4C();
      v54 = v107;
      (*v59)(v60, v107);
      v108[0] = v55;
      v63 = v55[2];
      v62 = v55[3];
      if (v63 >= v62 >> 1)
      {
        sub_226AE2090(v62 > 1, v63 + 1, 1);
        v54 = v107;
        v55 = v108[0];
      }

      v55[2] = v63 + 1;
      (*(v106 + 32))(v55 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v63, v49, v104);
      v58 += v102;
      --v52;
      v56 = v61;
    }

    while (v52);

    v65 = v97;
    v64 = v98;
    v67 = v91;
    v66 = v92;
    v68 = v96;
    if ((v90 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_11:
    v69 = v85;
    sub_226D6BDDC();
    v70 = v86;
    v78(v86, v79, v65);
    v71 = v84;
    sub_226D6D46C();
    v72 = v83;
    sub_226D6BDCC();
    v83 = v72;
    if (v72)
    {

      v81(v71, v99);
      (*(v68 + 8))(v70, v65);
      result = (*(v66 + 8))(v69, v93);
      goto LABEL_18;
    }

    v81(v71, v99);
    (*(v68 + 8))(v70, v65);
    (*(v66 + 8))(v69, v93);
    goto LABEL_14;
  }

  v64 = v98;
  v67 = v91;
  v66 = v92;
  v68 = v32;
  v65 = v42;
  if (v90)
  {
    goto LABEL_11;
  }

LABEL_14:
  sub_226D6BDDC();
  v73 = v87;
  sub_226D6D46C();
  v74 = v83;
  sub_226D6BDBC();
  if (v74)
  {

    v81(v73, v99);
    result = (*(v66 + 8))(v67, v93);
  }

  else
  {

    v81(v73, v99);
    (*(v66 + 8))(v67, v93);
    v108[0] = 0;
    if ([v64 save_])
    {
      result = v108[0];
    }

    else
    {
      v76 = v108[0];
      sub_226D6D04C();

      result = swift_willThrow();
    }
  }

LABEL_18:
  v75 = *MEMORY[0x277D85DE8];
  return result;
}