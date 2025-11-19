id sub_25AE6E804()
{
  result = [objc_allocWithZone(type metadata accessor for NameRecognitionClient()) init];
  qword_27FA1E140 = result;
  return result;
}

id static NameRecognitionClient.shared.getter()
{
  if (qword_27FA1D278 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA1E140;

  return v1;
}

void sub_25AE6E8FC()
{
  v1 = OBJC_IVAR____TtC15NameRecognition21NameRecognitionClient__client;
  v2 = *(v0 + OBJC_IVAR____TtC15NameRecognition21NameRecognitionClient__client);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15NameRecognition21NameRecognitionClient__client);
LABEL_5:
    v17 = v2;
    return;
  }

  v4 = v0;
  sub_25AEA2688();

  v5 = [objc_opt_self() processInfo];
  v6 = [v5 processName];

  v7 = sub_25AEA21A8();
  v9 = v8;

  MEMORY[0x25F859D40](v7, v9);

  v10 = *MEMORY[0x277CE7C50];
  sub_25AEA21A8();
  v11 = objc_allocWithZone(MEMORY[0x277CE7740]);
  v12 = sub_25AEA2178();

  v13 = sub_25AEA2178();

  v14 = [v11 initWithIdentifier:v12 serviceBundleName:v13];

  v15 = *(v4 + v1);
  *(v4 + v1) = v14;
  v16 = v14;

  if (v16)
  {
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

id NameRecognitionClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25AE6EB80()
{
  v1 = *(v0 + 16);
  sub_25AE6E8FC();
  *(v0 + 24) = v2;
  *(v0 + 48) = 1;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_25AE6EC30;

  return sub_25AE41F28((v0 + 48), 0);
}

uint64_t sub_25AE6EC30()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(v4 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25AE70718, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t NameRecognitionClient.add(nameConfig:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_25AE6EDB4, 0, 0);
}

uint64_t sub_25AE6EDB4()
{
  v1 = *(v0 + 80);
  v2 = sub_25AEA0B38();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 96) = sub_25AEA0B28();
  type metadata accessor for NRNameConfiguration();
  sub_25AE7014C(&qword_27FA1E178, type metadata accessor for NRNameConfiguration);
  v5 = sub_25AEA0B18();
  *(v0 + 104) = v5;
  *(v0 + 112) = v6;
  v7 = *(v0 + 88);
  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E180, &qword_25AEA5870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25AEA3540;
  *(inited + 32) = 0x666E6F43656D616ELL;
  *(inited + 40) = 0xEA00000000006769;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  sub_25AE62310(v8, v9);
  v11 = sub_25AE6FF08(inited);
  swift_setDeallocating();
  sub_25AE41938(inited + 32, &qword_27FA1E188, &qword_25AEA5878);
  sub_25AE6E8FC();
  *(v0 + 120) = v12;
  *(v0 + 152) = 6;
  v13 = sub_25AE6E1B0(v11);
  *(v0 + 128) = v13;

  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *v14 = v0;
  v14[1] = sub_25AE6EFF0;

  return sub_25AE41F28((v0 + 152), v13);
}

uint64_t sub_25AE6EFF0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v11 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v5 = *(v2 + 120);
    v4 = *(v2 + 128);

    v6 = sub_25AE6F2D0;
  }

  else
  {
    v9 = v2 + 120;
    v7 = *(v2 + 120);
    v8 = *(v9 + 8);

    v6 = sub_25AE6F134;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25AE6F134()
{
  v13 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25AE65D2C(0xD000000000000010, 0x800000025AEA94D0, &v12);
    _os_log_impl(&dword_25AE3C000, v2, v3, "Client received %s success callback", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x25F85AB80](v9, -1, -1);
    MEMORY[0x25F85AB80](v8, -1, -1);
  }

  sub_25AE42754(v6, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25AE6F2D0()
{
  v1 = v0[12];
  sub_25AE42754(v0[13], v0[14]);

  v2 = v0[18];
  v3 = v0[1];

  return v3();
}

uint64_t sub_25AE6F360()
{
  v1 = *(v0 + 16);
  sub_25AE6E8FC();
  *(v0 + 24) = v2;
  *(v0 + 48) = 7;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_25AE6F410;

  return sub_25AE41F28((v0 + 48), 0);
}

uint64_t sub_25AE6F410()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_25AE70718;
  }

  else
  {

    v4 = sub_25AE6F550;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25AE6F550()
{
  v9 = v0;
  if (qword_27FA1D248 != -1)
  {
    swift_once();
  }

  v1 = sub_25AEA12C8();
  __swift_project_value_buffer(v1, qword_27FA1DF50);
  v2 = sub_25AEA12A8();
  v3 = sub_25AEA24A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AE65D2C(0xD000000000000010, 0x800000025AEA94F0, &v8);
    _os_log_impl(&dword_25AE3C000, v2, v3, "Client received %s success callback", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x25F85AB80](v5, -1, -1);
    MEMORY[0x25F85AB80](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_25AE6F6C8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25AEA25E8();

  return sub_25AE6F988(a1, v5);
}

unint64_t sub_25AE6F70C()
{
  result = qword_27FA1E158;
  if (!qword_27FA1E158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E150, &qword_25AEA5848);
    sub_25AE6F790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E158);
  }

  return result;
}

unint64_t sub_25AE6F790()
{
  result = qword_27FA1E160;
  if (!qword_27FA1E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E160);
  }

  return result;
}

unint64_t sub_25AE6F7E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25AEA28B8();
  sub_25AEA21F8();
  v6 = sub_25AEA28D8();

  return sub_25AE6FA50(a1, a2, v6);
}

unint64_t sub_25AE6F85C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25AEA21A8();
  sub_25AEA28B8();
  sub_25AEA21F8();
  v4 = sub_25AEA28D8();

  return sub_25AE6FB08(a1, v4);
}

unint64_t sub_25AE6F8F0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25AEA0EB8();
  sub_25AE7014C(&qword_27FA1D2F8, MEMORY[0x277CC9788]);
  v5 = sub_25AEA2148();

  return sub_25AE6FC0C(a1, v5);
}

unint64_t sub_25AE6F988(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25AE417FC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F85A110](v9, a1);
      sub_25AE41798(v9);
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

unint64_t sub_25AE6FA50(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25AEA2828())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25AE6FB08(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25AEA21A8();
      v9 = v8;
      if (v7 == sub_25AEA21A8() && v9 == v10)
      {
        break;
      }

      v12 = sub_25AEA2828();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25AE6FC0C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25AEA0EB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_25AE7014C(&qword_27FA1E220, MEMORY[0x277CC9788]);
      v16 = sub_25AEA2168();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_25AE6FDCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2E8, &qword_25AEA35E8);
    v3 = sub_25AEA2778();
    v4 = a1 + 32;

    while (1)
    {
      sub_25AE479E0(v4, v13, &qword_27FA1E170, &unk_25AEA35D0);
      result = sub_25AE6F6C8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_25AE417EC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_25AE6FF08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E250, &qword_25AEA58F0);
    v3 = sub_25AEA2778();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_25AE62310(v7, v8);
      result = sub_25AE6F7E4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_25AE70054(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1E210, &qword_25AEA58D0);
    v3 = sub_25AEA2778();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_25AE6F85C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_25AE7014C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25AE70194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E258, &qword_25AEA58F8);
    v3 = sub_25AEA2778();
    v4 = a1 + 32;

    while (1)
    {
      sub_25AE479E0(v4, &v13, &unk_27FA1E260, &qword_25AEA5900);
      v5 = v13;
      v6 = v14;
      result = sub_25AE6F7E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25AE417EC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_25AE702C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E238, &qword_25AEA58E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1E240, &qword_25AEA3600);
    v8 = sub_25AEA2778();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25AE479E0(v10, v6, &qword_27FA1E238, &qword_25AEA58E8);
      result = sub_25AE6F8F0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_25AEA0EB8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

unint64_t sub_25AE704AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E228, &qword_25AEA58D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E230, &qword_25AEA58E0);
    v8 = sub_25AEA2778();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25AE479E0(v10, v6, &qword_27FA1E228, &qword_25AEA58D8);
      result = sub_25AE6F8F0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_25AEA0EB8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

unint64_t sub_25AE70694()
{
  result = qword_27FA1E270;
  if (!qword_27FA1E270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E128, &qword_25AEA5910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E270);
  }

  return result;
}

id static CollectedEnrollment.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_25AEA2178();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_25AE70788(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 audioSourceRawValue];
  if (v3)
  {
    v4 = v3;
    v5 = sub_25AEA21A8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_25AE707F0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_25AEA2178();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setAudioSourceRawValue_];
}

void sub_25AE70860(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D380, &unk_25AEA3E80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_25AE6884C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_25AEA0E48();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25AEA0E18();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier_];
}

void sub_25AE7098C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 audioData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_25AEA0DE8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_25AE709F4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_25AEA0DD8();
  }

  v5 = v3;
  [v2 setAudioData_];
}

uint64_t sub_25AE70A6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CollectedEnrollment();
  result = sub_25AEA2698();
  *a1 = result;
  return result;
}

id sub_25AE70AEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 nameConfiguration];
  *a2 = result;
  return result;
}

uint64_t sub_25AE70B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25AEA18E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E280, &qword_25AEA5990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_25AE479E0(v2, &v16 - v11, &qword_27FA1E280, &qword_25AEA5990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25AE49BE4(v12, a1, &qword_27FA1E320, &qword_25AEA5AB0);
  }

  v14 = *v12;
  sub_25AEA2498();
  v15 = sub_25AEA1A98();
  sub_25AEA1298();

  sub_25AEA18D8();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t NameRecognitionSettingsView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E280, &qword_25AEA5990);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for NameRecognitionSettingsView();
  v3 = (a1 + *(v2 + 20));
  v4 = type metadata accessor for NameRecognitionSettingsViewModel();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  NameRecognitionSettingsViewModel.init()();
  sub_25AE78AB8(&qword_27FA1E288, type metadata accessor for NameRecognitionSettingsViewModel);
  *v3 = sub_25AEA16D8();
  v3[1] = v7;
  v8 = a1 + *(v2 + 24);
  result = sub_25AEA1E68();
  *v8 = v10;
  *(v8 + 1) = v11;
  return result;
}

uint64_t NameRecognitionSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = type metadata accessor for NameRecognitionSettingsView();
  v81 = *(v2 - 8);
  v3 = *(v81 + 64);
  MEMORY[0x28223BE20](v2);
  v85 = v4;
  v75 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E290, &qword_25AEA5998);
  v67 = *(OpaqueTypeConformance2 - 8);
  v5 = *(v67 + 64);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v7 = v60 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E298, &qword_25AEA59A0);
  v70 = *(v71 - 8);
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v82 = v60 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2A0, &qword_25AEA59A8);
  v72 = *(v73 - 8);
  v10 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v83 = v60 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2A8, &qword_25AEA59B0);
  v12 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v74 = v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2B0, &qword_25AEA59B8);
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = *(v78 + 64);
  MEMORY[0x28223BE20](v14);
  v77 = v60 - v16;
  v86 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2B8, &qword_25AEA59C0);
  sub_25AE47F60(&qword_27FA1E2C0, &qword_27FA1E2B8, &qword_25AEA59C0);
  v66 = v7;
  sub_25AEA1B58();
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v17 = qword_27FA22788;
  v18 = qword_27FA22788;
  v69 = v17;
  v19 = v18;
  v61 = sub_25AEA1BB8();
  v21 = v20;
  v23 = v22;
  v60[2] = v24;
  v25 = v1 + *(v2 + 24);
  v26 = *v25;
  v27 = *(v25 + 8);
  LOBYTE(v91) = v26;
  v92 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  v28 = sub_25AEA1E98();
  v60[1] = v60;
  v62 = v2;
  MEMORY[0x28223BE20](v28);
  v84 = v1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D698, &qword_25AEA4080);
  v64 = sub_25AE47F60(&qword_27FA1E2C8, &qword_27FA1E290, &qword_25AEA5998);
  v65 = sub_25AE47F60(&qword_27FA1D690, &qword_27FA1D698, &qword_25AEA4080);
  v29 = OpaqueTypeConformance2;
  v30 = v61;
  v31 = v66;
  sub_25AEA1CE8();

  sub_25AE479D0(v30, v21, v23 & 1);

  (*(v67 + 8))(v31, v29);
  v32 = v84;
  v33 = (v84 + *(v62 + 20));
  v34 = v33[1];
  v67 = *v33;
  v66 = v34;
  v62 = type metadata accessor for NameRecognitionSettingsViewModel();
  sub_25AE78AB8(&qword_27FA1E288, type metadata accessor for NameRecognitionSettingsViewModel);
  sub_25AEA16E8();
  swift_getKeyPath();
  sub_25AEA16F8();

  v35 = v75;
  sub_25AE7776C(v32, v75);
  v81 = *(v81 + 80);
  v36 = (v81 + 16) & ~v81;
  v37 = swift_allocObject();
  sub_25AE777D4(v35, v37 + v36);
  v61 = type metadata accessor for OnboardingCoordinatorView();
  v87 = v29;
  v88 = v63;
  v89 = v64;
  v90 = v65;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_25AE78AB8(&qword_27FA1E2D8, type metadata accessor for OnboardingCoordinatorView);
  v39 = v71;
  v40 = v82;
  sub_25AEA1CF8();

  (*(v70 + 8))(v40, v39);
  sub_25AEA16E8();
  swift_getKeyPath();
  sub_25AEA16F8();

  v41 = v84;
  sub_25AE7776C(v84, v35);
  v42 = swift_allocObject();
  sub_25AE777D4(v35, v42 + v36);
  type metadata accessor for ErrorView();
  v87 = v39;
  v88 = v61;
  v89 = OpaqueTypeConformance2;
  v90 = v38;
  swift_getOpaqueTypeConformance2();
  sub_25AE78AB8(&qword_27FA1D418, type metadata accessor for ErrorView);
  v43 = v74;
  v44 = v73;
  v45 = v83;
  sub_25AEA1CF8();

  (*(v72 + 8))(v45, v44);
  sub_25AE7776C(v41, v35);
  v46 = swift_allocObject();
  sub_25AE777D4(v35, v46 + v36);
  v47 = v76;
  v48 = (v43 + *(v76 + 36));
  *v48 = sub_25AE7795C;
  v48[1] = v46;
  v48[2] = 0;
  v48[3] = 0;
  sub_25AEA1958();
  v49 = sub_25AEA1BB8();
  v51 = v50;
  LOBYTE(v35) = v52;
  v53 = sub_25AE77990();
  v54 = v77;
  sub_25AEA1C88();
  sub_25AE479D0(v49, v51, v35 & 1);

  v55 = sub_25AE41938(v43, &qword_27FA1E2A8, &qword_25AEA59B0);
  MEMORY[0x28223BE20](v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2E8, &qword_25AEA5A20);
  v87 = v47;
  v88 = v53;
  swift_getOpaqueTypeConformance2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2F0, &qword_25AEA5A28);
  v57 = sub_25AE47F60(&qword_27FA1E2F8, &qword_27FA1E2F0, &qword_25AEA5A28);
  v87 = v56;
  v88 = v57;
  swift_getOpaqueTypeConformance2();
  v58 = v79;
  sub_25AEA1D28();
  return (*(v78 + 8))(v54, v58);
}

