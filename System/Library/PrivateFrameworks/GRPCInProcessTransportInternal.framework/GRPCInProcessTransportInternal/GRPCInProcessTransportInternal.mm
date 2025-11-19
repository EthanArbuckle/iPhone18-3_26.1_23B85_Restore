uint64_t sub_24DCCFEF0()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98C0, &qword_24DCDCE70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v5 - v1;
  v3 = sub_24DCDC17C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_24DCDC16C();
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

uint64_t InProcessTransport.init(serviceConfig:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24DCDC19C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0x65636F72702D6E69;
  v17 = 0xEB000000003A7373;
  v15[1] = sub_24DCD024C();
  v9 = sub_24DCDC40C();
  MEMORY[0x253036840](v9);

  v10 = v16;
  v11 = v17;
  type metadata accessor for InProcessTransport.Server();

  *a2 = InProcessTransport.Server.__allocating_init(peer:)(v10, v11);
  type metadata accessor for InProcessTransport.Client(0);
  (*(v5 + 16))(v8, a1, v4);

  v13 = InProcessTransport.Client.__allocating_init(server:serviceConfig:peer:)(v12, v8, v10, v11);
  result = (*(v5 + 8))(a1, v4);
  a2[1] = v13;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24DCD01B8(uint64_t *a1, int a2)
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

uint64_t sub_24DCD0200(uint64_t result, int a2, int a3)
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

uint64_t default argument 1 of InProcessTransport.Client.init(server:serviceConfig:peer:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98C0, &qword_24DCDCE70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  v4 = sub_24DCDC17C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return sub_24DCDC16C();
}

uint64_t InProcessTransport.Client.__allocating_init(server:serviceConfig:peer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_24DCD71E0(a1, a2, a3, a4);

  return v11;
}

uint64_t InProcessTransport.Client.init(server:serviceConfig:peer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24DCD71E0(a1, a2, a3, a4);

  return v4;
}

uint64_t InProcessTransport.Client.connect()()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98C8, &qword_24DCDCF20);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D0, &qword_24DCDCF28);
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98E0, &qword_24DCDCF38);
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98E8, &qword_24DCDCF40);
  v1[15] = v14;
  v15 = *(v14 - 8);
  v1[16] = v15;
  v16 = *(v15 + 64) + 15;
  v1[17] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
  v1[18] = v17;
  v18 = *(v17 - 8);
  v1[19] = v18;
  v19 = *(v18 + 64) + 15;
  v1[20] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F8, &qword_24DCDCF50);
  v1[21] = v20;
  v21 = *(v20 - 8);
  v1[22] = v21;
  v22 = *(v21 + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCD072C, 0, 0);
}

uint64_t sub_24DCD072C()
{
  v19 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 16);
  (*(v4 + 104))(v3, *MEMORY[0x277D85778], v5);
  sub_24DCDC32C();
  (*(v4 + 8))(v3, v5);
  v7 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state;
  *(v0 + 192) = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state;
  v8 = (v6 + v7);
  os_unfair_lock_lock((v6 + v7));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58) + 28);
  *(v0 + 288) = v9;
  sub_24DCD15C4(v8 + v9, v2, &v18);
  *(v0 + 200) = 0;
  v10 = *(v0 + 184);
  v11 = *(v0 + 168);
  v12 = *(v0 + 112);
  os_unfair_lock_unlock(v8);
  sub_24DCDC36C();
  v13 = *(MEMORY[0x277D85798] + 4);
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = sub_24DCD09B8;
  v15 = *(v0 + 112);
  v16 = *(v0 + 96);

  return MEMORY[0x2822003E8](v0 + 296, 0, 0, v16);
}

uint64_t sub_24DCD09B8()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DCD0AB4, 0, 0);
}

uint64_t sub_24DCD0AB4()
{
  v37 = v0;
  if (*(v0 + 296))
  {
    v1 = *(v0 + 288);
    v2 = (*(v0 + 16) + *(v0 + 192));
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    os_unfair_lock_lock(v2);
    sub_24DCD19A0((&v2->_os_unfair_lock_opaque + v1), &v36);
    os_unfair_lock_unlock(v2);
    v3 = v36;
    *(v0 + 216) = v36;
    v4 = *(v3 + 32);
    *(v0 + 297) = v4;
    v5 = -1;
    v6 = -1 << v4;
    if (-(-1 << v4) < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v3 + 64);

    if (v7)
    {
      v8 = 0;
LABEL_12:
      *(v0 + 224) = v7;
      *(v0 + 232) = v8;
      v14 = *(v0 + 88);
      v15 = *(v0 + 64);
      v16 = *(v0 + 72);
      sub_24DCD82F0(*(v3 + 56) + *(*(v0 + 80) + 72) * (__clz(__rbit64(v7)) | (v8 << 6)), v14, &qword_27F1A98D8, &qword_24DCDCF30);
      *(v0 + 292) = *(v16 + 48);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9908, &qword_24DCDCF60);
      sub_24DCDC27C();
      (*(*(v17 - 8) + 8))(v14, v17);
      *(v0 + 240) = sub_24DCDC2FC();
      *(v0 + 248) = sub_24DCD7754(&qword_27F1A9910, MEMORY[0x277D85678]);
      v18 = swift_allocError();
      *(v0 + 256) = v18;
      sub_24DCDC2BC();
      v19 = *(MEMORY[0x277D0B948] + 4);
      v20 = swift_task_alloc();
      *(v0 + 264) = v20;
      *v20 = v0;
      v20[1] = sub_24DCD0EA8;
      v21 = *(v0 + 64);
      v22 = *(v0 + 48);

      return MEMORY[0x282162F38](v18, v22);
    }

    else
    {
      v13 = 0;
      while (((63 - v6) >> 6) - 1 != v13)
      {
        v8 = v13 + 1;
        v7 = *(v3 + 8 * v13++ + 72);
        if (v7)
        {
          goto LABEL_12;
        }
      }

      v24 = *(v0 + 176);
      v23 = *(v0 + 184);
      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v27 = *(v0 + 144);
      v28 = *(v0 + 152);
      v29 = *(v0 + 136);
      v30 = *(v0 + 112);
      v33 = *(v0 + 88);
      v34 = *(v0 + 64);
      v35 = *(v0 + 40);

      (*(v28 + 8))(v26, v27);
      (*(v24 + 8))(v23, v25);

      v31 = *(v0 + 8);

      return v31();
    }
  }

  else
  {
    v9 = *(MEMORY[0x277D85798] + 4);
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = sub_24DCD09B8;
    v11 = *(v0 + 112);
    v12 = *(v0 + 96);

    return MEMORY[0x2822003E8](v0 + 296, 0, 0, v12);
  }
}

uint64_t sub_24DCD0EA8()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);
  MEMORY[0x253036B30](v2);

  return MEMORY[0x2822009F8](sub_24DCD101C, 0, 0);
}

uint64_t sub_24DCD101C()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 292);
  v4 = *(v0 + 88);
  v5 = *(v0 + 40);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  sub_24DCDC27C();
  (*(*(v6 - 8) + 8))(v4 + v3, v6);
  v7 = swift_allocError();
  *(v0 + 272) = v7;
  sub_24DCDC2BC();
  v8 = *(MEMORY[0x277D0B948] + 4);
  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = sub_24DCD1158;
  v10 = *(v0 + 40);
  v11 = *(v0 + 24);

  return MEMORY[0x282162F38](v7, v11);
}

uint64_t sub_24DCD1158()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);
  MEMORY[0x253036B30](v2);

  return MEMORY[0x2822009F8](sub_24DCD12CC, 0, 0);
}

