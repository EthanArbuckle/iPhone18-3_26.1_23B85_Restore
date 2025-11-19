uint64_t sub_25DDB7448(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_25DDC6C24(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_25DDB7474(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25DDB7484()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25DDB74BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25DDB74CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for BufferedStream._StateMachine._State();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_25DDB753C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = type metadata accessor for BufferedStream._StateMachine._State();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t get_enum_tag_for_layout_string_xSiRi_zRi0_zlyxIseghnd_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25DDB75C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v6 = *(a3 + 16);
    sub_25DDDD088();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    sub_25DDDCF38();
    v9 = sub_25DDDD088();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_25DDB76B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v6 = *(a4 + 16);
    sub_25DDDD088();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    sub_25DDDCF38();
    v8 = sub_25DDDD088();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_25DDB779C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25DDB783C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25DDB7898()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25DDB78D0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DDB7920()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25DDB7970()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DDB79B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25DDB79E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25DDB7AC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCEA98, &qword_25DDDECE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_25DDDC9F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25DDB7C94()
{
  sub_25DDB7E38(type metadata accessor for BufferedStream._StateMachine.SequenceDeinitializedAction, sub_25DDBD518, sub_25DDC93B8);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25DDB7D0C(uint64_t a1)
{
  v1 = sub_25DDC6AE4(a1);

  return v1;
}

uint64_t sub_25DDB7D40(uint64_t a1)
{
  v1 = sub_25DDC6AB0(a1);

  return v1;
}

pthread_mutex_t *sub_25DDB7D74()
{
  v1 = v0[2];
  v3 = *(*v0 + 80);
  type metadata accessor for BufferedStream._StateMachine();
  return sub_25DDC9AC8(sub_25DDC6B38);
}

uint64_t sub_25DDB7E38(void (*a1)(uint64_t, uint64_t), void (*a2)(uint64_t), uint64_t (*a3)(void *, void (*)(uint64_t), uint64_t, uint64_t))
{
  v7 = v3;
  v8 = *(v3 + 16);

  sub_25DDB7EE4(a1, a2, a3);

  v9 = *(v7 + 16);

  return v7;
}

pthread_mutex_t *sub_25DDB7EE4(void (*a1)(uint64_t, uint64_t), void (*a2)(uint64_t), uint64_t (*a3)(void *, void (*)(uint64_t), uint64_t, uint64_t))
{
  v7 = v3[2];
  v24 = *(*v3 + 80);
  type metadata accessor for BufferedStream._StateMachine();
  a1(255, v24);
  sub_25DDDD088();
  result = sub_25DDC9AC8(a2);
  v9 = v28;
  if (v28 != 255)
  {
    v10 = v26;
    if (v28)
    {
      v21 = v27;
      v22 = a3;
      v23 = v25;
      v11 = v25[2];
      if (v11)
      {
        sub_25DDBD574();
        v12 = v25 + 5;
        do
        {
          v14 = *(v12 - 1);
          v13 = *v12;
          v15 = swift_allocError();
          v25 = v15;
          LOBYTE(v26) = 1;

          v14(&v25);

          v12 += 2;
          --v11;
        }

        while (v11);
      }

      if (v10)
      {

        v10(v16);
        sub_25DDB7474(v10);
        v17 = v23;
        v18 = v10;
      }

      else
      {
        v17 = v23;
        v18 = 0;
      }

      return v22(v17, v18, v21, v9);
    }

    else
    {
      if (v25)
      {

        (v25)(v19);
        a3(v25, v26, v27, v28);
        v20 = v25;
      }

      else
      {
        v20 = 0;
      }

      return a3(v20, v26, v27, v28);
    }
  }

  return result;
}

uint64_t sub_25DDB80D8()
{
  sub_25DDB7E38(type metadata accessor for BufferedStream._StateMachine.IteratorDeinitializedAction, sub_25DDC6B7C, sub_25DDC93B8);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25DDB8168(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DDB8188, 0, 0);
}

uint64_t sub_25DDB8188()
{
  v1 = **(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 40) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_25DDB8240;
  v3 = *(v0 + 16);

  return sub_25DDB842C(v3);
}

uint64_t sub_25DDB8240()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_25DDB83C0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_25DDB835C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DDB835C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25DDB83C0()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_25DDB842C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*v1 + 80);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  Action = type metadata accessor for BufferedStream._StateMachine.NextAction();
  v2[7] = Action;
  v7 = *(Action - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDB8568, 0, 0);
}

uint64_t sub_25DDB8568()
{
  v56 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[4];
  v6 = *(v0[3] + 16);
  *(swift_task_alloc() + 16) = v5;
  type metadata accessor for BufferedStream._StateMachine();
  sub_25DDC9AC8(sub_25DDC6C90);

  (*(v4 + 16))(v1, v2, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v28 = v0[9];
      v30 = v0[5];
      v29 = v0[6];
      v31 = v0[4];
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
      v32 = *(v28 + *(swift_getTupleTypeMetadata2() + 48));
      v53 = *(v30 + 32);
      v53(v29, v28, v31);
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = (v32 + 40);
        do
        {
          v36 = *(v34 - 1);
          v35 = *v34;
          v54 = 0;
          v55 = 0;

          v36(&v54);

          v34 += 2;
          --v33;
        }

        while (v33);
      }

      v37 = v0[10];
      v38 = v0[7];
      v39 = v0[8];
      v41 = v0[5];
      v40 = v0[6];
      v42 = v0[4];
      v43 = v0[2];

      (*(v39 + 8))(v37, v38);
      v53(v43, v40, v42);
      (*(v41 + 56))(v43, 0, 1, v42);
    }

    else
    {
      v11 = v0[9];
      v12 = v0[4];
      v13 = v0[5];
      v14 = v0[2];
      (*(v0[8] + 8))(v0[10], v0[7]);
      (*(v13 + 32))(v14, v11, v12);
      (*(v13 + 56))(v14, 0, 1, v12);
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v15 = v0[9];
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    if (v17)
    {
      v19 = v15[2];

      v17(v20);
      sub_25DDB7474(v17);
    }

    if (v16)
    {
      swift_willThrow();
      sub_25DDB7474(v17);
      v21 = v0[9];
      v22 = v0[6];
      (*(v0[8] + 8))(v0[10], v0[7]);

      v23 = v0[1];
LABEL_20:

      return v23();
    }

    v44 = v0[10];
    v45 = v0[7];
    v46 = v0[8];
    v47 = v0[4];
    v48 = v0[5];
    v49 = v0[2];
    sub_25DDB7474(v17);
    (*(v46 + 8))(v44, v45);
    (*(v48 + 56))(v49, 1, 1, v47);
LABEL_19:
    v51 = v0[9];
    v50 = v0[10];
    v52 = v0[6];

    v23 = v0[1];
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[2];
    (*(v0[8] + 8))(v0[10], v0[7]);
    (*(v9 + 56))(v10, 1, 1, v8);
    goto LABEL_19;
  }

  v24 = swift_task_alloc();
  v0[11] = v24;
  *v24 = v0;
  v24[1] = sub_25DDB89AC;
  v25 = v0[2];
  v26 = v0[3];

  return sub_25DDC19C0(v25);
}

uint64_t sub_25DDB89AC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_25DDB8B50;
  }

  else
  {
    v3 = sub_25DDB8AC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DDB8AC0()
{
  (*(v0[8] + 8))(v0[10], v0[7]);
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25DDB8B50()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];
  (*(v0[8] + 8))(v0[10], v0[7]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25DDB8BEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DDB8C84;

  return sub_25DDB8168(a1);
}

uint64_t sub_25DDB8C84()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25DDB8D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_25DDB8E4C;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_25DDB8E4C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_25DDB8F5C(uint64_t a1)
{
  type metadata accessor for BufferedStream.Iterator._Backing();
  v2 = *(a1 + 16);

  v4 = sub_25DDC6AE4(v3);

  return v4;
}

uint64_t sub_25DDB8FA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_25DDB8F5C(*v2);

  *a2 = v5;
  return result;
}

uint64_t sub_25DDB8FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DDC6D3C(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_25DDB9080@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    v12 = v3;
    v13 = v4;
    v9[0] = result;
    v9[1] = a2;
    memset(&v9[2], 0, 24);
    v6 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
    result = (*(*(v6 - 8) + 32))(v10, v9, v6);
    v7 = v11;
    v8 = v10[1];
    *a3 = v10[0];
    *(a3 + 16) = v8;
    *(a3 + 32) = v7;
  }

  return result;
}

uint64_t sub_25DDB9110@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    *a5 = result;
    a5[1] = a2;
    a5[2] = 0;
    a5[3] = a3;
    a5[4] = a4;
  }

  return result;
}

double sub_25DDB912C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  (*(*(v4 - 8) + 32))(v8, a1, v4);
  v5 = v9;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_25DDB91A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    v14 = v5;
    v15 = v6;
    v11[0] = result;
    v11[1] = a2;
    v11[2] = 0;
    v11[3] = a3;
    v11[4] = a4;
    v8 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
    (*(*(v8 - 8) + 32))(v12, v11, v8);
    v9 = v13;
    v10 = v12[1];
    *a5 = v12[0];
    *(a5 + 16) = v10;
    *(a5 + 32) = v9;
  }

  return result;
}

uint64_t sub_25DDB9240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t sub_25DDB92AC(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_25DDB92EC()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_25DDB9330();

  v3 = *(v1 + 16);

  return v1;
}

uint64_t sub_25DDB9330()
{
  v1 = *(*v0 + 80);
  v2 = sub_25DDDD088();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v54 = &v50 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v5 = sub_25DDDCF38();
  v6 = sub_25DDDD088();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v50 - v11;
  v12 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction();
  v13 = sub_25DDDD088();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = v0[2];
  v58 = v1;
  type metadata accessor for BufferedStream._StateMachine();
  sub_25DDC9AC8(sub_25DDC6E24);
  (*(v14 + 16))(v18, v20, v13);
  if ((*(*(v12 - 8) + 48))(v18, 1, v12) == 1)
  {
    return (*(v14 + 8))(v20, v13);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v42 = *v18;
    if (*v18)
    {
      v43 = *(v18 + 1);

      v42(v44);
      sub_25DDB7474(v42);
      sub_25DDB7474(v42);
    }

    return (*(v14 + 8))(v20, v13);
  }

  v53 = v13;
  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
    v24 = v57;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v26 = *&v18[*(TupleTypeMetadata3 + 48)];
    v27 = &v18[*(TupleTypeMetadata3 + 64)];
    v29 = *v27;
    v28 = *(v27 + 1);
    v51 = v29;
    v52 = v26;
    v50 = v28;
    v31 = v55;
    v30 = v56;
    (*(v56 + 32))(v55, v18, v24);
    (*(v30 + 16))(v10, v31, v24);
    v32 = *(v5 - 8);
    v33 = (*(v32 + 48))(v10, 1, v5);
    v34 = v30;
    if (v33 != 1)
    {
      (*(*(v1 - 8) + 56))(v54, 1, 1, v1);
      sub_25DDDCF28();
      v34 = v32;
      v24 = v5;
    }

    (*(v34 + 8))(v10, v24);
    v35 = *(v52 + 16);
    if (v35)
    {
      sub_25DDBD574();
      v36 = (v52 + 40);
      do
      {
        v37 = *(v36 - 1);
        v38 = *v36;
        v39 = swift_allocError();
        v59 = v39;
        v60 = 1;

        v37(&v59);

        v36 += 2;
        --v35;
      }

      while (v35);
    }

    v40 = v51;
    if (v51)
    {

      v40(v41);
      sub_25DDB7474(v40);
      sub_25DDB7474(v40);
    }

    (*(v56 + 8))(v55, v57);
  }

  else
  {
    v57 = *v18;
    v45 = *(v57 + 16);
    if (v45)
    {
      sub_25DDBD574();
      v46 = (v57 + 40);
      do
      {
        v47 = *(v46 - 1);
        v48 = *v46;
        v49 = swift_allocError();
        v59 = v49;
        v60 = 1;

        v47(&v59);

        v46 += 2;
        --v45;
      }

      while (v45);
    }
  }

  return (*(v14 + 8))(v20, v53);
}

uint64_t sub_25DDB9934()
{
  sub_25DDB92EC();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25DDB9968(uint64_t a1)
{
  v3 = *(*v1 + 16);

  sub_25DDC6E70();
  sub_25DDB7474(a1);
}

uint64_t sub_25DDB99D0(uint64_t a1)
{
  sub_25DDC6E70();

  return sub_25DDB7474(a1);
}

uint64_t (*sub_25DDB9A3C())()
{
  v1 = v0[2];
  v4 = *(*v0 + 80);
  type metadata accessor for BufferedStream._StateMachine();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE598, &qword_25DDDDB30);
  sub_25DDC9AC8(sub_25DDC6EFC);
  if (!v5)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  return sub_25DDC6FCC;
}

uint64_t (*sub_25DDB9B1C(uint64_t (**a1)(), uint64_t (*a2)()))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  v4 = *(*v2 + 16);
  *a1 = sub_25DDB9A3C();
  a1[1] = v5;
  return sub_25DDB9B6C;
}

uint64_t sub_25DDB9B6C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  if ((a2 & 1) == 0)
  {
    return sub_25DDB9968(*a1);
  }

  sub_25DDB74BC(*a1);
  sub_25DDB9968(v2);

  return sub_25DDB7474(v2);
}

uint64_t sub_25DDB9BE8(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_25DDB9C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  result = sub_25DDB9C64(a1, a4, a5);
  if (v5)
  {
    return v8;
  }

  return result;
}

uint64_t sub_25DDB9C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v8 = sub_25DDDD088();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v45 - v11;
  v50 = *(v7 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v48 = &v45 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v51 = sub_25DDDCF38();
  v47 = *(v51 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x28223BE20](v51);
  v52 = &v45 - v15;
  v16 = type metadata accessor for BufferedStream._StateMachine.WriteAction();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  v24 = v3[2];
  v53 = v7;
  v54 = a2;
  v55 = a3;
  v56 = a1;
  type metadata accessor for BufferedStream._StateMachine();
  v25 = v57;
  sub_25DDC9AC8(sub_25DDC7024);
  v57 = v25;
  (*(v17 + 16))(v21, v23, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v37 = v51;
      v38 = *(swift_getTupleTypeMetadata2() + 48);
      v39 = v47;
      (*(v47 + 32))(v52, v21, v37);
      v40 = v50;
      v41 = v48;
      (*(v50 + 32))(v48, &v21[v38], v7);
      v42 = v49;
      (*(v40 + 16))(v49, v41, v7);
      (*(v40 + 56))(v42, 0, 1, v7);
      v44 = v51;
      v43 = v52;
      sub_25DDDCF28();
      (*(v40 + 8))(v41, v7);
      (*(v39 + 8))(v43, v44);
      (*(v17 + 8))(v23, v16);
      return 0;
    }

    else
    {
      (*(v17 + 8))(v23, v16);
      return *v21;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    type metadata accessor for BufferedStream.Source.WriteResult.CallbackToken();
    v28 = v51;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v30 = *(TupleTypeMetadata3 + 48);
    v46 = *&v21[*(TupleTypeMetadata3 + 64)];
    v31 = v47;
    (*(v47 + 32))(v52, v21, v28);
    v32 = v50;
    v33 = &v21[v30];
    v34 = v48;
    (*(v50 + 32))(v48, v33, v7);
    v35 = v49;
    (*(v32 + 16))(v49, v34, v7);
    (*(v32 + 56))(v35, 0, 1, v7);
    v36 = v52;
    sub_25DDDCF28();
    (*(v32 + 8))(v34, v7);
    (*(v31 + 8))(v36, v28);
    (*(v17 + 8))(v23, v16);
    return v46;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    (*(v17 + 8))(v23, v16);
    return 0;
  }

  else
  {
    sub_25DDBD574();
    v57 = swift_allocError();
    swift_willThrow();
    return (*(v17 + 8))(v23, v16);
  }
}

uint64_t sub_25DDBA234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25DDDD108();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v15 = *(a2 + 16);
  (*(v6 + 16))(v9, a1, a3);
  sub_25DDDD118();
  WitnessTable = swift_getWitnessTable();
  v17 = v21[1];
  v18 = sub_25DDB9C64(v14, v10, WitnessTable);
  if (v17)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v20 = v18;
  (*(v11 + 8))(v14, v10);
  return v20;
}

void sub_25DDBA43C()
{
  v1 = v0[2];
  v4 = *(*v0 + 80);
  type metadata accessor for BufferedStream._StateMachine();
  type metadata accessor for BufferedStream._StateMachine.EnqueueProducerAction();
  sub_25DDDD088();
  sub_25DDC9AC8(sub_25DDC70A4);
  if ((~v7 & 0xF000000000000007) != 0)
  {
    if (v7 < 0)
    {
      v2 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v3 = (v7 & 0x7FFFFFFFFFFFFFFFLL);

      v5(v7 & 0x7FFFFFFFFFFFFFFFLL, 1);
      sub_25DDC7128(v5, v6, v7);
    }

    else
    {
      sub_25DDC718C(v5, v6, v7);
      v5(0, 0);
      sub_25DDC7128(v5, v6, v7);
      sub_25DDC7128(v5, v6, v7);
    }
  }
}