uint64_t sub_25AE71AC8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3F0, &qword_25AEA5D48);
  v41 = *(v46 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v40 = &v39 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3F8, &qword_25AEA5D50);
  v5 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v7 = &v39 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E400, &qword_25AEA5D58);
  v8 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v39 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E408, &qword_25AEA5D60);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E410, &qword_25AEA5D68);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E418, &qword_25AEA5D70);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v39 - v25;
  v27 = *&a1[*(type metadata accessor for NameRecognitionSettingsView() + 20) + 8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v49 == 1)
  {
    sub_25AE72148();
    (*(v16 + 32))(v26, v19, v15);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v16 + 56))(v26, v28, 1, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v48 == 1)
  {
    v30 = v39;
    sub_25AE72574(v39);
    sub_25AE479E0(v30, v7, &qword_27FA1E400, &qword_25AEA5D58);
    swift_storeEnumTagMultiPayload();
    sub_25AE47F60(&qword_27FA1E438, &qword_27FA1E400, &qword_25AEA5D58);
    sub_25AE789B8();
    v31 = v42;
    sub_25AEA19E8();
    sub_25AE41938(v30, &qword_27FA1E400, &qword_25AEA5D58);
  }

  else
  {
    MEMORY[0x28223BE20](v29);
    *(&v39 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E420, &qword_25AEA5DC0);
    sub_25AE788AC();
    v32 = v40;
    sub_25AEA1F68();
    v33 = v41;
    v34 = v46;
    (*(v41 + 16))(v7, v32, v46);
    swift_storeEnumTagMultiPayload();
    sub_25AE47F60(&qword_27FA1E438, &qword_27FA1E400, &qword_25AEA5D58);
    sub_25AE789B8();
    v31 = v42;
    sub_25AEA19E8();
    (*(v33 + 8))(v32, v34);
  }

  sub_25AE479E0(v26, v24, &qword_27FA1E418, &qword_25AEA5D70);
  v35 = v45;
  sub_25AE479E0(v31, v45, &qword_27FA1E408, &qword_25AEA5D60);
  v36 = v47;
  sub_25AE479E0(v24, v47, &qword_27FA1E418, &qword_25AEA5D70);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E448, &qword_25AEA5DC8);
  sub_25AE479E0(v35, v36 + *(v37 + 48), &qword_27FA1E408, &qword_25AEA5D60);
  sub_25AE41938(v31, &qword_27FA1E408, &qword_25AEA5D60);
  sub_25AE41938(v26, &qword_27FA1E418, &qword_25AEA5D70);
  sub_25AE41938(v35, &qword_27FA1E408, &qword_25AEA5D60);
  return sub_25AE41938(v24, &qword_27FA1E418, &qword_25AEA5D70);
}

uint64_t sub_25AE72148()
{
  v1 = (*(v0 + *(type metadata accessor for NameRecognitionSettingsView() + 20) + 8) + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_25AEA3540;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_25AE4172C();
    *(v4 + 32) = v2;
    *(v4 + 40) = v3;
    v5 = qword_27FA1D250;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = qword_27FA22788;
    if (qword_27FA22788)
    {
      v7 = qword_27FA22788;
    }

    else
    {
      v7 = [objc_opt_self() mainBundle];
      v6 = 0;
    }

    v8 = v6;
    sub_25AEA0CC8();

    sub_25AEA21B8();
  }

  else
  {
    sub_25AE656C8();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v15 == 1)
  {

    if (qword_27FA1D250 != -1)
    {
      swift_once();
    }

    v9 = qword_27FA22788;
    if (qword_27FA22788)
    {
      v10 = qword_27FA22788;
    }

    else
    {
      v10 = [objc_opt_self() mainBundle];
      v9 = 0;
    }

    v11 = v9;
    v12 = sub_25AEA0CC8();

    v15 = v12;
    sub_25AEA2278();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v15 == 1)
  {
    v13 = sub_25AEA1D88();
  }

  else
  {
    v13 = sub_25AEA1D78();
  }

  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E450, &unk_25AEA5E18);
  sub_25AE47F60(&qword_27FA1E458, &qword_27FA1E450, &unk_25AEA5E18);
  sub_25AEA1F68();
}

uint64_t sub_25AE72574@<X0>(char *a1@<X8>)
{
  v67 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3F0, &qword_25AEA5D48);
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v2);
  v59 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4A0, &qword_25AEA5ED8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v70 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4A8, &qword_25AEA5EE0);
  v66 = *(v74 - 8);
  v11 = *(v66 + 64);
  v12 = MEMORY[0x28223BE20](v74);
  v73 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4B0, &qword_25AEA5EE8);
  v71 = *(v15 - 8);
  v72 = v15;
  v16 = v71[8];
  v17 = MEMORY[0x28223BE20](v15);
  v75 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4B8, &qword_25AEA5EF0);
  v68 = *(v21 - 8);
  v69 = v21;
  v22 = v68[8];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v59 - v26;
  v77 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4C0, &qword_25AEA5EF8);
  sub_25AE78E30();
  v28 = v27;
  sub_25AEA1F68();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v29 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v30 = qword_27FA22788;
  }

  else
  {
    v30 = [objc_opt_self() mainBundle];
    v29 = 0;
  }

  v31 = v29;
  v32 = sub_25AEA0CC8();
  v34 = v33;

  v78 = v32;
  v79 = v34;
  v78 = sub_25AEA2278();
  v79 = v35;
  MEMORY[0x28223BE20](v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4E0, &qword_25AEA5F08);
  sub_25AE78EF0();
  sub_25AE4E8AC();
  sub_25AEA1F58();
  sub_25AE748A4(v76);
  v36 = AXIsInternalInstall();
  if (v36)
  {
    MEMORY[0x28223BE20](v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E420, &qword_25AEA5DC0);
    sub_25AE788AC();
    v37 = v59;
    sub_25AEA1F68();
    v39 = v64;
    v38 = v65;
    (*(v64 + 32))(v10, v37, v65);
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v39 = v64;
    v38 = v65;
  }

  (*(v39 + 56))(v10, v40, 1, v38);
  v41 = v68[2];
  v42 = v25;
  v43 = v25;
  v62 = v25;
  v63 = v28;
  v44 = v69;
  v41(v43, v28, v69);
  v65 = v71[2];
  v61 = v20;
  v65(v75, v20, v72);
  v45 = v66;
  v60 = v10;
  v46 = *(v66 + 16);
  v46(v73, v76, v74);
  sub_25AE479E0(v10, v70, &qword_27FA1E4A0, &qword_25AEA5ED8);
  v47 = v67;
  v41(v67, v42, v44);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E510, &qword_25AEA5F20);
  v49 = v72;
  v65(&v47[v48[12]], v75, v72);
  v51 = v73;
  v50 = v74;
  v46(&v47[v48[16]], v73, v74);
  v52 = &v47[v48[20]];
  v53 = v70;
  sub_25AE479E0(v70, v52, &qword_27FA1E4A0, &qword_25AEA5ED8);
  sub_25AE41938(v60, &qword_27FA1E4A0, &qword_25AEA5ED8);
  v54 = *(v45 + 8);
  v54(v76, v50);
  v55 = v71[1];
  v55(v61, v49);
  v56 = v69;
  v57 = v68[1];
  v57(v63, v69);
  sub_25AE41938(v53, &qword_27FA1E4A0, &qword_25AEA5ED8);
  v54(v51, v74);
  v55(v75, v49);
  return (v57)(v62, v56);
}

uint64_t sub_25AE72D34(uint64_t a1)
{
  v2 = type metadata accessor for NameRecognitionSettingsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3E8, &qword_25AEA5D40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v9 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v10 = qword_27FA22788;
  }

  else
  {
    v10 = [objc_opt_self() mainBundle];
    v9 = 0;
  }

  v11 = v9;
  v12 = sub_25AEA0CC8();
  v14 = v13;

  v20 = v12;
  v21 = v14;
  v20 = sub_25AEA2278();
  v21 = v15;
  sub_25AEA14E8();
  v16 = sub_25AEA14F8();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  sub_25AE7776C(a1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  sub_25AE777D4(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_25AE4E8AC();
  return sub_25AEA1EC8();
}

uint64_t sub_25AE72FCC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for NameRecognitionSettingsView() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  return sub_25AEA1E88();
}

uint64_t sub_25AE73064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NameRecognitionSettingsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_25AE7776C(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_25AE777D4(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a2 = sub_25AE559D8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9 = type metadata accessor for OnboardingCoordinatorView();
  v10 = *(v9 + 20);
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  result = swift_storeEnumTagMultiPayload();
  v12 = (a2 + *(v9 + 24));
  *v12 = sub_25AE786D4;
  v12[1] = v8;
  return result;
}

uint64_t sub_25AE731C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_25AEA2368();
  v4[3] = sub_25AEA2358();
  v6 = sub_25AEA2348();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_25AE73258, v6, v5);
}

uint64_t sub_25AE73258()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for NameRecognitionSettingsView() + 20) + 8);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_25AE732FC;

  return sub_25AE88450();
}

uint64_t sub_25AE732FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25AE7341C, v4, v3);
}

uint64_t sub_25AE7341C()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_25AE73480();
  v3 = v0[1];

  return v3();
}

uint64_t sub_25AE73480()
{
  v1 = v0;
  v2 = sub_25AEA1F88();
  v54 = *(v2 - 8);
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3D0, &qword_25AEA5D00);
  v6 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E320, &qword_25AEA5AB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3D8, &qword_25AEA5D08);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v52 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v24 = *(v0 + *(type metadata accessor for NameRecognitionSettingsView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v55 == 1)
  {
    sub_25AE70B3C(v14);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2D0, &qword_25AEA59F0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    v46 = v27 + 48;
    v47 = v28;
    v29 = v28(v14, 1, v26);
    v49 = v1;
    v50 = v5;
    v48 = v26;
    if (v29 == 1)
    {
      sub_25AE41938(v14, &qword_27FA1E320, &qword_25AEA5AB0);
      v30 = 1;
    }

    else
    {
      MEMORY[0x25F859A10](v26);
      sub_25AE41938(v14, &qword_27FA1E2D0, &qword_25AEA59F0);
      v30 = 0;
    }

    v31 = v54;
    v32 = *(v54 + 56);
    v32(v23, v30, 1, v2);
    v33 = *(v31 + 104);
    v45 = *MEMORY[0x277CDF0D8];
    v44 = v33;
    v33(v21);
    v32(v21, 0, 1, v2);
    v34 = *(v53 + 48);
    sub_25AE479E0(v23, v8, &qword_27FA1E3D8, &qword_25AEA5D08);
    sub_25AE479E0(v21, &v8[v34], &qword_27FA1E3D8, &qword_25AEA5D08);
    v35 = *(v31 + 48);
    if (v35(v8, 1, v2) == 1)
    {
      sub_25AE41938(v21, &qword_27FA1E3D8, &qword_25AEA5D08);
      sub_25AE41938(v23, &qword_27FA1E3D8, &qword_25AEA5D08);
      if (v35(&v8[v34], 1, v2) == 1)
      {
        v36 = &qword_27FA1E3D8;
        v37 = &qword_25AEA5D08;
        v38 = v8;
        return sub_25AE41938(v38, v36, v37);
      }
    }

    else
    {
      v39 = v52;
      sub_25AE479E0(v8, v52, &qword_27FA1E3D8, &qword_25AEA5D08);
      if (v35(&v8[v34], 1, v2) != 1)
      {
        v42 = v54;
        v40 = v50;
        (*(v54 + 32))(v50, &v8[v34], v2);
        sub_25AE78AB8(&qword_27FA1E3E0, MEMORY[0x277CDF0E0]);
        LODWORD(v53) = sub_25AEA2168();
        v43 = *(v42 + 8);
        v43(v40, v2);
        sub_25AE41938(v21, &qword_27FA1E3D8, &qword_25AEA5D08);
        sub_25AE41938(v23, &qword_27FA1E3D8, &qword_25AEA5D08);
        v43(v52, v2);
        result = sub_25AE41938(v8, &qword_27FA1E3D8, &qword_25AEA5D08);
        if (v53)
        {
          return result;
        }

        goto LABEL_11;
      }

      sub_25AE41938(v21, &qword_27FA1E3D8, &qword_25AEA5D08);
      sub_25AE41938(v23, &qword_27FA1E3D8, &qword_25AEA5D08);
      (*(v54 + 8))(v39, v2);
    }

    sub_25AE41938(v8, &qword_27FA1E3D0, &qword_25AEA5D00);
    v40 = v50;
LABEL_11:
    v41 = v51;
    sub_25AE70B3C(v51);
    if (v47(v41, 1, v48) == 1)
    {
      v36 = &qword_27FA1E320;
      v37 = &qword_25AEA5AB0;
    }

    else
    {
      v44(v40, v45, v2);
      sub_25AEA1F08();
      v36 = &qword_27FA1E2D0;
      v37 = &qword_25AEA59F0;
    }

    v38 = v41;
    return sub_25AE41938(v38, v36, v37);
  }

  return result;
}

uint64_t sub_25AE73B30(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

int *sub_25AE73BA0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for NameRecognitionSettingsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = *(v1 + *(MEMORY[0x28223BE20](v3 - 8) + 28) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v7 = v29;
  v27 = v28;
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v8 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v9 = qword_27FA22788;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v8 = 0;
  }

  v10 = v8;
  v11 = sub_25AEA0CC8();
  v13 = v12;

  v28 = v11;
  v29 = v13;
  v14 = sub_25AEA2278();
  v16 = v15;
  sub_25AE7776C(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_25AE777D4(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_25AE7776C(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  sub_25AE777D4(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D420, &qword_25AEA47E0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ErrorView();
  v21 = (a1 + result[5]);
  *v21 = v27;
  v21[1] = v7;
  v22 = (a1 + result[6]);
  *v22 = v14;
  v22[1] = v16;
  *(a1 + result[7]) = 1;
  v23 = (a1 + result[8]);
  *v23 = sub_25AE79644;
  v23[1] = v18;
  v24 = (a1 + result[9]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (a1 + result[10]);
  *v25 = sub_25AE786B8;
  v25[1] = v19;
  return result;
}

uint64_t sub_25AE73EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_25AEA2368();
  v4[3] = sub_25AEA2358();
  v6 = sub_25AEA2348();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_25AE73F44, v6, v5);
}

uint64_t sub_25AE73F44()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for NameRecognitionSettingsView() + 20) + 8);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_25AE73FE8;

  return sub_25AE88450();
}

uint64_t sub_25AE73FE8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25AE79674, v4, v3);
}

