unint64_t sub_22C777378()
{
  result = qword_27D9BFF38;
  if (!qword_27D9BFF38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BFF38);
  }

  return result;
}

uint64_t sub_22C7773BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BFF60, &unk_22C927B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t payloadAppEntityAllowlist.setter(void *a1)
{
  swift_beginAccess();
  off_27D9BFF70 = a1;
}

uint64_t sub_22C77751C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C777534()
{
  sub_22C36FB38();
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  v0[6] = v3;
  v0[7] = v4;
  if (v3)
  {
    v0[8] = 1;
    sub_22C371D1C(v2);
    v13 = v5;
    v7 = *(v6 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v0[9] = v8;
    *v8 = v9;
    sub_22C37E1A8(v8);

    return v13(v0 + 2, v1 + 32);
  }

  else
  {
    sub_22C36D5E0();
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_22C77763C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    v9 = *(v3 + 56);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_22C77773C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 56);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v4 + 16);
      sub_22C36D270();
      sub_22C590FB8();
      v4 = v18;
    }

    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    if (v6 >= v5 >> 1)
    {
      sub_22C369AB0(v5);
      sub_22C590FB8();
      v4 = v19;
    }

    *(v4 + 16) = v6 + 1;
    *(v4 + 8 * v6 + 32) = v1;
    v7 = *(v0 + 64);
    *(v0 + 56) = v4;
  }

  else
  {

    v7 = *(v0 + 64);
  }

  v8 = *(v0 + 48);
  if (v7 == v8)
  {
    sub_22C36D5E0();
    v10 = *(v0 + 56);

    v9(v10);
    return;
  }

  if (v7 >= v8)
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v0 + 64) = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_18:
    __break(1u);
    return;
  }

  v11 = *(v0 + 40) + 40 * v7;
  sub_22C371D1C(*(v0 + 24));
  v20 = v12;
  v14 = *(v13 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 72) = v15;
  *v15 = v16;
  sub_22C37E1A8();

  v20(v0 + 16, v11 + 32);
}

uint64_t sub_22C7778DC()
{
  sub_22C369A24();
  v1 = *(v0 + 80);
  return v2();
}

uint64_t sub_22C777900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C777918()
{
  sub_22C36FB38();
  v1 = v0[6];
  v2 = *(v0[8] + 16);
  v3 = MEMORY[0x277D84F90];
  v0[9] = v2;
  v0[10] = v3;
  if (v2)
  {
    v0[11] = 1;
    sub_22C371D1C(v1);
    v12 = v4;
    v6 = *(v5 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v0[12] = v7;
    *v7 = v8;
    v9 = sub_22C79198C(v7);
    v10 = v12;
  }

  else
  {
    sub_22C36D5E0();
    v9 = MEMORY[0x277D84F90];
  }

  return v10(v9);
}

uint64_t sub_22C777A14()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (v0)
  {
    v9 = *(v3 + 80);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_22C777B14()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 16);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 80);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = *(v7 + 16);
      sub_22C36D270();
      sub_22C591018();
      v7 = v24;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_22C369AB0(v8);
      sub_22C591018();
      v7 = v25;
    }

    *(v7 + 16) = v9 + 1;
    v10 = (v7 + 32 * v9);
    v10[4] = v3;
    v10[5] = v1;
    v10[6] = v4;
    v10[7] = v5;
    v11 = *(v0 + 88);
    *(v0 + 80) = v7;
  }

  else
  {
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);
    sub_22C456D48(*(v0 + 16), 0);
    v11 = *(v0 + 88);
  }

  v14 = *(v0 + 72);
  if (v11 == v14)
  {
    sub_22C36D5E0();
    v16 = *(v0 + 80);

LABEL_11:
    v15(v16);
    return;
  }

  if (v11 >= v14)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 88) = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      v17 = *(v0 + 64) + 40 * v11;
      sub_22C371D1C(*(v0 + 48));
      v26 = v18;
      v20 = *(v19 + 4);
      swift_task_alloc();
      sub_22C36CC90();
      *(v0 + 96) = v21;
      *v21 = v22;
      v16 = sub_22C79198C();
      v15 = v26;

      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22C777CC4()
{
  sub_22C369A24();
  v1 = *(v0 + 104);
  return v2();
}

uint64_t sub_22C777CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C777D00()
{
  sub_22C36FB38();
  v1 = v0[7];
  v2 = *(v0[9] + 16);
  v3 = MEMORY[0x277D84F90];
  v0[10] = v2;
  v0[11] = v3;
  if (v2)
  {
    v0[12] = 1;
    sub_22C371D1C(v1);
    v12 = v4;
    v6 = *(v5 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v0[13] = v7;
    *v7 = v8;
    v9 = sub_22C79195C(v7);
    v10 = v12;
  }

  else
  {
    sub_22C36D5E0();
    v9 = MEMORY[0x277D84F90];
  }

  return v10(v9);
}

uint64_t sub_22C777DFC()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    v9 = *(v3 + 88);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_22C777EFC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 16);
    v4 = *(v0 + 32);
    v26 = *(v0 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 88);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = *(v6 + 16);
      sub_22C36D270();
      sub_22C591048();
      v6 = v24;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_22C369AB0(v7);
      sub_22C591048();
      v6 = v25;
    }

    *(v6 + 16) = v8 + 1;
    v9 = v6 + 40 * v8;
    *(v9 + 32) = v3;
    *(v9 + 40) = v1;
    *(v9 + 48) = v4;
    *(v9 + 56) = v26;
    v10 = *(v0 + 96);
    *(v0 + 88) = v6;
  }

  else
  {
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    sub_22C791650(*(v0 + 16), 0);
    v10 = *(v0 + 96);
  }

  v14 = *(v0 + 80);
  if (v10 == v14)
  {
    sub_22C36D5E0();
    v16 = *(v0 + 88);

LABEL_11:
    v15(v16);
    return;
  }

  if (v10 >= v14)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 96) = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      v17 = *(v0 + 72) + 40 * v10;
      sub_22C371D1C(*(v0 + 56));
      v27 = v18;
      v20 = *(v19 + 4);
      swift_task_alloc();
      sub_22C36CC90();
      *(v0 + 104) = v21;
      *v21 = v22;
      v16 = sub_22C79195C();
      v15 = v27;

      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22C7780BC()
{
  sub_22C369A24();
  v1 = *(v0 + 112);
  return v2();
}

uint64_t sub_22C7780E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_22C778104, 0, 0);
}

uint64_t sub_22C778104()
{
  sub_22C36FB38();
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0[6];
  v3 = v0[4];
  v4 = *(v2 + 16);
  v0[7] = v4;
  v0[8] = v1;
  if (v4)
  {
    v5 = sub_22C901FAC();
    sub_22C369914(v5);
    v0[9] = 1;
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    sub_22C37FA44();
    v15 = v8;
    v9 = *(v3 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v0[10] = v10;
    *v10 = v11;
    sub_22C791A8C(v10);

    return v15(v0 + 3, v2 + v7);
  }

  else
  {
    sub_22C36D5E0();
    v14 = MEMORY[0x277D84F90];

    return v13(v14);
  }
}

uint64_t sub_22C77824C()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    v9 = *(v3 + 64);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_22C77834C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);

    MEMORY[0x2318B7AA0](v2);
    sub_22C791DFC(*(v0 + 16));
    if (v4)
    {
      sub_22C369AB0(v3);
      sub_22C90A61C();
    }

    sub_22C370018();
    sub_22C90A65C();

    v5 = *(v0 + 72);
    *(v0 + 64) = *(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 72);
  }

  v6 = *(v0 + 56);
  if (v5 == v6)
  {
    sub_22C36D5E0();
    v8 = *(v0 + 64);

    v7(v8);
    return;
  }

  if (v5 >= v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(sub_22C901FAC() - 8);
  *(v0 + 72) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v10 = *(v0 + 48) + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5;
  sub_22C371D1C(*(v0 + 32));
  v16 = v11;
  v13 = *(v12 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 80) = v14;
  *v14 = v15;
  sub_22C791A8C();

  v16(v0 + 24, v10);
}

uint64_t sub_22C77850C()
{
  sub_22C369A24();
  v1 = *(v0 + 88);
  return v2();
}

uint64_t sub_22C778530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_22C3A5908(&qword_27D9BB908, &qword_22C910960) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_22C9093BC();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C778638, 0, 0);
}

uint64_t sub_22C778638()
{
  sub_22C36FB38();
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  v0[11] = 0;
  v0[12] = v4;
  v0[10] = v3;
  if (v3)
  {
    v5 = sub_22C901FAC();
    sub_22C369914(v5);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = (v2 + *v2);
    v8 = v2[1];
    swift_task_alloc();
    sub_22C36CC90();
    v0[13] = v9;
    *v9 = v10;
    v11 = sub_22C791A2C(v9);

    return v18(v11, v1 + v7);
  }

  else
  {
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[5];

    sub_22C36D5E0();
    v17 = MEMORY[0x277D84F90];

    return v16(v17);
  }
}

uint64_t sub_22C7787BC()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    v9 = *(v3 + 96);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C7788BC()
{
  sub_22C3749D8();
  v1 = v0[5];
  v2 = v0[6];
  v3 = sub_22C36CCF8();
  sub_22C36D0A8(v3, v4, v2);
  if (v5)
  {
    sub_22C376B84(v1, &qword_27D9BB908, &qword_22C910960);
    v6 = v0[12];
  }

  else
  {
    v7 = v0[12];
    v8 = v0[8];
    v9 = v0[7];
    v10 = *(v9 + 32);
    v10(v0[9], v1, v2);
    v11 = *(v9 + 16);
    v12 = sub_22C3806B8();
    v13(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[12];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = *(v6 + 16);
      sub_22C36D270();
      sub_22C5903C0();
      v6 = v39;
    }

    v15 = *(v6 + 16);
    if (v15 >= *(v6 + 24) >> 1)
    {
      sub_22C5903C0();
      v6 = v40;
    }

    v16 = v0[8];
    v17 = v0[6];
    v18 = v0[7];
    (*(v18 + 8))(v0[9], v17);
    *(v6 + 16) = v15 + 1;
    v10(v6 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15, v16, v17);
  }

  v19 = v0[10];
  v20 = v0[11] + 1;
  v0[11] = v20;
  v0[12] = v6;
  if (v20 == v19)
  {
    v22 = v0[8];
    v21 = v0[9];
    v23 = v0[5];

    sub_22C36D5E0();
    v24 = sub_22C792134();

    return v25(v24);
  }

  else
  {
    v27 = v0[4];
    v28 = v0[2];
    v29 = sub_22C901FAC();
    sub_22C3699B8(v29);
    v32 = v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v31 + 72) * v20;
    sub_22C37FA44();
    v41 = v33;
    v34 = *(v28 + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v0[13] = v35;
    *v35 = v36;
    v37 = sub_22C791A2C();

    return v41(v37, v32);
  }
}

uint64_t sub_22C778B60()
{
  sub_22C369980();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  sub_22C369A24();
  v5 = v0[14];

  return v4();
}

uint64_t sub_22C778BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = sub_22C90731C();
  v12 = sub_22C369824(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v129 = v17;
  v131 = sub_22C9063DC();
  v18 = sub_22C369824(v131);
  v134 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  v130 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  sub_22C3698F8(v24);
  v122 = sub_22C90952C();
  v25 = sub_22C369824(v122);
  v121 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  v116 = v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA64();
  sub_22C3698F8(v31);
  v140 = sub_22C90941C();
  v32 = sub_22C369824(v140);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  v125 = v37;
  sub_22C369930();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  v117 = v39;
  sub_22C369930();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA58();
  v119 = v41;
  sub_22C369930();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA64();
  v128 = v43;
  v136 = v14;
  v138 = v11;
  v139 = a1;
  v123 = *(v14 + 16);
  v123(a7, a1, v11);
  v44 = type metadata accessor for PayloadFormatter();
  v45 = v44[5];
  v46 = sub_22C90880C();
  sub_22C3699C8(v46);
  v126 = v47;
  v120 = *(v47 + 16);
  v120(a7 + v45, a2, v46);
  *(a7 + v44[6]) = a3;
  v48 = v44[7];
  v49 = sub_22C908AEC();
  sub_22C3699C8(v49);
  (*(v50 + 16))(a7 + v48, a4);
  sub_22C378A4C(a5, a7 + v44[8]);
  v132 = v34[2];
  v132(a7 + v44[9], a6, v140);
  v51 = a7 + v44[10];
  v127 = v46;
  v120(v51, a2, v46);
  *(v51 + *(type metadata accessor for TranscriptValueFetcher(0) + 20)) = a3;
  LOBYTE(v142) = 0;

  sub_22C5F417C(&v142, v128);
  v52 = v34[11];
  v53 = sub_22C38BB08();
  v55 = v54(v53);
  if (v55 == *MEMORY[0x277D72AD0])
  {
    v56 = sub_22C6AF3F0();
    (v132)(v56);
    v57 = v34[12];
    v58 = sub_22C36BAFC();
    v59(v58);
    v60 = *v119;
    v61 = swift_projectBox();
    if ((*(v121 + 88))(v61, v122) == *MEMORY[0x277D72D50])
    {
      (*(v121 + 16))(v118, v61, v122);
      (*(v121 + 96))(v118, v122);
      v62 = *v118;
      v63 = sub_22C9094EC();
      swift_projectBox();
      sub_22C36BBA8(v63);
      v65 = (*(v64 + 88))();
      v66 = v131;
      v67 = v129;
      if (v65 == *MEMORY[0x277D72CE0])
      {

        sub_22C38152C();
        sub_22C791DDC(v68);
        v122 = v34[1];
        v122(v128, v140);
        goto LABEL_17;
      }

      v81 = v65;
      if (v65 == *MEMORY[0x277D72C88])
      {

        goto LABEL_12;
      }

      v114 = *MEMORY[0x277D72CC0];

      v80 = v81 == v114;
      v66 = v131;
      if (v80)
      {
        sub_22C38152C();
        sub_22C791DDC(v115);
        goto LABEL_15;
      }

LABEL_14:
      sub_22C38152C();
      *(a7 + v85) = 0;
LABEL_15:
      v86 = sub_22C791D8C();
      v87(v86);
      goto LABEL_16;
    }

    v66 = v131;
LABEL_13:

    goto LABEL_14;
  }

  v66 = v131;
  if (v55 != *MEMORY[0x277D72AB8])
  {
    goto LABEL_14;
  }

  v69 = sub_22C6AF3F0();
  (v132)(v69);
  v70 = v34[12];
  v71 = sub_22C36BAFC();
  v72(v71);
  v73 = *v117;
  v74 = swift_projectBox();
  if ((*(v121 + 88))(v74, v122) != *MEMORY[0x277D72D50])
  {
    goto LABEL_13;
  }

  sub_22C375D94();
  v75(v116, v74, v122);
  (*(v121 + 96))(v116, v122);
  v76 = *v116;
  v77 = sub_22C9094EC();
  swift_projectBox();
  sub_22C36BBA8(v77);
  LODWORD(v77) = (*(v78 + 88))();
  v79 = *MEMORY[0x277D72C88];

  v80 = v77 == v79;
  v66 = v131;
  if (!v80)
  {
    goto LABEL_14;
  }

LABEL_12:
  v82 = sub_22C791D8C();
  v83(v82);
  sub_22C38152C();
  sub_22C791DDC(v84);
LABEL_16:
  v67 = v129;
LABEL_17:
  sub_22C9040CC();
  v123(v67, a1, v138);
  v88 = sub_22C9063CC();
  v89 = sub_22C90AABC();
  if (sub_22C36FBB4(v89))
  {
    sub_22C36BED8();
    v90 = swift_slowAlloc();
    v144 = sub_22C370060();
    *v90 = 136315138;
    sub_22C7914C4(&qword_27D9BFFE8, MEMORY[0x277D1DFA0]);
    sub_22C6B01B0();
    v142 = sub_22C909F4C();
    v143 = v91;
    sub_22C90A49C();
    v92 = sub_22C37BC08();
    v93 = *(v136 + 8);
    v93(v92, v138);
    v94 = sub_22C372FA4();
    sub_22C36F9F4(v94, v95, v96);
    sub_22C38B194();

    *(v90 + 4) = v67;
    _os_log_impl(&dword_22C366000, v88, v89, "Payload Expression requested with payload : %s", v90, 0xCu);
    sub_22C792208();
    sub_22C3699EC();
    sub_22C3699EC();
  }

  else
  {

    v93 = *(v136 + 8);
    v93(v67, v138);
  }

  v97 = *(v134 + 8);
  v97(v124, v66);
  sub_22C9040CC();
  v132(v125, a6, v140);
  v98 = sub_22C9063CC();
  v99 = sub_22C90AABC();
  if (sub_22C36FBB4(v99))
  {
    sub_22C36BED8();
    v100 = swift_slowAlloc();
    v144 = sub_22C370060();
    *v100 = 136315138;
    v142 = sub_22C7F5E00();
    v143 = v101;
    sub_22C90A49C();
    v102 = sub_22C38B194();
    v122(v102, v140);
    v103 = sub_22C372FA4();
    sub_22C36F9F4(v103, v104, v105);
    sub_22C38B194();

    *(v100 + 4) = v125;
    _os_log_impl(&dword_22C366000, v98, v99, "Payload Expression found TypeInstance : %s", v100, 0xCu);
    sub_22C792208();
    sub_22C3699EC();
    sub_22C372FB0();

    v122(a6, v140);
    sub_22C36FF94(a5);
    v106 = sub_22C791DC0();
    v107(v106);
    (*(v126 + 8))(a2, v127);
    v93(v139, v138);
    v108 = v130;
    v109 = v131;
  }

  else
  {

    v122(a6, v140);
    sub_22C36FF94(a5);
    v110 = sub_22C791DC0();
    v111(v110);
    (*(v126 + 8))(a2, v127);
    v93(v139, v138);
    v112 = sub_22C38A990();
    (v122)(v112);
    v108 = sub_22C372164();
  }

  return (v97)(v108, v109);
}

uint64_t sub_22C779794()
{
  sub_22C369980();
  v1[14] = v2;
  v1[15] = v0;
  v3 = type metadata accessor for PayloadFormatter();
  v1[16] = v3;
  sub_22C369914(v3);
  v5 = *(v4 + 64);
  v1[17] = sub_22C3699D4();
  v6 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  v1[18] = sub_22C3699D4();
  v9 = sub_22C90952C();
  v1[19] = v9;
  sub_22C3699B8(v9);
  v1[20] = v10;
  v12 = *(v11 + 64);
  v1[21] = sub_22C36D0D4();
  v1[22] = swift_task_alloc();
  v13 = sub_22C9063DC();
  v1[23] = v13;
  sub_22C3699B8(v13);
  v1[24] = v14;
  v16 = *(v15 + 64);
  v1[25] = sub_22C36D0D4();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v17 = sub_22C9001BC();
  v1[36] = v17;
  sub_22C3699B8(v17);
  v1[37] = v18;
  v20 = *(v19 + 64);
  v1[38] = sub_22C3699D4();
  v21 = sub_22C9093BC();
  v1[39] = v21;
  sub_22C3699B8(v21);
  v1[40] = v22;
  v24 = *(v23 + 64);
  v1[41] = sub_22C36D0D4();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v25 = sub_22C90021C();
  v1[52] = v25;
  sub_22C3699B8(v25);
  v1[53] = v26;
  v28 = *(v27 + 64);
  v1[54] = sub_22C36D0D4();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v29 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v29);
  v31 = *(v30 + 64);
  v1[60] = sub_22C36D0D4();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v32 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_22C779B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_22C791C7C();
  sub_22C791D14();
  v50 = v48[15];
  switch(*(v50 + *(v48[16] + 44)))
  {
    case 1:
      v48[69] = MEMORY[0x2318B47E0]();
      v73 = swift_task_alloc();
      v48[70] = v73;
      *(v73 + 16) = v50;
      v74 = sub_22C791D50(dword_22C925BF0);
      v48[71] = v74;
      *v74 = v48;
      v74[1] = sub_22C77A054;
      goto LABEL_7;
    case 2:
      v48[73] = MEMORY[0x2318B47E0]();
      v69 = swift_task_alloc();
      v48[74] = v69;
      *(v69 + 16) = v50;
      v70 = sub_22C791D50(dword_22C925BF0);
      v48[75] = v70;
      *v70 = v48;
      v70[1] = sub_22C77A910;
      goto LABEL_7;
    case 3:
      v48[77] = MEMORY[0x2318B47E0]();
      v71 = swift_task_alloc();
      v48[78] = v71;
      *(v71 + 16) = v50;
      v72 = sub_22C791D50(dword_22C925BD8);
      v48[79] = v72;
      *v72 = v48;
      v72[1] = sub_22C77BA5C;
LABEL_7:
      sub_22C7919D4();

      result = v78(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
      break;
    default:
      v51 = v48[25];
      v52 = v48[17];
      sub_22C9040CC();
      v53 = sub_22C37170C();
      sub_22C790F50(v53, v54);
      v55 = sub_22C9063CC();
      v56 = sub_22C90AADC();
      v57 = sub_22C5CAB64(v56);
      v58 = v48[24];
      v59 = v48[25];
      v60 = v48[23];
      v61 = v48[17];
      if (v57)
      {
        a42 = v48[25];
        v62 = v48[16];
        sub_22C36BED8();
        swift_slowAlloc();
        a43 = sub_22C388D58();
        *v49 = 136315138;
        v63 = v61 + *(v62 + 36);
        v48[2] = sub_22C7F5E00();
        v48[3] = v64;
        v65 = sub_22C90A49C();
        sub_22C790FB4(v61);
        v66 = sub_22C380120();
        sub_22C36F9F4(v66, v67, v68);
        sub_22C37BC08();

        *(v49 + 4) = v65;
        sub_22C5CD33C(&dword_22C366000, v55, v56, "Received request for unsupported typeInstance: %s");
        sub_22C3817B8();
        sub_22C370510();

        (*(v58 + 8))(a42, v60);
      }

      else
      {

        sub_22C790FB4(v61);
        (*(v58 + 8))(v59, v60);
      }

      type metadata accessor for InterpreterError();
      sub_22C373954();
      sub_22C7914C4(v84, v85);
      v86 = sub_22C3700B4();
      sub_22C7920F8(v86, v87);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_22C791DEC();
      v88 = v48[65];
      v90 = v48[63];
      v89 = v48[64];
      v92 = v48[61];
      v91 = v48[62];
      v93 = v48[59];
      v94 = v48[60];
      sub_22C79178C();
      v104 = v95;

      sub_22C38C49C();
      sub_22C7919D4();

      result = v97(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v104, a42, a43, a44, a45, a46, a47, a48);
      break;
  }

  return result;
}

void sub_22C77A054()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 568);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    v11 = v5[70];
    v12 = v5[69];

    v5[72] = v3;

    sub_22C36BB08();

    MEMORY[0x2822009F8](v13, v14, v15);
  }
}

void sub_22C77A910()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 600);
  *v4 = *v1;
  v3[76] = v7;

  if (v0)
  {
  }

  else
  {
    v8 = v3[74];
    v9 = v3[73];

    sub_22C374448();

    MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_22C77BA5C()
{
  v2 = *v1;
  v3 = *v1;
  sub_22C369970();
  *v4 = v3;
  v5 = v2[79];
  v6 = *v1;
  sub_22C36D994();
  *v7 = v6;
  v3[80] = v8;

  v9 = v2[78];
  v10 = v2[77];

  if (v0)
  {
    v11 = v3[68];
    v12 = v3[67];
    v13 = v3[66];
    v14 = v3[65];
    v15 = v3[63];
    v16 = v3[64];
    v17 = v3[61];
    v18 = v3[62];
    v20 = v3[59];
    v19 = v3[60];
    v28 = v3[58];
    v29 = v3[57];
    v30 = v3[56];
    v31 = v3[55];
    v32 = v3[54];
    v33 = v3[51];
    v34 = v3[50];
    v35 = v3[49];
    v36 = v3[48];
    v37 = v3[47];
    v38 = v3[46];
    v39 = v3[45];
    v40 = v3[44];
    v41 = v3[43];
    v42 = v3[42];
    v43 = v3[41];
    v44 = v3[38];
    v45 = v3[35];
    v46 = v3[34];
    v47 = v3[33];
    v48 = v3[32];
    v49 = v3[31];
    v50 = v3[30];
    v51 = v3[29];
    v52 = v3[28];
    v53 = v3[27];
    v54 = v3[26];
    v55 = v3[25];
    v56 = v3[22];
    v57 = v3[21];
    v22 = v3 + 17;
    v21 = v3[17];
    v58 = v22[1];

    sub_22C369A24();

    return v23();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v25, v26, v27);
  }
}

uint64_t sub_22C77BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void (*a41)(void, void, void), uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_22C791C7C();
  sub_22C791D14();
  v49 = v48[39];
  sub_22C58B008(v48[80], v48[18]);
  v50 = sub_22C36CCF8();
  sub_22C36D0A8(v50, v51, v49);
  if (v52)
  {
    v53 = v48[80];
    v54 = v48[26];
    v55 = v48[18];

    sub_22C376B84(v55, &qword_27D9BB908, &qword_22C910960);
    sub_22C9040CC();
    v56 = sub_22C9063CC();
    v57 = sub_22C90AADC();
    if (sub_22C370048(v57))
    {
      *sub_22C36D240() = 0;
      sub_22C36BB14(&dword_22C366000, v58, v59, "All rendered entities were none or empty or failed file conversion");
      sub_22C372FB0();
    }

    v60 = v48[26];
    v61 = v48[23];
    v62 = v48[24];

    v63 = sub_22C371810();
    v64(v63);
    type metadata accessor for InterpreterError();
    sub_22C373954();
    sub_22C7914C4(v65, v66);
    v67 = sub_22C3700B4();
    sub_22C37E7C4(v67, v68);
    swift_storeEnumTagMultiPayload();
    a42 = v61;
    swift_willThrow();
    goto LABEL_6;
  }

  v80 = v48[40];
  v81 = v48[15];
  v82 = v48[16];
  v85 = *(v80 + 32);
  v83 = v80 + 32;
  v84 = v85;
  v85(v48[44], v48[18], v48[39]);
  v86 = v81 + *(v82 + 36);
  v87 = sub_22C5FB484();
  v88 = v48[80];
  if ((v87 & 1) == 0)
  {
    v114 = *(v88 + 16);
    v115 = v48[80];

    if (v114 == 1)
    {
      v116 = v48[44];
      v118 = v48[40];
      v117 = v48[41];
      v119 = v48[39];
      v120 = v48[28];
      sub_22C9040CC();
      v121 = *(v118 + 16);
      v122 = sub_22C36D7E0();
      v123(v122);
      v124 = sub_22C9063CC();
      LODWORD(a41) = sub_22C90AABC();
      v125 = sub_22C36FBB4(a41);
      v127 = v48[40];
      v126 = v48[41];
      v128 = v48[39];
      v129 = v48[28];
      v131 = v48[23];
      v130 = v48[24];
      if (v125)
      {
        sub_22C36BED8();
        swift_slowAlloc();
        a42 = v83;
        a40 = sub_22C388D58();
        a43 = a40;
        *v83 = 136315138;
        sub_22C36A32C();
        sub_22C7914C4(v132, v133);
        sub_22C6B01B0();
        v48[4] = sub_22C909F4C();
        v48[5] = v134;
        sub_22C90A49C();
        a38 = v129;
        a39 = v131;
        v136 = v135;
        v137 = sub_22C7918C4();
        v138(v137);
        v139 = sub_22C791C70();
        sub_22C36F9F4(v139, v136, v140);
        sub_22C37FF48();

        *(v83 + 4) = v126;
        sub_22C5CD33C(&dword_22C366000, v124, a41, "Payload value: %s");
        sub_22C791870();
        sub_22C3699EC();

        (*(v130 + 8))(a38, v131);
      }

      else
      {

        v163 = sub_22C7918C4();
        v164(v163);
        v165 = *(v130 + 8);
        v166 = sub_22C36D29C();
        v168(v166, v167);
      }

      v84(v48[14], v48[44], v48[39]);
      goto LABEL_20;
    }

    v144 = v48[27];
    sub_22C9040CC();
    v145 = sub_22C9063CC();
    v146 = sub_22C90AADC();
    if (sub_22C5CAB64(v146))
    {
      v147 = sub_22C36D240();
      sub_22C383878(v147);
      _os_log_impl(&dword_22C366000, v145, v146, "Asked to render a collection of Files, but to return it as a single file.", v88, 2u);
      sub_22C386DA4();
    }

    v148 = v48[44];
    v149 = v48[39];
    v150 = v48[40];
    v151 = v48[27];
    v152 = v48[23];
    v153 = v48[24];

    v154 = *(v153 + 8);
    v155 = sub_22C36ECB4();
    v156(v155);
    type metadata accessor for InterpreterError();
    sub_22C373954();
    sub_22C7914C4(v157, v158);
    v159 = sub_22C36D148();
    swift_storeEnumTagMultiPayload();
    a42 = v159;
    swift_willThrow();
    v160 = *(v150 + 8);
    v161 = sub_22C36BBCC();
    v162(v161);
LABEL_6:
    v69 = v48[68];
    v70 = v48[67];
    v71 = v48[66];
    v72 = v48[65];
    v74 = v48[63];
    v73 = v48[64];
    v76 = v48[61];
    v75 = v48[62];
    v77 = v48[59];
    v78 = v48[60];
    sub_22C79178C();
    a41 = v79;

    sub_22C38C49C();
    goto LABEL_21;
  }

  a41 = v84;
  a42 = v83;
  v90 = v48[43];
  v89 = v48[44];
  v189 = v48[42];
  v92 = v48[39];
  v91 = v48[40];
  v93 = v48[29];
  v94 = v48[21];
  sub_22C90906C();
  v95 = swift_allocBox();
  sub_22C90935C();
  sub_22C90903C();
  *v90 = v95;
  (*(v91 + 104))(v90, *MEMORY[0x277D729E0], v92);
  sub_22C9040CC();
  (*(v91 + 16))(v189, v90, v92);
  v96 = sub_22C9063CC();
  v97 = sub_22C90AABC();
  v98 = os_log_type_enabled(v96, v97);
  v99 = v48[44];
  v100 = v48[42];
  v101 = v48[39];
  v102 = v48[40];
  v103 = v48[29];
  v104 = v48[24];
  a40 = v48[23];
  if (v98)
  {
    sub_22C36BED8();
    swift_slowAlloc();
    a39 = v103;
    v105 = sub_22C791C28();
    sub_22C79209C(v105);
    *v103 = 136315138;
    sub_22C36A32C();
    sub_22C7914C4(v106, v107);
    sub_22C633E0C();
    v48[6] = sub_22C909F4C();
    v48[7] = v108;
    sub_22C90A49C();
    LODWORD(a36) = v97;
    a37 = v99;
    v109 = *(v102 + 8);
    v110 = sub_22C37170C();
    v109(v110);
    v111 = sub_22C37B220();
    sub_22C36F9F4(v111, v112, v113);
    sub_22C38B194();

    *(v103 + 4) = v100;
    _os_log_impl(&dword_22C366000, v96, v97, "Payload value: %s", v103, 0xCu);
    sub_22C791870();
    sub_22C37B09C();

    (*(v104 + 8))(v103, a40);
    (v109)(v99, v101);
  }

  else
  {

    v141 = *(v102 + 8);
    v142 = sub_22C37170C();
    v141(v142);
    (*(v104 + 8))(v103, a40);
    v143 = sub_22C372FCC();
    v141(v143);
  }

  a41(v48[14], v48[43], v48[39]);