pthread_mutex_t *sub_25DDBA5B0()
{
  v1 = v0[2];
  v4 = *(*v0 + 80);
  type metadata accessor for BufferedStream._StateMachine();
  type metadata accessor for BufferedStream._StateMachine.CancelProducerAction();
  sub_25DDDD088();
  result = sub_25DDC9AC8(sub_25DDC71DC);
  if (v5)
  {
    sub_25DDDCF48();
    sub_25DDC7248();
    v3 = swift_allocError();

    sub_25DDDCDD8();
    v5(v3, 1);
    sub_25DDB7474(v5);

    return sub_25DDB7474(v5);
  }

  return result;
}

void sub_25DDBA6C8(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a4 + 16);
  sub_25DDB9C64(a1, a6, a7);
  if (v10)
  {
    a2(0, 0);
  }

  else
  {
    v11 = *(a4 + 16);
    sub_25DDBA43C();
  }
}

uint64_t sub_25DDBA79C(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25DDDD108();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  (*(v10 + 16))(v13, a1, a5);
  sub_25DDDD118();
  WitnessTable = swift_getWitnessTable();
  sub_25DDBA6C8(v18, a2, a3, a4, v20, v14, WitnessTable);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_25DDBA950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25DDBA978, 0, 0);
}

uint64_t sub_25DDBA978()
{
  v1 = *(v0[3] + 16);
  v2 = sub_25DDB9C64(v0[2], v0[5], v0[6]);
  if (v3)
  {
    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[5];
    v6 = v0[6];
    v9 = v0[3];
    v8 = v0[4];
    v10 = v2;
    v11 = swift_task_alloc();
    v0[7] = v11;
    v11[2] = v8;
    v11[3] = v7;
    v11[4] = v6;
    v11[5] = v9;
    v11[6] = v10;
    v12 = swift_task_alloc();
    v0[8] = v12;
    v12[2] = v8;
    v12[3] = v7;
    v12[4] = v6;
    v12[5] = v9;
    v12[6] = v10;
    v13 = *(MEMORY[0x277D85A10] + 4);
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_25DDBAB14;

    return MEMORY[0x282200830](v14, &unk_25DDDDB48);
  }
}

uint64_t sub_25DDBAB14()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_25DDBAC50;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_25DDBAC38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DDBAC50()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[10];
  v4 = v0[1];

  return v4();
}

uint64_t sub_25DDBACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_25DDBACE4, 0, 0);
}

uint64_t sub_25DDBACE4()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_25DDBADF8;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000012, 0x800000025DDDF9B0, sub_25DDC91B4, v4, v8);
}

uint64_t sub_25DDBADF8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DDBAF34, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_25DDBAF34()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_25DDBAF98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  (*(v5 + 16))(&v13 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(a2 + 16);
  sub_25DDBA43C();
}

uint64_t sub_25DDBB0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(a3 - 8);
  v3[5] = v4;
  v5 = *(v4 + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_25DDDD108();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDBB20C, 0, 0);
}

uint64_t sub_25DDBB20C()
{
  v1 = v0[9];
  v2 = v0[7];
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  sub_25DDDD118();
  v3 = swift_task_alloc();
  v0[10] = v3;
  WitnessTable = swift_getWitnessTable();
  *v3 = v0;
  v3[1] = sub_25DDBB308;
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];

  return sub_25DDBA950(v5, v7, v8, v6, WitnessTable);
}

uint64_t sub_25DDBB308()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  v6[11] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DDBB4C0, 0, 0);
  }

  else
  {
    v7 = v6[9];
    v8 = v6[6];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_25DDBB4C0()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_25DDBB530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = *(a3 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = sub_25DDDD108();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[12] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v15 = *(*(sub_25DDDD088() - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v16 = *(a4 - 8);
  v5[17] = v16;
  v17 = *(v16 + 64) + 15;
  v5[18] = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  v5[19] = v18;
  v19 = *(v18 - 8);
  v5[20] = v19;
  v20 = *(v19 + 64) + 15;
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DDBB7E4, 0, 0);
}

uint64_t sub_25DDBB7E4()
{
  v1 = v0[21];
  v2 = v0[6];
  (*(v0[17] + 16))(v0[18], v0[2], v0[5]);
  sub_25DDDCFB8();
  v3 = v0[19];
  v5 = v0[5];
  v4 = v0[6];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[22] = AssociatedConformanceWitness;
  v7 = *(MEMORY[0x277D856D8] + 4);
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_25DDBB8F8;
  v9 = v0[21];
  v10 = v0[19];
  v12 = v0[15];
  v11 = v0[16];

  return MEMORY[0x282200310](v11, 0, 0, v12, v10, AssociatedConformanceWitness);
}

uint64_t sub_25DDBB8F8()
{
  v2 = *(*v1 + 184);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_25DDBBDF8;
  }

  else
  {
    v3 = sub_25DDBBA08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DDBBA08()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[4];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[18];
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[11];
    v8 = v0[8];
    (*(v0[20] + 8))(v0[21], v0[19]);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[11];
    v12 = v0[9];
    (*(v2 + 32))(v0[8], v1, v3);
    sub_25DDDD118();
    v13 = swift_task_alloc();
    v0[24] = v13;
    WitnessTable = swift_getWitnessTable();
    *v13 = v0;
    v13[1] = sub_25DDBBBE4;
    v15 = v0[11];
    v16 = v0[9];
    v17 = v0[3];
    v18 = v0[4];

    return sub_25DDBA950(v15, v17, v18, v16, WitnessTable);
  }
}

uint64_t sub_25DDBBBE4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  v2[25] = v0;

  v5 = v2[11];
  v6 = v2[9];
  v7 = (v2[10] + 8);
  if (v0)
  {
    (*v7)(v5, v6);

    return MEMORY[0x2822009F8](sub_25DDBBF84, 0, 0);
  }

  else
  {
    (*v7)(v5, v6);
    v8 = v2[19];
    v10 = v2[5];
    v9 = v2[6];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v2[22] = AssociatedConformanceWitness;
    v12 = *(MEMORY[0x277D856D8] + 4);
    v13 = swift_task_alloc();
    v2[23] = v13;
    *v13 = v4;
    v13[1] = sub_25DDBB8F8;
    v14 = v2[21];
    v15 = v2[19];
    v17 = v2[15];
    v16 = v2[16];

    return MEMORY[0x282200310](v16, 0, 0, v17, v15, AssociatedConformanceWitness);
  }
}

uint64_t sub_25DDBBDF8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = *(v0[13] + 32);
  v3(v0[14], v0[15], v0[12]);
  swift_getAssociatedConformanceWitness();
  v4 = sub_25DDDD188();
  v5 = v0[14];
  if (v4)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
  }

  else
  {
    v6 = v0[12];
    swift_allocError();
    v3(v7, v5, v6);
  }

  v8 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  v12 = v0[11];
  v13 = v0[8];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_25DDBBF84()
{
  v1 = v0[25];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[8];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_25DDBC080(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_25DDDD088();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v38 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v7 = sub_25DDDCF38();
  v41 = *(v7 - 8);
  v8 = *(v41 + 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for BufferedStream._StateMachine.FinishAction();
  v12 = sub_25DDDD088();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = v1[2];
  v42 = v3;
  v43 = a1;
  type metadata accessor for BufferedStream._StateMachine();
  sub_25DDC9AC8(sub_25DDC73A8);
  (*(v13 + 16))(v17, v19, v12);
  if ((*(*(v11 - 8) + 48))(v17, 1, v11) == 1)
  {
    return (*(v13 + 8))(v19, v12);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v30 = *v17;
    if (*v17)
    {
      v31 = *(v17 + 1);

      v30(v32);
      sub_25DDB7474(v30);
      sub_25DDB7474(v30);
    }

    return (*(v13 + 8))(v19, v12);
  }

  v39 = v12;
  if (EnumCaseMultiPayload != 1)
  {
    v41 = *v17;
    v33 = *(v41 + 2);
    if (v33)
    {
      sub_25DDBD574();
      v34 = (v41 + 40);
      do
      {
        v36 = *(v34 - 1);
        v35 = *v34;
        v37 = swift_allocError();
        v44 = v37;
        v45 = 1;

        v36(&v44);

        v34 += 2;
        --v33;
      }

      while (v33);
    }

    return (*(v13 + 8))(v19, v39);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5A8, &qword_25DDDDB60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v24 = *&v17[*(TupleTypeMetadata3 + 48)];
  v25 = &v17[*(TupleTypeMetadata3 + 64)];
  v26 = *v25;
  v38 = *(v25 + 1);
  v27 = v41;
  (*(v41 + 4))(v10, v17, v7);
  if (!v24)
  {
    (*(*(v3 - 8) + 56))(v40, 1, 1, v3);
    sub_25DDDCF28();
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_15:

    goto LABEL_16;
  }

  v44 = v24;
  v28 = v24;
  sub_25DDDCF18();
  if (!v26)
  {
    goto LABEL_15;
  }

LABEL_7:

  v26(v29);
  sub_25DDB7474(v26);

  sub_25DDB7474(v26);
LABEL_16:
  v27[1](v10, v7);
  return (*(v13 + 8))(v19, v39);
}

uint64_t sub_25DDBC59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BufferedStream._BackPressuredStorage();
  v5 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  v6 = *(v5 - 8);
  (*(v6 + 32))(v11, a4, v5);
  (*(v6 + 16))(&v10, v11, v5);
  v7 = swift_allocObject();
  sub_25DDBD35C(v11);
  sub_25DDBC718(v7, type metadata accessor for BufferedStream.Source._Backing);
  v8 = sub_25DDBC718(v7, type metadata accessor for BufferedStream._Backing);

  return v8;
}

uint64_t sub_25DDBC6C0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_25DDBD35C(a1);
  return v2;
}

uint64_t sub_25DDBC718(uint64_t a1, void (*a2)(void, void))
{
  a2(0, *(*a1 + 80));
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_25DDBC78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  if (!v5)
  {
LABEL_5:
    v11 = *(a4 + 16);
    sub_25DDDCCE8();
    swift_getWitnessTable();
    sub_25DDDD218();
    swift_getWitnessTable();
    result = sub_25DDDD008();
    v12 = v4[2];
    v13 = __OFADD__(v12, result);
    v10 = v12 + result;
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v6 = v4[4];
  MEMORY[0x28223BE20](a1);
  v14 = *(v7 + 16);
  sub_25DDDCCE8();

  swift_getWitnessTable();
  sub_25DDDD218();
  swift_getWitnessTable();
  sub_25DDDCEF8();
  result = sub_25DDB7474(v5);
  v9 = v4[2];
  v10 = v9 + v15;
  if (__OFADD__(v9, v15))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  v4[2] = v10;
  if ((v10 & 0x8000000000000000) == 0)
  {
    return v10 < v4[1];
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_25DDBC970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  if (!v5)
  {
LABEL_5:
    v11 = *(a4 + 16);
    sub_25DDDCCE8();
    swift_getWitnessTable();
    sub_25DDDD218();
    swift_getWitnessTable();
    result = sub_25DDDD008();
    v12 = v4[2];
    v13 = __OFSUB__(v12, result);
    v10 = v12 - result;
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v6 = v4[4];
  MEMORY[0x28223BE20](a1);
  v14 = *(v7 + 16);
  sub_25DDDCCE8();

  swift_getWitnessTable();
  sub_25DDDD218();
  swift_getWitnessTable();
  sub_25DDDCEF8();
  result = sub_25DDB7474(v5);
  v9 = v4[2];
  v10 = v9 - v15;
  if (__OFSUB__(v9, v15))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  v4[2] = v10;
  if ((v10 & 0x8000000000000000) == 0)
  {
    return v10 < *v4;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_25DDBCB54(uint64_t result)
{
  v2 = v1;
  v3 = v1[3];
  if (!v3)
  {
LABEL_5:
    v8 = v2 + 2;
    v11 = v2[2];
    v9 = __OFSUB__(v11, 1);
    v10 = v11 - 1;
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v4 = result;
  v5 = v2[4];

  v6 = v3(v4);
  result = sub_25DDB7474(v3);
  v8 = v2 + 2;
  v7 = v2[2];
  v9 = __OFSUB__(v7, v6);
  v10 = v7 - v6;
  if (v9)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  *v8 = v10;
  if ((v10 & 0x8000000000000000) == 0)
  {
    return v10 < *v2;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_25DDBCC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *v5;
  v15 = v5[1];
  v16 = *(v5 + 4);
  v10 = *(a4 + 16);
  v11 = type metadata accessor for BufferedStream._WatermarkBackPressureStrategy();
  v12 = a5(a1, a2, a3, v11);
  *v5 = v14;
  v5[1] = v15;
  *(v5 + 4) = v16;
  return v12 & 1;
}

uint64_t sub_25DDBCCB8(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 4);
  v2 = sub_25DDBCB54(a1);
  *v1 = v4;
  v1[1] = v5;
  *(v1 + 4) = v6;
  return v2 & 1;
}

uint64_t sub_25DDBCD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = type metadata accessor for BufferedStream._StateMachine._State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  (*(v13 + 16))(&v30 - v15, v3, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v25 = *v16;
      v26 = *(v16 + 1);
      v27 = *(v16 + 2);
      v28 = *(v16 + 4);
      sub_25DDB7474(*(v16 + 3));
      (*(v13 + 8))(v3, v12);
      *v3 = v25;
      *(v3 + 8) = v26;
      *(v3 + 16) = v27;
      *(v3 + 24) = a1;
      *(v3 + 32) = a2;
      return swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload == 3)
    {
      return sub_25DDB7474(a1);
    }

    else
    {
      result = sub_25DDDD138();
      __break(1u);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v8 + 32))(v11, v16, v7);
    v29 = *(v11 + 7);
    sub_25DDB7474(*(v11 + 6));
    *(v11 + 6) = a1;
    *(v11 + 7) = a2;
    (*(v13 + 8))(v3, v12);
    (*(v8 + 16))(v3, v11, v7);
    swift_storeEnumTagMultiPayload();
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v18 = *(v16 + 4);
    v19 = v16[40];
    v20 = *(v16 + 6);
    v21 = *(v16 + 7);
    v22 = *v16;
    v30 = *(v16 + 1);
    v31 = v22;
    sub_25DDB7474(v20);
    (*(v13 + 8))(v3, v12);
    v23 = v30;
    *v3 = v31;
    *(v3 + 16) = v23;
    *(v3 + 32) = v18;
    *(v3 + 40) = v19;
    *(v3 + 41) = *v32;
    *(v3 + 44) = *&v32[3];
    *(v3 + 48) = a1;
    *(v3 + 56) = a2;
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_25DDBD03C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for BufferedStream._StateMachine._State();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v23 - v11);
  (*(v13 + 16))(&v23 - v11, v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v5 + 32))(v8, v12, v4);
      v17 = *(v8 + 6);
      sub_25DDB74BC(v17);
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      v15 = v12[3];
      v16 = v12[4];
      v17 = v12[6];
      v18 = v12[7];
      sub_25DDB7474(v15);
    }

    return v17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v19 = v12[1];
    v20 = v12[2];
    v17 = v12[3];
    v21 = v12[4];
    sub_25DDB74BC(v17);

    sub_25DDB7474(v17);
    return v17;
  }

  v17 = 0;
  if (EnumCaseMultiPayload == 3)
  {
    return v17;
  }

  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t (*sub_25DDBD29C(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_25DDB9A3C();
  a1[1] = v3;
  return sub_25DDBD2E4;
}

uint64_t sub_25DDBD2E4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_25DDB74BC(v5);
    sub_25DDC6E70();
    sub_25DDB7474(v2);
  }

  else
  {
    sub_25DDC6E70();
  }

  return sub_25DDB7474(v2);
}

void *sub_25DDBD35C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for BufferedStream._StateMachine();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_25DDBD45C(a1, &v11 - v7);
  v9 = sub_25DDC6D3C(v8, v4);
  (*(v5 + 8))(v8, v4);
  v1[2] = v9;
  return v1;
}

uint64_t sub_25DDBD45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for BufferedStream._StateMachine() + 28)) = 0;
  v4 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  (*(*(v4 - 8) + 32))(v8, a1, v4);
  v5 = v9;
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0;
  type metadata accessor for BufferedStream._StateMachine._State();
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_25DDBD574()
{
  result = qword_27FCCE580;
  if (!qword_27FCCE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCCE580);
  }

  return result;
}