uint64_t sub_25AE74108(uint64_t a1)
{
  v2 = sub_25AEA1A28();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2F0, &qword_25AEA5A28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_25AEA19F8();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E390, &qword_25AEA5BC8);
  sub_25AE47F60(&qword_27FA1E398, &qword_27FA1E390, &qword_25AEA5BC8);
  sub_25AEA17A8();
  v9 = sub_25AE47F60(&qword_27FA1E2F8, &qword_27FA1E2F0, &qword_25AEA5A28);
  MEMORY[0x25F859550](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25AE742F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for NameRecognitionSettingsView();
  v4 = v3 - 8;
  v41 = *(v3 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = v6;
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3A0, &qword_25AEA5BD0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = sub_25AEA1528();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3A8, &qword_25AEA5BD8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v40 - v26;
  v28 = *(v4 + 28);
  v44 = a1;
  v29 = *(a1 + v28 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v47 == 1)
  {
    sub_25AEA1518();
    (*(v17 + 32))(v27, v20, v16);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = 1;
  (*(v17 + 56))(v27, v30, 1, v16);
  if (AXIsInternalInstall())
  {
    v32 = v43;
    sub_25AE7776C(v44, v43);
    v33 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v34 = swift_allocObject();
    sub_25AE777D4(v32, v34 + v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3C0, &qword_25AEA5C38);
    sub_25AE783EC();
    sub_25AEA1EB8();
    v31 = 0;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3B0, &qword_25AEA5C28);
  (*(*(v35 - 8) + 56))(v13, v31, 1, v35);
  sub_25AE49BE4(v13, v15, &qword_27FA1E3A0, &qword_25AEA5BD0);
  sub_25AE479E0(v27, v25, &qword_27FA1E3A8, &qword_25AEA5BD8);
  v36 = v45;
  sub_25AE479E0(v15, v45, &qword_27FA1E3A0, &qword_25AEA5BD0);
  v37 = v46;
  sub_25AE479E0(v25, v46, &qword_27FA1E3A8, &qword_25AEA5BD8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3B8, &qword_25AEA5C30);
  sub_25AE479E0(v36, v37 + *(v38 + 48), &qword_27FA1E3A0, &qword_25AEA5BD0);
  sub_25AE41938(v15, &qword_27FA1E3A0, &qword_25AEA5BD0);
  sub_25AE41938(v27, &qword_27FA1E3A8, &qword_25AEA5BD8);
  sub_25AE41938(v36, &qword_27FA1E3A0, &qword_25AEA5BD0);
  return sub_25AE41938(v25, &qword_27FA1E3A8, &qword_25AEA5BD8);
}

uint64_t sub_25AE747C4@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE748A4@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_25AEA1F88();
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3D0, &qword_25AEA5D00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v42[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E320, &qword_25AEA5AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E3D8, &qword_25AEA5D08);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v46 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v42[-v20];
  v22 = *(v1 + *(type metadata accessor for NameRecognitionSettingsView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = v22;
  sub_25AEA1478();

  if ((v50 & 1) == 0)
  {
    v44 = v1;
    sub_25AE70B3C(v12);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2D0, &qword_25AEA59F0);
    if ((*(*(v24 - 8) + 48))(v12, 1, v24) == 1)
    {
      sub_25AE41938(v12, &qword_27FA1E320, &qword_25AEA5AB0);
      v25 = 1;
    }

    else
    {
      MEMORY[0x25F859A10](v24);
      sub_25AE41938(v12, &qword_27FA1E2D0, &qword_25AEA59F0);
      v25 = 0;
    }

    v26 = v47;
    v27 = *(v47 + 56);
    v27(v21, v25, 1, v2);
    (*(v26 + 104))(v19, *MEMORY[0x277CDF0D0], v2);
    v27(v19, 0, 1, v2);
    v28 = *(v5 + 48);
    sub_25AE479E0(v21, v8, &qword_27FA1E3D8, &qword_25AEA5D08);
    sub_25AE479E0(v19, &v8[v28], &qword_27FA1E3D8, &qword_25AEA5D08);
    v29 = *(v26 + 48);
    if (v29(v8, 1, v2) == 1)
    {
      sub_25AE41938(v19, &qword_27FA1E3D8, &qword_25AEA5D08);
      sub_25AE41938(v21, &qword_27FA1E3D8, &qword_25AEA5D08);
      if (v29(&v8[v28], 1, v2) == 1)
      {
        v23 = sub_25AE41938(v8, &qword_27FA1E3D8, &qword_25AEA5D08);
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v30 = v46;
    sub_25AE479E0(v8, v46, &qword_27FA1E3D8, &qword_25AEA5D08);
    if (v29(&v8[v28], 1, v2) == 1)
    {
      sub_25AE41938(v19, &qword_27FA1E3D8, &qword_25AEA5D08);
      sub_25AE41938(v21, &qword_27FA1E3D8, &qword_25AEA5D08);
      (*(v47 + 8))(v30, v2);
LABEL_10:
      sub_25AE41938(v8, &qword_27FA1E3D0, &qword_25AEA5D00);
LABEL_11:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_25AEA1478();

      goto LABEL_13;
    }

    v31 = v47;
    v32 = &v8[v28];
    v33 = v45;
    (*(v47 + 32))(v45, v32, v2);
    sub_25AE78AB8(&qword_27FA1E3E0, MEMORY[0x277CDF0E0]);
    v43 = sub_25AEA2168();
    v34 = *(v31 + 8);
    v34(v33, v2);
    sub_25AE41938(v19, &qword_27FA1E3D8, &qword_25AEA5D08);
    sub_25AE41938(v21, &qword_27FA1E3D8, &qword_25AEA5D08);
    v34(v30, v2);
    v23 = sub_25AE41938(v8, &qword_27FA1E3D8, &qword_25AEA5D08);
    if ((v43 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  MEMORY[0x28223BE20](v23);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v50 == 1)
  {
    sub_25AEA1958();
    if (qword_27FA1D250 != -1)
    {
      swift_once();
    }

    v35 = qword_27FA22788;
    v36 = sub_25AEA1BB8();
    v40 = v39 & 1;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v40 = 0;
    v38 = 0;
  }

  v50 = v36;
  v51 = v37;
  v52 = v40;
  v53 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E420, &qword_25AEA5DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E518, &qword_25AEA5F78);
  sub_25AE788AC();
  sub_25AE79160(&qword_27FA1E520, &qword_27FA1E518, &qword_25AEA5F78);
  return sub_25AEA1F78();
}

uint64_t sub_25AE750B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a4;
  v62 = a5;
  v8 = type metadata accessor for NameRecognitionSettingsView();
  v9 = v8 - 8;
  v53[0] = *(v8 - 8);
  v10 = *(v53[0] + 64);
  MEMORY[0x28223BE20](v8);
  v53[1] = v11;
  v54 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E460, &qword_25AEA5E28);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v61 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = v53 - v16;
  v17 = sub_25AEA1A68();
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E468, &qword_25AEA5E30);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v53 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E470, &qword_25AEA5E38);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v60 = v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = v53 - v31;
  v65 = a1;
  v66 = a2;
  v33 = *(v9 + 28);
  v55 = a3;
  v34 = *(a3 + v33 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478();

  v64 = 0;
  v63 = 0x3FF0000000000000;
  sub_25AE4E8AC();
  sub_25AE78A64();
  sub_25AEA1628();
  sub_25AEA1A58();
  sub_25AE47F60(&qword_27FA1E480, &qword_27FA1E468, &qword_25AEA5E30);
  sub_25AE78AB8(&qword_27FA1E488, MEMORY[0x277CDE240]);
  v35 = v57;
  sub_25AEA1BF8();
  (*(v56 + 8))(v20, v35);
  (*(v22 + 8))(v25, v21);
  KeyPath = swift_getKeyPath();
  v65 = v58;

  v37 = sub_25AEA1678();
  v38 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E490, &qword_25AEA5EB8) + 36)];
  *v38 = KeyPath;
  v38[1] = v37;
  v39 = sub_25AEA2038();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v40 = v65;
  v41 = &v32[*(v27 + 44)];
  *v41 = v39;
  v41[8] = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (v65 == 1)
  {
    v42 = v54;
    sub_25AE7776C(v55, v54);
    v43 = (*(v53[0] + 80) + 16) & ~*(v53[0] + 80);
    v44 = swift_allocObject();
    sub_25AE777D4(v42, v44 + v43);
    v45 = v59;
    sub_25AEA1EB8();
    v46 = 0;
  }

  else
  {
    v46 = 1;
    v45 = v59;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D698, &qword_25AEA4080);
  (*(*(v47 - 8) + 56))(v45, v46, 1, v47);
  v48 = v60;
  sub_25AE479E0(v32, v60, &qword_27FA1E470, &qword_25AEA5E38);
  v49 = v61;
  sub_25AE479E0(v45, v61, &qword_27FA1E460, &qword_25AEA5E28);
  v50 = v62;
  sub_25AE479E0(v48, v62, &qword_27FA1E470, &qword_25AEA5E38);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E498, &qword_25AEA5EC0);
  sub_25AE479E0(v49, v50 + *(v51 + 48), &qword_27FA1E460, &qword_25AEA5E28);
  sub_25AE41938(v45, &qword_27FA1E460, &qword_25AEA5E28);
  sub_25AE41938(v32, &qword_27FA1E470, &qword_25AEA5E38);
  sub_25AE41938(v49, &qword_27FA1E460, &qword_25AEA5E28);
  return sub_25AE41938(v48, &qword_27FA1E470, &qword_25AEA5E38);
}

uint64_t sub_25AE75798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NameRecognitionSettingsView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_25AEA2388();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_25AE7776C(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25AEA2368();
  v13 = sub_25AEA2358();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_25AE777D4(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_25AE82E98(0, 0, v11, a3, v15);
}

uint64_t sub_25AE7594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_25AEA2368();
  v4[3] = sub_25AEA2358();
  v6 = sub_25AEA2348();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_25AE759E4, v6, v5);
}

uint64_t sub_25AE759E4()
{
  v1 = *(v0 + 16);
  *(v0 + 48) = *(v1 + *(type metadata accessor for NameRecognitionSettingsView() + 20) + 8);

  return MEMORY[0x2822009F8](sub_25AE75A60, 0, 0);
}

uint64_t sub_25AE75A60()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_speechHandler);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_25AE75AFC;

  return sub_25AE98864();
}

uint64_t sub_25AE75AFC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_25AE75C18;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    v4 = sub_25AE5E700;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25AE75C18()
{
  v1 = v0[8];
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  v2 = v0[4];
  v3 = v0[5];

  return MEMORY[0x2822009F8](sub_25AE5E700, v2, v3);
}

uint64_t sub_25AE75C90@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE75D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NameRecognitionSettingsView();
  v5 = (a1 + *(v4 + 20));
  v6 = *v5;
  v7 = v5[1];
  type metadata accessor for NameRecognitionSettingsViewModel();
  sub_25AE78AB8(&qword_27FA1E288, type metadata accessor for NameRecognitionSettingsViewModel);
  sub_25AEA16E8();
  swift_getKeyPath();
  sub_25AEA16F8();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E540, &qword_25AEA6050);
  sub_25AEA1F18();

  sub_25AEA1ED8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v8 = (a1 + *(v4 + 24));
  v11 = *v8;
  v12 = *(v8 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E98();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4C0, &qword_25AEA5EF8);
  v10 = a2 + *(result + 36);
  *v10 = v13;
  *(v10 + 8) = v13;
  *(v10 + 16) = v14;
  *(v10 + 24) = v15;
  return result;
}

uint64_t sub_25AE75FBC@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE7609C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NameRecognitionSettingsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(a1 + *(MEMORY[0x28223BE20](v4 - 8) + 28) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E150, &qword_25AEA5848);
  sub_25AE47F60(&qword_27FA1E528, &qword_27FA1E150, &qword_25AEA5848);
  sub_25AE791C8();
  sub_25AEA1F48();
  sub_25AE7776C(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_25AE777D4(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_25AE7921C;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_25AE792C4;
  *(v11 + 24) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E4E0, &qword_25AEA5F08);
  v13 = (a2 + *(result + 36));
  *v13 = sub_25AE792CC;
  v13[1] = v11;
  return result;
}

uint64_t sub_25AE76320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_25AE4E8AC();

  result = sub_25AEA1BC8();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_25AE7638C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E538, &qword_25AEA5FF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  sub_25AE479E0(a1, &v26 - v10, &qword_27FA1E538, &qword_25AEA5FF0);
  v12 = sub_25AEA0ED8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_25AE41938(v11, &qword_27FA1E538, &qword_25AEA5FF0);
  }

  v15 = sub_25AEA0EC8();
  v17 = v16;
  result = (*(v13 + 8))(v11, v12);
  if ((v17 & 1) == 0)
  {
    v18 = *(a2 + *(type metadata accessor for NameRecognitionSettingsView() + 20) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478();

    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(v27 + 16))
    {
      v19 = (v27 + 32 * v15);
      v21 = v19[4];
      v20 = v19[5];
      v23 = v19[6];
      v22 = v19[7];

      v24 = sub_25AEA2388();
      (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v18;
      v25[5] = v21;
      v25[6] = v20;
      v25[7] = v23;
      v25[8] = v22;

      sub_25AE82E98(0, 0, v7, &unk_25AEA5FF8, v25);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25AE76658(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E538, &qword_25AEA5FF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_25AEA0ED8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a2(v7);
  return sub_25AE41938(v7, &qword_27FA1E538, &qword_25AEA5FF0);
}

uint64_t sub_25AE76780()
{
  sub_25AEA1E08();
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v0 = qword_27FA22788;
  v1 = sub_25AEA1BB8();
  v3 = v2;
  v5 = v4;
  sub_25AEA1C98();
  sub_25AE479D0(v1, v3, v5 & 1);
}

uint64_t sub_25AE768D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NameRecognitionSettingsView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_25AE7776C(a1, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_25AE777D4(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_25AEA1EB8();
  v12 = a1 + *(v7 + 32);
  v13 = *v12;
  v14 = *(v12 + 8);
  v21 = v13;
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E98();
  v15 = v19[1];
  v16 = v19[2];
  LOBYTE(v8) = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E420, &qword_25AEA5DC0);
  v18 = a3 + *(result + 36);
  *v18 = a2;
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  *(v18 + 24) = v8;
  return result;
}

uint64_t sub_25AE76A7C(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for NameRecognitionSettingsView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_25AEA1468();
  *v3 = !*v3;
  v2(&v5, 0);
}

uint64_t sub_25AE76B30@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  result = sub_25AEA1BB8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_25AE76C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NameRecognitionSettingsView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_25AE7776C(a1, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_25AE777D4(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_25AEA1EB8();
  v10 = *(a1 + *(v5 + 28) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  LOBYTE(v10) = v20;
  v11 = a1 + *(v5 + 32);
  v12 = *v11;
  v13 = *(v11 + 8);
  v23 = v12;
  v24 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D408, &qword_25AEA3BA0);
  sub_25AEA1E98();
  v14 = v20;
  v15 = v21;
  v16 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E420, &qword_25AEA5DC0);
  v18 = a2 + *(result + 36);
  *v18 = v10;
  *(v18 + 8) = v14;
  *(v18 + 16) = v15;
  *(v18 + 24) = v16;
  return result;
}

uint64_t sub_25AE76DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = *(a1 + *(type metadata accessor for NameRecognitionSettingsView() + 20) + 8);
  v10 = sub_25AEA2388();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;

  sub_25AE82E98(0, 0, v8, a3, v11);
}

uint64_t sub_25AE76F0C@<X0>(uint64_t a1@<X8>)
{
  sub_25AEA1958();
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA22788;
  v3 = sub_25AEA1BB8();
  v5 = v4;
  v7 = v6;
  sub_25AEA1D88();
  v8 = sub_25AEA1B78();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_25AE479D0(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_25AE77058(uint64_t a1)
{
  sub_25AE73480();
  v2 = *(a1 + *(type metadata accessor for NameRecognitionSettingsView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_25AEA1488();
}

uint64_t sub_25AE77120@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v39 = a5;
  v40 = a4;
  v42 = a1;
  v44 = a6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E340, &qword_25AEA5B58);
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v43);
  v41 = &v38[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E348, &qword_25AEA5B60);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v38[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E350, &qword_25AEA5B68);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v38[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v25 = &v38[-v24];
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E358, &qword_25AEA5BA0);
  (*(*(v28 - 8) + 16))(v25, v42, v28);
  v29 = &v25[*(v19 + 44)];
  *v29 = KeyPath;
  v29[1] = sub_25AE59FC0;
  v29[2] = v27;
  if (a2)
  {
    v45 = sub_25AEA1DB8();
    v46 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = a2 & 1;
    *(v30 + 24) = a3;
    *(v30 + 32) = v40;
    *(v30 + 40) = v39 & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E368, &qword_25AEA5BB0);
    sub_25AE78274();
    v31 = v41;
    sub_25AEA1C58();

    v32 = v43;
    (*(v8 + 32))(v17, v31, v43);
    v33 = 0;
    v34 = v32;
  }

  else
  {
    v33 = 1;
    v34 = v43;
  }

  (*(v8 + 56))(v17, v33, 1, v34);
  sub_25AE479E0(v25, v23, &qword_27FA1E350, &qword_25AEA5B68);
  sub_25AE479E0(v17, v15, &qword_27FA1E348, &qword_25AEA5B60);
  v35 = v44;
  sub_25AE479E0(v23, v44, &qword_27FA1E350, &qword_25AEA5B68);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E360, &qword_25AEA5BA8);
  sub_25AE479E0(v15, v35 + *(v36 + 48), &qword_27FA1E348, &qword_25AEA5B60);
  sub_25AE41938(v17, &qword_27FA1E348, &qword_25AEA5B60);
  sub_25AE41938(v25, &qword_27FA1E350, &qword_25AEA5B68);
  sub_25AE41938(v15, &qword_27FA1E348, &qword_25AEA5B60);
  return sub_25AE41938(v23, &qword_27FA1E350, &qword_25AEA5B68);
}

uint64_t sub_25AE77574@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  *a2 = sub_25AEA1FF8();
  a2[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E338, &qword_25AEA5B50);
  return sub_25AE77120(a1, v5, v6, v7, v8, a2 + *(v10 + 44));
}

uint64_t sub_25AE77614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E320, &qword_25AEA5AB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25AE479E0(a1, &v6 - v4, &qword_27FA1E320, &qword_25AEA5AB0);
  return sub_25AEA18A8();
}

uint64_t type metadata accessor for NameRecognitionSettingsView()
{
  result = qword_27FA1E308;
  if (!qword_27FA1E308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AE7776C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameRecognitionSettingsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE777D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NameRecognitionSettingsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE77838@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NameRecognitionSettingsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25AE73064(v4, a1);
}

int *sub_25AE778F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for NameRecognitionSettingsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_25AE73BA0(a1);
}