LABEL_20:
  v169 = v48[68];
  v170 = v48[67];
  v171 = v48[66];
  v172 = v48[65];
  v174 = v48[63];
  v173 = v48[64];
  v175 = v48[61];
  v176 = v48[62];
  v177 = v48[59];
  v178 = v48[60];
  a11 = v48[58];
  a12 = v48[57];
  a13 = v48[56];
  a14 = v48[55];
  v179 = v48[50];
  a15 = v48[54];
  a16 = v48[51];
  sub_22C38AAC8();

  sub_22C369A24();
LABEL_21:
  sub_22C7919D4();

  return v181(v180, v181, v182, v183, v184, v185, v186, v187, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_22C77C728(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22C77C7C4;

  return sub_22C77C8D4();
}

uint64_t sub_22C77C7C4()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    *(v5 + 32) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C77C8D4()
{
  sub_22C369980();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22C9093BC();
  v1[4] = v3;
  sub_22C3699B8(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_22C36D0D4();
  v1[7] = swift_task_alloc();
  v7 = sub_22C901FAC();
  v1[8] = v7;
  sub_22C3699B8(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = sub_22C36D0D4();
  v1[11] = swift_task_alloc();
  v11 = sub_22C9063DC();
  v1[12] = v11;
  sub_22C3699B8(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = sub_22C36D0D4();
  v1[15] = swift_task_alloc();
  v15 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  v1[16] = sub_22C3699D4();
  v18 = sub_22C9025EC();
  v1[17] = v18;
  sub_22C3699B8(v18);
  v1[18] = v19;
  v21 = *(v20 + 64);
  v1[19] = sub_22C36D0D4();
  v1[20] = swift_task_alloc();
  v22 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_22C77CAB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_t log, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22C37B51C();
  v33 = v30[16];
  v32 = v30[17];
  v35 = v30[2];
  v34 = v30[3];
  v36 = type metadata accessor for PayloadFormatter();
  sub_22C7921A8(v36);
  v37 = sub_22C383C3C();
  sub_22C36D0A8(v37, v38, v32);
  if (v39)
  {
    v40 = v30[14];
    v42 = v30[9];
    v41 = v30[10];
    v43 = v30[8];
    v44 = v30[2];
    sub_22C376B84(v30[16], &qword_27D9BF610, &qword_22C922B50);
    sub_22C9040CC();
    v45 = sub_22C375B38();
    v46(v45);
    v47 = sub_22C9063CC();
    v48 = sub_22C90AADC();
    v49 = sub_22C791C0C(v48);
    v51 = v30[13];
    v50 = v30[14];
    v52 = v30[12];
    v54 = v30[9];
    v53 = v30[10];
    v55 = v30[8];
    if (v49)
    {
      sub_22C36BED8();
      swift_slowAlloc();
      a17 = v52;
      LODWORD(a15) = v31;
      a18 = sub_22C388D58();
      *v52 = 136315138;
      sub_22C36CB4C();
      sub_22C7914C4(v56, v57);
      sub_22C6B01B0();
      sub_22C90B47C();
      a16 = v50;
      v58 = sub_22C37FA34();
      v59(v58);
      v60 = sub_22C36D390();
      sub_22C36F9F4(v60, v61, v62);
      sub_22C3743B4();
      *(v52 + 4) = v53;
      sub_22C36D418(&dword_22C366000, "Could not fetch value for statementID %s", v31);
      sub_22C3817B8();
      sub_22C370510();

      (*(v51 + 8))(v50, v52);
    }

    else
    {

      v102 = sub_22C37FA34();
      v103(v102);
      v104 = sub_22C3805D8();
      v106(v104, v105);
    }

    type metadata accessor for InterpreterError();
    sub_22C373954();
    sub_22C7914C4(v107, v108);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22C791BE8();

    sub_22C369A24();
    sub_22C381608();

    return v110(v109, v110, v111, v112, v113, v114, v115, v116, a9, a10, a11, a12, log, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    v63 = v30[19];
    v64 = v30[20];
    v65 = v30[18];
    v67 = v30[15];
    v66 = v30[16];
    v68 = v30[11];
    v69 = v30[8];
    v70 = v30[9];
    v71 = v30[2];
    v72 = *(v65 + 32);
    v73 = sub_22C6AF81C();
    v74(v73);
    sub_22C9040CC();
    (*(v70 + 16))(v68, v71, v69);
    v75 = *(v65 + 16);
    v76 = sub_22C36D7E0();
    v77(v76);
    v78 = sub_22C9063CC();
    v79 = sub_22C90AABC();
    v80 = sub_22C36FBB4(v79);
    v81 = v30[18];
    v82 = v30[17];
    v130 = v82;
    v131 = v30[19];
    v83 = v30[15];
    v85 = v30[12];
    v84 = v30[13];
    v86 = v30[11];
    v88 = v30[8];
    v87 = v30[9];
    if (v80)
    {
      v127 = v79;
      v89 = v30[7];
      loga = v78;
      v90 = v30[5];
      v126 = v30[4];
      swift_slowAlloc();
      v132 = sub_22C791C28();
      *v85 = 67109378;
      v129 = v83;
      v91 = sub_22C901F9C();
      v92 = *(v87 + 8);
      v93 = sub_22C379FC8();
      v94(v93);
      *(v85 + 4) = v91;
      *(v85 + 8) = 2080;
      sub_22C90207C();
      sub_22C36A32C();
      sub_22C7914C4(v95, v96);
      v97 = v89;
      sub_22C909F4C();
      sub_22C791D08();
      (*(v90 + 8))(v89, v126);
      v98 = *(v81 + 8);
      v98(v131, v130);
      v99 = sub_22C372164();
      sub_22C36F9F4(v99, v100, v101);
      sub_22C791F48();

      *(v85 + 10) = v97;
      _os_log_impl(&dword_22C366000, loga, v127, "Formatting payload for statementID %u: %s", v85, 0x12u);
      sub_22C36FF94(v132);
      sub_22C386DA4();
      sub_22C37B09C();

      (*(v84 + 8))(v129, v85);
    }

    else
    {
      v118 = *(v87 + 8);
      v119 = sub_22C379FC8();
      v120(v119);

      v98 = *(v81 + 8);
      v98(v131, v130);
      (*(v84 + 8))(v83, v85);
    }

    v30[21] = v98;
    v121 = v30[20];
    v122 = v30[6];
    sub_22C90207C();
    v123 = swift_task_alloc();
    v30[22] = v123;
    *v123 = v30;
    v123[1] = sub_22C77CFC8;
    v124 = v30[3];
    sub_22C386674(v30[6]);
    sub_22C381608();

    return sub_22C77DAE4();
  }
}

uint64_t sub_22C77CFC8()
{
  sub_22C36FB38();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = v4[22];
  v6 = v4[6];
  v7 = v4[5];
  v8 = v4[4];
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  *(v12 + 184) = v11;
  *(v12 + 192) = v0;

  v13 = sub_22C371810();
  v14(v13);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22C77D118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[20];
  v14 = v12[21];
  v15 = v12[17];
  v16 = v12[18];
  if (v12[23])
  {
    v17 = v12[23];

    sub_22C795BBC();
    v19 = v18;

    v20 = sub_22C36BAFC();
    v14(v20);
    if (v19)
    {
    }

    else
    {
      v22 = v12[23];
    }
  }

  else
  {
    v21 = sub_22C36BAFC();
    v14(v21);
  }

  sub_22C791BE8();

  sub_22C36D5E0();
  sub_22C792134();
  sub_22C372034();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_22C77D224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 144) + 8;
  (*(v12 + 168))(*(v12 + 160), *(v12 + 136));
  v14 = *(v12 + 192);
  sub_22C791BE8();

  sub_22C369A24();
  sub_22C372034();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_22C77D2DC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22C77D378;

  return sub_22C77C8D4();
}

uint64_t sub_22C77D378()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    *(v5 + 32) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C77D4A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22C77D554;

  return sub_22C77D6DC();
}

uint64_t sub_22C77D554()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 24);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;

  if (v0)
  {
    sub_22C369A24();

    return v6();
  }

  else
  {
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_22C77D66C()
{
  sub_22C369980();
  v1 = *(v0 + 16);
  sub_22C9093BC();
  sub_22C36BECC();
  sub_22C36C640(v2, v3, v4, v5);
  sub_22C369A24();

  return v6();
}

uint64_t sub_22C77D6DC()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22C901FAC();
  v1[5] = v4;
  sub_22C3699B8(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_22C3699D4();
  v8 = sub_22C9063DC();
  v1[8] = v8;
  sub_22C3699B8(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = sub_22C3699D4();
  v12 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  sub_22C369914(v12);
  v14 = *(v13 + 64);
  v1[11] = sub_22C3699D4();
  v15 = sub_22C9025EC();
  v1[12] = v15;
  sub_22C3699B8(v15);
  v1[13] = v16;
  v18 = *(v17 + 64);
  v1[14] = sub_22C3699D4();
  v19 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_22C77D848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22C388D74();
  v18 = v16[11];
  v17 = v16[12];
  v20 = v16[3];
  v19 = v16[4];
  v21 = type metadata accessor for PayloadFormatter();
  sub_22C7921A8(v21);
  v22 = sub_22C383C3C();
  sub_22C36D0A8(v22, v23, v17);
  if (v24)
  {
    v26 = v16[10];
    v25 = v16[11];
    sub_22C791E3C();
    sub_22C376B84(v27, &qword_27D9BF610, &qword_22C922B50);
    sub_22C9040CC();
    v28 = sub_22C375B38();
    v29(v28);
    v30 = sub_22C9063CC();
    v31 = sub_22C90AADC();
    v32 = sub_22C791C0C(v31);
    v34 = v16[9];
    v33 = v16[10];
    v35 = v16[7];
    v36 = v16[8];
    v38 = v16[5];
    v37 = v16[6];
    if (v32)
    {
      sub_22C36BED8();
      swift_slowAlloc();
      a11 = v36;
      sub_22C388D58();
      sub_22C791E2C();
      *v36 = 136315138;
      sub_22C36CB4C();
      sub_22C7914C4(v39, v40);
      sub_22C6B01B0();
      sub_22C90B47C();
      a10 = v33;
      v41 = sub_22C37FA34();
      v42(v41);
      v43 = sub_22C36D390();
      sub_22C36F9F4(v43, v44, v45);
      sub_22C3743B4();
      *(v36 + 4) = v35;
      sub_22C36D418(&dword_22C366000, "Could not fetch value for statementID %s", BYTE4(a9));
      sub_22C3817B8();
      sub_22C370510();

      (*(v34 + 8))(v33, v36);
    }

    else
    {

      v58 = sub_22C37FA34();
      v59(v58);
      v60 = sub_22C3805D8();
      v62(v60, v61);
    }

    v63 = v16[14];
    v65 = v16[10];
    v64 = v16[11];
    v66 = v16[7];
    type metadata accessor for InterpreterError();
    sub_22C373954();
    sub_22C7914C4(v67, v68);
    sub_22C36D148();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_22C369A24();
  }

  else
  {
    v46 = v16[13];
    v48 = v16[11];
    v47 = v16[12];
    v49 = v16[10];
    v50 = v16[7];
    v51 = v16[2];
    v52 = *(v46 + 32);
    v53 = sub_22C37170C();
    v54(v53);
    sub_22C90207C();
    v55 = *(v46 + 8);
    v56 = sub_22C36BBCC();
    v57(v56);

    sub_22C369A24();
  }

  sub_22C36EC40();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22C77DAE4()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_22C90906C();
  v1[6] = v3;
  sub_22C3699B8(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = sub_22C3699D4();
  v7 = sub_22C90910C();
  v1[9] = v7;
  sub_22C3699B8(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = sub_22C36D0D4();
  v1[12] = swift_task_alloc();
  v11 = sub_22C90919C();
  v1[13] = v11;
  sub_22C3699B8(v11);
  v1[14] = v12;
  v14 = *(v13 + 64);
  v1[15] = sub_22C36D0D4();
  v1[16] = swift_task_alloc();
  v15 = sub_22C9090BC();
  v1[17] = v15;
  sub_22C3699B8(v15);
  v1[18] = v16;
  v18 = *(v17 + 64);
  v1[19] = sub_22C3699D4();
  v19 = sub_22C90046C();
  v1[20] = v19;
  sub_22C3699B8(v19);
  v1[21] = v20;
  v22 = *(v21 + 64);
  v1[22] = sub_22C3699D4();
  v23 = sub_22C9091EC();
  v1[23] = v23;
  sub_22C3699B8(v23);
  v1[24] = v24;
  v26 = *(v25 + 64);
  v1[25] = sub_22C3699D4();
  v27 = sub_22C3A5908(&qword_27D9BD898, &unk_22C919A90);
  v1[26] = v27;
  sub_22C3699B8(v27);
  v1[27] = v28;
  v30 = *(v29 + 64);
  v1[28] = sub_22C3699D4();
  v31 = sub_22C90922C();
  v1[29] = v31;
  sub_22C3699B8(v31);
  v1[30] = v32;
  v34 = *(v33 + 64);
  v1[31] = sub_22C3699D4();
  v35 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v35);
  v37 = *(v36 + 64);
  v1[32] = sub_22C3699D4();
  v38 = sub_22C90926C();
  v1[33] = v38;
  sub_22C3699B8(v38);
  v1[34] = v39;
  v41 = *(v40 + 64);
  v1[35] = sub_22C3699D4();
  v42 = sub_22C9092DC();
  v1[36] = v42;
  sub_22C3699B8(v42);
  v1[37] = v43;
  v45 = *(v44 + 64);
  v1[38] = sub_22C3699D4();
  v46 = sub_22C90021C();
  v1[39] = v46;
  sub_22C3699B8(v46);
  v1[40] = v47;
  v49 = *(v48 + 64);
  v1[41] = sub_22C3699D4();
  v50 = sub_22C90929C();
  v1[42] = v50;
  sub_22C3699B8(v50);
  v1[43] = v51;
  v53 = *(v52 + 64);
  v1[44] = sub_22C3699D4();
  v54 = sub_22C90930C();
  v1[45] = v54;
  sub_22C3699B8(v54);
  v1[46] = v55;
  v57 = *(v56 + 64);
  v1[47] = sub_22C3699D4();
  v58 = sub_22C9063DC();
  v1[48] = v58;
  sub_22C3699B8(v58);
  v1[49] = v59;
  v61 = *(v60 + 64);
  v1[50] = sub_22C36D0D4();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v62 = sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300);
  sub_22C369914(v62);
  v64 = *(v63 + 64);
  v1[63] = sub_22C3699D4();
  v65 = sub_22C90063C();
  v1[64] = v65;
  sub_22C3699B8(v65);
  v1[65] = v66;
  v68 = *(v67 + 64);
  v1[66] = sub_22C36D0D4();
  v1[67] = swift_task_alloc();
  v69 = sub_22C3A5908(&qword_27D9BFE40, &qword_22C925A00);
  sub_22C369914(v69);
  v71 = *(v70 + 64);
  v1[68] = sub_22C3699D4();
  v72 = sub_22C3A5908(&qword_27D9BFE78, &qword_22C925A30);
  sub_22C369914(v72);
  v74 = *(v73 + 64);
  v1[69] = sub_22C3699D4();
  v75 = sub_22C90014C();
  v1[70] = v75;
  sub_22C3699B8(v75);
  v1[71] = v76;
  v78 = *(v77 + 64);
  v1[72] = sub_22C36D0D4();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v79 = sub_22C90931C();
  v1[75] = v79;
  sub_22C3699B8(v79);
  v1[76] = v80;
  v82 = *(v81 + 64);
  v1[77] = sub_22C36D0D4();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v83 = sub_22C9093BC();
  v1[83] = v83;
  sub_22C3699B8(v83);
  v1[84] = v84;
  v86 = *(v85 + 64);
  v1[85] = sub_22C36D0D4();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v87 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v87);
  v89 = *(v88 + 64);
  v1[104] = sub_22C36D0D4();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v90 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v90, v91, v92);
}

uint64_t sub_22C77E374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 848);
  v14 = *(v12 + 840);
  v15 = *(v12 + 832);
  v16 = *(v12 + 824);
  v17 = *(v12 + 672);
  v18 = *(v12 + 664);
  v19 = *(v12 + 312);
  v20 = *(v12 + 32);
  v21 = sub_22C3702F4();
  sub_22C36C640(v21, v22, v23, v19);
  v24 = sub_22C381B6C();
  sub_22C36C640(v24, v25, v26, v19);
  sub_22C36A748();
  sub_22C791F6C(v27, v28, v29, v19);
  v30 = type metadata accessor for PayloadLayout();
  sub_22C3856A0(v30);
  v31 = sub_22C372468();
  *(v12 + 856) = sub_22C79184C(v31, v32, v33, v15, v34, v35, v36, v37, v742);
  v38 = v17 + 16;
  v39 = *(v17 + 16);
  *(v12 + 864) = v39;
  *(v12 + 872) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40 = sub_22C36D29C();
  (v39)(v40);
  v42 = *(v17 + 88);
  v41 = v17 + 88;
  *(v12 + 880) = v42;
  *(v12 + 888) = v41 & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v43 = sub_22C36D264();
  v45 = v44(v43);
  if (v45 == *MEMORY[0x277D72A58])
  {
    v46 = *(v12 + 824);
    v47 = *(v12 + 816);
    v48 = *(v12 + 672);
    v49 = *(v12 + 664);
    v50 = *(v12 + 608);
    v51 = *(v12 + 600);
    v52 = sub_22C6AF81C();
    (v39)(v52);
    v53 = *(v48 + 96);
    v54 = sub_22C37170C();
    v55(v54);
    v56 = *v47;
    v41 = swift_projectBox();
    v57 = (*(v50 + 88))(v41, v51);
    if (v57 == *MEMORY[0x277D72988])
    {
      v58 = *(v12 + 656);
      v59 = sub_22C791818();
      v60(v59);
      v61 = sub_22C37ED74();
      v62(v61);
      if (*v58)
      {
        v63 = 1702195828;
      }

      else
      {
        v63 = 0x65736C6166;
      }

      if (*v58)
      {
        v64 = 0xE400000000000000;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

      goto LABEL_9;
    }

    if (v57 == *MEMORY[0x277D72978])
    {
      v87 = *(v12 + 648);
      v88 = sub_22C791818();
      v89(v88);
      v90 = sub_22C37ED74();
      v91(v90);
      *(v12 + 24) = *v87;
      sub_22C76AB50();
      v63 = sub_22C90ADBC();
      goto LABEL_30;
    }

    if (v57 == *MEMORY[0x277D729A8])
    {
      v112 = *(v12 + 648);
      v113 = sub_22C791818();
      v114(v113);
      v115 = sub_22C37ED74();
      v116(v115);
      v117 = *v112;
      v63 = sub_22C90A84C();
      goto LABEL_30;
    }

    if (v57 == *MEMORY[0x277D729C0])
    {
      v152 = *(v12 + 648);
      v153 = sub_22C791818();
      v154(v153);
      v155 = sub_22C37ED74();
      v156(v155);
      v157 = *(v152 + 4);
      v158 = *v152;
      v159 = v152[1];
      v63 = sub_22C90AC1C();
      goto LABEL_30;
    }

    if (v57 == *MEMORY[0x277D729B8])
    {
      v200 = *(v12 + 648);
      v201 = sub_22C791818();
      v202(v201);
      v203 = sub_22C37ED74();
      v204(v203);
      v63 = *v200;
      v64 = v200[1];
LABEL_9:
      v65 = v64;
LABEL_30:
      v160 = sub_22C796314(v63, v65);
      sub_22C791B54(v160);

LABEL_31:

LABEL_32:
      v161 = *(v12 + 848);
      v162 = *(v12 + 840);
      v163 = *(v12 + 832);
      sub_22C3889EC();
      v755 = *(v12 + 760);
      v757 = *(v12 + 752);
      v759 = *(v12 + 744);
      v761 = *(v12 + 736);
      v763 = *(v12 + 728);
      v765 = *(v12 + 720);
      v767 = *(v12 + 712);
      v769 = *(v12 + 704);
      v771 = *(v12 + 696);
      v773 = *(v12 + 688);
      sub_22C370A2C();
      v775 = *(v12 + 648);
      v777 = *(v12 + 640);
      v779 = *(v12 + 632);
      v781 = *(v12 + 624);
      v783 = *(v12 + 616);
      v785 = *(v12 + 592);
      v787 = *(v12 + 584);
      v789 = *(v12 + 576);
      v791 = *(v12 + 552);
      v793 = *(v12 + 544);
      v795 = *(v12 + 536);
      v797 = *(v12 + 528);
      v799 = *(v12 + 504);
      v801 = *(v12 + 496);
      v803 = *(v12 + 488);
      v805 = *(v12 + 480);
      v807 = *(v12 + 472);
      v809 = *(v12 + 464);
      v811 = *(v12 + 456);
      v813 = *(v12 + 448);
      v815 = *(v12 + 440);
      v817 = *(v12 + 432);
      v164 = *(v12 + 416);
      v819 = *(v12 + 424);
      sub_22C36DA64(v165);
      v166(v41);

      sub_22C36D5E0();
      sub_22C372034();

      return v169(v167, v168, v169, v170, v171, v172, v173, v174, a9, a10, a11, a12);
    }

    if (v57 == *MEMORY[0x277D72990])
    {
      sub_22C791E1C();
      v214 = *(v12 + 528);
      v215 = *(v12 + 520);
      v216 = *(v12 + 512);
      v217 = sub_22C3828BC(v38);
      v218(v217);
      v219 = *(v38 + 96);
      v220 = sub_22C38644C();
      v221(v220);
      v222 = *(v215 + 32);
      v223 = sub_22C37EF10();
      v41 = v216;
      v224(v223);
      v225 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      [v225 setDateStyle_];
      [v225 setTimeStyle_];
      v226 = sub_22C9005AC();
      v227 = [v225 stringFromDate_];

      sub_22C90A11C();
      v228 = sub_22C36EC8C();
      v230 = sub_22C796314(v228, v229);
      sub_22C791B54(v230);

      v231 = *(v215 + 8);
      v232 = sub_22C459028();
      v233(v232);
      goto LABEL_31;
    }

    if (v57 == *MEMORY[0x277D72958])
    {
      v234 = *(v12 + 640);
      v235 = *(v12 + 608);
      v236 = *(v12 + 600);
      v237 = *(v12 + 592);
      v238 = *(v12 + 568);
      v239 = *(v12 + 560);
      v863 = *(v12 + 552);
      v825 = *(v12 + 544);
      v833 = *(v12 + 584);
      v840 = *(v12 + 504);
      v850 = *(v12 + 512);
      sub_22C375D94();
      v240 = sub_22C459028();
      v241(v240);
      v242 = *(v235 + 96);
      v243 = sub_22C36D29C();
      v244(v243);
      v245 = *(v238 + 32);
      v246 = sub_22C37170C();
      v247(v246);
      sub_22C9007BC();
      sub_22C9007EC();
      sub_22C36BECC();
      sub_22C791F6C(v248, v249, v250, v251);
      sub_22C90083C();
      sub_22C36A748();
      sub_22C36C640(v252, v253, v254, v255);
      sub_22C9000FC();
      sub_22C90010C();
      v256 = sub_22C9000CC();
      LOBYTE(v754) = 1;
      LOBYTE(v753) = 1;
      LOBYTE(v752) = 1;
      LOBYTE(v751) = 1;
      LOBYTE(v750) = 1;
      LOBYTE(v749) = 1;
      LOBYTE(v748) = 1;
      LOBYTE(v747) = 1;
      LOBYTE(v746) = 1;
      LOBYTE(v745) = 1;
      LOBYTE(v744) = v257 & 1;
      v743 = v256;
      sub_22C90013C();
      sub_22C9000DC();
      v258 = sub_22C383C3C();
      if (sub_22C370B74(v258, v259, v850) == 1)
      {
        v260 = *(v12 + 576);
        v261 = *(v12 + 568);
        v262 = *(v12 + 560);
        v263 = *(v12 + 496);
        sub_22C376B84(*(v12 + 504), &qword_27D9BF2C0, &qword_22C925300);
        sub_22C9040CC();
        v264 = *(v261 + 16);
        v265 = sub_22C379FC8();
        v266(v265);
        v41 = sub_22C9063CC();
        v267 = sub_22C90AADC();
        sub_22C792154(v267);
        v269 = os_log_type_enabled(v41, v268);
        v270 = *(v12 + 592);
        v271 = *(v12 + 584);
        v272 = *(v12 + 576);
        v273 = *(v12 + 568);
        v274 = *(v12 + 560);
        v864 = *(v12 + 496);
        v275 = *(v12 + 392);
        v851 = *(v12 + 384);
        if (v269)
        {
          sub_22C36BED8();
          v834 = v271;
          v821 = swift_slowAlloc();
          v875 = sub_22C370060();
          *v821 = 136315138;
          sub_22C7914C4(&qword_27D9BFF88, MEMORY[0x277CC8990]);
          sub_22C79223C();
          v826 = v270;
          v277 = v276;
          v278 = *(v273 + 8);
          v279 = sub_22C372FA4();
          v278(v279);
          v280 = sub_22C791C70();
          sub_22C36F9F4(v280, v277, v281);
          sub_22C37FF48();

          *(v821 + 4) = v272;
          sub_22C38073C();
          _os_log_impl(v282, v41, v283, v284, v285, 0xCu);
          sub_22C36FF94(v875);
          sub_22C372FB0();
          sub_22C37E124();

          (*(v275 + 8))(v864, v851);
          (v278)(v834, v274);
          (v278)(v826, v274);
        }

        else
        {

          v327 = *(v273 + 8);
          v328 = sub_22C372FA4();
          v327(v328);
          (*(v275 + 8))(v864, v851);
          v329 = sub_22C371510();
          v327(v329);
          v330 = sub_22C36D29C();
          v327(v330);
        }
      }

      else
      {
        v302 = *(v12 + 568);
        v835 = *(v12 + 560);
        v841 = *(v12 + 584);
        v852 = *(v12 + 592);
        v303 = *(v12 + 536);
        v304 = *(v12 + 520);
        v827 = *(v12 + 512);
        (*(v304 + 32))(v303, *(v12 + 504));
        v41 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        [v41 setDateStyle_];
        [v41 setTimeStyle_];
        v305 = sub_22C9005AC();
        v306 = [v41 stringFromDate_];

        sub_22C90A11C();
        v307 = sub_22C372FA4();
        v309 = sub_22C796314(v307, v308);
        sub_22C791B54(v309);

        (*(v304 + 8))(v303, v827);
        v310 = *(v302 + 8);
        v310(v841, v835);
        v310(v852, v835);
      }

      goto LABEL_31;
    }

    if (v57 == *MEMORY[0x277D72980])
    {
      v286 = *(v12 + 648);
      v287 = *(v12 + 608);
      v288 = *(v12 + 600);
      v290 = *(v12 + 168);
      v289 = *(v12 + 176);
      v291 = *(v12 + 160);
      v292 = sub_22C791838(v287);
      v293(v292);
      v294 = *(v287 + 96);
      v295 = sub_22C37170C();
      v296(v295);
      v297 = sub_22C37E894(v290);
      v298(v297);
      v299 = sub_22C90036C();
      v301 = sub_22C796314(v299, v300);
      sub_22C791B54(v301);

LABEL_53:
      v324 = *(v290 + 8);
      v325 = sub_22C36CA88();
LABEL_54:
      v326(v325);
      goto LABEL_31;
    }

    if (v57 == *MEMORY[0x277D72968])
    {
      v311 = *(v12 + 648);
      v312 = *(v12 + 608);
      v313 = *(v12 + 600);
      v290 = *(v12 + 320);
      v314 = *(v12 + 328);
      v315 = *(v12 + 312);
      v316 = sub_22C791838(v312);
      v317(v316);
      v318 = *(v312 + 96);
      v319 = sub_22C37170C();
      v320(v319);
      v321 = sub_22C37E894(v290);
      v322(v321);
      v323 = sub_22C796218(v314);
      sub_22C791B54(v323);

      goto LABEL_53;
    }

    if (v57 == *MEMORY[0x277D72940])
    {
      sub_22C791E1C();
      v331 = *(v12 + 216);
      v332 = *(v12 + 224);
      v333 = *(v12 + 208);
      v334 = sub_22C3828BC(v38);
      v335(v334);
      v336 = *(v38 + 96);
      v337 = sub_22C38644C();
      v338(v337);
      v41 = v332;
      (*(v331 + 32))(v332, v47, v333);
      v339 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
      [v339 setUnitOptions_];
      [v339 setUnitStyle_];
      v340 = sub_22C8FFF7C();
      v341 = [v339 stringFromMeasurement_];

      sub_22C90A11C();
      v342 = sub_22C36EC8C();
      v344 = sub_22C796314(v342, v343);
      sub_22C791B54(v344);

      v345 = *(v331 + 8);
      v346 = v332;
      v347 = v333;
LABEL_58:
      v345(v346, v347);
      goto LABEL_31;
    }

    if (v57 == *MEMORY[0x277D72950])
    {
      v348 = *(v12 + 624);
      v349 = *(v12 + 608);
      v350 = *(v12 + 600);
      v351 = *(v12 + 240);
      v853 = *(v12 + 248);
      v865 = *(v12 + 232);
      sub_22C791EC4();
      v352 = sub_22C459028();
      v353(v352);
      v354 = *(v349 + 96);
      v355 = sub_22C36D29C();
      v356(v355);
      v357 = *(v351 + 32);
      v358 = sub_22C38BB08();
      v359(v358);
      v360 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      v361 = sub_22C9091FC();
      sub_22C790EA0(v361, v362, v360);
      [v360 setMinimumFractionDigits_];
      [v360 setMaximumFractionDigits_];
      [v360 setNumberStyle_];
      v363 = sub_22C90921C();
      v365 = v364;
      LODWORD(v349) = v366;
      v367 = objc_allocWithZone(MEMORY[0x277CCA980]);
      *(v12 + 1080) = v363;
      *(v12 + 1088) = v365;
      *(v12 + 1096) = v349;
      v41 = [v367 initWithDecimal_];
      v368 = [v360 stringFromNumber_];
      if (v368)
      {
        v369 = v368;
        v370 = sub_22C90A11C();
        v372 = v371;

        v373 = HIBYTE(v372) & 0xF;
        if ((v372 & 0x2000000000000000) == 0)
        {
          v373 = v370 & 0xFFFFFFFFFFFFLL;
        }

        if (v373)
        {
          v375 = *(v12 + 240);
          v374 = *(v12 + 248);
          v376 = *(v12 + 232);
          v377 = sub_22C37170C();
          v379 = sub_22C796314(v377, v378);
          sub_22C791B54(v379);

          v380 = *(v375 + 8);
          v325 = sub_22C36FC2C();
          goto LABEL_54;
        }
      }

      v856 = v41;
      v447 = *(v12 + 248);
      v448 = *(v12 + 256);
      sub_22C90920C();
      v868 = sub_22C783B28(v448);
      v450 = v449;
      sub_22C376B84(v448, &qword_27D9BC390, &qword_22C912AC0);
      v451 = *(v12 + 664);
      v452 = *(v12 + 32);
      v844 = v450;
      if (v450)
      {
        v453 = *(v12 + 792);
        v454 = *(v12 + 464);
        sub_22C9040CC();
        v455 = sub_22C5CAA58();
        (v39)(v455);
        v456 = sub_22C9063CC();
        v822 = sub_22C90AADC();
        v823 = v456;
        v457 = os_log_type_enabled(v456, v822);
        v458 = *(v12 + 792);
        v459 = *(v12 + 672);
        v41 = *(v12 + 664);
        v460 = *(v12 + 384);
        v461 = *(v12 + 392);
        v829 = v460;
        v837 = *(v12 + 464);
        if (v457)
        {
          sub_22C36BED8();
          v462 = swift_slowAlloc();
          v877 = sub_22C370060();
          *v462 = 136315138;
          sub_22C36A32C();
          sub_22C7914C4(v463, v464);
          sub_22C37EF94();
          sub_22C909F4C();
          v465 = *(v459 + 8);
          v466 = sub_22C380120();
          v467(v466);
          v468 = sub_22C38BB08();
          sub_22C36F9F4(v468, v469, v470);
          sub_22C37FF48();

          *(v462 + 4) = v458;
          sub_22C37B3D4();
          _os_log_impl(v471, v472, v473, v474, v475, 0xCu);
          sub_22C36FF94(v877);
          sub_22C372FB0();
          sub_22C386DA4();
        }

        else
        {

          v499 = *(v459 + 8);
          v500 = sub_22C380120();
          v501(v500);
        }

        (*(v461 + 8))(v837, v829);
        v503 = *(v12 + 240);
        v502 = *(v12 + 248);
        v504 = *(v12 + 232);
        v505 = sub_22C796314(v868, v844);
        sub_22C792030(v505);

        (*(v503 + 8))(v502, v504);
        goto LABEL_31;
      }

      v476 = *(v12 + 784);
      v477 = *(v12 + 456);
      sub_22C9040CC();
      v478 = sub_22C5CAA58();
      (v39)(v478);
      v479 = sub_22C9063CC();
      v830 = sub_22C90AADC();
      v838 = v479;
      v480 = os_log_type_enabled(v479, v830);
      v481 = *(v12 + 784);
      v482 = *(v12 + 672);
      v483 = *(v12 + 664);
      v869 = *(v12 + 456);
      v484 = *(v12 + 392);
      v845 = *(v12 + 384);
      if (v480)
      {
        sub_22C36BED8();
        v485 = swift_slowAlloc();
        v878 = sub_22C370060();
        *v485 = 136315138;
        sub_22C36A32C();
        sub_22C7914C4(v486, v487);
        sub_22C6B01B0();
        v477 = sub_22C909F4C();
        v489 = v488;
        v490 = sub_22C7918C4();
        v491(v490);
        v492 = sub_22C791C70();
        sub_22C36F9F4(v492, v489, v493);
        sub_22C791FA8();
        *(v485 + 4) = v481;
        sub_22C37B3D4();
        _os_log_impl(v494, v495, v496, v497, v498, 0xCu);
        sub_22C36FF94(v878);
        sub_22C370510();
        sub_22C386DA4();
      }

      else
      {

        v546 = sub_22C7918C4();
        v547(v546);
      }

      (*(v484 + 8))(v869, v845);
      v549 = *(v12 + 240);
      v548 = *(v12 + 248);
      v550 = *(v12 + 232);
      type metadata accessor for InterpreterError();
      sub_22C373954();
      sub_22C7914C4(v551, v552);
      sub_22C36D148();
      sub_22C791BC0();
      swift_willThrow();

      v553 = *(v549 + 8);
      v554 = sub_22C38644C();
      v555(v554);
      goto LABEL_120;
    }

    if (v57 == *MEMORY[0x277D72948])
    {
      v381 = *(v12 + 616);
      v382 = *(v12 + 608);
      v383 = *(v12 + 600);
      v866 = *(v12 + 256);
      v384 = *(v12 + 192);
      v842 = *(v12 + 200);
      v854 = *(v12 + 184);
      v385 = sub_22C791838(v382);
      v386(v385);
      v387 = *(v382 + 96);
      v388 = sub_22C37170C();
      v389(v388);
      (*(v384 + 32))(v842, v381, v854);
      sub_22C9091DC();
      v843 = sub_22C783B28(v866);
      v391 = v390;
      sub_22C376B84(v866, &qword_27D9BC390, &qword_22C912AC0);
      v392 = *(v12 + 664);
      v393 = *(v12 + 32);
      v855 = v391;
      if (v391)
      {
        v394 = *(v12 + 776);
        v41 = *(v12 + 448);
        sub_22C9040CC();
        v395 = sub_22C371510();
        (v39)(v395);
        v396 = sub_22C9063CC();
        v828 = sub_22C90AADC();
        v397 = v396;
        v398 = os_log_type_enabled(v396, v828);
        v399 = *(v12 + 776);
        v400 = *(v12 + 672);
        v401 = *(v12 + 664);
        v867 = *(v12 + 448);
        v402 = *(v12 + 392);
        v836 = *(v12 + 384);
        if (v398)
        {
          sub_22C36BED8();
          v403 = swift_slowAlloc();
          v876 = sub_22C370060();
          *v403 = 136315138;
          sub_22C36A32C();
          sub_22C7914C4(v404, v405);
          sub_22C6B01B0();
          v41 = sub_22C909F4C();
          v407 = v406;
          v408 = *(v400 + 8);
          v409 = sub_22C36EC8C();
          v410(v409);
          v411 = sub_22C791C70();
          sub_22C36F9F4(v411, v407, v412);
          sub_22C792018();
          *(v403 + 4) = v399;
          sub_22C792048(&dword_22C366000, v397, v828, "Falling back to DisplayRepresentation for paymentMethod:  %s");
          sub_22C36FF94(v876);
          sub_22C386DA4();
          sub_22C36BAE0();
        }

        else
        {

          v529 = *(v400 + 8);
          v530 = sub_22C36EC8C();
          v531(v530);
        }

        (*(v402 + 8))(v867, v836);
        v532 = *(v12 + 192);
        v533 = *(v12 + 200);
        v534 = *(v12 + 184);
        v535 = v843;
LABEL_85:
        v536 = sub_22C796314(v535, v855);
        sub_22C792030(v536);

        v537 = *(v532 + 8);
        v346 = sub_22C36CA88();
        goto LABEL_58;
      }

      v506 = *(v12 + 768);
      v507 = *(v12 + 440);
      sub_22C9040CC();
      v508 = sub_22C36D29C();
      (v39)(v508);
      v509 = sub_22C9063CC();
      v510 = sub_22C90AADC();
      sub_22C792154(v510);
      v511 = v509;
      v513 = os_log_type_enabled(v509, v512);
      v514 = *(v12 + 768);
      v515 = *(v12 + 672);
      v516 = *(v12 + 664);
      v870 = *(v12 + 440);
      v517 = *(v12 + 392);
      v857 = *(v12 + 384);
      if (v513)
      {
        sub_22C36BED8();
        swift_slowAlloc();
        v518 = sub_22C791C28();
        sub_22C79209C(v518);
        *v39 = 136315138;
        sub_22C36A32C();
        sub_22C7914C4(v519, v520);
        sub_22C79223C();
        v521 = sub_22C7918D4();
        v522(v521);
        v523 = sub_22C36FC2C();
        sub_22C36F9F4(v523, v524, v525);
        sub_22C792018();
        *(v39 + 4) = v514;
        sub_22C38073C();
        _os_log_impl(v526, v511, v527, v528, v39, 0xCu);
        sub_22C36FF94(v832);
        sub_22C386DA4();
        sub_22C37B09C();
      }

      else
      {

        v556 = sub_22C7918D4();
        v557(v556);
      }

      v558 = *(v517 + 8);
      v477 = v517 + 8;
      v558(v870, v857);
      v560 = *(v12 + 192);
      v559 = *(v12 + 200);
      v561 = *(v12 + 184);
LABEL_92:
      type metadata accessor for InterpreterError();
      sub_22C373954();
      sub_22C7914C4(v562, v563);
      sub_22C36D148();
      sub_22C791BC0();
      swift_willThrow();

      v564 = *(v560 + 8);
      v565 = sub_22C372FA4();
      v566(v565);
LABEL_120:

      v723 = *(v12 + 848);
      v724 = *(v12 + 840);
      v725 = *(v12 + 832);
      sub_22C3889EC();
      v756 = *(v12 + 760);
      v758 = *(v12 + 752);
      v760 = *(v12 + 744);
      v762 = *(v12 + 736);
      v764 = *(v12 + 728);
      v766 = *(v12 + 720);
      v768 = *(v12 + 712);
      v770 = *(v12 + 704);
      v772 = *(v12 + 696);
      v774 = *(v12 + 688);
      sub_22C370A2C();
      v776 = *(v12 + 648);
      v778 = *(v12 + 640);
      v780 = *(v12 + 632);
      v782 = *(v12 + 624);
      v784 = *(v12 + 616);
      v786 = *(v12 + 592);
      v788 = *(v12 + 584);
      v790 = *(v12 + 576);
      v792 = *(v12 + 552);
      v794 = *(v12 + 544);
      v796 = *(v12 + 536);
      v798 = *(v12 + 528);
      v800 = *(v12 + 504);
      v802 = *(v12 + 496);
      v804 = *(v12 + 488);
      v806 = *(v12 + 480);
      v808 = *(v12 + 472);
      v810 = *(v12 + 464);
      v812 = *(v12 + 456);
      v814 = *(v12 + 448);
      v816 = *(v12 + 440);
      v818 = *(v12 + 432);
      v726 = *(v12 + 416);
      v820 = *(v12 + 424);
      sub_22C36DA64(v727);
      v728(v477);

      sub_22C38C49C();
      sub_22C372034();

      return v730(v729, v730, v731, v732, v733, v734, v735, v736, a9, a10, a11, a12);
    }

    if (v57 == *MEMORY[0x277D729D0])
    {
      v413 = *(v12 + 648);
      v414 = *(v12 + 608);
      v415 = *(v12 + 600);
      v417 = *(v12 + 368);
      v416 = *(v12 + 376);
      v418 = *(v12 + 360);
      v419 = sub_22C791838(v414);
      v420(v419);
      v421 = *(v414 + 96);
      v422 = sub_22C37170C();
      v423(v422);
      v424 = sub_22C37E894(v417);
      v425(v424);
      v426 = sub_22C9092FC();
      sub_22C7830D0(v426);
      v428 = v427;

      v429 = sub_22C79643C(v428);
      sub_22C791B54(v429);

      (*(v417 + 8))(v416, v418);
      goto LABEL_31;
    }

    if (v57 == *MEMORY[0x277D729B0])
    {
      sub_22C791E1C();
      v431 = *(v12 + 296);
      v430 = *(v12 + 304);
      v432 = *(v12 + 288);
      v433 = sub_22C3828BC(v38);
      v434(v433);
      v435 = *(v38 + 96);
      v436 = sub_22C38644C();
      v437(v436);
      v438 = *(v431 + 32);
      v439 = sub_22C37EF10();
      v440(v439);
      v441 = sub_22C9092CC();
      v442 = [v441 displayName];

      sub_22C90A11C();
      v443 = sub_22C379FC8();
      v445 = sub_22C796314(v443, v444);
      sub_22C792030(v445);

      v446 = *(v431 + 8);
      v325 = sub_22C36D29C();
      goto LABEL_54;
    }

    if (v57 == *MEMORY[0x277D72998])
    {
      v538 = *(v12 + 648);
      v539 = *(v12 + 608);
      v540 = *(v12 + 600);
      v542 = *(v12 + 344);
      v541 = *(v12 + 352);
      v543 = *(v12 + 336);
      v544 = *(v12 + 40);
      sub_22C375D94();
      v545(v538, v41, v540);
      (*(v539 + 96))(v538, v540);
      (*(v542 + 32))(v541, v538, v543);
      sub_22C7836AC(v541);

      (*(v542 + 8))(v541, v543);
      goto LABEL_31;
    }

    if (v57 == *MEMORY[0x277D72970])
    {
      v567 = *(v12 + 632);
      v568 = *(v12 + 600);
      v569 = *(v12 + 272);
      v858 = *(v12 + 280);
      v570 = *(v12 + 256);
      v871 = *(v12 + 264);
      v571 = sub_22C791838(*(v12 + 608));
      v572(v571);
      v573 = sub_22C37ED74();
      v574(v573);
      v575 = *(v569 + 32);
      v576 = sub_22C37EF10();
      v577(v576);
      sub_22C90925C();
      v872 = sub_22C783B28(v570);
      v579 = v578;
      sub_22C376B84(v570, &qword_27D9BC390, &qword_22C912AC0);
      v580 = *(v12 + 664);
      v581 = *(v12 + 32);
      v855 = v579;
      if (v579)
      {
        v582 = *(v12 + 808);
        v41 = *(v12 + 480);
        sub_22C9040CC();
        v583 = sub_22C371510();
        (v39)(v583);
        v584 = sub_22C9063CC();
        v824 = sub_22C90AADC();
        v846 = v584;
        v585 = os_log_type_enabled(v584, v824);
        v586 = *(v12 + 808);
        v587 = *(v12 + 672);
        v588 = *(v12 + 664);
        v589 = *(v12 + 392);
        v831 = *(v12 + 384);
        v839 = *(v12 + 480);
        if (v585)
        {
          sub_22C36BED8();
          v590 = swift_slowAlloc();
          v879 = sub_22C370060();
          *v590 = 136315138;
          sub_22C36A32C();
          sub_22C7914C4(v591, v592);
          sub_22C6B01B0();
          v41 = sub_22C909F4C();
          v594 = v593;
          v595 = *(v587 + 8);
          v596 = sub_22C36EC8C();
          v597(v596);
          v598 = sub_22C791C70();
          sub_22C36F9F4(v598, v594, v599);
          sub_22C792018();
          *(v590 + 4) = v586;
          sub_22C792048(&dword_22C366000, v846, v824, "Falling back to DisplayRepresentation for appValue:  %s");
          sub_22C36FF94(v879);
          sub_22C370510();
          sub_22C36BAE0();
        }

        else
        {

          v648 = *(v587 + 8);
          v649 = sub_22C36EC8C();
          v650(v649);
        }

        (*(v589 + 8))(v839, v831);
        v532 = *(v12 + 272);
        v651 = *(v12 + 280);
        v652 = *(v12 + 264);
        v535 = v872;
        goto LABEL_85;
      }

      v630 = *(v12 + 800);
      v631 = *(v12 + 472);
      sub_22C9040CC();
      v632 = sub_22C36D29C();
      (v39)(v632);
      sub_22C9063CC();
      v633 = sub_22C90AADC();
      v634 = sub_22C7921E8(v633);
      v635 = *(v12 + 800);
      v636 = *(v12 + 672);
      v637 = *(v12 + 664);
      v638 = *(v12 + 392);
      v848 = *(v12 + 384);
      v860 = *(v12 + 472);
      if (v634)
      {
        sub_22C36BED8();
        swift_slowAlloc();
        v881 = sub_22C791C28();
        *v39 = 136315138;
        sub_22C36A32C();
        sub_22C7914C4(v639, v640);
        sub_22C79223C();
        v641 = sub_22C7918D4();
        v642(v641);
        v643 = sub_22C36FC2C();
        sub_22C36F9F4(v643, v644, v645);
        sub_22C792018();
        *(v39 + 4) = v635;
        sub_22C791E74(&dword_22C366000, v646, v647, "Payload Generation does not support formatting of appValue: %s");
        sub_22C36FF94(v881);
        sub_22C372FB0();
        sub_22C37B09C();
      }

      else
      {

        v737 = sub_22C7918D4();
        v738(v737);
      }

      v739 = *(v638 + 8);
      v477 = v638 + 8;
      v739(v860, v848);
      v560 = *(v12 + 272);
      v740 = *(v12 + 280);
      v741 = *(v12 + 264);
      goto LABEL_92;
    }

    if (v57 == *MEMORY[0x277D72960])
    {
      v600 = *(v12 + 760);
      v601 = *(v12 + 664);
      v602 = *(v12 + 432);
      v603 = *(v12 + 32);
      sub_22C9040CC();
      v604 = sub_22C38644C();
      (v39)(v604);
      sub_22C9063CC();
      v605 = sub_22C90AADC();
      v606 = sub_22C7921E8(v605);
      v607 = *(v12 + 760);
      v608 = *(v12 + 672);
      v609 = *(v12 + 664);
      v610 = *(v12 + 392);
      v847 = *(v12 + 384);
      v859 = *(v12 + 432);
      if (v606)
      {
        sub_22C36BED8();
        swift_slowAlloc();
        v880 = sub_22C791C28();
        *v39 = 136315138;
        sub_22C36A32C();
        sub_22C7914C4(v611, v612);
        sub_22C79223C();
        v613 = sub_22C7918D4();
        v614(v613);
        v615 = sub_22C36FC2C();
        sub_22C36F9F4(v615, v616, v617);
        sub_22C792018();
        *(v39 + 4) = v607;
        sub_22C791E74(&dword_22C366000, v618, v619, "Unsupported searchableItem %s");
        sub_22C36FF94(v880);
        sub_22C372FB0();
        sub_22C37B09C();
      }

      else
      {

        v653 = sub_22C7918D4();
        v654(v653);
      }

      v655 = *(v610 + 8);
      v477 = v610 + 8;
      v655(v859, v847);
      type metadata accessor for InterpreterError();
      sub_22C373954();
      sub_22C7914C4(v656, v657);
      v658 = sub_22C3700B4();
      sub_22C37E7C4(v658, v659);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_120;
    }

    if (v57 == *MEMORY[0x277D729A0])
    {
      v620 = *(v12 + 488);
      sub_22C9040CC();
      v621 = sub_22C9063CC();
      v622 = sub_22C90AADC();
      v623 = sub_22C370048(v622);
      v624 = *(v12 + 488);
      v625 = *(v12 + 384);
      v626 = *(v12 + 392);
      if (v623)
      {
        *sub_22C36D240() = 0;
        sub_22C791F54(&dword_22C366000, v621, v622, "Received none type. Returning empty string");
        sub_22C36C30C();
      }

      v627 = *(v626 + 8);
      v628 = sub_22C36D29C();
      v629(v628);
      goto LABEL_31;
    }

LABEL_111:
    v660 = *(v12 + 256);
    v661 = *(v12 + 32);
    sub_22C90939C();
    v41 = sub_22C783B28(v660);
    v663 = v662;
    sub_22C376B84(v660, &qword_27D9BC390, &qword_22C912AC0);
    v664 = *(v12 + 664);
    v665 = *(v12 + 32);
    if (v663)
    {
      v666 = *(v12 + 696);
      v667 = *(v12 + 416);
      sub_22C9040CC();
      v668 = sub_22C3806B8();
      (v39)(v668);
      v669 = sub_22C9063CC();
      v861 = sub_22C90AADC();
      v670 = os_log_type_enabled(v669, v861);
      v671 = *(v12 + 696);
      v672 = *(v12 + 672);
      v673 = *(v12 + 664);
      v674 = *(v12 + 416);
      v675 = *(v12 + 392);
      v873 = *(v12 + 384);
      if (v670)
      {
        sub_22C36BED8();
        v849 = v41;
        v676 = swift_slowAlloc();
        v677 = sub_22C370060();
        sub_22C79209C(v677);
        *v676 = 136315138;
        sub_22C36A32C();
        sub_22C7914C4(v678, v679);
        sub_22C909F4C();
        v680 = *(v672 + 8);
        v681 = sub_22C38644C();
        v682(v681);
        v683 = sub_22C3726C4();
        v686 = sub_22C36F9F4(v683, v684, v685);

        *(v676 + 4) = v686;
        sub_22C791FE4(&dword_22C366000, v687, v861, "Falling back to DisplayRepresentation for unsupported parameter:  %s");
        sub_22C791870();
        v41 = v849;
        sub_22C3699EC();
      }

      else
      {

        v708 = *(v672 + 8);
        v709 = sub_22C38644C();
        v710(v709);
      }

      (*(v675 + 8))(v674, v873);
      v711 = sub_22C796314(v41, v663);
      sub_22C791B54(v711);

      goto LABEL_32;
    }

    v688 = *(v12 + 688);
    v689 = *(v12 + 408);
    sub_22C9040CC();
    v690 = sub_22C36D264();
    (v39)(v690);
    v691 = sub_22C9063CC();
    v692 = sub_22C90AADC();
    v693 = sub_22C5CAB64(v692);
    v694 = *(v12 + 688);
    v695 = *(v12 + 672);
    v477 = *(v12 + 664);
    v696 = *(v12 + 408);
    v697 = *(v12 + 384);
    v698 = *(v12 + 392);
    if (v693)
    {
      sub_22C36BED8();
      v874 = v692;
      v699 = swift_slowAlloc();
      sub_22C370060();
      *v699 = 136315138;
      sub_22C36A32C();
      sub_22C7914C4(v700, v701);
      sub_22C37EF94();
      sub_22C909F4C();
      v702 = *(v695 + 8);
      v703 = sub_22C380120();
      v704(v703);
      v705 = sub_22C36ECB4();
      sub_22C36F9F4(v705, v706, v707);
      sub_22C38B194();

      *(v699 + 4) = v694;
      _os_log_impl(&dword_22C366000, v691, v874, "Unsupported TypedValue subtype: %s", v699, 0xCu);
      sub_22C791870();
      sub_22C36C30C();

      (*(v698 + 8))(v696, v697);
    }

    else
    {

      v712 = *(v695 + 8);
      v713 = sub_22C380120();
      v714(v713);
      v715 = *(v698 + 8);
      v716 = sub_22C36ECB4();
      v718(v716, v717);
    }

    type metadata accessor for InterpreterError();
    sub_22C373954();
    sub_22C7914C4(v719, v720);
    v721 = sub_22C3700B4();
    sub_22C37E7C4(v721, v722);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_120;
  }

  if (v45 == *MEMORY[0x277D729E8])
  {
    v66 = *(v12 + 824);
    v67 = *(v12 + 752);
    v68 = *(v12 + 672);
    v69 = *(v12 + 664);
    v70 = *(v12 + 256);
    v71 = *(v12 + 144);
    v72 = *(v12 + 152);
    v73 = *(v12 + 136);
    v74 = sub_22C6AF81C();
    (v39)(v74);
    v75 = *(v68 + 96);
    v41 = v68 + 96;
    v76 = sub_22C37170C();
    v77(v76);
    v78 = *v67;
    v79 = swift_projectBox();
    (*(v71 + 16))(v72, v79, v73);
    sub_22C90907C();
    sub_22C783B28(v70);
    v81 = v80;
    sub_22C376B84(v70, &qword_27D9BC390, &qword_22C912AC0);
    v83 = *(v12 + 144);
    v82 = *(v12 + 152);
    v84 = *(v12 + 136);
    if (v81)
    {
      v85 = sub_22C38644C();
    }

    else
    {
      v147 = *(v12 + 152);
      v85 = sub_22C90908C();
    }

    v148 = sub_22C796314(v85, v86);
    sub_22C792030(v148);

    v149 = *(v83 + 8);
    v150 = sub_22C36ECB4();
    v151(v150);
    goto LABEL_31;
  }

  v92 = *MEMORY[0x277D72A38];
  *(v12 + 1100) = *MEMORY[0x277D72A38];
  if (v45 == v92)
  {
    v93 = *(v12 + 824);
    v94 = *(v12 + 744);
    v95 = *(v12 + 672);
    v96 = *(v12 + 664);
    v97 = *(v12 + 128);
    v98 = *(v12 + 104);
    v99 = *(v12 + 112);
    v100 = sub_22C383264();
    (v39)(v100);
    v101 = *(v95 + 96);
    v102 = sub_22C36BBCC();
    v103(v102);
    *(v12 + 896) = *v94;
    swift_projectBox();
    v104 = *(v99 + 16);
    v105 = sub_22C6AFB9C();
    v106(v105);
    v107 = swift_task_alloc();
    *(v12 + 904) = v107;
    *v107 = v12;
    v107[1] = sub_22C780E2C;
    v108 = *(v12 + 32);
    v109 = *(v12 + 40);
    sub_22C386674(*(v12 + 128));
    sub_22C372034();

    return sub_22C784748();
  }

  else if (v45 == *MEMORY[0x277D729E0])
  {
    v118 = *(v12 + 824);
    v119 = *(v12 + 712);
    v120 = *(v12 + 672);
    v121 = *(v12 + 664);
    v123 = *(v12 + 56);
    v122 = *(v12 + 64);
    v124 = *(v12 + 48);
    v125 = sub_22C383264();
    (v39)(v125);
    v126 = *(v120 + 96);
    v127 = sub_22C36BBCC();
    v128(v127);
    *(v12 + 1008) = *v119;
    swift_projectBox();
    v129 = *(v123 + 16);
    v130 = sub_22C6AFB9C();
    v131(v130);
    v132 = MEMORY[0x277D84F90];
    *(v12 + 16) = MEMORY[0x277D84F90];
    v133 = sub_22C90905C();
    *(v12 + 1016) = v133;
    v134 = *(v133 + 16);
    *(v12 + 1024) = v134;
    if (!v134)
    {

      v205 = *(v12 + 1008);
      v206 = *(v12 + 856);
      v208 = *(v12 + 56);
      v207 = *(v12 + 64);
      v209 = *(v12 + 48);
      v210 = sub_22C7973A4(MEMORY[0x277D84F90]);
      sub_22C792030(v210);

      v211 = *(v208 + 8);
      v212 = sub_22C36D264();
      v213(v212);
      goto LABEL_31;
    }

    v135 = *(v12 + 672);
    v136 = *(v135 + 80);
    *(v12 + 1104) = v136;
    *(v12 + 1032) = *(v135 + 72);
    *(v12 + 1048) = v132;
    *(v12 + 1040) = 0;
    v137 = *(v12 + 872);
    (*(v12 + 864))(*(v12 + 704), v133 + ((v136 + 32) & ~v136), *(v12 + 664));
    v138 = swift_task_alloc();
    *(v12 + 1056) = v138;
    *v138 = v12;
    sub_22C3776A8(v138);
    sub_22C372034();

    return sub_22C77DAE4(v139, v140, v141, v142, v143, v144, v145, v146, a9, a10, a11, a12);
  }

  else
  {
    if (v45 != *MEMORY[0x277D729F8])
    {
      goto LABEL_111;
    }

    v175 = *(v12 + 824);
    v176 = *(v12 + 736);
    v177 = *(v12 + 672);
    v178 = *(v12 + 664);
    v179 = *(v12 + 96);
    v180 = *(v12 + 72);
    v181 = *(v12 + 80);
    v182 = *(v12 + 40);
    v183 = sub_22C383264();
    (v39)(v183);
    *(v12 + 928) = *(v177 + 96);
    *(v12 + 936) = (v177 + 96) & 0xFFFFFFFFFFFFLL | 0x41D000000000000;
    v184 = sub_22C36BBCC();
    v185(v184);
    *(v12 + 944) = *v176;
    swift_projectBox();
    *(v12 + 952) = *(v181 + 16);
    *(v12 + 960) = (v181 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v186 = sub_22C6AFB9C();
    v187(v186);
    v188 = (v182 + *(type metadata accessor for PayloadFormatter() + 32));
    v189 = v188[4];
    sub_22C374168(v188, v188[3]);
    v190 = *(MEMORY[0x277D1E548] + 4);
    swift_task_alloc();
    sub_22C36CC90();
    *(v12 + 968) = v191;
    *v191 = v192;
    v191[1] = sub_22C781218;
    v193 = *(v12 + 728);
    v194 = *(v12 + 32);
    sub_22C372034();

    return MEMORY[0x282178338](v195, v196, v197, v198);
  }
}

uint64_t sub_22C780E2C()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 904);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  *(v5 + 912) = v0;

  if (!v0)
  {
    *(v5 + 920) = v3;
  }

  sub_22C374448();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C780F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[112];
  v14 = v12[107];
  v15 = v12[16];
  v16 = v12[13];
  v17 = v12[14];
  v18 = sub_22C79643C(v12[115]);
  sub_22C792224(v18);

  v19 = *(v17 + 8);
  v20 = sub_22C36ECB4();
  v21(v20);

  v22 = v12[106];
  v23 = v12[105];
  v24 = v12[104];
  v25 = v12[103];
  v26 = v12[102];
  v27 = v12[101];
  v28 = v12[100];
  v29 = v12[99];
  v30 = v12[98];
  sub_22C7916C4();
  v32 = sub_22C38C074(v31);
  v33(v32);

  sub_22C37A38C();
  sub_22C372034();

  return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_22C781218()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 968);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 976) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C781310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v15 = *(v14 + 1100);
  v16 = *(v14 + 888);
  if ((*(v14 + 880))(*(v14 + 728), *(v14 + 664)) == v15)
  {
    v17 = *(v14 + 936);
    v18 = *(v14 + 928);
    v19 = *(v14 + 1100);
    sub_22C791DB4();
    v20 = *(v14 + 672);
    v21 = *(v14 + 664);
    v23 = *(v14 + 112);
    v22 = *(v14 + 120);
    v24 = *(v14 + 104);
    v25(v12, v21);
    v26 = *v12;
    v27 = swift_projectBox();
    v28 = *(v23 + 16);
    v28(v22, v27, v24);

    v29 = swift_allocBox();
    v28(v30, v22, v24);
    *v13 = v29;
    (*(v20 + 104))(v13, v19, v21);
    v31 = swift_task_alloc();
    *(v14 + 984) = v31;
    *v31 = v14;
    v31[1] = sub_22C7818FC;
    v32 = *(v14 + 720);
    v33 = *(v14 + 40);
    sub_22C386674(*(v14 + 120));
    sub_22C372034();

    return sub_22C784748();
  }

  else
  {
    v36 = *(v14 + 960);
    v37 = *(v14 + 952);
    v38 = *(v14 + 424);
    v40 = *(v14 + 88);
    v39 = *(v14 + 96);
    v41 = *(v14 + 72);
    (*(*(v14 + 672) + 8))(*(v14 + 728), *(v14 + 664));
    sub_22C9040CC();
    v42 = sub_22C36A724();
    v37(v42);
    v43 = sub_22C9063CC();
    LOBYTE(v37) = sub_22C90AADC();
    v44 = os_log_type_enabled(v43, v37);
    v45 = *(v14 + 424);
    v47 = *(v14 + 384);
    v46 = *(v14 + 392);
    v49 = *(v14 + 80);
    v48 = *(v14 + 88);
    v50 = *(v14 + 72);
    if (v44)
    {
      sub_22C36BED8();
      v101 = v47;
      v51 = swift_slowAlloc();
      sub_22C370060();
      *v51 = 136315138;
      sub_22C7914C4(&qword_27D9BFF80, MEMORY[0x277D728B0]);
      sub_22C6B01B0();
      sub_22C909F4C();
      v100 = v45;
      v53 = v52;
      v54 = *(v49 + 8);
      v55 = sub_22C36EC8C();
      v57 = v56;
      v56(v55);
      v58 = sub_22C791C70();
      sub_22C36F9F4(v58, v53, v59);
      sub_22C3743B4();
      *(v51 + 4) = v48;
      sub_22C38073C();
      sub_22C792048(v60, v43, v61, v62);
      sub_22C791870();
      sub_22C36BAE0();

      (*(v46 + 8))(v100, v101);
    }

    else
    {

      v63 = *(v49 + 8);
      v64 = sub_22C36EC8C();
      v57 = v65;
      v65(v64);
      v66 = *(v46 + 8);
      v67 = sub_22C37B220();
      v69(v67, v68);
    }

    v70 = *(v14 + 944);
    v71 = *(v14 + 856);
    v72 = *(v14 + 96);
    v73 = *(v14 + 72);
    type metadata accessor for InterpreterError();
    sub_22C373954();
    sub_22C7914C4(v74, v75);
    sub_22C36D148();
    sub_22C791BC0();
    swift_willThrow();

    v76 = sub_22C36ECB4();
    v57(v76);

    v77 = *(v14 + 848);
    v78 = *(v14 + 840);
    v79 = *(v14 + 832);
    v80 = *(v14 + 824);
    v81 = *(v14 + 816);
    v82 = *(v14 + 808);
    v83 = *(v14 + 800);
    v84 = *(v14 + 792);
    v85 = *(v14 + 784);
    sub_22C7916C4();
    v97 = *(v14 + 440);
    v98 = *(v14 + 432);
    v86 = *(v14 + 416);
    v99 = *(v14 + 424);
    sub_22C36DA64(v87);
    v88(v80);

    sub_22C38C49C();
    sub_22C372034();

    return v90(v89, v90, v91, v92, v93, v94, v95, v96, a9, a10, a11, a12);
  }
}