uint64_t sub_25DDBD5C8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v35 - v7;
  v9 = type metadata accessor for BufferedStream._StateMachine._State();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v35 - v12;
  (*(v10 + 16))(&v35 - v12, v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = *v13;
      v22 = *(v13 + 1);
      v21 = *(v13 + 2);
      v18 = *(v13 + 3);
      v23 = *(v13 + 4);
      if (v20 == 1)
      {

        goto LABEL_8;
      }

      (*(v10 + 8))(v2, v9);
      *v2 = 0;
      swift_storeEnumTagMultiPayload();
      sub_25DDB74BC(v18);

      v24 = v18;
LABEL_15:
      sub_25DDB7474(v24);
      return v18;
    }

    if (EnumCaseMultiPayload == 3)
    {
      return 0;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v15 = *(v13 + 3);
      v16 = *(v13 + 4);
      v17 = v13[40];
      v18 = *(v13 + 6);
      v19 = *(v13 + 7);
      if (v17 == 1)
      {
        sub_25DDB7474(v15);
LABEL_8:
        sub_25DDB7474(v18);
        return 0;
      }

      (*(v10 + 8))(v2, v9);
      *v2 = 0;
      swift_storeEnumTagMultiPayload();
      v24 = v15;
      goto LABEL_15;
    }

    (*(v5 + 32))(v8, v13, v4);
    if (v8[40] == 1)
    {
      (*(v5 + 8))(v8, v4);
      return 0;
    }

    (*(v10 + 8))(v2, v9);
    *v2 = 0;
    swift_storeEnumTagMultiPayload();
    v25 = *&v8[*(v4 + 44)];
    v26 = v25[3];
    v18 = MEMORY[0x277D84F90];
    if (!v26)
    {
LABEL_27:
      v33 = *(v8 + 7);
      sub_25DDB74BC(*(v8 + 6));
      (*(v5 + 8))(v8, v4);
      return v18;
    }

    v35 = v5;
    v36 = v4;
    v38 = MEMORY[0x277D84F90];
    sub_25DDC695C(0, v26 & ~(v26 >> 63), 0);
    if ((v26 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      v18 = v38;
      while (v27 < v25[3])
      {
        v28 = v25[4];
        if (v27 + v28 >= v25[2])
        {
          v29 = v25[2];
        }

        else
        {
          v29 = 0;
        }

        v30 = *&v25[3 * v27 + 6 + 3 * (v28 - v29)];
        v38 = v18;
        v32 = *(v18 + 16);
        v31 = *(v18 + 24);
        v37 = v30;

        if (v32 >= v31 >> 1)
        {
          sub_25DDC695C((v31 > 1), v32 + 1, 1);
          v18 = v38;
        }

        ++v27;
        *(v18 + 16) = v32 + 1;
        *(v18 + 16 * v32 + 32) = v37;
        if (v26 == v27)
        {
          v5 = v35;
          v4 = v36;
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t sub_25DDBDA34(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v24 - v6;
  v8 = type metadata accessor for BufferedStream._StateMachine._State();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v24 - v11;
  (*(v9 + 16))(&v24 - v11, v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (*v12 != 1)
      {
        v21 = *(v12 + 3);
        v20 = *(v12 + 4);
        v25 = *(v12 + 8);
        (*(v9 + 8))(v1, v8);
        *v1 = 1;
        *(v1 + 8) = v25;
        *(v1 + 24) = v21;
        *(v1 + 32) = v20;
        return swift_storeEnumTagMultiPayload();
      }
    }

    else if (EnumCaseMultiPayload == 3 && *v12 != 1)
    {
      (*(v9 + 8))(v1, v8);
      *v1 = 1;
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v22 = *(v4 + 32);
    v22(v7, v12, v3);
    if (v7[40] != 1)
    {
      v7[40] = 1;
      (*(v9 + 8))(v1, v8);
      v22(v1, v7, v3);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (v12[40] != 1)
  {
    v15 = *(v12 + 6);
    v14 = *(v12 + 7);
    v16 = *(v12 + 4);
    v17 = *(v9 + 8);
    v18 = *v12;
    v24 = *(v12 + 1);
    v25 = v18;
    v17(v1, v8);
    v19 = v24;
    *v1 = v25;
    *(v1 + 16) = v19;
    *(v1 + 32) = v16;
    *(v1 + 40) = 1;
    *(v1 + 41) = *v26;
    *(v1 + 44) = *&v26[3];
    *(v1 + 48) = v15;
    *(v1 + 56) = v14;
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t sub_25DDBDE08(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v33 - v7;
  v9 = type metadata accessor for BufferedStream._StateMachine._State();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v33 - v12;
  (*(v10 + 16))(&v33 - v12, v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (*v13 == 1)
      {
        v15 = *(v13 + 3);
        v20 = *(v13 + 4);
        v22 = *(v13 + 1);
        v21 = *(v13 + 2);
        (*(v10 + 8))(v2, v9);
        *v2 = 1;
        swift_storeEnumTagMultiPayload();
        sub_25DDB74BC(v15);

        v19 = v15;
        goto LABEL_8;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      return 0;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v5 + 32))(v8, v13, v4);
    if (v8[40] == 1)
    {
      (*(v10 + 8))(v2, v9);
      *v2 = 1;
      swift_storeEnumTagMultiPayload();
      v23 = *&v8[*(v4 + 44)];
      v24 = v23[3];
      v15 = MEMORY[0x277D84F90];
      if (!v24)
      {
LABEL_23:
        v31 = *(v8 + 7);
        sub_25DDB74BC(*(v8 + 6));
        (*(v5 + 8))(v8, v4);
        return v15;
      }

      v33 = v5;
      v34 = v4;
      v36 = MEMORY[0x277D84F90];
      sub_25DDC695C(0, v24 & ~(v24 >> 63), 0);
      if ((v24 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        v15 = v36;
        while (v25 < v23[3])
        {
          v26 = v23[4];
          if (v25 + v26 >= v23[2])
          {
            v27 = v23[2];
          }

          else
          {
            v27 = 0;
          }

          v28 = *&v23[3 * v25 + 6 + 3 * (v26 - v27)];
          v36 = v15;
          v30 = *(v15 + 16);
          v29 = *(v15 + 24);
          v35 = v28;

          if (v30 >= v29 >> 1)
          {
            sub_25DDC695C((v29 > 1), v30 + 1, 1);
            v15 = v36;
          }

          ++v25;
          *(v15 + 16) = v30 + 1;
          *(v15 + 16 * v30 + 32) = v35;
          if (v24 == v25)
          {
            v5 = v33;
            v4 = v34;
            goto LABEL_23;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  else if (v13[40] == 1)
  {
    v15 = *(v13 + 6);
    v16 = *(v13 + 7);
    v18 = *(v13 + 3);
    v17 = *(v13 + 4);
    (*(v10 + 8))(v2, v9);
    *v2 = 1;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
LABEL_8:
    sub_25DDB7474(v19);
    return v15;
  }

  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t sub_25DDBE288@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v6 = sub_25DDDCF38();
  v67 = sub_25DDDD088();
  v7 = *(v67 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v67);
  v10 = v65 - v9;
  v11 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v11);
  v68 = v65 - v13;
  v14 = type metadata accessor for BufferedStream._StateMachine._State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v65 - v17;
  (*(v15 + 16))(v65 - v17, v3, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v15 + 8))(v18, v14);
    }

    else if (EnumCaseMultiPayload != 3)
    {
LABEL_43:
      result = sub_25DDDD138();
      __break(1u);
      return result;
    }

    v42 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction();
    return (*(*(v42 - 8) + 56))(a2, 1, 1, v42);
  }

  v66 = a2;
  if (!EnumCaseMultiPayload)
  {
    v20 = *(v18 + 3);
    v21 = *(v18 + 4);
    v22 = v18[40];
    v24 = *(v18 + 6);
    v23 = *(v18 + 7);
    (*(v15 + 8))(v3, v14);
    *v3 = v22;
    swift_storeEnumTagMultiPayload();
    sub_25DDB7474(v20);
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v26 = v66;
    *v66 = v24;
    v26[1] = v25;
    v27 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction();
    swift_storeEnumTagMultiPayload();
    return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  v29 = v5;
  v30 = v68;
  (*(v69 + 32))(v68, v18, v11);
  *&v70 = *(v30 + 8);
  v71 = v70;
  v65[1] = v29;
  sub_25DDDCCE8();
  v31 = v11;
  swift_getWitnessTable();
  v32 = sub_25DDDD018();
  v65[0] = v11;
  if (v32)
  {
    (*(v15 + 8))(v3, v14);
    *v3 = v30[40];
    swift_storeEnumTagMultiPayload();
    (*(v7 + 16))(v66, &v30[*(v11 + 40)], v67);
    v33 = *&v30[*(v11 + 44)];
    v34 = v33[3];
    v35 = MEMORY[0x277D84F90];
    if (!v34)
    {
LABEL_35:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v57 = v66;
      v58 = (v66 + *(TupleTypeMetadata3 + 64));
      *(v66 + *(TupleTypeMetadata3 + 48)) = v35;
      v59 = v68;
      v60 = *(v68 + 6);
      v61 = *(v68 + 7);
      *v58 = v60;
      v58[1] = v61;
      v62 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction();
      swift_storeEnumTagMultiPayload();
      (*(*(v62 - 8) + 56))(v57, 0, 1, v62);
      sub_25DDB74BC(v60);
      return (*(v69 + 8))(v59, v65[0]);
    }

    v71 = MEMORY[0x277D84F90];
    sub_25DDC695C(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      goto LABEL_41;
    }

    v36 = 0;
    v35 = v71;
    while (v36 < v33[3])
    {
      v37 = v33[4];
      if (v36 + v37 >= v33[2])
      {
        v38 = v33[2];
      }

      else
      {
        v38 = 0;
      }

      v39 = *&v33[3 * v36 + 6 + 3 * (v37 - v38)];
      v71 = v35;
      v40 = *(v35 + 16);
      v41 = *(v35 + 24);
      v70 = v39;

      if (v40 >= v41 >> 1)
      {
        sub_25DDC695C((v41 > 1), v40 + 1, 1);
        v35 = v71;
      }

      ++v36;
      *(v35 + 16) = v40 + 1;
      *(v35 + 16 * v40 + 32) = v70;
      if (v34 == v36)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v43 = v67;
  (*(v7 + 16))(v10, &v30[*(v31 + 40)], v67);
  v44 = (*(*(v6 - 8) + 48))(v10, 1, v6);
  (*(v7 + 8))(v10, v43);
  if (v44 != 1)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  (*(v15 + 8))(v3, v14);
  v45 = *(v30 + 6);
  v46 = *(v30 + 7);
  *v3 = v30[40];
  *(v3 + 1) = *v72;
  *(v3 + 4) = *&v72[3];
  *(v3 + 8) = v70;
  *(v3 + 16) = 0;
  *(v3 + 24) = v45;
  *(v3 + 32) = v46;
  swift_storeEnumTagMultiPayload();
  v47 = *&v30[*(v31 + 44)];
  v48 = v47[3];
  if (v48)
  {

    sub_25DDB74BC(v45);
    v71 = MEMORY[0x277D84F90];
    sub_25DDC695C(0, v48 & ~(v48 >> 63), 0);
    if (v48 < 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v49 = 0;
    v50 = v71;
    while (v49 < v47[3])
    {
      v51 = v47[4];
      if (v49 + v51 >= v47[2])
      {
        v52 = v47[2];
      }

      else
      {
        v52 = 0;
      }

      v53 = *&v47[3 * v49 + 6 + 3 * (v51 - v52)];
      v71 = v50;
      v54 = *(v50 + 16);
      v55 = *(v50 + 24);
      v70 = v53;

      if (v54 >= v55 >> 1)
      {
        sub_25DDC695C((v55 > 1), v54 + 1, 1);
        v50 = v71;
      }

      ++v49;
      *(v50 + 16) = v54 + 1;
      *(v50 + 16 * v54 + 32) = v70;
      if (v48 == v49)
      {
        goto LABEL_37;
      }
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_25DDB74BC(v45);
  v50 = MEMORY[0x277D84F90];
LABEL_37:
  v63 = v66;
  *v66 = v50;
  v64 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction();
  swift_storeEnumTagMultiPayload();
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  return (*(v69 + 8))(v68, v65[0]);
}

uint64_t sub_25DDBEB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, char *, uint64_t)@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v135 = a4;
  v134 = a3;
  v133 = a1;
  v127 = a2;
  v8 = *(a2 + 16);
  v9 = sub_25DDDD088();
  v120 = *(v9 - 8);
  v10 = *(v120 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v124 = &v112 - v12;
  v126 = *(v8 - 8);
  v13 = *(v126 + 64);
  MEMORY[0x28223BE20](v11);
  v123 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v121 = v9;
  v15 = sub_25DDDCF38();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v125 = &v112 - v18;
  v19 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v136 = *(v19 - 8);
  v137 = v19;
  v20 = *(v136 + 64);
  MEMORY[0x28223BE20](v19);
  v130 = &v112 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = sub_25DDDD088();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v132 = &v112 - v24;
  v138 = v15;
  v129 = sub_25DDDD088();
  v128 = *(v129 - 8);
  v25 = *(v128 + 64);
  v26 = MEMORY[0x28223BE20](v129);
  v28 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v112 - v29;
  v31 = type metadata accessor for BufferedStream._StateMachine._State();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v112 - v37;
  (*(v32 + 16))(&v112 - v37, v6, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v139 = v8;
    v119 = v16;
    v118 = a5;
    v122 = v6;
    if (!EnumCaseMultiPayload)
    {
      v40 = *(v38 + 4);
      LODWORD(v130) = v38[40];
      v41 = *(v38 + 6);
      v42 = *(v38 + 7);
      v43 = *(v38 + 1);
      v142[0] = *v38;
      v142[1] = v43;
      v143 = v40;
      v136 = v41;
      v44 = v42;
      sub_25DDB74BC(v41);
      v141 = sub_25DDDCCD8();
      sub_25DDDCCE8();
      sub_25DDDCCA8();
      swift_getWitnessTable();
      sub_25DDDCE28();
      v46 = v144;
      v45 = v145;
      v47 = v146;
      v48 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
      v49 = sub_25DDBCC24(v46, v45, v47, v48, sub_25DDBC78C);

      v137 = 0;
      v50 = v119;
      if (v49)
      {
LABEL_6:
        v52 = *(v48 - 8);
        (*(v52 + 32))(&v144, v142, v48);
        v53 = v141;
        (*(v50 + 56))(v30, 1, 1, v138);
        (*(v52 + 16))(v140, &v144, v48);

        v54 = *sub_25DDDCC98();
        swift_retain_n();
        LODWORD(v138) = v49 & 1;
        v111 = v49 & 1;
        v55 = v136;
        sub_25DDC44F0(&v144, v130, v136, v44, v53, v30, v54, v54, v36, v111);
        sub_25DDB7474(v55);

        (*(v52 + 8))(&v144, v48);
        swift_storeEnumTagMultiPayload();
        (*(v32 + 40))(v122, v36, v31);
        v56 = v132;
        (*(*(TupleTypeMetadata2 - 8) + 56))(v132, 1, 1);
        return sub_25DDC4A18(v137, v138, v56, v139, v118);
      }

      v51 = *(v127 + 28);
      v137 = *(v122 + v51);
      if (v137 != -1)
      {
        *(v122 + v51) = v137 + 1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_29;
    }

    v58 = v137;
    v59 = v130;
    (*(v136 + 32))(v130, v38, v137);
    v117 = *(v32 + 8);
    v117(v6, v31);
    swift_storeEnumTagMultiPayload();
    sub_25DDC4E70(sub_25DDC4E64, 0, *(v59 + 8), MEMORY[0x277CFB918], v139, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v110);
    v60 = v144;
    sub_25DDDCCE8();
    sub_25DDDCCA8();
    *&v142[0] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE5B0, &qword_25DDDDB68);
    swift_getWitnessTable();
    sub_25DDC74E0();
    v135 = (v59 + 64);
    sub_25DDDCE18();
    v61 = v144;
    v62 = v145;
    v63 = v146;
    v134 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
    LOBYTE(v61) = sub_25DDBCC24(v61, v62, v63, v134, sub_25DDBC78C);

    v64 = v61 & 1;
    v116 = *(v58 + 52);
    v59[v116] = v61 & 1;
    v65 = v128;
    v66 = *(v128 + 16);
    v133 = *(v58 + 40);
    v67 = v129;
    v66(v28, &v59[v133], v129);
    v68 = v119;
    v69 = v138;
    if ((*(v119 + 48))(v28, 1, v138) != 1)
    {
      v115 = v64;
      v75 = v117;
      v76 = *(v68 + 32);
      v77 = v125;
      v114 = v68 + 32;
      v113 = v76;
      v76(v125, v28, v69);
      v78 = v124;
      v79 = v69;
      sub_25DDDCCC8();
      v80 = v126;
      v81 = v139;
      if ((*(v126 + 48))(v78, 1, v139) != 1)
      {
        v93 = *(v80 + 32);
        v94 = v123;
        v126 = v80 + 32;
        v135 = v93;
        v93(v123, v78, v81);
        v95 = v130;
        LOBYTE(v94) = sub_25DDBCCB8(v94);
        v96 = v94 & 1;
        v95[v116] = v94 & 1;
        v97 = v133;
        (*(v128 + 8))(&v95[v133], v129);
        (*(v68 + 56))(&v95[v97], 1, 1, v79);
        v98 = v122;
        v75(v122, v31);
        v100 = v136;
        v99 = v137;
        (*(v136 + 16))(v98, v95, v137);
        swift_storeEnumTagMultiPayload();
        if (v94)
        {
          v101 = 0;
          v102 = v118;
        }

        else
        {
          v105 = *(v127 + 28);
          v101 = *(v98 + v105);
          v102 = v118;
          if (v101 == -1)
          {
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          *(v98 + v105) = v101 + 1;
        }

        v106 = TupleTypeMetadata2;
        v107 = *(TupleTypeMetadata2 + 48);
        v108 = v132;
        v113(v132, v125, v138);
        v109 = v139;
        v135(v108 + v107, v123, v139);
        (*(*(v106 - 8) + 56))(v108, 0, 1, v106);
        sub_25DDC4A18(v101, v96, v108, v109, v102);
        return (*(v100 + 8))(v130, v99);
      }

      (*(v68 + 8))(v77, v79);
      (*(v120 + 8))(v78, v121);
      v82 = v122;
      v75(v122, v31);
      v84 = v136;
      v83 = v137;
      v85 = v130;
      (*(v136 + 16))(v82, v130, v137);
      swift_storeEnumTagMultiPayload();
      v86 = v118;
      v87 = v115;
      if (v115)
      {
        v88 = 0;
        v89 = v139;
      }

      else
      {
        v103 = *(v127 + 28);
        v88 = *(v82 + v103);
        v89 = v139;
        if (v88 == -1)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        *(v82 + v103) = v88 + 1;
      }

      v104 = v132;
      (*(*(TupleTypeMetadata2 - 8) + 56))(v132, 1, 1);
      sub_25DDC4A18(v88, v87, v104, v89, v86);
      return (*(v84 + 8))(v85, v83);
    }

    (*(v65 + 8))(v28, v67);
    v70 = v122;
    v117(v122, v31);
    v72 = v136;
    v71 = v137;
    (*(v136 + 16))(v70, v59, v137);
    swift_storeEnumTagMultiPayload();
    v73 = v118;
    if (v64)
    {
      v74 = 0;
    }

    else
    {
      v90 = v70;
      v91 = *(v127 + 28);
      v74 = *(v70 + v91);
      if (v74 == -1)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      *(v90 + v91) = v74 + 1;
    }

    v92 = v132;
    (*(*(TupleTypeMetadata2 - 8) + 56))(v132, 1, 1);
    sub_25DDC4A18(v74, v64, v92, v139, v73);
    return (*(v72 + 8))(v59, v71);
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v32 + 8))(v38, v31);
LABEL_13:
    type metadata accessor for BufferedStream._StateMachine.WriteAction();
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_13;
  }

LABEL_32:
  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t sub_25DDBFAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a4 + 16);
  v10 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = type metadata accessor for BufferedStream._StateMachine._State();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  (*(v16 + 16))(&v37 - v18, v5, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v41 = a2;
    v42 = a3;
    if (EnumCaseMultiPayload == 1)
    {
      v39 = *(v11 + 32);
      v40 = v11 + 32;
      v39(v14, v19, v10);
      v21 = v10[12];
      v22 = *&v14[v21];
      v23 = v22[3];
      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if ((v23 & ~(v23 >> 63)) == v24)
          {
            __break(1u);
            goto LABEL_29;
          }

          v25 = v22[4];
          v26 = v24 + v25 >= v22[2] ? v22[2] : 0;
          if (v22[v24 + 5 + v25 - v26] == a1)
          {
            break;
          }

          if (v23 == ++v24)
          {
            goto LABEL_13;
          }
        }

        v34 = *(v16 + 8);
        v34(v5, v15);
        swift_storeEnumTagMultiPayload();
        if (v24 >= v22[3])
        {
          goto LABEL_30;
        }

        v35 = *&v14[v21];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25DDC5304();
        }

        v36 = *&v14[v21];
        if (v24 < *(v36 + 24))
        {
          sub_25DDC5ABC(v24, v24 + 1, (v36 + 16), v36 + 40, v43);

          sub_25DDC5D88(v24, v24 + 1, (v36 + 16), (v36 + 40));

          v34(v5, v15);
          (*(v11 + 16))(v5, v14, v10);
          swift_storeEnumTagMultiPayload();
          sub_25DDDCF48();
          sub_25DDC7248();
          swift_allocError();
          sub_25DDDCDD8();
          (*(v11 + 8))(v14, v10);

          return v41;
        }
      }

      else
      {
LABEL_13:
        if (v14[v10[13]] == 1)
        {
          (*(v11 + 8))(v14, v10);

          return v41;
        }

        v38 = *(v16 + 8);
        v38(v5, v15);
        swift_storeEnumTagMultiPayload();
        v28 = swift_allocObject();
        *(v28 + 16) = v41;
        *(v28 + 24) = v42;
        v29 = v10[11];
        v30 = *(*&v14[v29] + 24);
        v31 = v30 + 1;
        if (!__OFADD__(v30, 1))
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = *&v14[v29];
          if (*(v33 + 16) < v31 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25DDC4F74(isUniquelyReferenced_nonNull_native, v31);
            v33 = *&v14[v29];
          }

          sub_25DDC5BB0((v33 + 16), v33 + 40, a1, sub_25DDC7544, v28);

          v38(v5, v15);
          v39(v5, v14, v10);
          swift_storeEnumTagMultiPayload();
          return 0;
        }

LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v16 + 8))(v19, v15);
LABEL_16:
      sub_25DDBD574();
      swift_allocError();

      return a2;
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_16;
    }
  }

  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t (*sub_25DDC0024(uint64_t a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = type metadata accessor for BufferedStream._StateMachine._State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  (*(v12 + 16))(&v40 - v14, v3, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v43 = *(v7 + 32);
      v43(v10, v15, v6);
      v17 = *(v6 + 44);
      v18 = *&v10[v17];
      v19 = v18[3];
      v44 = v7 + 32;
      if (v19)
      {
        v20 = 0;
        while (1)
        {
          if ((v19 & ~(v19 >> 63)) == v20)
          {
            __break(1u);
            goto LABEL_31;
          }

          v21 = v18[4];
          v22 = v20 + v21 >= v18[2] ? v18[2] : 0;
          if (v18[3 * v20 + 5 + 3 * (v21 - v22)] == a1)
          {
            break;
          }

          if (v19 == ++v20)
          {
            goto LABEL_13;
          }
        }

        v31 = *(v12 + 8);
        v31(v3, v11);
        swift_storeEnumTagMultiPayload();
        if (v20 >= v18[3])
        {
          goto LABEL_32;
        }

        v32 = *&v10[v17];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25DDC53A4();
        }

        v42 = v31;
        v33 = *&v10[v17];
        if (v20 < *(v33 + 24))
        {
          v34 = *(v33 + 32);
          if (v34 + v20 >= *(v33 + 16))
          {
            v35 = *(v33 + 16);
          }

          else
          {
            v35 = 0;
          }

          v36 = v33 + 40 + 24 * (v34 - v35 + v20);
          v37 = *(v36 + 16);
          v41 = *(v36 + 8);

          sub_25DDC5C8C(v20, v20 + 1, (v33 + 16), (v33 + 40));

          v38 = swift_allocObject();
          v39 = v42;
          *(v38 + 16) = v41;
          *(v38 + 24) = v37;
          v39(v3, v11);
          v43(v3, v10, v6);
          swift_storeEnumTagMultiPayload();
          return sub_25DDC7578;
        }
      }

      else
      {
LABEL_13:
        v23 = *(v12 + 8);
        v23(v3, v11);
        swift_storeEnumTagMultiPayload();
        v24 = *(v6 + 48);
        v25 = *(*&v10[v24] + 24);
        v26 = v25 + 1;
        if (!__OFADD__(v25, 1))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = *&v10[v24];
          if (*(v28 + 16) < v26 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25DDC5158(isUniquelyReferenced_nonNull_native, v26);
            v28 = *&v10[v24];
          }

          sub_25DDC5C30((v28 + 16), v28 + 40, a1);
          v23(v3, v11);
          v43(v3, v10, v6);
          swift_storeEnumTagMultiPayload();
          return 0;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
      }

      __break(1u);
    }

LABEL_34:
    result = sub_25DDDD138();
    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v12 + 8))(v15, v11);
    return 0;
  }

  v30 = EnumCaseMultiPayload;
  result = 0;
  if (v30 != 3)
  {
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_25DDC04D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v80 = a3;
  v6 = *(a2 + 16);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v7 = sub_25DDDCF38();
  v8 = sub_25DDDD088();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v74 - v12;
  *&v82 = *(v7 - 8);
  v14 = *(v82 + 64);
  MEMORY[0x28223BE20](v11);
  v76 = &v74 - v15;
  v16 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v78 = *(v16 - 8);
  v79 = v16;
  v17 = *(v78 + 64);
  MEMORY[0x28223BE20](v16);
  v77 = &v74 - v18;
  v81 = v6;
  v19 = type metadata accessor for BufferedStream._StateMachine._State();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v74 - v25;
  (*(v20 + 16))(&v74 - v25, v4, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v20 + 8))(v26, v19);
    }

    else if (EnumCaseMultiPayload != 3)
    {
LABEL_35:
      result = sub_25DDDD138();
      __break(1u);
      return result;
    }

    v57 = type metadata accessor for BufferedStream._StateMachine.FinishAction();
    return (*(*(v57 - 8) + 56))(v80, 1, 1, v57);
  }

  v75 = a1;
  if (!EnumCaseMultiPayload)
  {
    v28 = *(v26 + 3);
    v29 = *(v26 + 4);
    v30 = v26[40];
    v32 = *(v26 + 6);
    v31 = *(v26 + 7);
    v33 = sub_25DDDCCD8();
    *v24 = v30;
    *(v24 + 1) = v83;
    *(v24 + 1) = *(&v83 + 3);
    v34 = v75;
    *(v24 + 1) = v33;
    *(v24 + 2) = v34;
    *(v24 + 3) = v32;
    *(v24 + 4) = v31;
    swift_storeEnumTagMultiPayload();
    v35 = v34;
    sub_25DDB74BC(v32);
    (*(v20 + 40))(v4, v24, v19);
    sub_25DDB7474(v28);
    if (v32)
    {
      v36 = v31;
    }

    else
    {
      v36 = 0;
    }

    v37 = v80;
    *v80 = v32;
    v37[1] = v36;
    v38 = type metadata accessor for BufferedStream._StateMachine.FinishAction();
    swift_storeEnumTagMultiPayload();
    return (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  }

  v40 = v77;
  v41 = v79;
  (*(v78 + 32))(v77, v26, v79);
  (*(v9 + 16))(v13, &v40[*(v41 + 40)], v8);
  v42 = v82;
  if ((*(v82 + 48))(v13, 1, v7) == 1)
  {
    (*(v9 + 8))(v13, v8);
    (*(v20 + 8))(v4, v19);
    v43 = *(v40 + 7);
    v44 = *(v40 + 8);
    v45 = *(v40 + 6);
    *v4 = v40[40];
    *(v4 + 1) = *v84;
    *(v4 + 4) = *&v84[3];
    v46 = v75;
    *(v4 + 8) = v44;
    *(v4 + 16) = v46;
    *(v4 + 24) = v45;
    *(v4 + 32) = v43;
    swift_storeEnumTagMultiPayload();
    v47 = *&v40[*(v41 + 44)];
    v48 = v47[3];
    if (v48)
    {
      v49 = v46;

      sub_25DDB74BC(v45);
      v83 = MEMORY[0x277D84F90];
      sub_25DDC695C(0, v48 & ~(v48 >> 63), 0);
      if (v48 < 0)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v50 = 0;
      v51 = v83;
      while (v50 < v47[3])
      {
        v52 = v47[4];
        if (v50 + v52 >= v47[2])
        {
          v53 = v47[2];
        }

        else
        {
          v53 = 0;
        }

        v54 = *&v47[3 * v50 + 6 + 3 * (v52 - v53)];
        v83 = v51;
        v55 = *(v51 + 16);
        v56 = *(v51 + 24);
        v82 = v54;

        if (v55 >= v56 >> 1)
        {
          sub_25DDC695C((v56 > 1), v55 + 1, 1);
          v51 = v83;
        }

        ++v50;
        *(v51 + 16) = v55 + 1;
        *(v51 + 16 * v55 + 32) = v82;
        if (v48 == v50)
        {
          v70 = v79;
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    v70 = v41;
    v71 = v46;

    sub_25DDB74BC(v45);
    v51 = MEMORY[0x277D84F90];
LABEL_30:
    v72 = v80;
    *v80 = v51;
    v73 = type metadata accessor for BufferedStream._StateMachine.FinishAction();
    swift_storeEnumTagMultiPayload();
    (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
    return (*(v78 + 8))(v77, v70);
  }

  else
  {
    v58 = v42 + 32;
    v59 = *(v42 + 32);
    *&v82 = v58;
    v59(v76, v13, v7);
    v83 = *(v40 + 8);
    sub_25DDDCCE8();
    swift_getWitnessTable();
    if ((sub_25DDDD018() & 1) == 0)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (*(*&v40[*(v79 + 44)] + 24))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    (*(v20 + 8))(v4, v19);
    *v4 = v40[40];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5A8, &qword_25DDDDB60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v61 = *(TupleTypeMetadata3 + 48);
    v62 = v80;
    v63 = (v80 + *(TupleTypeMetadata3 + 64));
    v59(v80, v76, v7);
    v64 = v75;
    *(v62 + v61) = v75;
    v65 = *(v40 + 6);
    v66 = *(v40 + 7);
    if (v65)
    {
      v67 = *(v40 + 7);
    }

    else
    {
      v67 = 0;
    }

    *v63 = v65;
    v63[1] = v67;
    v68 = type metadata accessor for BufferedStream._StateMachine.FinishAction();
    swift_storeEnumTagMultiPayload();
    (*(*(v68 - 8) + 56))(v62, 0, 1, v68);
    v69 = v64;
    sub_25DDB74BC(v65);
    return (*(v78 + 8))(v40, v79);
  }
}

uint64_t sub_25DDC0DAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v97 = a2;
  v3 = *(a1 + 16);
  v4 = sub_25DDDD088();
  v89 = *(v4 - 8);
  v5 = *(v89 + 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v88 = &v87 - v10;
  v94 = *(v3 - 8);
  v11 = *(v94 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v87 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v87 - v14;
  v15 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v16 = *(v15 - 8);
  v92 = v15;
  v93 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v90 = &v87 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  *&v99 = v4;
  v19 = sub_25DDDCF38();
  v20 = sub_25DDDD088();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v87 - v26;
  v98 = v3;
  v28 = type metadata accessor for BufferedStream._StateMachine._State();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v87 - v33;
  v95 = v2;
  v96 = v35;
  (*(v35 + 16))(&v87 - v33, v2, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      LODWORD(v93) = *v34;
      v42 = *(v34 + 2);
      v43 = *(v34 + 3);
      v44 = *(v34 + 4);
      v101[0] = *(v34 + 1);
      v45 = v95;
      v46 = *(v96 + 8);
      v46(v95, v28);
      swift_storeEnumTagMultiPayload();
      v47 = v98;
      sub_25DDDCCE8();
      sub_25DDDCCC8();
      v48 = v94;
      if ((*(v94 + 48))(v8, 1, v47) == 1)
      {

        (*(v89 + 1))(v8, v99);
        v46(v45, v28);
        *v45 = v93;
        swift_storeEnumTagMultiPayload();
        if (v43)
        {
          v49 = v44;
        }

        else
        {
          v49 = 0;
        }

        v50 = v97;
        *v97 = v42;
        v50[1] = v43;
        v50[2] = v49;
        type metadata accessor for BufferedStream._StateMachine.NextAction();
        return swift_storeEnumTagMultiPayload();
      }

      *&v99 = v43;
      v63 = *(v48 + 32);
      v96 = v44;
      v64 = v87;
      v63(v87, v8, v47);
      v46(v45, v28);
      v65 = v101[0];
      *v45 = v93;
      *(v45 + 8) = v65;
      *(v45 + 16) = v42;
      v66 = v96;
      *(v45 + 24) = v99;
      *(v45 + 32) = v66;
      swift_storeEnumTagMultiPayload();
      v63(v97, v64, v47);
LABEL_29:
      type metadata accessor for BufferedStream._StateMachine.NextAction();
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v37 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
      v38 = *(v37 - 8);
      (*(v38 + 32))(v101, v34, v37);
      LODWORD(v99) = v34[40];
      v40 = *(v34 + 6);
      v39 = *(v34 + 7);
      (*(v38 + 16))(v100, v101, v37);
      sub_25DDB74BC(v40);
      v94 = sub_25DDDCCD8();
      (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
      v41 = *sub_25DDDCC98();
      swift_retain_n();
      sub_25DDC44F0(v101, v99, v40, v39, v94, v27, v41, v41, v32, 0);
      (*(v38 + 8))(v101, v37);
      sub_25DDB7474(v40);
      swift_storeEnumTagMultiPayload();
      (*(v96 + 40))(v95, v32, v28);
      goto LABEL_29;
    }

    v51 = v92;
    v52 = *(v93 + 32);
    v53 = v90;
    v93 += 32;
    v87 = v52;
    (v52)(v90, v34, v92);
    (*(v21 + 16))(v25, &v53[*(v51 + 40)], v20);
    LODWORD(v51) = (*(*(v19 - 8) + 48))(v25, 1, v19);
    (*(v21 + 8))(v25, v20);
    if (v51 == 1)
    {
      v54 = v95;
      v55 = v96 + 8;
      v56 = *(v96 + 8);
      v56(v95, v28);
      swift_storeEnumTagMultiPayload();
      v57 = v98;
      sub_25DDDCCE8();
      v58 = v88;
      sub_25DDDCCC8();
      v59 = v94;
      v60 = (*(v94 + 48))(v58, 1, v57);
      v61 = v91;
      v62 = v53;
      if (v60 == 1)
      {
        (*(v89 + 1))(v58, v99);
        v56(v54, v28);
        (v87)(v54, v53, v92);
        swift_storeEnumTagMultiPayload();
        goto LABEL_29;
      }

      v67 = *(v59 + 32);
      v94 = v59 + 32;
      v67(v91, v58, v57);
      type metadata accessor for BufferedStream._InternalBackPressureStrategy();
      v68 = sub_25DDBCCB8(v61);
      v69 = v92;
      v62[*(v92 + 52)] = v68 & 1;
      if ((v68 & 1) == 0)
      {
        v56(v54, v28);
        (v87)(v54, v62, v69);
        swift_storeEnumTagMultiPayload();
        v67(v97, v61, v57);
        goto LABEL_29;
      }

      v89 = v67;
      v88 = v56;
      v70 = *(v69 + 44);
      v71 = v70;
      v72 = *&v62[v70];
      v73 = v72[3];
      if (!v73)
      {
        v81 = *&v62[v70];

        v75 = MEMORY[0x277D84F90];
LABEL_31:
        *&v62[v71] = *sub_25DDDCC98();

        v82 = v95;
        (v88)(v95, v28);
        (v87)(v82, v62, v69);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
        v83 = v98;
        v84 = *(swift_getTupleTypeMetadata2() + 48);
        v85 = v97;
        v89(v97, v61, v83);
        *(v85 + v84) = v75;
        type metadata accessor for BufferedStream._StateMachine.NextAction();
        return swift_storeEnumTagMultiPayload();
      }

      v96 = v55;
      v101[0] = MEMORY[0x277D84F90];
      sub_25DDC695C(0, v73 & ~(v73 >> 63), 0);
      if ((v73 & 0x8000000000000000) == 0)
      {
        v74 = 0;
        v75 = v101[0];
        while (v74 < v72[3])
        {
          v76 = v72[4];
          if (v74 + v76 >= v72[2])
          {
            v77 = v72[2];
          }

          else
          {
            v77 = 0;
          }

          v78 = *&v72[3 * v74 + 6 + 3 * (v76 - v77)];
          v101[0] = v75;
          v79 = *(v75 + 16);
          v80 = *(v75 + 24);
          v99 = v78;

          if (v79 >= v80 >> 1)
          {
            sub_25DDC695C((v80 > 1), v79 + 1, 1);
            v75 = v101[0];
          }

          ++v74;
          *(v75 + 16) = v79 + 1;
          *(v75 + 16 * v79 + 32) = v99;
          if (v73 == v74)
          {

            v61 = v91;
            v69 = v92;
            v62 = v90;
            goto LABEL_31;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  result = sub_25DDDD138();
  __break(1u);
  return result;
}

uint64_t sub_25DDC19C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_25DDC1A08, 0, 0);
}

uint64_t sub_25DDC1A08()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x277D85A10] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 80);
  sub_25DDDD088();
  *v3 = v0;
  v3[1] = sub_25DDC1AE8;
  v5 = v0[2];
  v6 = v0[3];

  return MEMORY[0x282200830](v5, &unk_25DDDDB78);
}

uint64_t sub_25DDC1AE8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DDC938C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25DDC1C1C(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  return MEMORY[0x2822009F8](sub_25DDC1C64, 0, 0);
}

uint64_t sub_25DDC1C64()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 80);
  v5 = sub_25DDDD088();
  *v3 = v0;
  v3[1] = sub_25DDC1D4C;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x2822008A0](v6, 0, 0, 0x4E646E6570737573, 0xED00002928747865, sub_25DDC9154, v7, v5);
}

uint64_t sub_25DDC1D4C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DDC1E80, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25DDC1E98(uint64_t a1, void *a2)
{
  v4 = *(*a2 + 80);
  v5 = sub_25DDDD088();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v65 = &v61 - v8;
  v67 = *(v4 - 8);
  v9 = *(v67 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v64 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v66 = sub_25DDDCF38();
  v68 = *(v66 - 8);
  v14 = *(v68 + 64);
  v15 = MEMORY[0x28223BE20](v66);
  v62 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v63 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  Action = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
  v22 = sub_25DDDD088();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v61 - v28;
  v30 = a2[2];
  v69 = v4;
  v70 = a1;
  type metadata accessor for BufferedStream._StateMachine();
  sub_25DDC9AC8(sub_25DDC915C);
  (*(v23 + 16))(v27, v29, v22);
  if ((*(*(Action - 8) + 48))(v27, 1, Action) == 1)
  {
    return (*(v23 + 8))(v29, v22);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v58 = v68;
      v59 = v66;
      (*(v68 + 32))(v20, v27, v66);
      (*(v67 + 56))(v65, 1, 1, v4);
      sub_25DDDCF28();
      (*(v58 + 8))(v20, v59);
      return (*(v23 + 8))(v29, v22);
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5A8, &qword_25DDDDB60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
    v36 = v66;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v38 = *&v27[*(TupleTypeMetadata3 + 48)];
    v39 = &v27[*(TupleTypeMetadata3 + 64)];
    v40 = *v39;
    v41 = *(v39 + 1);
    v42 = v62;
    (*(v68 + 32))(v62, v27, v36);
    if (v38)
    {
      v71 = v38;
      v43 = v38;
      sub_25DDDCF18();
      v44 = v42;
      if (v40)
      {
LABEL_8:

        v40(v45);
        sub_25DDB7474(v40);

        sub_25DDB7474(v40);
LABEL_16:
        (*(v68 + 8))(v44, v36);
        return (*(v23 + 8))(v29, v22);
      }
    }

    else
    {
      (*(v67 + 56))(v65, 1, 1, v4);
      sub_25DDDCF28();
      v44 = v42;
      if (v40)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
    v46 = v66;
    v47 = swift_getTupleTypeMetadata3();
    v48 = *(v47 + 48);
    v49 = *&v27[*(v47 + 64)];
    (*(v68 + 32))(v63, v27, v46);
    v50 = v67;
    v51 = &v27[v48];
    v52 = v64;
    (*(v67 + 32))(v64, v51, v4);
    v53 = v65;
    (*(v50 + 16))(v65, v52, v4);
    (*(v50 + 56))(v53, 0, 1, v4);
    sub_25DDDCF28();
    v54 = *(v49 + 16);
    if (v54)
    {
      v55 = (v49 + 40);
      do
      {
        v57 = *(v55 - 1);
        v56 = *v55;
        v71 = 0;
        v72 = 0;

        v57(&v71);

        v55 += 2;
        --v54;
      }

      while (v54);
    }

    (*(v67 + 8))(v64, v4);
    (*(v68 + 8))(v63, v46);
  }

  else
  {
    v32 = v66;
    v64 = *(swift_getTupleTypeMetadata2() + 48);
    v33 = v68;
    (*(v68 + 32))(v20, v27, v32);
    v34 = v67;
    (*(v67 + 32))(v13, &v64[v27], v4);
    v35 = v65;
    (*(v34 + 16))(v65, v13, v4);
    (*(v34 + 56))(v35, 0, 1, v4);
    sub_25DDDCF28();
    (*(v34 + 8))(v13, v4);
    (*(v33 + 8))(v20, v32);
  }

  return (*(v23 + 8))(v29, v22);
}

uint64_t sub_25DDC2648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v130 = a1;
  v131 = a3;
  v5 = *(a2 + 16);
  v6 = sub_25DDDD088();
  v125 = *(v6 - 8);
  v7 = *(v125 + 8);
  v8 = MEMORY[0x28223BE20](v6);
  v123 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v118 - v11;
  v128 = *(v5 - 8);
  v13 = *(v128 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v124 = (&v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = &v118 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v126 = v6;
  v133 = sub_25DDDCF38();
  v18 = sub_25DDDD088();
  *&v134 = *(v18 - 8);
  v19 = *(v134 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v118 - v20;
  v22 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v23 = *(v22 - 8);
  v24 = *(v23 + 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v118 - v25;
  v132 = v5;
  v27 = type metadata accessor for BufferedStream._StateMachine._State();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v118 - v29;
  v129 = v31;
  v32 = *(v31 + 16);
  v127 = v4;
  v33 = v4;
  v35 = v34;
  v32(&v118 - v29, v33, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v37 = *v30;
      v38 = *(v30 + 1);
      *&v134 = *(v30 + 2);
      v39 = *(v30 + 3);
      v40 = *(v30 + 4);
      v135 = v38;
      v41 = *(v129 + 8);
      v42 = v127;
      v41(v127, v35);
      swift_storeEnumTagMultiPayload();
      v43 = v35;
      v44 = v132;
      sub_25DDDCCE8();
      v45 = v123;
      sub_25DDDCCC8();
      v46 = v128;
      if ((*(v128 + 48))(v45, 1, v44) == 1)
      {

        (*(v125 + 1))(v45, v126);
        v41(v42, v43);
        *v42 = v37;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5A8, &qword_25DDDDB60);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
        v47 = v133;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v49 = *(TupleTypeMetadata3 + 48);
        v50 = v131;
        v51 = (v131 + *(TupleTypeMetadata3 + 64));
        (*(*(v47 - 8) + 16))(v131, v130, v47);
        *(v50 + v49) = v134;
        if (v39)
        {
          v52 = v40;
        }

        else
        {
          v52 = 0;
        }

        *v51 = v39;
        v51[1] = v52;
        Action = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
      }

      else
      {
        v129 = *(v46 + 32);
        (v129)(v124, v45, v44);
        v41(v42, v43);
        v81 = v135;
        *v42 = v37;
        v82 = v134;
        *(v42 + 1) = v81;
        *(v42 + 2) = v82;
        *(v42 + 3) = v39;
        *(v42 + 4) = v40;
        swift_storeEnumTagMultiPayload();
        v83 = v133;
        v84 = *(swift_getTupleTypeMetadata2() + 48);
        v50 = v131;
        (*(*(v83 - 8) + 16))(v131, v130, v83);
        (v129)(v50 + v84, v124, v44);
        Action = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
      }

      swift_storeEnumTagMultiPayload();
      return (*(*(Action - 8) + 56))(v50, 0, 1, Action);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v79 = v131;
      (*(*(v133 - 8) + 16))(v131, v130);
      v80 = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
      swift_storeEnumTagMultiPayload();
      return (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
    }

LABEL_34:
    result = sub_25DDDD138();
    __break(1u);
    return result;
  }

  v54 = v12;
  v55 = v134;
  v121 = v26;
  v122 = v18;
  v119 = v17;
  v120 = v54;
  v123 = v22;
  v124 = v23;
  if (EnumCaseMultiPayload != 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v56 = v123;
  v57 = v121;
  v124[4](v121, v30, v123);
  v58 = *(v55 + 16);
  v118 = *(v56 + 10);
  v59 = v122;
  v58(v21, &v57[v118], v122);
  v60 = *(v133 - 8);
  v61 = (*(v60 + 48))(v21, 1);
  v62 = *(v55 + 8);
  *&v134 = v55 + 8;
  v62(v21, v59);
  if (v61 != 1)
  {
    goto LABEL_34;
  }

  v63 = v129 + 8;
  v64 = *(v129 + 8);
  v65 = v127;
  v64(v127, v35);
  swift_storeEnumTagMultiPayload();
  v66 = v132;
  sub_25DDDCCE8();
  v67 = v120;
  sub_25DDDCCC8();
  v68 = v128;
  if ((*(v128 + 48))(v67, 1, v66) == 1)
  {
    (*(v125 + 1))(v67, v126);
    v69 = v118;
    v62(&v57[v118], v122);
    v70 = *(v60 + 16);
    v71 = &v57[v69];
    v72 = v60;
    v73 = v57;
    v74 = v133;
    v70(v71, v130, v133);
    (*(v72 + 56))(&v73[v69], 0, 1, v74);
    v64(v65, v35);
    v75 = v123;
    v76 = v124;
    v124[2](v65, v73, v123);
    swift_storeEnumTagMultiPayload();
    v77 = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
    (*(*(v77 - 8) + 56))(v131, 1, 1, v77);
    return (v76[1])(v73, v75);
  }

  v125 = v64;
  v126 = v60;
  v85 = v35;
  v129 = v63;
  v86 = *(v68 + 32);
  v87 = v119;
  v86(v119, v67, v66);
  type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  v88 = sub_25DDBCCB8(v87);
  v89 = v123;
  v57[*(v123 + 13)] = v88 & 1;
  if ((v88 & 1) == 0)
  {
    v125(v65, v85);
    v101 = v86;
    v102 = v87;
    v103 = v124;
    v124[2](v65, v57, v89);
    swift_storeEnumTagMultiPayload();
    v104 = v133;
    v105 = v57;
    v106 = *(swift_getTupleTypeMetadata2() + 48);
    v107 = v131;
    (*(v126 + 16))(v131, v130, v104);
    v101(v107 + v106, v102, v66);
    v108 = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
    swift_storeEnumTagMultiPayload();
    (*(*(v108 - 8) + 56))(v107, 0, 1, v108);
    return (v103[1])(v105, v89);
  }

  v128 = v68 + 32;
  v90 = *(v89 + 11);
  v91 = *&v90[v57];
  v92 = v91[3];
  v93 = v124;
  v122 = v86;
  if (v92)
  {
    v120 = v90;
    v135 = MEMORY[0x277D84F90];
    sub_25DDC695C(0, v92 & ~(v92 >> 63), 0);
    if ((v92 & 0x8000000000000000) == 0)
    {
      v94 = 0;
      v95 = v135;
      while (v94 < v91[3])
      {
        v96 = v91[4];
        if (v94 + v96 >= v91[2])
        {
          v97 = v91[2];
        }

        else
        {
          v97 = 0;
        }

        v98 = *&v91[3 * v94 + 6 + 3 * (v96 - v97)];
        v135 = v95;
        v100 = *(v95 + 16);
        v99 = *(v95 + 24);
        v134 = v98;

        if (v100 >= v99 >> 1)
        {
          sub_25DDC695C((v99 > 1), v100 + 1, 1);
          v95 = v135;
        }

        ++v94;
        *(v95 + 16) = v100 + 1;
        *(v95 + 16 * v100 + 32) = v134;
        if (v92 == v94)
        {

          v66 = v132;
          v65 = v127;
          v89 = v123;
          v93 = v124;
          v90 = v120;
          goto LABEL_30;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  v95 = MEMORY[0x277D84F90];
LABEL_30:
  v109 = sub_25DDDCC98();
  v110 = v121;
  *&v90[v121] = *v109;

  v125(v65, v85);
  v93[2](v65, v110, v89);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
  v111 = v93;
  v112 = v133;
  v113 = swift_getTupleTypeMetadata3();
  v114 = *(v113 + 48);
  v115 = *(v113 + 64);
  v116 = v131;
  (*(v126 + 16))(v131, v130, v112);
  v122(v116 + v114, v119, v66);
  *(v116 + v115) = v95;
  v117 = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
  swift_storeEnumTagMultiPayload();
  (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
  return v111[1](v110, v89);
}

uint64_t sub_25DDC3404(void *a1)
{
  v2 = *(*a1 + 80);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v3 = sub_25DDDCF38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  Action = type metadata accessor for BufferedStream._StateMachine.CancelNextAction();
  v9 = sub_25DDDD088();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = a1[2];
  v36 = v2;
  type metadata accessor for BufferedStream._StateMachine();
  sub_25DDC9AC8(sub_25DDC9108);
  (*(v10 + 16))(v14, v16, v9);
  if ((*(*(Action - 8) + 48))(v14, 1, Action) == 1)
  {
    return (*(v10 + 8))(v16, v9);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
    v27 = v14 + *(swift_getTupleTypeMetadata2() + 48);
    v28 = *v27;
    v29 = *(v27 + 1);
    (*(v4 + 32))(v7, v14, v3);
    sub_25DDDCF48();
    sub_25DDC7248();
    v30 = swift_allocError();
    sub_25DDDCDD8();
    v37 = v30;
    sub_25DDDCF18();
    if (v28)
    {

      v28(v31);
      sub_25DDB7474(v28);
      sub_25DDB7474(v28);
    }

    (*(v4 + 8))(v7, v3);
    return (*(v10 + 8))(v16, v9);
  }

  v18 = *v14;
  v33 = v14[1];
  v34 = v9;
  v32 = v14[2];
  v35 = v18;
  v19 = *(v18 + 16);
  if (v19)
  {
    sub_25DDBD574();
    v20 = (v35 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v23 = swift_allocError();
      v37 = v23;
      v38 = 1;

      v21(&v37);

      v20 += 2;
      --v19;
    }

    while (v19);
  }

  v24 = v33;
  if (v33)
  {

    v24(v25);
    sub_25DDB7474(v24);
    sub_25DDB7474(v24);
  }

  return (*(v10 + 8))(v16, v34);
}

uint64_t sub_25DDC383C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v3 = *(a1 + 16);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v4 = sub_25DDDCF38();
  v5 = sub_25DDDD088();
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v62 - v9;
  *&v70 = *(v4 - 8);
  v11 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v13 = &v62 - v12;
  v14 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v69 = *(v14 - 8);
  v15 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - v16;
  v67 = v3;
  v18 = type metadata accessor for BufferedStream._StateMachine._State();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  (*(v19 + 16))(&v62 - v21, v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v19 + 8))(v22, v18);
LABEL_18:
      Action = type metadata accessor for BufferedStream._StateMachine.CancelNextAction();
      return (*(*(Action - 8) + 56))(v68, 1, 1, Action);
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

  v62 = v10;
  v63 = v2;
  v24 = v65;
  v64 = v14;
  if (EnumCaseMultiPayload != 1)
  {
LABEL_31:
    result = sub_25DDDD138();
    __break(1u);
    return result;
  }

  v25 = v69;
  v26 = v17;
  v27 = v22;
  v28 = v64;
  (*(v69 + 32))(v17, v27, v64);
  v29 = v63;
  (*(v19 + 8))(v63, v18);
  *v29 = v26[40];
  v30 = v28;
  swift_storeEnumTagMultiPayload();
  v31 = v66;
  v32 = &v26[*(v28 + 40)];
  v33 = v62;
  v34 = v24;
  (*(v66 + 16))(v62, v32, v24);
  v35 = v70;
  if ((*(v70 + 48))(v33, 1, v4) == 1)
  {
    (*(v31 + 8))(v33, v34);
    v36 = *&v26[*(v30 + 44)];
    v37 = v36[3];
    v38 = MEMORY[0x277D84F90];
    if (v37)
    {
      v71 = MEMORY[0x277D84F90];
      sub_25DDC695C(0, v37 & ~(v37 >> 63), 0);
      if (v37 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v39 = 0;
      v38 = v71;
      while (v39 < v36[3])
      {
        v40 = v36[4];
        if (v39 + v40 >= v36[2])
        {
          v41 = v36[2];
        }

        else
        {
          v41 = 0;
        }

        v42 = *&v36[3 * v39 + 6 + 3 * (v40 - v41)];
        v71 = v38;
        v44 = *(v38 + 16);
        v43 = *(v38 + 24);
        v70 = v42;

        if (v44 >= v43 >> 1)
        {
          sub_25DDC695C((v43 > 1), v44 + 1, 1);
          v38 = v71;
        }

        ++v39;
        *(v38 + 16) = v44 + 1;
        *(v38 + 16 * v44 + 32) = v70;
        v25 = v69;
        if (v37 == v39)
        {
          v30 = v64;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_24:
    v56 = *(v26 + 6);
    v57 = *(v26 + 7);
    if (v56)
    {
      v58 = *(v26 + 7);
    }

    else
    {
      v58 = 0;
    }

    v59 = v68;
    *v68 = v38;
    v59[1] = v56;
    v59[2] = v58;
    v60 = v26;
    v61 = type metadata accessor for BufferedStream._StateMachine.CancelNextAction();
    swift_storeEnumTagMultiPayload();
    (*(*(v61 - 8) + 56))(v59, 0, 1, v61);
    sub_25DDB74BC(v56);
    return (*(v25 + 8))(v60, v30);
  }

  else
  {
    v47 = *(v35 + 32);
    v47(v13, v33, v4);
    if (*(*&v26[*(v30 + 44)] + 24))
    {
      goto LABEL_29;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v49 = v68;
    v50 = (v68 + *(TupleTypeMetadata2 + 48));
    v47(v68, v13, v4);
    v51 = *(v26 + 6);
    v52 = *(v26 + 7);
    if (v51)
    {
      v53 = *(v26 + 7);
    }

    else
    {
      v53 = 0;
    }

    *v50 = v51;
    v50[1] = v53;
    v54 = v26;
    v55 = type metadata accessor for BufferedStream._StateMachine.CancelNextAction();
    swift_storeEnumTagMultiPayload();
    (*(*(v55 - 8) + 56))(v49, 0, 1, v55);
    sub_25DDB74BC(v51);
    return (*(v69 + 8))(v54, v30);
  }
}

uint64_t sub_25DDC3F28()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_25DDC3F48()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25DDC3F80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t sub_25DDC4028()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_25DDB74BC(v1);
  return v1;
}

uint64_t sub_25DDC405C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  result = sub_25DDB7474(*(v2 + 48));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

double sub_25DDC40B4@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  (*(*(v10 - 8) + 32))(v14, a1, v10);
  v11 = v15;
  result = *v14;
  v13 = v14[1];
  *a5 = v14[0];
  *(a5 + 16) = v13;
  *(a5 + 32) = v11;
  *(a5 + 40) = a2;
  *(a5 + 41) = v14[0];
  *(a5 + 44) = *(v14 + 3);
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t sub_25DDC416C(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_25DDC41B8@<X0>(uint64_t a1@<X8>)
{
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v2 = sub_25DDDCF38();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_25DDC4258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  sub_25DDDCF38();
  v6 = sub_25DDDD088();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_25DDC430C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 16);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  sub_25DDDCF38();
  v6 = sub_25DDDD088();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*sub_25DDC43C0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_25DDC43F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*sub_25DDC4428(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_25DDC4458(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*sub_25DDC4490(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t (*sub_25DDC44CC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_25DDC44F0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v16 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v17 = v16[10];
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v18 = sub_25DDDCF38();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  v20 = sub_25DDDD088();
  result = (*(*(v20 - 8) + 40))(a9 + v17, a6, v20);
  *(a9 + v16[11]) = a7;
  *(a9 + v16[12]) = a8;
  *(a9 + v16[13]) = a10;
  return result;
}

uint64_t sub_25DDC46B0(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void *sub_25DDC4704()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_25DDC477C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_25DDB74BC(v1);
  return v1;
}

uint64_t sub_25DDC47B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  result = sub_25DDB7474(*(v2 + 24));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_25DDC4808@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_25DDC4818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for BufferedStream._StateMachine._State();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t sub_25DDC4884(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for BufferedStream._StateMachine._State();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t (*sub_25DDC4908(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t (*sub_25DDC492C(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  *a1 = sub_25DDBD03C(a2);
  a1[1] = v4;
  return sub_25DDC4978;
}

uint64_t sub_25DDC4978(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if ((a2 & 1) == 0)
  {
    return sub_25DDBCD14(*a1, v3, v4);
  }

  sub_25DDB74BC(*a1);
  sub_25DDBCD14(v2, v3, v4);

  return sub_25DDB7474(v2);
}

uint64_t sub_25DDC49FC(uint64_t a1)
{
  v2 = *(a1 + 28);
  result = *(v1 + v2);
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = result + 1;
  }

  return result;
}

uint64_t sub_25DDC4A18@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  LODWORD(v38) = a2;
  v39 = a5;
  v7 = *(a4 - 8);
  v36 = a1;
  v37 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v11 = sub_25DDDCF38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  type metadata accessor for BufferedStream.Source.WriteResult.CallbackToken();
  sub_25DDDD088();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_25DDDD088();
  v18 = swift_getTupleTypeMetadata2();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v36 + *(v20 + 56) - v21;
  (*(*(v17 - 8) + 32))(v22, a3, v17);
  v23 = (*(*(TupleTypeMetadata2 - 8) + 48))(v22, 1, TupleTypeMetadata2);
  if (v38)
  {
    if (v23 != 1)
    {
      v24 = *(TupleTypeMetadata2 + 48);
      v25 = *(v12 + 32);
      v25(v15, v22, v11);
      v26 = *(v37 + 32);
      v26(v10, &v22[v24], a4);
      v27 = *(swift_getTupleTypeMetadata2() + 48);
      v28 = v39;
      v25(v39, v15, v11);
      v26(&v28[v27], v10, a4);
    }
  }

  else if (v23 == 1)
  {
    *v39 = v36;
  }

  else
  {
    v29 = *(TupleTypeMetadata2 + 48);
    v38 = *(v12 + 32);
    v38(v15, v22, v11);
    v30 = *(v37 + 32);
    v30(v10, &v22[v29], a4);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v32 = *(TupleTypeMetadata3 + 48);
    v33 = *(TupleTypeMetadata3 + 64);
    v34 = v39;
    v38(v39, v15, v11);
    v30(&v34[v32], v10, a4);
    *&v34[v33] = v36;
  }

  type metadata accessor for BufferedStream._StateMachine.WriteAction();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25DDC4E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16 + ((*(*(v15 - 8) + 80) + 16) & ~*(*(v15 - 8) + 80)), v14);
  if (v9)
  {
    return (*(v11 + 32))(a9, v14, a6);
  }

  return result;
}

uint64_t sub_25DDC4F74(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE628, &qword_25DDDE5C8);
    v8 = swift_allocObject();
    v9 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v9;
    if (v9 >= 1)
    {
      sub_25DDC5448(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE5E0, qword_25DDDE218);
    sub_25DDDCCB8();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE628, &qword_25DDDE5C8);
      v8 = swift_allocObject();
      *(v8 + 16) = (_swift_stdlib_malloc_size(v8) - 40) / 24;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_25DDC5648(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE628, &qword_25DDDE5C8);
      v8 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v8);
      v11 = *(v3 + 24);
      *(v8 + 16) = (v10 - 40) / 24;
      *(v8 + 24) = v11;
      *(v8 + 32) = 0;
      if (v11 >= 1)
      {
        sub_25DDC58B0(v8 + 16, v8 + 40, v4, v3 + 40);
      }
    }
  }

  *v2 = v8;
  return result;
}

uint64_t sub_25DDC5158(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE618, &qword_25DDDE5B8);
    v9 = swift_allocObject();
    v12 = *(v3 + 24);
    *(v9 + 16) = v5;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_25DDC5560(v9 + 16, (v9 + 40), v4, (v3 + 40));
    }
  }

  else
  {
    v7 = *v2;
    sub_25DDDCCB8();
    if (a1)
    {
      v8 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE618, &qword_25DDDE5B8);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 33;
      }

      *(v9 + 16) = v11 >> 3;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_25DDC5788(v9 + 16, (v9 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE618, &qword_25DDDE5B8);
      v9 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 33;
      }

      v15 = *(v3 + 24);
      *(v9 + 16) = v14 >> 3;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_25DDC59C4(v9 + 16, (v9 + 40), v4, (v3 + 40));
      }
    }
  }

  *v2 = v9;
  return result;
}

uint64_t sub_25DDC5304()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE618, &qword_25DDDE5B8);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_25DDC5560(v4 + 16, (v4 + 40), v2, (v1 + 40));
  }

  *v0 = v4;
  return result;
}

uint64_t sub_25DDC53A4()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE628, &qword_25DDDE5C8);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_25DDC5448(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_25DDC5448(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v9 = 0;
    v7 = 0;
    v10 = a3[1];
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE620, &qword_25DDDE5C0);
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *a3 - v4;
  v9 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE620, &qword_25DDDE5C0);
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_25DDC5560(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[8 * v4], &__src[8 * v4], 8 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_25DDC5648(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[24 * v4];
  if (v12 != __dst || &v12[24 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 24 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[24 * v8];
  if (v16 != v11 || v16 >= &v11[24 * v7])
  {

    memmove(v16, v11, 24 * v7);
  }
}

void sub_25DDC5788(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[8 * v4];
  if (v12 != __dst || &v12[8 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 8 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[8 * v8];
  if (v16 != v11 || v16 >= &v11[8 * v7])
  {

    memmove(v16, v11, 8 * v7);
  }
}

uint64_t sub_25DDC58B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v7 = 0;
  v10 = a3[1];
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE620, &qword_25DDDE5C0);
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE620, &qword_25DDDE5C0);
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_25DDC59C4(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[8 * v4], 8 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[8 * v9], v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_25DDC5ABC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 8 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DDC5B34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 24 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void *sub_25DDC5BB0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result[1];
  v5 = result[2];
  v8 = __OFADD__(v5, v6);
  v7 = v5 + v6;
  if (!v8)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v7, *result);
      if (v7 < *result || (v7 -= *result, !v8))
      {
LABEL_9:
        v9 = (a2 + 24 * v7);
        *v9 = a3;
        v9[1] = a4;
        v9[2] = a5;
        v10 = result[1];
        v8 = __OFADD__(v10, 1);
        v11 = v10 + 1;
        if (!v8)
        {
          result[1] = v11;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v7 < 0)
    {
      v8 = __OFADD__(v7, *result);
      v7 += *result;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_25DDC5C30(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v6 = __OFADD__(v3, v4);
  v5 = v3 + v4;
  if (!v6)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v7 = result[1];
        v6 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (!v6)
        {
          result[1] = v8;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_25DDC5C8C(unint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  sub_25DDC5B34(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE620, &qword_25DDDE5C0);
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE620, &qword_25DDDE5C0);
    swift_arrayDestroy();
  }

  return sub_25DDC6340(a1, a2, a3, a4);
}

unint64_t sub_25DDC5D88(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_143;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_31;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_148;
    }
  }

  if (!result)
  {
    goto LABEL_117;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_117;
      }

      v47 = &__src[8 * v7];
      if (v14 >= v7 && &__src[8 * v14] < &v47[8 * result] && v14 == v7)
      {
        goto LABEL_117;
      }

      v48 = 8 * result;
      result = &__src[8 * v14];
      v16 = a3;
      v49 = v48;
      goto LABEL_116;
    }

    if (v16 > 0)
    {
      v19 = &__src[8 * (v10 - v6)];
      if (v10 - v6 > 0 || (v7 = &v19[8 * v16], v7 <= __src) || v10 != v6)
      {
        v15 = result;
        v20 = a3;
        v21 = __src;
        memmove(__src, v19, 8 * v16);
        result = v15;
        __src = v21;
        a3 = v20;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_111;
    }

    __break(1u);
LABEL_31:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v22 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_39;
        }

        v5 -= v10;
        if (!v22)
        {
          goto LABEL_39;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_155;
        }
      }

LABEL_39:
      v17 = __OFSUB__(v8, v6);
      v23 = v8 - v6;
      if (!v17)
      {
        v24 = v23 + v7;
        if (v24 >= v10)
        {
          v25 = v10;
        }

        else
        {
          v25 = 0;
        }

        if (!v14)
        {
          goto LABEL_139;
        }

        v4 = v24 - v25;
        if (v24 - v25 <= 0)
        {
          v26 = v10;
        }

        else
        {
          v26 = v24 - v25;
        }

        if (v5 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v5;
        }

        if (v16 < v27)
        {
          if (v26 >= v15)
          {
            goto LABEL_120;
          }

          v28 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          if (v28 > 0)
          {
            result = &__src[8 * v15];
            v29 = &__src[8 * v16];
            if (v15 != v16 || result >= &v29[8 * v28])
            {
              v30 = a3;
              v31 = __src;
              result = memmove(result, v29, 8 * v28);
              __src = v31;
              a3 = v30;
            }

            v17 = __OFADD__(v16, v28);
            v16 += v28;
            if (v17)
            {
              goto LABEL_156;
            }

            v32 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v32)
              {
                goto LABEL_160;
              }
            }
          }

          v33 = v14 - v28;
          if (__OFSUB__(v14, v28))
          {
            goto LABEL_154;
          }

          if (v33 < 1)
          {
            goto LABEL_139;
          }

          v34 = &__src[8 * v16];
          if (v16 <= 0 && &v34[8 * v33] > __src && !v16)
          {
            goto LABEL_139;
          }

          v35 = 8 * v33;
LABEL_99:
          result = __src;
LABEL_138:
          v60 = a3;
          result = memmove(result, v34, v35);
          a3 = v60;
          goto LABEL_139;
        }

LABEL_76:
        v38 = v10 - v16;
        v39 = __OFSUB__(v10, v16);
        if (v26 >= v15)
        {
          if (v39)
          {
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
            return result;
          }

          if (v38 > 0)
          {
            result = &__src[8 * v15];
            v56 = &__src[8 * v16];
            if (v15 != v16 || result >= &v56[8 * v38])
            {
              v57 = a3;
              v58 = __src;
              result = memmove(result, v56, 8 * v38);
              __src = v58;
              a3 = v57;
            }

            v17 = __OFADD__(v15, v38);
            v15 += v38;
            if (v17)
            {
              goto LABEL_158;
            }

            v59 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v59)
              {
                goto LABEL_162;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[8 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v35 = 8 * v5;
              v34 = __src;
              goto LABEL_138;
            }
          }

          goto LABEL_139;
        }

        if (v39)
        {
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (v38 > 0)
        {
          result = &__src[8 * v15];
          v40 = &__src[8 * v16];
          if (v15 != v16 || result >= &v40[8 * v38])
          {
            v41 = a3;
            v42 = __src;
            result = memmove(result, v40, 8 * v38);
            __src = v42;
            a3 = v41;
          }

          v17 = __OFADD__(v15, v38);
          v15 += v38;
          if (v17)
          {
            goto LABEL_157;
          }

          v43 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v43)
            {
              goto LABEL_161;
            }
          }
        }

        result = &__src[8 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v44 = a3;
          v45 = __src;
          result = memmove(result, __src, 8 * v6);
          __src = v45;
          a3 = v44;
        }

        v46 = v6;
        if (v6 >= *a3)
        {
          v46 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_159;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_139;
        }

        v34 = &__src[8 * v46];
        if (v46 <= 0 && &v34[8 * v4] > __src && !v46)
        {
          goto LABEL_139;
        }

        v35 = 8 * v4;
        goto LABEL_99;
      }

LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v15 > 0)
    {
      v50 = &__src[8 * v16 + -8 * v15];
      if (v50 != __src || v50 >= &__src[8 * v15])
      {
        v16 = result;
        v51 = a3;
        v52 = __src;
        memmove(v50, __src, 8 * v15);
        result = v16;
        __src = v52;
        a3 = v51;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_153;
    }

    goto LABEL_111;
  }

  if (v15 > 0)
  {
    v36 = 8 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[8 * v6], __src, v36);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v26 = *a3 - v6;
  if (*a3 < 1 || (v37 = *a3 == v6, v26 > 0) || *a3 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[8 * v26], 8 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_76;
  }

LABEL_111:
  if (v10 < 1)
  {
    goto LABEL_117;
  }

  v53 = a3[2];
  result = &__src[8 * v14];
  v47 = &__src[8 * v53];
  if (v14 >= v53 && result < &v47[8 * v10] && v14 == v53)
  {
    goto LABEL_117;
  }

  v16 = a3;
  v49 = 8 * v10;
LABEL_116:
  result = memmove(result, v47, v49);
  a3 = v16;
LABEL_117:
  a3[2] = v14;
  v54 = a3[1];
  v17 = __OFSUB__(v54, v6);
  v55 = v54 - v6;
  if (!v17)
  {
    goto LABEL_140;
  }

  __break(1u);
LABEL_120:
  if (v14 > 0)
  {
    result = &__src[8 * v15];
    v34 = &__src[8 * v16];
    if (v15 < v16 || result >= &v34[8 * v14] || v15 != v16)
    {
      v35 = 8 * v14;
      goto LABEL_138;
    }
  }

LABEL_139:
  v61 = a3[1];
  v17 = __OFSUB__(v61, v6);
  v55 = v61 - v6;
  if (v17)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

LABEL_140:
  a3[1] = v55;
  return result;
}

unint64_t sub_25DDC6340(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_148;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_33;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_153;
    }
  }

  if (!result)
  {
    goto LABEL_122;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_122;
      }

      v49 = &__src[24 * v7];
      if (v14 >= v7 && &__src[24 * v14] < &v49[24 * result] && v14 == v7)
      {
        goto LABEL_122;
      }

      v50 = 24 * result;
      result = &__src[24 * v14];
      v16 = a3;
      v51 = v50;
      goto LABEL_121;
    }

    if (v16 > 0)
    {
      v8 = v10 - v6;
      v19 = &__src[24 * (v10 - v6)];
      if (v10 - v6 > 0 || ((v7 = &v19[24 * v16], v7 > __src) ? (v20 = v10 == v6) : (v20 = 0), !v20))
      {
        v15 = result;
        v21 = a3;
        v22 = __src;
        memmove(__src, v19, 24 * v16);
        result = v15;
        __src = v22;
        a3 = v21;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_116;
    }

    __break(1u);
LABEL_33:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v23 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_41;
        }

        v5 -= v10;
        if (!v23)
        {
          goto LABEL_41;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_160;
        }
      }

LABEL_41:
      v17 = __OFSUB__(v8, v6);
      v24 = v8 - v6;
      if (!v17)
      {
        v25 = v24 + v7;
        if (v25 >= v10)
        {
          v26 = v10;
        }

        else
        {
          v26 = 0;
        }

        if (!v14)
        {
          goto LABEL_144;
        }

        v4 = v25 - v26;
        if (v25 - v26 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v25 - v26;
        }

        if (v5 <= 0)
        {
          v28 = v10;
        }

        else
        {
          v28 = v5;
        }

        if (v16 < v28)
        {
          if (v27 >= v15)
          {
            goto LABEL_125;
          }

          v29 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          if (v29 > 0)
          {
            result = &__src[24 * v15];
            v30 = &__src[24 * v16];
            if (v15 != v16 || result >= &v30[24 * v29])
            {
              v31 = a3;
              v32 = __src;
              result = memmove(result, v30, 24 * v29);
              __src = v32;
              a3 = v31;
            }

            v17 = __OFADD__(v16, v29);
            v16 += v29;
            if (v17)
            {
              goto LABEL_161;
            }

            v33 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v33)
              {
                goto LABEL_165;
              }
            }
          }

          v34 = v14 - v29;
          if (__OFSUB__(v14, v29))
          {
            goto LABEL_159;
          }

          if (v34 < 1)
          {
            goto LABEL_144;
          }

          v35 = &__src[24 * v16];
          if (v16 <= 0 && &v35[24 * v34] > __src && !v16)
          {
            goto LABEL_144;
          }

          v36 = 3 * v34;
LABEL_101:
          v48 = 8 * v36;
          result = __src;
LABEL_143:
          v63 = a3;
          result = memmove(result, v35, v48);
          a3 = v63;
          goto LABEL_144;
        }

LABEL_78:
        v39 = v10 - v16;
        v40 = __OFSUB__(v10, v16);
        if (v27 >= v15)
        {
          if (v40)
          {
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
            return result;
          }

          if (v39 > 0)
          {
            result = &__src[24 * v15];
            v59 = &__src[24 * v16];
            if (v15 != v16 || result >= &v59[24 * v39])
            {
              v60 = a3;
              v61 = __src;
              result = memmove(result, v59, 24 * v39);
              __src = v61;
              a3 = v60;
            }

            v17 = __OFADD__(v15, v39);
            v15 += v39;
            if (v17)
            {
              goto LABEL_163;
            }

            v62 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v62)
              {
                goto LABEL_167;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[24 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v48 = 24 * v5;
              v35 = __src;
              goto LABEL_143;
            }
          }

          goto LABEL_144;
        }

        if (v40)
        {
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (v39 > 0)
        {
          result = &__src[24 * v15];
          v41 = &__src[24 * v16];
          if (v15 != v16 || result >= &v41[24 * v39])
          {
            v42 = a3;
            v43 = __src;
            result = memmove(result, v41, 24 * v39);
            __src = v43;
            a3 = v42;
          }

          v17 = __OFADD__(v15, v39);
          v15 += v39;
          if (v17)
          {
            goto LABEL_162;
          }

          v44 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v44)
            {
              goto LABEL_166;
            }
          }
        }

        result = &__src[24 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v45 = a3;
          v46 = __src;
          result = memmove(result, __src, 24 * v6);
          __src = v46;
          a3 = v45;
        }

        v47 = v6;
        if (v6 >= *a3)
        {
          v47 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_164;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_144;
        }

        v35 = &__src[24 * v47];
        if (v47 <= 0 && &v35[24 * v4] > __src && !v47)
        {
          goto LABEL_144;
        }

        v36 = 3 * v4;
        goto LABEL_101;
      }

LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    if (v15 > 0)
    {
      v52 = &__src[24 * v16 + -24 * v15];
      if (v52 != __src || v52 >= &__src[24 * v15])
      {
        v16 = result;
        v54 = a3;
        v55 = __src;
        memmove(v52, __src, 24 * v15);
        result = v16;
        __src = v55;
        a3 = v54;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_158;
    }

    goto LABEL_116;
  }

  if (v15 > 0)
  {
    v37 = 24 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[24 * v6], __src, v37);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v27 = *a3;
  v38 = *a3 - v6;
  if (*a3 < 1 || (v20 = *a3 == v6, v38 > 0) || v27 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[24 * v38], 24 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_78;
  }

LABEL_116:
  if (v10 < 1)
  {
    goto LABEL_122;
  }

  v56 = a3[2];
  result = &__src[24 * v14];
  v49 = &__src[24 * v56];
  if (v14 >= v56 && result < &v49[24 * v10] && v14 == v56)
  {
    goto LABEL_122;
  }

  v16 = a3;
  v51 = 24 * v10;
LABEL_121:
  result = memmove(result, v49, v51);
  a3 = v16;
LABEL_122:
  a3[2] = v14;
  v57 = a3[1];
  v17 = __OFSUB__(v57, v6);
  v58 = v57 - v6;
  if (!v17)
  {
    goto LABEL_145;
  }

  __break(1u);