unint64_t sub_25AE77990()
{
  result = qword_27FA1E2E0;
  if (!qword_27FA1E2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2A8, &qword_25AEA59B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2A0, &qword_25AEA59A8);
    type metadata accessor for ErrorView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E298, &qword_25AEA59A0);
    type metadata accessor for OnboardingCoordinatorView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E290, &qword_25AEA5998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1D698, &qword_25AEA4080);
    sub_25AE47F60(&qword_27FA1E2C8, &qword_27FA1E290, &qword_25AEA5998);
    sub_25AE47F60(&qword_27FA1D690, &qword_27FA1D698, &qword_25AEA4080);
    swift_getOpaqueTypeConformance2();
    sub_25AE78AB8(&qword_27FA1E2D8, type metadata accessor for OnboardingCoordinatorView);
    swift_getOpaqueTypeConformance2();
    sub_25AE78AB8(&qword_27FA1D418, type metadata accessor for ErrorView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E2E0);
  }

  return result;
}

uint64_t sub_25AE77C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E300, &qword_25AEA5A88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25AE77D08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E300, &qword_25AEA5A88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_25AE77DD0()
{
  sub_25AE77E6C();
  if (v0 <= 0x3F)
  {
    sub_25AE77ED0();
    if (v1 <= 0x3F)
    {
      sub_25AE77F64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25AE77E6C()
{
  if (!qword_27FA1E318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E320, &qword_25AEA5AB0);
    v0 = sub_25AEA15B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1E318);
    }
  }
}

void sub_25AE77ED0()
{
  if (!qword_27FA1E328)
  {
    type metadata accessor for NameRecognitionSettingsViewModel();
    sub_25AE78AB8(&qword_27FA1E288, type metadata accessor for NameRecognitionSettingsViewModel);
    v0 = sub_25AEA1708();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1E328);
    }
  }
}

void sub_25AE77F64()
{
  if (!qword_27FA1E330)
  {
    v0 = sub_25AEA1EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1E330);
    }
  }
}

uint64_t sub_25AE77FB4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2B0, &qword_25AEA59B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2E8, &qword_25AEA5A20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2A8, &qword_25AEA59B0);
  sub_25AE77990();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E2F0, &qword_25AEA5A28);
  sub_25AE47F60(&qword_27FA1E2F8, &qword_27FA1E2F0, &qword_25AEA5A28);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25AE78104(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AE7814C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AE781D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_25AE78214()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E388, &qword_25AEA5BC0);
  return sub_25AEA1F08();
}

unint64_t sub_25AE78274()
{
  result = qword_27FA1E370;
  if (!qword_27FA1E370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E368, &qword_25AEA5BB0);
    sub_25AE47F60(&qword_27FA1E378, &qword_27FA1E380, &qword_25AEA5BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E370);
  }

  return result;
}

unint64_t sub_25AE783EC()
{
  result = qword_27FA1E3C8;
  if (!qword_27FA1E3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E3C0, &qword_25AEA5C38);
    sub_25AE78AB8(&qword_27FA1D510, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E3C8);
  }

  return result;
}

uint64_t sub_25AE784A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE4F874;

  return sub_25AE89784(a1, v4, v5, v6);
}

uint64_t sub_25AE7855C(uint64_t a1)
{
  v4 = *(type metadata accessor for NameRecognitionSettingsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25AE4F874;

  return sub_25AE73EAC(a1, v6, v7, v1 + v5);
}

uint64_t sub_25AE78708(uint64_t a1)
{
  v4 = *(type metadata accessor for NameRecognitionSettingsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25AE4F874;

  return sub_25AE731C0(a1, v6, v7, v1 + v5);
}

uint64_t sub_25AE787F8()
{
  v1 = *(type metadata accessor for NameRecognitionSettingsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25AE72FCC(v2);
}

unint64_t sub_25AE788AC()
{
  result = qword_27FA1E428;
  if (!qword_27FA1E428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E420, &qword_25AEA5DC0);
    sub_25AE47F60(&qword_27FA1D690, &qword_27FA1D698, &qword_25AEA4080);
    sub_25AE78964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E428);
  }

  return result;
}

unint64_t sub_25AE78964()
{
  result = qword_27FA1E430;
  if (!qword_27FA1E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E430);
  }

  return result;
}

unint64_t sub_25AE789B8()
{
  result = qword_27FA1E440;
  if (!qword_27FA1E440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E3F0, &qword_25AEA5D48);
    sub_25AE788AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E440);
  }

  return result;
}

unint64_t sub_25AE78A64()
{
  result = qword_27FA1E478;
  if (!qword_27FA1E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E478);
  }

  return result;
}

uint64_t sub_25AE78AB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AE78B00@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x25F859380]();
  *a1 = result;
  return result;
}

uint64_t sub_25AE78B2C(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x25F859390](v2);
}

uint64_t objectdestroy_51Tm()
{
  v1 = type metadata accessor for NameRecognitionSettingsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E280, &qword_25AEA5990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2D0, &qword_25AEA59F0);
    if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
    {
      v8 = *v6;

      v9 = *(v6 + 1);

      v10 = *(v7 + 32);
      v11 = sub_25AEA1F88();
      (*(*(v11 - 8) + 8))(&v6[v10], v11);
    }
  }

  else
  {
    v12 = *v6;
  }

  v13 = *&v6[*(v1 + 20) + 8];

  v14 = *&v6[*(v1 + 24) + 8];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AE78D38(uint64_t a1)
{
  v4 = *(type metadata accessor for NameRecognitionSettingsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25AE47200;

  return sub_25AE7594C(a1, v6, v7, v1 + v5);
}

unint64_t sub_25AE78E30()
{
  result = qword_27FA1E4C8;
  if (!qword_27FA1E4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E4C0, &qword_25AEA5EF8);
    sub_25AE47F60(&qword_27FA1E4D0, &qword_27FA1E4D8, &qword_25AEA5F00);
    sub_25AE78964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E4C8);
  }

  return result;
}

unint64_t sub_25AE78EF0()
{
  result = qword_27FA1E4E8;
  if (!qword_27FA1E4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E4E0, &qword_25AEA5F08);
    sub_25AE79160(&qword_27FA1E4F0, &qword_27FA1E4F8, &qword_25AEA5F10);
    sub_25AE47F60(&qword_27FA1E500, &qword_27FA1E508, &qword_25AEA5F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E4E8);
  }

  return result;
}

uint64_t objectdestroy_47Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AE79098(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE4F874;

  return sub_25AE89060(a1, v4, v5, v6);
}

uint64_t sub_25AE79160(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_25AE791C8()
{
  result = qword_27FA1E530;
  if (!qword_27FA1E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E530);
  }

  return result;
}

uint64_t sub_25AE7921C(uint64_t a1)
{
  v3 = *(type metadata accessor for NameRecognitionSettingsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25AE7638C(a1, v4);
}

uint64_t sub_25AE7928C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE792CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25AE792F4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25AE79344(uint64_t a1)
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
  v11[1] = sub_25AE4F874;

  return sub_25AE88A8C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for NameRecognitionSettingsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E280, &qword_25AEA5990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E2D0, &qword_25AEA59F0);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {
      v7 = *v5;

      v8 = *(v5 + 1);

      v9 = *(v6 + 32);
      v10 = sub_25AEA1F88();
      (*(*(v10 - 8) + 8))(&v5[v9], v10);
    }
  }

  else
  {
    v11 = *v5;
  }

  v12 = *&v5[*(v1 + 20) + 8];

  v13 = *&v5[*(v1 + 24) + 8];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AE79678(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 56);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v5 = *(v2 - 2);

      swift_bridgeObjectRetain_n();
      sub_25AE9CE10(&v6, v4, v3);

      v2 += 4;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_25AE79730()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v0 = *(v3 + 16);
  if (v0)
  {
    v1 = *(v3 + v0 + 31);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE79814()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1;
}

uint64_t sub_25AE79888()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1;
}

uint64_t sub_25AE79910()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1;
}

uint64_t sub_25AE79990()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1;
}

uint64_t sub_25AE79A04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1;
}

uint64_t sub_25AE79A8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();
}

void sub_25AE79B04()
{
  v1 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
  if (v1)
  {
    v5 = v1;
    sub_25AE7BE80();
  }

  else
  {
    v2 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription;
    if (*(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription))
    {
      v3 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription);

      sub_25AEA1408();

      v4 = *(v0 + v2);
    }

    *(v0 + v2) = 0;
  }
}

uint64_t sub_25AE79BC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v90 = &v72 - v4;
  v5 = sub_25AEA11E8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E6A0, &qword_25AEA6580);
  v87 = *(v8 - 8);
  v88 = v8;
  v9 = *(v87 + 64);
  MEMORY[0x28223BE20](v8);
  v86 = &v72 - v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD00, &qword_25AEA4E48);
  v11 = *(*(v85 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v85);
  v84 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E698, &qword_25AEA6578);
  v81 = *(v15 - 8);
  v82 = v15;
  v16 = *(v81 + 64);
  MEMORY[0x28223BE20](v15);
  v80 = &v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4A0, &qword_25AEA3D30);
  v78 = *(v18 - 8);
  v79 = v18;
  v19 = *(v78 + 64);
  MEMORY[0x28223BE20](v18);
  v77 = &v72 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v75 = *(v21 - 8);
  v76 = v21;
  v22 = *(v75 + 64);
  MEMORY[0x28223BE20](v21);
  v74 = &v72 - v23;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E688, &qword_25AEA6560);
  v24 = *(v73 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v73);
  v27 = &v72 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E680, &qword_25AEA6558);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v72 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E678, &qword_25AEA6550);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v72 - v36;
  v38 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__navigationPath;
  v92 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA50, &qword_25AEA4810);
  sub_25AEA1438();
  (*(v34 + 32))(v1 + v38, v37, v33);
  v39 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__currentStage;
  LOBYTE(v92) = 0;
  sub_25AEA1438();
  (*(v29 + 32))(v1 + v39, v32, v28);
  v40 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__enrolledName;
  v92 = 0;
  v93 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D388, &qword_25AEA5220);
  sub_25AEA1438();
  (*(v24 + 32))(v1 + v40, v27, v73);
  v41 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__isGeneratedAudioComplete;
  LOBYTE(v92) = 0;
  v42 = v74;
  sub_25AEA1438();
  v43 = v76;
  v44 = *(v75 + 32);
  v44(v1 + v41, v42, v76);
  v45 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__engineState;
  LOBYTE(v92) = 0;
  v46 = v77;
  sub_25AEA1438();
  (*(v78 + 32))(v1 + v45, v46, v79);
  v47 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__audioEnrollmentProgress;
  LOWORD(v92) = 1024;
  v48 = v80;
  sub_25AEA1438();
  (*(v81 + 32))(v1 + v47, v48, v82);
  v49 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__enrollmentComplete;
  LOBYTE(v92) = 0;
  sub_25AEA1438();
  v44(v1 + v49, v42, v43);
  v50 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__lastCollectionState;
  v51 = sub_25AEA1148();
  v52 = v83;
  (*(*(v51 - 8) + 56))(v83, 1, 1, v51);
  sub_25AE479E0(v52, v84, &qword_27FA1DD00, &qword_25AEA4E48);
  v53 = v86;
  sub_25AEA1438();
  sub_25AE41938(v52, &qword_27FA1DD00, &qword_25AEA4E48);
  (*(v87 + 32))(v1 + v50, v53, v88);
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechCollector) = 0;
  v54 = v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechSession;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v54 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager) = 0;
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsNameAudio) = 0;
  v55 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsTempEnrolment;
  v56 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  (*(*(v56 - 8) + 56))(v1 + v55, 1, 1, v56);
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_currentEnrolledNames) = 0;
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_numberOfSamples) = 26;
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription) = 0;
  v57 = (v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_dismissEnrollmentFlow);
  *v57 = nullsub_1;
  v57[1] = 0;
  v58 = sub_25AEA2328();
  *(v58 + 16) = 26;
  *(v58 + 32) = 0u;
  *(v58 + 48) = 0u;
  *(v58 + 64) = 0u;
  *(v58 + 80) = 0u;
  *(v58 + 96) = 0u;
  *(v58 + 112) = 0u;
  *(v58 + 128) = 0;
  swift_beginAccess();
  v91 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD18, &unk_25AEA6090);
  sub_25AEA1438();
  swift_endAccess();
  if (qword_27FA1D278 != -1)
  {
    swift_once();
  }

  v59 = qword_27FA1E140;
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_client) = qword_27FA1E140;
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_collectedEnrollments) = MEMORY[0x277D84F90];
  type metadata accessor for NameGenerator();
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  sub_25AEA0FC8();
  v61 = v59;
  *(v60 + 24) = sub_25AEA0FB8();
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_nameGenerator) = v60;
  sub_25AEA2478();
  v62 = MEMORY[0x25F859F80]();
  LOBYTE(v60) = [v62 isNameRecognitionEnabled];

  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_wasNameRecognitinoEnabledBeforeOnboarding) = v60;
  sub_25AEA11D8();
  sub_25AE81704(&qword_27FA1E6A8, type metadata accessor for EnrollmentCoordinator);
  v63 = sub_25AEA1058();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();

  v66 = sub_25AEA1038();
  v67 = *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechCollector);
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechCollector) = v66;

  v68 = sub_25AEA2388();
  v69 = v90;
  (*(*(v68 - 8) + 56))(v90, 1, 1, v68);
  v70 = swift_allocObject();
  v70[2] = 0;
  v70[3] = 0;
  v70[4] = v1;

  sub_25AE82E98(0, 0, v69, &unk_25AEA6590, v70);

  return v1;
}

uint64_t sub_25AE7A670()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription;
  if (*(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription))
  {

    sub_25AEA1408();

    v3 = *(v0 + v2);
  }

  *(v0 + v2) = 0;

  v4 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__navigationPath;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E678, &qword_25AEA6550);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__currentStage;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E680, &qword_25AEA6558);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  v8 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__enrolledName;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E688, &qword_25AEA6560);
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  v10 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__recordingMagnitudes;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E690, &qword_25AEA6568);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v12 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__isGeneratedAudioComplete;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v14 = *(*(v13 - 8) + 8);
  v14(v1 + v12, v13);
  v15 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__engineState;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4A0, &qword_25AEA3D30);
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__audioEnrollmentProgress;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E698, &qword_25AEA6578);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  v14(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__enrollmentComplete, v13);
  v19 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator__lastCollectionState;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E6A0, &qword_25AEA6580);
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  v21 = *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechCollector);

  sub_25AE41938(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechSession, &qword_27FA1E660, &qword_25AEA6318);

  v22 = *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_nameGenerator);

  sub_25AE41938(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsTempEnrolment, &qword_27FA1D538, &qword_25AEA3DC0);
  v23 = *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_collectedEnrollments);

  v24 = *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_currentEnrolledNames);

  v25 = *(v1 + v2);

  v26 = *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_dismissEnrollmentFlow + 8);

  return v1;
}