uint64_t sub_22C7818FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_22C369970();
  *v6 = v5;
  v7 = v4[123];
  v8 = v4[84];
  *v6 = *v2;
  v5[124] = v1;

  v9 = v4[90];
  v10 = v4[83];
  if (!v1)
  {
    v5[125] = a1;
  }

  (*(v8 + 8))(v9, v10);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C781A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[118];
  v14 = v12[107];
  v16 = v12[14];
  v15 = v12[15];
  v18 = v12[12];
  v17 = v12[13];
  v19 = v12[9];
  v20 = v12[10];
  v21 = sub_22C79643C(v12[125]);
  sub_22C792224(v21);

  v22 = *(v16 + 8);
  v23 = sub_22C36ECB4();
  v24(v23);
  v25 = *(v20 + 8);
  v26 = sub_22C36FC2C();
  v27(v26);

  v28 = v12[106];
  v29 = v12[105];
  v30 = v12[104];
  v31 = v12[103];
  v32 = v12[102];
  v33 = v12[101];
  v34 = v12[100];
  v35 = v12[99];
  v36 = v12[98];
  sub_22C7916C4();
  v38 = sub_22C38C074(v37);
  v39(v38);

  sub_22C37A38C();
  sub_22C372034();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_22C781D78()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 1056);
  *v3 = *v1;
  *(v2 + 1064) = v6;
  *(v2 + 1072) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C781E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  MEMORY[0x2318B7AA0]();
  if (*(v12[2] + 16) >= *(v12[2] + 24) >> 1)
  {
    sub_22C90A61C();
  }

  v14 = v12[133];
  v15 = v12[88];
  v16 = v12[84];
  v17 = v12[83];
  sub_22C90A65C();
  v18 = *(v16 + 8);
  v19 = sub_22C36D264();
  v20(v19);
  v21 = v12[2];
  sub_22C792120();
  if (v23)
  {
    v24 = v12[127];

    v25 = sub_22C791F84();
    sub_22C792224(v25);

    v26 = *(v13 + 8);
    v27 = sub_22C36ECB4();
    v28(v27);

    v29 = v12[106];
    v30 = v12[105];
    v31 = v12[104];
    v32 = v12[103];
    v33 = v12[102];
    v34 = v12[101];
    v35 = v12[100];
    v36 = v12[99];
    v37 = v12[98];
    sub_22C7916C4();
    v39 = sub_22C38C074(v38);
    v40(v39);

    sub_22C37A38C();
    sub_22C372034();

    return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }

  else
  {
    v12[131] = v21;
    v50 = sub_22C383E14(v22);
    v51(v50);
    v52 = swift_task_alloc();
    v12[132] = v52;
    *v52 = v12;
    sub_22C3776A8();
    sub_22C372034();

    return sub_22C77DAE4(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
  }
}