LABEL_125:
  if (v14 > 0)
  {
    result = &__src[24 * v15];
    v35 = &__src[24 * v16];
    if (v15 < v16 || result >= &v35[24 * v14] || v15 != v16)
    {
      v48 = 24 * v14;
      goto LABEL_143;
    }
  }

LABEL_144:
  v64 = a3[1];
  v17 = __OFSUB__(v64, v6);
  v58 = v64 - v6;
  if (v17)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

LABEL_145:
  a3[1] = v58;
  return result;
}

void *sub_25DDC695C(void *a1, int64_t a2, char a3)
{
  result = sub_25DDC697C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25DDC697C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE630, &unk_25DDDE5D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE5D0, &qword_25DDDE210);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25DDC6AB0(uint64_t a1)
{
  *(v1 + 16) = a1;

  sub_25DDB7D74();
  return v1;
}

uint64_t sub_25DDC6AE4(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  sub_25DDB7D74();
  return v2;
}

uint64_t sub_25DDC6B38()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for BufferedStream._StateMachine();
  return sub_25DDBDA34(v2);
}

uint64_t sub_25DDC6BA8@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for BufferedStream._StateMachine();
  result = a1(v6);
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_25DDC6C24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    a1 = a2;
  }

  return sub_25DDB7474(a1);
}