uint64_t sub_24DCD12CC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 232);
  v4 = (*(v2 + 224) - 1) & *(v2 + 224);
  if (v4)
  {
    v5 = *(v2 + 216);
LABEL_7:
    *(v2 + 224) = v4;
    *(v2 + 232) = v3;
    v7 = *(v2 + 88);
    v8 = *(v2 + 64);
    v9 = *(v2 + 72);
    sub_24DCD82F0(*(v5 + 56) + *(*(v2 + 80) + 72) * (__clz(__rbit64(v4)) | (v3 << 6)), v7, &qword_27F1A98D8, &qword_24DCDCF30);
    *(v2 + 292) = *(v9 + 48);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9908, &qword_24DCDCF60);
    sub_24DCDC27C();
    (*(*(v10 - 8) + 8))(v7, v10);
    *(v2 + 240) = sub_24DCDC2FC();
    *(v2 + 248) = sub_24DCD7754(&qword_27F1A9910, MEMORY[0x277D85678]);
    v11 = swift_allocError();
    *(v2 + 256) = v11;
    sub_24DCDC2BC();
    v12 = *(MEMORY[0x277D0B948] + 4);
    v13 = swift_task_alloc();
    *(v2 + 264) = v13;
    *v13 = v2;
    v13[1] = sub_24DCD0EA8;
    v14 = *(v2 + 64);
    a2 = *(v2 + 48);
    a1 = v11;

    return MEMORY[0x282162F38](a1, a2);
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return MEMORY[0x282162F38](a1, a2);
      }

      v5 = *(v2 + 216);
      if (v6 >= (((1 << *(v2 + 297)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v16 = *(v2 + 176);
    v15 = *(v2 + 184);
    v18 = *(v2 + 160);
    v17 = *(v2 + 168);
    v19 = *(v2 + 144);
    v20 = *(v2 + 152);
    v21 = *(v2 + 136);
    v22 = *(v2 + 112);
    v25 = *(v2 + 88);
    v26 = *(v2 + 64);
    v27 = *(v2 + 40);

    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);

    v23 = *(v2 + 8);

    return v23();
  }
}

uint64_t sub_24DCD15C4(char *a1, uint64_t a2, uint64_t *a3)
{
  v30 = a2;
  v5 = sub_24DCDC1FC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_24DCDC22C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DCD80DC(a1, v17, _s14descr2860F21E1O6ClientC5StateOMa);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24DCDC20C();
    MEMORY[0x253036750](MEMORY[0x277D84F90]);
    sub_24DCDC24C();
    sub_24DCD7754(&qword_27F1A99D0, MEMORY[0x277D0B938]);
    v18 = swift_allocError();
    sub_24DCDC23C();
    swift_willThrow();
    result = sub_24DCD8144(v17, _s14descr2860F21E1O6ClientC5StateOMa);
    *a3 = v18;
  }

  else
  {
    sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
    v21 = *v17;
    v20 = v17[1];
    v22 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa(0);
    v23 = *(v10 + 16);
    v23(&a1[*(v22 + 28)], v30, v9);
    v30 = v21;
    *a1 = v21;
    *(a1 + 1) = 0;
    *(a1 + 2) = sub_24DCD7010(MEMORY[0x277D84F90]);
    swift_storeEnumTagMultiPayload();
    v24 = *(v20 + 16);
    if (v24)
    {
      v25 = v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v26 = v20;
      v27 = *(v10 + 72);
      v28 = (v10 + 8);

      v29 = v26;

      do
      {
        v23(v13, v25, v9);
        sub_24DCDC34C();
        (*v28)(v13, v9);
        v25 += v27;
        --v24;
      }

      while (v24);

      return swift_bridgeObjectRelease_n();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24DCD19A0@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCD80DC(a1, v15, _s14descr2860F21E1O6ClientC5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
    sub_24DCD81A4(v15, v11, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
    v17 = *(v4 + 20);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
    v19 = *(*(v18 - 8) + 56);
    v19(a1 + v17, 1, 1, v18);
    *a1 = sub_24DCD7010(MEMORY[0x277D84F90]);
    sub_24DCD8358(a1 + v17, &qword_27F1A9920, &qword_24DCDCF70);
    v19(a1 + v17, 1, 1, v18);
    swift_storeEnumTagMultiPayload();
    v20 = *(v11 + 2);

    v21 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa;
    v22 = v11;
LABEL_5:
    result = sub_24DCD8144(v22, v21);
    *a2 = v20;
    return result;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24DCD81A4(v15, v7, _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa);
    v20 = *v7;

    v21 = _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa;
    v22 = v7;
    goto LABEL_5;
  }

  result = sub_24DCDC3CC();
  __break(1u);
  return result;
}

Swift::Void __swiftcall InProcessTransport.Client.beginGracefulShutdown()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9920, &qword_24DCDCF70);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = (v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state);
  os_unfair_lock_lock(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58);
  sub_24DCD1E80((&v8->_os_unfair_lock_opaque + *(v9 + 28)), v7);
  os_unfair_lock_unlock(v8);
  sub_24DCD82F0(v7, v5, &qword_27F1A9920, &qword_24DCDCF70);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_24DCD8358(v7, &qword_27F1A9920, &qword_24DCDCF70);
    sub_24DCD8358(v5, &qword_27F1A9920, &qword_24DCDCF70);
  }

  else
  {
    sub_24DCDC34C();
    sub_24DCD8358(v7, &qword_27F1A9920, &qword_24DCDCF70);
    (*(v11 + 8))(v5, v10);
  }
}

uint64_t sub_24DCD1E80@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCD80DC(a1, v14, _s14descr2860F21E1O6ClientC5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
      sub_24DCD81A4(v14, v10, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
      if (*(*(v10 + 2) + 16))
      {
        v31 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa;
        sub_24DCD80DC(v10, v8, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
        v16 = _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa(0);
        v32 = a2;
        v17 = *(v16 + 20);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
        v19 = *(v18 - 8);
        v20 = *(v19 + 56);
        v20(a1 + v17, 1, 1, v18);
        *a1 = *(v8 + 2);

        sub_24DCD8358(a1 + v17, &qword_27F1A9920, &qword_24DCDCF70);
        (*(v19 + 16))(a1 + v17, &v8[*(v4 + 28)], v18);
        v21 = v31;
        sub_24DCD8144(v8, v31);
        v20(a1 + v17, 0, 1, v18);
        sub_24DCD8144(v10, v21);
        swift_storeEnumTagMultiPayload();
        return (v20)(v32, 1, 1, v18);
      }

      else
      {
        v27 = *(_s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa(0) + 20);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
        v29 = *(v28 - 8);
        v30 = *(v29 + 56);
        v30(a1 + v27, 1, 1, v28);
        *a1 = sub_24DCD7010(MEMORY[0x277D84F90]);
        sub_24DCD8358(a1 + v27, &qword_27F1A9920, &qword_24DCDCF70);
        v30(a1 + v27, 1, 1, v28);
        swift_storeEnumTagMultiPayload();
        (*(v29 + 16))(a2, &v10[*(v4 + 28)], v28);
        sub_24DCD8144(v10, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
        return (v30)(a2, 0, 1, v28);
      }
    }

    else
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
      (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
      return sub_24DCD8144(v14, _s14descr2860F21E1O6ClientC5StateOMa);
    }
  }

  else
  {
    sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
    sub_24DCD8144(v14, _s14descr2860F21E1O6ClientC5StateOMa);
    v23 = *(_s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa(0) + 20);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
    v25 = *(*(v24 - 8) + 56);
    v25(a1 + v23, 1, 1, v24);
    *a1 = sub_24DCD7010(MEMORY[0x277D84F90]);
    sub_24DCD8358(a1 + v23, &qword_27F1A9920, &qword_24DCDCF70);
    v25(a1 + v23, 1, 1, v24);
    swift_storeEnumTagMultiPayload();
    return (v25)(a2, 1, 1, v24);
  }
}

uint64_t InProcessTransport.Client.withStream<A>(descriptor:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a1;
  v7[4] = a2;
  v9 = sub_24DCDC24C();
  v7[9] = v9;
  v10 = *(v9 - 8);
  v7[10] = v10;
  v11 = *(v10 + 64) + 15;
  v7[11] = swift_task_alloc();
  v12 = *(a6 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1A9928, &qword_24DCDCF80);
  v14 = sub_24DCDC45C();
  v7[15] = v14;
  v15 = *(v14 - 8);
  v7[16] = v15;
  v16 = *(v15 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v17 = sub_24DCDC0CC();
  v7[19] = v17;
  v18 = *(v17 - 8);
  v7[20] = v18;
  v19 = *(v18 + 64) + 15;
  v7[21] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9930, &qword_24DCDCF88);
  v7[22] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98E0, &qword_24DCDCF38);
  v7[25] = v22;
  v23 = *(v22 - 8);
  v7[26] = v23;
  v24 = *(v23 + 64) + 15;
  v7[27] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F8, &qword_24DCDCF50);
  v7[28] = v25;
  v26 = *(v25 - 8);
  v7[29] = v26;
  v27 = *(v26 + 64) + 15;
  v7[30] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9938, &qword_24DCDCF90) - 8) + 64) + 15;
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98C8, &qword_24DCDCF20);
  v7[33] = v29;
  v30 = *(v29 - 8);
  v7[34] = v30;
  v31 = *(v30 + 64) + 15;
  v7[35] = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9940, &qword_24DCDCF98);
  v7[36] = v32;
  v33 = *(*(v32 - 8) + 64) + 15;
  v7[37] = swift_task_alloc();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  v7[38] = v34;
  v35 = *(v34 - 8);
  v7[39] = v35;
  v36 = *(v35 + 64) + 15;
  v7[40] = swift_task_alloc();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D0, &qword_24DCDCF28);
  v7[41] = v37;
  v38 = *(v37 - 8);
  v7[42] = v38;
  v39 = *(v38 + 64) + 15;
  v7[43] = swift_task_alloc();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9948, &qword_24DCDCFA0);
  v7[44] = v40;
  v41 = *(*(v40 - 8) + 64) + 15;
  v7[45] = swift_task_alloc();
  v42 = sub_24DCDC1AC();
  v7[46] = v42;
  v43 = *(v42 - 8);
  v7[47] = v43;
  v44 = *(v43 + 64) + 15;
  v7[48] = swift_task_alloc();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9908, &qword_24DCDCF60);
  v7[49] = v45;
  v46 = *(v45 - 8);
  v7[50] = v46;
  v47 = *(v46 + 64) + 15;
  v7[51] = swift_task_alloc();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9950, &qword_24DCDCFA8);
  v7[52] = v48;
  v49 = *(*(v48 - 8) + 64) + 15;
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9958, &qword_24DCDCFB0);
  v7[55] = v50;
  v51 = *(*(v50 - 8) + 64) + 15;
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCD2A38, 0, 0);
}