uint64_t sub_25AE7AA28()
{
  sub_25AE7A670();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_25AE7AAA8()
{
  sub_25AE7FD2C(319, &qword_27FA1E608, &qword_27FA1DA50, &qword_25AEA4810);
  if (v1 <= 0x3F)
  {
    v19 = *(v0 - 8) + 64;
    sub_25AE7FCE0(319, &qword_27FA1E610);
    if (v3 <= 0x3F)
    {
      v20 = *(v2 - 8) + 64;
      sub_25AE7FD2C(319, &qword_27FA1E618, &qword_27FA1D388, &qword_25AEA5220);
      if (v5 <= 0x3F)
      {
        v21 = *(v4 - 8) + 64;
        sub_25AE7FD2C(319, &qword_27FA1E620, &qword_27FA1DD18, &unk_25AEA6090);
        if (v7 <= 0x3F)
        {
          v22 = *(v6 - 8) + 64;
          sub_25AE7FCE0(319, &qword_27FA1D5E8);
          if (v9 <= 0x3F)
          {
            v10 = *(v8 - 8) + 64;
            sub_25AE7FCE0(319, &qword_27FA1D898);
            if (v12 <= 0x3F)
            {
              v23 = *(v11 - 8) + 64;
              sub_25AE7FCE0(319, &qword_27FA1E628);
              if (v14 <= 0x3F)
              {
                v24 = *(v13 - 8) + 64;
                sub_25AE7FD2C(319, &qword_27FA1E630, &qword_27FA1DD00, &qword_25AEA4E48);
                if (v16 <= 0x3F)
                {
                  v25 = *(v15 - 8) + 64;
                  sub_25AE7FD80();
                  if (v18 <= 0x3F)
                  {
                    v26 = *(v17 - 8) + 64;
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_25AE7AE1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v0 = *(v12 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  if (v0)
  {
    sub_25AEA1478();

    v1 = *(v12 + 16);
    if (!v1)
    {
    }

    v2 = *(v12 + v1 + 31);

    if (byte_286C3CAD0 == v2)
    {
      v4 = 0;
    }

    else if (byte_286C3CAD1 == v2)
    {
      v4 = 1u;
    }

    else if (byte_286C3CAD2 == v2)
    {
      v4 = 2u;
    }

    else
    {
      if (byte_286C3CAD3 != v2)
      {
        return result;
      }

      v4 = 3u;
    }

    v8 = *(&unk_286C3CAB0 + v4 + 33);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478();

    v9 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_25AE5B700(0, *(v12 + 16) + 1, 1, v12);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_25AE5B700((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v9[v11 + 32] = v8;
  }

  else
  {
    sub_25AEA1478();

    v5 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_25AE5B700(0, *(v12 + 16) + 1, 1, v12);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_25AE5B700((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v5[v7 + 32] = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  return sub_25AE79730();
}

uint64_t sub_25AE7B0F0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v2 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25AE5B700(0, *(v6 + 16) + 1, 1, v6);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_25AE5B700((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  return sub_25AE79730();
}

void sub_25AE7B21C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_numberOfSamples);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_numberOfSamples);
      v3 = sub_25AEA2328();
      *(v3 + 16) = v1;
      bzero((v3 + 32), 4 * v1);
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_25AEA1488();
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v4 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechSession;
    swift_beginAccess();
    sub_25AE62498(v7, v0 + v4, &qword_27FA1E660, &qword_25AEA6318);
    swift_endAccess();
    v5 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
    if (v5)
    {
      v6 = v5;
      sub_25AE506C0();
    }
  }
}

void sub_25AE7B33C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_numberOfSamples);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_numberOfSamples);
      v3 = sub_25AEA2328();
      *(v3 + 16) = v1;
      bzero((v3 + 32), 4 * v1);
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_25AEA1488();
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v4 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechSession;
    swift_beginAccess();
    sub_25AE62498(v8, v0 + v4, &qword_27FA1E660, &qword_25AEA6318);
    swift_endAccess();
    v5 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager;
    v6 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
    if (v6)
    {
      v7 = v6;
      sub_25AE504C4();

      v6 = *(v0 + v5);
    }

    *(v0 + v5) = 0;

    sub_25AE79B04();
  }
}

uint64_t sub_25AE7B478()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD00, &qword_25AEA4E48);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = sub_25AEA1148();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_25AE479E0(v11, v9, &qword_27FA1DD00, &qword_25AEA4E48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AE479E0(v9, v6, &qword_27FA1DD00, &qword_25AEA4E48);

  sub_25AEA1488();
  sub_25AE41938(v9, &qword_27FA1DD00, &qword_25AEA4E48);
  sub_25AE41938(v11, &qword_27FA1DD00, &qword_25AEA4E48);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v13 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechSession;
  swift_beginAccess();
  sub_25AE62498(&v17, v0 + v13, &qword_27FA1E660, &qword_25AEA6318);
  swift_endAccess();
  if (*(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechCollector))
  {
    v14 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechCollector);

    sub_25AEA1048();

    if (v1)
    {
      return result;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  swift_beginAccess();
  sub_25AE62498(&v17, v0 + v13, &qword_27FA1E660, &qword_25AEA6318);
  return swift_endAccess();
}

uint64_t sub_25AE7B6EC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = sub_25AEA1178();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D538, &qword_25AEA3DC0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  sub_25AEA2368();
  v3[20] = sub_25AEA2358();
  v12 = sub_25AEA2348();
  v3[21] = v12;
  v3[22] = v11;

  return MEMORY[0x2822009F8](sub_25AE7B878, v12, v11);
}

uint64_t sub_25AE7B878()
{
  v1 = *(v0[12] + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_nameGenerator);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_25AE7B91C;
  v4 = v0[10];
  v3 = v0[11];

  return sub_25AE6638C(v4, v3);
}

uint64_t sub_25AE7B91C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v7 = *(v3 + 176);
  v8 = *(v3 + 168);
  if (v1)
  {
    v9 = sub_25AE7BDF8;
  }

  else
  {
    v9 = sub_25AE7BA60;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_25AE7BA60()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 160);
  v4 = *(v0 + 96);

  v5 = *(v4 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsNameAudio);
  *(v4 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsNameAudio) = v1;
  v6 = v1;

  v7 = sub_25AE649DC();
  if (v2)
  {

    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 120);

    v11 = *(v0 + 8);
  }

  else
  {
    v12 = v7;
    v13 = *(v0 + 152);
    v14 = *(v0 + 120);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    (*(*(v0 + 136) + 104))(*(v0 + 144), *MEMORY[0x277D79828], *(v0 + 128));
    v17 = sub_25AEA1168();
    v19 = v18;
    sub_25AEA0E38();
    *(v13 + *(v15 + 20)) = v12;
    v20 = (v13 + *(v15 + 24));
    *v20 = v17;
    v20[1] = v19;
    sub_25AE8174C(v13, v14, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
    v21 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_collectedEnrollments;
    swift_beginAccess();
    v22 = *(v16 + v21);
    v39 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + v21) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_25AE5B81C(0, v22[2] + 1, 1, v22);
      *(v16 + v21) = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_25AE5B81C(v24 > 1, v25 + 1, 1, v22);
    }

    v38 = *(v0 + 192);
    v26 = *(v0 + 144);
    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v30 = *(v0 + 112);
    v29 = *(v0 + 120);
    v31 = *(v0 + 96);
    v34 = *(v0 + 104);
    v35 = *(v0 + 152);
    v36 = *(v0 + 80);
    v37 = *(v0 + 88);
    v22[2] = v25 + 1;
    sub_25AE8181C(v29, v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
    *(v16 + v21) = v22;
    swift_endAccess();
    (*(v27 + 8))(v26, v28);
    (*(v30 + 56))(v35, 0, 1, v34);
    v32 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_ttsTempEnrolment;
    swift_beginAccess();
    sub_25AE62498(v35, v31 + v32, &qword_27FA1D538, &qword_25AEA3DC0);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 64) = v36;
    *(v0 + 72) = v37;

    sub_25AEA1488();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 208) = 1;

    sub_25AEA1488();

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_25AE7BDF8()
{
  v1 = v0[20];

  v2 = v0[25];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25AE7BE80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D498, &unk_25AEA3D20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA1D960, &unk_25AEA44A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D4A0, &qword_25AEA3D30);
  sub_25AEA1448();
  swift_endAccess();
  sub_25AE47F60(&unk_27FA1D970, &qword_27FA1D498, &unk_25AEA3D20);
  sub_25AE47690();
  sub_25AEA14A8();
  (*(v3 + 8))(v6, v2);
  swift_getKeyPath();
  v16 = v0;
  sub_25AE47F60(&qword_27FA1D980, &unk_27FA1D960, &unk_25AEA44A0);
  v12 = sub_25AEA14C8();

  (*(v8 + 8))(v11, v7);
  v13 = *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription);
  *(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_engineStateSubscription) = v12;
}

uint64_t sub_25AE7C10C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *a2 = v5;
  return result;
}

uint64_t sub_25AE7C18C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE7C200(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v37 - v6;
  v7 = sub_25AEA1178();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v13 = v12 - 8;
  v38 = *(v12 - 8);
  v14 = *(v38 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = *MEMORY[0x277D79820];
  v21 = *(v8 + 104);
  v39 = v7;
  v21(v11, v20, v7);
  v22 = sub_25AEA1168();
  v24 = v23;
  sub_25AEA0E38();
  *&v19[*(v13 + 28)] = a1;
  v25 = &v19[*(v13 + 32)];
  *v25 = v22;
  v25[1] = v24;
  sub_25AE8181C(v19, v17, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
  v26 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_collectedEnrollments;
  swift_beginAccess();
  v27 = *(v2 + v26);
  v28 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v26) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_25AE5B81C(0, v27[2] + 1, 1, v27);
    *(v2 + v26) = v27;
  }

  v31 = v27[2];
  v30 = v27[3];
  if (v31 >= v30 >> 1)
  {
    v27 = sub_25AE5B81C(v30 > 1, v31 + 1, 1, v27);
  }

  v27[2] = v31 + 1;
  sub_25AE8181C(v17, v27 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v31, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
  *(v2 + v26) = v27;
  swift_endAccess();
  (*(v8 + 8))(v11, v39);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v32 = sub_25AE8FCE0(v40);
  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v32;
  v41 = 4;

  result = sub_25AEA1488();
  if (v32 == 3)
  {
    v34 = sub_25AEA2388();
    v35 = v37;
    (*(*(v34 - 8) + 56))(v37, 1, 1, v34);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v2;

    sub_25AE93374(0, 0, v35, &unk_25AEA63D0, v36);
  }

  return result;
}

uint64_t sub_25AE7C648()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25AE47200;

  return sub_25AE7C6D8();
}

uint64_t sub_25AE7C6D8()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for NRNameConfiguration() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  sub_25AEA2368();
  v1[4] = sub_25AEA2358();
  v4 = sub_25AEA2348();
  v1[5] = v4;
  v1[6] = v3;

  return MEMORY[0x2822009F8](sub_25AE7C79C, v4, v3);
}

uint64_t sub_25AE7C79C()
{
  v1 = v0[2];
  sub_25AE7DB6C(v0[3]);
  v2 = v0[2];
  v3 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_client;
  v0[7] = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_client;
  v4 = *(v2 + v3);
  v0[8] = v4;
  v4;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_25AE7C8BC;
  v6 = v0[3];

  return NameRecognitionClient.add(nameConfig:)(v6);
}

uint64_t sub_25AE7C8BC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = v0;

  v6 = *(v2 + 48);
  v7 = *(v2 + 40);
  if (v0)
  {
    v8 = sub_25AE7CF1C;
  }

  else
  {
    v8 = sub_25AE7CA10;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_25AE7CA10()
{
  v1 = *(v0[2] + v0[7]);
  v0[11] = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_25AE7CA88, 0, 0);
}

uint64_t sub_25AE7CA88()
{
  v1 = *(v0 + 88);
  sub_25AE6E8FC();
  *(v0 + 96) = v2;
  *(v0 + 120) = 1;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_25AE7CB38;

  return sub_25AE41F28((v0 + 120), 0);
}

uint64_t sub_25AE7CB38()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {

    v4 = sub_25AE7CDB8;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_25AE7CC70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25AE7CC70()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_25AE7CCD4, v1, v2);
}

uint64_t sub_25AE7CCD4()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 122) = 1;

  sub_25AEA1488();
  sub_25AE817B4(v2, type metadata accessor for NRNameConfiguration);
  v4 = *(v0 + 24);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25AE7CDB8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_25AE7CE1C, v1, v2);
}

uint64_t sub_25AE7CE1C()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);

  NRLogError(_:additionalMessage:)(v1, 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 121) = 1;

  sub_25AEA1488();

  sub_25AE817B4(v3, type metadata accessor for NRNameConfiguration);
  v5 = *(v0 + 24);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25AE7CF1C()
{
  v2 = v0[3];
  v1 = v0[4];

  sub_25AE817B4(v2, type metadata accessor for NRNameConfiguration);
  v3 = v0[10];
  v4 = v0[3];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25AE7CFA4()
{
  v1[2] = v0;
  v1[3] = sub_25AEA2368();
  v1[4] = sub_25AEA2358();
  v3 = sub_25AEA2348();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_25AE7D040, v3, v2);
}

uint64_t sub_25AE7D040()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_25AE7EAC8();
  v0[7] = sub_25AEA2358();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_25AE7D0E4;
  v4 = v0[2];

  return sub_25AE7C6D8();
}

uint64_t sub_25AE7D0E4()
{
  v2 = v0;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 72) = v2;

  v7 = sub_25AEA2348();
  if (v2)
  {
    v8 = sub_25AE7D310;
  }

  else
  {
    v8 = sub_25AE7D240;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_25AE7D240()
{
  v1 = v0[7];
  v2 = v0[2];

  sub_25AE7B0F0(4);
  v3 = v0[5];
  v4 = v0[6];

  return MEMORY[0x2822009F8](sub_25AE7D2B0, v3, v4);
}

uint64_t sub_25AE7D2B0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AE7D310()
{
  v1 = v0[7];

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x2822009F8](sub_25AE7D374, v2, v3);
}

uint64_t sub_25AE7D374()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  sub_25AE7B21C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v4 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 82) = v4;
  *(v0 + 83) = 2;

  sub_25AEA1488();
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  v5 = *(v0 + 8);

  return v5();
}

void sub_25AE7D49C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  sub_25AE7B478();
  v1 = *(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager);
  if (v1)
  {
    v2 = v1;
    sub_25AE50794();
  }
}

uint64_t sub_25AE7D65C()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_client);
  v0[6] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_25AE7D710;

  return NameRecognitionClient.enrolledNames()();
}