uint64_t sub_22C78221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[112];
  v14 = v12[107];
  v15 = v12[16];
  v16 = v12[13];
  v17 = v12[14];

  v18 = sub_22C371810();
  v19(v18);

  v41 = v12[114];
  v20 = v12[106];
  v21 = v12[105];
  v22 = v12[104];
  v23 = v12[103];
  v24 = v12[102];
  v25 = v12[101];
  v26 = v12[100];
  v27 = v12[99];
  v28 = v12[98];
  sub_22C7916C4();
  v30 = sub_22C38C074(v29);
  v31(v30);

  sub_22C375A9C();
  sub_22C372034();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_22C7824F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[118];
  v14 = v12[107];
  v15 = v12[12];
  v16 = v12[9];
  v17 = v12[10];

  v18 = sub_22C371810();
  v19(v18);

  v41 = v12[122];
  v20 = v12[106];
  v21 = v12[105];
  v22 = v12[104];
  v23 = v12[103];
  v24 = v12[102];
  v25 = v12[101];
  v26 = v12[100];
  v27 = v12[99];
  v28 = v12[98];
  sub_22C7916C4();
  v30 = sub_22C38C074(v29);
  v31(v30);

  sub_22C375A9C();
  sub_22C372034();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_22C7827C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = v12[118];
  v14 = v12[107];
  v16 = v12[14];
  v15 = v12[15];
  v18 = v12[12];
  v17 = v12[13];
  v19 = v12[9];
  v20 = v12[10];

  v21 = *(v16 + 8);
  v22 = sub_22C36BAFC();
  v23(v22);
  v24 = *(v20 + 8);
  v25 = sub_22C36ECB4();
  v26(v25);

  v48 = v12[124];
  v27 = v12[106];
  v28 = v12[105];
  v29 = v12[104];
  v30 = v12[103];
  v31 = v12[102];
  v32 = v12[101];
  v33 = v12[100];
  v34 = v12[99];
  v35 = v12[98];
  sub_22C7916C4();
  v37 = sub_22C38C074(v36);
  v38(v37);

  sub_22C375A9C();
  sub_22C372034();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_22C782AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  sub_22C3749D8();
  v13 = *(v12 + 872);
  v14 = *(v12 + 864);
  v15 = *(v12 + 704);
  v16 = *(v12 + 680);
  v17 = *(v12 + 664);
  v18 = *(v12 + 400);
  sub_22C9040CC();
  v19 = sub_22C36D7E0();
  v14(v19);
  v20 = sub_22C9063CC();
  v21 = sub_22C90AABC();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v12 + 704);
  v24 = *(v12 + 680);
  v25 = *(v12 + 664);
  v26 = *(v12 + 400);
  v27 = *(v12 + 384);
  v127 = (*(v12 + 392) + 8);
  v28 = (*(v12 + 672) + 8);
  if (v22)
  {
    sub_22C36BED8();
    v123 = v29;
    v125 = v27;
    v27 = swift_slowAlloc();
    v128 = sub_22C370060();
    *v27 = 136315138;
    sub_22C36A32C();
    sub_22C7914C4(v30, v31);
    sub_22C633E0C();
    v120 = v26;
    sub_22C909F4C();
    v26 = v32;
    v33 = *v28;
    v34 = sub_22C37170C();
    v33(v34);
    v35 = sub_22C36CA88();
    sub_22C36F9F4(v35, v36, v37);
    sub_22C791FA8();
    *(v27 + 4) = v24;
    _os_log_impl(&dword_22C366000, v20, v21, "Could not format collection: %s", v27, 0xCu);
    sub_22C36FF94(v128);
    sub_22C386DA4();
    sub_22C3699EC();

    (*v127)(v120, v125);
    (v33)(v23, v25);
  }

  else
  {

    v38 = *v28;
    v39 = sub_22C37170C();
    v38(v39);
    (*v127)(v26, v27);
    v40 = sub_22C372FCC();
    v38(v40);
  }

  sub_22C792120();
  if (v42)
  {
    v43 = *(v12 + 1048);
    v44 = *(v12 + 1016);

    sub_22C791F84();

    v45 = *(v26 + 8);
    v46 = sub_22C36ECB4();
    v47(v46);

    v48 = *(v12 + 848);
    v49 = *(v12 + 840);
    v50 = *(v12 + 832);
    sub_22C3889EC();
    v72 = *(v12 + 760);
    v73 = *(v12 + 752);
    v74 = *(v12 + 744);
    v75 = *(v12 + 736);
    v76 = *(v12 + 728);
    v77 = *(v12 + 720);
    v78 = *(v12 + 712);
    v79 = *(v12 + 704);
    v80 = *(v12 + 696);
    v81 = *(v12 + 688);
    sub_22C370A2C();
    v82 = *(v12 + 648);
    v83 = *(v12 + 640);
    v84 = *(v12 + 632);
    v85 = *(v12 + 624);
    v86 = *(v12 + 616);
    v87 = *(v12 + 592);
    v88 = *(v12 + 584);
    v89 = *(v12 + 576);
    v90 = *(v12 + 552);
    v91 = *(v12 + 544);
    v92 = *(v12 + 536);
    v93 = *(v12 + 528);
    v94 = *(v12 + 504);
    v95 = *(v12 + 496);
    v96 = *(v12 + 488);
    v97 = *(v12 + 480);
    v98 = *(v12 + 472);
    v99 = *(v12 + 464);
    v100 = *(v12 + 456);
    v101 = *(v12 + 448);
    v102 = *(v12 + 440);
    v103 = *(v12 + 432);
    v104 = *(v12 + 424);
    v105 = *(v12 + 416);
    v106 = *(v12 + 408);
    v107 = *(v12 + 400);
    v108 = *(v12 + 376);
    v109 = *(v12 + 352);
    v110 = *(v12 + 328);
    v111 = *(v12 + 304);
    v112 = *(v12 + 280);
    v113 = *(v12 + 256);
    v114 = *(v12 + 248);
    v115 = *(v12 + 224);
    v116 = *(v12 + 200);
    v117 = *(v12 + 176);
    v118 = *(v12 + 152);
    v119 = *(v12 + 128);
    v121 = *(v12 + 120);
    v122 = *(v12 + 96);
    v124 = *(v12 + 88);
    v126 = *(v12 + 64);
    (*(v51 + 8))(v27);

    sub_22C36D5E0();
    sub_22C372034();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
  }

  else
  {
    v61 = sub_22C383E14(v41);
    v62(v61);
    v63 = swift_task_alloc();
    *(v12 + 1056) = v63;
    *v63 = v12;
    sub_22C3776A8();
    sub_22C372034();

    return sub_22C77DAE4(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12);
  }
}