uint64_t sub_24DCD2A38()
{
  v1 = *(v0 + 456);
  v68 = *(v0 + 448);
  v2 = *(v0 + 432);
  v66 = *(v0 + 440);
  v3 = *(v0 + 416);
  v86 = *(v0 + 424);
  v78 = *(v0 + 408);
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 368);
  v72 = v6;
  v70 = *(v0 + 344);
  v76 = *(v0 + 328);
  v77 = *(v0 + 352);
  v81 = *(v0 + 320);
  v79 = *(v0 + 296);
  v80 = *(v0 + 280);
  v82 = *(v0 + 264);
  v83 = *(v0 + 288);
  v85 = *(v0 + 256);
  v7 = *(v0 + 112);
  v69 = v7;
  v84 = *(v0 + 64);
  v8 = *(v0 + 32);
  v9 = *(v66 + 48);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9960, &qword_24DCDCFB8);
  v87 = v1;
  sub_24DCDC1CC();
  v10 = *(v3 + 48);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9968, &qword_24DCDCFC0);
  sub_24DCDC1CC();
  v71 = *(v5 + 16);
  *(v0 + 464) = v71;
  *(v0 + 472) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v71(v4, v8, v6);
  sub_24DCD82F0(v2, v86, &qword_27F1A9950, &qword_24DCDCFA8);
  v11 = *(v3 + 48);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9970, &qword_24DCDCFC8);
  v12 = sub_24DCD7800(&qword_27F1A9978, &qword_27F1A9970, &qword_24DCDCFC8);
  MEMORY[0x253036720](v86, v74, v7, v75, v12);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9980, &qword_24DCDCFD0);
  (*(*(v73 - 8) + 8))(v86 + v11, v73);
  sub_24DCD82F0(v87, v68, &qword_27F1A9958, &qword_24DCDCFB0);
  v13 = *(v66 + 48);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9988, &qword_24DCDCFD8);
  sub_24DCD7800(&qword_27F1A9990, &qword_27F1A9988, &qword_24DCDCFD8);
  sub_24DCDC2AC();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9998, &qword_24DCDCFE0);
  (*(*(v15 - 8) + 8))(v68, v15);
  sub_24DCD7800(&qword_27F1A99A0, &qword_27F1A9948, &qword_24DCDCFA0);
  sub_24DCD7800(&qword_27F1A99A8, &qword_27F1A98D0, &qword_24DCDCF28);
  sub_24DCDC25C();
  v71(v4, v8, v72);
  sub_24DCD82F0(v87, v68, &qword_27F1A9958, &qword_24DCDCFB0);
  v16 = *(v66 + 48);
  v17 = sub_24DCD7800(&qword_27F1A99B0, &qword_27F1A9998, &qword_24DCDCFE0);
  MEMORY[0x253036720](v68, v67, v69, v15, v17);
  (*(*(v14 - 8) + 8))(v68 + v16, v14);
  sub_24DCD82F0(v2, v86, &qword_27F1A9950, &qword_24DCDCFA8);
  v18 = *(v3 + 48);
  sub_24DCD7800(&qword_27F1A99B8, &qword_27F1A9980, &qword_24DCDCFD0);
  sub_24DCDC2AC();
  (*(*(v75 - 8) + 8))(v86);
  sub_24DCD7800(&qword_27F1A99C0, &qword_27F1A9940, &qword_24DCDCF98);
  sub_24DCD7800(&qword_27F1A99C8, &qword_27F1A98C8, &qword_24DCDCF20);
  sub_24DCDC25C();
  v19 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state;
  *(v0 + 480) = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state;
  v20 = (v84 + v19);
  os_unfair_lock_lock((v84 + v19));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58) + 28);
  *(v0 + 600) = v21;
  sub_24DCD4AB4(v20 + v21, v85);
  *(v0 + 488) = 0;
  os_unfair_lock_unlock(v20);
  v22 = *(v0 + 248);
  v23 = *(v0 + 224);
  v24 = *(v0 + 232);
  sub_24DCD82F0(*(v0 + 256), v22, &qword_27F1A9938, &qword_24DCDCF90);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_24DCD8358(*(v0 + 248), &qword_27F1A9938, &qword_24DCDCF90);
    v25 = *(v0 + 600);
    v26 = *(v0 + 408);
    v27 = *(v0 + 320);
    v28 = *(v0 + 192);
    v29 = (*(v0 + 64) + *(v0 + 480));
    os_unfair_lock_lock(v29);
    sub_24DCD4E8C(v29 + v25, v27, v26, v28);
    os_unfair_lock_unlock(v29);
    v35 = *(v0 + 472);
    v37 = *(v0 + 184);
    v36 = *(v0 + 192);
    v39 = *(v0 + 168);
    v38 = *(v0 + 176);
    v40 = *(v0 + 64);
    (*(v0 + 464))(*(v0 + 384), *(v0 + 32), *(v0 + 368));
    v41 = v40 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_peer;
    v42 = *(v40 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_peer);
    v43 = *(v41 + 8);
    swift_bridgeObjectRetain_n();
    sub_24DCDC0BC();
    sub_24DCD82F0(v36, v37, &qword_27F1A9930, &qword_24DCDCF88);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v45 = *(v0 + 320);
      v46 = *(v0 + 304);
      v47 = *(v0 + 280);
      v49 = *(v0 + 80);
      v48 = *(v0 + 88);
      v50 = *(v0 + 72);
      (*(v49 + 32))(v48, *(v0 + 184), v50);
      sub_24DCDC27C();
      *(v0 + 544) = sub_24DCD7754(&qword_27F1A99D0, MEMORY[0x277D0B938]);
      v51 = swift_allocError();
      *(v0 + 552) = v51;
      v52 = *(v49 + 16);
      *(v0 + 560) = v52;
      *(v0 + 568) = (v49 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v52(v53, v48, v50);
      v54 = *(MEMORY[0x277D0B948] + 4);
      v55 = swift_task_alloc();
      *(v0 + 576) = v55;
      *v55 = v0;
      v55[1] = sub_24DCD4354;
      v56 = *(v0 + 280);
      v57 = *(v0 + 264);

      return MEMORY[0x282162F38](v51, v57);
    }

    else
    {
      v58 = *(v0 + 40);
      *(v0 + 504) = **(v0 + 184);
      v88 = (v58 + *v58);
      v59 = v58[1];
      v60 = swift_task_alloc();
      *(v0 + 512) = v60;
      *v60 = v0;
      v60[1] = sub_24DCD3B3C;
      v61 = *(v0 + 408);
      v62 = *(v0 + 168);
      v63 = *(v0 + 104);
      v64 = *(v0 + 48);

      return v88(v63, v61, v62);
    }
  }

  else
  {
    v30 = *(v0 + 216);
    (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 248), *(v0 + 224));
    sub_24DCDC36C();
    v31 = *(MEMORY[0x277D85798] + 4);
    v32 = swift_task_alloc();
    *(v0 + 496) = v32;
    *v32 = v0;
    v32[1] = sub_24DCD3410;
    v33 = *(v0 + 216);
    v34 = *(v0 + 200);

    return MEMORY[0x2822003E8](v0 + 604, 0, 0, v34);
  }
}