uint64_t sub_25DDC6C90@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for BufferedStream._StateMachine();
  return sub_25DDC0DAC(v4, a1);
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

uint64_t sub_25DDC6D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  return sub_25DDC9A38(v5, a2);
}

uint64_t sub_25DDC6E24@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for BufferedStream._StateMachine();
  return sub_25DDBE288(v4, a1);
}

pthread_mutex_t *sub_25DDC6E70()
{
  v1 = v0[2];
  v3 = *(*v0 + 80);
  type metadata accessor for BufferedStream._StateMachine();
  return sub_25DDC9AC8(sub_25DDC92A0);
}

uint64_t sub_25DDC6EFC@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for BufferedStream._StateMachine();
  result = sub_25DDBD03C(v4);
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    *(result + 16) = v7;
    *(result + 24) = v8;
    v9 = sub_25DDC9278;
  }

  else
  {
    v9 = 0;
  }

  *a1 = v9;
  a1[1] = result;
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

uint64_t sub_25DDC6FCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25DDC7024@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = type metadata accessor for BufferedStream._StateMachine();
  return sub_25DDBEB18(v5, v7, v4, v6, a1);
}

uint64_t sub_25DDC70A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = type metadata accessor for BufferedStream._StateMachine();
  result = sub_25DDBFAA8(v4, v6, v5, v7);
  *a1 = result;
  a1[1] = v9;
  a1[2] = v10;
  return result;
}