void sub_22C7830D0(void *a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v3 = sub_22C369914(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v83 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v83 - v12;
  v14 = sub_22C90021C();
  sub_22C36A748();
  sub_22C36C640(v15, v16, v17, v14);
  sub_22C36A748();
  sub_22C36C640(v18, v19, v20, v14);
  v21 = sub_22C3702F4();
  sub_22C791F6C(v21, v22, v23, v14);
  v24 = type metadata accessor for PayloadLayout();
  sub_22C3856A0(v24);
  sub_22C79184C(v13, v11, 0, v8, v25, v26, v27, v28, 0);
  sub_22C3A5908(&qword_27D9BAD88, &unk_22C90D630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F7F0;
  v30 = sub_22C792000();
  v31 = v30;
  if (v30)
  {
    v32 = [v30 street];

    sub_22C90A11C();
    sub_22C791D08();
  }

  else
  {
    v14 = 0;
  }

  *(inited + 32) = v31;
  *(inited + 40) = v14;
  v33 = sub_22C792000();
  v34 = v33;
  if (v33)
  {
    v35 = [v33 city];

    sub_22C90A11C();
    sub_22C791D08();
  }

  else
  {
    v14 = 0;
  }

  *(inited + 48) = v34;
  *(inited + 56) = v14;
  v36 = sub_22C792000();
  v37 = v36;
  if (v36)
  {
    v38 = [v36 state];

    sub_22C90A11C();
    sub_22C791D08();
  }

  else
  {
    v14 = 0;
  }

  *(inited + 64) = v37;
  *(inited + 72) = v14;
  v39 = sub_22C792000();
  v40 = v39;
  if (v39)
  {
    v41 = [v39 postalCode];

    sub_22C90A11C();
    sub_22C791D08();
  }

  else
  {
    v14 = 0;
  }

  *(inited + 80) = v40;
  *(inited + 88) = v14;
  v42 = sub_22C792000();
  v43 = v42;
  if (v42)
  {
    v44 = [v42 country];

    sub_22C90A11C();
    sub_22C791D08();
  }

  else
  {
    v14 = 0;
  }

  v45 = 0;
  *(inited + 96) = v43;
  *(inited + 104) = v14;
  v46 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v45 == 5)
    {
      swift_setDeallocating();
      sub_22C590040();
      v57 = 0;
      v58 = *(v46 + 16);
      v59 = MEMORY[0x277D84F90];
LABEL_32:
      v60 = 16 * v57 + 40;
      while (v58 != v57)
      {
        if (v57 >= *(v46 + 16))
        {
          goto LABEL_54;
        }

        ++v57;
        v61 = v60 + 16;
        v62 = *(v46 + v60);
        v60 += 16;
        if (v62)
        {
          v63 = *(v46 + v61 - 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = *(v59 + 16);
            sub_22C36D270();
            sub_22C590270();
            v59 = v68;
          }

          v65 = *(v59 + 16);
          v64 = *(v59 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_22C369AB0(v64);
            sub_22C590270();
            v59 = v69;
          }

          *(v59 + 16) = v65 + 1;
          v66 = v59 + 16 * v65;
          *(v66 + 32) = v63;
          *(v66 + 40) = v62;
          goto LABEL_32;
        }
      }

      v84 = v59;
      sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      sub_22C3F035C();
      sub_22C90A04C();

      v70 = sub_22C8F8EA4(a1);
      if (v71)
      {
        v72 = HIBYTE(v71) & 0xF;
        if ((v71 & 0x2000000000000000) == 0)
        {
          v72 = v70 & 0xFFFFFFFFFFFFLL;
        }

        if (v72)
        {
          sub_22C792174();
          if (v73)
          {
            v74 = sub_22C36BBCC();
            sub_22C795F7C(v74, v75, 1);

            v76 = sub_22C3806B8();
            sub_22C796314(v76, v77);
            sub_22C37FF48();

            return;
          }

          v81 = sub_22C36BBCC();
          sub_22C795F7C(v81, v82, 1);
          sub_22C37FF48();

LABEL_52:

          return;
        }
      }

      sub_22C792174();
      if (!v78)
      {

        return;
      }

      v79 = sub_22C3806B8();
      sub_22C796314(v79, v80);
      sub_22C37FF48();

      goto LABEL_52;
    }

    if (v45 > 4)
    {
      break;
    }

    v47 = inited + 16 * v45;
    v48 = *(v47 + 32);
    v49 = *(v47 + 40);
    if (v49 && (!v48 ? (v50 = v49 == 0xE000000000000000) : (v50 = 0), v50 || (v83 = *(v47 + 32), v51 = sub_22C90B4FC(), v48 = v83, (v51 & 1) != 0)))
    {
      ++v45;
    }

    else
    {
      v83 = v48;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B6D08(0, *(v46 + 16) + 1, 1);
        v46 = v84;
      }

      v54 = *(v46 + 16);
      v53 = *(v46 + 24);
      v55 = v83;
      if (v54 >= v53 >> 1)
      {
        v56 = sub_22C369AB0(v53);
        sub_22C3B6D08(v56, v54 + 1, 1);
        v55 = v83;
        v46 = v84;
      }

      ++v45;
      *(v46 + 16) = v54 + 1;
      *(v46 + 16 * v54 + 32) = v55;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_22C7836AC(uint64_t *a1)
{
  v2 = sub_22C90929C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9063DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C90928C();
  v13 = sub_22C790E30(v12);
  if (!v14)
  {
LABEL_23:
    sub_22C9040CC();
    (*(v3 + 16))(v6, a1, v2);
    v22 = sub_22C9063CC();
    v23 = sub_22C90AADC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38 = v33;
      *v24 = 136315138;
      v25 = sub_22C90928C();
      v26 = sub_22C790E30(v25);
      v34 = v7;
      v36 = v26;
      v37 = v27;
      sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
      v35 = v8;
      sub_22C7911C0();
      v28 = sub_22C909F4C();
      v30 = v29;
      (*(v3 + 8))(v6, v2);

      v31 = sub_22C36F9F4(v28, v30, &v38);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_22C366000, v22, v23, "Asked to format an unsupported file type: %s", v24, 0xCu);
      v32 = v33;
      sub_22C36FF94(v33);
      MEMORY[0x2318B9880](v32, -1, -1);
      MEMORY[0x2318B9880](v24, -1, -1);

      (*(v35 + 8))(v11, v34);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
    }

    return 0;
  }

  v15 = v13;
  v16 = v14;
  v17 = v13 == 0x742E63696C627570 && v14 == 0xEB00000000747865;
  if (v17 || (sub_22C90B4FC() & 1) != 0)
  {

    return sub_22C78E0F4(a1);
  }

  v35 = v8;
  v19 = v15 == 0x722E63696C627570 && v16 == 0xEA00000000006674;
  if (v19 || (sub_22C90B4FC() & 1) != 0)
  {

    return sub_22C78E61C(a1);
  }

  if (v15 == 0x752E63696C627570 && v16 == 0xEA00000000006C72)
  {
  }

  else
  {
    v21 = sub_22C90B4FC();

    v8 = v35;
    if ((v21 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  return sub_22C78ED84(a1);
}

uint64_t sub_22C783B28(uint64_t a1)
{
  v176 = sub_22C90983C();
  v2 = sub_22C369824(v176);
  v175 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  sub_22C3698F8(v6);
  v7 = sub_22C90991C();
  v8 = sub_22C369824(v7);
  v178 = v9;
  v179 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v177 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  v181 = v14;
  v187 = sub_22C9098DC();
  v15 = sub_22C369824(v187);
  v185 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  v184 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA64();
  v183 = v21;
  v22 = sub_22C3A5908(&qword_27D9BFFD8, &qword_22C925C90);
  v23 = sub_22C369914(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v190 = &v170 - v26;
  v27 = sub_22C3A5908(&qword_27D9BFFE0, &qword_22C925C98);
  v28 = sub_22C369824(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C3698E4();
  v173 = v33;
  sub_22C369930();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA58();
  v189 = v35;
  sub_22C369930();
  MEMORY[0x28223BE20](v36);
  v38 = &v170 - v37;
  v39 = sub_22C9063DC();
  v40 = sub_22C369824(v39);
  v191 = v41;
  v192 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  v182 = v44;
  sub_22C369930();
  MEMORY[0x28223BE20](v45);
  sub_22C36BA58();
  v188 = v46;
  sub_22C369930();
  MEMORY[0x28223BE20](v47);
  sub_22C36BA58();
  v180 = v48;
  sub_22C369930();
  MEMORY[0x28223BE20](v49);
  v51 = &v170 - v50;
  v52 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v53 = sub_22C369914(v52);
  v55 = *(v54 + 64);
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v170 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v60 = &v170 - v59;
  v195 = 0;
  v196 = 0xE000000000000000;
  sub_22C791344(a1, &v170 - v59, &qword_27D9BC390, &qword_22C912AC0);
  v61 = sub_22C90993C();
  v62 = sub_22C3707B4();
  sub_22C36D0A8(v62, v63, v61);
  if (v91)
  {
    sub_22C376B84(v60, &qword_27D9BC390, &qword_22C912AC0);
    return 0;
  }

  v172 = v38;
  v170 = v30;
  v186 = v27;
  v65 = sub_22C9098BC();
  v67 = v66;
  sub_22C36BBA8(v61);
  v69 = *(v68 + 8);
  v70 = sub_22C379FC8();
  v171 = v71;
  (v71)(v70);
  sub_22C9040CC();
  v72 = sub_22C9063CC();
  v73 = sub_22C90AABC();
  if (sub_22C370048(v73))
  {
    v75 = sub_22C36D240();
    *v75 = 0;
    _os_log_impl(&dword_22C366000, v72, v73, "Falling back to displayRepresentation", v75, 2u);
    sub_22C37B09C();
  }

  v76 = v191 + 8;
  v77 = *(v191 + 8);
  v77(v51, v192);
  MEMORY[0x2318B7850](v65, v67);

  v78 = sub_22C370018();
  sub_22C791344(v78, v79, v80, v81);
  v82 = sub_22C383C3C();
  sub_22C36D0A8(v82, v83, v61);
  if (v91)
  {
    sub_22C376B84(v58, &qword_27D9BC390, &qword_22C912AC0);
    v87 = v190;
    v84 = sub_22C381B6C();
    sub_22C36C640(v84, v85, v86, v186);
  }

  else
  {
    v87 = v190;
    sub_22C90992C();
    v171(v58, v61);
    v88 = sub_22C36CCF8();
    v89 = v186;
    sub_22C36D0A8(v88, v90, v186);
    if (!v91)
    {
      v92 = v170;
      v93 = v170[4];
      v94 = sub_22C36A724();
      v95(v94);
      v96 = v92[2];
      v97 = sub_22C372FCC();
      v96(v97);
      v98 = v92[11];
      v99 = sub_22C38A990();
      v101 = v100(v99);
      if (v101 == *MEMORY[0x277D731D8])
      {
        v102 = v92[12];
        v103 = sub_22C38A990();
        v104(v103);
        v105 = v185;
        v106 = *(v185 + 32);
        v107 = sub_22C36ECB4();
        v106(v107);
        sub_22C9040CC();
        v108 = v184;
        v109 = sub_22C3806B8();
        v106(v109);
        v110 = sub_22C9063CC();
        v111 = sub_22C90AADC();
        if (sub_22C36FBB4(v111))
        {
          sub_22C36BED8();
          v112 = swift_slowAlloc();
          v113 = sub_22C370060();
          v193 = v113;
          *v112 = 136315138;
          sub_22C9098CC();
          v114 = sub_22C38B194();
          (*(v105 + 8))(v114, v187);
          v115 = sub_22C372FA4();
          sub_22C36F9F4(v115, v116, v117);
          sub_22C38B194();

          *(v112 + 4) = v108;
          _os_log_impl(&dword_22C366000, v110, v111, "Request to format unsupported displayRepresentation.lazy field: %s", v112, 0xCu);
          sub_22C36FF94(v113);
          sub_22C3699EC();
          sub_22C372FB0();
        }

        else
        {

          v143 = *(v105 + 8);
          v144 = sub_22C372FCC();
          v145(v144);
        }

        v77(v188, v192);
        (v92[1])(v172, v186);
        return v195;
      }

      if (v101 != *MEMORY[0x277D731E0])
      {
        v191 = v76;
        v146 = v182;
        sub_22C9040CC();
        v147 = v173;
        (v96)(v173, v172, v89);
        v148 = sub_22C9063CC();
        v149 = sub_22C90AADC();
        if (sub_22C5CAB64(v149))
        {
          sub_22C36BED8();
          v150 = swift_slowAlloc();
          v190 = sub_22C370060();
          v193 = v190;
          *v150 = 136315138;
          v151 = sub_22C90982C();
          v152 = v147;
          v153 = v170[1];
          v153(v152, v89);
          v154 = sub_22C372FA4();
          sub_22C36F9F4(v154, v155, v156);
          sub_22C38B194();

          *(v150 + 4) = v151;
          _os_log_impl(&dword_22C366000, v148, v149, "Request to format unsupported displayRepresentation.subtitle type: %s", v150, 0xCu);
          sub_22C791870();
          sub_22C386DA4();

          v77(v182, v192);
        }

        else
        {

          v165 = v147;
          v153 = v170[1];
          v153(v165, v89);
          v77(v146, v192);
        }

        v153(v172, v89);
        v166 = sub_22C38A990();
        (v153)(v166);
        return v195;
      }

      v118 = v170[12];
      v119 = sub_22C38A990();
      v120(v119);
      v122 = v178;
      v121 = v179;
      v123 = *(v178 + 32);
      v124 = sub_22C36ECB4();
      v125(v124);
      v126 = v174;
      sub_22C9098FC();
      v127 = v175;
      v128 = v176;
      v129 = (*(v175 + 88))(v126, v176);
      v130 = v177;
      if (v129 != *MEMORY[0x277D731F0])
      {
        if (v129 == *MEMORY[0x277D73200])
        {
          v157 = sub_22C9098EC();
          v159 = v158;

          v160 = HIBYTE(v159) & 0xF;
          if ((v159 & 0x2000000000000000) == 0)
          {
            v160 = v157 & 0xFFFFFFFFFFFFLL;
          }

          if (v160)
          {
            v161 = sub_22C9098EC();
            v193 = 10;
            v194 = 0xE100000000000000;
            MEMORY[0x2318B7850](v161);

            MEMORY[0x2318B7850](v193, v194);
          }

          v162 = *(v122 + 8);
          v163 = sub_22C370018();
          v164(v163);
          goto LABEL_33;
        }

        if (v129 != *MEMORY[0x277D731F8])
        {
          (*(v127 + 8))(v126, v128);
        }
      }

      v191 = v76;
      v131 = v180;
      sub_22C9040CC();
      sub_22C791EC4();
      v132 = sub_22C3806B8();
      v133(v132);
      v134 = sub_22C9063CC();
      v135 = sub_22C90AADC();
      if (sub_22C36FBB4(v135))
      {
        sub_22C36BED8();
        v136 = swift_slowAlloc();
        v190 = v136;
        v193 = sub_22C370060();
        *v136 = 136315138;
        sub_22C9098EC();
        v137 = sub_22C38B194();
        v138 = *(v122 + 8);
        v138(v137, v121);
        v139 = sub_22C372FA4();
        sub_22C36F9F4(v139, v140, v141);
        sub_22C38B194();

        v142 = v190;
        *(v190 + 4) = v130;
        _os_log_impl(&dword_22C366000, v134, v135, "Request to format unsupported displayRepresentation.static type: %s", v142, 0xCu);
        sub_22C792208();
        sub_22C3699EC();
        sub_22C37E124();

        v77(v180, v192);
        v138(v181, v121);
      }

      else
      {

        v167 = *(v122 + 8);
        v168 = sub_22C372FCC();
        v167(v168);
        v77(v131, v192);
        v169 = sub_22C370018();
        v167(v169);
      }

LABEL_33:
      (v170[1])(v172, v89);
      return v195;
    }
  }

  sub_22C376B84(v87, &qword_27D9BFFD8, &qword_22C925C90);
  return v195;
}

uint64_t sub_22C784748()
{
  sub_22C369980();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = sub_22C90363C();
  v1[28] = v4;
  sub_22C3699B8(v4);
  v1[29] = v5;
  v7 = *(v6 + 64);
  v1[30] = sub_22C3699D4();
  v8 = sub_22C90026C();
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  v1[31] = sub_22C3699D4();
  v11 = sub_22C9001BC();
  v1[32] = v11;
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  v1[33] = sub_22C3699D4();
  v14 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v1[34] = v14;
  sub_22C3699B8(v14);
  v1[35] = v15;
  v17 = *(v16 + 64);
  v1[36] = sub_22C36D0D4();
  v1[37] = swift_task_alloc();
  v18 = sub_22C90021C();
  v1[38] = v18;
  sub_22C3699B8(v18);
  v1[39] = v19;
  v21 = *(v20 + 64);
  v1[40] = sub_22C36D0D4();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v22 = sub_22C3A5908(&qword_27D9BFFB0, &qword_22C925C40);
  sub_22C369914(v22);
  v24 = *(v23 + 64);
  v1[43] = sub_22C36D0D4();
  v1[44] = swift_task_alloc();
  v25 = sub_22C90919C();
  v1[45] = v25;
  sub_22C3699B8(v25);
  v1[46] = v26;
  v28 = *(v27 + 64);
  v1[47] = sub_22C36D0D4();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v29 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v29);
  v31 = *(v30 + 64);
  v1[52] = sub_22C3699D4();
  v32 = sub_22C9063DC();
  v1[53] = v32;
  sub_22C3699B8(v32);
  v1[54] = v33;
  v35 = *(v34 + 64);
  v1[55] = sub_22C36D0D4();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v36 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v36);
  v38 = *(v37 + 64);
  v1[64] = sub_22C36D0D4();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v39 = sub_22C9093BC();
  v1[68] = v39;
  sub_22C3699B8(v39);
  v1[69] = v40;
  v42 = *(v41 + 64);
  v1[70] = sub_22C36D0D4();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v43 = sub_22C90952C();
  v1[78] = v43;
  sub_22C3699B8(v43);
  v1[79] = v44;
  v46 = *(v45 + 64);
  v1[80] = sub_22C36D0D4();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v47 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v47);
  v49 = *(v48 + 64);
  v1[83] = sub_22C36D0D4();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v50 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v50, v51, v52);
}

uint64_t sub_22C784C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v393 = v12;
  v13 = *(v12 + 696);
  v14 = *(v12 + 688);
  v15 = *(v12 + 680);
  v16 = *(v12 + 656);
  v17 = *(v12 + 648);
  v18 = *(v12 + 632);
  v19 = *(v12 + 624);
  v20 = *(v12 + 304);
  v21 = *(v12 + 200);
  v22 = sub_22C3702F4();
  sub_22C36C640(v22, v23, v24, v20);
  v25 = sub_22C381B6C();
  sub_22C36C640(v25, v26, v27, v20);
  sub_22C36A748();
  sub_22C791F6C(v28, v29, v30, v20);
  v31 = type metadata accessor for PayloadLayout();
  *(v12 + 704) = v31;
  sub_22C3856A0(v31);
  v32 = sub_22C372468();
  v39 = sub_22C79184C(v32, v33, v34, v15, v35, v36, v37, v38, v378);
  *(v12 + 712) = v39;
  sub_22C9090AC();
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v17);
  v40 = *(v18 + 8);
  v41 = sub_22C3806B8();
  v40(v41);
  v42 = *(v18 + 88);
  v43 = sub_22C36D264();
  v45 = v44(v43);
  v46 = *(v12 + 648);
  if (v45 != *MEMORY[0x277D72D28])
  {
    v60 = *(v12 + 440);
    v62 = *(v12 + 368);
    v61 = *(v12 + 376);
    v63 = *(v12 + 360);
    v64 = *(v12 + 200);
    (v40)(v46, *(v12 + 624));
    sub_22C9040CC();
    v65 = *(v62 + 16);
    v66 = sub_22C50B478();
    v67(v66);
    v68 = sub_22C9063CC();
    v69 = sub_22C90AADC();
    if (sub_22C5CAB64(v69))
    {
      v70 = *(v12 + 640);
      v71 = *(v12 + 624);
      v72 = *(v12 + 432);
      v383 = *(v12 + 424);
      v384 = *(v12 + 440);
      v74 = *(v12 + 368);
      v73 = *(v12 + 376);
      v381 = *(v12 + 360);
      sub_22C36BED8();
      v75 = swift_slowAlloc();
      v76 = sub_22C370060();
      v391 = v76;
      *v75 = 136315138;
      sub_22C9090AC();
      sub_22C36D390();
      v77 = sub_22C90A1AC();
      v79 = v78;
      (*(v74 + 8))(v73, v381);
      sub_22C36F9F4(v77, v79, &v391);
      sub_22C37BC08();

      *(v75 + 4) = v73;
      _os_log_impl(&dword_22C366000, v68, v69, "Encountered invalid entityValue.type: %s", v75, 0xCu);
      sub_22C36FF94(v76);
      sub_22C37B09C();
      sub_22C36C30C();

      (*(v72 + 8))(v384, v383);
    }

    else
    {
      v81 = *(v12 + 432);
      v80 = *(v12 + 440);
      v82 = *(v12 + 424);
      v84 = *(v12 + 368);
      v83 = *(v12 + 376);
      v85 = *(v12 + 360);

      v86 = *(v84 + 8);
      v87 = sub_22C36ECB4();
      v88(v87);
      v89 = *(v81 + 8);
      v90 = sub_22C36BBCC();
      v91(v90);
    }

    type metadata accessor for InterpreterError();
    sub_22C373954();
    sub_22C7914C4(v92, v93);
    sub_22C3700B4();
    goto LABEL_22;
  }

  (*(*(v12 + 632) + 96))(*(v12 + 648), *(v12 + 624));
  v47 = *v46;
  v49 = v47[2];
  v48 = v47[3];
  *(v12 + 720) = v48;
  v51 = v47[4];
  v50 = v47[5];
  *(v12 + 728) = v50;

  v52 = v49 == 0xD000000000000028 && 0x800000022C92EB40 == v48;
  v53 = v52;
  if (v52 || (sub_22C7918A4() & 1) != 0)
  {
    sub_22C36EE00();
    v55 = v51 == 0xD000000000000012 && v54 == v50;
    if (v55 || (sub_22C791B20() & 1) != 0)
    {
      v56 = swift_task_alloc();
      *(v12 + 736) = v56;
      *v56 = v12;
      v56[1] = sub_22C786408;
      v57 = *(v12 + 216);
      sub_22C386674(*(v12 + 200));
      sub_22C791C54();

      return sub_22C78A6E0();
    }

    if (v53)
    {
      goto LABEL_32;
    }
  }

  if (sub_22C7918A4())
  {
LABEL_32:
    sub_22C36EE00();
    v103 = v51 == 0xD000000000000012 && v102 == v50;
    if (v103 || (sub_22C791B20() & 1) != 0)
    {
      goto LABEL_53;
    }

    if (v53)
    {
      goto LABEL_39;
    }
  }

  if (sub_22C7918A4())
  {
LABEL_39:
    v104 = v51 == 0x4C4E686372616553 && v50 == 0xEF797469746E4547;
    if (v104 || (sub_22C791B20() & 1) != 0)
    {
      goto LABEL_53;
    }

    if (v53)
    {
      goto LABEL_46;
    }
  }

  if (sub_22C7918A4())
  {
LABEL_46:
    sub_22C36EE00();
    v106 = v51 == 0xD000000000000012 && v105 == v50;
    if (v106 || (sub_22C791B20() & 1) != 0)
    {
      goto LABEL_53;
    }

    if (v53)
    {
      goto LABEL_48;
    }
  }

  if (sub_22C7918A4())
  {
LABEL_48:
    sub_22C36EE00();
    v108 = v51 == 0xD000000000000015 && v107 == v50;
    if (v108 || (sub_22C791B20() & 1) != 0)
    {
LABEL_53:

      v109 = *(v12 + 480);
      v110 = *(v12 + 400);
      v111 = *(v12 + 360);
      v112 = *(v12 + 368);
      v113 = *(v12 + 200);

      sub_22C9040CC();
      v114 = *(v112 + 16);
      v115 = sub_22C37B220();
      v116(v115);
      v117 = sub_22C9063CC();
      v118 = sub_22C90AABC();
      v119 = sub_22C791C0C(v118);
      v120 = *(v12 + 480);
      v122 = *(v12 + 424);
      v121 = *(v12 + 432);
      v123 = *(v12 + 400);
      v125 = *(v12 + 360);
      v124 = *(v12 + 368);
      if (v119)
      {
        sub_22C36BED8();
        swift_slowAlloc();
        v391 = sub_22C388D58();
        *v122 = 136315138;
        sub_22C372D4C();
        sub_22C7914C4(v126, v127);
        sub_22C6B01B0();
        sub_22C909F4C();
        v128 = sub_22C37FA34();
        v129(v128);
        v130 = sub_22C36D390();
        sub_22C36F9F4(v130, v131, v132);
        sub_22C3743B4();
        *(v122 + 4) = v123;
        sub_22C36D418(&dword_22C366000, "Attempting to render string from: %s", v53);
        sub_22C3817B8();
        sub_22C370510();

        (*(v121 + 8))(v120, v122);
      }

      else
      {

        v133 = sub_22C37FA34();
        v134(v133);
        v135 = sub_22C3805D8();
        v137(v135, v136);
      }

      v138 = *(v12 + 200);
      v139 = MEMORY[0x277D84F90];
      *(v12 + 192) = MEMORY[0x277D84F90];
      v140 = sub_22C90914C();
      *(v12 + 792) = v140;
      v141 = *(v140 + 32);
      *(v12 + 1084) = v141;
      v142 = -1;
      v143 = -1 << v141;
      v144 = *(v140 + 64);
      if (-v143 < 64)
      {
        v142 = ~(-1 << -v143);
      }

      *(v12 + 800) = v139;
      v145 = v142 & v144;
      if (v145)
      {
        v146 = 0;
LABEL_63:
        v149 = *(v12 + 600);
        v150 = *(v12 + 552);
        v151 = *(v12 + 544);
        v152 = *(v12 + 344);
        v117 = *(v12 + 272);
        v153 = (v145 - 1) & v145;
        v154 = *(v140 + 56);
        v155 = (*(v140 + 48) + 16 * (__clz(__rbit64(v145)) | (v146 << 6)));
        v157 = *v155;
        v156 = v155[1];
        v158 = *(v150 + 72);
        sub_22C375D94();
        v159 = sub_22C383264();
        v160(v159);
        v161 = *(v117 + 48);
        *v152 = v157;
        *(v152 + 1) = v156;
        (*(v150 + 32))(&v152[v161], v149, v151);
        sub_22C36BECC();
        sub_22C36C640(v162, v163, v164, v117);

        v148 = v146;
      }

      else
      {
        v147 = 0;
        v148 = ((63 - v143) >> 6) - 1;
        while (v148 != v147)
        {
          v146 = v147 + 1;
          v145 = *(v140 + 72 + 8 * v147++);
          if (v145)
          {
            goto LABEL_63;
          }
        }

        v207 = *(v12 + 344);
        v208 = *(v12 + 272);
        sub_22C36A748();
        sub_22C36C640(v209, v210, v211, v212);
        v153 = 0;
      }

      *(v12 + 816) = v148;
      *(v12 + 808) = v153;
      v165 = *(v12 + 352);
      v166 = *(v12 + 272);
      sub_22C7912F0(*(v12 + 344), v165, &qword_27D9BFFB0, &qword_22C925C40);
      v167 = sub_22C3707B4();
      sub_22C36D0A8(v167, v168, v166);
      if (!v52)
      {
        v175 = sub_22C7919F0();
        v176(v175);
        sub_22C36A748();
        sub_22C36C640(v177, v178, v179, v153);
        sub_22C36A748();
        sub_22C36C640(v180, v181, v182, v153);
        v183 = sub_22C3702F4();
        sub_22C36C640(v183, v184, v185, v153);
        v186 = *(v117 + 48);
        v187 = *(v117 + 52);
        swift_allocObject();
        sub_22C3801E0();
        v188 = sub_22C36CA88();
        *(v12 + 824) = sub_22C79184C(v188, v189, 0, v165, v190, v191, v192, v193, v379);
        v194 = sub_22C36A724();
        *(v12 + 832) = sub_22C7960BC(v194, v195);

        v196 = swift_task_alloc();
        *(v12 + 840) = v196;
        *v196 = v12;
        sub_22C791B00(v196);
        v197 = *(v12 + 592);
LABEL_71:
        v198 = *(v12 + 216);
        sub_22C386674(v197);
LABEL_72:
        sub_22C791C54();

        return sub_22C77DAE4(v199, v200, v201, v202, v203, v204, v205, v206, a9, a10, a11, a12);
      }

      v169 = *(v12 + 792);
      v170 = *(v12 + 712);

      sub_22C7973A4(MEMORY[0x277D84F90]);
LABEL_67:

      goto LABEL_68;
    }
  }

  v213 = v49 == 0xD00000000000001BLL && 0x800000022C92EBF0 == v48;
  v214 = v213;
  if (v213 || (sub_22C7918A4() & 1) != 0)
  {
    v215 = v51 == 0x45746361746E6F43 && v50 == 0xED0000797469746ELL;
    if (v215 || (sub_22C791B20() & 1) != 0)
    {
      v216 = *(v12 + 472);
      v217 = *(v12 + 392);
      v219 = *(v12 + 360);
      v218 = *(v12 + 368);
      v220 = *(v12 + 200);
      sub_22C9040CC();
      v221 = *(v218 + 16);
      v222 = sub_22C36D29C();
      v223(v222);
      v224 = sub_22C9063CC();
      v225 = sub_22C90AABC();
      v226 = os_log_type_enabled(v224, v225);
      v227 = *(v12 + 472);
      v229 = *(v12 + 424);
      v228 = *(v12 + 432);
      v230 = *(v12 + 392);
      v232 = *(v12 + 360);
      v231 = *(v12 + 368);
      if (v226)
      {
        sub_22C36BED8();
        v385 = v225;
        v233 = swift_slowAlloc();
        v388 = v39;
        v391 = sub_22C370060();
        v234 = v391;
        *v233 = 136315138;
        sub_22C372D4C();
        sub_22C7914C4(v235, v236);
        sub_22C37EF94();
        sub_22C909F4C();
        v238 = *(v231 + 8);
        v237 = v231 + 8;
        v239 = sub_22C380120();
        v240(v239);
        v241 = sub_22C36D264();
        sub_22C36F9F4(v241, v242, v243);
        sub_22C791F48();

        *(v233 + 4) = v230;
        sub_22C792188(&dword_22C366000, "Attempting to render ContactEntity: %s", v385);
        sub_22C36FF94(v234);
        v39 = v388;
        sub_22C3699EC();
        sub_22C36C30C();

        (*(v228 + 8))(v227, v229);
      }

      else
      {

        v244 = *(v231 + 8);
        v237 = v231 + 8;
        v245 = sub_22C380120();
        v246(v245);
        v247 = *(v228 + 8);
        v248 = sub_22C36D264();
        v250(v248, v249);
      }

      v251 = *(v12 + 544);
      v252 = *(v12 + 528);
      v253 = *(v12 + 200);
      v254 = sub_22C90914C();
      sub_22C6053C8(v254, v252);

      sub_22C36D0A8(v252, 1, v251);
      if (!v52)
      {
        (*(*(v12 + 552) + 32))(*(v12 + 584), *(v12 + 528), *(v12 + 544));
        v258 = swift_task_alloc();
        *(v12 + 864) = v258;
        *v258 = v12;
        v258[1] = sub_22C7876E8;
        v197 = *(v12 + 584);
        goto LABEL_71;
      }

      sub_22C376B84(*(v12 + 528), &qword_27D9BB908, &qword_22C910960);
      *(v12 + 888) = v39;
      v255 = *(v12 + 200);
      v256 = MEMORY[0x277D84F90];
      *(v12 + 184) = MEMORY[0x277D84F90];
      v257 = sub_22C90914C();
      sub_22C79098C(v257);
      sub_22C3743B4();
      v391 = sub_22C4703D8(v255);
      sub_22C78F540(&v391);

      v320 = v391;
      *(v12 + 896) = v391;
      v321 = *(v320 + 16);
      *(v12 + 904) = v321;
      if (v321)
      {
        sub_22C791CBC();
        v322 = *MEMORY[0x277D729E0];
        result = sub_22C791F00(v323);
        if (!v324)
        {
          __break(1u);
          return result;
        }

        sub_22C791ED0();
        sub_22C791344(v325 + v326, v255, &qword_27D9BADA0, &unk_22C90FA80);
        v327 = sub_22C791B60();
        v328(v327);
        sub_22C791EC4();
        v329(v257, v252 + v256, 0);
        v330 = *(v237 + 88);
        v331 = sub_22C36BAFC();
        if (v332(v331) == v322)
        {
          v333 = sub_22C37B784();
          v334(v333);
          swift_task_alloc();
          sub_22C36CC90();
          *(v12 + 952) = v335;
          *v335 = v336;
          sub_22C387534();
        }

        else
        {
          swift_task_alloc();
          sub_22C36CC90();
          *(v12 + 976) = v366;
          *v366 = v367;
          sub_22C374FC4();
        }

        *(v337 + 8) = v338;
        sub_22C791C44();
        goto LABEL_72;
      }

      v364 = *(v12 + 888);
      sub_22C791DB4();

      v365 = sub_22C8D5B00(MEMORY[0x277D84F90]);

      sub_22C7973A4(v365);

      goto LABEL_67;
    }

    if (v214)
    {
      goto LABEL_97;
    }
  }

  if (sub_22C7918A4())
  {
LABEL_97:
    sub_22C36EE00();
    v260 = v51 == 0xD000000000000019 && v259 == v50;
    if (v260 || (sub_22C791B20() & 1) != 0)
    {
      v261 = *(v12 + 464);
      v262 = *(v12 + 384);
      v264 = *(v12 + 360);
      v263 = *(v12 + 368);
      v265 = *(v12 + 200);
      sub_22C9040CC();
      (*(v263 + 16))(v262, v265, v264);
      v266 = sub_22C9063CC();
      v267 = sub_22C90AABC();
      sub_22C792154(v267);
      v389 = v266;
      v269 = os_log_type_enabled(v266, v268);
      v386 = *(v12 + 464);
      v271 = *(v12 + 424);
      v270 = *(v12 + 432);
      v272 = *(v12 + 384);
      v273 = *(v12 + 360);
      v274 = *(v12 + 368);
      if (v269)
      {
        sub_22C36BED8();
        v380 = swift_slowAlloc();
        v382 = sub_22C370060();
        v391 = v382;
        *v380 = 136315138;
        sub_22C372D4C();
        sub_22C7914C4(v275, v276);
        v277 = sub_22C909F4C();
        v279 = v278;
        v280 = *(v274 + 8);
        v281 = sub_22C38644C();
        v282(v281);
        sub_22C36F9F4(v277, v279, &v391);
        sub_22C38B194();

        *(v380 + 4) = v272;
        sub_22C38073C();
        sub_22C792048(v283, v389, v284, v285);
        sub_22C36FF94(v382);
        sub_22C370510();
        sub_22C36BAE0();

        (*(v270 + 8))(v386, v271);
      }

      else
      {

        v339 = *(v274 + 8);
        v340 = sub_22C38644C();
        v341(v340);
        (*(v270 + 8))(v386, v271);
      }

      v342 = *(v12 + 544);
      v343 = *(v12 + 520);
      v344 = *(v12 + 200);
      v345 = sub_22C90914C();
      sub_22C6053C8(v345, v343);

      sub_22C36D0A8(v343, 1, v342);
      if (v52)
      {
        v346 = *(v12 + 520);
      }

      else
      {
        v347 = *(v12 + 544);
        v348 = *(v12 + 512);
        v349 = *(v12 + 200);
        v350 = *(*(v12 + 552) + 32);
        v350(*(v12 + 568), *(v12 + 520), v347);
        v351 = sub_22C90914C();
        sub_22C6053C8(v351, v348);

        v352 = sub_22C370B74(v348, 1, v347);
        v353 = *(v12 + 544);
        v346 = *(v12 + 512);
        if (v352 != 1)
        {
          v350(*(v12 + 560), *(v12 + 512), *(v12 + 544));
          v363 = swift_task_alloc();
          *(v12 + 1000) = v363;
          *v363 = v12;
          v363[1] = sub_22C788684;
          v197 = *(v12 + 568);
          goto LABEL_71;
        }

        v354 = *(v12 + 568);
        v355 = *(v12 + 552);

        v356 = *(v355 + 8);
        v357 = sub_22C371510();
        v358(v357);
      }

      sub_22C376B84(v346, &qword_27D9BB908, &qword_22C910960);
LABEL_68:
      sub_22C378718();
      v171 = *(v12 + 616);
      v172 = *(v12 + 608);
      sub_22C37FFCC();
      sub_22C791AB0();

      sub_22C36D5E0();
      sub_22C791C54();

      __asm { BRAA            X2, X16 }
    }
  }

  v286 = *(v12 + 232);
  (*(v286 + 104))(*(v12 + 240), *MEMORY[0x277D1ECA8], *(v12 + 224));
  v287 = sub_22C90362C();
  v288 = *(v286 + 8);
  v289 = sub_22C379FC8();
  v290(v289);
  if ((v287 & 1) == 0)
  {
    swift_beginAccess();
    v304 = *(off_27D9BFF70 + 2);
    v305 = (off_27D9BFF70 + 56);
    if (v304)
    {
      do
      {
        v306 = *(v305 - 1);
        v307 = *v305;
        v308 = *(v305 - 3) == v49 && *(v305 - 2) == v48;
        if (v308 || (sub_22C90B4FC() & 1) != 0)
        {
          if (v306 == v51 && v307 == v50)
          {
            goto LABEL_105;
          }

          sub_22C379FC8();
          if (sub_22C791B20())
          {
            goto LABEL_105;
          }
        }

        v305 += 4;
      }

      while (--v304);
    }

    v310 = *(v12 + 448);
    sub_22C9040CC();

    v311 = sub_22C9063CC();
    v312 = sub_22C90AADC();

    v313 = os_log_type_enabled(v311, v312);
    v315 = *(v12 + 424);
    v314 = *(v12 + 432);
    if (v313)
    {
      v387 = *(v12 + 448);
      v316 = sub_22C383050();
      v391 = swift_slowAlloc();
      *v316 = 136315394;
      *(v316 + 4) = sub_22C36F9F4(v49, v48, &v391);
      *(v316 + 12) = 2080;
      v317 = sub_22C372FCC();
      *(v316 + 14) = sub_22C36F9F4(v317, v318, v319);
      _os_log_impl(&dword_22C366000, v311, v312, "AppEntity (%s), (%s) is not in the allowlist.", v316, 0x16u);
      swift_arrayDestroy();
      sub_22C37B09C();
      sub_22C36C30C();

      (*(v314 + 8))(v387, v315);
    }

    else
    {

      v368 = *(v314 + 8);
      v369 = sub_22C3726C4();
      v371(v369, v370);
    }

    type metadata accessor for InterpreterError();
    sub_22C373954();
    sub_22C7914C4(v372, v373);
    swift_allocError();
    v375 = v374;
    v391 = v49;
    v392 = v48;

    MEMORY[0x2318B7850](46, 0xE100000000000000);

    v376 = sub_22C372FCC();
    MEMORY[0x2318B7850](v376);

    v377 = v392;
    *v375 = v391;
    v375[1] = v377;
LABEL_22:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v94 = *(v12 + 696);
    v95 = *(v12 + 688);
    v96 = *(v12 + 680);
    v97 = *(v12 + 672);
    v98 = *(v12 + 664);
    sub_22C792160();
    v99 = *(v12 + 608);
    sub_22C37FFCC();
    sub_22C791AB0();

    sub_22C369A24();
    sub_22C791C54();

    __asm { BRAA            X1, X16 }
  }