uint64_t sub_24DCD3410()
{
  v1 = *(*v0 + 496);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DCD350C, 0, 0);
}

void sub_24DCD350C()
{
  if (*(v0 + 604))
  {
    v1 = *(v0 + 488);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    sub_24DCDC38C();
    if (v1)
    {
      v2 = *(v0 + 456);
      v3 = *(v0 + 432);
      v4 = *(v0 + 400);
      v5 = *(v0 + 408);
      v6 = *(v0 + 392);
      v8 = *(v0 + 312);
      v7 = *(v0 + 320);
      v9 = *(v0 + 304);
      v10 = *(v0 + 256);
      (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
      sub_24DCD8358(v10, &qword_27F1A9938, &qword_24DCDCF90);
      (*(v8 + 8))(v7, v9);
      (*(v4 + 8))(v5, v6);
      sub_24DCD8358(v3, &qword_27F1A9950, &qword_24DCDCFA8);
      sub_24DCD8358(v2, &qword_27F1A9958, &qword_24DCDCFB0);
      v12 = *(v0 + 448);
      v11 = *(v0 + 456);
      v14 = *(v0 + 424);
      v13 = *(v0 + 432);
      v15 = *(v0 + 408);
      v16 = *(v0 + 384);
      v17 = *(v0 + 360);
      v18 = *(v0 + 344);
      v19 = *(v0 + 320);
      v20 = *(v0 + 296);
      v60 = *(v0 + 280);
      v61 = *(v0 + 256);
      v62 = *(v0 + 248);
      v63 = *(v0 + 240);
      v64 = *(v0 + 216);
      v65 = *(v0 + 192);
      v66 = *(v0 + 184);
      v67 = *(v0 + 168);
      v68 = *(v0 + 144);
      v69 = *(v0 + 136);
      v70 = *(v0 + 104);
      v71 = *(v0 + 88);

      v21 = *(v0 + 8);

      v21();
    }

    else
    {
      (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
      v26 = *(v0 + 600);
      v27 = *(v0 + 408);
      v28 = *(v0 + 320);
      v29 = *(v0 + 192);
      v30 = (*(v0 + 64) + *(v0 + 480));
      os_unfair_lock_lock(v30);
      sub_24DCD4E8C(v30 + v26, v28, v27, v29);
      os_unfair_lock_unlock(v30);
      v31 = *(v0 + 472);
      v33 = *(v0 + 184);
      v32 = *(v0 + 192);
      v35 = *(v0 + 168);
      v34 = *(v0 + 176);
      v36 = *(v0 + 64);
      (*(v0 + 464))(*(v0 + 384), *(v0 + 32), *(v0 + 368));
      v37 = v36 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_peer;
      v38 = *(v36 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_peer);
      v39 = *(v37 + 8);
      swift_bridgeObjectRetain_n();
      sub_24DCDC0BC();
      sub_24DCD82F0(v32, v33, &qword_27F1A9930, &qword_24DCDCF88);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v40 = *(v0 + 320);
        v41 = *(v0 + 304);
        v42 = *(v0 + 280);
        v44 = *(v0 + 80);
        v43 = *(v0 + 88);
        v45 = *(v0 + 72);
        (*(v44 + 32))(v43, *(v0 + 184), v45);
        sub_24DCDC27C();
        *(v0 + 544) = sub_24DCD7754(&qword_27F1A99D0, MEMORY[0x277D0B938]);
        v46 = swift_allocError();
        *(v0 + 552) = v46;
        v47 = *(v44 + 16);
        *(v0 + 560) = v47;
        *(v0 + 568) = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v47(v48, v43, v45);
        v49 = *(MEMORY[0x277D0B948] + 4);
        v50 = swift_task_alloc();
        *(v0 + 576) = v50;
        *v50 = v0;
        v50[1] = sub_24DCD4354;
        v51 = *(v0 + 280);
        v52 = *(v0 + 264);

        MEMORY[0x282162F38](v46, v52);
      }

      else
      {
        v53 = *(v0 + 40);
        *(v0 + 504) = **(v0 + 184);
        v72 = (v53 + *v53);
        v54 = v53[1];
        v55 = swift_task_alloc();
        *(v0 + 512) = v55;
        *v55 = v0;
        v55[1] = sub_24DCD3B3C;
        v56 = *(v0 + 408);
        v57 = *(v0 + 168);
        v58 = *(v0 + 104);
        v59 = *(v0 + 48);

        v72(v58, v56, v57);
      }
    }
  }

  else
  {
    v22 = *(MEMORY[0x277D85798] + 4);
    v23 = swift_task_alloc();
    *(v0 + 496) = v23;
    *v23 = v0;
    v23[1] = sub_24DCD3410;
    v24 = *(v0 + 216);
    v25 = *(v0 + 200);

    MEMORY[0x2822003E8](v0 + 604, 0, 0, v25);
  }
}

uint64_t sub_24DCD3B3C()
{
  v2 = *(*v1 + 512);
  v5 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_24DCD49EC;
  }

  else
  {
    v3 = sub_24DCD3C50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DCD3C50()
{
  v1 = v0[15];
  (*(v0[12] + 32))(v0[18], v0[13], v0[7]);
  swift_storeEnumTagMultiPayload();
  v0[66] = v0[65];
  v2 = v0[51];
  v3 = v0[49];
  v4 = v0[43];
  sub_24DCDC27C();
  v5 = *(MEMORY[0x277D0B950] + 4);
  v6 = swift_task_alloc();
  v0[67] = v6;
  *v6 = v0;
  v6[1] = sub_24DCD3D38;
  v7 = v0[43];
  v8 = v0[41];

  return MEMORY[0x282162F40](v8);
}

uint64_t sub_24DCD3D38()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 328);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_24DCD3E90, 0, 0);
}