uint64_t sub_25AE7D710(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_25AE7DAF0;
  }

  else
  {

    *(v4 + 72) = a1;
    v7 = sub_25AE7D840;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25AE7D840()
{
  sub_25AEA2368();
  *(v0 + 80) = sub_25AEA2358();
  v2 = sub_25AEA2348();

  return MEMORY[0x2822009F8](sub_25AE7D8D4, v2, v1);
}

uint64_t sub_25AE7D8D4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  v3 = *(v2 + 16);

  if (v3)
  {
    if (qword_27FA1D230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_25AEA1478();

    if ((*(v0 + 88) & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 89) = 1;
      swift_retain_n();
      sub_25AEA1488();
      sub_25AEA2478();
      v4 = MEMORY[0x25F859F80]();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_25AEA1478();

      [v4 setNameRecognitionEnabled_];
    }

    v5 = *(v0 + 40) + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_dismissEnrollmentFlow;
    v6 = *v5;
    v7 = *(v5 + 8);

    v6(v8);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_25AE7DAF0()
{
  v1 = *(v0 + 64);

  NRLogError(_:additionalMessage:)(v1, 0, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AE7DB6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v99 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DE80, &unk_25AEA6E80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v95 = v70 - v5;
  v87 = sub_25AEA0E48();
  v6 = *(v87 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v87);
  v97 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NRCollectedEnrollment();
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = *(v84 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = v70 - v14;
  v15 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v86 = *(v15 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25AEA0EB8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AEA0EA8();
  v70[0] = sub_25AEA0E68();
  v72 = v24;
  (*(v20 + 8))(v23, v19);
  v25 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_collectedEnrollments;
  swift_beginAccess();
  v70[1] = v2;
  v26 = *(v2 + v25);
  v27 = *(v26 + 16);

  v83 = v27;
  if (v27)
  {
    v28 = 0;
    v77 = (v6 + 16);
    v76 = (v6 + 56);
    v75 = (v6 + 32);
    v29 = MEMORY[0x277D84F90];
    v74 = xmmword_25AEA5200;
    v82 = v6;
    v78 = v26;
    v81 = v18;
    v80 = v13;
    v79 = v15;
    while (1)
    {
      if (v28 >= *(v26 + 16))
      {
        __break(1u);
      }

      sub_25AE8174C(v26 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v28, v18, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
      v30 = [*&v18[*(v15 + 20)] audioBufferList];
      v31 = v30[2];
      if (!v31)
      {
        break;
      }

      v32 = *(v30 + 3);
      v96 = v29;
      v93 = v28;
      if (v32)
      {
        if (v32 <= 0xE)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v32;
          memcpy(&__dst, v31, v32);
          v92 = __dst;
          v38 = v73 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v73 = v38;
        }

        else
        {
          v33 = sub_25AEA0C88();
          v34 = *(v33 + 48);
          v35 = *(v33 + 52);
          swift_allocObject();
          v36 = sub_25AEA0C48();
          v37 = v36;
          if (v32 >= 0x7FFFFFFF)
          {
            sub_25AEA0DC8();
            v39 = swift_allocObject();
            *(v39 + 16) = 0;
            *(v39 + 24) = v32;
            v92 = v39;
            v38 = v37 | 0x8000000000000000;
          }

          else
          {
            v92 = v32 << 32;
            v38 = v36 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v92 = 0;
        v38 = 0xC000000000000000;
      }

      v91 = v38;
      v40 = v87;
      (*v77)(v97, v18, v87);
      v41 = &v18[*(v15 + 24)];
      v42 = *v41;
      v89 = *(v41 + 1);
      v90 = v42;
      v43 = type metadata accessor for NRNameConfiguration();
      v44 = *(*(v43 - 8) + 56);
      v44(v95, 1, 1, v43);

      v45 = v94;
      sub_25AEA0E38();
      v46 = *v76;
      (*v76)(v45, 0, 1, v40);
      v47 = v85;
      v48 = (v45 + *(v85 + 20));
      v49 = v45 + *(v85 + 24);
      *v49 = v74;
      v88 = *(v47 + 28);
      v44(v45 + v88, 1, 1, v43);
      sub_25AE41938(v45, &qword_27FA1D380, &unk_25AEA3E80);
      (*v75)(v45, v97, v40);
      v46(v45, 0, 1, v40);
      v50 = v89;
      *v48 = v90;
      v48[1] = v50;
      sub_25AE623AC(*v49, *(v49 + 8));
      v51 = v91;
      *v49 = v92;
      *(v49 + 8) = v51;
      sub_25AE62498(v95, v45 + v88, &qword_27FA1DE80, &unk_25AEA6E80);
      v52 = v45;
      v53 = v80;
      sub_25AE8174C(v52, v80, type metadata accessor for NRCollectedEnrollment);
      v29 = v96;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_25AE5B7F4(0, v29[2] + 1, 1, v29);
      }

      v6 = v82;
      v54 = v93;
      v56 = v29[2];
      v55 = v29[3];
      v18 = v81;
      v15 = v79;
      if (v56 >= v55 >> 1)
      {
        v29 = sub_25AE5B7F4(v55 > 1, v56 + 1, 1, v29);
      }

      v28 = v54 + 1;
      sub_25AE817B4(v18, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
      v29[2] = v56 + 1;
      sub_25AE8181C(v53, v29 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v56, type metadata accessor for NRCollectedEnrollment);
      sub_25AE817B4(v94, type metadata accessor for NRCollectedEnrollment);
      v26 = v78;
      if (v83 == v28)
      {
        goto LABEL_19;
      }
    }

    sub_25AE426AC();
    swift_allocError();
    *v68 = 5;
    *(v68 + 8) = 0xD00000000000001DLL;
    *(v68 + 16) = 0x800000025AEA9B10;
    swift_willThrow();
    sub_25AE817B4(v18, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
LABEL_19:
    v96 = v29;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478();

    v94 = *(&__dst + 1);
    v95 = __dst;
    v57 = v97;
    sub_25AEA0E38();
    v58 = v71;
    sub_25AEA0E38();
    v59 = *(v6 + 56);
    v60 = v87;
    v59(v58, 0, 1, v87);
    v61 = type metadata accessor for NRNameConfiguration();
    v62 = (v58 + v61[5]);
    v63 = (v58 + v61[6]);
    v64 = v61[7];
    sub_25AE41938(v58, &qword_27FA1D380, &unk_25AEA3E80);
    (*(v6 + 32))(v58, v57, v60);
    result = (v59)(v58, 0, 1, v60);
    v66 = v94;
    *v62 = v95;
    v62[1] = v66;
    v67 = v72;
    *v63 = v70[0];
    v63[1] = v67;
    *(v58 + v64) = v96;
  }

  v69 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25AE7E508()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_client);
  v0[3] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_25AE7E5BC;

  return NameRecognitionClient.enrolledNames()();
}

uint64_t sub_25AE7E5BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v5 = sub_25AE7E78C;
  }

  else
  {

    v5 = sub_25AE7E6D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25AE7E6D8()
{
  v1 = v0[5];
  if (*(v1 + 16))
  {
    v2 = v0[6];
    v3 = v0[2];
    v8 = MEMORY[0x277D84FA0];
    sub_25AE79678(v1);

    v4 = *(v3 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_currentEnrolledNames);
    *(v3 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_currentEnrolledNames) = v8;
  }

  else
  {
    v5 = v0[5];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_25AE7E78C()
{
  v1 = *(v0 + 48);

  NRLogError(_:additionalMessage:)(v1, 0, 0);
  v2 = *(v0 + 8);

  return v2();
}

char *sub_25AE7E808(void *a1)
{
  if ([a1 floatChannelData])
  {
    v4 = a1;
  }

  else
  {
    v16 = v1;
    v10 = a1;
    v17 = sub_25AE65170();
    if (v2)
    {
      return v10;
    }

    v4 = v17;
    v1 = v16;
  }

  v5 = [v4 recordingMagnitudesWithLevelMultiplier:*(v1 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_numberOfSamples) count:10.0];
  if (!v5 || (v6 = v5, sub_25AE4167C(0, &qword_27FA1D5F8, 0x277CCABB0), v7 = sub_25AEA22F8(), v6, !v7))
  {
LABEL_29:

    return MEMORY[0x277D84F90];
  }

  v25 = v7;
  if (v7 >> 62)
  {
    if (sub_25AEA25B8() < 4)
    {
      goto LABEL_28;
    }

    if (sub_25AEA25B8() < 3)
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 3uLL)
  {
    goto LABEL_28;
  }

  sub_25AE813C0(0, 3);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  v8 = sub_25AEA25B8();
  if (!v8)
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_9:
  v24 = MEMORY[0x277D84F90];
  result = sub_25AE8D76C(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = v24;
    if ((v25 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v8; ++i)
      {
        MEMORY[0x25F85A1C0](i, v25);
        sub_25AEA23D8();
        v13 = v12;
        swift_unknownObjectRelease();
        v15 = v24[2];
        v14 = v24[3];
        if (v15 >= v14 >> 1)
        {
          sub_25AE8D76C((v14 > 1), v15 + 1, 1);
        }

        v24[2] = v15 + 1;
        *(v24 + v15 + 8) = v13;
      }
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = *(v25 + v18);
        sub_25AEA23D8();
        v21 = v20;

        v23 = v24[2];
        v22 = v24[3];
        if (v23 >= v22 >> 1)
        {
          sub_25AE8D76C((v22 > 1), v23 + 1, 1);
        }

        v24[2] = v23 + 1;
        *(v24 + v23 + 8) = v21;
        v18 += 8;
        --v8;
      }

      while (v8);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AE7EAC8()
{
  v120 = sub_25AEA1178();
  v1 = *(v120 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v120);
  v99 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E668, &qword_25AEA6368);
  v4 = *(*(v117 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v117);
  v90 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v90 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D3A0, &qword_25AEA6370);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v92 = &v90 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v105 = &v90 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v90 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v90 - v22;
  MEMORY[0x28223BE20](v21);
  v123 = &v90 - v24;
  v116 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v109 = *(v116 - 8);
  v25 = *(v109 + 64);
  v26 = MEMORY[0x28223BE20](v116);
  v94 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v95 = &v90 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v102 = &v90 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v90 - v32;
  v34 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_collectedEnrollments;
  result = swift_beginAccess();
  v98 = v0;
  v36 = *(v0 + v34);
  v108 = v36[2];
  if (!v108)
  {
    v41 = 0;
    v56 = 0;
    goto LABEL_39;
  }

  v101 = v20;
  v96 = v34;
  v91 = v13;
  v37 = 0;
  v93 = (*(v109 + 80) + 32) & ~*(v109 + 80);
  v107 = v36 + v93;
  v115 = (v1 + 104);
  v114 = *MEMORY[0x277D79820];
  v113 = (v1 + 56);
  v38 = (v1 + 48);
  v97 = (v1 + 32);
  v106 = (v1 + 8);
  v39 = v36;
  v112 = (v1 + 48);
  v110 = v33;
  v119 = v23;
  v121 = v36;
  while (1)
  {
    if (v37 >= v39[2])
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    v118 = *(v109 + 72);
    v122 = v37;
    sub_25AE8174C(&v107[v118 * v37], v33, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
    v42 = &v33[*(v116 + 24)];
    v43 = *v42;
    v44 = *(v42 + 1);

    v45 = v123;
    sub_25AEA1158();
    v46 = *v115;
    v47 = v120;
    (*v115)(v23, v114, v120);
    v111 = *v113;
    v111(v23, 0, 1, v47);
    v48 = *(v117 + 48);
    sub_25AE479E0(v45, v8, &qword_27FA1D3A0, &qword_25AEA6370);
    sub_25AE479E0(v23, &v8[v48], &qword_27FA1D3A0, &qword_25AEA6370);
    v49 = v33;
    v50 = *v38;
    if ((*v38)(v8, 1, v47) == 1)
    {
      break;
    }

    v51 = v123;
    v52 = v101;
    sub_25AE479E0(v8, v101, &qword_27FA1D3A0, &qword_25AEA6370);
    if (v50(&v8[v48], 1, v47) != 1)
    {
      v103 = v50;
      v104 = v46;
      v53 = &v8[v48];
      v54 = v99;
      (*v97)(v99, v53, v47);
      sub_25AE81704(&qword_27FA1E670, MEMORY[0x277D79830]);
      v100 = sub_25AEA2168();
      v55 = *v106;
      (*v106)(v54, v47);
      sub_25AE41938(v119, &qword_27FA1D3A0, &qword_25AEA6370);
      sub_25AE41938(v51, &qword_27FA1D3A0, &qword_25AEA6370);
      v33 = v110;
      sub_25AE817B4(v110, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
      v55(v52, v47);
      result = sub_25AE41938(v8, &qword_27FA1D3A0, &qword_25AEA6370);
      v39 = v121;
      v41 = v122;
      if (v100)
      {
        goto LABEL_15;
      }

      goto LABEL_5;
    }

    sub_25AE41938(v119, &qword_27FA1D3A0, &qword_25AEA6370);
    sub_25AE41938(v51, &qword_27FA1D3A0, &qword_25AEA6370);
    sub_25AE817B4(v110, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
    (*v106)(v52, v47);
    v41 = v122;
LABEL_4:
    result = sub_25AE41938(v8, &qword_27FA1E668, &qword_25AEA6368);
    v39 = v121;
    v33 = v110;
LABEL_5:
    v37 = v41 + 1;
    v38 = v112;
    v23 = v119;
    if (v108 == v37)
    {
      v41 = v39[2];
      v56 = v41;
      goto LABEL_39;
    }
  }

  sub_25AE41938(v23, &qword_27FA1D3A0, &qword_25AEA6370);
  sub_25AE41938(v123, &qword_27FA1D3A0, &qword_25AEA6370);
  sub_25AE817B4(v49, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
  v40 = v50(&v8[v48], 1, v47);
  v41 = v122;
  if (v40 != 1)
  {
    goto LABEL_4;
  }

  v103 = v50;
  v104 = v46;
  result = sub_25AE41938(v8, &qword_27FA1D3A0, &qword_25AEA6370);
  v39 = v121;
LABEL_15:
  v56 = v41 + 1;
  v57 = v39[2];
  if (v57 - 1 != v41)
  {
    v58 = &qword_27FA1D3A0;
    v59 = v93 + v118 * v56;
    v60 = v90;
    v61 = v92;
    v62 = v105;
    v63 = v102;
    while (1)
    {
      if (v56 >= v57)
      {
        goto LABEL_41;
      }

      v122 = v59;
      v123 = v56;
      v121 = v39;
      sub_25AE8174C(v39 + v59, v63, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
      v65 = (v63 + *(v116 + 24));
      v66 = *v65;
      v67 = v65[1];

      sub_25AEA1158();
      v68 = v61;
      v69 = v61;
      v70 = v120;
      v104(v68, v114, v120);
      v111(v69, 0, 1, v70);
      v71 = *(v117 + 48);
      sub_25AE479E0(v62, v60, v58, &qword_25AEA6370);
      sub_25AE479E0(v69, v60 + v71, v58, &qword_25AEA6370);
      v72 = v58;
      v73 = v103;
      if (v103(v60, 1, v70) == 1)
      {
        sub_25AE41938(v69, v72, &qword_25AEA6370);
        sub_25AE41938(v62, v72, &qword_25AEA6370);
        v74 = v102;
        sub_25AE817B4(v102, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
        v75 = v73((v60 + v71), 1, v70);
        v63 = v74;
        v58 = v72;
        v61 = v69;
        if (v75 != 1)
        {
          goto LABEL_26;
        }

        result = sub_25AE41938(v60, v72, &qword_25AEA6370);
        v39 = v121;
        v76 = v122;
      }

      else
      {
        v77 = v91;
        sub_25AE479E0(v60, v91, v72, &qword_25AEA6370);
        if (v73((v60 + v71), 1, v70) == 1)
        {
          v78 = v92;
          sub_25AE41938(v92, v72, &qword_25AEA6370);
          v79 = v70;
          sub_25AE41938(v105, v72, &qword_25AEA6370);
          v63 = v102;
          sub_25AE817B4(v102, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
          v61 = v78;
          (*v106)(v77, v79);
          v58 = v72;
LABEL_26:
          result = sub_25AE41938(v60, &qword_27FA1E668, &qword_25AEA6368);
          v39 = v121;
          v76 = v122;
LABEL_27:
          v64 = v123;
          if (v123 != v41)
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            v80 = v39[2];
            if (v41 >= v80)
            {
              goto LABEL_43;
            }

            v81 = v41 * v118;
            result = sub_25AE8174C(v39 + v93 + v41 * v118, v95, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
            if (v123 >= v80)
            {
              goto LABEL_44;
            }

            sub_25AE8174C(v39 + v76, v94, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
            result = swift_isUniquelyReferenced_nonNull_native();
            v82 = v98;
            *(v98 + v96) = v39;
            if ((result & 1) == 0)
            {
              result = sub_25AE80F78(v39);
              v39 = result;
              *(v82 + v96) = result;
            }

            v63 = v102;
            if (v41 >= v39[2])
            {
              goto LABEL_45;
            }

            v83 = v58;
            result = sub_25AE816A0(v94, v39 + v93 + v81);
            v84 = v96;
            v85 = v98;
            *(v98 + v96) = v39;
            if (v123 >= v39[2])
            {
              goto LABEL_46;
            }

            result = sub_25AE816A0(v95, v39 + v76);
            v64 = v123;
            *(v85 + v84) = v39;
            v58 = v83;
          }

          v62 = v105;
          ++v41;
          goto LABEL_19;
        }

        v86 = v99;
        (*v97)(v99, (v60 + v71), v70);
        sub_25AE81704(&qword_27FA1E670, MEMORY[0x277D79830]);
        v87 = sub_25AEA2168();
        v60 = v90;
        LODWORD(v119) = v87;
        v88 = *v106;
        (*v106)(v86, v70);
        v89 = v92;
        sub_25AE41938(v92, v72, &qword_25AEA6370);
        sub_25AE41938(v105, v72, &qword_25AEA6370);
        v63 = v102;
        sub_25AE817B4(v102, type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment);
        v61 = v89;
        v88(v77, v120);
        result = sub_25AE41938(v60, v72, &qword_25AEA6370);
        v58 = v72;
        v39 = v121;
        v76 = v122;
        if ((v119 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v62 = v105;
      v64 = v123;
LABEL_19:
      v56 = v64 + 1;
      v57 = v39[2];
      v59 = v76 + v118;
      if (v56 == v57)
      {
        if (v56 < v41)
        {
          goto LABEL_47;
        }

        break;
      }
    }
  }

LABEL_39:
  sub_25AE815E0(v41, v56);
  return swift_endAccess();
}

void sub_25AE7F854()
{
  v1 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager;
  if (!*(v0 + OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_audioManager))
  {
    v2 = [objc_allocWithZone(type metadata accessor for AudioManager()) init];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    sub_25AE79B04();
    v5 = *(v0 + v1);
    if (v5)
    {
      *(v5 + OBJC_IVAR____TtC15NameRecognition12AudioManager_delegate + 8) = &off_286C3E940;

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_25AE7F904(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25AEA20C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25AEA20E8();
  v24 = *(v11 - 8);
  v25 = v11;
  v12 = *(v24 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25AE7E808(a1);
  v21[0] = a1;
  v21[1] = a2;
  sub_25AE4167C(0, &qword_27FA1D900, 0x277D85C78);
  v23 = sub_25AEA24C8();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v15;
  v29 = sub_25AE812A0;
  v30 = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AE93330;
  v28 = &block_descriptor_129;
  v22 = _Block_copy(aBlock);

  sub_25AEA20D8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25AE81704(&qword_27FA1D908, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D910, &qword_25AEA4DA0);
  sub_25AE47F60(&qword_27FA1D918, &qword_27FA1D910, &qword_25AEA4DA0);
  sub_25AEA2578();
  v17 = v22;
  v18 = v23;
  MEMORY[0x25F859FF0](0, v14, v10, v22);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  (*(v24 + 8))(v14, v25);
  v19 = OBJC_IVAR____TtC15NameRecognition21EnrollmentCoordinator_speechSession;
  swift_beginAccess();
  sub_25AE479E0(v3 + v19, aBlock, &qword_27FA1E660, &qword_25AEA6318);
  if (!v28)
  {
    return sub_25AE41938(aBlock, &qword_27FA1E660, &qword_25AEA6318);
  }

  sub_25AE81178(aBlock, v26);
  sub_25AE41938(aBlock, &qword_27FA1E660, &qword_25AEA6318);
  __swift_project_boxed_opaque_existential_0(v26, v26[3]);
  sub_25AEA11B8();
  return __swift_destroy_boxed_opaque_existential_0(v26);
}

void sub_25AE7FCE0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25AEA1498();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_25AE7FD2C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_25AEA1498();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25AE7FD80()
{
  if (!qword_27FA1E638)
  {
    type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(255);
    v0 = sub_25AEA2538();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1E638);
    }
  }
}

uint64_t sub_25AE7FDF8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AE7FE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25AEA0E48();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25AE7FF14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25AEA0E48();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25AE7FFCC()
{
  result = sub_25AEA0E48();
  if (v1 <= 0x3F)
  {
    result = sub_25AE4167C(319, qword_27FA1DFB0, 0x277CB83C8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnrollmentCoordinator.NavigationStage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EnrollmentCoordinator.NavigationStage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25AE801FC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE80278@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EnrollmentCoordinator(0);
  result = sub_25AEA1428();
  *a1 = result;
  return result;
}

uint64_t sub_25AE802BC(uint64_t a1)
{
  v2 = sub_25AEA20C8();
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25AEA20E8();
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AE4167C(0, &qword_27FA1D900, 0x277D85C78);
  v10 = sub_25AEA24C8();
  v11 = swift_allocObject();
  swift_weakInit();
  sub_25AE81178(a1, v19);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  sub_25AE8121C(v19, v12 + 24);
  aBlock[4] = sub_25AE81234;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25AE93330;
  aBlock[3] = &block_descriptor_6;
  v13 = _Block_copy(aBlock);

  sub_25AEA20D8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25AE81704(&qword_27FA1D908, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D910, &qword_25AEA4DA0);
  sub_25AE47F60(&qword_27FA1D918, &qword_27FA1D910, &qword_25AEA4DA0);
  sub_25AEA2578();
  MEMORY[0x25F859FF0](0, v9, v5, v13);
  _Block_release(v13);

  (*(v17 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v16);
}

uint64_t sub_25AE805EC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25AE8064C(a2);
  }

  return result;
}

uint64_t sub_25AE8064C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DD00, &qword_25AEA4E48);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = &v35 - v7;
  MEMORY[0x28223BE20](v6);
  v36 = &v35 - v8;
  v9 = sub_25AEA1148();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AEA11C8();
  v21 = v10[2];
  v21(v17, v19, v9);
  v39 = v10;
  v22 = v10[11];
  if (v22(v17, v9) == *MEMORY[0x277D79800])
  {
    sub_25AE7B478();
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v29 = sub_25AEA11A8();
    sub_25AE7C200(v29);

    v30 = v19;
  }

  else
  {
    v21(v14, v19, v9);
    v23 = v22(v14, v9);
    if (v23 == *MEMORY[0x277D79808] || v23 == *MEMORY[0x277D79810] || v23 == *MEMORY[0x277D797F8])
    {
      sub_25AE7B21C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_25AEA1478();

      v26 = v40;
      swift_getKeyPath();
      swift_getKeyPath();
      v40 = v26;
      v41 = 5;

      sub_25AEA1488();
      (v39[1])(v17, v9);
    }

    else
    {
      v27 = v39[1];
      v27(v14, v9);
      v27(v17, v9);
    }

    v30 = v19;
  }

  v35 = v30;
  v31 = v36;
  (v21)(v36);
  v32 = v39;
  (v39[7])(v31, 0, 1, v9);
  v33 = v37;
  sub_25AE479E0(v31, v37, &qword_27FA1DD00, &qword_25AEA4E48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AE479E0(v33, v38, &qword_27FA1DD00, &qword_25AEA4E48);

  sub_25AEA1488();
  sub_25AE41938(v33, &qword_27FA1DD00, &qword_25AEA4E48);
  sub_25AE41938(v31, &qword_27FA1DD00, &qword_25AEA4E48);
  return (v32[1])(v35, v9);
}

uint64_t sub_25AE80BA0(void *a1)
{
  NRLogError(_:additionalMessage:)(a1, 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

unint64_t sub_25AE80C78()
{
  result = qword_27FA1E658;
  if (!qword_27FA1E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E658);
  }

  return result;
}

uint64_t sub_25AE80CCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *a2 = v5;
  return result;
}

uint64_t sub_25AE80D4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE80DC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *a2 = v5;
  return result;
}

uint64_t sub_25AE80E48(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE80EBC(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_25AEA25B8();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_25AEA26B8();
    *v1 = result;
  }

  return result;
}

void sub_25AE80F8C()
{
  if (qword_27FA1D230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1478();

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_25AEA1488();
    sub_25AEA2478();
    v0 = MEMORY[0x25F859F80]();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478();

    [v0 setNameRecognitionEnabled_];
  }
}

uint64_t sub_25AE81140()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AE81178(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25AE811DC()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25AE8121C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AE81260()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE812A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25AE801FC();
}

uint64_t sub_25AE812B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_25AE4167C(0, &qword_27FA1D5F8, 0x277CCABB0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_25AEA25B8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_25AEA25B8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_25AE813C0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_25AEA25B8();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_25AEA25B8();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_25AE80EBC(result);

  return sub_25AE812B0(v4, v2, 0);
}

unint64_t sub_25AE81498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_25AE815E0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_25AE5B81C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_25AE81498(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_25AE816A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrollmentCoordinator.TempCollectedEnrollment(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE81704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AE8174C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AE817B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25AE8181C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AE81888()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25AE47200;

  return sub_25AE7C648();
}

uint64_t sub_25AE819F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE47200;

  return sub_25AE7E4E8(a1, v4, v5, v6);
}

uint64_t NameRecognitionError.errorDescription.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v5 = *v0;
  v3 = RuntimeError.description.getter();
  MEMORY[0x25F859D40](v3);

  MEMORY[0x25F859D40](2108704, 0xE300000000000000);
  MEMORY[0x25F859D40](v1, v2);
  return 546086370;
}

uint64_t NameRecognitionError.description.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v5 = *v0;
  v3 = RuntimeError.description.getter();
  MEMORY[0x25F859D40](v3);

  MEMORY[0x25F859D40](2108704, 0xE300000000000000);
  MEMORY[0x25F859D40](v1, v2);
  return 546086370;
}

unint64_t RuntimeError.description.getter()
{
  result = 0x6E45206F69647541;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x4C20656369766544;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      v2 = 5;
      goto LABEL_12;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0x6F72724520435049;
      break;
    case 9:
      result = 0x52206F7420706154;
      break;
    case 0xA:
      result = 0x6E614D20656C6946;
      break;
    case 0xB:
      v2 = 9;
LABEL_12:
      result = v2 | 0xD000000000000010;
      break;
    case 0xC:
      result = 0x6974616D6F747541;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25AE81DA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x45656D69746E7572;
  v4 = 0xEC000000726F7272;
  if (v2 != 1)
  {
    v3 = 0x6567617373656DLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x79745F726F727265;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006570;
  }

  v7 = 0x45656D69746E7572;
  v8 = 0xEC000000726F7272;
  if (*a2 != 1)
  {
    v7 = 0x6567617373656DLL;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x79745F726F727265;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006570;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25AEA2828();
  }

  return v11 & 1;
}

uint64_t sub_25AE81EBC()
{
  v1 = *v0;
  sub_25AEA28B8();
  sub_25AEA21F8();

  return sub_25AEA28D8();
}

uint64_t sub_25AE81F6C()
{
  *v0;
  *v0;
  sub_25AEA21F8();
}

uint64_t sub_25AE82008()
{
  v1 = *v0;
  sub_25AEA28B8();
  sub_25AEA21F8();

  return sub_25AEA28D8();
}

uint64_t sub_25AE820B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25AE82D9C();
  *a2 = result;
  return result;
}

void sub_25AE820E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006570;
  v4 = 0xEC000000726F7272;
  v5 = 0x45656D69746E7572;
  if (v2 != 1)
  {
    v5 = 0x6567617373656DLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79745F726F727265;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25AE82150()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79745F726F727265;
  }
}

uint64_t sub_25AE821B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AE82D9C();
  *a1 = result;
  return result;
}

uint64_t sub_25AE821E0(uint64_t a1)
{
  v2 = sub_25AE828D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE8221C(uint64_t a1)
{
  v2 = sub_25AE828D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NameRecognitionError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E6B0, &qword_25AEA65A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE828D8();
  sub_25AEA28E8();
  if (!v2)
  {
    v24 = 0;
    if (sub_25AEA27B8() == 0x656D69746E7572 && v11 == 0xE700000000000000)
    {
    }

    else
    {
      v13 = sub_25AEA2828();

      if ((v13 & 1) == 0)
      {
        v23 = 0;
        sub_25AEA26D8();
        swift_allocError();
        sub_25AE8292C();
        sub_25AEA26C8();
        swift_willThrow();
        (*(v6 + 8))(v9, v5);
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }
    }

    v21 = 1;
    sub_25AE82990();
    sub_25AEA27C8();
    v14 = v22;
    v20 = 2;
    v16 = sub_25AEA27B8();
    v18 = v17;
    (*(v6 + 8))(v9, v5);
    *a2 = v14;
    *(a2 + 8) = v16;
    *(a2 + 16) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t NameRecognitionError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E6D0, &qword_25AEA65A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v13 = *v1;
  v9 = *(v1 + 2);
  v12[1] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25AE828D8();
  sub_25AEA28F8();
  v17 = 0;
  sub_25AEA27D8();
  if (!v2)
  {
    v16 = v13;
    v15 = 1;
    sub_25AE829E4();
    sub_25AEA27E8();
    v14 = 2;
    sub_25AEA27D8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25AE826C4()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v5 = *v0;
  v3 = RuntimeError.description.getter();
  MEMORY[0x25F859D40](v3);

  MEMORY[0x25F859D40](2108704, 0xE300000000000000);
  MEMORY[0x25F859D40](v1, v2);
  return 546086370;
}

NameRecognition::RuntimeError_optional __swiftcall RuntimeError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 13;
  if (rawValue < 0xD)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25AE827CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AE82DE8();
  v5 = sub_25AE82E3C();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t sub_25AE828D8()
{
  result = qword_27FA1E6B8;
  if (!qword_27FA1E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6B8);
  }

  return result;
}

unint64_t sub_25AE8292C()
{
  result = qword_27FA1E6C0;
  if (!qword_27FA1E6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E6B0, &qword_25AEA65A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6C0);
  }

  return result;
}

unint64_t sub_25AE82990()
{
  result = qword_27FA1E6C8;
  if (!qword_27FA1E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6C8);
  }

  return result;
}

unint64_t sub_25AE829E4()
{
  result = qword_27FA1E6D8;
  if (!qword_27FA1E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6D8);
  }

  return result;
}

unint64_t sub_25AE82A40()
{
  result = qword_27FA1E6E0;
  if (!qword_27FA1E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6E0);
  }

  return result;
}

uint64_t sub_25AE82A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AE82ADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RuntimeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RuntimeError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25AE82C98()
{
  result = qword_27FA1E6E8;
  if (!qword_27FA1E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6E8);
  }

  return result;
}

unint64_t sub_25AE82CF0()
{
  result = qword_27FA1E6F0;
  if (!qword_27FA1E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6F0);
  }

  return result;
}

unint64_t sub_25AE82D48()
{
  result = qword_27FA1E6F8;
  if (!qword_27FA1E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E6F8);
  }

  return result;
}

uint64_t sub_25AE82D9C()
{
  v0 = sub_25AEA2798();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25AE82DE8()
{
  result = qword_27FA1E700;
  if (!qword_27FA1E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E700);
  }

  return result;
}

unint64_t sub_25AE82E3C()
{
  result = qword_27FA1E708;
  if (!qword_27FA1E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA1E708);
  }

  return result;
}

uint64_t sub_25AE82E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_25AE479E0(a3, v26 - v10, &qword_27FA1E9B0, &qword_25AEA5C40);
  v12 = sub_25AEA2388();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25AE41938(v11, &qword_27FA1E9B0, &qword_25AEA5C40);
  }

  else
  {
    sub_25AEA2378();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25AEA2348();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25AEA21E8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_25AE41938(a3, &qword_27FA1E9B0, &qword_25AEA5C40);

      return v24;
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

  sub_25AE41938(a3, &qword_27FA1E9B0, &qword_25AEA5C40);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_25AE83198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25AE479E0(a3, v27 - v11, &qword_27FA1E9B0, &qword_25AEA5C40);
  v13 = sub_25AEA2388();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_25AE41938(v12, &qword_27FA1E9B0, &qword_25AEA5C40);
  }

  else
  {
    sub_25AEA2378();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25AEA2348();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25AEA21E8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E0, &qword_25AEA6E00);
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

      sub_25AE41938(a3, &qword_27FA1E9B0, &qword_25AEA5C40);

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

  sub_25AE41938(a3, &qword_27FA1E9B0, &qword_25AEA5C40);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E0, &qword_25AEA6E00);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t NameRecognitionSettingsViewModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  NameRecognitionSettingsViewModel.init()();
  return v3;
}

uint64_t sub_25AE834E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *a2 = v5;
  return result;
}

uint64_t sub_25AE83564(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE835E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1;
}

uint64_t sub_25AE83654()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t (*sub_25AE836C4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE83768(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E720, &qword_25AEA6A30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E718, &qword_25AEA6A28);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25AE83908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E720, &qword_25AEA6A30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E718, &qword_25AEA6A28);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE83A40(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E720, &qword_25AEA6A30);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__settings;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E718, &qword_25AEA6A28);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t (*sub_25AE83BD8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE83C7C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25AE83E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE83F54(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__isPresentingOnboarding;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t (*sub_25AE84114(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE841B8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25AE84358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE84490(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__maxEnrollmentsReached;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t (*sub_25AE84650(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE846F4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25AE84894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE849CC(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__hasEnrolledNames;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t (*sub_25AE84B64(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE84C08;
}

uint64_t sub_25AE84C0C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25AE84DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE84EE4(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__shouldShowErrorView;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE85054;
}

uint64_t sub_25AE85058@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25AE850D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE8515C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1;
}

uint64_t sub_25AE851D0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t (*sub_25AE8524C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE852F0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E758, &qword_25AEA6BA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E750, &qword_25AEA6BA0);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25AE85490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E758, &qword_25AEA6BA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E750, &qword_25AEA6BA0);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE855C8(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E758, &qword_25AEA6BA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__currentErrorTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E750, &qword_25AEA6BA0);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

double sub_25AE85738@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_25AE857B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

double sub_25AE85834()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1;
}

uint64_t sub_25AE858A8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t (*sub_25AE85920(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE859C4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E770, &qword_25AEA6C00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E768, &qword_25AEA6BF8);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25AE85B64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E770, &qword_25AEA6C00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E768, &qword_25AEA6BF8);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE85C9C(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E770, &qword_25AEA6C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__assetDownloadProgress;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E768, &qword_25AEA6BF8);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t (*sub_25AE85E5C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

uint64_t sub_25AE85F00(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25AE860A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE861D8(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__shouldShowDownloadProgressView;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t sub_25AE86398()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t (*sub_25AE86404(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25AEA1468();
  return sub_25AE8BCEC;
}

void sub_25AE864A8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_25AE86510(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25AE866B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE867E8(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1DA38, &qword_25AEA4748);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__assetDownloadDidFail;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t sub_25AE86958@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *a2 = v5;
  return result;
}

void sub_25AE869D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  sub_25AE899EC();
}

uint64_t sub_25AE86A58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  return v1;
}

void sub_25AE86ACC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  sub_25AE899EC();
}

void (*sub_25AE86B40(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  *a1 = a1[1];
  return sub_25AE86BD4;
}

void sub_25AE86BD4(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  v5 = a1[2];

  if (a2)
  {

    sub_25AEA1488();
    sub_25AE899EC();
    v6 = *a1;
  }

  else
  {
    sub_25AEA1488();
    sub_25AE899EC();
  }
}

uint64_t sub_25AE86CB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_25AEA1448();
  return swift_endAccess();
}

uint64_t sub_25AE86D34(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E798, &qword_25AEA6CE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E790, &qword_25AEA6CE0);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_25AE86ED4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_25AEA1448();
  return swift_endAccess();
}

uint64_t sub_25AE86F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E798, &qword_25AEA6CE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E790, &qword_25AEA6CE0);
  sub_25AEA1458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25AE87084(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E798, &qword_25AEA6CE8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__enrolledNames;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E790, &qword_25AEA6CE0);
  sub_25AEA1448();
  swift_endAccess();
  return sub_25AE8BCF0;
}

uint64_t sub_25AE871F4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_25AE87260()
{
  v1 = (v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_25AE872B8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t NameRecognitionSettingsViewModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v57 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E790, &qword_25AEA6CE0);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E768, &qword_25AEA6BF8);
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E750, &qword_25AEA6BA0);
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v48 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E718, &qword_25AEA6A28);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  v23 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__settings;
  if (qword_27FA1D230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v58 = qword_27FA1DA28;
  type metadata accessor for NRSettings();

  sub_25AEA1438();
  (*(v19 + 32))(v0 + v23, v22, v18);
  v24 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__isPresentingOnboarding;
  LOBYTE(v58) = 0;
  sub_25AEA1438();
  v25 = *(v14 + 32);
  v25(v0 + v24, v17, v13);
  v26 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__maxEnrollmentsReached;
  LOBYTE(v58) = 0;
  sub_25AEA1438();
  v25(v0 + v26, v17, v13);
  v27 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__hasEnrolledNames;
  LOBYTE(v58) = 0;
  sub_25AEA1438();
  v25(v0 + v27, v17, v13);
  v28 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__shouldShowErrorView;
  LOBYTE(v58) = 0;
  sub_25AEA1438();
  v25(v0 + v28, v17, v13);
  v29 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__currentErrorTitle;
  v58 = 0;
  v59 = 0xE000000000000000;
  v30 = v48;
  sub_25AEA1438();
  (*(v49 + 32))(v0 + v29, v30, v50);
  v31 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__assetDownloadProgress;
  v58 = 0;
  v32 = v51;
  sub_25AEA1438();
  (*(v52 + 32))(v0 + v31, v32, v53);
  v33 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__shouldShowDownloadProgressView;
  LOBYTE(v58) = 0;
  sub_25AEA1438();
  v25(v0 + v33, v17, v13);
  v34 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__assetDownloadDidFail;
  LOBYTE(v58) = 0;
  sub_25AEA1438();
  v25(v0 + v34, v17, v13);
  v35 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__enrolledNames;
  v58 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E150, &qword_25AEA5848);
  v36 = v54;
  sub_25AEA1438();
  (*(v55 + 32))(v0 + v35, v36, v56);
  v37 = (v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_client;
  if (qword_27FA1D278 != -1)
  {
    swift_once();
  }

  v39 = qword_27FA1E140;
  *(v0 + v38) = qword_27FA1E140;
  v40 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_speechHandler;
  v41 = qword_27FA1D290;
  v42 = v39;
  if (v41 != -1)
  {
    swift_once();
  }

  *(v0 + v40) = qword_27FA227A8;
  v43 = sub_25AEA2388();
  v44 = v57;
  (*(*(v43 - 8) + 56))(v57, 1, 1, v43);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v0;

  sub_25AE82E98(0, 0, v44, &unk_25AEA6CF8, v45);

  return v0;
}

uint64_t sub_25AE87AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E7E8, &qword_25AEA6E30) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = sub_25AEA0EB8();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AE87BDC, 0, 0);
}

uint64_t sub_25AE87BDC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = *(v0[8] + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_speechHandler);
  v0[14] = v4;
  v5 = OBJC_IVAR____TtC15NameRecognition23LanguageAssetDownloader_currentActiveLocale;
  swift_beginAccess();
  sub_25AE479E0(v4 + v5, v3, &qword_27FA1E7E8, &qword_25AEA6E30);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_25AE41938(v0[9], &qword_27FA1E7E8, &qword_25AEA6E30);
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_25AE87E18;
    v7 = v0[12];

    return sub_25AE9756C(v7);
  }

  else
  {
    v9 = *(v0[11] + 32);
    v9(v0[12], v0[9], v0[10]);
    v10 = v0[14];
    v11 = v0[8];
    v9(v0[13], v0[12], v0[10]);
    sub_25AEA0E68();
    v12 = sub_25AEA0E78();
    v14 = v13;

    v15 = (v11 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
    swift_beginAccess();
    v16 = v15[1];
    *v15 = v12;
    v15[1] = v14;

    *(v10 + 24) = &off_286C3ECC0;
    swift_unknownObjectWeakAssign();
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_25AE88038;
    v18 = v0[14];

    return sub_25AE98864();
  }
}

uint64_t sub_25AE87E18()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25AE87F14, 0, 0);
}

uint64_t sub_25AE87F14()
{
  v1 = v0[14];
  v2 = v0[8];
  (*(v0[11] + 32))(v0[13], v0[12], v0[10]);
  sub_25AEA0E68();
  v3 = sub_25AEA0E78();
  v5 = v4;

  v6 = (v2 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = v3;
  v6[1] = v5;

  *(v1 + 24) = &off_286C3ECC0;
  swift_unknownObjectWeakAssign();
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_25AE88038;
  v9 = v0[14];

  return sub_25AE98864();
}

uint64_t sub_25AE88038()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_25AE8814C;
  }

  else
  {
    v3 = sub_25AE881C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25AE8814C()
{
  v1 = *(v0 + 136);
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  return MEMORY[0x2822009F8](sub_25AE881C8, 0, 0);
}

uint64_t sub_25AE881C8()
{
  v1 = v0[12];
  v2 = v0[9];
  (*(v0[11] + 8))(v0[13], v0[10]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25AE88280()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_speechHandler);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_25AE8831C;

  return sub_25AE98864();
}

uint64_t sub_25AE8831C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25AE8BCE8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25AE88470()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_client);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_25AE88510;

  return NameRecognitionClient.enrolledNames()();
}

uint64_t sub_25AE88510(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_25AE88788;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_25AE88638;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25AE88638()
{
  sub_25AEA2368();
  *(v0 + 64) = sub_25AEA2358();
  v2 = sub_25AEA2348();

  return MEMORY[0x2822009F8](sub_25AE886CC, v2, v1);
}

uint64_t sub_25AE886CC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[3] = v2;

  sub_25AEA1488();
  sub_25AE899EC();
  v4 = v0[1];

  return v4();
}

uint64_t sub_25AE88788()
{
  NRLogError(_:additionalMessage:)(*(v0 + 48), 0, 0);
  sub_25AEA2368();
  *(v0 + 72) = sub_25AEA2358();
  v2 = sub_25AEA2348();

  return MEMORY[0x2822009F8](sub_25AE8882C, v2, v1);
}

uint64_t sub_25AE8882C()
{
  v1 = v0[9];
  v2 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = MEMORY[0x277D84F90];

  sub_25AEA1488();
  sub_25AE899EC();

  return MEMORY[0x2822009F8](sub_25AE888F0, 0, 0);
}

uint64_t sub_25AE888F0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AE88950(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = sub_25AEA2388();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v12[5] = v8;
  v12[6] = v7;
  v12[7] = v10;
  v12[8] = v9;

  sub_25AE82E98(0, 0, v6, &unk_25AEA5FF8, v12);
}

uint64_t sub_25AE88A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x2822009F8](sub_25AE88AB4, 0, 0);
}