LABEL_105:
  v291 = *(v12 + 456);
  sub_22C9040CC();

  v292 = sub_22C9063CC();
  v293 = sub_22C90AABC();

  v294 = os_log_type_enabled(v292, v293);
  v295 = *(v12 + 456);
  v297 = *(v12 + 424);
  v296 = *(v12 + 432);
  if (v294)
  {
    v390 = *(v12 + 424);
    v298 = sub_22C383050();
    v391 = swift_slowAlloc();
    *v298 = 136315394;
    v299 = sub_22C36F9F4(v49, v48, &v391);

    *(v298 + 4) = v299;
    *(v298 + 12) = 2080;
    v300 = sub_22C372FCC();
    v303 = sub_22C36F9F4(v300, v301, v302);

    *(v298 + 14) = v303;
    _os_log_impl(&dword_22C366000, v292, v293, "Attempting to coerce (%s), (%s)", v298, 0x16u);
    swift_arrayDestroy();
    sub_22C386DA4();
    sub_22C3699EC();

    (*(v296 + 8))(v295, v390);
  }

  else
  {

    (*(v296 + 8))(v295, v297);
  }

  v359 = swift_task_alloc();
  *(v12 + 1048) = v359;
  *v359 = v12;
  v359[1] = sub_22C789180;
  v360 = *(v12 + 216);
  v361 = *(v12 + 200);
  sub_22C386674(*(v12 + 208));
  sub_22C791C54();

  return sub_22C78C284();
}

uint64_t sub_22C786408()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 736);
  *v3 = *v1;
  *(v2 + 744) = v6;
  *(v2 + 752) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C78650C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  if (v50[93])
  {
    v52 = v50[93];

    sub_22C795BBC();
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      v111 = v50[93];
      v112 = v50[91];
      v113 = v50[90];
      v114 = v50[89];

      v115 = sub_22C79643C(v111);
      sub_22C791B54(v115);

LABEL_12:

      sub_22C378718();
      v116 = v50[77];
      v117 = v50[76];
      sub_22C36C334();
      sub_22C379B1C();

      sub_22C36D5E0();
      sub_22C7918F4();

      return v120(v118, v119, v120, v121, v122, v123, v124, v125, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
    }
  }

  v55 = v50[68];
  v56 = v50[67];
  v57 = v50[25];
  v58 = sub_22C90914C();
  sub_22C6053C8(v58, v56);

  v59 = sub_22C383C3C();
  sub_22C36D0A8(v59, v60, v55);
  if (!v61)
  {
    sub_22C791BDC();
    v82 = v50[69];
    v83 = v50[68];
    v84 = v50[67];
    v85 = v50[63];
    v86 = *(v82 + 32);
    v87 = sub_22C6AF81C();
    v88(v87);
    sub_22C9040CC();
    v89 = *(v82 + 16);
    v90 = sub_22C36D7E0();
    v91(v90);
    v92 = sub_22C9063CC();
    LOBYTE(v82) = sub_22C90AABC();
    v93 = sub_22C36FBB4(v82);
    v94 = v50[76];
    v95 = v50[69];
    v96 = v50[68];
    v97 = v50[63];
    v99 = v50[53];
    v98 = v50[54];
    if (v93)
    {
      sub_22C36BED8();
      swift_slowAlloc();
      sub_22C388D58();
      *v99 = 136315138;
      sub_22C36A32C();
      sub_22C7914C4(v100, v101);
      sub_22C909F4C();
      v195 = v97;
      v103 = v102;
      v104 = *(v95 + 8);
      v105 = sub_22C379FC8();
      v104(v105);
      v106 = sub_22C791C70();
      sub_22C36F9F4(v106, v103, v107);
      sub_22C37FF48();

      *(v99 + 4) = v94;
      sub_22C38073C();
      sub_22C5CD33C(v108, v92, v109, v110);
      sub_22C791870();
      sub_22C370510();

      (*(v98 + 8))(v195, v99);
    }

    else
    {

      v104 = *(v95 + 8);
      v127 = sub_22C379FC8();
      v104(v127);
      v128 = *(v98 + 8);
      v129 = sub_22C5CAA58();
      v131(v129, v130);
    }

    v50[95] = v104;
    v132 = swift_task_alloc();
    v50[96] = v132;
    *v132 = v50;
    v132[1] = sub_22C786DE8;
    v133 = v50[27];
    sub_22C386674(v50[77]);
    sub_22C7918F4();

    return sub_22C77DAE4(v134, v135, v136, v137, v138, v139, v140, v141, a9, a10, a11, a12);
  }

  v62 = v50[52];
  v63 = v50[25];
  sub_22C376B84(v50[67], &qword_27D9BB908, &qword_22C910960);
  sub_22C90915C();
  v64 = sub_22C783B28(v62);
  v66 = v65;
  sub_22C376B84(v62, &qword_27D9BC390, &qword_22C912AC0);
  if (v66)
  {
    a44 = v64;
    v67 = v50[62];
    sub_22C9040CC();
    v68 = sub_22C9063CC();
    v69 = sub_22C90AABC();
    if (sub_22C36D08C(v69))
    {
      v70 = sub_22C36D240();
      *v70 = 0;
      _os_log_impl(&dword_22C366000, v68, v62, "Falling back to display representation for SearchAnswerEntity", v70, 2u);
      sub_22C36BAE0();
    }

    v71 = v50[93];
    v72 = v50[91];
    v73 = v50[90];
    v74 = v50[89];
    v75 = v50[62];
    v77 = v50[53];
    v76 = v50[54];

    v78 = *(v76 + 8);
    v79 = sub_22C36CC9C();
    v80(v79);
    v81 = sub_22C796314(a44, v66);
    sub_22C791B54(v81);

    goto LABEL_12;
  }

  v142 = v50[61];
  v143 = v50[51];
  v144 = v50[45];
  v145 = v50[46];
  v146 = v50[25];
  sub_22C9040CC();
  v147 = sub_22C375B38();
  v148(v147);
  v149 = sub_22C9063CC();
  v150 = sub_22C90AADC();
  v151 = sub_22C791C0C(v150);
  v152 = v50[61];
  v154 = v50[53];
  v153 = v50[54];
  v155 = v50[51];
  v157 = v50[45];
  v156 = v50[46];
  if (v151)
  {
    sub_22C36BED8();
    swift_slowAlloc();
    LODWORD(a42) = v51;
    a45 = sub_22C388D58();
    *v154 = 136315138;
    sub_22C372D4C();
    sub_22C7914C4(v158, v159);
    sub_22C6B01B0();
    sub_22C909F4C();
    a43 = v152;
    v161 = v160;
    v162 = sub_22C37FA34();
    v163(v162);
    v164 = sub_22C791C70();
    sub_22C36F9F4(v164, v161, v165);
    sub_22C3743B4();
    *(v154 + 4) = v155;
    sub_22C36D418(&dword_22C366000, "SearchAnswerEntity contained no valid fields: %s", v51);
    sub_22C3817B8();
    sub_22C370510();

    (*(v153 + 8))(a43, v154);
  }

  else
  {

    v166 = sub_22C37FA34();
    v167(v166);
    v168 = sub_22C3805D8();
    v170(v168, v169);
  }

  v171 = v50[93];
  v172 = v50[91];
  v173 = v50[90];
  v174 = v50[89];
  type metadata accessor for InterpreterError();
  sub_22C373954();
  sub_22C7914C4(v175, v176);
  v196 = sub_22C36D148();
  sub_22C791BC0();
  swift_willThrow();

  v177 = v50[87];
  v178 = v50[86];
  v179 = v50[85];
  v180 = v50[84];
  v181 = v50[83];
  v182 = v50[82];
  v183 = v50[81];
  v184 = v50[80];
  v185 = v50[77];
  v186 = v50[76];
  sub_22C36C334();
  sub_22C379B1C();

  sub_22C38C49C();
  sub_22C7918F4();

  return v188(v187, v188, v189, v190, v191, v192, v193, v194, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v196, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_22C786DE8()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 768);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  *(v5 + 776) = v0;

  if (!v0)
  {
    *(v5 + 784) = v3;
  }

  sub_22C374448();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C786EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  v51 = v50[95];
  v52 = v50[93];
  v53 = v50[91];
  v54 = v50[90];
  v55 = v50[89];
  v56 = v50[77];
  v57 = v50[69];
  v58 = v50[68];
  v59 = sub_22C79643C(v50[98]);
  sub_22C792224(v59);

  v60 = sub_22C36FC2C();
  v51(v60);
  sub_22C378718();
  v61 = v50[77];
  v62 = v50[76];
  sub_22C36B634();
  v74 = v64;
  v75 = v63;

  sub_22C37A38C();
  sub_22C7918F4();

  return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v74, v75, a46, a47, a48, a49, a50);
}

uint64_t sub_22C787124()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 840);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  v5[106] = v0;

  if (v0)
  {
    v11 = v5[104];
    v12 = v5[100];
  }

  else
  {
    v5[107] = v3;
  }

  sub_22C374448();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22C7876E8()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 864);
  *v3 = *v1;
  *(v2 + 872) = v6;
  *(v2 + 880) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C7877EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58)
{
  sub_22C791910();
  a57 = v61;
  a58 = v62;
  sub_22C38B4F8();
  a56 = v58;
  v63 = v58[109];
  if (v63)
  {
    v64 = v58[84];
    v65 = v58[38];
    v59 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
    swift_beginAccess();
    sub_22C791344(v63 + v59, v64, &qword_27D9BB610, &qword_22C925BC0);
    v66 = sub_22C3707B4();
    sub_22C36D0A8(v66, v67, v65);
    if (!v68)
    {
      v74 = v58[89];
      v75 = v58[84];
      v59 = v58[73];
      v76 = v58[69];
      v77 = v58[68];
      v60 = v58[42];
      v78 = v58[38];
      v79 = v58[39];
      v80 = sub_22C7920BC();
      v81(v80);
      v82 = v74;
      sub_22C795F5C(v60, 1);
      sub_22C37FF48();

      v83 = *(v79 + 8);
      v84 = sub_22C36FC2C();
      v85(v84);
      v86 = *(v76 + 8);
      v87 = sub_22C36ECB4();
      v88(v87);
      goto LABEL_7;
    }

    v69 = v58[84];
    v70 = sub_22C79210C();
    v71(v70);

    sub_22C376B84(v69, &qword_27D9BB610, &qword_22C925BC0);
  }

  else
  {
    v72 = sub_22C79210C();
    v73(v72);
  }

  v82 = v58[89];
LABEL_7:
  v89 = v58[110];
  v58[111] = v82;
  v90 = v58[25];
  v91 = MEMORY[0x277D84F90];
  v58[23] = MEMORY[0x277D84F90];
  v92 = sub_22C90914C();
  sub_22C79098C(v92);
  sub_22C3743B4();
  a45 = sub_22C4703D8(v90);
  sub_22C78F540(&a45);
  if (v89)
  {

    sub_22C7918F4();
  }

  else
  {

    v95 = a45;
    v58[112] = a45;
    v96 = *(v95 + 16);
    v58[113] = v96;
    if (v96)
    {
      sub_22C791CBC();
      v97 = *MEMORY[0x277D729E0];
      result = sub_22C791F00(v98);
      if (v99)
      {
        sub_22C791ED0();
        sub_22C791344(v100 + v101, v90, &qword_27D9BADA0, &unk_22C90FA80);
        v102 = sub_22C791B60();
        v103(v102);
        sub_22C791EC4();
        v104(v92, v59 + v91, 0);
        v105 = *(v60 + 88);
        v106 = sub_22C36BAFC();
        if (v107(v106) == v97)
        {
          v108 = sub_22C37B784();
          v109(v108);
          swift_task_alloc();
          sub_22C36CC90();
          v58[119] = v110;
          *v110 = v111;
          sub_22C387534();
        }

        else
        {
          swift_task_alloc();
          sub_22C36CC90();
          v58[122] = v126;
          *v126 = v127;
          sub_22C374FC4();
        }

        *(v112 + 8) = v113;
        sub_22C791C44();
        sub_22C7918F4();

        return sub_22C77DAE4(v128, v129, v130, v131, v132, v133, v134, v135, a9, a10, a11, a12);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v114 = v58[111];
      sub_22C791DB4();

      v115 = sub_22C8D5B00(MEMORY[0x277D84F90]);

      v136 = sub_22C7973A4(v115);

      sub_22C378718();
      v116 = v58[77];
      v117 = v58[76];
      sub_22C36C334();
      sub_22C379B1C();

      sub_22C36D5E0();
      sub_22C7918F4();

      return v120(v118, v119, v120, v121, v122, v123, v124, v125, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v136, a45, a46, a47, a48, a49, a50);
    }
  }

  return result;
}

uint64_t sub_22C787CD0()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 952);
  *v4 = *v1;
  v3[120] = v7;
  v3[121] = v0;

  if (v0)
  {
    v8 = v3[115];
    v9 = v3[112];
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C787DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_22C791C7C();
  sub_22C791D14();
  if (v49[120])
  {
    v53 = v49[120];
    sub_22C795BBC();
    if ((v54 & 1) == 0)
    {
      v48 = sub_22C795F70(v49[117], v49[118]);
      *(v48 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_indent) = 1;
      MEMORY[0x2318B7AA0]();
      sub_22C791DFC(v49[23]);
      if (v58)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }
  }

  v55 = v49[116];
  v56 = v49[115];
  while (1)
  {
    v59 = sub_22C7920E4();
    sub_22C376B84(v59, &qword_27D9BADA0, &unk_22C90FA80);
    if (v50 == v48)
    {
      sub_22C7921C8();
      v60 = sub_22C8D5B00(v55);

      v100 = sub_22C7973A4(v60);

      sub_22C378718();
      v61 = v49[77];
      v62 = v49[76];
      sub_22C36C334();
      v63 = v49[47];
      v98 = v64;
      v99 = v49[48];
      sub_22C36FE4C();

      sub_22C37A38C();
      sub_22C7919D4();

      return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v98, v99, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v100, a45, a46, a47, a48);
    }

    sub_22C791C98();
    if (!v58)
    {
      break;
    }

    __break(1u);
LABEL_19:
    sub_22C369AB0(v57);
    sub_22C90A61C();
LABEL_6:
    sub_22C370018();
    sub_22C90A65C();

    v55 = v49[23];
  }

  v74 = sub_22C791A54(v57);
  sub_22C791344(v74, v48, &qword_27D9BADA0, &unk_22C90FA80);
  v75 = sub_22C791B90();
  v76(v75);
  sub_22C375D94();
  v77 = sub_22C383264();
  v78(v77);
  v79 = *(v52 + 88);
  v80 = sub_22C36BBCC();
  if (v81(v80) == v51)
  {
    v82 = sub_22C37B784();
    v83(v82);
    swift_task_alloc();
    sub_22C36CC90();
    v49[119] = v84;
    *v84 = v85;
    v86 = sub_22C387534();
  }

  else
  {
    swift_task_alloc();
    sub_22C36CC90();
    v49[122] = v88;
    *v88 = v89;
    v86 = sub_22C374FC4();
  }

  *(v86 + 8) = v87;
  sub_22C791C44();
  sub_22C7919D4();

  return sub_22C77DAE4(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12);
}

uint64_t sub_22C7881B4()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 976);
  *v4 = *v1;
  v3[123] = v7;
  v3[124] = v0;

  if (v0)
  {
    v8 = v3[115];
    v9 = v3[112];
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_22C7882CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_22C791C7C();
  sub_22C791D14();
  if (v49[123])
  {
    v53 = v49[123];
    v48 = sub_22C7960BC(v49[117], v49[118]);
    MEMORY[0x2318B7AA0]();
    sub_22C791DFC(v49[23]);
    if (v55)
    {
      sub_22C369AB0(v54);
      sub_22C90A61C();
    }

    sub_22C370018();
    sub_22C90A65C();

    v56 = v49[23];
  }

  else
  {
    v56 = v49[116];
    v57 = v49[115];
  }

  v58 = sub_22C37B784();
  v59(v58);
  v60 = sub_22C7920E4();
  sub_22C376B84(v60, &qword_27D9BADA0, &unk_22C90FA80);
  if (v50 == v48)
  {
    sub_22C7921C8();
    v61 = sub_22C8D5B00(v56);

    v101 = sub_22C7973A4(v61);

    sub_22C378718();
    v62 = v49[77];
    v63 = v49[76];
    sub_22C36C334();
    v64 = v49[47];
    v99 = v65;
    v100 = v49[48];
    sub_22C36FE4C();

    sub_22C37A38C();
    sub_22C7919D4();

    v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v99, v100, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v101, a45, a46, a47, a48);
  }

  else
  {
    sub_22C791C98();
    if (v55)
    {
      __break(1u);
    }

    else
    {
      v75 = sub_22C791A54(v74);
      sub_22C791344(v75, v48, &qword_27D9BADA0, &unk_22C90FA80);
      v76 = sub_22C791B90();
      v77(v76);
      sub_22C375D94();
      v78 = sub_22C383264();
      v79(v78);
      v80 = *(v52 + 88);
      v81 = sub_22C36BBCC();
      if (v82(v81) == v51)
      {
        v83 = sub_22C37B784();
        v84(v83);
        swift_task_alloc();
        sub_22C36CC90();
        v49[119] = v85;
        *v85 = v86;
        sub_22C387534();
      }

      else
      {
        swift_task_alloc();
        sub_22C36CC90();
        v49[122] = v89;
        *v89 = v90;
        v87 = sub_22C374FC4();
      }

      *(v87 + 8) = v88;
      sub_22C791C44();
      sub_22C7919D4();

      sub_22C77DAE4(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_22C788684()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 1000);
  *v3 = *v1;
  *(v2 + 1008) = v6;
  *(v2 + 1016) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C788788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_22C791C7C();
  sub_22C791D14();
  if (v48[126])
  {
    v50 = swift_task_alloc();
    v48[128] = v50;
    *v50 = v48;
    v50[1] = sub_22C788A5C;
    v51 = v48[27];
    sub_22C386674(v48[70]);
    sub_22C7919D4();

    return sub_22C77DAE4(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
  }

  else
  {
    sub_22C3839E4();

    v61 = *(v49 + 8);
    v62 = sub_22C36ECB4();
    v61(v62);
    v63 = sub_22C36D29C();
    v61(v63);
    v64 = v48[87];
    v65 = v48[86];
    v66 = v48[85];
    v67 = v48[84];
    v68 = v48[83];
    sub_22C792160();
    v69 = v48[76];
    sub_22C37FFCC();
    v79 = v70;
    v80 = v48[50];
    v81 = v48[49];
    v82 = v48[48];
    v83 = v48[47];
    v84 = v48[44];
    v85 = v48[43];
    v86 = v48[42];
    v87 = v48[41];
    v88 = v48[40];
    v89 = v48[37];
    v90 = v48[36];
    v91 = v48[33];
    v92 = v48[31];
    v93 = v48[30];

    sub_22C36D5E0();
    sub_22C7919D4();

    return v73(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, a45, a46, a47, a48);
  }
}

uint64_t sub_22C788A5C()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 1024);
  *v3 = *v1;
  *(v2 + 1032) = v6;
  *(v2 + 1040) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22C788B60()
{
  if (v0[129])
  {
    v2 = v0[126];
    v3 = v0[83];
    v4 = v0[38];
    v5 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
    swift_beginAccess();
    sub_22C791344(v2 + v5, v3, &qword_27D9BB610, &qword_22C925BC0);
    v6 = sub_22C3707B4();
    sub_22C36D0A8(v6, v7, v4);
    if (v8)
    {
      sub_22C792140();
      v9 = v0[83];
      v10 = v0[71];
      v11 = v0[70];
      v12 = v0[69];
      v13 = v0[68];

      v14 = *(v12 + 8);
      v15 = sub_22C3726C4();
      v14(v15);
      (v14)(v10, v13);
      sub_22C376B84(v9, &qword_27D9BB610, &qword_22C925BC0);
    }

    else
    {
      (*(v0[39] + 32))(v0[41], v0[83], v0[38]);
      sub_22C795BBC();
      if (v19)
      {
        sub_22C792140();
        v80 = v0[70];
        v82 = v0[71];
        v20 = v0[69];
        v21 = v0[68];
        v22 = v0[41];
        v24 = v0[38];
        v23 = v0[39];

        v25 = *(v23 + 8);
        v26 = sub_22C36CC9C();
        v27(v26);
        v28 = *(v20 + 8);
        v28(v80, v21);
        v28(v82, v21);
      }

      else
      {
        v75 = v0[126];
        v76 = v0[90];
        v81 = v0[71];
        v83 = v0[129];
        v79 = v0[70];
        v34 = v0[69];
        v77 = v0[91];
        v78 = v0[68];
        v35 = v0[40];
        v74 = v0[41];
        v36 = v0[39];
        v72 = v0[89];
        v73 = v0[38];
        v37 = v0[32];
        v38 = v0[33];
        v71 = v0[31];
        sub_22C90019C();
        sub_22C791B3C();
        sub_22C7914C4(v39, v40);
        v0[11] = sub_22C90A48C();
        v0[12] = v41;
        v0[13] = 1008804959;
        v0[14] = 0xE400000000000000;
        v0[15] = 0;
        v0[16] = 0xE000000000000000;
        sub_22C3858B4();
        v42 = sub_22C791E9C();
        v44 = v43;

        v0[17] = v42;
        v0[18] = v44;
        v0[19] = 1596203326;
        v0[20] = 0xE400000000000000;
        v0[21] = 0;
        v0[22] = 0xE000000000000000;
        sub_22C791E9C();
        sub_22C791D08();

        sub_22C90025C();
        sub_22C372164();
        sub_22C90022C();
        sub_22C795F9C(v35, 1);
        v45 = *(v36 + 8);
        v45(v35, v73);

        sub_22C79643C(v83);

        v45(v74, v73);
        v46 = *(v34 + 8);
        v46(v79, v78);
        v46(v81, v78);
      }
    }
  }

  else
  {
    sub_22C791D20();

    v16 = *(v1 + 8);
    v17 = sub_22C36CA88();
    v16(v17);
    v18 = sub_22C50B478();
    v16(v18);
  }

  sub_22C378718();
  v29 = v0[77];
  v30 = v0[76];
  v47 = v0[75];
  v48 = v0[74];
  v49 = v0[73];
  v50 = v0[72];
  v51 = v0[71];
  v52 = v0[70];
  v53 = v0[67];
  v54 = v0[66];
  v55 = v0[65];
  v56 = v0[64];
  v57 = v0[63];
  v58 = v0[62];
  v59 = v0[61];
  v60 = v0[60];
  v61 = v0[59];
  v62 = v0[58];
  v63 = v0[57];
  v64 = v0[56];
  v65 = v0[55];
  v66 = v0[52];
  v67 = v0[51];
  v68 = v0[50];
  v31 = v0[47];
  v69 = v0[49];
  v70 = v0[48];
  sub_22C36FE4C();

  sub_22C37A38C();
  sub_22C791C54();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_22C789180()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v8 = *(v7 + 1048);
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  *(v5 + 1056) = v0;

  if (!v0)
  {
    *(v5 + 1064) = v3;
  }

  sub_22C374448();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C789288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  v51 = v50[89];

  v67 = v50[133];
  sub_22C378718();
  v52 = v50[77];
  v53 = v50[76];
  sub_22C36B634();
  v65 = v55;
  v66 = v54;

  sub_22C37A38C();
  sub_22C7918F4();

  return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v65, v66, v67, a47, a48, a49, a50);
}

uint64_t sub_22C789468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  v51 = v50[91];
  v52 = v50[90];
  v53 = v50[89];

  v67 = v50[94];
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v65 = v55;
  v66 = v54;

  sub_22C375A9C();
  sub_22C7918F4();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v65, v66, v67, a47, a48, a49, a50);
}

uint64_t sub_22C78965C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  v51 = v50[95];
  v52 = v50[93];
  sub_22C791DB4();
  v53 = v50[89];
  v54 = v50[77];
  v55 = v50[69];
  v56 = v50[68];

  v57 = sub_22C36ECB4();
  v51(v57);
  v71 = v50[97];
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v69 = v59;
  v70 = v58;

  sub_22C375A9C();
  sub_22C7918F4();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v69, v70, v71, a47, a48, a49, a50);
}

uint64_t sub_22C78987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  v51 = v50[91];
  v52 = v50[90];
  v53 = v50[89];
  v54 = v50[73];
  v55 = v50[69];
  v56 = v50[68];

  v57 = *(v55 + 8);
  v58 = sub_22C36D264();
  v59(v58);
  v73 = v50[110];
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v71 = v61;
  v72 = v60;

  sub_22C375A9C();
  sub_22C7918F4();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v71, v72, v73, a47, a48, a49, a50);
}

uint64_t sub_22C789A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  v51 = v50[111];
  v52 = v50[91];
  v53 = v50[90];
  v54 = v50[36];

  sub_22C376B84(v54, &qword_27D9BADA0, &unk_22C90FA80);
  v68 = v50[121];
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v66 = v56;
  v67 = v55;

  sub_22C375A9C();
  sub_22C7918F4();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v66, v67, v68, a47, a48, a49, a50);
}

uint64_t sub_22C789CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  v51 = v50[111];
  v52 = v50[91];
  v53 = v50[90];
  v54 = v50[72];
  v55 = v50[69];
  v56 = v50[68];
  v57 = v50[36];

  v58 = *(v55 + 8);
  v59 = sub_22C36D264();
  v60(v59);
  sub_22C376B84(v57, &qword_27D9BADA0, &unk_22C90FA80);
  v74 = v50[124];
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v72 = v62;
  v73 = v61;

  sub_22C375A9C();
  sub_22C7918F4();

  return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v72, v73, v74, a47, a48, a49, a50);
}

uint64_t sub_22C789ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  sub_22C3839E4();

  v52 = *(v51 + 8);
  v53 = sub_22C36ECB4();
  v52(v53);
  v54 = sub_22C36D29C();
  v52(v54);
  v68 = *(v50 + 1016);
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v66 = v56;
  v67 = v55;

  sub_22C375A9C();
  sub_22C7918F4();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v66, v67, v68, a47, a48, a49, a50);
}

uint64_t sub_22C78A0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  sub_22C791D20();

  v52 = *(v51 + 8);
  v53 = sub_22C36CA88();
  v52(v53);
  v54 = sub_22C50B478();
  v52(v54);
  v68 = *(v50 + 1040);
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v66 = v56;
  v67 = v55;

  sub_22C375A9C();
  sub_22C7918F4();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v66, v67, v68, a47, a48, a49, a50);
}

uint64_t sub_22C78A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  v51 = *(v50 + 712);

  v65 = *(v50 + 1056);
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v63 = v53;
  v64 = v52;

  sub_22C375A9C();
  sub_22C7918F4();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v63, v64, v65, a47, a48, a49, a50);
}

uint64_t sub_22C78A4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_22C791910();
  sub_22C38B4F8();
  v51 = v50[103];
  v52 = v50[99];
  v53 = v50[89];
  v54 = v50[74];
  v55 = v50[69];
  v56 = v50[68];

  v57 = *(v55 + 8);
  v58 = sub_22C36D264();
  v59(v58);
  v73 = v50[106];
  sub_22C378718();
  sub_22C791BDC();
  sub_22C36B634();
  v71 = v61;
  v72 = v60;

  sub_22C375A9C();
  sub_22C7918F4();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v71, v72, v73, a47, a48, a49, a50);
}