uint64_t sub_24DCD3E90()
{
  v1 = v0[66];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[8];
  v7 = v0[3];
  sub_24DCD57F4(v0[63]);
  (*(v5 + 16))(v3, v2, v4);
  sub_24DCD59D0(v4, (v0 + 2), v7);
  v72 = v0[57];
  if (v1)
  {
    v8 = v0[50];
    v66 = v0[51];
    v69 = v0[54];
    v63 = v0[49];
    v9 = v0[39];
    v10 = v0[40];
    v11 = v0[38];
    v12 = v0[32];
    v13 = v0[24];
    v14 = v0[20];
    v15 = v0[21];
    v16 = v0[19];
    (*(v0[16] + 8))(v0[18], v0[15]);
    (*(v14 + 8))(v15, v16);
    sub_24DCD8358(v13, &qword_27F1A9930, &qword_24DCDCF88);
    sub_24DCD8358(v12, &qword_27F1A9938, &qword_24DCDCF90);
    (*(v9 + 8))(v10, v11);
    (*(v8 + 8))(v66, v63);
    sub_24DCD8358(v69, &qword_27F1A9950, &qword_24DCDCFA8);
    sub_24DCD8358(v72, &qword_27F1A9958, &qword_24DCDCFB0);
    v73 = v0[2];
    v18 = v0[56];
    v17 = v0[57];
    v20 = v0[53];
    v19 = v0[54];
    v21 = v0[51];
    v22 = v0[48];
    v23 = v0[45];
    v24 = v0[43];
    v25 = v0[40];
    v26 = v0[37];
    v46 = v0[35];
    v48 = v0[32];
    v50 = v0[31];
    v52 = v0[30];
    v53 = v0[27];
    v55 = v0[24];
    v57 = v0[23];
    v59 = v0[21];
    v61 = v0[18];
    v64 = v0[17];
    v67 = v0[13];
    v70 = v0[11];
  }

  else
  {
    v41 = v0[54];
    v42 = v0[56];
    v28 = v0[50];
    v39 = v0[49];
    v40 = v0[51];
    v43 = v0[53];
    v44 = v0[48];
    v45 = v0[45];
    v47 = v0[43];
    v29 = v0[39];
    v30 = v0[40];
    v31 = v0[38];
    v49 = v0[37];
    v51 = v0[35];
    v32 = v0[32];
    v54 = v0[31];
    v56 = v0[30];
    v33 = v0[24];
    v62 = v0[23];
    v35 = v0[20];
    v34 = v0[21];
    v36 = v0[19];
    v58 = v0[27];
    v60 = v0[18];
    v65 = v0[17];
    v37 = v0[15];
    v68 = v0[13];
    v71 = v0[11];
    (*(v0[16] + 8))();
    (*(v35 + 8))(v34, v36);
    sub_24DCD8358(v33, &qword_27F1A9930, &qword_24DCDCF88);
    sub_24DCD8358(v32, &qword_27F1A9938, &qword_24DCDCF90);
    (*(v29 + 8))(v30, v31);
    (*(v28 + 8))(v40, v39);
    sub_24DCD8358(v41, &qword_27F1A9950, &qword_24DCDCFA8);
    sub_24DCD8358(v72, &qword_27F1A9958, &qword_24DCDCFB0);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_24DCD4354()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 552);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 272);
  v5 = *(*v0 + 264);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);
  MEMORY[0x253036B30](v2);

  return MEMORY[0x2822009F8](sub_24DCD44C8, 0, 0);
}

uint64_t sub_24DCD44C8()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[68];
  v4 = v0[51];
  v5 = v0[49];
  v6 = v0[43];
  v7 = v0[11];
  v8 = v0[9];
  sub_24DCDC27C();
  v9 = swift_allocError();
  v0[73] = v9;
  v2(v10, v7, v8);
  v11 = *(MEMORY[0x277D0B948] + 4);
  v12 = swift_task_alloc();
  v0[74] = v12;
  *v12 = v0;
  v12[1] = sub_24DCD45C4;
  v13 = v0[43];
  v14 = v0[41];

  return MEMORY[0x282162F38](v9, v14);
}

uint64_t sub_24DCD45C4()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 584);
  v3 = *(*v0 + 344);
  v4 = *(*v0 + 336);
  v5 = *(*v0 + 328);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);
  MEMORY[0x253036B30](v2);

  return MEMORY[0x2822009F8](sub_24DCD4738, 0, 0);
}

uint64_t sub_24DCD4738()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[68];
  v41 = v0[54];
  v43 = v0[57];
  v4 = v0[50];
  v37 = v0[49];
  v39 = v0[51];
  v5 = v0[39];
  v33 = v0[38];
  v35 = v0[40];
  v29 = v0[24];
  v31 = v0[32];
  v6 = v0[20];
  v25 = v0[19];
  v27 = v0[21];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[9];
  swift_allocError();
  v2(v10, v8, v9);
  swift_willThrow();
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v27, v25);
  sub_24DCD8358(v29, &qword_27F1A9930, &qword_24DCDCF88);
  sub_24DCD8358(v31, &qword_27F1A9938, &qword_24DCDCF90);
  (*(v5 + 8))(v35, v33);
  (*(v4 + 8))(v39, v37);
  sub_24DCD8358(v41, &qword_27F1A9950, &qword_24DCDCFA8);
  sub_24DCD8358(v43, &qword_27F1A9958, &qword_24DCDCFB0);
  v12 = v0[56];
  v11 = v0[57];
  v14 = v0[53];
  v13 = v0[54];
  v15 = v0[51];
  v16 = v0[48];
  v17 = v0[45];
  v18 = v0[43];
  v19 = v0[40];
  v20 = v0[37];
  v23 = v0[35];
  v24 = v0[32];
  v26 = v0[31];
  v28 = v0[30];
  v30 = v0[27];
  v32 = v0[24];
  v34 = v0[23];
  v36 = v0[21];
  v38 = v0[18];
  v40 = v0[17];
  v42 = v0[13];
  v44 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t sub_24DCD49EC()
{
  v1 = *(v0 + 120);
  **(v0 + 144) = *(v0 + 520);
  swift_storeEnumTagMultiPayload();
  *(v0 + 528) = 0;
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(v0 + 344);
  sub_24DCDC27C();
  v5 = *(MEMORY[0x277D0B950] + 4);
  v6 = swift_task_alloc();
  *(v0 + 536) = v6;
  *v6 = v0;
  v6[1] = sub_24DCD3D38;
  v7 = *(v0 + 344);
  v8 = *(v0 + 328);

  return MEMORY[0x282162F40](v8);
}

uint64_t sub_24DCD4AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98E8, &qword_24DCDCF40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24DCD80DC(a1, v19, _s14descr2860F21E1O6ClientC5StateOMa);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24DCD8144(v19, _s14descr2860F21E1O6ClientC5StateOMa);
    v20 = 1;
    v21 = v33;
  }

  else
  {
    v32 = a1;
    sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
    v22 = *v19;
    v23 = v19[1];
    v31 = v22;
    (*(v4 + 104))(v7, *MEMORY[0x277D85778], v3);
    sub_24DCDC32C();
    (*(v4 + 8))(v7, v3);
    (*(v9 + 16))(v13, v15, v8);
    v24 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_24DCD651C(0, v23[2] + 1, 1, v23);
    }

    v26 = v23[2];
    v25 = v23[3];
    v27 = v32;
    v21 = v33;
    if (v26 >= v25 >> 1)
    {
      v23 = sub_24DCD651C(v25 > 1, v26 + 1, 1, v23);
    }

    (*(v9 + 8))(v15, v8);
    v23[2] = v26 + 1;
    (*(v9 + 32))(v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26, v24, v8);
    *v27 = v31;
    v27[1] = v23;
    swift_storeEnumTagMultiPayload();
    v20 = 0;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F8, &qword_24DCDCF50);
  return (*(*(v28 - 8) + 56))(v21, v20, 1, v28);
}