uint64_t sub_25AE88AB4()
{
  v1 = *(v0[8] + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_client);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_25AE88B5C;
  v4 = v0[9];
  v3 = v0[10];

  return NameRecognitionClient.deleteName(with:)(v4, v3);
}

uint64_t sub_25AE88B5C()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25AE88DBC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[15] = v4;
    *v4 = v3;
    v4[1] = sub_25AE88CC8;
    v5 = v3[8];

    return sub_25AE88450();
  }
}

uint64_t sub_25AE88CC8()
{
  v1 = *(*v0 + 120);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25AE88DBC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  NRLogError(_:additionalMessage:)(*(v0 + 112), 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D2C0, &qword_25AEA35C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25AEA3540;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_25AE4172C();
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = qword_27FA1D250;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v6 = qword_27FA22788;
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v5 = 0;
  }

  v7 = *(v0 + 112);
  v8 = *(v0 + 64);
  v9 = v5;
  sub_25AEA0CC8();

  v10 = sub_25AEA21B8();
  v12 = v11;

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 48) = v10;
  *(v0 + 56) = v12;

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = sub_25AEA1468();
  *v14 = !*v14;
  v13(v0 + 16, 0);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_25AE89080()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_client);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_25AE89120;

  return NameRecognitionClient.deleteAllNames()();
}