uint64_t sub_22C78A6E0()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_22C90931C();
  v1[5] = v3;
  sub_22C3699B8(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = sub_22C3699D4();
  v7 = sub_22C9093BC();
  v1[8] = v7;
  sub_22C3699B8(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = sub_22C36D0D4();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v11 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  v1[15] = sub_22C3699D4();
  v14 = sub_22C90906C();
  v1[16] = v14;
  sub_22C3699B8(v14);
  v1[17] = v15;
  v17 = *(v16 + 64);
  v1[18] = sub_22C3699D4();
  v18 = sub_22C90919C();
  v1[19] = v18;
  sub_22C3699B8(v18);
  v1[20] = v19;
  v21 = *(v20 + 64);
  v1[21] = sub_22C36D0D4();
  v1[22] = swift_task_alloc();
  v22 = sub_22C9063DC();
  v1[23] = v22;
  sub_22C3699B8(v22);
  v1[24] = v23;
  v25 = *(v24 + 64);
  v1[25] = sub_22C36D0D4();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v26 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v26);
  v28 = *(v27 + 64);
  v1[32] = sub_22C36D0D4();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v29 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_22C78A9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 264);
  v14 = *(v12 + 272);
  v15 = *(v12 + 248);
  v16 = *(v12 + 256);
  v17 = *(v12 + 176);
  v18 = *(v12 + 152);
  v19 = *(v12 + 160);
  v20 = *(v12 + 24);
  v21 = sub_22C90021C();
  v22 = sub_22C3702F4();
  sub_22C36C640(v22, v23, v24, v21);
  v25 = sub_22C381B6C();
  sub_22C36C640(v25, v26, v27, v21);
  sub_22C36A748();
  sub_22C791F6C(v28, v29, v30, v21);
  v31 = type metadata accessor for PayloadLayout();
  sub_22C3856A0(v31);
  v32 = sub_22C372468();
  *(v12 + 280) = sub_22C79184C(v32, v33, v34, v16, v35, v36, v37, v38, v223);
  sub_22C9040CC();
  *(v12 + 288) = *(v19 + 16);
  *(v12 + 296) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v39 = sub_22C50B478();
  v40(v39);
  v41 = sub_22C9063CC();
  v42 = sub_22C90AABC();
  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v12 + 248);
  v45 = *(v12 + 184);
  v46 = *(v12 + 192);
  v47 = *(v12 + 176);
  v49 = *(v12 + 152);
  v48 = *(v12 + 160);
  if (v43)
  {
    sub_22C36BED8();
    v50 = swift_slowAlloc();
    sub_22C370060();
    *v50 = 136315138;
    sub_22C372D4C();
    sub_22C7914C4(v51, v52);
    sub_22C37EF94();
    sub_22C909F4C();
    v228 = v42;
    v53 = *(v48 + 8);
    v54 = sub_22C380120();
    v53(v54);
    v55 = sub_22C36BAFC();
    sub_22C36F9F4(v55, v56, v57);
    sub_22C37FF48();

    *(v50 + 4) = v47;
    sub_22C792188(&dword_22C366000, "Formatting SearchAnswerEntity: %s", v228);
    sub_22C791870();
    sub_22C36C30C();

    v58 = *(v46 + 8);
    v58(v44, v45);
  }

  else
  {

    v53 = *(v48 + 8);
    v59 = sub_22C380120();
    v53(v59);
    v58 = *(v46 + 8);
    v60 = sub_22C36BAFC();
    v58(v60, v61);
  }

  *(v12 + 304) = v53;
  *(v12 + 312) = v58;
  v62 = *(v12 + 120);
  v63 = *(v12 + 64);
  v64 = *(v12 + 24);
  v65 = sub_22C90914C();
  sub_22C36EE00();
  sub_22C6053C8(v65, v62);

  v66 = sub_22C36CCF8();
  v68 = sub_22C370B74(v66, v67, v63);
  v69 = *(v12 + 120);
  if (v68 == 1)
  {
    sub_22C376B84(v69, &qword_27D9BB908, &qword_22C910960);
LABEL_47:
    v184 = *(v12 + 200);
    sub_22C9040CC();
    v185 = sub_22C9063CC();
    v186 = sub_22C90AADC();
    v187 = sub_22C370048(v186);
    v189 = *(v12 + 192);
    v188 = *(v12 + 200);
    v190 = *(v12 + 184);
    if (v187)
    {
      v191 = sub_22C36D240();
      sub_22C383878(v191);
      sub_22C37B3D4();
      _os_log_impl(v192, v193, v194, v195, v196, 2u);
      sub_22C386DA4();
    }

    v197 = sub_22C36D264();
    (v58)(v197);
    v238 = 0;
    goto LABEL_51;
  }

  v70 = *(v12 + 64);
  v71 = *(v12 + 72);
  v72 = *(v71 + 88);
  *(v12 + 320) = v72;
  *(v12 + 328) = (v71 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  if (v72(v69, v70) != *MEMORY[0x277D729E0])
  {
    v182 = *(v12 + 120);
    sub_22C791CFC();
    v183();
    goto LABEL_47;
  }

  v74 = *(v12 + 136);
  v73 = *(v12 + 144);
  v76 = *(v12 + 120);
  v75 = *(v12 + 128);
  v77 = *(v12 + 64);
  v78 = *(v12 + 72);
  v79 = *(v78 + 96);
  *(v12 + 336) = v79;
  *(v12 + 344) = (v78 + 96) & 0xFFFFFFFFFFFFLL | 0x41D000000000000;
  v79(v76, v77);
  v80 = *v76;
  swift_projectBox();
  v82 = *(v74 + 16);
  v81 = v74 + 16;
  v83 = sub_22C383264();
  v84(v83);

  sub_22C3A5908(&qword_27D9BFFC0, &qword_22C925C58);
  v85 = sub_22C909F0C();
  v86 = sub_22C90905C();
  *(v12 + 352) = v86;
  v87 = *(v86 + 16);
  *(v12 + 360) = v87;
  if (!v87)
  {
LABEL_50:
    v199 = *(v12 + 280);
    v200 = *(v12 + 136);
    v201 = *(v12 + 144);
    v202 = *(v12 + 128);

    sub_22C796AB8();
    v238 = v203;

    v204 = *(v200 + 8);
    v205 = sub_22C36ECB4();
    v206(v205);
LABEL_51:
    sub_22C791D70();
    v224 = *(v12 + 144);
    v225 = *(v12 + 120);
    v226 = *(v12 + 112);
    v227 = *(v12 + 104);
    v229 = *(v12 + 96);
    v230 = *(v12 + 88);
    v232 = *(v12 + 80);
    v234 = *(v12 + 56);

    sub_22C36D5E0();

    return v207(v238);
  }

  v88 = 0;
  *(v12 + 448) = *(*(v12 + 72) + 80);
  *(v12 + 452) = *MEMORY[0x277D72A38];
  *(v12 + 456) = *MEMORY[0x277D72A58];
  *(v12 + 460) = *MEMORY[0x277D729B8];
  *(v12 + 464) = *MEMORY[0x277D729E8];
  v233 = v85;
  while (1)
  {
    *(v12 + 376) = v88;
    *(v12 + 384) = v85;
    *(v12 + 368) = v85;
    if (v88 >= *(*(v12 + 352) + 16))
    {
      break;
    }

    v89 = *(v12 + 452);
    v90 = *(v12 + 448);
    v92 = *(v12 + 320);
    v91 = *(v12 + 328);
    v73 = *(v12 + 64);
    v93 = *(v12 + 72);
    v95 = *(v93 + 16);
    v94 = v93 + 16;
    v80 = v95;
    sub_22C7920D0();
    v49 = *(v94 + 56);
    (v95)(v81, v97 + v49 * v96, v73);
    if (v92(v81, v73) != v89)
    {
      v149 = *(v12 + 208);
      v150 = *(v12 + 112);
      sub_22C791CFC();
      v151();
      sub_22C9040CC();
      v73 = sub_22C9063CC();
      v152 = sub_22C90AADC();
      v153 = sub_22C36D08C(v152);
      v154 = *(v12 + 312);
      v155 = *(v12 + 208);
      v156 = *(v12 + 184);
      v80 = *(v12 + 192);
      if (v153)
      {
        v80 = (v80 + 8);
        v157 = sub_22C36D240();
        sub_22C7918E4(v157);
        sub_22C791F54(&dword_22C366000, v73, v158, "RequestedProperty was not an entity");
        sub_22C36C30C();
      }

      v159 = sub_22C36CA88();
      v154(v159);
      goto LABEL_34;
    }

    v99 = *(v12 + 336);
    v98 = *(v12 + 344);
    v101 = *(v12 + 288);
    v100 = *(v12 + 296);
    v102 = sub_22C791F30();
    v103(v102);
    v104 = *v91;
    v105 = swift_projectBox();
    v101(v73, v105, v81);

    v106 = sub_22C90914C();
    sub_22C791DA8(v106);
    if (!v107 || (v108 = sub_22C36E2BC(1701667182, 0xE400000000000000), (v109 & 1) == 0))
    {

LABEL_27:
      v160 = *(v12 + 216);
      sub_22C9040CC();
      v73 = sub_22C9063CC();
      v161 = sub_22C90AADC();
      sub_22C36D08C(v161);
      v162 = *(v12 + 312);
      v237 = *(v12 + 304);
      sub_22C792088();
      if (v163)
      {
        v80 = (v94 + 8);
        v164 = sub_22C36D240();
        sub_22C7918E4(v164);
        sub_22C791F54(&dword_22C366000, v73, v165, "RequestedProperty had no name field");
        sub_22C36C30C();
      }

      else
      {

        v73 = (v80 + 8);
      }

      v166 = sub_22C371510();
      v162(v166);
      goto LABEL_32;
    }

    v110 = *(v12 + 456);
    v112 = *(v12 + 320);
    v111 = *(v12 + 328);
    v81 = *(v12 + 104);
    v113 = sub_22C791EE8(v108);
    v80(v113);

    v114 = sub_22C36ECB4();
    if (v112(v114) != v110)
    {
      v169 = *(v12 + 104);
      sub_22C791CFC();
      v170();
      goto LABEL_27;
    }

    sub_22C7920A8();
    v115 = *(v12 + 40);
    v116 = *(v12 + 48);
    v117(v73);
    v118.isa = v73->isa;
    swift_projectBox();
    sub_22C375D94();
    v119(v81);
    v120 = *(v116 + 88);
    v121 = sub_22C36ECB4();
    if (v122(v121) != v110)
    {
      (*(*(v12 + 48) + 8))(*(v12 + 56), *(v12 + 40));

      goto LABEL_27;
    }

    v123 = sub_22C791F18();
    v124(v123);
    v125 = *v81;
    *(v12 + 392) = *v81;
    v126 = *(v81 + 8);
    *(v12 + 400) = v126;

    v127 = sub_22C90914C();
    sub_22C791DA8(v127);
    if (v128 && (v129 = sub_22C36E2BC(1701869940, 0xE400000000000000), (v130 & 1) != 0))
    {
      v231 = v125;
      v235 = *(v12 + 464);
      v131 = *(v12 + 320);
      v132 = *(v12 + 328);
      v133 = *(v12 + 96);
      v134 = sub_22C791EE8(v129);
      v80(v134);

      v135 = sub_22C36ECB4();
      if (v131(v135) == v235)
      {
        v136 = sub_22C791CDC();
        v137(v136);
        v138 = sub_22C90914C();
        sub_22C791DA8(v138);
        if (v139)
        {
          v86 = sub_22C36E2BC(v231, v126);
          if (v140)
          {
            goto LABEL_55;
          }
        }

        v141 = *(v12 + 232);

        sub_22C9040CC();
        v73 = sub_22C9063CC();
        v142 = sub_22C90AADC();
        v143 = sub_22C370048(v142);
        v80 = *(v12 + 304);
        v144 = *(v12 + 312);
        v145 = *(v12 + 232);
        v146 = *(v12 + 184);
        v81 = *(v12 + 160);
        v236 = *(v12 + 168);
        v49 = *(v12 + 152);
        if (v143)
        {
          v147 = *(v12 + 192) + 8;
          v81 = sub_22C36D240();
          *v81 = 0;
          _os_log_impl(&dword_22C366000, v73, v142, "RequestedProperty had no property value", v81, 2u);
          sub_22C3699EC();
        }

        else
        {

          v73 = (v81 + 8);
        }

        v148 = sub_22C371510();
        v144(v148);
        (v80)(v236, v49);
        goto LABEL_33;
      }

      v177 = *(v12 + 96);
      v81 = *(v12 + 64);
      v178 = *(v12 + 72);

      v179 = *(v178 + 8);
      v180 = sub_22C372164();
      v181(v180);
    }

    else
    {
    }

    v171 = *(v12 + 224);
    sub_22C9040CC();
    v73 = sub_22C9063CC();
    v172 = sub_22C90AADC();
    sub_22C36D08C(v172);
    v80 = *(v12 + 312);
    v237 = *(v12 + 304);
    sub_22C792060();
    if (v173)
    {
      v174 = sub_22C36D240();
      sub_22C7918E4(v174);
      sub_22C791F54(&dword_22C366000, v73, v175, "RequestedProperty had no type field");
      sub_22C36C30C();
    }

    else
    {

      v73 = (v94 + 8);
    }

    v176 = sub_22C371510();
    v80(v176);
LABEL_32:
    v167 = sub_22C36CC9C();
    v237(v167);
LABEL_33:
    v85 = v233;
LABEL_34:
    sub_22C792074();
    if (v168)
    {
      v198 = *(v12 + 352);
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_55:
  v209 = *(v12 + 88);
  v210 = *(v12 + 72);
  (v80)(*(v12 + 80), v73[7].isa + v86 * v49, *(v12 + 64));

  v211 = *(v210 + 32);
  v212 = sub_22C37B220();
  v213(v212);
  v214 = swift_task_alloc();
  *(v12 + 424) = v214;
  *v214 = v12;
  v215 = sub_22C79192C(v214);

  return sub_22C77DAE4(v215, v216, v217, v218, v219, v220, v221, v222, a9, a10, a11, a12);
}

uint64_t sub_22C78B518()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v6 = *(v5 + 424);
  *v4 = *v1;
  v3[54] = v7;
  v3[55] = v0;

  if (v0)
  {
    v8 = v3[50];
    v9 = v3[48];
    v10 = v3[44];
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C78B638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C37B51C();
  v24 = *(v22 + 400);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = *(v22 + 392) & 0xFFFFFFFFFFFFLL;
  }

  if (!v25 || !*(v22 + 432))
  {
    v38 = *(v22 + 240);
    v39 = *(v22 + 400);

    sub_22C9040CC();
    v40 = sub_22C9063CC();
    v23 = sub_22C90AADC();
    v41 = sub_22C5CAB64(v23);
    v42 = *(v22 + 432);
    v207 = *(v22 + 408);
    v212 = *(v22 + 416);
    v215 = *(v22 + 304);
    v43 = *(v22 + 240);
    v45 = *(v22 + 184);
    v44 = *(v22 + 192);
    v46 = *(v22 + 160);
    v204 = *(v22 + 168);
    v200 = *(v22 + 312);
    v202 = *(v22 + 152);
    v47 = *(v22 + 88);
    v48 = *(v22 + 64);
    if (v41)
    {
      v49 = sub_22C36D240();
      *v49 = 0;
      _os_log_impl(&dword_22C366000, v40, v23, "Either key or value was empty", v49, 2u);
      sub_22C37E124();
    }

    else
    {

      v49 = v44 + 8;
    }

    v200(v43, v45);
    v50 = sub_22C36FC2C();
    v207(v50);
    v215(v204, v202);
    v216 = *(v22 + 384);
    v51 = *(v22 + 368);
    goto LABEL_21;
  }

  v26 = *(v22 + 368);
  v27 = *(v22 + 432);

  swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 16) = v26;
  v28 = sub_22C37EF10();
  result = sub_22C36E2BC(v28, v29);
  if (__OFADD__(*(v26 + 16), (v31 & 1) == 0))
  {
    __break(1u);
    goto LABEL_64;
  }

  v32 = result;
  v33 = v31;
  sub_22C3A5908(&qword_27D9BFFC8, &unk_22C925C60);
  if (sub_22C90B15C())
  {
    v34 = *(v22 + 16);
    v35 = sub_22C36E2BC(*(v22 + 392), *(v22 + 400));
    if ((v33 & 1) != (v36 & 1))
    {
      sub_22C381608();

      return sub_22C90B54C();
    }

    v32 = v35;
  }

  v51 = *(v22 + 16);
  v52 = *(v22 + 432);
  result = *(v22 + 400);
  if ((v33 & 1) == 0)
  {
    v55 = *(v22 + 392);
    v51[(v32 >> 6) + 8] |= 1 << v32;
    v56 = (v51[6] + 16 * v32);
    *v56 = v55;
    v56[1] = result;
    *(v51[7] + 8 * v32) = v52;
    v57 = v51[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (!v58)
    {
      v51[2] = v59;
      goto LABEL_20;
    }

LABEL_64:
    __break(1u);
    return result;
  }

  v53 = v51[7];
  v54 = *(v53 + 8 * v32);
  *(v53 + 8 * v32) = v52;

LABEL_20:

  v60 = *(v22 + 416);
  v61 = *(v22 + 304);
  v49 = *(v22 + 168);
  v62 = *(v22 + 152);
  v42 = *(v22 + 160) + 8;
  (*(v22 + 408))(*(v22 + 88), *(v22 + 64));
  v63 = sub_22C36BBCC();
  v61(v63);
  v216 = v51;
LABEL_21:
  v213 = v51;
  while (1)
  {
    sub_22C792074();
    if (v65)
    {
      break;
    }

    *(v22 + 376) = v64;
    *(v22 + 384) = v216;
    *(v22 + 368) = v51;
    if (v64 >= *(*(v22 + 352) + 16))
    {
      __break(1u);
LABEL_60:
      v178 = *(v22 + 80);
      v177 = *(v22 + 88);
      v179 = *(v22 + 64);
      v180 = *(v22 + 72);
      v181 = *(v49 + 56);
      v182 = sub_22C6AFB9C();
      v23(v182);

      v183 = *(v180 + 32);
      v184 = sub_22C36BAFC();
      v185(v184);
      v186 = swift_task_alloc();
      *(v22 + 424) = v186;
      *v186 = v22;
      sub_22C79192C();
      sub_22C381608();

      return sub_22C77DAE4(v187, v188, v189, v190, v191, v192, v193, v194, a9, a10, a11, a12);
    }

    v66 = *(v22 + 452);
    v67 = *(v22 + 448);
    v69 = *(v22 + 320);
    v68 = *(v22 + 328);
    v49 = *(v22 + 64);
    v70 = *(v22 + 72);
    v72 = *(v70 + 16);
    v71 = v70 + 16;
    v23 = v72;
    sub_22C7920D0();
    v73 = *(v71 + 56);
    (v72)(v42, v75 + v73 * v74, v49);
    if (v69(v42, v49) == v66)
    {
      v77 = *(v22 + 336);
      v76 = *(v22 + 344);
      v79 = *(v22 + 288);
      v78 = *(v22 + 296);
      v80 = sub_22C791F30();
      v81(v80);
      v82 = *v69;
      v83 = swift_projectBox();
      v79(v49, v83, v42);

      v84 = sub_22C90914C();
      sub_22C791DA8(v84);
      if (v85 && (v86 = sub_22C36E2BC(1701667182, 0xE400000000000000), (v87 & 1) != 0))
      {
        v88 = *(v22 + 456);
        v89 = *(v22 + 320);
        v79 = *(v22 + 328);
        v42 = *(v22 + 104);
        (v23)(v42, *(v49 + 56) + v86 * v73, *(v22 + 64));

        v90 = sub_22C36ECB4();
        if (v89(v90) != v88)
        {
          v143 = *(v22 + 104);
          sub_22C791CFC();
          v144();
          goto LABEL_41;
        }

        sub_22C7920A8();
        v92 = *(v22 + 40);
        v91 = *(v22 + 48);
        v93(v49);
        v94 = *v49;
        v95 = swift_projectBox();
        (*(v91 + 16))(v42, v95, v92);
        v96 = *(v91 + 88);
        v79 = (v91 + 88);
        v97 = sub_22C36ECB4();
        if (v98(v97) != v88)
        {
          (*(*(v22 + 48) + 8))(*(v22 + 56), *(v22 + 40));

          goto LABEL_41;
        }

        v99 = sub_22C791F18();
        v100(v99);
        v101 = *v42;
        *(v22 + 392) = *v42;
        v42 = *(v42 + 8);
        *(v22 + 400) = v42;

        v102 = sub_22C90914C();
        sub_22C791DA8(v102);
        if (!v103 || (v104 = sub_22C36E2BC(1701869940, 0xE400000000000000), (v105 & 1) == 0))
        {

LABEL_50:
          v145 = *(v22 + 224);
          sub_22C9040CC();
          v49 = sub_22C9063CC();
          v146 = sub_22C90AADC();
          sub_22C36D08C(v146);
          v147 = *(v22 + 312);
          v210 = *(v22 + 304);
          sub_22C792060();
          if (v148)
          {
            v149 = sub_22C36D240();
            sub_22C7918E4(v149);
            sub_22C791F54(&dword_22C366000, v49, v150, "RequestedProperty had no type field");
            sub_22C36C30C();
          }

          else
          {

            v49 = v71 + 8;
          }

          v151 = sub_22C371510();
          v147(v151);
          goto LABEL_44;
        }

        v205 = v101;
        v208 = *(v22 + 464);
        v106 = *(v22 + 320);
        v107 = *(v22 + 328);
        (v23)(*(v22 + 96), *(v49 + 56) + v104 * v73, *(v22 + 64));

        v108 = sub_22C371510();
        if (v106(v108) != v208)
        {
          v152 = *(v22 + 96);
          v154 = *(v22 + 64);
          v153 = *(v22 + 72);

          v155 = *(v153 + 8);
          v156 = sub_22C372FA4();
          v157(v156);
          goto LABEL_50;
        }

        v109 = sub_22C791CDC();
        v110(v109);
        v111 = sub_22C90914C();
        sub_22C791DA8(v111);
        if (v112)
        {
          sub_22C36E2BC(v205, v42);
          if (v113)
          {
            goto LABEL_60;
          }
        }

        v114 = *(v22 + 232);

        sub_22C9040CC();
        v49 = sub_22C9063CC();
        v115 = sub_22C90AADC();
        v116 = sub_22C370048(v115);
        v118 = *(v22 + 304);
        v117 = *(v22 + 312);
        v119 = *(v22 + 232);
        v120 = *(v22 + 184);
        v42 = *(v22 + 160);
        v209 = *(v22 + 168);
        v23 = *(v22 + 152);
        if (v116)
        {
          v121 = *(v22 + 192) + 8;
          v42 = sub_22C36D240();
          *v42 = 0;
          _os_log_impl(&dword_22C366000, v49, v115, "RequestedProperty had no property value", v42, 2u);
          sub_22C3699EC();
        }

        else
        {

          v49 = v42 + 8;
        }

        v122 = sub_22C371510();
        v117(v122);
        v118(v209, v23);
        v51 = v213;
      }

      else
      {

LABEL_41:
        v135 = *(v22 + 216);
        sub_22C9040CC();
        v49 = sub_22C9063CC();
        v136 = sub_22C90AADC();
        sub_22C36D08C(v136);
        v137 = *(v22 + 312);
        v210 = *(v22 + 304);
        sub_22C792088();
        if (v138)
        {
          v139 = sub_22C36D240();
          sub_22C7918E4(v139);
          sub_22C791F54(&dword_22C366000, v49, v140, "RequestedProperty had no name field");
          sub_22C36C30C();
        }

        else
        {

          v49 = v79 + 8;
        }

        v141 = sub_22C371510();
        v137(v141);
LABEL_44:
        v142 = sub_22C36CC9C();
        v210(v142);
        v51 = v213;
      }
    }

    else
    {
      v123 = *(v22 + 208);
      v124 = *(v22 + 112);
      sub_22C791CFC();
      v125();
      sub_22C9040CC();
      v49 = sub_22C9063CC();
      v126 = sub_22C90AADC();
      v127 = sub_22C36D08C(v126);
      v128 = *(v22 + 312);
      v129 = *(v22 + 208);
      v130 = *(v22 + 184);
      if (v127)
      {
        v131 = *(v22 + 192) + 8;
        v132 = sub_22C36D240();
        sub_22C7918E4(v132);
        sub_22C791F54(&dword_22C366000, v49, v133, "RequestedProperty was not an entity");
        sub_22C36C30C();
      }

      v134 = sub_22C36CA88();
      v128(v134);
      v51 = v213;
    }
  }

  v158 = *(v22 + 352);
  v159 = *(v22 + 280);
  v160 = *(v22 + 136);
  v161 = *(v22 + 144);
  v162 = *(v22 + 128);

  sub_22C796AB8();
  v214 = v163;

  v164 = *(v160 + 8);
  v165 = sub_22C36ECB4();
  v166(v165);
  sub_22C791D70();
  v195 = v168;
  v196 = v167;
  v197 = *(v22 + 144);
  v198 = *(v22 + 120);
  v199 = *(v22 + 112);
  v201 = *(v22 + 104);
  v203 = *(v22 + 96);
  v206 = *(v22 + 88);
  v211 = *(v22 + 80);
  v217 = *(v22 + 56);

  sub_22C36D5E0();
  sub_22C381608();

  return v171(v169, v170, v171, v172, v173, v174, v175, v176, v195, v196, v197, v198, v199, v201, v203, v206, v211, v214, v217, a20, a21, a22);
}

uint64_t sub_22C78C0BC()
{
  v1 = v0[51];
  v14 = v0[52];
  v15 = v0[38];
  v2 = v0[35];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[32];
  v19 = v0[31];
  v20 = v0[30];
  v21 = v0[29];
  v22 = v0[28];
  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[25];
  v3 = v0[21];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v26 = v0[22];
  v27 = v0[15];
  v28 = v0[14];
  v9 = v0[11];
  v29 = v0[13];
  v30 = v0[12];
  v10 = v0[8];
  v31 = v0[10];
  v32 = v0[7];

  v1(v9, v10);
  v15(v3, v5);
  (*(v7 + 8))(v6, v8);

  sub_22C369A24();
  v12 = v0[55];

  return v11();
}

uint64_t sub_22C78C284()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22C90919C();
  v1[5] = v4;
  sub_22C3699B8(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = sub_22C3699D4();
  v8 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v8);
  v10 = *(v9 + 64);
  v1[8] = sub_22C36D0D4();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v11 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v11);
  v13 = *(v12 + 64);
  v1[11] = sub_22C3699D4();
  v14 = type metadata accessor for PayloadFormatter();
  v1[12] = v14;
  sub_22C369914(v14);
  v16 = *(v15 + 64);
  v1[13] = sub_22C3699D4();
  v17 = sub_22C9063DC();
  v1[14] = v17;
  sub_22C3699B8(v17);
  v1[15] = v18;
  v20 = *(v19 + 64);
  v1[16] = sub_22C36D0D4();
  v1[17] = swift_task_alloc();
  v21 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_22C78C418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t *a28, uint64_t a29, uint64_t a30)
{
  sub_22C37B51C();
  a29 = v31;
  a30 = v32;
  a28 = v30;
  v33 = v30[12];
  v34 = *(v30[4] + *(v33 + 44));
  if (v34 == 2)
  {
    sub_22C3A5908(&qword_27D9BAD18, &unk_22C91D990);
    sub_22C369A48();
    v43 = sub_22C90430C();
    sub_22C3699B8(v43);
    v45 = *(v44 + 72);
    v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v48 = swift_allocObject();
    v30[21] = v48;
    *(v48 + 16) = xmmword_22C90FB40;
    sub_22C90425C();
    sub_22C90427C();
    sub_22C90426C();
    v41 = swift_task_alloc();
    v30[22] = v41;
    *v41 = v30;
    v42 = sub_22C78CC00;
    goto LABEL_5;
  }

  if (v34 == 1)
  {
    sub_22C3A5908(&qword_27D9BAD18, &unk_22C91D990);
    sub_22C369A48();
    v35 = sub_22C90430C();
    sub_22C3699B8(v35);
    v37 = *(v36 + 72);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v40 = swift_allocObject();
    v30[18] = v40;
    *(v40 + 16) = xmmword_22C90F870;
    sub_22C90427C();
    sub_22C90426C();
    v41 = swift_task_alloc();
    v30[19] = v41;
    *v41 = v30;
    v42 = sub_22C78C7E0;
LABEL_5:
    v41[1] = v42;
    v49 = v30[4];
    sub_22C386674(v30[2]);
    sub_22C381608();

    return sub_22C78D020(v50, v51);
  }

  v54 = v30[17];
  v55 = v30[13];
  sub_22C9040CC();
  v56 = sub_22C37170C();
  sub_22C790F50(v56, v57);
  v58 = sub_22C9063CC();
  v59 = sub_22C90AADC();
  v60 = sub_22C36FBB4(v59);
  v61 = v30[13];
  if (v60)
  {
    sub_22C36BED8();
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    v63 = *(v61 + *(v33 + 44));
    sub_22C90B62C();
    MEMORY[0x2318B8B10](v63);
    sub_22C90B66C();
    v64 = sub_22C791F48();
    sub_22C790FB4(v64);
    *(v62 + 4) = &a10;
    sub_22C792048(&dword_22C366000, v58, v59, "Invoked attemptCoercion for invalid outputType: %ld");
    sub_22C36BAE0();
  }

  else
  {
    sub_22C790FB4(v30[13]);
  }

  v65 = v30[17];
  v66 = v30[14];
  v67 = v30[15];

  v68 = *(v67 + 8);
  v69 = sub_22C37170C();
  v70(v69);
  sub_22C7919BC();
  v82 = v71;
  type metadata accessor for InterpreterError();
  sub_22C373954();
  sub_22C7914C4(v72, v73);
  sub_22C36D148();
  sub_22C791BC0();
  swift_willThrow();

  sub_22C369A24();
  sub_22C381608();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, v82, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_22C78C7E0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v4 = *(v3 + 152);
  v5 = *(v3 + 144);
  v6 = *v0;
  sub_22C369970();
  *v7 = v6;
  *(v9 + 160) = v8;

  v10 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C78CC00()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v2 = v1;
  v4 = *(v3 + 176);
  v5 = *(v3 + 168);
  v6 = *v0;
  sub_22C369970();
  *v7 = v6;
  *(v9 + 184) = v8;

  v10 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C78D020(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22C9063DC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = *(*(sub_22C3A5908(&qword_27D9BFFD0, &qword_22C925C78) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = sub_22C90929C();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = sub_22C9093BC();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v14 = *(*(sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v15 = sub_22C90941C();
  v3[18] = v15;
  v16 = *(v15 - 8);
  v3[19] = v16;
  v17 = *(v16 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C78D28C, 0, 0);
}

uint64_t sub_22C78D28C()
{
  v89 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[3];
  v82 = v0[18];
  v83 = v0[4];
  v85 = v0[2];
  v86 = v0[17];
  v4 = sub_22C3A5908(&qword_27D9BC928, &qword_22C927720);
  v81 = swift_allocBox();
  v6 = v5;
  v7 = *(v4 + 48);
  v8 = sub_22C9094EC();
  v9 = swift_allocBox();
  v10 = *MEMORY[0x277D72CC0];
  sub_22C36BBA8(v8);
  (*(v11 + 104))();
  *v6 = v9;
  v12 = *MEMORY[0x277D72D50];
  v13 = sub_22C90952C();
  sub_22C36BBA8(v13);
  (*(v14 + 104))(v6, v12);
  sub_22C3A5908(&qword_27D9BF238, &unk_22C925C80);
  v15 = sub_22C90969C();
  sub_22C369824(v15);
  v17 = v16;
  v19 = *(v18 + 72);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22C90F800;
  *(v21 + v20) = v3;
  (*(v17 + 104))(v21 + v20, *MEMORY[0x277D72E68], v15);
  *(v6 + v7) = v21;
  *v2 = v81;
  (*(v1 + 104))(v2, *MEMORY[0x277D72AB8], v82);
  v22 = type metadata accessor for PayloadFormatter();
  v23 = *(v22 + 28);

  sub_22C5F52EC((v83 + v23), v86);
  v25 = v0[19];
  v24 = v0[20];
  v26 = v0[17];
  v27 = v0[18];
  v0[22] = *(v25 + 8);
  v0[23] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28 = sub_22C37EF10();
  v29(v28);
  v30 = sub_22C36CCF8();
  sub_22C36D0A8(v30, v31, v27);
  if (v32)
  {
    v34 = v0[14];
    v33 = v0[15];
    v35 = v0[13];
    v36 = v0[8];
    v38 = v0[2];
    v37 = v0[3];
    sub_22C376B84(v0[17], &qword_27D9BC028, &unk_22C9134B0);
    sub_22C9040CC();
    v39 = *(v34 + 16);
    v40 = sub_22C372FA4();
    v41(v40);

    v42 = sub_22C9063CC();
    v43 = sub_22C90AABC();

    v44 = os_log_type_enabled(v42, v43);
    v46 = v0[14];
    v45 = v0[15];
    v47 = v0[13];
    v48 = v0[8];
    v49 = v0[6];
    if (v44)
    {
      v50 = v0[3];
      v87 = v0[5];
      v51 = sub_22C383050();
      v88 = swift_slowAlloc();
      *v51 = 136315394;
      sub_22C90430C();
      v52 = sub_22C37EF94();
      v53 = MEMORY[0x2318B7AD0](v52);
      v84 = v48;
      v55 = sub_22C36F9F4(v53, v54, &v88);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      sub_22C36A32C();
      sub_22C7914C4(v56, v57);
      sub_22C6B01B0();
      sub_22C909F4C();
      v58 = sub_22C7918C4();
      v59(v58);
      v60 = sub_22C459028();
      sub_22C36F9F4(v60, v61, v62);
      sub_22C37BC08();

      *(v51 + 14) = v45;
      _os_log_impl(&dword_22C366000, v42, v43, "Entity did not support conversion to any of %s: %s", v51, 0x16u);
      swift_arrayDestroy();
      sub_22C37E124();
      sub_22C370510();

      (*(v49 + 8))(v84, v87);
    }

    else
    {

      v63 = sub_22C7918C4();
      v64(v63);
      v65 = *(v49 + 8);
      v66 = sub_22C5CAA58();
      v68(v66, v67);
    }

    sub_22C791E4C();

    sub_22C36D5E0();

    return v69(0);
  }

  else
  {
    v71 = v0[4];
    (*(v0[19] + 32))(v0[21], v0[17], v0[18]);
    v72 = (v71 + *(v22 + 32));
    v73 = v72[3];
    v74 = v72[4];
    sub_22C374168(v72, v73);
    v75 = *(MEMORY[0x277D1E540] + 4);
    swift_task_alloc();
    sub_22C36CC90();
    v0[24] = v76;
    *v76 = v77;
    v76[1] = sub_22C78D828;
    v78 = v0[21];
    v79 = v0[16];
    v80 = v0[2];

    return MEMORY[0x282178330](v79, v80, v78, v73, v74);
  }
}

uint64_t sub_22C78D828()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C36C158();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 200) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C78D920()
{
  v1 = v0[10];
  v2 = v0[4];
  sub_22C78DCFC(v0[16], v0[9]);
  v3 = sub_22C383C3C();
  v5 = sub_22C370B74(v3, v4, v1);
  v6 = v0[22];
  v7 = v0[21];
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  if (v5 == 1)
  {
    v12 = v0[9];
    v13 = *(v11 + 8);
    v14 = sub_22C36ECB4();
    v15(v14);
    v16 = sub_22C36BAFC();
    v6(v16);
    sub_22C376B84(v12, &qword_27D9BFFD0, &qword_22C925C78);
    v17 = 0;
  }

  else
  {
    v43 = v0[22];
    v44 = v0[23];
    v19 = v0[11];
    v18 = v0[12];
    v20 = v0[9];
    v21 = v0[10];
    v22 = v0[4];
    v23 = sub_22C7920BC();
    v24(v23);
    v17 = sub_22C7836AC(v18);
    v25 = *(v19 + 8);
    v26 = sub_22C36FC2C();
    v27(v26);
    v28 = *(v11 + 8);
    v29 = sub_22C36ECB4();
    v30(v29);
    v31 = sub_22C36BAFC();
    v43(v31);
  }

  v33 = v0[20];
  v32 = v0[21];
  v35 = v0[16];
  v34 = v0[17];
  v36 = v0[15];
  v37 = v0[12];
  v39 = v0[8];
  v38 = v0[9];
  v40 = v0[7];

  sub_22C36D5E0();

  return v41(v17);
}

uint64_t sub_22C78DAD0()
{
  v29 = v0;
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 56);
  v5 = *(v0 + 24);
  (*(v0 + 176))(*(v0 + 168), *(v0 + 144));
  sub_22C9040CC();

  v6 = v2;
  v7 = sub_22C9063CC();
  v8 = sub_22C90AABC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 200);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  if (v9)
  {
    v13 = *(v0 + 24);
    v27 = *(v0 + 40);
    v14 = sub_22C383050();
    swift_slowAlloc();
    v28 = sub_22C791C28();
    *v14 = 136315394;
    sub_22C90430C();
    v15 = sub_22C37EF94();
    v16 = MEMORY[0x2318B7AD0](v15);
    v26 = v11;
    v18 = sub_22C36F9F4(v16, v17, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v1 = v20;
    _os_log_impl(&dword_22C366000, v7, v8, "Entity was not convertable to %s: %@", v14, 0x16u);
    sub_22C376B84(v1, &qword_27D9BB158, qword_22C910FD0);
    sub_22C37B09C();
    sub_22C3817B8();
    sub_22C370510();

    (*(v12 + 8))(v26, v27);
  }

  else
  {

    v21 = sub_22C3805D8();
    v23(v21, v22);
  }

  sub_22C791E4C();

  sub_22C36D5E0();

  return v24(0);
}

uint64_t sub_22C78DCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_22C9063DC();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90931C();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9093BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  v19 = *(v12 + 16);
  v19(&v30 - v17, a1, v11);
  if ((*(v12 + 88))(v18, v11) == *MEMORY[0x277D72A58])
  {
    v19(v16, v18, v11);
    (*(v12 + 96))(v16, v11);
    v20 = *v16;
    v21 = swift_projectBox();
    v22 = v30;
    if ((*(v30 + 88))(v21, v7) == *MEMORY[0x277D72998])
    {
      (*(v22 + 16))(v10, v21, v7);
      (*(v22 + 96))(v10, v7);
      v23 = sub_22C90929C();
      v24 = v33;
      (*(*(v23 - 8) + 32))(v33, v10, v23);
      sub_22C36C640(v24, 0, 1, v23);

      return (*(v12 + 8))(v18, v11);
    }
  }

  sub_22C9040CC();
  v25 = sub_22C9063CC();
  v26 = sub_22C90AADC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22C366000, v25, v26, "Coercion did not yield a file", v27, 2u);
    MEMORY[0x2318B9880](v27, -1, -1);
  }

  (*(v31 + 8))(v6, v32);
  v28 = sub_22C90929C();
  sub_22C36C640(v33, 1, 1, v28);
  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_22C78E0F4(uint64_t a1)
{
  v50 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v2 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v47 - v3;
  v52 = sub_22C90929C();
  v55 = *(v52 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C9063DC();
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  v19 = sub_22C90A17C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_22C90928C();
  v22 = [v21 data];

  v23 = sub_22C90051C();
  v25 = v24;

  sub_22C90A15C();
  v26 = sub_22C90A13C();
  v28 = v27;
  sub_22C38B120(v23, v25);
  if (v28)
  {
    v29 = sub_22C90021C();
    sub_22C36C640(v18, 1, 1, v29);
    sub_22C36C640(v16, 1, 1, v29);
    sub_22C36C640(v13, 1, 1, v29);
    v30 = type metadata accessor for PayloadLayout();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    PayloadLayout.init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(v18, v16, 0, v13, 0, 0, 0, 0, 0);
    v33 = sub_22C796314(v26, v28);
  }

  else
  {
    v34 = v49;
    v48 = v6;
    v35 = v53;
    sub_22C9040CC();
    v36 = v52;
    (*(v55 + 16))(v54, a1, v52);
    v37 = sub_22C9063CC();
    v38 = sub_22C90AADC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v56 = v40;
      *v39 = 136315138;
      v41 = v54;
      sub_22C90927C();
      sub_22C79123C();
      v42 = sub_22C909F4C();
      v44 = v43;
      sub_22C376B84(v34, &qword_27D9BC390, &qword_22C912AC0);
      (*(v55 + 8))(v41, v36);
      v45 = sub_22C36F9F4(v42, v44, &v56);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_22C366000, v37, v38, "Could not unpack converted file value: %s", v39, 0xCu);
      sub_22C36FF94(v40);
      MEMORY[0x2318B9880](v40, -1, -1);
      MEMORY[0x2318B9880](v39, -1, -1);
    }

    else
    {

      (*(v55 + 8))(v54, v36);
    }

    (*(v51 + 8))(v35, v48);
    return 0;
  }

  return v33;
}