uint64_t sub_24DCD4E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v49 = a4;
  v44 = a3;
  v45 = a2;
  v5 = sub_24DCDC1FC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24DCDC22C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_24DCDC24C();
  v11 = *(v48 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v48);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A08, &qword_24DCDD118);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v42 - v20;
  v22 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = (&v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_24DCD80DC(a1, v29, _s14descr2860F21E1O6ClientC5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DCDC20C();
      MEMORY[0x253036750](MEMORY[0x277D84F90]);
      sub_24DCDC23C();
      (*(v11 + 32))(v49, v17, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9930, &qword_24DCDCF88);
      swift_storeEnumTagMultiPayload();
      return sub_24DCD8144(v29, _s14descr2860F21E1O6ClientC5StateOMa);
    }

LABEL_12:
    result = sub_24DCDC3CC();
    __break(1u);
    return result;
  }

  sub_24DCD81A4(v29, v25, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
  v32 = *v25;
  v43 = v25[1];
  v33 = v45;
  v34 = v50;
  sub_24DCD8954(v45);
  if (!v34)
  {
    sub_24DCD8144(v30, _s14descr2860F21E1O6ClientC5StateOMa);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
    v38 = *(v37 + 48);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9908, &qword_24DCDCF60);
    (*(*(v39 - 8) + 16))(v21, v44, v39);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
    (*(*(v40 - 8) + 16))(&v21[v38], v33, v40);
    (*(*(v37 - 8) + 56))(v21, 0, 1, v37);
    v41 = v43;
    sub_24DCD55C0(v21, v43);
    if (!__OFADD__(v41, 1))
    {
      v25[1] = v41 + 1;
      sub_24DCD80DC(v25, v30, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
      sub_24DCD8144(v25, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
      swift_storeEnumTagMultiPayload();
      *v49 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9930, &qword_24DCDCF88);
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
    goto LABEL_12;
  }

  v51 = v34;
  MEMORY[0x253036B40](v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9928, &qword_24DCDCF80);
  v35 = v48;
  if (swift_dynamicCast())
  {
    MEMORY[0x253036B30](v34);
    sub_24DCD8144(v25, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
    (*(v11 + 32))(v49, v15, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9930, &qword_24DCDCF88);
    swift_storeEnumTagMultiPayload();
    return MEMORY[0x253036B30](v51);
  }

  else
  {
    MEMORY[0x253036B30](v51);
    sub_24DCDC21C();
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_24DCDC3BC();
    MEMORY[0x253036840](0x206E776F6E6B6E55, 0xEF203A726F727265);
    swift_getErrorValue();
    sub_24DCDC42C();
    MEMORY[0x253036840](46, 0xE100000000000000);
    MEMORY[0x253036750](MEMORY[0x277D84F90]);
    sub_24DCDC23C();
    MEMORY[0x253036B30](v34);
    sub_24DCD8144(v25, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9930, &qword_24DCDCF88);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_24DCD55C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A08, &qword_24DCDD118);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24DCD8358(a1, &qword_27F1A9A08, &qword_24DCDD118);
    v15 = *v3;
    v16 = sub_24DCD646C(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24DCD6DEC();
        v21 = v26;
      }

      sub_24DCD820C(*(v21 + 56) + *(v11 + 72) * v18, v9);
      sub_24DCD6A30(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_24DCD8358(v9, &qword_27F1A9A08, &qword_24DCDD118);
  }

  else
  {
    sub_24DCD820C(a1, v14);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_24DCD6BF4(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_24DCD57F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9920, &qword_24DCDCF70);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = (v1 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state);
  os_unfair_lock_lock(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58);
  sub_24DCD5AA0(v10 + *(v11 + 28), a1, v9);
  os_unfair_lock_unlock(v10);
  sub_24DCD82F0(v9, v7, &qword_27F1A9920, &qword_24DCDCF70);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_24DCD8358(v9, &qword_27F1A9920, &qword_24DCDCF70);
    return sub_24DCD8358(v7, &qword_27F1A9920, &qword_24DCDCF70);
  }

  else
  {
    sub_24DCDC34C();
    sub_24DCD8358(v9, &qword_27F1A9920, &qword_24DCDCF70);
    return (*(v13 + 8))(v7, v12);
  }
}

uint64_t sub_24DCD59D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t sub_24DCD5AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A08, &qword_24DCDD118);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DCD80DC(a1, v21, _s14descr2860F21E1O6ClientC5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
    sub_24DCD81A4(v21, v17, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
    sub_24DCD5E7C(a2, v13);
    sub_24DCD8358(v13, &qword_27F1A9A08, &qword_24DCDD118);
    sub_24DCD81A4(v17, a1, _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      result = sub_24DCDC3CC();
      __break(1u);
      return result;
    }

    sub_24DCD8144(a1, _s14descr2860F21E1O6ClientC5StateOMa);
    sub_24DCD81A4(v21, v9, _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa);
    sub_24DCD5E7C(a2, v13);
    sub_24DCD8358(v13, &qword_27F1A9A08, &qword_24DCDD118);
    sub_24DCD80DC(v9, a1, _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa);
    swift_storeEnumTagMultiPayload();
    if (!*(*v9 + 16))
    {
      sub_24DCD82F0(&v9[*(v6 + 20)], a3, &qword_27F1A9920, &qword_24DCDCF70);
      return sub_24DCD8144(v9, _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa);
    }

    sub_24DCD8144(v9, _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
  return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
}

uint64_t sub_24DCD5E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_24DCD646C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24DCD6DEC();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
    v20 = *(v13 - 8);
    sub_24DCD820C(v12 + *(v20 + 72) * v8, a2);
    sub_24DCD6A30(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t InProcessTransport.Client.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_methodConfig;
  v3 = sub_24DCDC0EC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58);
  sub_24DCD8144(v4 + *(v5 + 28), _s14descr2860F21E1O6ClientC5StateOMa);
  v6 = *(v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_peer + 8);

  return v0;
}

uint64_t InProcessTransport.Client.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_methodConfig;
  v3 = sub_24DCDC0EC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = &v0[OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58);
  sub_24DCD8144(&v4[*(v5 + 28)], _s14descr2860F21E1O6ClientC5StateOMa);
  v6 = *&v0[OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_peer + 8];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_24DCD61C8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DCD83B8;

  return InProcessTransport.Client.connect()();
}

uint64_t sub_24DCD627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_24DCD6348;

  return InProcessTransport.Client.withStream<A>(descriptor:options:_:)(a1, a2, v14, a4, a5, a6);
}

uint64_t sub_24DCD6348()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_24DCD646C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_24DCDC44C();

  return sub_24DCD64B0(a1, v4);
}

unint64_t sub_24DCD64B0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

size_t sub_24DCD651C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A18, &qword_24DCDD128);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24DCD670C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A10, &qword_24DCDD120);
  v41 = a2;
  result = sub_24DCDC3EC();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_24DCD820C(v28, v9);
      }

      else
      {
        sub_24DCD82F0(v28, v9, &qword_27F1A98D8, &qword_24DCDCF30);
      }

      v29 = *(v13 + 40);
      result = sub_24DCDC44C();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_24DCD820C(v9, *(v13 + 56) + v27 * v21);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

unint64_t sub_24DCD6A30(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24DCDC3AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_24DCDC44C();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
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

uint64_t sub_24DCD6BF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24DCD646C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_24DCD6DEC();
      goto LABEL_7;
    }

    sub_24DCD670C(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_24DCD646C(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24DCDC43C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30) - 8) + 72) * v10;

    return sub_24DCD827C(a1, v18);
  }

LABEL_13:

  return sub_24DCD6D4C(v10, a2, a1, v16);
}

uint64_t sub_24DCD6D4C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  result = sub_24DCD820C(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_24DCD6DEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A10, &qword_24DCDD120);
  v6 = *v0;
  v7 = sub_24DCDC3DC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_24DCD82F0(*(v6 + 56) + v23, v5, &qword_27F1A98D8, &qword_24DCDCF30);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_24DCD820C(v5, *(v8 + 56) + v23);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

unint64_t sub_24DCD7010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A20, &qword_24DCDD130);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A10, &qword_24DCDD120);
    v8 = sub_24DCDC3FC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_24DCD82F0(v10, v6, &qword_27F1A9A20, &qword_24DCDD130);
      v12 = *v6;
      result = sub_24DCD646C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
      result = sub_24DCD820C(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

uint64_t sub_24DCD71E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v55 = a3;
  v51 = a1;
  v49 = _s14descr2860F21E1O6ClientC5StateOMa(0);
  v5 = *(*(v49 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v53 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58);
  v52 = *(*(v46 - 8) + 64);
  (MEMORY[0x28223BE20])();
  v50 = &v42 - v7;
  v8 = sub_24DCDC19C();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  (MEMORY[0x28223BE20])();
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24DCDC0EC();
  v43 = *(v45 - 8);
  v11 = *(v43 + 64);
  (MEMORY[0x28223BE20])();
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24DCDC17C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = (MEMORY[0x28223BE20])();
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98C0, &qword_24DCDCE70);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v42 - v27;
  v54 = a2;
  sub_24DCDC18C();
  sub_24DCD82F0(v28, v26, &qword_27F1A98C0, &qword_24DCDCE70);
  if ((*(v15 + 48))(v26, 1, v14) == 1)
  {
    sub_24DCD8358(v28, &qword_27F1A98C0, &qword_24DCDCE70);
    v29 = 0;
  }

  else
  {
    (*(v15 + 32))(v21, v26, v14);
    sub_24DCDC11C();
    (*(v15 + 16))(v19, v21, v14);
    v29 = sub_24DCDC10C();
    (*(v15 + 8))(v21, v14);
    sub_24DCD8358(v28, &qword_27F1A98C0, &qword_24DCDCE70);
  }

  v30 = v57;
  *(v57 + 16) = v29;
  v32 = v47;
  v31 = v48;
  v33 = v54;
  (*(v47 + 16))(v44, v54, v48);
  sub_24DCDC0DC();
  (*(v43 + 32))(v30 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_methodConfig, v13, v45);
  v34 = MEMORY[0x277D84F90];
  v35 = v53;
  *v53 = v51;
  *(v35 + 8) = v34;
  swift_storeEnumTagMultiPayload();
  v36 = v50;
  *v50 = 0;
  v37 = *(v46 + 28);

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A28, &qword_24DCDD138);
  bzero(&v36[v37], *(*(v38 - 8) + 64));
  sub_24DCD81A4(v35, &v36[v37], _s14descr2860F21E1O6ClientC5StateOMa);
  (*(v32 + 8))(v33, v31);
  memcpy((v30 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_state), v36, v52);
  v39 = (v30 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Client_peer);
  v40 = v56;
  *v39 = v55;
  v39[1] = v40;
  return v30;
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