uint64_t sub_25AE89120()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25AE89380, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[13] = v4;
    *v4 = v3;
    v4[1] = sub_25AE8928C;
    v5 = v3[10];

    return sub_25AE88450();
  }
}

uint64_t sub_25AE8928C()
{
  v1 = *(*v0 + 104);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25AE89380()
{
  NRLogError(_:additionalMessage:)(*(v0 + 96), 0, 0);
  if (qword_27FA1D250 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA22788;
  if (qword_27FA22788)
  {
    v2 = qword_27FA22788;
  }

  else
  {
    v2 = [objc_opt_self() mainBundle];
    v1 = 0;
  }

  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = v1;
  v6 = sub_25AEA0CC8();
  v8 = v7;

  *(v0 + 48) = v6;
  *(v0 + 56) = v8;
  v9 = sub_25AEA2278();
  v11 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v9;
  *(v0 + 72) = v11;

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = sub_25AEA1468();
  *v13 = !*v13;
  v12(v0 + 16, 0);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_25AE895B8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE89688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E9B0, &qword_25AEA5C40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_25AEA2388();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;

  sub_25AE82E98(0, 0, v7, a2, v9);
}

uint64_t sub_25AE897A4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_client);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_25AE89844;

  return NameRecognitionClient.openTapToRadar()();
}

uint64_t sub_25AE89844()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25AE89978, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25AE89978()
{
  v1 = *(v0 + 32);
  NRLogError(_:additionalMessage:)(v1, 0, 0);

  v2 = *(v0 + 8);

  return v2();
}

void sub_25AE899EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v0 = *(v2 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v2) = v0 == 3;

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  v1 = *(v2 + 16);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25AEA1478();

  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_25AEA1478();
  }
}

uint64_t NameRecognitionSettingsViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__settings;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E718, &qword_25AEA6A28);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__isPresentingOnboarding;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1D5F0, &qword_25AEA6570);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__maxEnrollmentsReached, v4);
  v5(v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__hasEnrolledNames, v4);
  v5(v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__shouldShowErrorView, v4);
  v6 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__currentErrorTitle;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E750, &qword_25AEA6BA0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__assetDownloadProgress;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E768, &qword_25AEA6BF8);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v5(v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__shouldShowDownloadProgressView, v4);
  v5(v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__assetDownloadDidFail, v4);
  v10 = OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel__enrolledNames;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA1E790, &qword_25AEA6CE0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language + 8);

  v13 = *(v0 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_speechHandler);

  return v0;
}

uint64_t NameRecognitionSettingsViewModel.__deallocating_deinit()
{
  NameRecognitionSettingsViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25AE8A004@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NameRecognitionSettingsViewModel();
  result = sub_25AEA1428();
  *a1 = result;
  return result;
}

uint64_t sub_25AE8A044(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_25AEA1488();
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_25AEA1488();
  }

  else
  {

    return sub_25AE8A17C();
  }
}

uint64_t sub_25AE8A17C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_25AEA1488();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_25AEA1488();
}

uint64_t sub_25AE8A27C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AE4F874;

  return sub_25AE87AD8(a1, v4, v5, v6);
}

uint64_t sub_25AE8A330()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25AE8A588@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15NameRecognition32NameRecognitionSettingsViewModel_language);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t type metadata accessor for NameRecognitionSettingsViewModel()
{
  result = qword_27FA1E7B0;
  if (!qword_27FA1E7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AE8A638()
{
  sub_25AE8B5A8();
  if (v1 <= 0x3F)
  {
    v11 = *(v0 - 8) + 64;
    sub_25AE7FCE0(319, &qword_27FA1D5E8);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_25AE7FCE0(319, &qword_27FA1E7C8);
      if (v6 <= 0x3F)
      {
        v12 = *(v5 - 8) + 64;
        sub_25AE7FCE0(319, &qword_27FA1E7D0);
        if (v8 <= 0x3F)
        {
          v13 = *(v7 - 8) + 64;
          sub_25AE8B600();
          if (v10 <= 0x3F)
          {
            v14 = *(v9 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of NameRecognitionSettingsViewModel.downloadAssetsIfNeeded()()
{
  v2 = *(*v0 + 696);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25AE4F874;

  return v6();
}

uint64_t dispatch thunk of NameRecognitionSettingsViewModel.updateEnrolledNames()()
{
  v2 = *(*v0 + 704);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25AE4F874;

  return v6();
}

void sub_25AE8B5A8()
{
  if (!qword_27FA1E7C0)
  {
    type metadata accessor for NRSettings();
    v0 = sub_25AEA1498();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1E7C0);
    }
  }
}

void sub_25AE8B600()
{
  if (!qword_27FA1E7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA1E150, &qword_25AEA5848);
    v0 = sub_25AEA1498();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA1E7D8);
    }
  }
}

uint64_t sub_25AE8B664(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AE8B75C;

  return v7(a1);
}

uint64_t sub_25AE8B75C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25AE8B854(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25AE8B948;

  return v6(v2 + 32);
}

uint64_t sub_25AE8B948()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_25AE8BA5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE8BA94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25AE4F874;

  return sub_25AE8B854(a1, v5);
}

uint64_t sub_25AE8BB4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25AE47200;

  return sub_25AE8B854(a1, v5);
}

uint64_t sub_25AE8BC04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25AE4F874;

  return sub_25AE8B664(a1, v5);
}

uint64_t sub_25AE8BCF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0xD000000000000014;
    }

    if (v3 == 2)
    {
      v5 = 0x800000025AEA7B00;
    }

    else
    {
      v5 = 0x800000025AEA7B20;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x696669746E656469;
    }

    if (v3)
    {
      v5 = 0x800000025AEA7AE0;
    }

    else
    {
      v5 = 0xEA00000000007265;
    }
  }

  v6 = 0x800000025AEA7B00;
  v7 = 0xD000000000000014;
  if (a2 == 2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x800000025AEA7B20;
  }

  if (a2)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = 0x696669746E656469;
  }

  if (a2)
  {
    v2 = 0x800000025AEA7AE0;
  }

  if (a2 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25AEA2828();
  }

  return v11 & 1;
}