void sub_25DDC7128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    sub_25DDC713C(a1, a2, a3);
  }
}

void sub_25DDC713C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

id sub_25DDC718C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {

    return (a3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

uint64_t (*sub_25DDC71DC@<X0>(uint64_t (**a1)(uint64_t a1, char a2)@<X8>))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for BufferedStream._StateMachine();
  result = sub_25DDC0024(v4, v5);
  *a1 = result;
  a1[1] = v7;
  return result;
}

unint64_t sub_25DDC7248()
{
  result = qword_27FCCE5A0;
  if (!qword_27FCCE5A0)
  {
    sub_25DDDCF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCCE5A0);
  }

  return result;
}

uint64_t sub_25DDC72A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25DDC9384;

  return sub_25DDBACBC(a1, v7, v8, v4, v5, v6);
}

pthread_mutex_t *sub_25DDC7368()
{
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 40) + 16);
  return sub_25DDBA5B0();
}

uint64_t sub_25DDC73A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for BufferedStream._StateMachine();
  return sub_25DDC04D4(v4, v5, a1);
}

uint64_t sub_25DDC7444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *a1;
  result = v5(a2);
  if (__OFADD__(v7, result))
  {
    __break(1u);
  }

  else
  {
    *a3 = v7 + result;
  }

  return result;
}

unint64_t sub_25DDC74E0()
{
  result = qword_27FCCE5B8;
  if (!qword_27FCCE5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5B0, &qword_25DDDDB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCCE5B8);
  }

  return result;
}