uint64_t sub_24DCD7754(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24DCD7800(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_24DCD7870()
{
  v0 = sub_24DCDC0EC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24DCD797C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_24DCD797C()
{
  if (!qword_27F1A99E8)
  {
    _s14descr2860F21E1O6ClientC5StateOMa(255);
    v0 = sub_24DCDC0AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1A99E8);
    }
  }
}

uint64_t sub_24DCD79D4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9900, &qword_24DCDCF58);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DCD7A58()
{
  result = _s14descr2860F21E1O6ClientC5StateO14ConnectedStateVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s14descr2860F21E1O6ClientC5StateO11ClosedStateVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DCD7B18(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DCD7B64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9920, &qword_24DCDCF70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24DCD7C34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9920, &qword_24DCDCF70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24DCD7CE4()
{
  sub_24DCD7D68();
  if (v0 <= 0x3F)
  {
    sub_24DCD7DDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24DCD7D68()
{
  if (!qword_27F1A99F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1A98D8, &qword_24DCDCF30);
    v0 = sub_24DCDC2CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1A99F0);
    }
  }
}

void sub_24DCD7DDC()
{
  if (!qword_27F1A99F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1A98F0, &qword_24DCDCF48);
    v0 = sub_24DCDC39C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1A99F8);
    }
  }
}

uint64_t sub_24DCD7E54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24DCD7F24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98F0, &qword_24DCDCF48);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24DCD7FD4()
{
  type metadata accessor for InProcessTransport.Server();
  if (v0 <= 0x3F)
  {
    sub_24DCD7D68();
    if (v1 <= 0x3F)
    {
      sub_24DCD8078();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24DCD8078()
{
  if (!qword_27F1A9A00)
  {
    v0 = sub_24DCDC35C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1A9A00);
    }
  }
}

uint64_t sub_24DCD80DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DCD8144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24DCD81A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DCD820C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DCD827C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A98D8, &qword_24DCDCF30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DCD82F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24DCD8358(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t InProcessTransport.Server.peer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_peer);
  v2 = *(v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_peer + 8);

  return v1;
}

uint64_t sub_24DCD83F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A88, &qword_24DCDD298);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_24DCDC14C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_24DCD8358(a1, &qword_27F1A9A88, &qword_24DCDD298);
    v15 = *v3;
    v16 = sub_24DCD646C(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24DCDAFDC();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_24DCDAC1C(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_24DCD8358(v9, &qword_27F1A9A88, &qword_24DCDD298);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_24DCDADC8(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t InProcessTransport.Server.__allocating_init(peer:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  InProcessTransport.Server.init(peer:)(a1, a2);
  return v7;
}

uint64_t InProcessTransport.Server.init(peer:)(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A30, &qword_24DCDD148);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A38, &qword_24DCDD150);
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A40, &qword_24DCDD158);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  (*(v4 + 104))(v7, *MEMORY[0x277D85778], v3);
  sub_24DCDC32C();
  (*(v4 + 8))(v7, v3);
  (*(v13 + 32))(v2 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_newStreams, v16, v12);
  (*(v8 + 32))(v2 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_newStreamsContinuation, v11, v23);
  v17 = sub_24DCDB5E4(MEMORY[0x277D84F90]);
  v18 = v2 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_handles;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = v17;
  *(v18 + 24) = 0;
  v19 = (v2 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_peer);
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  return v2;
}

uint64_t sub_24DCD8954(uint64_t a1)
{
  v23 = a1;
  v1 = sub_24DCDC1FC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v22[1] = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24DCDC22C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A48, &qword_24DCDD160);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  (*(v7 + 16))(v10, v23, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A38, &qword_24DCDD150);
  sub_24DCDC33C();
  (*(v12 + 16))(v16, v18, v11);
  v19 = (*(v12 + 88))(v16, v11);
  v20 = *(v12 + 8);
  if (v19 == *MEMORY[0x277D85748])
  {
    v20(v16, v11);
    sub_24DCDC20C();
    MEMORY[0x253036750](MEMORY[0x277D84F90]);
    sub_24DCDC24C();
    sub_24DCDB7C0();
    swift_allocError();
    sub_24DCDC23C();
    swift_willThrow();
    return (v20)(v18, v11);
  }

  else
  {
    v20(v18, v11);
    return (v20)(v16, v11);
  }
}

uint64_t InProcessTransport.Server.listen(streamHandler:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24DCD8CEC, 0, 0);
}

uint64_t sub_24DCD8CEC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D859E8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_24DCD8DCC;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_24DCD8DCC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24DCDC0A8, 0, 0);
}

uint64_t sub_24DCD8EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v5[15] = *(v7 + 64);
  v5[16] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A70, &qword_24DCDD250) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A78, &qword_24DCDD258) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A80, &qword_24DCDD260);
  v5[20] = v10;
  v11 = *(v10 - 8);
  v5[21] = v11;
  v12 = *(v11 + 64) + 15;
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCD90A0, 0, 0);
}

uint64_t sub_24DCD90A0()
{
  v1 = v0[22];
  v2 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A40, &qword_24DCDD158);
  sub_24DCDC36C();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_24DCD917C;
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[20];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_24DCD917C()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DCD9278, 0, 0);
}

uint64_t sub_24DCD9278()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
    v6 = *(v0 + 128);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 144);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v34 = v10;
    v36 = *(v0 + 96);
    v37 = *(v0 + 136);
    v35 = *(v0 + 88);
    v12 = *(v0 + 80);
    v13 = sub_24DCDC31C();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v9, 1, 1, v13);
    v15 = *(v2 + 32);
    v15(v10, v1, v3);
    v16 = (*(v2 + 80) + 40) & ~*(v2 + 80);
    v17 = swift_allocObject();
    v17[2] = 0;
    v38 = v17 + 2;
    v17[3] = 0;
    v17[4] = v12;
    v15(v17 + v16, v34, v3);
    v18 = (v17 + ((v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = v35;
    v18[1] = v36;
    sub_24DCD82F0(v9, v37, &qword_27F1A9A70, &qword_24DCDD250);
    LODWORD(v9) = (*(v14 + 48))(v37, 1, v13);

    v19 = *(v0 + 136);
    if (v9 == 1)
    {
      sub_24DCD8358(*(v0 + 136), &qword_27F1A9A70, &qword_24DCDD250);
    }

    else
    {
      sub_24DCDC30C();
      (*(v14 + 8))(v19, v13);
    }

    if (*v38)
    {
      v20 = v17[3];
      v21 = *v38;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = sub_24DCDC2EC();
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = **(v0 + 72);
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_24DCDD270;
    *(v26 + 24) = v17;

    if (v24 | v22)
    {
      v27 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v22;
      *(v0 + 40) = v24;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(v0 + 144);
    *(v0 + 48) = 1;
    *(v0 + 56) = v27;
    *(v0 + 64) = v25;
    swift_task_create();

    sub_24DCD8358(v28, &qword_27F1A9A70, &qword_24DCDD250);
    v29 = *(MEMORY[0x277D85798] + 4);
    v30 = swift_task_alloc();
    *(v0 + 184) = v30;
    *v30 = v0;
    v30[1] = sub_24DCD917C;
    v31 = *(v0 + 176);
    v32 = *(v0 + 152);
    v33 = *(v0 + 160);

    return MEMORY[0x2822003E8](v32, 0, 0, v33);
  }
}

uint64_t sub_24DCD96A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_24DCD96CC, 0, 0);
}

uint64_t sub_24DCD96CC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x277D0B8D0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_24DCD97A8;

  return MEMORY[0x282162E00]();
}