uint64_t sub_22C78E61C(uint64_t a1)
{
  v76 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v2 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v69 - v3;
  v4 = sub_22C90929C();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9063DC();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v7);
  v83 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_22C90021C();
  v73 = *(v74 - 8);
  v10 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v69 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v69 - v18;
  v20 = sub_22C90A17C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a1;
  v25 = sub_22C90928C();
  v26 = [v25 data];

  v27 = sub_22C90051C();
  v29 = v28;

  sub_22C3A5908(&qword_27D9BFFA8, &qword_22C925C38);
  inited = swift_initStackObject();
  v31 = MEMORY[0x277D74098];
  *(inited + 16) = xmmword_22C90F870;
  v32 = *v31;
  *(inited + 32) = *v31;
  v33 = *MEMORY[0x277D74130];
  type metadata accessor for DocumentType(0);
  *(inited + 40) = v33;
  v34 = *MEMORY[0x277D74088];
  *(inited + 64) = v35;
  *(inited + 72) = v34;
  v36 = v32;
  v37 = v33;
  v38 = v34;
  sub_22C90A15C();
  v39 = sub_22C90A16C();
  (*(v21 + 8))(v24, v20);
  *(inited + 104) = MEMORY[0x277D83E88];
  *(inited + 80) = v39;
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_22C7914C4(&qword_27D9BA9B8, type metadata accessor for DocumentReadingOptionKey);
  v40 = sub_22C909F0C();
  v41 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v42 = sub_22C78F3DC(v27, v29, v40, 0);
  v57 = v42;
  v58 = v19;
  v59 = v70;
  v60 = v71;
  v61 = v72;
  v62 = v73;
  v63 = v74;
  if (v42)
  {
    sub_22C36C640(v58, 1, 1, v74);
    sub_22C36C640(v59, 1, 1, v63);
    sub_22C36C640(v60, 1, 1, v63);
    v64 = type metadata accessor for PayloadLayout();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();
    PayloadLayout.init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(v58, v59, 0, v60, 0, 0, 0, 0, 0);
    v67 = v57;
    sub_22C90023C();
    v56 = sub_22C796218(v61);

    (*(v62 + 8))(v61, v63);
  }

  else
  {
    v43 = v83;
    sub_22C9040CC();
    v45 = v79;
    v44 = v80;
    v46 = v78;
    (*(v79 + 16))(v78, v77, v80);
    v47 = sub_22C9063CC();
    v48 = sub_22C90AADC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v84 = v50;
      *v49 = 136315138;
      v51 = v75;
      sub_22C90927C();
      sub_22C79123C();
      v52 = sub_22C909F4C();
      v54 = v53;
      sub_22C376B84(v51, &qword_27D9BC390, &qword_22C912AC0);
      (*(v45 + 8))(v46, v44);
      v55 = sub_22C36F9F4(v52, v54, &v84);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_22C366000, v47, v48, "Could not unpack converted rtf file value: %s", v49, 0xCu);
      sub_22C36FF94(v50);
      MEMORY[0x2318B9880](v50, -1, -1);
      MEMORY[0x2318B9880](v49, -1, -1);

      (*(v81 + 8))(v83, v82);
    }

    else
    {

      (*(v45 + 8))(v46, v44);
      (*(v81 + 8))(v43, v82);
    }

    return 0;
  }

  return v56;
}

uint64_t sub_22C78ED84(uint64_t *a1)
{
  v60 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v2 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v58 - v3;
  v4 = sub_22C90929C();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9063DC();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v58 - v17;
  v19 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v58 - v24;
  v26 = sub_22C90046C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v31 = sub_22C90928C();
  v32 = [v31 data];

  v33 = sub_22C90051C();
  v35 = v34;

  sub_22C36C640(v23, 1, 1, v26);
  sub_22C90039C();
  sub_22C38B120(v33, v35);
  sub_22C376B84(v23, &qword_27D9BB138, &qword_22C90DB70);
  if (sub_22C370B74(v25, 1, v26) == 1)
  {
    sub_22C376B84(v25, &qword_27D9BB138, &qword_22C90DB70);
    v36 = v66;
    sub_22C9040CC();
    v37 = v63;
    v38 = v64;
    v39 = v65;
    (*(v64 + 16))(v63, v62, v65);
    v40 = sub_22C9063CC();
    v41 = sub_22C90AADC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v69 = v62;
      *v42 = 136315138;
      v43 = v59;
      sub_22C90927C();
      sub_22C79123C();
      v44 = sub_22C909F4C();
      v46 = v45;
      sub_22C376B84(v43, &qword_27D9BC390, &qword_22C912AC0);
      (*(v38 + 8))(v37, v39);
      v47 = sub_22C36F9F4(v44, v46, &v69);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_22C366000, v40, v41, "Could not unpack converted file as URL: %s", v42, 0xCu);
      v48 = v62;
      sub_22C36FF94(v62);
      MEMORY[0x2318B9880](v48, -1, -1);
      MEMORY[0x2318B9880](v42, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v37, v39);
    }

    (*(v67 + 8))(v36, v68);
    return 0;
  }

  else
  {
    (*(v27 + 32))(v30, v25, v26);
    v49 = sub_22C90021C();
    sub_22C36C640(v18, 1, 1, v49);
    sub_22C36C640(v16, 1, 1, v49);
    v50 = v61;
    sub_22C36C640(v61, 1, 1, v49);
    v51 = type metadata accessor for PayloadLayout();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    PayloadLayout.init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(v18, v16, 0, v50, 0, 0, 0, 0, 0);
    v54 = sub_22C90036C();
    v56 = sub_22C796314(v54, v55);

    (*(v27 + 8))(v30, v26);
  }

  return v56;
}

id sub_22C78F3DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v16[1] = *MEMORY[0x277D85DE8];
  v9 = sub_22C90050C();
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_22C7914C4(&qword_27D9BA9B8, type metadata accessor for DocumentReadingOptionKey);
  v10 = sub_22C909EAC();

  v16[0] = 0;
  v11 = [v5 initWithData:v9 options:v10 documentAttributes:a4 error:v16];

  if (v11)
  {
    v12 = v16[0];
  }

  else
  {
    v13 = v16[0];
    sub_22C90030C();

    swift_willThrow();
  }

  sub_22C38B120(a1, a2);
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_22C78F540(uint64_t *a1)
{
  v2 = *(sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C528(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C78F5F4(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C78F5F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C78F9B8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C78F73C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C78F73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v28 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v23;
      v32 = v22;
      while (1)
      {
        sub_22C791344(v23, v17, &qword_27D9BADA0, &unk_22C90FA80);
        sub_22C791344(v20, v13, &qword_27D9BADA0, &unk_22C90FA80);
        if (*v17 == *v13 && v17[1] == v13[1])
        {
          break;
        }

        v25 = sub_22C90B4FC();
        sub_22C376B84(v13, &qword_27D9BADA0, &unk_22C90FA80);
        result = sub_22C376B84(v17, &qword_27D9BADA0, &unk_22C90FA80);
        if (v25)
        {
          if (!v35)
          {
            __break(1u);
            return result;
          }

          v26 = v36;
          sub_22C7912F0(v23, v36, &qword_27D9BADA0, &unk_22C90FA80);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_22C7912F0(v26, v20, &qword_27D9BADA0, &unk_22C90FA80);
          v20 += v21;
          v23 += v21;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_22C376B84(v13, &qword_27D9BADA0, &unk_22C90FA80);
      result = sub_22C376B84(v17, &qword_27D9BADA0, &unk_22C90FA80);
LABEL_14:
      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C78F9B8(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v121 = a1;
  v136 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v128 = *(v136 - 8);
  v6 = *(v128 + 64);
  v7 = MEMORY[0x28223BE20](v136);
  v124 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v135 = &v115 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = MEMORY[0x28223BE20](v12);
  v132 = (&v115 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v131 = (&v115 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v120 = (&v115 - v18);
  MEMORY[0x28223BE20](v17);
  v119 = (&v115 - v21);
  v130 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_115:
    a4 = *v121;
    if (!*v121)
    {
      goto LABEL_155;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_117:
      v107 = (v24 + 16);
      for (i = *(v24 + 16); i >= 2; *v107 = i)
      {
        if (!*v130)
        {
          goto LABEL_152;
        }

        v109 = (v24 + 16 * i);
        v110 = *v109;
        v111 = &v107[2 * i];
        v112 = *(v111 + 1);
        v113 = v133;
        sub_22C7903D4(*v130 + *(v128 + 72) * *v109, *v130 + *(v128 + 72) * *v111, *v130 + *(v128 + 72) * v112, a4);
        v133 = v113;
        if (v113)
        {
          break;
        }

        if (v112 < v110)
        {
          goto LABEL_140;
        }

        if (i - 2 >= *v107)
        {
          goto LABEL_141;
        }

        *v109 = v110;
        v109[1] = v112;
        v114 = *v107 - i;
        if (*v107 < i)
        {
          goto LABEL_142;
        }

        i = *v107 - 1;
        sub_22C56BFF0(v111 + 16, v114, v111);
      }

LABEL_113:

      return;
    }

LABEL_149:
    v24 = sub_22C56BFD8(v24);
    goto LABEL_117;
  }

  v137 = v20;
  v138 = v19;
  v116 = a4;
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    if (v23 + 1 < v22)
    {
      v126 = v22;
      v27 = *v130;
      v28 = *(v128 + 72);
      v29 = v23 + 1;
      v30 = v119;
      sub_22C791344(*v130 + v28 * v26, v119, &qword_27D9BADA0, &unk_22C90FA80);
      v129 = v28;
      v31 = v27 + v28 * v25;
      v32 = v120;
      sub_22C791344(v31, v120, &qword_27D9BADA0, &unk_22C90FA80);
      if (*v30 == *v32 && v30[1] == v32[1])
      {
        LODWORD(v127) = 0;
      }

      else
      {
        LODWORD(v127) = sub_22C90B4FC();
      }

      v117 = v24;
      sub_22C376B84(v120, &qword_27D9BADA0, &unk_22C90FA80);
      sub_22C376B84(v119, &qword_27D9BADA0, &unk_22C90FA80);
      v118 = v25;
      v34 = v25 + 2;
      v35 = v129 * (v25 + 2);
      v36 = v27 + v35;
      v37 = v129 * v29;
      v38 = v27 + v129 * v29;
      v39 = v29;
      do
      {
        v40 = v34;
        v41 = v39;
        v24 = v37;
        a4 = v35;
        if (v34 >= v126)
        {
          break;
        }

        v134 = v34;
        v42 = v131;
        sub_22C791344(v36, v131, &qword_27D9BADA0, &unk_22C90FA80);
        v43 = v132;
        sub_22C791344(v38, v132, &qword_27D9BADA0, &unk_22C90FA80);
        v44 = *v42 == *v43 && v42[1] == v43[1];
        v45 = v44 ? 0 : sub_22C90B4FC();
        sub_22C376B84(v132, &qword_27D9BADA0, &unk_22C90FA80);
        sub_22C376B84(v131, &qword_27D9BADA0, &unk_22C90FA80);
        v40 = v134;
        v34 = v134 + 1;
        v36 += v129;
        v38 += v129;
        v39 = v41 + 1;
        v37 = v24 + v129;
        v35 = a4 + v129;
      }

      while (((v127 ^ v45) & 1) == 0);
      if (v127)
      {
        v25 = v118;
        if (v40 < v118)
        {
          goto LABEL_146;
        }

        if (v118 >= v40)
        {
          v26 = v40;
          v24 = v117;
          goto LABEL_39;
        }

        v46 = v118 * v129;
        do
        {
          if (v25 != v41)
          {
            v47 = *v130;
            if (!*v130)
            {
              goto LABEL_153;
            }

            sub_22C7912F0(v47 + v46, v124, &qword_27D9BADA0, &unk_22C90FA80);
            v48 = v46 < v24 || v47 + v46 >= (v47 + a4);
            if (v48)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v46 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22C7912F0(v124, v47 + v24, &qword_27D9BADA0, &unk_22C90FA80);
          }

          ++v25;
          v24 -= v129;
          a4 -= v129;
          v46 += v129;
        }

        while (v25 < v41--);
        v26 = v40;
        v24 = v117;
      }

      else
      {
        v26 = v40;
        v24 = v117;
      }

      v25 = v118;
    }

LABEL_39:
    v50 = v130[1];
    v129 = v26;
    if (v26 < v50)
    {
      v79 = __OFSUB__(v26, v25);
      v51 = v26 - v25;
      if (v79)
      {
        goto LABEL_145;
      }

      if (v51 < v116)
      {
        break;
      }
    }

LABEL_62:
    if (v129 < v25)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = *(v24 + 16);
      sub_22C590218();
      v24 = v105;
    }

    a4 = *(v24 + 16);
    v62 = a4 + 1;
    if (a4 >= *(v24 + 24) >> 1)
    {
      sub_22C590218();
      v24 = v106;
    }

    *(v24 + 16) = v62;
    v63 = v24 + 32;
    v64 = (v24 + 32 + 16 * a4);
    v65 = v129;
    *v64 = v25;
    v64[1] = v65;
    v66 = *v121;
    if (!*v121)
    {
      goto LABEL_154;
    }

    if (a4)
    {
      while (1)
      {
        a4 = v62 - 1;
        v67 = (v63 + 16 * (v62 - 1));
        v68 = (v24 + 16 * v62);
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v69 = *(v24 + 32);
          v70 = *(v24 + 40);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_82:
          if (v72)
          {
            goto LABEL_131;
          }

          v84 = *v68;
          v83 = v68[1];
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_134;
          }

          v88 = v67[1];
          v89 = v88 - *v67;
          if (__OFSUB__(v88, *v67))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v86, v89))
          {
            goto LABEL_139;
          }

          if (v86 + v89 >= v71)
          {
            if (v71 < v89)
            {
              a4 = v62 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v62 < 2)
        {
          goto LABEL_133;
        }

        v91 = *v68;
        v90 = v68[1];
        v79 = __OFSUB__(v90, v91);
        v86 = v90 - v91;
        v87 = v79;
LABEL_97:
        if (v87)
        {
          goto LABEL_136;
        }

        v93 = *v67;
        v92 = v67[1];
        v79 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v79)
        {
          goto LABEL_138;
        }

        if (v94 < v86)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (a4 - 1 >= v62)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v130)
        {
          goto LABEL_151;
        }

        v98 = v24;
        v99 = (v63 + 16 * (a4 - 1));
        v100 = *v99;
        v101 = v63 + 16 * a4;
        v24 = *(v101 + 8);
        v102 = v133;
        sub_22C7903D4(*v130 + *(v128 + 72) * *v99, *v130 + *(v128 + 72) * *v101, *v130 + *(v128 + 72) * v24, v66);
        v133 = v102;
        if (v102)
        {
          goto LABEL_113;
        }

        if (v24 < v100)
        {
          goto LABEL_126;
        }

        v103 = *(v98 + 16);
        if (a4 > v103)
        {
          goto LABEL_127;
        }

        *v99 = v100;
        v99[1] = v24;
        if (a4 >= v103)
        {
          goto LABEL_128;
        }

        v62 = v103 - 1;
        sub_22C56BFF0((v101 + 16), v103 - 1 - a4, (v63 + 16 * a4));
        v24 = v98;
        *(v98 + 16) = v103 - 1;
        if (v103 <= 2)
        {
          goto LABEL_111;
        }
      }

      v73 = v63 + 16 * v62;
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_129;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_130;
      }

      v80 = v68[1];
      v81 = v80 - *v68;
      if (__OFSUB__(v80, *v68))
      {
        goto LABEL_132;
      }

      v79 = __OFADD__(v71, v81);
      v82 = v71 + v81;
      if (v79)
      {
        goto LABEL_135;
      }

      if (v82 >= v76)
      {
        v96 = *v67;
        v95 = v67[1];
        v79 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v79)
        {
          goto LABEL_143;
        }

        if (v71 < v97)
        {
          a4 = v62 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v129;
    v22 = v130[1];
    if (v129 >= v22)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v25, v116))
  {
    goto LABEL_147;
  }

  if (v25 + v116 >= v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = v25 + v116;
  }

  if (v52 < v25)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v129 == v52)
  {
    goto LABEL_62;
  }

  v117 = v24;
  v118 = v25;
  v53 = *(v128 + 72);
  v54 = *v130 + v53 * (v129 - 1);
  a4 = -v53;
  v55 = v25 - v129;
  v134 = *v130;
  v122 = v53;
  v123 = v52;
  v56 = v134 + v129 * v53;
LABEL_49:
  v125 = v56;
  v126 = v55;
  v127 = v54;
  while (1)
  {
    v57 = v137;
    sub_22C791344(v56, v137, &qword_27D9BADA0, &unk_22C90FA80);
    v58 = v138;
    sub_22C791344(v54, v138, &qword_27D9BADA0, &unk_22C90FA80);
    if (*v57 == *v58 && v57[1] == v58[1])
    {
      sub_22C376B84(v58, &qword_27D9BADA0, &unk_22C90FA80);
      sub_22C376B84(v57, &qword_27D9BADA0, &unk_22C90FA80);
LABEL_60:
      v54 = v127 + v122;
      v55 = v126 - 1;
      v56 = v125 + v122;
      if (++v129 == v123)
      {
        v129 = v123;
        v24 = v117;
        v25 = v118;
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    v60 = sub_22C90B4FC();
    sub_22C376B84(v58, &qword_27D9BADA0, &unk_22C90FA80);
    sub_22C376B84(v57, &qword_27D9BADA0, &unk_22C90FA80);
    if ((v60 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (!v134)
    {
      break;
    }

    v61 = v135;
    sub_22C7912F0(v56, v135, &qword_27D9BADA0, &unk_22C90FA80);
    swift_arrayInitWithTakeFrontToBack();
    sub_22C7912F0(v61, v54, &qword_27D9BADA0, &unk_22C90FA80);
    v54 += a4;
    v56 += a4;
    v48 = __CFADD__(v55++, 1);
    if (v48)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}