uint64_t sub_25DDC7544(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_25DDC7578(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_25DDC75B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25DDB8C84;

  return sub_25DDC1C1C(a1, v1);
}

uint64_t sub_25DDC76B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC7708()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_25DDC7820()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC7874()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC78B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_25DDC78F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25DDC794C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC79B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC7A04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25DDC7A8C(uint64_t a1, int a2)
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

uint64_t sub_25DDC7AAC(uint64_t result, int a2, int a3)
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

uint64_t sub_25DDC7ADC(uint64_t a1)
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

uint64_t sub_25DDC7AF8(uint64_t result, int a2)
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

uint64_t sub_25DDC7B30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC7B6C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC7BA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC7BE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_25DDC7C48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_25DDC7CF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for BufferedStream._StateMachine._State();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DDC7D9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for BufferedStream._StateMachine._State.Initial();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
    if (v4 <= 0x3F)
    {
      result = type metadata accessor for BufferedStream._StateMachine._State.SourceFinished();
      if (v5 <= 0x3F)
      {
        result = sub_25DDC7E80();
        if (v6 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25DDC7E80()
{
  result = qword_27FCCE5C0;
  if (!qword_27FCCE5C0)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27FCCE5C0);
  }

  return result;
}

uint64_t sub_25DDC7EB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25DDC7F00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_25DDC7F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_25DDC7FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  if (v2 <= 0x3F)
  {
    sub_25DDC8970(319, &qword_27FCCE5C8, &qword_27FCCE5D0, &qword_25DDDE210, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      sub_25DDDCCE8();
      if (v4 <= 0x3F)
      {
        sub_25DDDD088();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
        sub_25DDDCF38();
        sub_25DDDD088();
        if (v5 <= 0x3F)
        {
          sub_25DDC8970(319, &qword_27FCCE5D8, &qword_27FCCE5E0, qword_25DDDE218, MEMORY[0x277CFB920]);
          if (v6 <= 0x3F)
          {
            sub_25DDC8188();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_25DDC8188()
{
  if (!qword_27FCCE5E8)
  {
    v0 = sub_25DDDCCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCCE5E8);
    }
  }
}

uint64_t sub_25DDC81D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC8214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25DDC825C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25DDC82C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC8304(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25DDC8350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_25DDC83A4(uint64_t a1)
{
  sub_25DDC8970(319, &qword_27FCCE5C8, &qword_27FCCE5D0, &qword_25DDDE210, MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_25DDDD088();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    sub_25DDDCF38();
    sub_25DDDD088();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
    swift_getTupleTypeMetadata3();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_25DDC84C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for BufferedStream.Source.WriteResult.CallbackToken();
  if (v3 <= 0x3F)
  {
    sub_25DDDD088();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    sub_25DDDCF38();
    result = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      result = swift_getTupleTypeMetadata3();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25DDC85D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25DDC862C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 16) >> 57) >> 6) | (2 * ((*(a1 + 16) >> 57) & 0x38 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25DDC8688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_25DDC8704()
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

uint64_t sub_25DDC874C(uint64_t *a1, int a2)
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

uint64_t sub_25DDC8794(uint64_t result, int a2, int a3)
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

void sub_25DDC87D0(uint64_t a1)
{
  sub_25DDC8970(319, &qword_27FCCE5C8, &qword_27FCCE5D0, &qword_25DDDE210, MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_25DDDD088();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
    sub_25DDDCF38();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5A8, &qword_25DDDDB60);
    swift_getTupleTypeMetadata3();
    if (v4 <= 0x3F)
    {
      sub_25DDC88FC();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_25DDC88FC()
{
  if (!qword_27FCCE5F0)
  {
    sub_25DDC8970(0, &qword_27FCCE5F8, &qword_27FCCE600, " \v", MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_27FCCE5F0);
    }
  }
}

void sub_25DDC8970(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_25DDC89D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
    swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      sub_25DDC9088(319, &qword_27FCCE608, &qword_27FCCE5A8, &qword_25DDDDB60);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_25DDC8AA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v3)
  {
    v3 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v4 = 24;
  if (v3 > 0x18)
  {
    v4 = v3;
  }

  v5 = 252 - (1u >> (8 * v4));
  if (v4 >= 4)
  {
    v5 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_29;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 < 2)
    {
LABEL_29:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_29;
  }

LABEL_18:
  v11 = (v8 - 1) << v7;
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

void sub_25DDC8BF8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v5)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v5 <= 0x18)
  {
    v5 = 24;
  }

  v6 = 252 - (1u >> (8 * v5));
  if (v5 >= 4)
  {
    v6 = 252;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_19;
    }

LABEL_23:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_23;
  }

LABEL_19:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_39:
    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_39;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_43:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t sub_25DDC8DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  v2 = sub_25DDDCF38();
  v4 = v3;
  result = swift_getTupleTypeMetadata2();
  if (v6 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE588, &qword_25DDDDB18);
    result = swift_getTupleTypeMetadata3();
    if (v7 <= 0x3F)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE5A8, &qword_25DDDDB60);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
      result = swift_getTupleTypeMetadata3();
      if (v8 <= 0x3F)
      {
        if (v4 > 0x3F)
        {
          return v2;
        }

        else
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_25DDC8F48(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_25DDDD088();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE7A0, &qword_25DDDDB20);
  sub_25DDDCF38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
  swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    sub_25DDC9088(319, &qword_27FCCE610, &qword_27FCCE588, &qword_25DDDDB18);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25DDC9088(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE590, &qword_25DDDDB28);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_25DDC9108@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for BufferedStream._StateMachine();
  return sub_25DDC383C(v4, a1);
}

uint64_t sub_25DDC915C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for BufferedStream._StateMachine();
  return sub_25DDC2648(v4, v5, a1);
}

uint64_t sub_25DDC91BC(void *a1, char a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  if ((a2 & 1) == 0)
  {
    return sub_25DDDCF28();
  }

  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE880, &qword_25DDDE8C0);
  return sub_25DDDCF18();
}

uint64_t sub_25DDC9278()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25DDC92A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_25DDB74BC(v2);
  v4 = type metadata accessor for BufferedStream._StateMachine();
  return sub_25DDBCD14(v2, v3, v4);
}

uint64_t sub_25DDC93BC(pthread_mutex_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v4.__sig = 0;
  *v4.__opaque = 0;
  pthread_mutexattr_init(&v4);
  result = pthread_mutex_init(a1, &v4);
  if (result)
  {
    __break(1u);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25DDC9478(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25DDC949C()
{
  sub_25DDDD0D8();
  v0 = swift_dynamicCastClassUnconditional();
  v1 = (*(*v0 + 48) + 7) & 0x1FFFFFFF8;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  result = pthread_mutex_init((v0 + v1), &v3);
  if (!result)
  {
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25DDC9614(uint64_t (*a1)(uint64_t))
{
  result = a1(v1 + ((*(*v1 + 48) + 7) & 0x1FFFFFFF8));
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_25DDC9670()
{
  if (pthread_mutex_destroy((v0 + ((*(*v0 + 48) + 7) & 0x1FFFFFFF8))))
  {
    __break(1u);
  }

  JUMPOUT(0x25F8A4E60);
}

uint64_t sub_25DDC96D4()
{
  sub_25DDC9670();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

pthread_mutex_t *sub_25DDC9788(void (*a1)(uint64_t))
{
  v4 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v1 + 48) + 7) & 0x1FFFFFFF8;
  result = pthread_mutex_lock((v1 + v5));
  if (result)
  {
    __break(1u);
    goto LABEL_8;
  }

  a1(v1 + v4);
  result = (v1 + v5);
  if (v2)
  {
    result = pthread_mutex_unlock(result);
    if (!result)
    {
      return result;
    }

    __break(1u);
  }

  result = pthread_mutex_unlock(result);
  if (result)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_25DDC9860()
{
  v4 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE638, qword_25DDDE5F0);
  v0 = swift_allocObject();
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  if (pthread_mutex_init((v0 + 16), &v3))
  {
    __break(1u);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_25DDC9928(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1 + 16);
  if (result)
  {
    __break(1u);
  }

  return result;
}

pthread_mutex_t *sub_25DDC99B0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = pthread_mutex_lock((a3 + 16));
  if (result)
  {
    __break(1u);
    goto LABEL_8;
  }

  a1();
  result = (a3 + 16);
  if (v3)
  {
    result = pthread_mutex_unlock(result);
    if (!result)
    {
      return result;
    }

    __break(1u);
  }

  result = pthread_mutex_unlock(result);
  if (result)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_25DDC9A38(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LockStorage();
  v4 = sub_25DDC949C();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_25DDC9B50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DDC9BA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DDC9BC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

void type metadata accessor for _opaque_pthread_mutex_t()
{
  if (!qword_27FCCE640)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FCCE640);
    }
  }
}

uint64_t sub_25DDC9C60()
{
  v1 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasAlreadyIteratedRequestBody;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25DDC9CA4(char a1)
{
  v3 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasAlreadyIteratedRequestBody;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_25DDC9DE0()
{
  v1 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStream;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_25DDC9E2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStream;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_25DDC9EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE678, "d\v");
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_25DDC9F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
  swift_beginAccess();
  return sub_25DDCC97C(v1 + v3, a1, &qword_27FCCE680, &qword_25DDDE728);
}

uint64_t sub_25DDC9FC4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
  swift_beginAccess();
  sub_25DDCA024(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_25DDCA024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE680, &qword_25DDDE728);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DDCA178(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_25DDCA1C8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id sub_25DDCA290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStream] = 0;
  v10 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE678, "d\v");
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock;
  *&v9[v12] = sub_25DDC9860();
  *&v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestBody] = a1;
  v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasAlreadyIteratedRequestBody] = 0;
  v22[0] = 0;

  *&v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasSuspendedURLSessionTask] = sub_25DDC9A38(v22, MEMORY[0x277D839B0]);
  *&v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStreamBufferSize] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE688, &qword_25DDDE730);
  sub_25DDCD270(&qword_27FCCE690, &qword_27FCCE688, &qword_25DDDE730);
  sub_25DDB91A4(a3, a4, sub_25DDCA6C0, 0, v22);
  nullsub_1(v13);
  v14 = sub_25DDBC56C();
  v16 = sub_25DDBC59C(v13, v14, v15, v22);
  v18 = v17;
  sub_25DDCC9E4(v22, &qword_27FCCE698, &unk_25DDDE738);
  *&v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseBodyStream] = v16;
  *&v9[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseBodyStreamSource] = v18;
  v21.receiver = v9;
  v21.super_class = v4;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  return v19;
}

id sub_25DDCA4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStream] = 0;
  v10 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE678, "d\v");
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock;
  *&v4[v12] = sub_25DDC9860();
  *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestBody] = a1;
  v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasAlreadyIteratedRequestBody] = 0;
  v22[0] = 0;

  *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasSuspendedURLSessionTask] = sub_25DDC9A38(v22, MEMORY[0x277D839B0]);
  *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStreamBufferSize] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE688, &qword_25DDDE730);
  sub_25DDCD270(&qword_27FCCE690, &qword_27FCCE688, &qword_25DDDE730);
  sub_25DDB91A4(a3, a4, sub_25DDCA6C0, 0, v22);
  nullsub_1(v13);
  v14 = sub_25DDBC56C();
  v16 = sub_25DDBC59C(v13, v14, v15, v22);
  v18 = v17;
  sub_25DDCC9E4(v22, &qword_27FCCE698, &unk_25DDDE738);
  *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseBodyStream] = v16;
  *&v4[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseBodyStreamSource] = v18;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  return v19;
}

uint64_t sub_25DDCA6C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24) >> 1;
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25DDCA6D8(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_25DDCA6F8, 0, 0);
}

uint64_t sub_25DDCA6F8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v1 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE6A0, qword_25DDDE748);
  sub_25DDC99B0(sub_25DDCAB24, v4, v3);

  v5 = v0[2];
  v6 = v0[1];

  return v6(v5);
}

void sub_25DDCA7CC(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v28 = a2;
  v29 = a3;
  v4 = sub_25DDDCD08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  nullsub_1(sub_25DDCAB50);
  v12 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasAlreadyIteratedRequestBody;
  swift_beginAccess();
  if (*(a1 + v12) == 1)
  {
    v13 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestBody;
    if (!*(a1 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestBody))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    sub_25DDDCD18();
    (*(v5 + 104))(v9, *MEMORY[0x277D379D0], v4);
    v14 = sub_25DDDCCF8();
    v15 = *(v5 + 8);
    v15(v9, v4);
    v15(v11, v4);
    if ((v14 & 1) == 0)
    {
      nullsub_1(sub_25DDCAB6C);
      [v28 cancel];
      v22 = 0;
      goto LABEL_9;
    }
  }

  *(a1 + v12) = 1;
  v16 = *(a1 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStreamBufferSize);
  v17 = objc_opt_self();
  v30 = 0;
  v31 = 0;
  [v17 getBoundStreamsWithBufferSize:v16 inputStream:&v30 outputStream:&v31];
  v13 = v31;
  v18 = v30;
  if (!v30)
  {
LABEL_12:
    v26 = v13;
    goto LABEL_13;
  }

  if (v31)
  {
    v19 = *(a1 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestBody);
    v20 = v31;
    v21 = v18;
    if (v19)
    {
      v22 = v21;
      type metadata accessor for HTTPBodyOutputStreamBridge(0);

      v23 = sub_25DDCDE90(v20, v19);
      v24 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_requestStream;
      swift_beginAccess();
      v25 = *(a1 + v24);
      *(a1 + v24) = v23;

LABEL_9:
      *v29 = v22;
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_13:
  sub_25DDDD138();
  __break(1u);
}

uint64_t sub_25DDCAD18(int a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[5] = _Block_copy(aBlock);
  v7 = a2;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_25DDCADA4, 0, 0);
}

uint64_t sub_25DDCADA4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *&v2[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock];
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE6A0, qword_25DDDE748);
  sub_25DDC99B0(sub_25DDCD5F0, v5, v4);

  v6 = v0[2];
  (v1)[2](v1, v6);
  _Block_release(v1);

  v7 = v0[1];

  return v7();
}

pthread_mutex_t *sub_25DDCAEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock);
  v7[2] = a3;
  v7[3] = a4;
  v7[5] = a2;
  return sub_25DDC99B0(sub_25DDCB250, v7, v5);
}

void sub_25DDCAF14(uint64_t a1, unint64_t a2, char *a3, void *a4)
{
  nullsub_1(sub_25DDCCFAC);
  v8 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseBodyStreamSource;
  swift_beginAccess();
  v9 = *&a3[v8];

  sub_25DDCD21C(a1, a2);
  v10 = sub_25DDCD0A0(a1, a2);
  v11 = (2 * *(v10 + 16)) | 1;
  v28[0] = v10;
  v28[1] = v10 + 32;
  v28[2] = 0;
  v28[3] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE688, &qword_25DDDE730);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE790, &unk_25DDDE8A0);
  v14 = sub_25DDCD270(&qword_27FCCE798, &qword_27FCCE790, &unk_25DDDE8A0);
  v15 = sub_25DDB9C2C(v28, v9, v12, v13, v14);
  if (v4)
  {

    nullsub_1(sub_25DDCB3E4);
    [a4 cancel];
  }

  else
  {
    v17 = v16;
    v18 = a3;
    v26 = v15;

    if ((v17 & 1) == 0)
    {
      v19 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_hasSuspendedURLSessionTask;
      v20 = swift_beginAccess();
      v21 = *&v18[v19];
      MEMORY[0x28223BE20](v20);

      sub_25DDC9AC8(sub_25DDCD2B8);

      if (v29 == 1)
      {
        v22 = *&v18[v8];
        v23 = swift_allocObject();
        *(v23 + 16) = v18;
        *(v23 + 24) = a4;

        v24 = v18;
        v25 = a4;
        sub_25DDBA418(v26, sub_25DDCD3A8, v23, v22);
      }
    }
  }
}

id sub_25DDCB2A8(_BYTE *a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    MEMORY[0x28223BE20](a1);
    nullsub_1(sub_25DDCD494);
    return [a4 cancel];
  }

  else
  {
    nullsub_1(sub_25DDCB3C8);
    result = [a4 resume];
    *a1 = 0;
  }

  return result;
}

uint64_t sub_25DDCB4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  return MEMORY[0x2822009F8](sub_25DDCB4DC, 0, 0);
}

uint64_t sub_25DDCB4DC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v1 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  type metadata accessor for ResponseDisposition();
  sub_25DDC99B0(sub_25DDCB7F0, v4, v3);

  v5 = v0[2];
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_25DDCB5A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE680, &qword_25DDDE728);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE678, "d\v");
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  nullsub_1(sub_25DDCB86C);
  v15 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
  swift_beginAccess();
  if (!(*(v11 + 48))(a1 + v15, 1, v10))
  {
    (*(v11 + 16))(v14, a1 + v15, v10);
    v18[0] = a2;
    v16 = a2;
    sub_25DDDCF28();
    (*(v11 + 8))(v14, v10);
  }

  (*(v11 + 56))(v9, 1, 1, v10);
  swift_beginAccess();
  sub_25DDCA024(v9, a1 + v15);
  result = swift_endAccess();
  *a3 = 1;
  return result;
}

void type metadata accessor for ResponseDisposition()
{
  if (!qword_27FCCE778)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FCCE778);
    }
  }
}

uint64_t sub_25DDCBA2C(int a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[5] = _Block_copy(aBlock);
  v8 = a3;
  v9 = a5;

  return MEMORY[0x2822009F8](sub_25DDCBAB8, 0, 0);
}

uint64_t sub_25DDCBAB8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *&v2[OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock];
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  type metadata accessor for ResponseDisposition();
  sub_25DDC99B0(sub_25DDCD5D8, v5, v4);

  v1[2](v1, v0[2]);
  _Block_release(v1);
  v6 = v0[1];

  return v6();
}

pthread_mutex_t *sub_25DDCBBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_callbackLock);
  v6[2] = a3;
  return sub_25DDC99B0(sub_25DDCBEB0, v6, v4);
}

uint64_t sub_25DDCBC10(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE680, &qword_25DDDE728);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE678, "d\v");
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18[-v11];
  v19 = a1;
  nullsub_1(sub_25DDCCEF8);
  v13 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseBodyStreamSource;
  swift_beginAccess();
  v14 = *(a2 + v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCCE688, &qword_25DDDE730);
  sub_25DDBC05C(a1, v14);

  if (a1)
  {
    v16 = OBJC_IVAR____TtC25OpenAPIURLSessionInternal40BidirectionalStreamingURLSessionDelegate_responseContinuation;
    swift_beginAccess();
    if (!(*(v9 + 48))(a2 + v16, 1, v8))
    {
      (*(v9 + 16))(v12, a2 + v16, v8);
      v20 = a1;
      v17 = a1;
      sub_25DDDCF18();
      (*(v9 + 8))(v12, v8);
    }

    (*(v9 + 56))(v7, 1, 1, v8);
    swift_beginAccess();
    sub_25DDCA024(v7, a2 + v16);
    return swift_endAccess();
  }

  return result;
}

id sub_25DDCBF64()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_25DDCBFF8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BidirectionalStreamingURLSessionDelegate()
{
  result = qword_27FCCFC20;
  if (!qword_27FCCFC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25DDCC130()
{
  sub_25DDCC1F8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_25DDCC1F8()
{
  if (!qword_27FCCE770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCCE678, "d\v");
    v0 = sub_25DDDD088();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCCE770);
    }
  }
}

uint64_t sub_25DDCC25C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_25DDC9384;

  return sub_25DDCBA2C(v2, v3, v4, v5, v6);
}

uint64_t sub_25DDCC324(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_25DDC9384;

  return v7();
}

uint64_t sub_25DDCC40C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25DDC9384;

  return sub_25DDCC324(v2, v3, v5);
}

uint64_t sub_25DDCC4CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_25DDB8C84;

  return v8();
}

uint64_t sub_25DDCC5B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25DDC9384;

  return sub_25DDCC4CC(a1, v4, v5, v7);
}

uint64_t sub_25DDCC680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCCE780, "6\v");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_25DDCC97C(a3, v25 - v11, &unk_27FCCE780, "6\v");
  v13 = sub_25DDDCF98();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_25DDCC9E4(v12, &unk_27FCCE780, "6\v");
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

  sub_25DDDCF88();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_25DDDCF08();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_25DDDCE58() + 32;
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

    sub_25DDCC9E4(a3, &unk_27FCCE780, "6\v");

    return v23;
  }

LABEL_8:
  sub_25DDCC9E4(a3, &unk_27FCCE780, "6\v");
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