uint64_t sub_24DCD97A8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v6 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 48);

    return MEMORY[0x2822009F8](sub_24DCD98C0, 0, 0);
  }

  return result;
}

uint64_t sub_24DCD98D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = sub_24DCDC14C();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = *(*(sub_24DCDC1AC() - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = sub_24DCDC15C();
  v6[11] = v11;
  v12 = *(v11 - 8);
  v6[12] = v12;
  v13 = *(v12 + 64) + 15;
  v6[13] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A88, &qword_24DCDD298) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCD9A5C, 0, 0);
}

uint64_t sub_24DCD9A5C()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[2];
  v4 = v0[3];
  v6 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_handles;
  v0[15] = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_handles;
  v7 = v4 + v6;
  os_unfair_lock_lock((v4 + v6));
  v8 = *(v7 + 8);
  v0[16] = v8;
  *(v7 + 8) = v8 + 1;
  v26 = *(v3 + 16);
  v26(v1, v5, v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_24DCD83F8(v1, v8);
  LODWORD(v2) = *(v7 + 24);
  os_unfair_lock_unlock(v7);
  if (v2 == 1)
  {
    v9 = v0[2];
    sub_24DCDC13C();
  }

  v10 = v0[13];
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[7];
  v14 = v0[4];
  v15 = v0[5];
  v16 = v0[2];
  v17 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  sub_24DCDC26C();
  v18 = *(v17 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_peer);
  v19 = *(v17 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_peer + 8);
  v26(v12, v16, v13);
  swift_bridgeObjectRetain_n();
  sub_24DCDC12C();
  v27 = (v15 + *v15);
  v20 = v15[1];
  v21 = swift_task_alloc();
  v0[17] = v21;
  *v21 = v0;
  v21[1] = sub_24DCD9C9C;
  v22 = v0[13];
  v23 = v0[6];
  v24 = v0[4];

  return v27(v24, v22);
}

uint64_t sub_24DCD9C9C()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DCD9D98, 0, 0);
}

uint64_t sub_24DCD9D98()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = (v0[3] + v0[15]);
  (*(v0[12] + 8))(v0[13], v0[11]);
  os_unfair_lock_lock(v5);
  sub_24DCDA518(&v5[2], v1);
  os_unfair_lock_unlock(v5);

  v6 = v0[1];

  return v6();
}

Swift::Void __swiftcall InProcessTransport.Server.beginGracefulShutdown()()
{
  v1 = sub_24DCDC14C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A38, &qword_24DCDD150);
  sub_24DCDC34C();
  v6 = v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_handles;
  os_unfair_lock_lock(v6);
  *(v6 + 24) = 1;
  v7 = *(v6 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = sub_24DCDB4E8(*(v7 + 16), 0);
    v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v20[0] = v9;
    v11 = sub_24DCDB244(v22, (v9 + v10), v8, v7);
    v20[1] = v22[3];
    v21 = v11;

    sub_24DCDB8C8();
    if (v21 != v8)
    {
      __break(1u);
      return;
    }

    v12 = *(v6 + 16);
    v13 = v20[0];
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *(v6 + 16) = MEMORY[0x277D84F98];
  os_unfair_lock_unlock(v6);
  v14 = *(v13 + 16);
  if (v14)
  {
    v17 = *(v2 + 16);
    v16 = v2 + 16;
    v15 = v17;
    v18 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v19 = *(v16 + 56);
    do
    {
      v15(v5, v18, v1);
      sub_24DCDC13C();
      (*(v16 - 8))(v5, v1);
      v18 += v19;
      --v14;
    }

    while (v14);
  }
}

uint64_t InProcessTransport.Server.deinit()
{
  v1 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_newStreams;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A40, &qword_24DCDD158);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_newStreamsContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A38, &qword_24DCDD150);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_peer + 8);

  sub_24DCDB8D0(v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_handles + 8);
  return v0;
}

uint64_t InProcessTransport.Server.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_newStreams;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A40, &qword_24DCDD158);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_newStreamsContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A38, &qword_24DCDD150);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_peer + 8);

  sub_24DCDB8D0(v0 + OBJC_IVAR____TtCV30GRPCInProcessTransportInternal18InProcessTransport6Server_handles + 8);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_24DCDA2BC(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_24DCDA2E4, 0, 0);
}

uint64_t sub_24DCDA2E4()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D859E8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_24DCDA3C4;

  return MEMORY[0x2822007C0]();
}

uint64_t sub_24DCDA3C4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24DCDA4DC, 0, 0);
}

uint64_t sub_24DCDA518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A88, &qword_24DCDD298);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(a1 + 8);
  v9 = sub_24DCD646C(a2);
  if (v10)
  {
    v11 = v9;
    v12 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + 8);
    v21 = v14;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24DCDAFDC();
      v14 = v21;
    }

    v15 = *(v14 + 56);
    v16 = sub_24DCDC14C();
    v17 = *(v16 - 8);
    (*(v17 + 32))(v7, v15 + *(v17 + 72) * v11, v16);
    sub_24DCDAC1C(v11, v14);
    *(a1 + 8) = v14;
    (*(v17 + 56))(v7, 0, 1, v16);
  }

  else
  {
    v18 = sub_24DCDC14C();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  return sub_24DCD8358(v7, &qword_27F1A9A88, &qword_24DCDD298);
}

uint64_t sub_24DCDA6F0(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DCDA7D8;

  return v5();
}

uint64_t sub_24DCDA7D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24DCDA8D0(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_24DCDC14C();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A90, &qword_24DCDD2A0);
  v41 = a2;
  result = sub_24DCDC3EC();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_24DCDC44C();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_24DCDAC1C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24DCDC3AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_24DCDC44C();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_24DCDC14C() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
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

uint64_t sub_24DCDADC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24DCD646C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_24DCDAFDC();
      goto LABEL_7;
    }

    sub_24DCDA8D0(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_24DCD646C(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24DCDC43C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_24DCDC14C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_24DCDAF30(v10, a2, a1, v16);
}

uint64_t sub_24DCDAF30(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_24DCDC14C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_24DCDAFDC()
{
  v1 = v0;
  v30 = sub_24DCDC14C();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A90, &qword_24DCDD2A0);
  v4 = *v0;
  v5 = sub_24DCDC3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_24DCDB244(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_24DCDC14C();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

size_t sub_24DCDB4E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A68, &qword_24DCDD248);
  v4 = *(sub_24DCDC14C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24DCDB5E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A98, &qword_24DCDD2A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A90, &qword_24DCDD2A0);
    v8 = sub_24DCDC3FC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_24DCD82F0(v10, v6, &qword_27F1A9A98, &qword_24DCDD2A8);
      v12 = *v6;
      result = sub_24DCD646C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_24DCDC14C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_24DCDB7C0()
{
  result = qword_27F1A99D0;
  if (!qword_27F1A99D0)
  {
    sub_24DCDC24C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A99D0);
  }

  return result;
}

uint64_t sub_24DCDB818(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24DCD83B8;

  return sub_24DCD8EE4(v8, a2, v5, v6, v7);
}

unint64_t sub_24DCDB904()
{
  result = qword_27F1A99D8;
  if (!qword_27F1A99D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1A99E0, qword_24DCDCFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A99D8);
  }

  return result;
}

uint64_t type metadata accessor for InProcessTransport.Server()
{
  result = qword_27F1A9C20;
  if (!qword_27F1A9C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24DCDB9BC()
{
  sub_24DCDBAFC(319, &qword_27F1A9A50, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24DCDBAFC(319, &qword_27F1A9A58, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_24DCDBAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1A9918, &qword_24DCDCF68);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24DCDBB68()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9A60, &qword_24DCDD210);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24DCDBBAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24DCDBBF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DCDBC44(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24DCD6348;

  return sub_24DCD8EE4(v8, a2, v5, v6, v7);
}

uint64_t sub_24DCDBCF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24DCDBDE4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1A9918, &qword_24DCDCF68) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24DCD83B8;

  return sub_24DCD96A8(v8, v9, v4, v0 + v3, v6, v7);
}

uint64_t sub_24DCDBF08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DCDBF40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24DCD83B8;

  return sub_24DCDA6F0(v2);
}

uint64_t sub_24DCDBFEC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24DCD6348;

  return sub_24DCD98D4(v9, a2, v5, v6, v8, v7);
}