uint64_t sub_1E48028D4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D128, &qword_1E4880248);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D130, &qword_1E4880250);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - v10;
  sub_1E4802B4C(v1, v6);
  sub_1E47FE9CC();
  CGRectGetWidth(v28);
  sub_1E47FE9CC();
  CGRectGetMaxX(v29);
  v12 = *v1;
  v13 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate;
  CGRectGetMaxX(*(*(*v1 + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_delegate) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect));
  sub_1E47FE9CC();
  CGRectGetHeight(v30);
  sub_1E487887C();
  sub_1E4877BCC();
  sub_1E477372C(v6, v11, &qword_1ECF7D128, &qword_1E4880248);
  v14 = &v11[*(v8 + 44)];
  v15 = v27[1];
  *v14 = v27[0];
  *(v14 + 1) = v15;
  *(v14 + 2) = v27[2];
  sub_1E47FE9CC();
  v17 = v16;
  sub_1E47FE9CC();
  Width = CGRectGetWidth(v31);
  sub_1E47FE9CC();
  MaxX = CGRectGetMaxX(v32);
  if (MaxX == CGRectGetMaxX(*(*(v12 + v13) + OBJC_IVAR____TtC14CalendarWidget21SpatialLayoutDelegate_displayedRect)))
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 2.0;
  }

  v21 = v17 + (Width - v20) * 0.5;
  sub_1E47FE9CC();
  v23 = v22;
  sub_1E47FE9CC();
  v24 = v23 + CGRectGetHeight(v33) * 0.5;
  sub_1E477372C(v11, a1, &qword_1ECF7D130, &qword_1E4880250);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D138, &qword_1E4880258);
  v26 = (a1 + *(result + 36));
  *v26 = v21;
  v26[1] = v24;
  return result;
}

uint64_t sub_1E4802B4C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v58 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D140, &qword_1E4880260);
  v2 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v51 = &v45 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D148, &qword_1E4880268);
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v45 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D150, &unk_1E4880270);
  v48 = *(v56 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v47 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v45 - v10;
  v12 = sub_1E487725C();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v45 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v45 - v16;
  v17 = sub_1E4877CCC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D158, &qword_1E4880280);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v45 - v27;
  sub_1E4878D2C();
  v52 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = v54;
  sub_1E47FD9E8(v24);
  sub_1E4877CAC();
  sub_1E4803648(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v30 = sub_1E4878EAC();
  v31 = *(v18 + 8);
  v31(v22, v17);
  v32 = v29;
  v31(v24, v17);
  if ((v30 & 1) == 0)
  {
    v33 = *v29;
    v34 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
    v35 = type metadata accessor for Event();
    sub_1E4773850(v33 + *(v35 + 44) + v34, v11, &unk_1ECF7B688, &qword_1E487C160);
    v37 = v49;
    v36 = v50;
    if ((*(v49 + 48))(v11, 1, v50) != 1)
    {
      v39 = v46;
      (*(v37 + 32))(v46, v11, v36);
      v40 = (*(v37 + 16))(v45, v39, v36);
      MEMORY[0x1EEE9AC00](v40);
      *(&v45 - 2) = v32;
      sub_1E48032F4();
      v41 = v47;
      sub_1E487831C();
      v42 = v48;
      v43 = v56;
      (*(v48 + 16))(v53, v41, v56);
      swift_storeEnumTagMultiPayload();
      sub_1E4773680(&qword_1EE2B1078, &qword_1ECF7D150, &unk_1E4880270);
      sub_1E487803C();
      (*(v42 + 8))(v41, v43);
      (*(v37 + 8))(v39, v36);
      goto LABEL_8;
    }

    sub_1E47738B8(v11, &unk_1ECF7B688, &qword_1E487C160);
  }

  v38 = v51;
  sub_1E47FED74(v51);
  sub_1E4773850(v38, v53, &qword_1ECF7D140, &qword_1E4880260);
  swift_storeEnumTagMultiPayload();
  sub_1E4773680(&qword_1EE2B1078, &qword_1ECF7D150, &unk_1E4880270);
  sub_1E48032F4();
  sub_1E487803C();
  sub_1E47738B8(v38, &qword_1ECF7D140, &qword_1E4880260);
LABEL_8:
  sub_1E477372C(v28, v58, &qword_1ECF7D158, &qword_1E4880280);
}

uint64_t sub_1E4803240@<X0>(uint64_t a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E47FED74(a1);
}

unint64_t sub_1E48032F4()
{
  result = qword_1EE2B12B8;
  if (!qword_1EE2B12B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D140, &qword_1E4880260);
    sub_1E48033B0();
    sub_1E4803648(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B12B8);
  }

  return result;
}

unint64_t sub_1E48033B0()
{
  result = qword_1EE2B12F0;
  if (!qword_1EE2B12F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D160, &qword_1E4880288);
    sub_1E4803468();
    sub_1E4773680(&qword_1EE2B1288, &qword_1ECF7D180, &unk_1E48802B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B12F0);
  }

  return result;
}

unint64_t sub_1E4803468()
{
  result = qword_1EE2B1378;
  if (!qword_1EE2B1378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D168, &qword_1E4880290);
    sub_1E4803520();
    sub_1E4773680(&qword_1EE2B1270, &qword_1ECF7B8B0, &qword_1E487DEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1378);
  }

  return result;
}

unint64_t sub_1E4803520()
{
  result = qword_1EE2B1490;
  if (!qword_1EE2B1490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D170, &qword_1E4880298);
    sub_1E4773680(&qword_1EE2B0FE8, &qword_1ECF7D178, &unk_1E48802A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1490);
  }

  return result;
}

uint64_t sub_1E48035E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4803648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4803690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E48036F0()
{
  result = qword_1EE2B13C0;
  if (!qword_1EE2B13C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D138, &qword_1E4880258);
    sub_1E480377C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B13C0);
  }

  return result;
}

unint64_t sub_1E480377C()
{
  result = qword_1EE2B14F8;
  if (!qword_1EE2B14F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D130, &qword_1E4880250);
    sub_1E4803808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B14F8);
  }

  return result;
}

unint64_t sub_1E4803808()
{
  result = qword_1EE2B1048;
  if (!qword_1EE2B1048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D128, &qword_1E4880248);
    sub_1E480388C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1048);
  }

  return result;
}

unint64_t sub_1E480388C()
{
  result = qword_1EE2B11A8;
  if (!qword_1EE2B11A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D158, &qword_1E4880280);
    sub_1E4773680(&qword_1EE2B1078, &qword_1ECF7D150, &unk_1E4880270);
    sub_1E48032F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B11A8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E4803964(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E48039B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E4803A28(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1E48782AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1E4877F1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C7A8, &unk_1E487E180);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E487A7E0;
  if ((a3 & 1) == 0)
  {

    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(a2, 0);
    (*(v11 + 8))(v14, v10);
    if (v19[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E48781BC();
    goto LABEL_6;
  }

  if (a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E48782FC();
LABEL_6:
  (*(v6 + 104))(v9, *MEMORY[0x1E6980EA0], v5);
  v17 = sub_1E48782CC();

  (*(v6 + 8))(v9, v5);
  *(v15 + 32) = v17;
  return v15;
}

uint64_t sub_1E4803C9C@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (a1 & 0x100) == 0;
  v9 = sub_1E4877F6C();
  sub_1E4803E04(a1 & 1, a2, a3 & 1, v17);
  v10 = v17[0];
  v11 = v17[1];
  v12 = v18;
  v14 = v19;
  v13 = v20;
  v15 = v21;
  LOBYTE(v17[0]) = 0;
  v23 = v18;
  v22 = v21;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 9) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = v10;
  *(a4 + 48) = v11;
  *(a4 + 56) = v12;
  *(a4 + 64) = v14;
  *(a4 + 72) = v13;
  *(a4 + 80) = v15;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 97) = v8;
  sub_1E478B8E0(v10, v11, v12);

  sub_1E477A3C8(v10, v11, v12);
}

void sub_1E4803E04(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v7 = sub_1E48782AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4877F1C();
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v15 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E486E640((a1 & 1) == 0, 1);
  if (v16[2])
  {
    v42 = v12;
    v17 = a2;
    v48 = v7;
    v49 = v15;
    v19 = v16[4];
    v18 = v16[5];

    v51 = v19;
    v52 = v18;
    sub_1E477A374();
    v20 = sub_1E487848C();
    v22 = v21;
    LOBYTE(v19) = v23;
    sub_1E48786FC();
    v24 = sub_1E48783FC();
    v45 = v25;
    v46 = v24;
    v27 = v26;
    v47 = v28;

    sub_1E477A3C8(v20, v22, v19 & 1);

    if (v50)
    {
      if ((v17 & 1) == 0)
      {
LABEL_6:
        sub_1E48782FC();
LABEL_9:
        v31 = v48;
        (*(v8 + 104))(v11, *MEMORY[0x1E6980EA0], v48);
        sub_1E48782CC();

        (*(v8 + 8))(v11, v31);
        v33 = v45;
        v32 = v46;
        v34 = sub_1E487842C();
        v36 = v35;
        v38 = v37;
        v40 = v39;

        sub_1E477A3C8(v32, v33, v27 & 1);

        *a4 = v34;
        *(a4 + 8) = v36;
        *(a4 + 16) = v38 & 1;
        *(a4 + 24) = v40;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        sub_1E478B8E0(v34, v36, v38 & 1);

        sub_1E477A3C8(v34, v36, v38 & 1);

        return;
      }
    }

    else
    {

      sub_1E4878DDC();
      v29 = sub_1E48780FC();
      sub_1E4877AAC();

      v30 = v43;
      sub_1E4877F0C();
      swift_getAtKeyPath();
      sub_1E477A484(v17, 0);
      (*(v44 + 8))(v30, v42);
      if (v51 != 1)
      {
        goto LABEL_6;
      }
    }

    sub_1E48781BC();
    goto LABEL_9;
  }

  __break(1u);
}

double sub_1E4804208@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  v6 = v1[16];
  v7 = sub_1E4877FBC();
  v23 = 0;
  if (v4)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  sub_1E4803C9C(v8 | v3, v5, v6, &v15);
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v31[0] = v15;
  v31[1] = v16;
  v31[2] = v17;
  v31[3] = v18;
  v31[4] = v19;
  v31[5] = v20;
  v32 = v21;
  sub_1E4804330(&v24, &v14);
  sub_1E48043A0(v31);
  *(&v22[3] + 7) = v27;
  *(&v22[4] + 7) = v28;
  *(&v22[5] + 7) = v29;
  *(&v22[6] + 7) = v30;
  *(v22 + 7) = v24;
  *(&v22[1] + 7) = v25;
  *(&v22[2] + 7) = v26;
  v9 = v22[2];
  *(a1 + 65) = v22[3];
  v10 = v22[5];
  *(a1 + 81) = v22[4];
  *(a1 + 97) = v10;
  *(a1 + 106) = *(&v22[5] + 9);
  result = *v22;
  v12 = v22[1];
  *(a1 + 17) = v22[0];
  *(a1 + 33) = v12;
  v13 = v23;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v13;
  *(a1 + 49) = v9;
  return result;
}

uint64_t sub_1E4804330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D278, &qword_1E4880668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48043A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D278, &qword_1E4880668);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4804408()
{
  result = qword_1EE2B0EC0;
  if (!qword_1EE2B0EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D280, &unk_1E4880670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B0EC0);
  }

  return result;
}

uint64_t sub_1E480446C()
{
  v214 = sub_1E487751C();
  v232 = *(v214 - 8);
  v0 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v209 = &v189 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v190 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v191 = &v189 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v192 = &v189 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v194 = &v189 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v193 = &v189 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v199 = &v189 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v206 = &v189 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v215 = &v189 - v18;
  v210 = sub_1E487753C();
  v217 = *(v210 - 8);
  v19 = *(v217 + 64);
  v20 = MEMORY[0x1EEE9AC00](v210);
  v198 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v216 = &v189 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v202 = &v189 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v207 = &v189 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v189 - v29;
  v31 = type metadata accessor for Event();
  v32 = *(v31 - 1);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v197 = &v189 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v235 = &v189 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v189 - v38;
  v220 = sub_1E487736C();
  v224 = *(v220 - 8);
  v40 = v224[8];
  MEMORY[0x1EEE9AC00](v220);
  v42 = &v189 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_1E487732C();
  v211 = *(v218 - 8);
  v43 = *(v211 + 64);
  v44 = MEMORY[0x1EEE9AC00](v218);
  v195 = &v189 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v200 = &v189 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v189 - v48;
  v213 = sub_1E487706C();
  v223 = *(v213 - 8);
  v50 = *(v223 + 8);
  v51 = MEMORY[0x1EEE9AC00](v213);
  v196 = &v189 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v201 = &v189 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v189 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v236 = *(v32 + 72);
  v58 = *(v32 + 80);
  v59 = (v58 + 32) & ~v58;
  v230 = v57;
  v231 = 2 * v236;
  v229 = v58;
  v60 = swift_allocObject();
  v237 = v59;
  v228 = v60;
  v61 = (v60 + v59);
  v219 = 0x80000001E48A89F0;
  v221 = v49;
  sub_1E4806788(v49);
  sub_1E487703C();
  v62 = sub_1E487863C();
  sub_1E487735C();
  sub_1E487733C();
  v63 = v224[1];
  ++v224;
  v212 = v63;
  v63(v42, v220);
  v64 = v61 + v31[11];
  sub_1E487724C();

  v65 = v31[15];
  v240 = type metadata accessor for Location();
  v66 = *(v240 - 8);
  v67 = *(v66 + 56);
  v238 = v66 + 56;
  v239 = v67;
  (v67)(v61 + v65, 1, 1, v240);
  *v61 = 0xD00000000000001CLL;
  v61[1] = v219;
  v68 = v61 + v31[5];
  sub_1E487704C();
  v69 = v61 + v31[6];
  sub_1E487701C();
  v208 = *(v223 + 1);
  v223 += 2;
  v70 = v213;
  v208(v56, v213);
  *(v61 + v31[7]) = 0;
  *(v61 + v31[8]) = 0;
  *(v61 + v31[9]) = v62;
  v71 = (v61 + v31[10]);
  *v71 = 0;
  v71[1] = 0;
  *(v61 + v31[12]) = 0;
  *(v61 + v31[13]) = 0;
  v72 = (v61 + v31[16]);
  *v72 = 0;
  v72[1] = 0;
  *(v61 + v31[14]) = 0;
  *(v61 + v31[17]) = 0;
  *(v61 + v31[18]) = 0;
  *(v61 + v31[19]) = 1;
  v73 = (v61 + v236);
  sub_1E4806788(v221);
  sub_1E487703C();
  v234 = sub_1E48786AC();
  sub_1E487735C();
  sub_1E487733C();
  v212(v42, v220);
  v74 = v73 + v31[11];
  sub_1E487724C();

  (v239)(v73 + v31[15], 1, 1, v240);
  *v73 = 0xD00000000000001CLL;
  v73[1] = v219;
  v75 = v73 + v31[5];
  sub_1E487704C();
  v76 = v73 + v31[6];
  sub_1E487701C();
  v77 = v70;
  v78 = v208;
  v208(v56, v77);
  *(v73 + v31[7]) = 0;
  *(v73 + v31[8]) = 0;
  *(v73 + v31[9]) = v234;
  v79 = (v73 + v31[10]);
  *v79 = 0;
  v79[1] = 0;
  *(v73 + v31[12]) = 0;
  *(v73 + v31[13]) = 0;
  v80 = (v73 + v31[16]);
  *v80 = 0;
  v80[1] = 0;
  *(v73 + v31[14]) = 0;
  *(v73 + v31[17]) = 0;
  *(v73 + v31[18]) = 0;
  *(v73 + v31[19]) = 1;
  v81 = (v61 + v231);
  sub_1E4806788(v221);
  sub_1E487703C();
  v234 = sub_1E48786CC();
  sub_1E487735C();
  sub_1E487733C();
  v205 = v42;
  v212(v42, v220);
  v82 = v81 + v31[11];
  sub_1E487724C();

  (v239)(v81 + v31[15], 1, 1, v240);
  *v81 = 0xD00000000000001CLL;
  v81[1] = v219;
  v83 = v81 + v31[5];
  sub_1E487704C();
  v84 = v81 + v31[6];
  sub_1E487701C();
  v78(v56, v213);
  *(v81 + v31[7]) = 0;
  *(v81 + v31[8]) = 0;
  *(v81 + v31[9]) = v234;
  v85 = (v81 + v31[10]);
  *v85 = 0;
  v85[1] = 0;
  *(v81 + v31[12]) = 0;
  *(v81 + v31[13]) = 0;
  v86 = (v81 + v31[16]);
  *v86 = 0;
  v86[1] = 0;
  *(v81 + v31[14]) = 0;
  *(v81 + v31[17]) = 0;
  *(v81 + v31[18]) = 0;
  *(v81 + v31[19]) = 1;
  v241 = MEMORY[0x1E69E7CC0];
  v87 = 3;
  sub_1E4858038(0, 3, 0);
  v88 = v31;
  v89 = v241;
  v227 = v61;
  v90 = v61;
  do
  {
    v91 = v235;
    sub_1E47707EC(v90, v235);
    sub_1E47707EC(v91, v39);
    if (qword_1EE2B41F8 != -1)
    {
      swift_once();
    }

    v92 = sub_1E487719C();
    v93 = __swift_project_value_buffer(v92, qword_1EE2BAF00);
    v94 = *(v92 - 8);
    v95 = *(v94 + 16);
    v233 = v94 + 16;
    v234 = v95;
    v95(v30, v93, v92);
    sub_1E47710AC(v91);
    v96 = &v30[*(v240 + 20)];
    *v96 = 0;
    *(v96 + 1) = 0;
    (v239)(v30, 0, 1);
    sub_1E47A14B4(v30, &v39[v88[15]]);
    v241 = v89;
    v98 = v89[2];
    v97 = v89[3];
    if (v98 >= v97 >> 1)
    {
      sub_1E4858038(v97 > 1, v98 + 1, 1);
      v89 = v241;
    }

    v89[2] = v98 + 1;
    v99 = v236;
    sub_1E4770850(v39, v89 + v237 + v98 * v236);
    v90 += v99;
    --v87;
  }

  while (v87);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v204 = swift_allocObject();
  sub_1E4877A7C();
  v100 = v232;
  v101 = *(v232 + 104);
  v102 = v209;
  LODWORD(v231) = *MEMORY[0x1E6969A48];
  v222 = v232 + 104;
  v230 = v101;
  v101(v209);
  v103 = v221;
  sub_1E4806788(v221);
  v104 = v88;
  sub_1E48774BC();
  v105 = v211;
  v106 = v103;
  v107 = v218;
  v228 = *(v211 + 8);
  v229 = v211 + 8;
  v228(v106, v218);
  v108 = *(v100 + 8);
  v109 = v102;
  v110 = v215;
  v232 = v100 + 8;
  v227 = v108;
  v108(v109, v214);
  v225 = *(v105 + 48);
  v226 = v105 + 48;
  result = v225(v110, 1, v107);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v112 = (v204 + v237);
  v113 = *(v217 + 8);
  v114 = v207;
  v217 += 8;
  v207 = v113;
  (v113)(v114, v210);
  v115 = *(v105 + 32);
  v211 = v105 + 32;
  v215 = v115;
  (v115)(v200, v110, v218);
  v116 = v201;
  sub_1E487703C();
  v200 = sub_1E487868C();
  v117 = v205;
  sub_1E487735C();
  sub_1E487733C();
  v212(v117, v220);
  v118 = v112 + v104[11];
  sub_1E487724C();

  (v239)(v112 + v104[15], 1, 1, v240);
  *v112 = 0xD00000000000001CLL;
  v112[1] = v219;
  v119 = v112 + v104[5];
  sub_1E487704C();
  v120 = v112 + v104[6];
  sub_1E487701C();
  v208(v116, v213);
  *(v112 + v104[7]) = 0;
  *(v112 + v104[8]) = 0;
  *(v112 + v104[9]) = v200;
  v121 = (v112 + v104[10]);
  *v121 = 0;
  v121[1] = 0;
  *(v112 + v104[12]) = 0;
  *(v112 + v104[13]) = 0;
  v122 = (v112 + v104[16]);
  *v122 = 0;
  v122[1] = 0;
  *(v112 + v104[14]) = 0;
  *(v112 + v104[17]) = 0;
  *(v112 + v104[18]) = 0;
  *(v112 + v104[19]) = 1;
  v123 = v202;
  sub_1E4877A7C();
  v124 = v209;
  v125 = v214;
  v230(v209, v231, v214);
  v126 = v221;
  sub_1E4806788(v221);
  sub_1E48774BC();
  v127 = v126;
  v128 = v218;
  v228(v127, v218);
  v129 = v125;
  v130 = v206;
  v227(v124, v129);
  result = v225(v130, 1, v128);
  if (result == 1)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v203 = v112;
  v131 = (v112 + v236);
  (v207)(v123, v210);
  (v215)(v195, v130, v218);
  v132 = v196;
  sub_1E487703C();
  v206 = sub_1E487864C();
  v133 = v205;
  sub_1E487735C();
  sub_1E487733C();
  v212(v133, v220);
  v134 = v131 + v104[11];
  sub_1E487724C();

  (v239)(v131 + v104[15], 1, 1, v240);
  *v131 = 0xD00000000000001CLL;
  v131[1] = v219;
  v135 = v131 + v104[5];
  sub_1E487704C();
  v136 = v131 + v104[6];
  sub_1E487701C();
  v208(v132, v213);
  *(v131 + v104[7]) = 0;
  *(v131 + v104[8]) = 0;
  *(v131 + v104[9]) = v206;
  v137 = (v131 + v104[10]);
  *v137 = 0;
  v137[1] = 0;
  *(v131 + v104[12]) = 0;
  *(v131 + v104[13]) = 0;
  v138 = (v131 + v104[16]);
  *v138 = 0;
  v138[1] = 0;
  *(v131 + v104[14]) = 0;
  *(v131 + v104[17]) = 0;
  *(v131 + v104[18]) = 0;
  *(v131 + v104[19]) = 1;
  v241 = MEMORY[0x1E69E7CC0];
  sub_1E4858038(0, 2, 0);
  v139 = v241;
  v140 = v235;
  sub_1E47707EC(v203, v235);
  v141 = v197;
  sub_1E47707EC(v140, v197);
  v234(v30, v93, v92);
  sub_1E47710AC(v140);
  v142 = v239;
  v143 = &v30[*(v240 + 20)];
  *v143 = 0;
  *(v143 + 1) = 0;
  v142(v30, 0, 1);
  sub_1E47A14B4(v30, v141 + v104[15]);
  v241 = v139;
  v145 = v139[2];
  v144 = v139[3];
  v223 = v104;
  v224 = v139;
  v146 = v145 + 1;
  if (v145 >= v144 >> 1)
  {
    sub_1E4858038(v144 > 1, v145 + 1, 1);
    v146 = v145 + 1;
    v224 = v241;
  }

  v147 = v224;
  v224[2] = v146;
  v148 = v236;
  sub_1E4770850(v141, v147 + v237 + v145 * v236);
  sub_1E47707EC(v131, v140);
  sub_1E47707EC(v140, v141);
  v234(v30, v93, v92);
  sub_1E47710AC(v140);
  v149 = &v30[*(v240 + 20)];
  *v149 = 0;
  *(v149 + 1) = 0;
  (v239)(v30, 0, 1);
  sub_1E47A14B4(v30, v141 + v223[15]);
  v241 = v147;
  v151 = v147[2];
  v150 = v147[3];
  if (v151 >= v150 >> 1)
  {
    sub_1E4858038(v150 > 1, v151 + 1, 1);
    v224 = v241;
  }

  v152 = v224;
  v224[2] = v151 + 1;
  sub_1E4770850(v141, v152 + v237 + v151 * v148);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E4877A7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v153 = type metadata accessor for DayEvents();
  v154 = *(*(v153 - 1) + 72);
  v155 = (*(*(v153 - 1) + 80) + 32) & ~*(*(v153 - 1) + 80);
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_1E48806A0;
  v238 = v156;
  v157 = (v156 + v155);
  v158 = v198;
  sub_1E4877A7C();
  v159 = v221;
  sub_1E4806788(v221);
  sub_1E487745C();
  v160 = v218;
  v161 = v228;
  v228(v159, v218);
  (v207)(v158, v210);
  *&v157[v153[5]] = v89;
  v162 = MEMORY[0x1E69E7CC0];
  *&v157[v153[6]] = MEMORY[0x1E69E7CC0];
  v157[v153[7]] = 0;
  v239 = v157;
  v240 = v154;
  v163 = &v157[v154];
  sub_1E4806C28(&v157[v154]);
  *&v163[v153[5]] = v224;
  *&v163[v153[6]] = v162;
  v163[v153[7]] = 0;
  v164 = v209;
  v165 = v214;
  v230(v209, v231, v214);
  sub_1E4806C28(v159);
  v166 = v199;
  sub_1E48774BC();
  v161(v159, v160);
  v227(v164, v165);
  result = v225(v166, 1, v160);
  if (result == 1)
  {
    goto LABEL_22;
  }

  v167 = &v239[2 * v240];
  (v215)(v167, v166, v160);
  v168 = MEMORY[0x1E69E7CC0];
  *&v167[v153[5]] = MEMORY[0x1E69E7CC0];
  *&v167[v153[6]] = v168;
  v167[v153[7]] = 0;
  v230(v164, v231, v165);
  sub_1E4806C28(v159);
  v169 = v159;
  v170 = v193;
  sub_1E48774BC();
  v228(v169, v160);
  v227(v164, v165);
  result = v225(v170, 1, v160);
  v171 = v165;
  v172 = v160;
  v173 = v194;
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v174 = &v239[3 * v240];
  v175 = v215;
  (v215)(v174, v170, v172);
  v176 = MEMORY[0x1E69E7CC0];
  *&v174[v153[5]] = MEMORY[0x1E69E7CC0];
  *&v174[v153[6]] = v176;
  v174[v153[7]] = 0;
  v230(v164, v231, v171);
  sub_1E4806C28(v169);
  sub_1E48774BC();
  v228(v169, v172);
  v227(v164, v171);
  result = v225(v173, 1, v172);
  if (result == 1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v177 = v169;
  v178 = &v239[4 * v240];
  v175(v178, v173, v172);
  v179 = MEMORY[0x1E69E7CC0];
  *&v178[v153[5]] = MEMORY[0x1E69E7CC0];
  *&v178[v153[6]] = v179;
  v178[v153[7]] = 0;
  v230(v164, v231, v171);
  sub_1E4806C28(v177);
  v180 = v192;
  sub_1E48774BC();
  v228(v177, v172);
  v227(v164, v171);
  result = v225(v180, 1, v172);
  if (result == 1)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v181 = &v239[5 * v240];
  v175(v181, v180, v172);
  *&v181[v153[5]] = v179;
  *&v181[v153[6]] = v179;
  v181[v153[7]] = 0;
  v230(v164, v231, v171);
  sub_1E4806C28(v177);
  v182 = v191;
  sub_1E48774BC();
  v228(v177, v172);
  v227(v164, v171);
  result = v225(v182, 1, v172);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v183 = &v239[6 * v240];
  (v215)(v183, v182, v172);
  v184 = MEMORY[0x1E69E7CC0];
  *&v183[v153[5]] = MEMORY[0x1E69E7CC0];
  *&v183[v153[6]] = v184;
  v183[v153[7]] = 0;
  v230(v164, v231, v171);
  sub_1E4806C28(v177);
  v185 = v190;
  v186 = v216;
  sub_1E48774BC();
  v228(v177, v172);
  v227(v164, v171);
  result = v225(v185, 1, v172);
  if (result != 1)
  {
    v187 = v186;
    v188 = &v239[8 * v240 - v240];
    (v215)(v188, v185, v172);
    *(v188 + v153[5]) = v184;
    *(v188 + v153[6]) = v184;
    *(v188 + v153[7]) = 0;
    (v207)(v187, v210);
    return v238;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E48060FC@<X0>(char *a1@<X8>)
{
  v2 = sub_1E487736C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487732C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1E487706C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E487731C();
  sub_1E487703C();
  v14 = sub_1E487864C();
  sub_1E487735C();
  sub_1E487733C();
  (*(v3 + 8))(v6, v2);
  v15 = type metadata accessor for Event();
  v16 = &a1[v15[11]];
  sub_1E487724C();

  v17 = v15[15];
  v18 = type metadata accessor for Location();
  (*(*(v18 - 8) + 56))(&a1[v17], 1, 1, v18);
  *a1 = 0x7265646E696D6552;
  *(a1 + 1) = 0xE800000000000000;
  v19 = &a1[v15[5]];
  sub_1E487704C();
  v20 = &a1[v15[6]];
  sub_1E487701C();
  result = (*(v10 + 8))(v13, v9);
  *&a1[v15[7]] = 0;
  *&a1[v15[8]] = 0;
  *&a1[v15[9]] = v14;
  v22 = &a1[v15[10]];
  *v22 = 0;
  *(v22 + 1) = 0;
  a1[v15[12]] = 0;
  a1[v15[13]] = 0;
  v23 = &a1[v15[16]];
  *v23 = 0;
  *(v23 + 1) = 0;
  a1[v15[14]] = 7;
  a1[v15[17]] = 0;
  a1[v15[18]] = 0;
  a1[v15[19]] = 1;
  return result;
}

uint64_t sub_1E48063E8@<X0>(char *a1@<X8>, double a2@<D0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_1E487736C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E487732C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v31 = sub_1E487706C();
  v15 = *(v31 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E487731C();
  sub_1E487703C();
  v30 = sub_1E487868C();
  sub_1E487735C();
  sub_1E487733C();
  (*(v9 + 8))(v12, v8);
  v19 = type metadata accessor for Event();
  v20 = &a1[v19[11]];
  sub_1E487724C();

  v21 = v19[15];
  v22 = type metadata accessor for Location();
  v23 = *(*(v22 - 8) + 56);
  v23(&a1[v21], 1, 1, v22);
  *a1 = 0x3120746E657645;
  *(a1 + 1) = 0xE700000000000000;
  v24 = &a1[v19[5]];
  sub_1E487704C();
  v25 = &a1[v19[6]];
  sub_1E487701C();
  (*(v15 + 8))(v18, v31);
  *&a1[v19[7]] = a2;
  *&a1[v19[8]] = 0;
  *&a1[v19[9]] = v30;
  v26 = &a1[v19[10]];
  *v26 = 0;
  *(v26 + 1) = 0;
  a1[v19[12]] = 0;
  a1[v19[13]] = 0;
  v27 = &a1[v19[16]];
  *v27 = 0;
  *(v27 + 1) = 0;
  a1[v19[14]] = 0;
  a1[v19[17]] = 0;
  a1[v19[18]] = 0;
  a1[v19[19]] = 1;
  sub_1E487712C();
  v28 = &v7[*(v22 + 20)];
  *v28 = 0;
  *(v28 + 1) = 0;
  v23(v7, 0, 1, v22);
  return sub_1E47A14B4(v7, &a1[v21]);
}

uint64_t sub_1E4806788@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v27 - v3;
  v5 = sub_1E487753C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C558, qword_1E487D928);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_1E48770FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 56))(v17, 1, 1, v5);
  v23 = sub_1E487757C();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  sub_1E48770EC();
  sub_1E4877A7C();
  sub_1E48774AC();
  v24 = sub_1E487732C();
  v25 = *(v24 - 8);
  result = (*(v25 + 48))(v4, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    (*(v19 + 8))(v22, v18);
    return (*(v25 + 32))(v28, v4, v24);
  }

  return result;
}

uint64_t sub_1E4806B60()
{
  v0 = sub_1E487719C();
  __swift_allocate_value_buffer(v0, qword_1EE2BAEE8);
  __swift_project_value_buffer(v0, qword_1EE2BAEE8);
  return sub_1E487712C();
}

uint64_t sub_1E4806BC4()
{
  v0 = sub_1E487719C();
  __swift_allocate_value_buffer(v0, qword_1EE2BAF00);
  __swift_project_value_buffer(v0, qword_1EE2BAF00);
  return sub_1E487712C();
}

uint64_t sub_1E4806C28@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_1E487751C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_1E487732C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v28 - v16;
  v17 = sub_1E487753C();
  v30 = *(v17 - 8);
  v31 = v17;
  v18 = *(v30 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v28 - v22;
  sub_1E4877A7C();
  sub_1E4877A7C();
  (*(v2 + 104))(v5, *MEMORY[0x1E6969A48], v1);
  sub_1E4806788(v15);
  sub_1E48774BC();
  v29 = *(v11 + 8);
  v29(v15, v10);
  (*(v2 + 8))(v5, v1);
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v25 = v31;
    v26 = *(v30 + 8);
    v26(v21, v31);
    v27 = v32;
    (*(v11 + 32))(v32, v9, v10);
    sub_1E487745C();
    v29(v27, v10);
    return (v26)(v23, v25);
  }

  return result;
}

uint64_t sub_1E4806FA8()
{
  v0 = sub_1E487753C();
  v67 = *(v0 - 8);
  v68 = v0;
  v1 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v66 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v53 - v5;
  v69 = sub_1E487736C();
  v6 = *(v69 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1E487732C();
  v72 = *(v70 - 8);
  v10 = *(v72 + 64);
  v11 = MEMORY[0x1EEE9AC00](v70);
  v60 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v61 = sub_1E487706C();
  v71 = *(v61 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v18 = (type metadata accessor for Event() - 8);
  v19 = *v18;
  v62 = *(*v18 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v63 = xmmword_1E487A7F0;
  v65 = v21;
  *(v21 + 16) = xmmword_1E487A7F0;
  v22 = v21 + v20;
  v55 = 0x80000001E48A8A30;
  sub_1E4806788(v14);
  sub_1E487703C();
  v23 = sub_1E487863C();
  sub_1E487735C();
  sub_1E487733C();
  v24 = *(v6 + 8);
  v58 = v6 + 8;
  v59 = v24;
  v24(v9, v69);
  v25 = (v22 + v18[13]);
  sub_1E487724C();

  v26 = v18[17];
  v27 = type metadata accessor for Location();
  v28 = *(v27 - 8);
  v56 = *(v28 + 56);
  v57 = v28 + 56;
  v56(v22 + v26, 1, 1, v27);
  *v22 = 0xD00000000000001ELL;
  *(v22 + 8) = 0x80000001E48A8A30;
  v29 = (v22 + v18[7]);
  sub_1E487704C();
  v30 = (v22 + v18[8]);
  sub_1E487701C();
  v31 = *(v71 + 8);
  v71 += 8;
  v54 = v31;
  v32 = v61;
  v31(v17, v61);
  *(v22 + v18[9]) = 0;
  *(v22 + v18[10]) = 0;
  *(v22 + v18[11]) = v23;
  v33 = (v22 + v18[12]);
  *v33 = 0;
  v33[1] = 0;
  *(v22 + v18[14]) = 0;
  *(v22 + v18[15]) = 0;
  v34 = (v22 + v18[18]);
  *v34 = 0;
  v34[1] = 0;
  *(v22 + v18[16]) = 0;
  *(v22 + v18[19]) = 0;
  *(v22 + v18[20]) = 0;
  *(v22 + v18[21]) = 1;
  v35 = &v62[v22];
  v36 = v60;
  sub_1E4806788(v60);
  sub_1E48772AC();
  v37 = *(v72 + 8);
  v72 += 8;
  v62 = v37;
  (v37)(v36, v70);
  sub_1E487703C();
  v38 = sub_1E48786AC();
  sub_1E487735C();
  sub_1E487733C();
  v59(v9, v69);
  v39 = v64;
  sub_1E487724C();

  v56(&v35[v18[17]], 1, 1, v27);
  *v35 = 0xD00000000000001ELL;
  *(v35 + 1) = v55;
  v40 = &v35[v18[7]];
  sub_1E487704C();
  v41 = &v35[v18[8]];
  sub_1E487701C();
  v54(v17, v32);
  *&v35[v18[9]] = 0;
  *&v35[v18[10]] = 0;
  *&v35[v18[11]] = v38;
  v42 = &v35[v18[12]];
  *v42 = 0;
  *(v42 + 1) = 0;
  sub_1E47A1444(v39, &v35[v18[13]]);
  v35[v18[14]] = 0;
  v35[v18[15]] = 0;
  v43 = &v35[v18[18]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v35[v18[16]] = 0;
  v35[v18[19]] = 0;
  v35[v18[20]] = 0;
  v35[v18[21]] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v44 = (type metadata accessor for DayEvents() - 8);
  v45 = *(*v44 + 72);
  v46 = (*(*v44 + 80) + 32) & ~*(*v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v63;
  v48 = v47 + v46;
  v49 = v66;
  sub_1E4877A7C();
  sub_1E4806788(v14);
  sub_1E487745C();
  (v62)(v14, v70);
  (*(v67 + 8))(v49, v68);
  *(v48 + v44[7]) = v65;
  v50 = MEMORY[0x1E69E7CC0];
  *(v48 + v44[8]) = MEMORY[0x1E69E7CC0];
  *(v48 + v44[9]) = 0;
  v51 = v48 + v45;
  sub_1E4806C28(v48 + v45);
  *(v51 + v44[7]) = v50;
  *(v51 + v44[8]) = v50;
  *(v51 + v44[9]) = 0;
  return v47;
}

uint64_t sub_1E480774C()
{
  v131 = sub_1E487751C();
  v130 = *(v131 - 8);
  v0 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v119 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v119 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v120 = &v119 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v123 = &v119 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v121 = &v119 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v122 = &v119 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v128 = &v119 - v14;
  v132 = sub_1E487753C();
  v138 = *(v132 - 8);
  v15 = *(v138 + 64);
  v16 = MEMORY[0x1EEE9AC00](v132);
  v127 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v149 = &v119 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v119 - v21;
  v23 = type metadata accessor for Event();
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v119 - v29;
  v142 = sub_1E487736C();
  v145 = *(v142 - 1);
  v31 = *(v145 + 8);
  MEMORY[0x1EEE9AC00](v142);
  v33 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1E487732C();
  v148 = *(v141 - 8);
  v34 = v148[8];
  v35 = MEMORY[0x1EEE9AC00](v141);
  v134 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v119 - v37;
  v39 = sub_1E487706C();
  v40 = *(v39 - 8);
  v143 = v39;
  v144 = v40;
  v41 = v40[8];
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v151 = *(v24 + 72);
  v44 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v125 = 2 * v151;
  v126 = swift_allocObject();
  v150 = v44;
  v45 = (v126 + v44);
  v136 = 0x80000001E48A8A30;
  v140 = v38;
  sub_1E4806788(v38);
  sub_1E487703C();
  v147 = sub_1E487863C();
  sub_1E487735C();
  v133 = v33;
  sub_1E487733C();
  v46 = *(v145 + 1);
  v145 = (v145 + 8);
  v137 = v46;
  v46(v33, v142);
  v47 = v45 + v23[11];
  sub_1E487724C();

  v48 = v23[15];
  v154 = type metadata accessor for Location();
  v49 = *(v154 - 8);
  v50 = *(v49 + 56);
  v152 = v49 + 56;
  v153 = v50;
  (v50)(v45 + v48, 1, 1, v154);
  *v45 = 0xD00000000000001ELL;
  v45[1] = 0x80000001E48A8A30;
  v51 = v45 + v23[5];
  sub_1E487704C();
  v52 = v45 + v23[6];
  v139 = v43;
  sub_1E487701C();
  v53 = v144[1];
  ++v144;
  v135 = v53;
  v53(v43, v143);
  *(v45 + v23[7]) = 0;
  *(v45 + v23[8]) = 0;
  *(v45 + v23[9]) = v147;
  v54 = (v45 + v23[10]);
  *v54 = 0;
  v54[1] = 0;
  *(v45 + v23[12]) = 0;
  *(v45 + v23[13]) = 0;
  v55 = (v45 + v23[16]);
  *v55 = 0;
  v55[1] = 0;
  *(v45 + v23[14]) = 0;
  *(v45 + v23[17]) = 0;
  *(v45 + v23[18]) = 0;
  *(v45 + v23[19]) = 1;
  v56 = (v45 + v151);
  v57 = v134;
  sub_1E4806788(v134);
  sub_1E48772AC();
  v58 = v148 + 1;
  v147 = v148[1];
  v147(v57, v141);
  sub_1E487703C();
  v124 = sub_1E48786AC();
  v59 = v133;
  sub_1E487735C();
  sub_1E487733C();
  v137(v59, v142);
  v60 = v56 + v23[11];
  sub_1E487724C();

  (v153)(v56 + v23[15], 1, 1, v154);
  *v56 = 0xD00000000000001ELL;
  v56[1] = v136;
  v61 = v56 + v23[5];
  v62 = v139;
  sub_1E487704C();
  v63 = v56 + v23[6];
  sub_1E487701C();
  v135(v62, v143);
  *(v56 + v23[7]) = 0;
  *(v56 + v23[8]) = 0;
  *(v56 + v23[9]) = v124;
  v64 = (v56 + v23[10]);
  *v64 = 0;
  v64[1] = 0;
  *(v56 + v23[12]) = 0;
  *(v56 + v23[13]) = 0;
  v65 = (v56 + v23[16]);
  *v65 = 0;
  v65[1] = 0;
  *(v56 + v23[14]) = 0;
  *(v56 + v23[17]) = 0;
  *(v56 + v23[18]) = 0;
  *(v56 + v23[19]) = 1;
  v66 = (v45 + v125);
  v67 = v134;
  sub_1E4806788(v134);
  sub_1E48772AC();
  v146 = v58;
  v147(v67, v141);
  v68 = v139;
  sub_1E487703C();
  v134 = sub_1E48786CC();
  v69 = v133;
  sub_1E487735C();
  sub_1E487733C();
  v137(v69, v142);
  v70 = v66 + v23[11];
  sub_1E487724C();

  (v153)(v66 + v23[15], 1, 1, v154);
  *v66 = 0xD00000000000001ELL;
  v66[1] = v136;
  v71 = v66 + v23[5];
  sub_1E487704C();
  v72 = v66 + v23[6];
  sub_1E487701C();
  v135(v68, v143);
  *(v66 + v23[7]) = 0;
  *(v66 + v23[8]) = 0;
  *(v66 + v23[9]) = v134;
  v73 = (v66 + v23[10]);
  *v73 = 0;
  v73[1] = 0;
  *(v66 + v23[12]) = 0;
  *(v66 + v23[13]) = 0;
  v74 = (v66 + v23[16]);
  *v74 = 0;
  v74[1] = 0;
  *(v66 + v23[14]) = 0;
  *(v66 + v23[17]) = 0;
  *(v66 + v23[18]) = 0;
  *(v66 + v23[19]) = 1;
  v155 = MEMORY[0x1E69E7CC0];
  v75 = 3;
  sub_1E4858038(0, 3, 0);
  v76 = v155;
  v145 = v45;
  do
  {
    sub_1E47707EC(v45, v28);
    sub_1E47707EC(v28, v30);
    if (qword_1EE2B41F0 != -1)
    {
      swift_once();
    }

    v77 = sub_1E487719C();
    v78 = __swift_project_value_buffer(v77, qword_1EE2BAEE8);
    (*(*(v77 - 8) + 16))(v22, v78, v77);
    sub_1E47710AC(v28);
    v79 = &v22[*(v154 + 20)];
    *v79 = 0;
    *(v79 + 1) = 0;
    (v153)(v22, 0, 1);
    sub_1E47A14B4(v22, &v30[v23[15]]);
    v155 = v76;
    v81 = *(v76 + 16);
    v80 = *(v76 + 24);
    if (v81 >= v80 >> 1)
    {
      sub_1E4858038(v80 > 1, v81 + 1, 1);
      v76 = v155;
    }

    *(v76 + 16) = v81 + 1;
    v82 = v151;
    sub_1E4770850(v30, v150 + v76 + v81 * v151);
    v45 = (v45 + v82);
    --v75;
  }

  while (v75);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E4877A7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v83 = type metadata accessor for DayEvents();
  v84 = *(*(v83 - 1) + 72);
  v85 = (*(*(v83 - 1) + 80) + 32) & ~*(*(v83 - 1) + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1E48806A0;
  v139 = v86;
  v87 = (v86 + v85);
  v88 = v127;
  sub_1E4877A7C();
  v89 = v140;
  sub_1E4806788(v140);
  sub_1E487745C();
  v90 = v141;
  v91 = v147;
  v147(v89, v141);
  v137 = *(v138 + 8);
  v138 += 8;
  v137(v88, v132);
  *&v87[v83[5]] = v76;
  v92 = MEMORY[0x1E69E7CC0];
  *&v87[v83[6]] = MEMORY[0x1E69E7CC0];
  v87[v83[7]] = 0;
  v153 = v87;
  v154 = v84;
  v93 = &v87[v84];
  sub_1E4806C28(&v87[v84]);
  *&v93[v83[5]] = v92;
  *&v93[v83[6]] = v92;
  v93[v83[7]] = 0;
  v94 = v130;
  v95 = *(v130 + 104);
  v96 = v129;
  LODWORD(v151) = *MEMORY[0x1E6969A48];
  v97 = v131;
  v152 = v130 + 104;
  v150 = v95;
  v95(v129);
  sub_1E4806C28(v89);
  v98 = v128;
  sub_1E48774BC();
  v91(v89, v90);
  v145 = *(v94 + 8);
  v145(v96, v97);
  v99 = v148;
  v143 = v148[6];
  v144 = v148 + 6;
  result = v143(v98, 1, v90);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v101 = &v153[2 * v154];
  v102 = v99[4];
  v148 = v99 + 4;
  v142 = v102;
  v102(v101, v98, v90);
  v103 = MEMORY[0x1E69E7CC0];
  *&v101[v83[5]] = MEMORY[0x1E69E7CC0];
  *&v101[v83[6]] = v103;
  v101[v83[7]] = 0;
  v150(v96, v151, v97);
  sub_1E4806C28(v89);
  v104 = v122;
  sub_1E48774BC();
  v147(v89, v90);
  v145(v96, v97);
  result = v143(v104, 1, v90);
  v105 = v123;
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v106 = &v153[3 * v154];
  v142(v106, v104, v90);
  v107 = MEMORY[0x1E69E7CC0];
  *&v106[v83[5]] = MEMORY[0x1E69E7CC0];
  *&v106[v83[6]] = v107;
  v106[v83[7]] = 0;
  v150(v96, v151, v97);
  sub_1E4806C28(v89);
  v108 = v121;
  sub_1E48774BC();
  v147(v89, v90);
  v145(v96, v97);
  result = v143(v108, 1, v90);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v109 = &v153[4 * v154];
  v142(v109, v108, v90);
  v110 = MEMORY[0x1E69E7CC0];
  *&v109[v83[5]] = MEMORY[0x1E69E7CC0];
  *&v109[v83[6]] = v110;
  v109[v83[7]] = 0;
  v150(v96, v151, v97);
  sub_1E4806C28(v89);
  sub_1E48774BC();
  v147(v89, v90);
  v145(v96, v97);
  result = v143(v105, 1, v90);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v111 = &v153[5 * v154];
  v142(v111, v105, v90);
  *&v111[v83[5]] = v110;
  *&v111[v83[6]] = v110;
  v111[v83[7]] = 0;
  v150(v96, v151, v97);
  sub_1E4806C28(v89);
  v112 = v89;
  v113 = v110;
  v114 = v120;
  sub_1E48774BC();
  v147(v112, v90);
  v145(v96, v97);
  result = v143(v114, 1, v90);
  if (result == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v115 = &v153[6 * v154];
  v142(v115, v114, v90);
  *&v115[v83[5]] = v113;
  *&v115[v83[6]] = v113;
  v115[v83[7]] = 0;
  v150(v96, v151, v97);
  sub_1E4806C28(v112);
  v116 = v113;
  v117 = v119;
  sub_1E48774BC();
  v147(v112, v90);
  v145(v96, v97);
  result = v143(v117, 1, v90);
  if (result != 1)
  {
    v118 = &v153[8 * v154 - v154];
    v142(v118, v117, v90);
    *(v118 + v83[5]) = v116;
    *(v118 + v83[6]) = v116;
    *(v118 + v83[7]) = 0;
    v137(v149, v132);
    return v139;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1E4808A90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v280 = &v226 - v2;
  v3 = type metadata accessor for Event();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v245 = &v226 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v279 = &v226 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v251 = (&v226 - v10);
  v265 = sub_1E487751C();
  v277 = *(v265 - 8);
  v11 = *(v277 + 64);
  v12 = MEMORY[0x1EEE9AC00](v265);
  v247 = &v226 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v263 = &v226 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v227 = &v226 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v229 = &v226 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v228 = &v226 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v231 = &v226 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v230 = &v226 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v234 = &v226 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v240 = &v226 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v237 = &v226 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v243 = &v226 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v269 = &v226 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v278 = &v226 - v37;
  v261 = sub_1E487736C();
  v267 = *(v261 - 8);
  v38 = v267[8];
  MEMORY[0x1EEE9AC00](v261);
  v40 = &v226 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_1E487732C();
  v274 = *(v262 - 8);
  v41 = v274[8];
  v42 = MEMORY[0x1EEE9AC00](v262);
  v236 = &v226 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v238 = &v226 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v226 - v46;
  v260 = sub_1E487706C();
  v266 = *(v260 - 8);
  v48 = *(v266 + 64);
  v49 = MEMORY[0x1EEE9AC00](v260);
  v232 = &v226 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v239 = &v226 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v241 = &v226 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v271 = &v226 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v226 - v57;
  v254 = sub_1E487753C();
  v258 = *(v254 - 8);
  v59 = *(v258 + 64);
  v60 = MEMORY[0x1EEE9AC00](v254);
  v233 = &v226 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v246 = &v226 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v268 = &v226 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v226 - v66;
  sub_1E4877A7C();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v69 = *(v4 + 80);
  v70 = (v69 + 32) & ~v69;
  v282 = *(v4 + 72);
  v244 = v69;
  v250 = v68;
  v71 = swift_allocObject();
  v281 = v70;
  v242 = v71;
  v72 = (v71 + v70);
  sub_1E4806788(v47);
  sub_1E487703C();
  v276 = sub_1E487863C();
  sub_1E487735C();
  sub_1E487733C();
  v73 = v267[1];
  v253 = v40;
  ++v267;
  v256 = v73;
  v73(v40, v261);
  v74 = &v72[v3[11]];
  sub_1E487724C();

  v75 = v3[15];
  v76 = type metadata accessor for Location();
  v77 = *(v76 - 8);
  v78 = &v72[v75];
  v79 = v72;
  v284 = *(v77 + 56);
  v285 = v76;
  v283 = v77 + 56;
  (v284)(v78, 1, 1);
  *v72 = 0xD00000000000001CLL;
  *(v72 + 1) = 0x80000001E48A89F0;
  v257 = 0x80000001E48A89F0;
  v80 = &v72[v3[5]];
  sub_1E487704C();
  v81 = &v72[v3[6]];
  sub_1E487701C();
  v82 = *(v266 + 8);
  v266 += 8;
  v255 = v82;
  v82(v58, v260);
  *&v72[v3[7]] = 0;
  *&v72[v3[8]] = 0;
  *&v72[v3[9]] = v276;
  v83 = &v72[v3[10]];
  *v83 = 0;
  *(v83 + 1) = 0;
  v72[v3[12]] = 0;
  v72[v3[13]] = 0;
  v84 = &v72[v3[16]];
  *v84 = 0;
  *(v84 + 1) = 0;
  v72[v3[14]] = 0;
  v72[v3[17]] = 0;
  v72[v3[18]] = 0;
  v72[v3[19]] = 1;
  v85 = v277;
  v86 = *(v277 + 104);
  v87 = v263;
  LODWORD(v248) = *MEMORY[0x1E6969A58];
  v88 = v265;
  v259 = v277 + 104;
  v264 = v86;
  v86(v263);
  sub_1E4806788(v47);
  v89 = v278;
  v90 = v87;
  v270 = v67;
  sub_1E48774BC();
  v91 = v89;
  v92 = v274;
  v93 = v274 + 1;
  v94 = v262;
  v273 = v274[1];
  v273(v47, v262);
  v95 = *(v85 + 8);
  v277 = v85 + 8;
  v275 = v95;
  v95(v90, v88);
  v96 = (v92 + 6);
  v276 = v92[6];
  result = v276(v91, 1, v94);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v98 = v79;
  v99 = &v79[v282];
  v100 = v271;
  sub_1E487703C();
  v278 = sub_1E48786AC();
  v101 = v253;
  sub_1E487735C();
  sub_1E487733C();
  v256(v101, v261);
  v102 = &v99[v3[11]];
  sub_1E487724C();

  (v284)(&v99[v3[15]], 1, 1, v285);
  *v99 = 0xD00000000000001CLL;
  *(v99 + 1) = v257;
  v103 = &v99[v3[5]];
  sub_1E487704C();
  v104 = &v99[v3[6]];
  sub_1E487701C();
  v255(v100, v260);
  *&v99[v3[7]] = 0;
  *&v99[v3[8]] = 0;
  *&v99[v3[9]] = v278;
  v105 = &v99[v3[10]];
  *v105 = 0;
  *(v105 + 1) = 0;
  v99[v3[12]] = 0;
  v99[v3[13]] = 0;
  v106 = &v99[v3[16]];
  *v106 = 0;
  *(v106 + 1) = 0;
  v99[v3[14]] = 0;
  v99[v3[17]] = 0;
  v99[v3[18]] = 0;
  v99[v3[19]] = 1;
  v107 = v263;
  v108 = v265;
  (v264)(v263, v248, v265);
  sub_1E4806788(v47);
  v109 = v269;
  sub_1E48774BC();
  v252 = v47;
  v110 = v262;
  v272 = v93;
  v273(v47, v262);
  v275(v107, v108);
  result = v276(v109, 1, v110);
  if (result == 1)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v271 = v96;
  v235 = 2 * v282;
  v111 = &v98[2 * v282];
  v112 = v241;
  sub_1E487703C();
  v113 = sub_1E48786CC();
  sub_1E487735C();
  sub_1E487733C();
  v256(v101, v261);
  v114 = &v111[v3[11]];
  sub_1E487724C();

  (v284)(&v111[v3[15]], 1, 1, v285);
  *v111 = 0xD00000000000001CLL;
  *(v111 + 1) = v257;
  v115 = &v111[v3[5]];
  sub_1E487704C();
  v116 = &v111[v3[6]];
  sub_1E487701C();
  v255(v112, v260);
  *&v111[v3[7]] = 0;
  *&v111[v3[8]] = 0;
  *&v111[v3[9]] = v113;
  v117 = &v111[v3[10]];
  *v117 = 0;
  *(v117 + 1) = 0;
  v111[v3[12]] = 0;
  v111[v3[13]] = 0;
  v118 = &v111[v3[16]];
  *v118 = 0;
  *(v118 + 1) = 0;
  v111[v3[14]] = 0;
  v111[v3[17]] = 0;
  v111[v3[18]] = 0;
  v111[v3[19]] = 1;
  v286 = MEMORY[0x1E69E7CC0];
  v119 = 3;
  sub_1E4858038(0, 3, 0);
  v120 = v286;
  v269 = v98;
  v121 = v98;
  v122 = v251;
  do
  {
    v123 = v279;
    sub_1E47707EC(v121, v279);
    sub_1E47707EC(v123, v122);
    v124 = v280;
    if (qword_1EE2B41F8 != -1)
    {
      swift_once();
    }

    v125 = sub_1E487719C();
    v126 = __swift_project_value_buffer(v125, qword_1EE2BAF00);
    v278 = *(*(v125 - 8) + 16);
    (v278)(v124, v126, v125);
    sub_1E47710AC(v123);
    v127 = (v124 + *(v285 + 20));
    *v127 = 0;
    v127[1] = 0;
    (v284)(v124, 0, 1);
    sub_1E47A14B4(v124, v122 + v3[15]);
    v286 = v120;
    v129 = v120[2];
    v128 = v120[3];
    if (v129 >= v128 >> 1)
    {
      sub_1E4858038(v128 > 1, v129 + 1, 1);
      v120 = v286;
    }

    v120[2] = v129 + 1;
    v130 = v282;
    sub_1E4770850(v122, v120 + v281 + v129 * v282);
    v121 += v130;
    --v119;
  }

  while (v119);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v244 = swift_allocObject();
  sub_1E4877A7C();
  v131 = v263;
  LODWORD(v269) = *MEMORY[0x1E6969A48];
  v132 = v265;
  v264(v263);
  v133 = v252;
  sub_1E4806788(v252);
  v134 = v243;
  sub_1E48774BC();
  v135 = v262;
  v273(v133, v262);
  v275(v131, v132);
  result = v276(v134, 1, v135);
  if (result == 1)
  {
    goto LABEL_25;
  }

  v136 = (v244 + v281);
  v137 = *(v258 + 8);
  v258 += 8;
  v250 = v137;
  v137(v268, v254);
  v138 = v274[4];
  v274 += 4;
  v268 = v138;
  (v138)(v238, v134, v135);
  v139 = v239;
  sub_1E487703C();
  v251 = sub_1E487868C();
  v140 = v253;
  sub_1E487735C();
  sub_1E487733C();
  v256(v140, v261);
  v141 = v136 + v3[11];
  sub_1E487724C();

  (v284)(v136 + v3[15], 1, 1, v285);
  *v136 = 0xD00000000000001CLL;
  v136[1] = v257;
  v142 = v136 + v3[5];
  sub_1E487704C();
  v143 = v136 + v3[6];
  sub_1E487701C();
  v255(v139, v260);
  *(v136 + v3[7]) = 0;
  *(v136 + v3[8]) = 0;
  *(v136 + v3[9]) = v251;
  v144 = (v136 + v3[10]);
  *v144 = 0;
  v144[1] = 0;
  *(v136 + v3[12]) = 0;
  *(v136 + v3[13]) = 0;
  v145 = (v136 + v3[16]);
  *v145 = 0;
  v145[1] = 0;
  *(v136 + v3[14]) = 0;
  *(v136 + v3[17]) = 0;
  *(v136 + v3[18]) = 0;
  v249 = v3;
  v146 = v3[19];
  v251 = v136;
  *(v136 + v146) = 1;
  v147 = v265;
  v148 = v264;
  (v264)(v247, v248, v265);
  sub_1E4877A7C();
  v149 = v263;
  v148(v263, v269, v147);
  v150 = v252;
  sub_1E4806788(v252);
  v151 = v240;
  sub_1E48774BC();
  v152 = v150;
  v153 = v262;
  v154 = v273;
  v273(v152, v262);
  v155 = v147;
  v156 = v151;
  v275(v149, v155);
  result = v276(v151, 1, v153);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v250(v246, v254);
  v157 = v236;
  v158 = v156;
  v159 = v153;
  (v268)(v236, v158, v153);
  v160 = v237;
  v161 = v247;
  sub_1E48774BC();
  v154(v157, v159);
  v275(v161, v265);
  result = v276(v160, 1, v159);
  if (result == 1)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v162 = (v251 + v282);
  v163 = v232;
  sub_1E487703C();
  v248 = sub_1E487864C();
  v164 = v253;
  sub_1E487735C();
  sub_1E487733C();
  v256(v164, v261);
  v165 = v249;
  v166 = v162 + v249[11];
  sub_1E487724C();

  (v284)(v162 + v165[15], 1, 1, v285);
  *v162 = 0xD00000000000001CLL;
  v162[1] = v257;
  v167 = v162 + v165[5];
  sub_1E487704C();
  v168 = v162 + v165[6];
  sub_1E487701C();
  v255(v163, v260);
  *(v162 + v165[7]) = 0;
  *(v162 + v165[8]) = 0;
  *(v162 + v165[9]) = v248;
  v169 = (v162 + v165[10]);
  *v169 = 0;
  v169[1] = 0;
  *(v162 + v165[12]) = 0;
  *(v162 + v165[13]) = 0;
  v170 = (v162 + v165[16]);
  *v170 = 0;
  v170[1] = 0;
  *(v162 + v165[14]) = 0;
  *(v162 + v165[17]) = 0;
  *(v162 + v165[18]) = 0;
  *(v162 + v165[19]) = 1;
  v286 = MEMORY[0x1E69E7CC0];
  sub_1E4858038(0, 2, 0);
  v171 = v286;
  v172 = v279;
  sub_1E47707EC(v251, v279);
  v173 = v245;
  sub_1E47707EC(v172, v245);
  v174 = v280;
  (v278)(v280, v126, v125);
  sub_1E47710AC(v172);
  v175 = v284;
  v176 = (v174 + *(v285 + 20));
  *v176 = 0;
  v176[1] = 0;
  v175(v174, 0, 1);
  sub_1E47A14B4(v174, v173 + v165[15]);
  v286 = v171;
  v178 = v171[2];
  v177 = v171[3];
  v267 = v171;
  v179 = v178 + 1;
  if (v178 >= v177 >> 1)
  {
    sub_1E4858038(v177 > 1, v178 + 1, 1);
    v179 = v178 + 1;
    v267 = v286;
  }

  v180 = v267;
  v267[2] = v179;
  v181 = v282;
  v182 = v180 + v281 + v178 * v282;
  v183 = v245;
  sub_1E4770850(v245, v182);
  sub_1E47707EC(v162, v172);
  sub_1E47707EC(v172, v183);
  (v278)(v174, v126, v125);
  sub_1E47710AC(v172);
  v184 = (v174 + *(v285 + 20));
  *v184 = 0;
  v184[1] = 0;
  (v284)(v174, 0, 1);
  sub_1E47A14B4(v174, v183 + v249[15]);
  v286 = v180;
  v186 = v180[2];
  v185 = v180[3];
  if (v186 >= v185 >> 1)
  {
    sub_1E4858038(v185 > 1, v186 + 1, 1);
    v267 = v286;
  }

  v187 = v267;
  v267[2] = v186 + 1;
  sub_1E4770850(v183, v187 + v281 + v186 * v181);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v188 = type metadata accessor for DayEvents();
  v189 = *(*(v188 - 1) + 72);
  v190 = (*(*(v188 - 1) + 80) + 32) & ~*(*(v188 - 1) + 80);
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_1E48806A0;
  v283 = v191;
  v192 = (v191 + v190);
  v193 = v233;
  sub_1E4877A7C();
  v194 = v252;
  sub_1E4806788(v252);
  sub_1E487745C();
  v195 = v262;
  v196 = v273;
  v273(v194, v262);
  v250(v193, v254);
  *&v192[v188[5]] = v120;
  v197 = v194;
  v198 = MEMORY[0x1E69E7CC0];
  *&v192[v188[6]] = MEMORY[0x1E69E7CC0];
  v192[v188[7]] = 0;
  v284 = v192;
  v285 = v189;
  v199 = &v192[v189];
  sub_1E4806C28(&v192[v189]);
  *&v199[v188[5]] = v267;
  *&v199[v188[6]] = v198;
  v199[v188[7]] = 0;
  v200 = v263;
  v201 = v265;
  (v264)(v263, v269, v265);
  sub_1E4806C28(v194);
  v202 = v234;
  sub_1E48774BC();
  v196(v194, v195);
  v203 = v275;
  v275(v200, v201);
  result = v276(v202, 1, v195);
  if (result == 1)
  {
    goto LABEL_28;
  }

  v204 = &v284[2 * v285];
  (v268)(v204, v202, v195);
  v205 = MEMORY[0x1E69E7CC0];
  *&v204[v188[5]] = MEMORY[0x1E69E7CC0];
  *&v204[v188[6]] = v205;
  v204[v188[7]] = 0;
  (v264)(v200, v269, v201);
  sub_1E4806C28(v197);
  v206 = v230;
  sub_1E48774BC();
  v273(v197, v195);
  v203(v200, v201);
  result = v276(v206, 1, v195);
  v207 = v231;
  if (result == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v208 = &v284[3 * v285];
  (v268)(v208, v206, v195);
  v209 = MEMORY[0x1E69E7CC0];
  *&v208[v188[5]] = MEMORY[0x1E69E7CC0];
  *&v208[v188[6]] = v209;
  v208[v188[7]] = 0;
  v210 = v264;
  (v264)(v200, v269, v201);
  sub_1E4806C28(v197);
  sub_1E48774BC();
  v273(v197, v195);
  v275(v200, v201);
  result = v276(v207, 1, v195);
  if (result == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v211 = &v284[4 * v285];
  (v268)(v211, v207, v195);
  v212 = MEMORY[0x1E69E7CC0];
  *&v211[v188[5]] = MEMORY[0x1E69E7CC0];
  *&v211[v188[6]] = v212;
  v211[v188[7]] = 0;
  v210(v200, v269, v201);
  sub_1E4806C28(v197);
  v213 = v197;
  v214 = v228;
  sub_1E48774BC();
  v273(v213, v195);
  v275(v200, v201);
  result = v276(v214, 1, v195);
  v215 = v229;
  if (result == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v216 = &v284[5 * v285];
  (v268)(v216, v214, v195);
  v217 = MEMORY[0x1E69E7CC0];
  *&v216[v188[5]] = MEMORY[0x1E69E7CC0];
  *&v216[v188[6]] = v217;
  v216[v188[7]] = 0;
  v210(v200, v269, v201);
  sub_1E4806C28(v213);
  v218 = v270;
  sub_1E48774BC();
  v273(v213, v195);
  v275(v200, v201);
  result = v276(v215, 1, v195);
  if (result == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v219 = &v284[6 * v285];
  (v268)(v219, v215, v195);
  v220 = MEMORY[0x1E69E7CC0];
  *&v219[v188[5]] = MEMORY[0x1E69E7CC0];
  *&v219[v188[6]] = v220;
  v219[v188[7]] = 0;
  v210(v200, v269, v201);
  sub_1E4806C28(v213);
  v221 = v227;
  sub_1E48774BC();
  v273(v213, v195);
  v275(v200, v201);
  result = v276(v221, 1, v195);
  v222 = v195;
  v223 = v254;
  if (result != 1)
  {
    v224 = &v284[8 * v285 - v285];
    (v268)(v224, v221, v222);
    v225 = MEMORY[0x1E69E7CC0];
    *(v224 + v188[5]) = MEMORY[0x1E69E7CC0];
    *(v224 + v188[6]) = v225;
    *(v224 + v188[7]) = 0;
    v250(v218, v223);
    return v283;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1E480AA84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v307 = &v276 - v2;
  v3 = type metadata accessor for Event();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v283 = &v276 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v287 = &v276 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v294 = &v276 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v337 = &v276 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v276 - v14;
  v323 = sub_1E487751C();
  v333 = *(v323 - 8);
  v16 = *(v333 + 64);
  v17 = MEMORY[0x1EEE9AC00](v323);
  v300 = &v276 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v321 = &v276 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v278 = &v276 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v281 = &v276 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v277 = &v276 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v279 = &v276 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v280 = &v276 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v284 = &v276 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v285 = &v276 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v286 = &v276 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v288 = &v276 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v293 = &v276 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v290 = &v276 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v326 = &v276 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v336 = &v276 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v338 = (&v276 - v48);
  v319 = sub_1E487736C();
  v322 = *(v319 - 8);
  v49 = *(v322 + 64);
  MEMORY[0x1EEE9AC00](v319);
  v51 = &v276 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_1E487732C();
  v309 = *(v316 - 8);
  v52 = v309[8];
  v53 = MEMORY[0x1EEE9AC00](v316);
  v295 = &v276 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v289 = &v276 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v302 = &v276 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v291 = &v276 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v276 - v61;
  v318 = sub_1E487706C();
  v63 = *(v318 - 8);
  v64 = *(v63 + 64);
  v65 = MEMORY[0x1EEE9AC00](v318);
  v292 = &v276 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v334 = &v276 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v335 = (&v276 - v70);
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v276 - v71;
  v306 = sub_1E487753C();
  v308 = *(v306 - 8);
  v73 = *(v308 + 64);
  v74 = MEMORY[0x1EEE9AC00](v306);
  v282 = &v276 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v299 = &v276 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v324 = &v276 - v79;
  MEMORY[0x1EEE9AC00](v78);
  v315 = &v276 - v80;
  sub_1E4877A7C();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v82 = *(v4 + 72);
  v83 = *(v4 + 80);
  v84 = (v83 + 32) & ~v83;
  v341 = v82;
  v303 = v83;
  v304 = v81;
  v85 = swift_allocObject();
  v340 = v84;
  v317 = v85;
  v86 = (v85 + v84);
  v320 = v62;
  sub_1E4806788(v62);
  sub_1E487703C();
  v87 = sub_1E487863C();
  sub_1E487735C();
  sub_1E487733C();
  v88 = *(v322 + 8);
  v314 = v51;
  v322 += 8;
  v311 = v88;
  v88(v51, v319);
  v89 = v86 + v3[11];
  sub_1E487724C();

  v90 = v3[15];
  v91 = type metadata accessor for Location();
  v92 = *(v91 - 8);
  v93 = *(v92 + 56);
  v339 = v91;
  v342 = v92 + 56;
  v343 = v93;
  (v93)(v86 + v90, 1, 1);
  *v86 = 0xD00000000000001CLL;
  v86[1] = 0x80000001E48A89F0;
  v312 = 0x80000001E48A89F0;
  v94 = v86 + v3[5];
  sub_1E487704C();
  v95 = v86 + v3[6];
  sub_1E487701C();
  v96 = *(v63 + 8);
  v297 = v72;
  v313 = v63 + 8;
  v310 = v96;
  v96(v72, v318);
  *(v86 + v3[7]) = 0;
  *(v86 + v3[8]) = 0;
  *(v86 + v3[9]) = v87;
  v97 = (v86 + v3[10]);
  *v97 = 0;
  v97[1] = 0;
  *(v86 + v3[12]) = 0;
  *(v86 + v3[13]) = 0;
  v98 = (v86 + v3[16]);
  *v98 = 0;
  v98[1] = 0;
  *(v86 + v3[14]) = 0;
  *(v86 + v3[17]) = 0;
  *(v86 + v3[18]) = 0;
  *(v86 + v3[19]) = 1;
  v99 = v333;
  v100 = *(v333 + 104);
  v101 = v321;
  LODWORD(v305) = *MEMORY[0x1E6969A58];
  v102 = v323;
  v329 = v100;
  v331 = v333 + 104;
  v100(v321);
  v103 = v320;
  sub_1E4806788(v320);
  v104 = v338;
  v105 = v101;
  sub_1E48774BC();
  v106 = v309;
  v107 = v309[1];
  v108 = v316;
  v325 = v309 + 1;
  v328 = v107;
  v107(v103, v316);
  v109 = *(v99 + 8);
  v333 = v99 + 8;
  v330 = v109;
  v109(v105, v102);
  v110 = v106 + 6;
  v332 = v106[6];
  result = v332(v104, 1, v108);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v112 = v86 + v341;
  v113 = v335;
  sub_1E487703C();
  v114 = sub_1E48786AC();
  v115 = v314;
  sub_1E487735C();
  sub_1E487733C();
  v116 = v86;
  v311(v115, v319);
  v117 = &v112[v3[11]];
  sub_1E487724C();

  v343(&v112[v3[15]], 1, 1, v339);
  *v112 = 0xD00000000000001CLL;
  *(v112 + 1) = v312;
  v118 = &v112[v3[5]];
  sub_1E487704C();
  v119 = &v112[v3[6]];
  sub_1E487701C();
  v310(v113, v318);
  *&v112[v3[7]] = 0;
  *&v112[v3[8]] = 0;
  *&v112[v3[9]] = v114;
  v120 = &v112[v3[10]];
  *v120 = 0;
  *(v120 + 1) = 0;
  v112[v3[12]] = 0;
  v112[v3[13]] = 0;
  v121 = &v112[v3[16]];
  *v121 = 0;
  *(v121 + 1) = 0;
  v112[v3[14]] = 0;
  v112[v3[17]] = 0;
  v112[v3[18]] = 0;
  v112[v3[19]] = 1;
  v122 = v321;
  v123 = v323;
  (v329)(v321, v305, v323);
  v124 = v320;
  sub_1E4806788(v320);
  v125 = v336;
  sub_1E48774BC();
  v126 = v316;
  v328(v124, v316);
  v330(v122, v123);
  v327 = v110;
  result = v332(v125, 1, v126);
  if (result == 1)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v127 = v116 + 2 * v341;
  v128 = v116;
  v129 = v334;
  sub_1E487703C();
  v130 = sub_1E48786CC();
  v131 = v314;
  sub_1E487735C();
  sub_1E487733C();
  v311(v131, v319);
  v132 = &v127[v3[11]];
  sub_1E487724C();

  v133 = v339;
  v343(&v127[v3[15]], 1, 1, v339);
  *v127 = 0xD00000000000001CLL;
  *(v127 + 1) = v312;
  v134 = &v127[v3[5]];
  sub_1E487704C();
  v135 = &v127[v3[6]];
  sub_1E487701C();
  v310(v129, v318);
  *&v127[v3[7]] = 0;
  *&v127[v3[8]] = 0;
  *&v127[v3[9]] = v130;
  v136 = &v127[v3[10]];
  *v136 = 0;
  *(v136 + 1) = 0;
  v127[v3[12]] = 0;
  v127[v3[13]] = 0;
  v137 = &v127[v3[16]];
  *v137 = 0;
  *(v137 + 1) = 0;
  v127[v3[14]] = 0;
  v127[v3[17]] = 0;
  v127[v3[18]] = 0;
  v338 = v3;
  v127[v3[19]] = 1;
  v344 = MEMORY[0x1E69E7CC0];
  v138 = 3;
  sub_1E4858038(0, 3, 0);
  v139 = v344;
  v301 = v128;
  v140 = v307;
  v141 = v133;
  do
  {
    v142 = v337;
    sub_1E47707EC(v128, v337);
    sub_1E47707EC(v142, v15);
    if (qword_1EE2B41F8 != -1)
    {
      swift_once();
    }

    v143 = sub_1E487719C();
    v144 = __swift_project_value_buffer(v143, qword_1EE2BAF00);
    v145 = *(v143 - 8);
    v335 = *(v145 + 16);
    v336 = v144;
    v334 = (v145 + 16);
    v335(v140);
    sub_1E47710AC(v142);
    v146 = (v140 + *(v141 + 20));
    *v146 = 0;
    v146[1] = 0;
    v343(v140, 0, 1, v141);
    sub_1E47A14B4(v140, &v15[v338[15]]);
    v344 = v139;
    v148 = *(v139 + 2);
    v147 = *(v139 + 3);
    if (v148 >= v147 >> 1)
    {
      sub_1E4858038(v147 > 1, v148 + 1, 1);
      v140 = v307;
      v139 = v344;
    }

    *(v139 + 2) = v148 + 1;
    v149 = v341;
    sub_1E4770850(v15, &v139[v340 + v148 * v341]);
    v128 += v149;
    --v138;
    v141 = v339;
  }

  while (v138);
  swift_setDeallocating();
  v150 = v338;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v151 = v340;
  v296 = v340 + v341;
  v298 = swift_allocObject();
  v152 = v324;
  sub_1E4877A7C();
  v153 = v321;
  LODWORD(v317) = *MEMORY[0x1E6969A48];
  v154 = v323;
  v329(v321);
  v155 = v320;
  sub_1E4806788(v320);
  v156 = v326;
  sub_1E48774BC();
  v157 = v316;
  v328(v155, v316);
  v330(v153, v154);
  result = v332(v156, 1, v157);
  if (result == 1)
  {
    goto LABEL_30;
  }

  v158 = (v298 + v151);
  v159 = *(v308 + 8);
  v308 += 8;
  v301 = v159;
  v159(v152, v306);
  v160 = v309[4];
  v326 = (v309 + 4);
  v324 = v160;
  (v160)(v291, v156, v157);
  v161 = v292;
  sub_1E487703C();
  v162 = sub_1E487868C();
  v163 = v314;
  sub_1E487735C();
  sub_1E487733C();
  v311(v163, v319);
  v164 = &v158[v150[11]];
  sub_1E487724C();

  v165 = v339;
  v343(&v158[v150[15]], 1, 1, v339);
  *v158 = 0xD00000000000001CLL;
  *(v158 + 1) = v312;
  v166 = &v158[v150[5]];
  sub_1E487704C();
  v167 = &v158[v150[6]];
  sub_1E487701C();
  v310(v161, v318);
  *&v158[v150[7]] = 0;
  *&v158[v150[8]] = 0;
  *&v158[v150[9]] = v162;
  v168 = &v158[v150[10]];
  *v168 = 0;
  *(v168 + 1) = 0;
  v158[v150[12]] = 0;
  v158[v150[13]] = 0;
  v169 = &v158[v150[16]];
  *v169 = 0;
  *(v169 + 1) = 0;
  v158[v150[14]] = 0;
  v158[v150[17]] = 0;
  v158[v150[18]] = 0;
  v158[v150[19]] = 1;
  v344 = MEMORY[0x1E69E7CC0];
  sub_1E4858038(0, 1, 0);
  v170 = v344;
  v171 = v337;
  sub_1E47707EC(v158, v337);
  v172 = v294;
  sub_1E47707EC(v171, v294);
  v173 = v307;
  (v335)(v307, v336, v143);
  sub_1E47710AC(v171);
  v174 = (v173 + *(v165 + 20));
  *v174 = 0;
  v174[1] = 0;
  v343(v173, 0, 1, v165);
  sub_1E47A14B4(v173, v172 + v150[15]);
  v344 = v170;
  v176 = *(v170 + 2);
  v175 = *(v170 + 3);
  if (v176 >= v175 >> 1)
  {
    sub_1E4858038(v175 > 1, v176 + 1, 1);
    v170 = v344;
  }

  *(v170 + 2) = v176 + 1;
  v292 = v170;
  sub_1E4770850(v172, &v170[v340 + v176 * v341]);
  swift_setDeallocating();
  sub_1E47710AC(v158);
  swift_deallocClassInstance();
  v177 = v317;
  v178 = v323;
  v179 = v329;
  (v329)(v300, v317, v323);
  sub_1E4877A7C();
  v180 = v321;
  v179(v321, v177, v178);
  v181 = v320;
  sub_1E4806788(v320);
  v182 = v293;
  sub_1E48774BC();
  v183 = v316;
  v184 = v328;
  v328(v181, v316);
  v330(v180, v178);
  v185 = v332;
  result = v332(v182, 1, v183);
  if (result == 1)
  {
    goto LABEL_31;
  }

  v301(v299, v306);
  v186 = v289;
  (v324)(v289, v182, v183);
  v187 = v290;
  v188 = v300;
  sub_1E48774BC();
  v184(v186, v183);
  v189 = v188;
  v190 = v330;
  v330(v189, v323);
  result = v185(v187, 1, v183);
  v191 = v302;
  if (result == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  (v324)(v302, v187, v183);
  v192 = v321;
  v193 = v323;
  (v329)(v321, v305, v323);
  v194 = v288;
  sub_1E48774BC();
  v190(v192, v193);
  result = v332(v194, 1, v183);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v328(v191, v183);
  (v324)(v191, v194, v183);
  v300 = swift_allocObject();
  v195 = &v300[v340];
  v196 = v309[2];
  v309 += 2;
  v299 = v196;
  (v196)(v320, v191, v183);
  v197 = v297;
  sub_1E487703C();
  v198 = sub_1E487864C();
  v199 = v314;
  sub_1E487735C();
  sub_1E487733C();
  v311(v199, v319);
  v200 = v338;
  v201 = &v195[v338[11]];
  sub_1E487724C();

  v202 = v339;
  v343(&v195[v200[15]], 1, 1, v339);
  *v195 = 0xD00000000000001CLL;
  *(v195 + 1) = v312;
  v203 = &v195[v200[5]];
  sub_1E487704C();
  v204 = &v195[v200[6]];
  sub_1E487701C();
  v310(v197, v318);
  *&v195[v200[7]] = 0;
  *&v195[v200[8]] = 0;
  *&v195[v200[9]] = v198;
  v205 = &v195[v200[10]];
  *v205 = 0;
  *(v205 + 1) = 0;
  v195[v200[12]] = 0;
  v195[v200[13]] = 0;
  v206 = &v195[v200[16]];
  *v206 = 0;
  *(v206 + 1) = 0;
  v195[v200[14]] = 0;
  v195[v200[17]] = 0;
  v195[v200[18]] = 0;
  v195[v200[19]] = 1;
  v344 = MEMORY[0x1E69E7CC0];
  sub_1E4858038(0, 1, 0);
  v207 = v344;
  v208 = v337;
  sub_1E47707EC(v195, v337);
  v209 = v287;
  sub_1E47707EC(v208, v287);
  v210 = v307;
  (v335)(v307, v336, v143);
  sub_1E47710AC(v208);
  v211 = (v210 + *(v202 + 20));
  *v211 = 0;
  v211[1] = 0;
  v343(v210, 0, 1, v202);
  sub_1E47A14B4(v210, v209 + v200[15]);
  v344 = v207;
  v213 = *(v207 + 16);
  v212 = *(v207 + 24);
  if (v213 >= v212 >> 1)
  {
    sub_1E4858038(v212 > 1, v213 + 1, 1);
    v207 = v344;
  }

  *(v207 + 16) = v213 + 1;
  v298 = v207;
  sub_1E4770850(v209, v207 + v340 + v213 * v341);
  swift_setDeallocating();
  sub_1E47710AC(v195);
  swift_deallocClassInstance();
  v214 = v321;
  v215 = v323;
  v216 = v329;
  (v329)(v321, v317, v323);
  v217 = v286;
  sub_1E48774BC();
  v218 = v330;
  v330(v214, v215);
  v219 = v316;
  result = v332(v217, 1, v316);
  if (result == 1)
  {
    goto LABEL_34;
  }

  v220 = v295;
  v221 = v217;
  v222 = v324;
  (v324)(v295, v221, v219);
  v216(v214, v305, v215);
  v223 = v285;
  sub_1E48774BC();
  v218(v214, v215);
  result = v332(v223, 1, v219);
  if (result == 1)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v328(v220, v219);
  v222(v220, v223, v219);
  v305 = swift_allocObject();
  v224 = (v305 + v340);
  (v299)(v320, v220, v219);
  v225 = v297;
  sub_1E487703C();
  v226 = sub_1E48786BC();
  v227 = v314;
  sub_1E487735C();
  sub_1E487733C();
  v228 = v219;
  v311(v227, v319);
  v229 = v338;
  v230 = &v224[v338[11]];
  sub_1E487724C();

  v231 = v339;
  v343(&v224[v229[15]], 1, 1, v339);
  *v224 = 0xD00000000000001CLL;
  *(v224 + 1) = v312;
  v232 = &v224[v229[5]];
  sub_1E487704C();
  v233 = &v224[v229[6]];
  sub_1E487701C();
  v310(v225, v318);
  *&v224[v229[7]] = 0;
  *&v224[v229[8]] = 0;
  *&v224[v229[9]] = v226;
  v234 = &v224[v229[10]];
  *v234 = 0;
  *(v234 + 1) = 0;
  v224[v229[12]] = 0;
  v224[v229[13]] = 0;
  v235 = &v224[v229[16]];
  *v235 = 0;
  *(v235 + 1) = 0;
  v224[v229[14]] = 0;
  v224[v229[17]] = 0;
  v224[v229[18]] = 0;
  v224[v229[19]] = 1;
  v344 = MEMORY[0x1E69E7CC0];
  sub_1E4858038(0, 1, 0);
  v236 = v344;
  v237 = v337;
  sub_1E47707EC(v224, v337);
  v238 = v283;
  sub_1E47707EC(v237, v283);
  v239 = v307;
  (v335)(v307, v336, v143);
  sub_1E47710AC(v237);
  v240 = (v239 + *(v231 + 20));
  *v240 = 0;
  v240[1] = 0;
  v343(v239, 0, 1, v231);
  sub_1E47A14B4(v239, v238 + v229[15]);
  v344 = v236;
  v242 = *(v236 + 16);
  v241 = *(v236 + 24);
  if (v242 >= v241 >> 1)
  {
    sub_1E4858038(v241 > 1, v242 + 1, 1);
    v236 = v344;
  }

  *(v236 + 16) = v242 + 1;
  v339 = v236;
  sub_1E4770850(v238, v236 + v340 + v242 * v341);
  swift_setDeallocating();
  sub_1E47710AC(v224);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C438, &unk_1E487D628);
  v243 = type metadata accessor for DayEvents();
  v244 = *(*(v243 - 1) + 72);
  v245 = (*(*(v243 - 1) + 80) + 32) & ~*(*(v243 - 1) + 80);
  v246 = swift_allocObject();
  *(v246 + 16) = xmmword_1E48806A0;
  v341 = v246;
  v247 = v246 + v245;
  v248 = v282;
  sub_1E4877A7C();
  v249 = v320;
  sub_1E4806788(v320);
  sub_1E487745C();
  v250 = v328;
  v328(v249, v228);
  v301(v248, v306);
  *(v247 + v243[5]) = v139;
  v251 = MEMORY[0x1E69E7CC0];
  *(v247 + v243[6]) = MEMORY[0x1E69E7CC0];
  *(v247 + v243[7]) = 0;
  v342 = v247;
  v343 = v244;
  v252 = v244 + v247;
  sub_1E4806C28(v244 + v247);
  *&v252[v243[5]] = v292;
  *&v252[v243[6]] = v251;
  v252[v243[7]] = 0;
  v253 = v321;
  v254 = v317;
  v255 = v323;
  (v329)(v321, v317, v323);
  sub_1E4806C28(v249);
  v256 = v284;
  v257 = v315;
  sub_1E48774BC();
  v250(v249, v228);
  v330(v253, v255);
  result = v332(v256, 1, v228);
  if (result == 1)
  {
    goto LABEL_36;
  }

  v258 = v342 + 2 * v343;
  (v324)(v258, v256, v228);
  *(v258 + v243[5]) = v298;
  *(v258 + v243[6]) = MEMORY[0x1E69E7CC0];
  *(v258 + v243[7]) = 0;
  (v329)(v253, v254, v255);
  sub_1E4806C28(v249);
  v259 = v280;
  sub_1E48774BC();
  v328(v249, v228);
  v330(v253, v255);
  result = v332(v259, 1, v228);
  v260 = v281;
  if (result == 1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v261 = v342 + 3 * v343;
  (v324)(v261, v259, v228);
  *(v261 + v243[5]) = v339;
  *(v261 + v243[6]) = MEMORY[0x1E69E7CC0];
  *(v261 + v243[7]) = 0;
  (v329)(v253, v254, v255);
  sub_1E4806C28(v249);
  v262 = v279;
  sub_1E48774BC();
  v328(v249, v228);
  v330(v253, v255);
  result = v332(v262, 1, v228);
  if (result == 1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v263 = v257;
  v264 = v342 + 4 * v343;
  (v324)(v264, v262, v228);
  v265 = MEMORY[0x1E69E7CC0];
  *(v264 + v243[5]) = MEMORY[0x1E69E7CC0];
  *(v264 + v243[6]) = v265;
  *(v264 + v243[7]) = 0;
  (v329)(v253, v317, v255);
  sub_1E4806C28(v249);
  v266 = v277;
  sub_1E48774BC();
  v328(v249, v228);
  v330(v253, v255);
  result = v332(v266, 1, v228);
  v267 = v278;
  if (result == 1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v268 = v342 + 5 * v343;
  (v324)(v268, v266, v228);
  v269 = MEMORY[0x1E69E7CC0];
  *(v268 + v243[5]) = MEMORY[0x1E69E7CC0];
  *(v268 + v243[6]) = v269;
  *(v268 + v243[7]) = 0;
  (v329)(v253, v317, v255);
  sub_1E4806C28(v249);
  sub_1E48774BC();
  v328(v249, v228);
  v330(v253, v255);
  result = v332(v260, 1, v228);
  if (result == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v270 = v342 + 6 * v343;
  (v324)(v270, v260, v228);
  v271 = MEMORY[0x1E69E7CC0];
  *(v270 + v243[5]) = MEMORY[0x1E69E7CC0];
  *(v270 + v243[6]) = v271;
  *(v270 + v243[7]) = 0;
  (v329)(v253, v317, v255);
  sub_1E4806C28(v249);
  sub_1E48774BC();
  v272 = v249;
  v273 = v328;
  v328(v272, v228);
  v330(v253, v255);
  result = v332(v267, 1, v228);
  if (result != 1)
  {
    v274 = v342 - v343 + 8 * v343;
    (v324)(v274, v267, v228);
    v275 = MEMORY[0x1E69E7CC0];
    *(v274 + v243[5]) = MEMORY[0x1E69E7CC0];
    *(v274 + v243[6]) = v275;
    *(v274 + v243[7]) = 0;
    v273(v295, v228);
    v273(v302, v228);
    v301(v263, v306);
    return v341;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1E480D21C()
{
  v0 = sub_1E487736C();
  v50 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E487732C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = sub_1E487706C();
  v51 = *(v45 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BF20, &qword_1E487C190);
  v10 = (type metadata accessor for Event() - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v43 = 2 * v11;
  v13 = swift_allocObject();
  v44 = v13;
  *(v13 + 16) = xmmword_1E487AC40;
  v14 = (v13 + v12);
  sub_1E487731C();
  sub_1E487703C();
  v40 = sub_1E487868C();
  sub_1E487735C();
  sub_1E487733C();
  v42 = *(v1 + 8);
  v49 = v1 + 8;
  v42(v4, v0);
  v15 = &v14[v10[13]];
  sub_1E487724C();

  v16 = v10[17];
  v47 = type metadata accessor for Location();
  v17 = *(v47 - 8);
  v46 = *(v17 + 56);
  v48 = v17 + 56;
  v46(&v14[v16], 1, 1, v47);
  *v14 = 0x3120746E657645;
  *(v14 + 1) = 0xE700000000000000;
  v18 = &v14[v10[7]];
  sub_1E487704C();
  v19 = &v14[v10[8]];
  sub_1E487701C();
  v41 = *(v51 + 8);
  v51 += 8;
  v20 = v45;
  v41(v9, v45);
  *&v14[v10[9]] = 0;
  *&v14[v10[10]] = 0;
  *&v14[v10[11]] = v40;
  v21 = &v14[v10[12]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v14[v10[14]] = 1;
  v14[v10[15]] = 0;
  v22 = &v14[v10[18]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v14[v10[16]] = 0;
  v14[v10[19]] = 0;
  v14[v10[20]] = 0;
  v14[v10[21]] = 1;
  v23 = &v14[v11];
  sub_1E487731C();
  sub_1E487703C();
  v40 = sub_1E487868C();
  sub_1E487735C();
  sub_1E487733C();
  v24 = v42;
  v42(v4, v50);
  v25 = &v14[v11 + v10[13]];
  sub_1E487724C();

  v46(&v14[v11 + v10[17]], 1, 1, v47);
  *v23 = 0x3220746E657645;
  *(v23 + 1) = 0xE700000000000000;
  v26 = &v14[v11 + v10[7]];
  sub_1E487704C();
  v27 = &v14[v11 + v10[8]];
  sub_1E487701C();
  v28 = v20;
  v29 = v41;
  v41(v9, v28);
  *&v23[v10[9]] = 0;
  *&v23[v10[10]] = 0;
  *&v23[v10[11]] = v40;
  v30 = &v14[v11 + v10[12]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v23[v10[14]] = 1;
  v23[v10[15]] = 0;
  v31 = &v14[v11 + v10[18]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v23[v10[16]] = 0;
  v23[v10[19]] = 0;
  v23[v10[20]] = 0;
  v23[v10[21]] = 1;
  v32 = &v14[v43];
  sub_1E487731C();
  sub_1E487703C();
  v33 = sub_1E487863C();
  sub_1E487735C();
  sub_1E487733C();
  v24(v4, v50);
  v34 = &v32[v10[13]];
  sub_1E487724C();

  v46(&v32[v10[17]], 1, 1, v47);
  *v32 = 0x3320746E657645;
  *(v32 + 1) = 0xE700000000000000;
  v35 = &v32[v10[7]];
  sub_1E487704C();
  v36 = &v32[v10[8]];
  sub_1E487701C();
  v29(v9, v45);
  *&v32[v10[9]] = 0;
  *&v32[v10[10]] = 0;
  *&v32[v10[11]] = v33;
  v37 = &v32[v10[12]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v32[v10[14]] = 1;
  v32[v10[15]] = 0;
  v38 = &v32[v10[18]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v32[v10[16]] = 0;
  v32[v10[19]] = 0;
  v32[v10[20]] = 0;
  v32[v10[21]] = 1;
  return v44;
}

uint64_t type metadata accessor for LargeListContentView()
{
  result = qword_1EE2B2AA8;
  if (!qword_1EE2B2AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E480D8E8()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E47830AC(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E47830AC(319, &qword_1EE2B1678, MEMORY[0x1E697F6A8], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E47830AC(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E480DA48()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for LargeListContentView() + 28));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1E480DB98@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D288, &qword_1E4880738);
  v4 = a1 + *(v3 + 36);
  v5 = sub_1E487732C();
  (*(*(v5 - 8) + 16))(v4, v1, v5);
  v6 = *(v1 + *(type metadata accessor for LargeListContentView() + 20));
  KeyPath = swift_getKeyPath();
  v8 = type metadata accessor for WideMultidayEventsView();
  *(v4 + v8[5]) = v6;
  *(v4 + v8[6]) = 0x4030000000000000;
  v9 = v4 + v8[7];
  *v9 = KeyPath;
  *(v9 + 8) = 0;
  v10 = v8[8];

  sub_1E48783CC();
  LOBYTE(v6) = sub_1E487813C();
  v11 = *(sub_1E480DA48() + 16);

  sub_1E4877B0C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D290, &qword_1E4880768) + 36);
  *v20 = v6;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  v21 = *MEMORY[0x1E697F638];
  v22 = sub_1E4877F9C();
  v23 = *(v22 - 8);
  (*(v23 + 104))(a1, v21, v22);
  (*(v23 + 56))(a1, 0, 1, v22);
  *(a1 + *(v3 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1E480DDB4()
{
  result = qword_1ECF7D298;
  if (!qword_1ECF7D298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D288, &qword_1E4880738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D298);
  }

  return result;
}

double sub_1E480DE18@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = v1[1];
  if (v9)
  {
    v10 = *v1;
  }

  if ((v9 & 2) != 0)
  {
    v11 = *v1;
  }

  sub_1E487806C();
  (*(v4 + 104))(v7, *MEMORY[0x1E697F470], v3);
  sub_1E487832C();
  result = *&v15;
  v13 = v16;
  *a1 = v15;
  *(a1 + 16) = v13;
  *(a1 + 32) = v17;
  return result;
}

void (*sub_1E480DF94(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E4877AEC();
  return sub_1E4782620;
}

uint64_t sub_1E480E01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E480E68C();

  return MEMORY[0x1EEDE4448](a1, a2, a3, v6);
}

uint64_t sub_1E480E080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E480E68C();

  return MEMORY[0x1EEDE43E8](a1, a2, a3, v6);
}

uint64_t sub_1E480E0E4(uint64_t a1)
{
  v2 = sub_1E480E68C();

  return MEMORY[0x1EEDE4408](a1, v2);
}

uint64_t sub_1E480E13C()
{
  v1 = *v0;
  sub_1E487914C();
  MEMORY[0x1E6919800](v1);
  return sub_1E487917C();
}

uint64_t sub_1E480E1B0()
{
  v1 = *v0;
  sub_1E487914C();
  MEMORY[0x1E6919800](v1);
  return sub_1E487917C();
}

BOOL sub_1E480E238(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1E480E268@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1E480E294@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1E480E390@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1E480E52C(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1E480E3D0()
{
  result = qword_1ECF7D2A0;
  if (!qword_1ECF7D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D2A0);
  }

  return result;
}

unint64_t sub_1E480E428()
{
  result = qword_1ECF7D2A8;
  if (!qword_1ECF7D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D2A8);
  }

  return result;
}

unint64_t sub_1E480E480()
{
  result = qword_1ECF7D2B0;
  if (!qword_1ECF7D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D2B0);
  }

  return result;
}

unint64_t sub_1E480E4D8()
{
  result = qword_1ECF7D2B8;
  if (!qword_1ECF7D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D2B8);
  }

  return result;
}

uint64_t sub_1E480E52C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1E480E578()
{
  result = qword_1ECF7D2C0;
  if (!qword_1ECF7D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D2C8, &qword_1E48809C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D2C0);
  }

  return result;
}

unint64_t sub_1E480E5E0()
{
  result = qword_1EE2B3D20;
  if (!qword_1EE2B3D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B3D20);
  }

  return result;
}

unint64_t sub_1E480E638()
{
  result = qword_1EE2B3D18;
  if (!qword_1EE2B3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B3D18);
  }

  return result;
}

unint64_t sub_1E480E68C()
{
  result = qword_1ECF7D2D0;
  if (!qword_1ECF7D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7D2D0);
  }

  return result;
}

uint64_t type metadata accessor for SmallListContentView()
{
  result = qword_1EE2B2830;
  if (!qword_1EE2B2830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E480E75C()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E480E914(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E480E914(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E480E914(319, &qword_1EE2B1678, MEMORY[0x1E697F6A8], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          sub_1E478305C();
          if (v4 <= 0x3F)
          {
            sub_1E480E914(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics, MEMORY[0x1E697DCC8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E480E914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E480E994@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SmallListContentView();
  sub_1E4773850(v1 + *(v12 + 36), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E480EB9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SmallListContentView();
  sub_1E4773850(v1 + *(v12 + 40), v11, &qword_1ECF7BC10, &unk_1E487B660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877F9C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E480EDA4()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for SmallListContentView() + 44);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1E480EEFC()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for SmallListContentView() + 48);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1E480F054()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for SmallListContentView() + 52));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1E480F1A4@<X0>(uint64_t a1@<X8>)
{
  v127 = a1;
  v124 = sub_1E487739C();
  v119 = *(v124 - 1);
  v2 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v114 = &v111[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFB0, &qword_1E487FBA8);
  v4 = *(*(v120 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v120);
  v115 = &v111[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v118 = &v111[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDD8, &qword_1E487F920);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v113 = &v111[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v117 = &v111[-v13];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v116 = &v111[-v15];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v128 = &v111[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v121 = &v111[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v111[-v20];
  v122 = sub_1E487740C();
  v21 = *(v122 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v24 = &v111[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1E487744C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v111[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_1E4877F9C();
  v125 = *(v30 - 8);
  v126 = v30;
  v31 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v111[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = *(v1 + *(type metadata accessor for SmallListContentView() + 24));
  v35 = sub_1E480EDA4();
  v123 = v33;
  sub_1E480EB9C(v33);
  sub_1E48773EC();
  sub_1E487741C();
  v36 = v29;
  v37 = v129;
  (*(v26 + 8))(v36, v25);
  sub_1E48773FC();
  (*(v21 + 8))(v24, v122);
  v122 = v1;
  v38 = sub_1E480F054();
  if (v34 != 1)
  {
    if (v35)
    {
      v45 = *(v38 + 16);
    }

    v39 = v124;
    v40 = v128;
    if (_AXSPrefersHorizontalTextLayout())
    {
      goto LABEL_5;
    }

LABEL_10:
    v46 = v37;
    v47 = v121;
    sub_1E4773850(v46, v121, &qword_1ECF7CDD8, &qword_1E487F920);
    sub_1E487738C();
    v48 = v119;
    v124 = *(v119 + 56);
    (v124)(v40, 0, 1, v39);
    v49 = *(v120 + 48);
    v50 = v118;
    sub_1E4773850(v40, v118, &qword_1ECF7CDD8, &qword_1E487F920);
    sub_1E4773850(v47, &v50[v49], &qword_1ECF7CDD8, &qword_1E487F920);
    v51 = *(v48 + 48);
    if (v51(v50, 1, v39) == 1)
    {
      sub_1E47738B8(v40, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v51(&v50[v49], 1, v39) == 1)
      {

        sub_1E47738B8(v121, &qword_1ECF7CDD8, &qword_1E487F920);
        sub_1E47738B8(v129, &qword_1ECF7CDD8, &qword_1E487F920);
        v43 = v125;
        v42 = v126;
        (*(v125 + 8))(v123, v126);
        sub_1E47738B8(v50, &qword_1ECF7CDD8, &qword_1E487F920);
        goto LABEL_25;
      }
    }

    else
    {
      v52 = v116;
      sub_1E4773850(v50, v116, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v51(&v50[v49], 1, v39) != 1)
      {
        v62 = v114;
        (*(v48 + 32))(v114, &v50[v49], v39);
        sub_1E4810DAC(&qword_1EE2B4650, MEMORY[0x1E6969610]);
        v112 = sub_1E4878AFC();
        v63 = *(v48 + 8);
        v63(v62, v39);
        sub_1E47738B8(v128, &qword_1ECF7CDD8, &qword_1E487F920);
        v63(v116, v39);
        sub_1E47738B8(v50, &qword_1ECF7CDD8, &qword_1E487F920);
        if (v112)
        {

          sub_1E47738B8(v121, &qword_1ECF7CDD8, &qword_1E487F920);
          sub_1E47738B8(v129, &qword_1ECF7CDD8, &qword_1E487F920);
          v43 = v125;
          v42 = v126;
          (*(v125 + 8))(v123, v126);
          goto LABEL_25;
        }

LABEL_16:
        v53 = v117;
        sub_1E487738C();
        (v124)(v53, 0, 1, v39);
        v54 = *(v120 + 48);
        v55 = v115;
        sub_1E4773850(v53, v115, &qword_1ECF7CDD8, &qword_1E487F920);
        sub_1E4810D3C(v121, &v55[v54]);
        if (v51(v55, 1, v39) == 1)
        {

          sub_1E47738B8(v53, &qword_1ECF7CDD8, &qword_1E487F920);
          sub_1E47738B8(v129, &qword_1ECF7CDD8, &qword_1E487F920);
          v43 = v125;
          v42 = v126;
          (*(v125 + 8))(v123, v126);
          if (v51(&v55[v54], 1, v39) == 1)
          {
            sub_1E47738B8(v55, &qword_1ECF7CDD8, &qword_1E487F920);
            goto LABEL_25;
          }
        }

        else
        {
          v56 = v113;
          sub_1E4773850(v55, v113, &qword_1ECF7CDD8, &qword_1E487F920);
          v57 = v51(&v55[v54], 1, v39);
          v58 = v39;
          v59 = v119;
          v60 = (v119 + 8);
          if (v57 != 1)
          {
            v64 = &v55[v54];
            v65 = v114;
            (*(v119 + 32))(v114, v64, v58);
            sub_1E4810DAC(&qword_1EE2B4650, MEMORY[0x1E6969610]);
            v66 = sub_1E4878AFC();

            v67 = *(v59 + 8);
            v67(v65, v58);
            sub_1E47738B8(v117, &qword_1ECF7CDD8, &qword_1E487F920);
            sub_1E47738B8(v129, &qword_1ECF7CDD8, &qword_1E487F920);
            v43 = v125;
            v68 = v56;
            v42 = v126;
            (*(v125 + 8))(v123, v126);
            v67(v68, v58);
            sub_1E47738B8(v55, &qword_1ECF7CDD8, &qword_1E487F920);
            if ((v66 & 1) == 0)
            {
              goto LABEL_6;
            }

LABEL_25:
            v44 = 0x4008000000000000;
            goto LABEL_26;
          }

          sub_1E47738B8(v117, &qword_1ECF7CDD8, &qword_1E487F920);
          sub_1E47738B8(v129, &qword_1ECF7CDD8, &qword_1E487F920);
          v43 = v125;
          v61 = v56;
          v42 = v126;
          (*(v125 + 8))(v123, v126);
          (*v60)(v61, v58);
        }

        sub_1E47738B8(v55, &qword_1ECF7CFB0, &qword_1E487FBA8);
        goto LABEL_6;
      }

      sub_1E47738B8(v128, &qword_1ECF7CDD8, &qword_1E487F920);
      (*(v48 + 8))(v52, v39);
    }

    sub_1E47738B8(v50, &qword_1ECF7CFB0, &qword_1E487FBA8);
    goto LABEL_16;
  }

  v39 = v124;
  v40 = v128;
  if (v35)
  {
    v41 = *(v38 + 16);
  }

  if (!_AXSPrefersHorizontalTextLayout())
  {
    goto LABEL_10;
  }

LABEL_5:

  sub_1E47738B8(v37, &qword_1ECF7CDD8, &qword_1E487F920);
  v43 = v125;
  v42 = v126;
  (*(v125 + 8))(v123, v126);
LABEL_6:
  v44 = 0;
LABEL_26:
  v69 = sub_1E4877FBC();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D2E8, &qword_1E4880B40);
  v71 = v127;
  v72 = v127 + *(v70 + 36);
  *v72 = v69;
  *(v72 + 8) = v44;
  *(v72 + 16) = 0;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D2F0, &qword_1E4880B48);
  sub_1E480FEF4(v122, v72 + *(v73 + 44));
  LOBYTE(v69) = sub_1E487815C();
  sub_1E4877B0C();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D2F8, &qword_1E4880B50) + 36);
  *v82 = v69;
  *(v82 + 8) = v75;
  *(v82 + 16) = v77;
  *(v82 + 24) = v79;
  *(v82 + 32) = v81;
  *(v82 + 40) = 0;
  LOBYTE(v69) = sub_1E487816C();
  sub_1E4877B0C();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D300, &qword_1E4880B58) + 36);
  *v91 = v69;
  *(v91 + 8) = v84;
  *(v91 + 16) = v86;
  *(v91 + 24) = v88;
  *(v91 + 32) = v90;
  *(v91 + 40) = 0;
  LOBYTE(v69) = sub_1E487817C();
  sub_1E4877B0C();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v100 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D308, &qword_1E4880B60) + 36);
  *v100 = v69;
  *(v100 + 8) = v93;
  *(v100 + 16) = v95;
  *(v100 + 24) = v97;
  *(v100 + 32) = v99;
  *(v100 + 40) = 0;
  LOBYTE(v69) = sub_1E487818C();
  sub_1E4877B0C();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v109 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D310, &qword_1E4880B68) + 36);
  *v109 = v69;
  *(v109 + 8) = v102;
  *(v109 + 16) = v104;
  *(v109 + 24) = v106;
  *(v109 + 32) = v108;
  *(v109 + 40) = 0;
  (*(v43 + 104))(v71, *MEMORY[0x1E697F638], v42);
  (*(v43 + 56))(v71, 0, 1, v42);
  *(v71 + *(v70 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E480FEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v3 = type metadata accessor for NarrowMultidayEventsView();
  v4 = *(*(v3 - 1) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D318, &qword_1E4880BA8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - v12;
  v14 = type metadata accessor for IconicDateHeader();
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D320, &qword_1E4880BB0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v58 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v56 = &v54 - v22;
  sub_1E4878D2C();
  v57 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = v59;
  if (sub_1E480EDA4())
  {
    v24 = sub_1E487732C();
    (*(*(v24 - 8) + 16))(v17, v23, v24);
    *&v17[v14[5]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
    swift_storeEnumTagMultiPayload();
    *&v17[v14[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v26 = &v17[v14[7]];
    *v26 = KeyPath;
    v26[8] = 0;
    v55 = v7;
    v27 = v14[8];
    v60 = 0x4038000000000000;
    sub_1E4773794();
    sub_1E4877B6C();
    v28 = v14[9];
    v60 = 0x403F000000000000;
    sub_1E4877B6C();
    v29 = v14[10];
    v60 = 0x4046000000000000;
    sub_1E4877B6C();
    v30 = v14[11];
    v60 = 0x4024000000000000;
    sub_1E4877B6C();
    v31 = &v17[v14[12]];
    strcpy(v31, "EEEE, MMMM dd");
    *(v31 + 7) = -4864;
    sub_1E4810DF4(v17, v13, type metadata accessor for IconicDateHeader);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D338, &qword_1E4880C88);
    sub_1E4810DAC(qword_1EE2B3848, type metadata accessor for IconicDateHeader);
    sub_1E4773680(&qword_1EE2B0F98, &qword_1ECF7D338, &qword_1E4880C88);
    v32 = v56;
    v7 = v55;
    v23 = v59;
    sub_1E487803C();
    sub_1E4810E5C(v17, type metadata accessor for IconicDateHeader);
  }

  else
  {
    if ((sub_1E480EEFC() & 1) == 0)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D328, &qword_1E4880BB8);
      v32 = v56;
      (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
      goto LABEL_9;
    }

    v33 = sub_1E4877F6C();
    sub_1E4810754(&v60);
    v34 = v60;
    v35 = v61;
    v36 = v63;
    v37 = v62;
    LOBYTE(v60) = 1;
    v64 = v61;
    *v13 = v33;
    *(v13 + 1) = 0;
    v13[16] = 1;
    *(v13 + 3) = v34;
    v13[32] = v35;
    *(v13 + 40) = v37;
    *(v13 + 7) = v36;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D338, &qword_1E4880C88);
    sub_1E4810DAC(qword_1EE2B3848, type metadata accessor for IconicDateHeader);
    sub_1E4773680(&qword_1EE2B0F98, &qword_1ECF7D338, &qword_1E4880C88);
    v32 = v56;
    v23 = v59;
    sub_1E487803C();
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D328, &qword_1E4880BB8);
  (*(*(v38 - 8) + 56))(v32, 0, 1, v38);
LABEL_9:
  v40 = sub_1E487732C();
  (*(*(v40 - 8) + 16))(v9, v23, v40);
  v41 = type metadata accessor for SmallListContentView();
  v42 = *(v23 + v41[5]);
  v43 = v23;
  v44 = *(v23 + v41[7]);
  v45 = *(v43 + v41[8]);
  v46 = swift_getKeyPath();
  *&v9[v3[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  *&v9[v3[11]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E0, &qword_1E487A6A0);
  swift_storeEnumTagMultiPayload();
  v47 = swift_getKeyPath();
  *&v9[v3[5]] = v42;
  *&v9[v3[6]] = 0x4010000000000000;
  v9[v3[7]] = v44;
  v9[v3[8]] = v45;
  v48 = &v9[v3[9]];
  *v48 = v46;
  v48[8] = 0;
  v49 = &v9[v3[12]];
  *v49 = v47;
  v49[8] = 0;
  *&v9[v3[13]] = 0x4020000000000000;
  v50 = v3[14];

  sub_1E48783CC();
  v51 = v58;
  sub_1E4773850(v32, v58, &qword_1ECF7D320, &qword_1E4880BB0);
  sub_1E4810DF4(v9, v7, type metadata accessor for NarrowMultidayEventsView);
  sub_1E4773850(v51, a2, &qword_1ECF7D320, &qword_1E4880BB0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D330, &qword_1E4880C80);
  sub_1E4810DF4(v7, a2 + *(v52 + 48), type metadata accessor for NarrowMultidayEventsView);
  sub_1E4810E5C(v9, type metadata accessor for NarrowMultidayEventsView);
  sub_1E47738B8(v32, &qword_1ECF7D320, &qword_1E4880BB0);
  sub_1E4810E5C(v7, type metadata accessor for NarrowMultidayEventsView);
  sub_1E47738B8(v51, &qword_1ECF7D320, &qword_1E4880BB0);
}

uint64_t sub_1E4810754@<X0>(uint64_t a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1E487874C();
  v3 = sub_1E48786BC();
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v3;
}

uint64_t sub_1E4810830@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v31 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D2D8, &qword_1E4880B30);
  v32 = *(v35 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v31 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D2E0, &qword_1E4880B38);
  v7 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v31 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D2E8, &qword_1E4880B40);
  v10 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v12 = &v31 - v11;
  v13 = sub_1E4877CCC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  sub_1E480E994(&v31 - v19);
  sub_1E4877CAC();
  sub_1E4810DAC(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v21 = sub_1E4878EAC();
  v22 = *(v14 + 8);
  v22(v18, v13);
  v22(v20, v13);
  sub_1E480F1A4(v12);
  if (v21)
  {
    sub_1E4773850(v12, v9, &qword_1ECF7D2E8, &qword_1E4880B40);
    swift_storeEnumTagMultiPayload();
    v23 = sub_1E4773680(qword_1EE2B2200, &qword_1ECF7D2E8, &qword_1E4880B40);
    v37 = v34;
    v38 = v23;
    swift_getOpaqueTypeConformance2();
    sub_1E487803C();
    return sub_1E47738B8(v12, &qword_1ECF7D2E8, &qword_1E4880B40);
  }

  else
  {
    sub_1E4877A6C();
    v25 = sub_1E487725C();
    (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
    v26 = sub_1E4773680(qword_1EE2B2200, &qword_1ECF7D2E8, &qword_1E4880B40);
    v27 = v31;
    v28 = v34;
    sub_1E48784BC();
    sub_1E47738B8(v4, &unk_1ECF7B688, &qword_1E487C160);
    sub_1E47738B8(v12, &qword_1ECF7D2E8, &qword_1E4880B40);
    v29 = v32;
    v30 = v35;
    (*(v32 + 16))(v9, v27, v35);
    swift_storeEnumTagMultiPayload();
    v37 = v28;
    v38 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1E487803C();
    return (*(v29 + 8))(v27, v30);
  }
}

uint64_t sub_1E4810D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDD8, &qword_1E487F920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4810DAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4810DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4810E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4810EBC()
{
  result = qword_1EE2B1238;
  if (!qword_1EE2B1238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D340, &qword_1E4880D58);
    sub_1E4773680(qword_1EE2B2200, &qword_1ECF7D2E8, &qword_1E4880B40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D2E8, &qword_1E4880B40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1238);
  }

  return result;
}

void sub_1E4810FF8()
{
  sub_1E487732C();
  if (v0 <= 0x3F)
  {
    sub_1E481115C(319, &qword_1EE2B0DD0, type metadata accessor for DayEvents, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E481115C(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
      if (v2 <= 0x3F)
      {
        sub_1E481115C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E481115C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E48111DC(uint64_t a1)
{
  v3 = v1;
  sub_1E487914C();
  sub_1E487736C();
  sub_1E4816A68(&qword_1EE2B4658, MEMORY[0x1E69695A8]);
  sub_1E4878AAC();
  v4 = *(a1 + 20);
  sub_1E487719C();
  sub_1E4816A68(&qword_1EE2B4678, MEMORY[0x1E6968848]);
  sub_1E4878AAC();
  v5 = *(v3 + *(a1 + 24));
  sub_1E487916C();
  return sub_1E487917C();
}

uint64_t sub_1E48112DC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1E487736C();
  sub_1E4816A68(&qword_1EE2B4658, MEMORY[0x1E69695A8]);
  sub_1E4878AAC();
  v5 = *(a2 + 20);
  sub_1E487719C();
  sub_1E4816A68(&qword_1EE2B4678, MEMORY[0x1E6968848]);
  sub_1E4878AAC();
  v6 = *(v4 + *(a2 + 24));
  return sub_1E487916C();
}

uint64_t sub_1E48113CC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1E487914C();
  sub_1E487736C();
  sub_1E4816A68(&qword_1EE2B4658, MEMORY[0x1E69695A8]);
  sub_1E4878AAC();
  v5 = *(a2 + 20);
  sub_1E487719C();
  sub_1E4816A68(&qword_1EE2B4678, MEMORY[0x1E6968848]);
  sub_1E4878AAC();
  v6 = *(v4 + *(a2 + 24));
  sub_1E487916C();
  return sub_1E487917C();
}

uint64_t sub_1E48114C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E487736C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E4811530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1E487734C() & 1) != 0 && (v6 = *(a3 + 20), (sub_1E487715C()))
  {
    v7 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1E481159C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v360 = a6;
  LODWORD(v344) = a5;
  v368 = a4;
  v363 = a7;
  v348 = sub_1E487713C();
  v10 = *(*(v348 - 8) + 64);
  MEMORY[0x1EEE9AC00](v348);
  v349 = &v322 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4878B8C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v358 = &v322 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = sub_1E487714C();
  v346 = *(v357 - 8);
  v15 = *(v346 + 64);
  MEMORY[0x1EEE9AC00](v357);
  v356 = &v322 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E4878B6C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v347 = &v322 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v334 = &v322 - v22;
  v333 = type metadata accessor for Location();
  v332 = *(v333 - 8);
  v23 = *(v332 + 64);
  MEMORY[0x1EEE9AC00](v333);
  v335 = &v322 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = type metadata accessor for Event();
  v375 = *(v369 - 8);
  v25 = *(v375 + 64);
  v26 = MEMORY[0x1EEE9AC00](v369);
  v343 = &v322 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v379 = (&v322 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v322 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v354 = &v322 - v33;
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v377 = *(EventContentView - 8);
  v378 = EventContentView;
  v35 = *(v377 + 64);
  v36 = MEMORY[0x1EEE9AC00](EventContentView);
  v327 = &v322 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v329 = &v322 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v323 = &v322 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v325 = &v322 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v326 = &v322 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v328 = &v322 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v322 = &v322 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v324 = &v322 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v322 - v52;
  v54 = sub_1E487720C();
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v56 - 8);
  v364 = &v322 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v355 = (&v322 - v60);
  v353 = sub_1E487757C();
  v352 = *(v353 - 8);
  v61 = *(v352 + 64);
  MEMORY[0x1EEE9AC00](v353);
  v351 = &v322 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1E487732C();
  v370 = *(v63 - 8);
  v371 = v63;
  v64 = *(v370 + 64);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v350 = &v322 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v365 = &v322 - v67;
  v367 = sub_1E487719C();
  v366 = *(v367 - 8);
  v68 = *(v366 + 64);
  v69 = MEMORY[0x1EEE9AC00](v367);
  v339 = &v322 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v341 = &v322 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v331 = &v322 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v337 = &v322 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v338 = &v322 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v340 = &v322 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v342 = &v322 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v330 = &v322 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v336 = &v322 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v345 = &v322 - v88;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v322 - v89;
  v91 = type metadata accessor for DayEvents();
  v92 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v322 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Utils();
  v362 = a1;
  v95 = a1;
  v96 = a3;
  v97 = sub_1E485E54C(v94, v95, a2, a3);
  v99 = v98;

  v100 = *(v97 + 16);
  v376 = v97;
  v374 = v100;
  v361 = v96;
  v372 = v90;
  v359 = v94;
  if (v100)
  {
    v373 = ((*(v375 + 80) + 32) & ~*(v375 + 80));
    v101 = v373 + v97;
    v102 = v370;
    v103 = v350;
    v104 = v371;
    (*(v370 + 16))(v350, v373 + v97 + *(v369 + 20), v371);
    v105 = v365;
    (*(v102 + 32))(v365, v103, v104);
    v106 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v107 = v96;
    v108 = sub_1E487748C();
    [v106 setCalendar_];

    v109 = v351;
    sub_1E487750C();
    v110 = sub_1E487756C();
    (*(v352 + 8))(v109, v353);
    v111 = v106;
    [v106 setTimeZone_];

    v112 = v355;
    sub_1E48774EC();
    v113 = sub_1E487744C();
    v114 = *(v113 - 8);
    v115 = 0;
    if ((v114[6])(v112, 1, v113) != 1)
    {
      v115 = sub_1E48773DC();
      v114[1](v112, v113);
    }

    v353 = v113;
    v355 = v114;
    [v111 setLocale_];

    v351 = sub_1E4816EC4(v111, v107, v105);
    v116 = objc_opt_self();
    v117 = sub_1E48772BC();
    v118 = sub_1E487748C();
    v119 = [v116 timeAttributedTextWithDate:v117 calendar:v118 font:0 options:0];

    v120 = [v119 string];
    sub_1E4878BDC();

    sub_1E48771FC();
    v121 = v372;
    sub_1E48771AC();
    v122 = v368;
    aBlock[0] = v368;
    sub_1E47C4180();

    sub_1E48771BC();
    v352 = *MEMORY[0x1E6993360];
    v123 = [v119 length];
    v124 = swift_allocObject();
    *(v124 + 16) = v121;
    *(v124 + 24) = v122;
    v125 = swift_allocObject();
    *(v125 + 16) = sub_1E47C41D4;
    *(v125 + 24) = v124;
    aBlock[4] = sub_1E47C41DC;
    aBlock[5] = v125;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E48373C0;
    aBlock[3] = &block_descriptor_1;
    v126 = _Block_copy(aBlock);

    [v119 enumerateAttribute:v352 inRange:0 options:v123 usingBlock:{0, v126}];

    _Block_release(v126);
    (*(v370 + 8))(v365, v371);
    LOBYTE(v119) = swift_isEscapingClosureAtFileLocation();

    if ((v119 & 1) == 0)
    {
      v127 = v374;
      if (v374 == 1)
      {
        v128 = v369;
        if (*(v376 + 16))
        {
          sub_1E4816B30(v101, v354, type metadata accessor for Event);
          sub_1E47CC708();
          v111 = v345;
          if (v344)
          {
            v129 = v334;
            sub_1E4773850(v354 + *(v128 + 60), v334, &qword_1ECF7C048, &qword_1E487C5F0);
            if ((*(v332 + 48))(v129, 1, v333) != 1)
            {
              sub_1E4817260(v129, v335, type metadata accessor for Location);
              sub_1E4878B5C();
              sub_1E4878B4C();
              aBlock[0] = MEMORY[0x1E69E7CC0];
              v379 = sub_1E4816A68(&qword_1EE2B4680, MEMORY[0x1E69686F0]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
              sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78);
              v231 = v356;
              v232 = v357;
              sub_1E4878ECC();
              sub_1E4878B1C();
              v233 = *(v346 + 8);
              v233(v231, v232);
              sub_1E4878B4C();
              v234 = v335;
              sub_1E4878B3C();

              sub_1E4878B4C();
              aBlock[0] = MEMORY[0x1E69E7CC0];
              sub_1E4878ECC();
              sub_1E4878B1C();
              v233(v231, v232);
              sub_1E4878B4C();
              sub_1E4878B7C();
              if (qword_1EE2B4848 != -1)
              {
                swift_once();
              }

              v235 = qword_1EE2BAF40;
              v355[7](v364, 1, 1, v353);
              aBlock[0] = MEMORY[0x1E69E7CC0];
              sub_1E4816A68(&qword_1EE2B4688, MEMORY[0x1E69686B0]);
              v236 = v235;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
              sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80);
              sub_1E4878ECC();
              v237 = v345;
              sub_1E487717C();
              v238 = v234;
              v111 = v237;
              sub_1E4816AD0(v238, type metadata accessor for Location);
              goto LABEL_50;
            }

            sub_1E47738B8(v129, &qword_1ECF7C048, &qword_1E487C5F0);
          }

          sub_1E4878B5C();
          sub_1E4878B4C();
          v101 = MEMORY[0x1E69E7CC0];
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1E4816A68(&qword_1EE2B4680, MEMORY[0x1E69686F0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
          sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78);
          v130 = v356;
          v131 = v357;
          sub_1E4878ECC();
          sub_1E4878B1C();
          (*(v346 + 8))(v130, v131);
          sub_1E4878B4C();
          sub_1E4878B3C();

          sub_1E4878B4C();
          sub_1E4878B7C();
          if (qword_1EE2B4848 == -1)
          {
LABEL_11:
            v132 = qword_1EE2BAF40;
            v355[7](v364, 1, 1, v353);
            aBlock[0] = v101;
            sub_1E4816A68(&qword_1EE2B4688, MEMORY[0x1E69686B0]);
            v133 = v132;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
            sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80);
            sub_1E4878ECC();
            sub_1E487717C();
LABEL_50:
            v225 = v363;
            v226 = v362;
            v227 = v360;
            v229 = v366;
            v230 = v371;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3A0, &unk_1E4880E90);
            v239 = *(v377 + 72);
            v240 = (*(v377 + 80) + 32) & ~*(v377 + 80);
            v137 = swift_allocObject();
            *(v137 + 16) = xmmword_1E487A7E0;
            v241 = v137 + v240;
            v242 = v378;
            v243 = v367;
            (*(v229 + 16))(v241 + *(v378 + 20), v111, v367);
            sub_1E487735C();
            *(v241 + *(v242 + 24)) = 1;
            v244 = v111;
            v228 = v243;
            (*(v229 + 8))(v244, v243);
            LODWORD(v241) = *(v354 + *(v369 + 56));
            sub_1E4816AD0(v354, type metadata accessor for Event);
            v191 = (v241 - 3) < 2;
            goto LABEL_73;
          }

LABEL_78:
          swift_once();
          goto LABEL_11;
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v365 = (v374 - 1);
      v145 = 0;
      v146 = MEMORY[0x1E69E7CC0];
      v147 = v369;
      v149 = v375;
      v148 = v376;
      do
      {
        if (v145 >= *(v148 + 16))
        {
          __break(1u);
          goto LABEL_75;
        }

        v150 = *(v149 + 72);
        sub_1E4816B30(v101 + v150 * v145, v32, type metadata accessor for Event);
        if ((v32[*(v147 + 56)] & 0xFE) == 6)
        {
          sub_1E4816AD0(v32, type metadata accessor for Event);
        }

        else
        {
          sub_1E4817260(v32, v379, type metadata accessor for Event);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v146;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E4858038(0, *(v146 + 16) + 1, 1);
            v146 = aBlock[0];
          }

          v153 = *(v146 + 16);
          v152 = *(v146 + 24);
          if (v153 >= v152 >> 1)
          {
            sub_1E4858038(v152 > 1, v153 + 1, 1);
            v146 = aBlock[0];
          }

          *(v146 + 16) = v153 + 1;
          sub_1E4817260(v379, v373 + v146 + v153 * v150, type metadata accessor for Event);
          v149 = v375;
          v148 = v376;
          v127 = v374;
        }

        ++v145;
      }

      while (v127 != v145);
      v154 = *(v146 + 16);

      v379 = (v346 + 8);
      if (v351 == 1)
      {
        v155 = v357;
        v156 = v356;
        v157 = MEMORY[0x1E69E7CC0];
        if (v154)
        {
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = v127;
          sub_1E4878B2C();
          sub_1E4878B4C();
          aBlock[0] = v157;
          v158 = sub_1E4816A68(&qword_1EE2B4680, MEMORY[0x1E69686F0]);
          v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
          v160 = sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78);
          v373 = v159;
          v354 = v160;
          v375 = v158;
          sub_1E4878ECC();
          sub_1E4878B1C();
          v352 = *v379;
          (v352)(v156, v155);
          sub_1E4878B4C();
          sub_1E4878B7C();
          if (qword_1EE2B4848 != -1)
          {
            swift_once();
          }

          v161 = qword_1EE2BAF40;
          v162 = v355[7];
          v355 += 7;
          v351 = v162;
          (v162)(v364, 1, 1, v353);
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v350 = sub_1E4816A68(&qword_1EE2B4688, MEMORY[0x1E69686B0]);
          v163 = v161;
          v345 = v161;
          v164 = v163;
          v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
          sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80);
          sub_1E4878ECC();
          v165 = v164;
          sub_1E487717C();
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v166 = v356;
          v167 = v357;
          sub_1E4878ECC();
          sub_1E4878B1C();
          (v352)(v166, v167);
          sub_1E4878B4C();
          aBlock[0] = v374;
          sub_1E4878B2C();
          sub_1E4878B4C();
          sub_1E4878B7C();
          (v351)(v364, 1, 1, v353);
          v168 = MEMORY[0x1E69E7CC0];
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1E4878ECC();
          v169 = v338;
          sub_1E487717C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D398, &qword_1E48836E0);
          v170 = v366;
          v171 = *(v366 + 72);
          v172 = (*(v366 + 80) + 32) & ~*(v366 + 80);
          v173 = swift_allocObject();
          *(v173 + 16) = xmmword_1E487A7F0;
          v375 = v173;
          v174 = v173 + v172;
          v175 = *(v170 + 16);
          v176 = v367;
          v175(v174, v340, v367);
          v379 = v171;
          v175(v171 + v174, v169, v176);
          aBlock[0] = v168;
          sub_1E4858230(0, 2, 0);
          v137 = aBlock[0];
          v177 = v342;
          v374 = v174;
          v175(v342, v174, v176);
          v178 = v378;
          v179 = v328;
          v175(&v328[*(v378 + 20)], v177, v176);
          sub_1E487735C();
          v373 = *(v170 + 8);
          v373(v177, v176);
          v180 = v179;
          v179[*(v178 + 24)] = 1;
          aBlock[0] = v137;
          v182 = *(v137 + 16);
          v181 = *(v137 + 24);
          v183 = (v182 + 1);
          if (v182 >= v181 >> 1)
          {
            v364 = (v182 + 1);
            sub_1E4858230(v181 > 1, v182 + 1, 1);
            v183 = v364;
            v180 = v328;
            v137 = aBlock[0];
          }

          *(v137 + 16) = v183;
          v364 = ((*(v377 + 80) + 32) & ~*(v377 + 80));
          v377 = *(v377 + 72);
          sub_1E4817260(v180, &v364[v137 + v377 * v182], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v175(v177, v379 + v374, v176);

          v184 = v326;
          v175(&v326[*(v178 + 20)], v177, v176);
          sub_1E487735C();
          v185 = v177;
          v186 = v184;
          v187 = v373;
          v373(v185, v176);
          *(v186 + *(v178 + 24)) = 1;
          aBlock[0] = v137;
          v189 = *(v137 + 16);
          v188 = *(v137 + 24);
          if (v189 >= v188 >> 1)
          {
            sub_1E4858230(v188 > 1, v189 + 1, 1);
            v137 = aBlock[0];
          }

          *(v137 + 16) = v189 + 1;
          sub_1E4817260(v186, &v364[v137 + v189 * v377], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v187(v338, v176);
          v190 = &v372;
        }

        else
        {
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = v127;
          sub_1E4878B2C();
          v245 = MEMORY[0x1E69E7CC0];
          sub_1E4878B4C();
          aBlock[0] = v245;
          v246 = sub_1E4816A68(&qword_1EE2B4680, MEMORY[0x1E69686F0]);
          v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
          v248 = sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78);
          v373 = v247;
          v354 = v248;
          v375 = v246;
          sub_1E4878ECC();
          sub_1E4878B1C();
          v352 = *v379;
          (v352)(v156, v155);
          sub_1E4878B4C();
          sub_1E4878B7C();
          if (qword_1EE2B4848 != -1)
          {
            swift_once();
          }

          v249 = qword_1EE2BAF40;
          v250 = v355[7];
          v355 += 7;
          v351 = v250;
          (v250)(v364, 1, 1, v353);
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v346 = sub_1E4816A68(&qword_1EE2B4688, MEMORY[0x1E69686B0]);
          v251 = v249;
          v344 = v249;
          v252 = v251;
          v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
          v350 = sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80);
          sub_1E4878ECC();
          v253 = v252;
          v254 = v364;
          sub_1E487717C();
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v255 = v356;
          v256 = v357;
          sub_1E4878ECC();
          sub_1E4878B1C();
          (v352)(v255, v256);
          sub_1E4878B4C();
          aBlock[0] = v374;
          sub_1E4878B2C();
          sub_1E4878B4C();
          sub_1E4878B7C();
          (v351)(v254, 1, 1, v353);
          v257 = MEMORY[0x1E69E7CC0];
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1E4878ECC();
          v258 = v330;
          sub_1E487717C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D398, &qword_1E48836E0);
          v259 = v366;
          v260 = *(v366 + 72);
          v261 = (*(v366 + 80) + 32) & ~*(v366 + 80);
          v262 = swift_allocObject();
          *(v262 + 16) = xmmword_1E487A7F0;
          v375 = v262;
          v263 = v262 + v261;
          v264 = *(v259 + 16);
          v176 = v367;
          v264(v263, v336, v367);
          v379 = v260;
          v264(v260 + v263, v258, v176);
          aBlock[0] = v257;
          sub_1E4858230(0, 2, 0);
          v137 = aBlock[0];
          v265 = v342;
          v374 = v263;
          v264(v342, v263, v176);
          v266 = v378;
          v267 = v324;
          v264(&v324[*(v378 + 20)], v265, v176);
          sub_1E487735C();
          v373 = *(v259 + 8);
          v373(v265, v176);
          v268 = v267;
          v267[*(v266 + 24)] = 1;
          aBlock[0] = v137;
          v270 = *(v137 + 16);
          v269 = *(v137 + 24);
          v271 = (v270 + 1);
          if (v270 >= v269 >> 1)
          {
            v364 = (v270 + 1);
            sub_1E4858230(v269 > 1, v270 + 1, 1);
            v271 = v364;
            v268 = v324;
            v137 = aBlock[0];
          }

          *(v137 + 16) = v271;
          v364 = ((*(v377 + 80) + 32) & ~*(v377 + 80));
          v377 = *(v377 + 72);
          sub_1E4817260(v268, &v364[v137 + v377 * v270], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v264(v265, v379 + v374, v176);

          v272 = v322;
          v264(&v322[*(v266 + 20)], v265, v176);
          sub_1E487735C();
          v273 = v265;
          v274 = v272;
          v187 = v373;
          v373(v273, v176);
          *(v274 + *(v266 + 24)) = 1;
          aBlock[0] = v137;
          v276 = *(v137 + 16);
          v275 = *(v137 + 24);
          if (v276 >= v275 >> 1)
          {
            sub_1E4858230(v275 > 1, v276 + 1, 1);
            v137 = aBlock[0];
          }

          *(v137 + 16) = v276 + 1;
          sub_1E4817260(v274, &v364[v137 + v276 * v377], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v187(v330, v176);
          v190 = &v368;
        }
      }

      else
      {
        v192 = v357;
        v193 = v356;
        v194 = MEMORY[0x1E69E7CC0];
        if (v154)
        {
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = v127;
          sub_1E4878B2C();
          sub_1E4878B4C();
          aBlock[0] = v194;
          v195 = sub_1E4816A68(&qword_1EE2B4680, MEMORY[0x1E69686F0]);
          v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
          v197 = sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78);
          v373 = v196;
          v354 = v197;
          v375 = v195;
          sub_1E4878ECC();
          sub_1E4878B1C();
          v352 = *v379;
          (v352)(v193, v192);
          sub_1E4878B4C();
          sub_1E4878B7C();
          if (qword_1EE2B4848 != -1)
          {
            swift_once();
          }

          v198 = qword_1EE2BAF40;
          v199 = v355[7];
          v355 += 7;
          v351 = v199;
          (v199)(v364, 1, 1, v353);
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v350 = sub_1E4816A68(&qword_1EE2B4688, MEMORY[0x1E69686B0]);
          v200 = v198;
          v345 = v198;
          v201 = v200;
          v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
          sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80);
          sub_1E4878ECC();
          v202 = v201;
          sub_1E487717C();
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v203 = v356;
          v204 = v357;
          sub_1E4878ECC();
          sub_1E4878B1C();
          (v352)(v203, v204);
          sub_1E4878B4C();
          aBlock[0] = v374;
          sub_1E4878B2C();
          sub_1E4878B4C();
          sub_1E4878B7C();
          (v351)(v364, 1, 1, v353);
          v205 = MEMORY[0x1E69E7CC0];
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1E4878ECC();
          v206 = v339;
          sub_1E487717C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D398, &qword_1E48836E0);
          v207 = v366;
          v208 = *(v366 + 72);
          v209 = (*(v366 + 80) + 32) & ~*(v366 + 80);
          v210 = swift_allocObject();
          *(v210 + 16) = xmmword_1E487A7F0;
          v375 = v210;
          v211 = v210 + v209;
          v212 = *(v207 + 16);
          v176 = v367;
          v212(v211, v341, v367);
          v379 = v208;
          v212(v208 + v211, v206, v176);
          aBlock[0] = v205;
          sub_1E4858230(0, 2, 0);
          v137 = aBlock[0];
          v213 = v342;
          v374 = v211;
          v212(v342, v211, v176);
          v214 = v378;
          v215 = v329;
          v212(&v329[*(v378 + 20)], v213, v176);
          sub_1E487735C();
          v373 = *(v207 + 8);
          v373(v213, v176);
          v216 = v215;
          v215[*(v214 + 24)] = 1;
          aBlock[0] = v137;
          v218 = *(v137 + 16);
          v217 = *(v137 + 24);
          v219 = (v218 + 1);
          if (v218 >= v217 >> 1)
          {
            v364 = (v218 + 1);
            sub_1E4858230(v217 > 1, v218 + 1, 1);
            v219 = v364;
            v216 = v329;
            v137 = aBlock[0];
          }

          *(v137 + 16) = v219;
          v364 = ((*(v377 + 80) + 32) & ~*(v377 + 80));
          v377 = *(v377 + 72);
          sub_1E4817260(v216, &v364[v137 + v377 * v218], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v212(v213, v379 + v374, v176);

          v220 = v327;
          v212(&v327[*(v214 + 20)], v213, v176);
          sub_1E487735C();
          v221 = v213;
          v222 = v220;
          v187 = v373;
          v373(v221, v176);
          *(v222 + *(v214 + 24)) = 1;
          aBlock[0] = v137;
          v224 = *(v137 + 16);
          v223 = *(v137 + 24);
          if (v224 >= v223 >> 1)
          {
            sub_1E4858230(v223 > 1, v224 + 1, 1);
            v137 = aBlock[0];
          }

          *(v137 + 16) = v224 + 1;
          sub_1E4817260(v222, &v364[v137 + v224 * v377], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v187(v339, v176);
          v190 = &v373;
        }

        else
        {
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = v127;
          sub_1E4878B2C();
          v277 = MEMORY[0x1E69E7CC0];
          sub_1E4878B4C();
          aBlock[0] = v277;
          v278 = sub_1E4816A68(&qword_1EE2B4680, MEMORY[0x1E69686F0]);
          v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D388, &qword_1E4880E78);
          v280 = sub_1E4773680(&qword_1EE2B0E10, &qword_1ECF7D388, &qword_1E4880E78);
          v373 = v279;
          v354 = v280;
          v375 = v278;
          sub_1E4878ECC();
          sub_1E4878B1C();
          v352 = *v379;
          (v352)(v193, v192);
          sub_1E4878B4C();
          sub_1E4878B7C();
          if (qword_1EE2B4848 != -1)
          {
            swift_once();
          }

          v281 = qword_1EE2BAF40;
          v282 = v355[7];
          v355 += 7;
          v351 = v282;
          (v282)(v364, 1, 1, v353);
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v346 = sub_1E4816A68(&qword_1EE2B4688, MEMORY[0x1E69686B0]);
          v283 = v281;
          v344 = v281;
          v284 = v283;
          v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D390, &unk_1E4880E80);
          v350 = sub_1E4773680(&qword_1EE2B0E18, &qword_1ECF7D390, &unk_1E4880E80);
          sub_1E4878ECC();
          v285 = v284;
          v286 = v364;
          sub_1E487717C();
          sub_1E4878B5C();
          sub_1E4878B4C();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          v287 = v356;
          v288 = v357;
          sub_1E4878ECC();
          sub_1E4878B1C();
          (v352)(v287, v288);
          sub_1E4878B4C();
          aBlock[0] = v374;
          sub_1E4878B2C();
          sub_1E4878B4C();
          sub_1E4878B7C();
          (v351)(v286, 1, 1, v353);
          v289 = MEMORY[0x1E69E7CC0];
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1E4878ECC();
          v290 = v331;
          sub_1E487717C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D398, &qword_1E48836E0);
          v291 = v366;
          v292 = *(v366 + 72);
          v293 = (*(v366 + 80) + 32) & ~*(v366 + 80);
          v294 = swift_allocObject();
          *(v294 + 16) = xmmword_1E487A7F0;
          v375 = v294;
          v295 = v294 + v293;
          v296 = *(v291 + 16);
          v176 = v367;
          v296(v295, v337, v367);
          v379 = v292;
          v296(v292 + v295, v290, v176);
          aBlock[0] = v289;
          sub_1E4858230(0, 2, 0);
          v137 = aBlock[0];
          v297 = v342;
          v374 = v295;
          v296(v342, v295, v176);
          v298 = v378;
          v299 = v325;
          v296(&v325[*(v378 + 20)], v297, v176);
          sub_1E487735C();
          v373 = *(v291 + 8);
          v373(v297, v176);
          v300 = v299;
          v299[*(v298 + 24)] = 1;
          aBlock[0] = v137;
          v302 = *(v137 + 16);
          v301 = *(v137 + 24);
          v303 = (v302 + 1);
          if (v302 >= v301 >> 1)
          {
            v364 = (v302 + 1);
            sub_1E4858230(v301 > 1, v302 + 1, 1);
            v303 = v364;
            v300 = v325;
            v137 = aBlock[0];
          }

          *(v137 + 16) = v303;
          v364 = ((*(v377 + 80) + 32) & ~*(v377 + 80));
          v377 = *(v377 + 72);
          sub_1E4817260(v300, &v364[v137 + v377 * v302], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v296(v297, v379 + v374, v176);

          v304 = v323;
          v296(&v323[*(v298 + 20)], v297, v176);
          sub_1E487735C();
          v305 = v297;
          v306 = v304;
          v187 = v373;
          v373(v305, v176);
          *(v306 + *(v298 + 24)) = 1;
          aBlock[0] = v137;
          v308 = *(v137 + 16);
          v307 = *(v137 + 24);
          if (v308 >= v307 >> 1)
          {
            sub_1E4858230(v307 > 1, v308 + 1, 1);
            v137 = aBlock[0];
          }

          *(v137 + 16) = v308 + 1;
          sub_1E4817260(v306, &v364[v137 + v308 * v377], type metadata accessor for InlineNextEventContentViewModel.TextOption);
          v187(v331, v176);
          v190 = &v369;
        }
      }

      v187(*(v190 - 32), v176);
      v111 = v371;
      v309 = v376;
      v310 = v343;
      v311 = v365;
      v312 = 0;
      v313 = *(v369 + 56);
      while (v312 < *(v309 + 16))
      {
        sub_1E4816B30(v101, v310, type metadata accessor for Event);
        v314 = *(v310 + v313);
        sub_1E4816AD0(v310, type metadata accessor for Event);
        v315 = v314 - 3;
        v191 = (v314 - 3) < 2;
        v316 = v315 > 1 || v311 == v312++;
        v101 += v150;
        if (v316)
        {
          v225 = v363;
          v226 = v362;
          v227 = v360;
          v229 = v366;
          v230 = v111;
          v228 = v367;
          goto LABEL_73;
        }
      }

LABEL_75:
      __break(1u);
    }

    __break(1u);
    goto LABEL_77;
  }

  sub_1E487718C();
  sub_1E486E640(v94[*(v91 + 28)], v99 & 1);
  v135 = v134;
  v136 = *(v134 + 16);
  if (v136)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E4858230(0, v136, 0);
    v137 = aBlock[0];
    v138 = (v135 + 40);
    v139 = v378;
    do
    {
      v140 = *(v138 - 1);
      v141 = *v138;
      swift_bridgeObjectRetain_n();
      sub_1E48771FC();
      v142 = &v53[*(v139 + 20)];
      sub_1E48771AC();
      sub_1E487735C();

      v53[*(v139 + 24)] = 1;
      aBlock[0] = v137;
      v144 = *(v137 + 16);
      v143 = *(v137 + 24);
      if (v144 >= v143 >> 1)
      {
        sub_1E4858230(v143 > 1, v144 + 1, 1);
        v137 = aBlock[0];
      }

      *(v137 + 16) = v144 + 1;
      sub_1E4817260(v53, v137 + ((*(v377 + 80) + 32) & ~*(v377 + 80)) + *(v377 + 72) * v144, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      v138 += 2;
      --v136;
    }

    while (v136);

    v191 = 0;
  }

  else
  {

    v191 = 0;
    v137 = MEMORY[0x1E69E7CC0];
  }

  v225 = v363;
  v226 = v362;
  v227 = v360;
  v228 = v367;
  v229 = v366;
  v230 = v371;
LABEL_73:
  aBlock[0] = MEMORY[0x1E69E7CD0];
  v317 = sub_1E4816C18(v137, aBlock);

  *v225 = v317;
  EventContentViewModel = type metadata accessor for InlineNextEventContentViewModel(0);
  sub_1E476DFDC(v376, v225 + *(EventContentViewModel + 24));

  v319 = sub_1E4877CCC();
  (*(*(v319 - 8) + 8))(v227, v319);
  v320 = sub_1E487753C();
  (*(*(v320 - 8) + 8))(v361, v320);
  (*(v370 + 8))(v226, v230);
  sub_1E4816AD0(v359, type metadata accessor for DayEvents);
  result = (*(v229 + 8))(v372, v228);
  *(v225 + 8) = v191;
  return result;
}

uint64_t sub_1E4815034@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  EventContentView = type metadata accessor for InlineNextEventContentView(0);
  sub_1E4773850(v1 + *(EventContentView + 36), v11, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E481523C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  EventContentView = type metadata accessor for InlineNextEventContentView(0);
  sub_1E4773850(v1 + *(EventContentView + 40), v11, &qword_1ECF7C840, &qword_1E487ADF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4815444@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v47 = sub_1E487719C();
  v45 = *(v47 - 8);
  v2 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v42 = *(EventContentView - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](EventContentView);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4877CCC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E487753C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1E487732C();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for InlineNextEventContentViewModel(0);
  v18 = *(*(EventContentViewModel - 8) + 64);
  MEMORY[0x1EEE9AC00](EventContentViewModel - 8);
  v20 = (&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D350, &qword_1E4880DE0);
  v21 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v23 = &v41 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D358, &qword_1E4880DE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E487A7F0;
  v25 = sub_1E487810C();
  *(inited + 32) = v25;
  v26 = sub_1E487812C();
  *(inited + 33) = v26;
  v27 = sub_1E487811C();
  sub_1E487811C();
  if (sub_1E487811C() != v25)
  {
    v27 = sub_1E487811C();
  }

  sub_1E487811C();
  if (sub_1E487811C() != v26)
  {
    v27 = sub_1E487811C();
  }

  *v23 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D360, &qword_1E4880DF0);
  sub_1E48159BC(v1, &v23[*(v28 + 44)]);
  v29 = type metadata accessor for InlineNextEventContentView(0);
  (*(v13 + 16))(v16, v1 + v29[5], v49);
  v30 = *(v1 + v29[6]);

  sub_1E4815034(v12);
  v31 = *v1;
  LODWORD(v29) = *(v1 + v29[7]);

  v32 = v50;
  sub_1E481523C(v50);
  sub_1E481159C(v16, v30, v12, v31, v29, v32, v20);
  v33 = *v20;

  result = sub_1E4816AD0(v20, type metadata accessor for InlineNextEventContentViewModel);
  if (*(v33 + 16))
  {
    v35 = v43;
    sub_1E4816B30(v33 + ((*(v42 + 80) + 32) & ~*(v42 + 80)), v43, type metadata accessor for InlineNextEventContentViewModel.TextOption);

    (*(v45 + 16))(v46, v35 + *(EventContentView + 20), v47);
    sub_1E4816AD0(v35, type metadata accessor for InlineNextEventContentViewModel.TextOption);
    v36 = sub_1E487847C();
    v38 = v37;
    v40 = v39;
    sub_1E4773680(&qword_1EE2B1638, &qword_1ECF7D350, &qword_1E4880DE0);
    sub_1E487856C();
    sub_1E477A3C8(v36, v38, v40 & 1);

    return sub_1E47738B8(v23, &qword_1ECF7D350, &qword_1E4880DE0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E48159BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  EventContentView = type metadata accessor for InlineNextEventContentView(0);
  v33 = *(EventContentView - 1);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](EventContentView);
  v34 = v5;
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4877CCC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E487753C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E487732C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for InlineNextEventContentViewModel(0);
  v20 = *(*(EventContentViewModel - 8) + 64);
  MEMORY[0x1EEE9AC00](EventContentViewModel - 8);
  v22 = (&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E4878D2C();
  v32 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v15 + 16))(v18, a1 + EventContentView[5], v14);
  v23 = *(a1 + EventContentView[6]);

  sub_1E4815034(v13);
  v24 = *a1;
  v25 = *(a1 + EventContentView[7]);

  sub_1E481523C(v9);
  sub_1E481159C(v18, v23, v13, v24, v25, v9, v22);
  v26 = *v22;

  sub_1E4816AD0(v22, type metadata accessor for InlineNextEventContentViewModel);
  v37 = v26;
  v27 = a1;
  v28 = v35;
  sub_1E4816B30(v27, v35, type metadata accessor for InlineNextEventContentView);
  v29 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v30 = swift_allocObject();
  sub_1E4817260(v28, v30 + v29, type metadata accessor for InlineNextEventContentView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D368, &qword_1E4880DF8);
  sub_1E487736C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D370, &qword_1E4880E00);
  sub_1E4773680(&unk_1EE2B0DE8, &qword_1ECF7D368, &qword_1E4880DF8);
  sub_1E4773680(&qword_1EE2B1000, &qword_1ECF7D370, &qword_1E4880E00);
  sub_1E4816A68(&qword_1EE2B1E88, type metadata accessor for InlineNextEventContentViewModel.TextOption);
  sub_1E487886C();
}

double sub_1E4815E5C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1E4877F6C();
  v18 = 1;
  sub_1E4815FD4(a1, a2, &v12);
  v21 = v14;
  v22 = v15;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v24[1] = v13;
  v23 = v16;
  v24[0] = v12;
  sub_1E4773850(&v19, &v11, &qword_1ECF7D378, &qword_1E4880E08);
  sub_1E47738B8(v24, &qword_1ECF7D378, &qword_1E4880E08);

  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v7;
  *(a3 + 81) = *&v17[64];
  result = *v17;
  v9 = *&v17[16];
  *(a3 + 17) = *v17;
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 96) = *&v17[79];
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_1E4815FD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, BOOL *a3@<X8>)
{
  v61 = a2;
  v63 = a3;
  v4 = sub_1E4877CCC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487753C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E487732C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for InlineNextEventContentViewModel(0);
  v16 = *(*(EventContentViewModel - 8) + 64);
  MEMORY[0x1EEE9AC00](EventContentViewModel - 8);
  v59 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E487719C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v62 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v24 = *(EventContentView + 20);
  v57 = *(a1 + *(EventContentView + 24));
  (*(v19 + 16))(v22, a1 + v24, v18);
  v25 = sub_1E487847C();
  v55 = v26;
  v56 = v25;
  v28 = v27;
  v54[1] = v29;
  v30 = type metadata accessor for InlineNextEventContentView(0);
  v31 = v61;
  v32 = v14;
  (*(v11 + 16))(v14, v61 + v30[5], v10);
  v33 = *(v31 + v30[6]);

  v34 = v58;
  sub_1E4815034(v58);
  v35 = *v31;
  LODWORD(v30) = *(v31 + v30[7]);

  v36 = v60;
  sub_1E481523C(v60);
  v37 = v59;
  sub_1E481159C(v32, v33, v34, v35, v30, v36, v59);
  v38 = *(v37 + 8);
  sub_1E4816AD0(v37, type metadata accessor for InlineNextEventContentViewModel);
  v40 = v55;
  v39 = v56;
  v41 = sub_1E48783EC();
  v43 = v42;
  LOBYTE(v33) = v44;
  v46 = v45;
  sub_1E477A3C8(v39, v40, v28 & 1);

  KeyPath = swift_getKeyPath();
  v48 = swift_getKeyPath();
  v66 = (v57 & 1) == 0;
  *&v69 = v41;
  *(&v69 + 1) = v43;
  LOBYTE(v70) = v33 & 1;
  *(&v70 + 1) = *v68;
  DWORD1(v70) = *&v68[3];
  *(&v70 + 1) = v46;
  *&v71 = KeyPath;
  *(&v71 + 1) = 1;
  LOBYTE(v72) = 0;
  DWORD1(v72) = *&v67[3];
  *(&v72 + 1) = *v67;
  *(&v72 + 1) = v48;
  v73 = v35;
  *(v65 + 7) = v69;
  *(&v65[4] + 7) = v35;
  *(&v65[3] + 7) = v72;
  *(&v65[2] + 7) = v71;
  *(&v65[1] + 7) = v70;
  v49 = v63;
  *v63 = v66;
  v50 = v65[1];
  *(v49 + 1) = v65[0];
  v51 = v65[2];
  v52 = v65[3];
  *(v49 + 4) = *(&v65[3] + 15);
  *(v49 + 49) = v52;
  *(v49 + 33) = v51;
  *(v49 + 17) = v50;
  v74[0] = v41;
  v74[1] = v43;
  v75 = v33 & 1;
  *&v76[3] = *&v68[3];
  *v76 = *v68;
  v77 = v46;
  v78 = KeyPath;
  v79 = 1;
  v80 = 0;
  *&v81[3] = *&v67[3];
  *v81 = *v67;
  v82 = v48;
  v83 = v35;

  sub_1E4773850(&v69, &v64, &qword_1ECF7D380, &qword_1E4880E70);
  sub_1E47738B8(v74, &qword_1ECF7D380, &qword_1E4880E70);
}

uint64_t sub_1E48164D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D348, &unk_1E4880DD0);
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v36 - v4;
  v5 = sub_1E487753C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E487732C();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  EventContentViewModel = type metadata accessor for InlineNextEventContentViewModel(0);
  v12 = *(*(EventContentViewModel - 8) + 64);
  MEMORY[0x1EEE9AC00](EventContentViewModel);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E4877CCC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v36 - v25;
  sub_1E481523C(v22);
  sub_1E4877CAC();
  sub_1E4816A68(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v27 = sub_1E4878EAC();
  v28 = *(v16 + 8);
  v28(v20, v15);
  v28(v22, v15);
  if (v27)
  {
    v29 = sub_1E487725C();
    (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  }

  else
  {
    EventContentView = type metadata accessor for InlineNextEventContentView(0);
    (*(v37 + 16))(v11, v2 + EventContentView[5], v38);
    v31 = *(v2 + EventContentView[6]);

    v32 = v40;
    sub_1E4815034(v40);
    v33 = *v2;
    LODWORD(EventContentView) = *(v2 + EventContentView[7]);

    sub_1E481523C(v22);
    sub_1E481159C(v11, v31, v32, v33, EventContentView, v22, v14);
    sub_1E4773850(&v14[*(EventContentViewModel + 24)], v26, &unk_1ECF7B688, &qword_1E487C160);
    sub_1E4816AD0(v14, type metadata accessor for InlineNextEventContentViewModel);
  }

  v34 = v41;
  sub_1E4815444(v41);
  sub_1E4816980();
  sub_1E48784BC();
  sub_1E47738B8(v34, &qword_1ECF7D348, &unk_1E4880DD0);
  return sub_1E47738B8(v26, &unk_1ECF7B688, &qword_1E487C160);
}

unint64_t sub_1E4816980()
{
  result = qword_1EE2B1588;
  if (!qword_1EE2B1588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D348, &unk_1E4880DD0);
    sub_1E4773680(&qword_1EE2B1638, &qword_1ECF7D350, &qword_1E4880DE0);
    sub_1E4816A68(&qword_1EE2B10A8, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1588);
  }

  return result;
}

uint64_t sub_1E4816A68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4816AD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4816B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1E4816B98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InlineNextEventContentView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1E4815E5C(a1, v6, a2);
}

uint64_t sub_1E4816C18(uint64_t a1, uint64_t a2)
{
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v5 = *(*(EventContentView - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](EventContentView - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v29 - v16;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(v15 + 80);
  v33 = *(v15 + 72);
  v30 = (v19 + 32) & ~v19;
  v20 = a1 + v30;
  v21 = MEMORY[0x1E69E7CC0];
  v31 = v8;
  v32 = a2;
  do
  {
    sub_1E4816B30(v20, v17, type metadata accessor for InlineNextEventContentViewModel.TextOption);
    sub_1E4816B30(v17, v11, type metadata accessor for InlineNextEventContentViewModel.TextOption);
    v23 = sub_1E48629F0(v14, v11);
    sub_1E4816AD0(v14, type metadata accessor for InlineNextEventContentViewModel.TextOption);
    if (v23)
    {
      sub_1E4817260(v17, v8, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E4858230(0, *(v21 + 16) + 1, 1);
        v21 = v34;
      }

      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1E4858230(v25 > 1, v26 + 1, 1);
        v21 = v34;
      }

      *(v21 + 16) = v26 + 1;
      v22 = v33;
      v27 = v21 + v30 + v26 * v33;
      v8 = v31;
      sub_1E4817260(v31, v27, type metadata accessor for InlineNextEventContentViewModel.TextOption);
    }

    else
    {
      sub_1E4816AD0(v17, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      v22 = v33;
    }

    v20 += v22;
    --v18;
  }

  while (v18);
  return v21;
}

id sub_1E4816EC4(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v5 = sub_1E487751C();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4876FFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v17 = sub_1E4878B9C();
  [a1 setLocalizedDateFormatFromTemplate_];

  v33 = a3;
  v18 = sub_1E48772BC();
  v19 = [a1 stringFromDate_];

  v20 = sub_1E4878BDC();
  v22 = v21;

  v35 = v20;
  v36 = v22;
  sub_1E4876FDC();
  sub_1E4876FEC();
  v23 = *(v10 + 8);
  v23(v16, v9);
  sub_1E477A374();
  v24 = sub_1E4878E7C();
  v23(v14, v9);

  v35 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B978, &qword_1E487ABA8);
  sub_1E4773680(&qword_1EE2B0DC8, &qword_1ECF7B978, &qword_1E487ABA8);
  sub_1E4878ABC();

  v25 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  v26 = sub_1E4878B9C();

  v27 = [v25 numberFromString_];

  if (v27)
  {
    v28 = [v27 integerValue];
  }

  else
  {
    v29 = v32;
    (*(v32 + 104))(v8, *MEMORY[0x1E6969A58], v5);
    v28 = sub_1E487752C();
    (*(v29 + 8))(v8, v5);
  }

  return v28;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4817260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1E48172F0()
{
  sub_1E481115C(319, &qword_1ECF7D3A8, type metadata accessor for InlineNextEventContentViewModel.TextOption, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1E481115C(319, &qword_1EE2B4660, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4817404()
{
  result = sub_1E487736C();
  if (v1 <= 0x3F)
  {
    result = sub_1E487719C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t CalendarDateWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3B0, &qword_1E4880FC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3B8, &qword_1E4880FC8);
  v31[0] = *(v6 - 8);
  v7 = *(v31[0] + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3C0, &qword_1E4880FD0);
  v32 = *(v35 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v12 = v31 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3C8, &unk_1E4880FD8);
  v34 = *(v36 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v33 = v31 - v14;
  v40 = 0x6469772065746164;
  v41 = 0xEB00000000746567;
  LOBYTE(v42) = 1;
  type metadata accessor for CalendarDateWidget.WidgetView();
  sub_1E481E5E4(&unk_1EE2B4480, type metadata accessor for CalendarDateWidget.WidgetView);
  sub_1E479BF44();
  sub_1E487899C();
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v31[1] = qword_1EE2BAF40;
  v40 = sub_1E48771EC();
  v41 = v15;
  v16 = sub_1E4773680(&qword_1EE2B0E48, &qword_1ECF7D3B0, &qword_1E4880FC0);
  v17 = sub_1E477A374();
  v18 = MEMORY[0x1E69E6158];
  sub_1E487800C();

  (*(v2 + 8))(v5, v1);
  v40 = v1;
  v41 = v18;
  v42 = v16;
  v43 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E487801C();
  (*(v31[0] + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA20, &qword_1E487BCF0);
  v20 = sub_1E487894C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E487A7E0;
  (*(v21 + 104))(v24 + v23, *MEMORY[0x1E69857F0], v20);
  v40 = v6;
  v41 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = v33;
  v27 = v35;
  sub_1E4877FFC();

  (*(v32 + 8))(v12, v27);
  v40 = sub_1E48771EC();
  v41 = v28;
  v38 = v27;
  v39 = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v36;
  sub_1E4877FEC();

  return (*(v34 + 8))(v26, v29);
}

uint64_t sub_1E4817B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E479D35C(a1, a2);
  KeyPath = swift_getKeyPath();
  v5 = type metadata accessor for CalendarDateWidget.WidgetView();
  *(a2 + v5[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  swift_storeEnumTagMultiPayload();
  *(a2 + v5[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D408, &qword_1E4881130);
  swift_storeEnumTagMultiPayload();
  *(a2 + v5[7]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BC10, &unk_1E487B660);
  swift_storeEnumTagMultiPayload();
  v6 = swift_getKeyPath();
  *(a2 + v5[9]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  swift_storeEnumTagMultiPayload();
  v7 = swift_getKeyPath();

  v9 = a2 + v5[8];
  *v9 = v6;
  *(v9 + 8) = 0;
  v10 = a2 + v5[10];
  *v10 = v7;
  *(v10 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for CalendarDateWidget.WidgetView()
{
  result = qword_1EE2B4470;
  if (!qword_1EE2B4470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4817DA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7F8, &qword_1E487C130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CalendarDateWidget.WidgetView();
  sub_1E4773850(v1 + *(v12 + 20), v11, &qword_1ECF7B7F8, &qword_1E487C130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487753C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4817FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D408, &qword_1E4881130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CalendarDateWidget.WidgetView();
  sub_1E4773850(v1 + *(v12 + 24), v11, &qword_1ECF7D408, &qword_1E4881130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487744C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E48181B8()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for CalendarDateWidget.WidgetView() + 32);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1E4878DDC();
    v8 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();
    sub_1E477A484(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1E4818310@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B7E8, &qword_1E487A700);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CalendarDateWidget.WidgetView();
  sub_1E4773850(v1 + *(v12 + 36), v11, &qword_1ECF7B7E8, &qword_1E487A700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E487893C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E4818518()
{
  v1 = sub_1E4877F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for CalendarDateWidget.WidgetView() + 40));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1E4878DDC();
    v9 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1E4818668@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v2 = sub_1E48780DC();
  v94 = *(v2 - 8);
  v95 = v2;
  v3 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v93 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v83 = &v76 - v7;
  v8 = sub_1E487798C();
  v9 = *(v8 - 8);
  v84 = v8;
  v85 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3D8, &qword_1E48810C0);
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v76 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3E0, &qword_1E48810C8);
  v15 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3E8, &unk_1E48810D0);
  v91 = *(v17 - 8);
  v92 = v17;
  v18 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v76 - v19;
  v20 = sub_1E487732C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E487744C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E487753C();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v32;
  v33 = sub_1E487893C();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E487797C();
  v97 = *(v37 - 8);
  v98 = v37;
  v38 = *(v97 + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v76 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v76 - v42;
  v82 = sub_1E4877A5C();
  v79 = v44;
  v78 = sub_1E48181B8();
  sub_1E4818310(v36);
  sub_1E4817DA8(v32);
  v45 = v28;
  v46 = v28;
  v47 = v1;
  sub_1E4817FB0(v45);
  v48 = *(type metadata accessor for CalendarDateTimelineEntry(0) + 20);
  v49 = *(v21 + 16);
  v49(v24, v47 + v48, v20);
  sub_1E4818EDC(v78 & 1, v36, v77, v46, v24, v82, v79, v43);
  v49(v24, v47 + v48, v20);
  v50 = *(v97 + 16);
  v82 = v43;
  v50(v41, v43, v98);
  v51 = v81;
  sub_1E487774C();
  v52 = v83;
  sub_1E4877A6C();
  v53 = sub_1E487725C();
  (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  sub_1E481E5E4(&qword_1EE2B4628, MEMORY[0x1E6993258]);
  v54 = v80;
  v55 = v84;
  sub_1E48784BC();
  sub_1E47738B8(v52, &unk_1ECF7B688, &qword_1E487C160);
  (*(v85 + 8))(v51, v55);
  if (sub_1E48181B8())
  {
    v56 = *(sub_1E4818518() + 16);
  }

  v57 = sub_1E487814C();
  sub_1E4877B0C();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v89;
  (*(v86 + 32))(v89, v54, v87);
  v67 = v66 + *(v88 + 36);
  *v67 = v57;
  *(v67 + 8) = v59;
  *(v67 + 16) = v61;
  *(v67 + 24) = v63;
  *(v67 + 32) = v65;
  *(v67 + 40) = 0;
  v68 = v93;
  sub_1E48780CC();
  sub_1E487889C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE98, &qword_1E487C870);
  sub_1E481DB10();
  sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870);
  v69 = v90;
  sub_1E487859C();
  (*(v94 + 8))(v68, v95);
  sub_1E4769054(v66);
  KeyPath = swift_getKeyPath();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3F0, &qword_1E4881110);
  v72 = v96;
  v73 = (v96 + *(v71 + 36));
  v74 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BA30, &qword_1E487AD80) + 28);
  sub_1E4877A7C();
  (*(v97 + 8))(v82, v98);
  *v73 = KeyPath;
  return (*(v91 + 32))(v72, v69, v92);
}

uint64_t sub_1E4818EDC@<X0>(int a1@<W0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v479 = a5;
  v480 = a4;
  v454 = a2;
  v474 = a1;
  v485 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v438 = &v392 - v13;
  v468 = sub_1E487893C();
  v467 = *(v468 - 8);
  v14 = *(v467 + 64);
  MEMORY[0x1EEE9AC00](v468);
  v453 = &v392 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = sub_1E48773BC();
  v451 = *(v452 - 8);
  v16 = *(v451 + 64);
  MEMORY[0x1EEE9AC00](v452);
  v450 = &v392 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v466 = sub_1E487751C();
  v471 = *(v466 - 8);
  v18 = *(v471 + 64);
  MEMORY[0x1EEE9AC00](v466);
  v465 = &v392 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = sub_1E487753C();
  v456 = *(v457 - 8);
  v20 = *(v456 + 64);
  v21 = MEMORY[0x1EEE9AC00](v457);
  v415 = &v392 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v416 = &v392 - v23;
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D3F8, &unk_1E4881118);
  v24 = *(*(v449 - 1) + 64);
  MEMORY[0x1EEE9AC00](v449);
  v26 = &v392 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v412 = &v392 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v411 = &v392 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v413 = &v392 - v33;
  v431 = sub_1E487757C();
  v430 = *(v431 - 8);
  v34 = *(v430 + 64);
  v35 = MEMORY[0x1EEE9AC00](v431);
  v420 = &v392 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v426 = &v392 - v37;
  v483 = sub_1E487739C();
  v478 = *(v483 - 8);
  v38 = *(v478 + 64);
  MEMORY[0x1EEE9AC00](v483);
  v447 = &v392 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFB0, &qword_1E487FBA8);
  v40 = *(*(v482 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v482);
  v424 = &v392 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v423 = &v392 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v399 = &v392 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v401 = &v392 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v405 = &v392 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v398 = &v392 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v400 = &v392 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v404 = &v392 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v414 = &v392 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v419 = &v392 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v469 = &v392 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v436 = &v392 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v441 = &v392 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v392 - v67;
  v488 = sub_1E487740C();
  v486 = *(v488 - 1);
  v69 = *(v486 + 64);
  MEMORY[0x1EEE9AC00](v488);
  v475 = &v392 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CDD8, &qword_1E487F920);
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x1EEE9AC00](v71 - 8);
  v418 = &v392 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v427 = &v392 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v417 = &v392 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v434 = &v392 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v393 = &v392 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v403 = &v392 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v395 = &v392 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v408 = &v392 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v397 = &v392 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v442 = &v392 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v392 = &v392 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v402 = &v392 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v394 = &v392 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v407 = &v392 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v396 = &v392 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v409 = &v392 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v406 = &v392 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v421 = &v392 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v410 = &v392 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v422 = &v392 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v432 = &v392 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v439 = &v392 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v425 = &v392 - v118;
  v119 = MEMORY[0x1EEE9AC00](v117);
  v435 = &v392 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v433 = &v392 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v440 = &v392 - v124;
  v125 = MEMORY[0x1EEE9AC00](v123);
  v455 = &v392 - v126;
  v127 = MEMORY[0x1EEE9AC00](v125);
  v129 = &v392 - v128;
  MEMORY[0x1EEE9AC00](v127);
  v481 = &v392 - v130;
  v459 = sub_1E487785C();
  v131 = *(v459 - 8);
  v132 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v459);
  v458 = &v392 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1E48777EC();
  v476 = *(v134 - 8);
  v135 = v476[8];
  v136 = MEMORY[0x1EEE9AC00](v134);
  v460 = &v392 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v136);
  v477 = &v392 - v138;
  v139 = sub_1E487784C();
  v140 = *(v139 - 8);
  v141 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v464 = &v392 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  v484 = a3;
  v487 = v26;
  if (!a7)
  {
    goto LABEL_6;
  }

  if (!a6 && v142 == 0xE000000000000000 || (v144 = v139, v145 = a6, v146 = v142, v147 = sub_1E48790EC(), v148 = v146, a6 = v145, v139 = v144, (v147 & 1) != 0))
  {

    a6 = 0;
LABEL_6:
    v149 = 0;
    goto LABEL_7;
  }

  v149 = v148;
LABEL_7:
  v150 = *(v140 + 104);
  v437 = *MEMORY[0x1E6993228];
  v445 = v139;
  v444 = v140 + 104;
  v443 = v150;
  v150(v464);
  v151 = v476[13];
  v446 = *MEMORY[0x1E6993208];
  v463 = v134;
  v462 = v476 + 13;
  v461 = v151;
  v151(v477);
  v152 = *MEMORY[0x1E6993248];
  v153 = *(v131 + 104);
  v429 = v131 + 104;
  v428 = v153;
  v153(v458, v152, v459);
  sub_1E487827C();
  sub_1E487827C();
  sub_1E48786EC();
  sub_1E487822C();
  v154 = [objc_opt_self() tertiaryLabelColor];
  sub_1E48785FC();

  v448 = a6;
  sub_1E48778AC();
  v155 = v475;
  sub_1E487741C();
  v156 = v481;
  sub_1E48773FC();
  (*(v486 + 8))(v155, v488);

  v486 = sub_1E481E288(MEMORY[0x1E69E7CC0]);
  v475 = v149;
  swift_bridgeObjectRetain_n();
  v470 = _AXSPrefersHorizontalTextLayout();
  sub_1E487738C();
  v157 = v478;
  v158 = *(v478 + 56);
  v159 = v483;
  v473 = v478 + 56;
  v472 = v158;
  v158(v129, 0, 1, v483);
  v160 = *(v482 + 48);
  sub_1E4773850(v156, v68, &qword_1ECF7CDD8, &qword_1E487F920);
  sub_1E4773850(v129, &v68[v160], &qword_1ECF7CDD8, &qword_1E487F920);
  v488 = *(v157 + 48);
  if (v488(v68, 1, v159) == 1)
  {
    sub_1E47738B8(v129, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v488(&v68[v160], 1, v159) == 1)
    {
      sub_1E47738B8(v68, &qword_1ECF7CDD8, &qword_1E487F920);
      v161 = v475;
      if (!v475)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

LABEL_13:
    sub_1E47738B8(v68, &qword_1ECF7CFB0, &qword_1E487FBA8);
    v163 = 0;
    v455 = 0;
    v161 = v475;
    goto LABEL_24;
  }

  v162 = v455;
  sub_1E4773850(v68, v455, &qword_1ECF7CDD8, &qword_1E487F920);
  if (v488(&v68[v160], 1, v159) == 1)
  {
    sub_1E47738B8(v129, &qword_1ECF7CDD8, &qword_1E487F920);
    (*(v478 + 8))(v162, v159);
    goto LABEL_13;
  }

  v164 = v478;
  v165 = v447;
  (*(v478 + 32))(v447, &v68[v160], v159);
  sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
  v166 = sub_1E4878AFC();
  v167 = *(v164 + 8);
  v167(v165, v159);
  sub_1E47738B8(v129, &qword_1ECF7CDD8, &qword_1E487F920);
  v167(v162, v159);
  sub_1E47738B8(v68, &qword_1ECF7CDD8, &qword_1E487F920);
  v163 = 0;
  if ((v166 & 1) == 0)
  {
    v455 = 0;
    v161 = v475;
    goto LABEL_24;
  }

  v455 = 0;
  v161 = v475;
  if (!v475)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v448 != 0x6573656E696863 || v161 != 0xE700000000000000) && (sub_1E48790EC() & 1) == 0)
  {
    goto LABEL_23;
  }

  v168 = v426;
  sub_1E487750C();
  if (!v448 && v161 == 0xE000000000000000 || (sub_1E48790EC() & 1) != 0)
  {
    (*(v430 + 8))(v168, v431);
LABEL_23:
    v163 = 0;
    v455 = 0;
    goto LABEL_24;
  }

  v239 = objc_opt_self();
  v240 = sub_1E4878B9C();
  v241 = sub_1E487756C();
  v242 = [v239 overlayCalendarForCalendarIdentifier:v240 timezone:v241];

  if (v242)
  {
    v243 = v411;
    sub_1E487749C();

    v244 = 0;
    v245 = v413;
    v246 = v412;
  }

  else
  {
    v244 = 1;
    v245 = v413;
    v246 = v412;
    v243 = v411;
  }

  v282 = v456;
  v283 = v457;
  (*(v456 + 56))(v243, v244, 1, v457);
  sub_1E47F2A10(v243, v245);
  v284 = sub_1E48772BC();
  sub_1E4773850(v245, v246, &qword_1ECF7CFA8, &qword_1E487FBA0);
  if ((*(v282 + 48))(v246, 1, v283) == 1)
  {
    v285 = 0;
  }

  else
  {
    v285 = sub_1E487748C();
    (*(v282 + 8))(v246, v283);
  }

  v286 = [objc_opt_self() monthDayStringForDate:v284 inCalendar:v285];

  v161 = v475;
  if (v286)
  {
    v163 = sub_1E4878BDC();
    v455 = v287;
  }

  else
  {
    v163 = 0;
    v455 = 0;
  }

  sub_1E47738B8(v245, &qword_1ECF7CFA8, &qword_1E487FBA0);
  (*(v430 + 8))(v168, v431);
LABEL_24:
  v426 = v163;
  if ((v474 & 1) == 0)
  {
    sub_1E48778CC();
    sub_1E487789C();
    sub_1E48778EC();
    sub_1E487827C();
    sub_1E487796C();
    sub_1E48778DC();
    sub_1E487782C();
    sub_1E487795C();
    sub_1E487793C();
  }

  v169 = v470;
  v170 = v470 != 0;
  v171 = v449[12];
  v172 = v449[16];
  v173 = v449[20];
  v174 = v487;
  sub_1E4773850(v481, v487, &qword_1ECF7CDD8, &qword_1E487F920);
  *(v174 + v171) = v474 & 1;
  *(v174 + v172) = v170;
  *(v174 + v173) = v161 != 0;
  v175 = v483;
  if (!v169)
  {
    goto LABEL_39;
  }

  v176 = v440;
  sub_1E487738C();
  v472(v176, 0, 1, v175);
  v177 = *(v482 + 48);
  v178 = v441;
  sub_1E4773850(v176, v441, &qword_1ECF7CDD8, &qword_1E487F920);
  sub_1E4773850(v487, v178 + v177, &qword_1ECF7CDD8, &qword_1E487F920);
  if (v488(v178, 1, v175) == 1)
  {
    sub_1E47738B8(v176, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v488((v178 + v177), 1, v175) == 1)
    {

      v179 = v178;
LABEL_42:
      sub_1E47738B8(v179, &qword_1ECF7CDD8, &qword_1E487F920);
      goto LABEL_64;
    }
  }

  else
  {
    v180 = v433;
    sub_1E4773850(v178, v433, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v488((v178 + v177), 1, v175) != 1)
    {
      v200 = v478;
      v201 = v447;
      (*(v478 + 32))(v447, v178 + v177, v175);
      sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
      v202 = sub_1E4878AFC();
      v203 = *(v200 + 8);
      v203(v201, v175);
      sub_1E47738B8(v176, &qword_1ECF7CDD8, &qword_1E487F920);
      v203(v180, v483);
      v175 = v483;
      sub_1E47738B8(v178, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v202)
      {
        goto LABEL_63;
      }

      goto LABEL_33;
    }

    sub_1E47738B8(v176, &qword_1ECF7CDD8, &qword_1E487F920);
    (*(v478 + 8))(v180, v175);
  }

  sub_1E47738B8(v178, &qword_1ECF7CFB0, &qword_1E487FBA8);
LABEL_33:
  v181 = v435;
  sub_1E487738C();
  v472(v181, 0, 1, v175);
  v182 = *(v482 + 48);
  v183 = v436;
  sub_1E4773850(v181, v436, &qword_1ECF7CDD8, &qword_1E487F920);
  sub_1E4773850(v487, v183 + v182, &qword_1ECF7CDD8, &qword_1E487F920);
  if (v488(v183, 1, v175) == 1)
  {
    sub_1E47738B8(v181, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v488((v183 + v182), 1, v175) == 1)
    {
      v161 = v475;

      v179 = v183;
      goto LABEL_42;
    }
  }

  else
  {
    v184 = v425;
    sub_1E4773850(v183, v425, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v488((v183 + v182), 1, v175) != 1)
    {
      v216 = v478;
      v217 = v183 + v182;
      v218 = v447;
      (*(v478 + 32))(v447, v217, v175);
      sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
      v219 = sub_1E4878AFC();
      v220 = *(v216 + 8);
      v220(v218, v483);
      sub_1E47738B8(v181, &qword_1ECF7CDD8, &qword_1E487F920);
      v220(v184, v483);
      v175 = v483;
      sub_1E47738B8(v183, &qword_1ECF7CDD8, &qword_1E487F920);
      v161 = v475;
      if (v219)
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    sub_1E47738B8(v181, &qword_1ECF7CDD8, &qword_1E487F920);
    (*(v478 + 8))(v184, v175);
  }

  sub_1E47738B8(v183, &qword_1ECF7CFB0, &qword_1E487FBA8);
LABEL_39:
  v185 = v439;
  sub_1E487738C();
  v472(v185, 0, 1, v175);
  v186 = *(v482 + 48);
  v187 = v469;
  sub_1E4773850(v185, v469, &qword_1ECF7CDD8, &qword_1E487F920);
  sub_1E4773850(v487, v187 + v186, &qword_1ECF7CDD8, &qword_1E487F920);
  if (v488(v187, 1, v175) == 1)
  {
    sub_1E47738B8(v185, &qword_1ECF7CDD8, &qword_1E487F920);
    v188 = v488((v469 + v186), 1, v175);
    v189 = v442;
    if (v188 == 1)
    {
      v161 = v475;

      v179 = v469;
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  v190 = v469;
  v191 = v432;
  sub_1E4773850(v469, v432, &qword_1ECF7CDD8, &qword_1E487F920);
  if (v488((v190 + v186), 1, v175) == 1)
  {
    sub_1E47738B8(v185, &qword_1ECF7CDD8, &qword_1E487F920);
    (*(v478 + 8))(v191, v175);
    v189 = v442;
LABEL_45:
    sub_1E47738B8(v469, &qword_1ECF7CFB0, &qword_1E487FBA8);
    v161 = v475;
    goto LABEL_46;
  }

  v204 = v478;
  v205 = v469;
  v206 = v469 + v186;
  v207 = v447;
  (*(v478 + 32))(v447, v206, v175);
  sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
  v208 = sub_1E4878AFC();
  v209 = *(v204 + 8);
  v209(v207, v483);
  sub_1E47738B8(v185, &qword_1ECF7CDD8, &qword_1E487F920);
  v209(v191, v483);
  v175 = v483;
  sub_1E47738B8(v205, &qword_1ECF7CDD8, &qword_1E487F920);
  v161 = v475;
  v189 = v442;
  if ((v208 & 1) == 0)
  {
LABEL_46:
    if (v470)
    {
      v192 = v175;
LABEL_48:
      swift_bridgeObjectRelease_n();

      goto LABEL_49;
    }

    if (v161)
    {

      v210 = v422;
      sub_1E487738C();
      v472(v210, 0, 1, v175);
      v211 = *(v482 + 48);
      v212 = v419;
      sub_1E4773850(v210, v419, &qword_1ECF7CDD8, &qword_1E487F920);
      v213 = v212;
      sub_1E4773850(v487, v212 + v211, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v488(v212, 1, v175) == 1)
      {
        sub_1E47738B8(v210, &qword_1ECF7CDD8, &qword_1E487F920);
        v214 = v488((v212 + v211), 1, v175);
        v215 = v421;
        if (v214 == 1)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v261 = v410;
        sub_1E4773850(v212, v410, &qword_1ECF7CDD8, &qword_1E487F920);
        if (v488((v212 + v211), 1, v175) != 1)
        {
          v276 = v478;
          v277 = v213 + v211;
          v278 = v447;
          (*(v478 + 32))(v447, v277, v175);
          sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
          v279 = v213;
          v280 = sub_1E4878AFC();
          v281 = *(v276 + 8);
          v281(v278, v483);
          sub_1E47738B8(v422, &qword_1ECF7CDD8, &qword_1E487F920);
          v281(v261, v483);
          v175 = v483;
          sub_1E47738B8(v279, &qword_1ECF7CDD8, &qword_1E487F920);
          v161 = v475;
          v215 = v421;
          if (v280)
          {
            goto LABEL_122;
          }

LABEL_97:
          sub_1E487738C();
          v472(v215, 0, 1, v175);
          v262 = *(v482 + 48);
          v263 = v414;
          sub_1E4773850(v215, v414, &qword_1ECF7CDD8, &qword_1E487F920);
          v213 = v263;
          sub_1E4773850(v487, v263 + v262, &qword_1ECF7CDD8, &qword_1E487F920);
          if (v488(v263, 1, v175) == 1)
          {
            sub_1E47738B8(v215, &qword_1ECF7CDD8, &qword_1E487F920);
            if (v488((v263 + v262), 1, v175) == 1)
            {
LABEL_99:
              v161 = v475;
              sub_1E47738B8(v213, &qword_1ECF7CDD8, &qword_1E487F920);
              goto LABEL_122;
            }

            swift_bridgeObjectRelease_n();
          }

          else
          {
            v270 = v406;
            sub_1E4773850(v263, v406, &qword_1ECF7CDD8, &qword_1E487F920);
            if (v488((v263 + v262), 1, v175) != 1)
            {
              v288 = v478;
              v289 = v213 + v262;
              v290 = v447;
              (*(v478 + 32))(v447, v289, v175);
              sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
              v291 = v213;
              v292 = sub_1E4878AFC();
              v293 = *(v288 + 8);
              v293(v290, v483);
              sub_1E47738B8(v421, &qword_1ECF7CDD8, &qword_1E487F920);
              v293(v270, v483);
              v192 = v483;
              sub_1E47738B8(v291, &qword_1ECF7CDD8, &qword_1E487F920);
              v161 = v475;
              if ((v292 & 1) == 0)
              {
                goto LABEL_48;
              }

LABEL_122:
              sub_1E47738B8(v487, &qword_1ECF7CDD8, &qword_1E487F920);
              v197 = v468;
              v198 = v467;
              v222 = v445;
              v221 = v470;
              v223 = v455;
              goto LABEL_65;
            }

            swift_bridgeObjectRelease_n();

            sub_1E47738B8(v421, &qword_1ECF7CDD8, &qword_1E487F920);
            (*(v478 + 8))(v270, v175);
          }

          v192 = v175;
          sub_1E47738B8(v263, &qword_1ECF7CFB0, &qword_1E487FBA8);
LABEL_49:
          v193 = v434;
          if (v474)
          {
LABEL_50:
            sub_1E487738C();
            v472(v193, 0, 1, v192);
            v194 = *(v482 + 48);
            v195 = v423;
            sub_1E4773850(v193, v423, &qword_1ECF7CDD8, &qword_1E487F920);
            v196 = v195;
            sub_1E4773850(v487, v195 + v194, &qword_1ECF7CDD8, &qword_1E487F920);
            if (v488(v195, 1, v192) == 1)
            {
              sub_1E47738B8(v193, &qword_1ECF7CDD8, &qword_1E487F920);
              if (v488((v195 + v194), 1, v192) == 1)
              {
                sub_1E47738B8(v195, &qword_1ECF7CDD8, &qword_1E487F920);
                v197 = v468;
                v198 = v467;
                v199 = v475;
LABEL_101:
                sub_1E48778BC();
                sub_1E48778CC();
LABEL_155:
                sub_1E48778EC();
                sub_1E487822C();
                sub_1E487796C();
                sub_1E487777C();
                sub_1E48778DC();
                sub_1E487782C();
                sub_1E487795C();
                sub_1E487793C();
                v307 = &qword_1ECF7CDD8;
                v308 = &qword_1E487F920;
LABEL_156:
                sub_1E47738B8(v487, v307, v308);
                if (!v199)
                {
                  goto LABEL_157;
                }

LABEL_71:

                v224 = *MEMORY[0x1E6993200];
                goto LABEL_72;
              }

              goto LABEL_151;
            }

            v231 = v417;
            sub_1E4773850(v195, v417, &qword_1ECF7CDD8, &qword_1E487F920);
            if (v488((v195 + v194), 1, v192) != 1)
            {
              v264 = v478;
              v265 = v195 + v194;
              v266 = v447;
              (*(v478 + 32))(v447, v265, v192);
              sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
              v267 = v195;
              v268 = sub_1E4878AFC();
              v269 = *(v264 + 8);
              v269(v266, v192);
              sub_1E47738B8(v434, &qword_1ECF7CDD8, &qword_1E487F920);
              v269(v231, v192);
              sub_1E47738B8(v267, &qword_1ECF7CDD8, &qword_1E487F920);
              v197 = v468;
              v198 = v467;
              v199 = v475;
              if (v268)
              {
                goto LABEL_101;
              }

LABEL_152:
              v307 = &qword_1ECF7D3F8;
              v308 = &unk_1E4881118;
              goto LABEL_156;
            }

            v232 = &v466;
            goto LABEL_150;
          }

LABEL_145:
          v304 = v427;
          sub_1E487738C();
          v472(v304, 0, 1, v192);
          v305 = *(v482 + 48);
          v306 = v424;
          sub_1E4773850(v304, v424, &qword_1ECF7CDD8, &qword_1E487F920);
          v196 = v306;
          sub_1E4773850(v487, v306 + v305, &qword_1ECF7CDD8, &qword_1E487F920);
          if (v488(v306, 1, v192) == 1)
          {
            sub_1E47738B8(v304, &qword_1ECF7CDD8, &qword_1E487F920);
            if (v488((v306 + v305), 1, v192) != 1)
            {
LABEL_151:
              v197 = v468;
              v198 = v467;
              v199 = v475;
              sub_1E47738B8(v196, &qword_1ECF7CFB0, &qword_1E487FBA8);
              goto LABEL_152;
            }

            sub_1E47738B8(v306, &qword_1ECF7CDD8, &qword_1E487F920);
            v197 = v468;
            v198 = v467;
            v199 = v475;
          }

          else
          {
            v231 = v418;
            sub_1E4773850(v306, v418, &qword_1ECF7CDD8, &qword_1E487F920);
            if (v488((v306 + v305), 1, v192) == 1)
            {
              v232 = &v459;
LABEL_150:
              sub_1E47738B8(*(v232 - 32), &qword_1ECF7CDD8, &qword_1E487F920);
              (*(v478 + 8))(v231, v192);
              goto LABEL_151;
            }

            v309 = v478;
            v310 = v306 + v305;
            v311 = v447;
            (*(v478 + 32))(v447, v310, v192);
            sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
            v312 = sub_1E4878AFC();
            v313 = *(v309 + 8);
            v313(v311, v192);
            sub_1E47738B8(v427, &qword_1ECF7CDD8, &qword_1E487F920);
            v313(v231, v192);
            sub_1E47738B8(v196, &qword_1ECF7CDD8, &qword_1E487F920);
            v197 = v468;
            v198 = v467;
            v199 = v475;
            if ((v312 & 1) == 0)
            {
              goto LABEL_152;
            }
          }

          sub_1E48778BC();
          sub_1E487794C();
          sub_1E48778CC();
          sub_1E487789C();
          goto LABEL_155;
        }

        sub_1E47738B8(v422, &qword_1ECF7CDD8, &qword_1E487F920);
        (*(v478 + 8))(v261, v175);
        v215 = v421;
      }

      sub_1E47738B8(v212, &qword_1ECF7CFB0, &qword_1E487FBA8);
      goto LABEL_97;
    }

    if (v474)
    {
      v233 = v409;
      sub_1E487738C();
      v472(v233, 0, 1, v175);
      v234 = *(v482 + 48);
      v235 = v404;
      sub_1E4773850(v233, v404, &qword_1ECF7CDD8, &qword_1E487F920);
      v236 = v235;
      sub_1E4773850(v487, v235 + v234, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v488(v235, 1, v175) == 1)
      {
        sub_1E47738B8(v233, &qword_1ECF7CDD8, &qword_1E487F920);
        v237 = v488((v235 + v234), 1, v175);
        v238 = v407;
        if (v237 == 1)
        {
          v192 = v175;
LABEL_128:
          sub_1E47738B8(v236, &qword_1ECF7CDD8, &qword_1E487F920);
          goto LABEL_186;
        }
      }

      else
      {
        v294 = v396;
        sub_1E4773850(v235, v396, &qword_1ECF7CDD8, &qword_1E487F920);
        if (v488((v235 + v234), 1, v175) != 1)
        {
          v351 = v478;
          v352 = v236 + v234;
          v353 = v447;
          (*(v478 + 32))(v447, v352, v175);
          sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
          v354 = v236;
          v355 = sub_1E4878AFC();
          v356 = *(v351 + 8);
          v356(v353, v483);
          sub_1E47738B8(v409, &qword_1ECF7CDD8, &qword_1E487F920);
          v356(v294, v483);
          v192 = v483;
          sub_1E47738B8(v354, &qword_1ECF7CDD8, &qword_1E487F920);
          v238 = v407;
          if (v355)
          {
            goto LABEL_186;
          }

          goto LABEL_126;
        }

        sub_1E47738B8(v409, &qword_1ECF7CDD8, &qword_1E487F920);
        (*(v478 + 8))(v294, v175);
        v238 = v407;
      }

      v192 = v175;
      sub_1E47738B8(v235, &qword_1ECF7CFB0, &qword_1E487FBA8);
LABEL_126:
      sub_1E487738C();
      v472(v238, 0, 1, v192);
      v295 = *(v482 + 48);
      v296 = v400;
      sub_1E4773850(v238, v400, &qword_1ECF7CDD8, &qword_1E487F920);
      v236 = v296;
      sub_1E4773850(v487, v296 + v295, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v488(v296, 1, v192) == 1)
      {
        sub_1E47738B8(v238, &qword_1ECF7CDD8, &qword_1E487F920);
        if (v488((v296 + v295), 1, v192) == 1)
        {
          goto LABEL_128;
        }

LABEL_141:
        sub_1E47738B8(v296, &qword_1ECF7CFB0, &qword_1E487FBA8);
        v193 = v434;
        goto LABEL_50;
      }

      v302 = v394;
      sub_1E4773850(v296, v394, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v488((v296 + v295), 1, v192) == 1)
      {
        sub_1E47738B8(v407, &qword_1ECF7CDD8, &qword_1E487F920);
        (*(v478 + 8))(v302, v192);
        goto LABEL_141;
      }

      v363 = v478;
      v364 = v236 + v295;
      v365 = v447;
      (*(v478 + 32))(v447, v364, v192);
      sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
      v366 = v236;
      v367 = sub_1E4878AFC();
      v368 = *(v363 + 8);
      v368(v365, v483);
      sub_1E47738B8(v407, &qword_1ECF7CDD8, &qword_1E487F920);
      v368(v302, v483);
      v192 = v483;
      sub_1E47738B8(v366, &qword_1ECF7CDD8, &qword_1E487F920);
      v193 = v434;
      if ((v367 & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_186:
      sub_1E47738B8(v487, &qword_1ECF7CDD8, &qword_1E487F920);
      v443(v464, *MEMORY[0x1E6993238], v445);
      sub_1E487787C();
      v461(v477, *MEMORY[0x1E6993210], v463);
      sub_1E487781C();
      sub_1E487791C();
      sub_1E48778CC();
      sub_1E487789C();
      sub_1E48777FC();
      sub_1E48778EC();
      sub_1E487827C();
      sub_1E487796C();
      sub_1E487777C();
      sub_1E487782C();
      sub_1E487827C();
      sub_1E487793C();
      sub_1E487783C();
      v369 = v402;
      sub_1E487738C();
      v370 = v192;
      v472(v369, 0, 1, v192);
      v371 = *(v482 + 48);
      v372 = v398;
      sub_1E4773850(v369, v398, &qword_1ECF7CDD8, &qword_1E487F920);
      sub_1E4773850(v481, v372 + v371, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v488(v372, 1, v192) == 1)
      {
        sub_1E47738B8(v369, &qword_1ECF7CDD8, &qword_1E487F920);
        if (v488((v372 + v371), 1, v192) == 1)
        {

          sub_1E47738B8(v372, &qword_1ECF7CDD8, &qword_1E487F920);
LABEL_202:
          v197 = v468;
          v198 = v467;
          v486 = sub_1E481E288(&unk_1F5E7B288);
          goto LABEL_157;
        }
      }

      else
      {
        v373 = v392;
        sub_1E4773850(v372, v392, &qword_1ECF7CDD8, &qword_1E487F920);
        if (v488((v372 + v371), 1, v370) != 1)
        {
          v384 = v478;
          v385 = v447;
          (*(v478 + 32))(v447, v372 + v371, v370);
          sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
          v386 = sub_1E4878AFC();
          v387 = *(v384 + 8);
          v387(v385, v370);
          sub_1E47738B8(v402, &qword_1ECF7CDD8, &qword_1E487F920);
          v387(v373, v370);
          sub_1E47738B8(v372, &qword_1ECF7CDD8, &qword_1E487F920);
          if (v386)
          {

            goto LABEL_202;
          }

LABEL_199:
          v197 = v468;
          v198 = v467;
          goto LABEL_157;
        }

        sub_1E47738B8(v402, &qword_1ECF7CDD8, &qword_1E487F920);
        (*(v478 + 8))(v373, v370);
      }

LABEL_198:
      sub_1E47738B8(v372, &qword_1ECF7CFB0, &qword_1E487FBA8);
      goto LABEL_199;
    }

    sub_1E487738C();
    v472(v189, 0, 1, v175);
    v271 = *(v482 + 48);
    v272 = v405;
    sub_1E4773850(v189, v405, &qword_1ECF7CDD8, &qword_1E487F920);
    v273 = v272;
    sub_1E4773850(v487, v272 + v271, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v488(v272, 1, v175) == 1)
    {
      sub_1E47738B8(v189, &qword_1ECF7CDD8, &qword_1E487F920);
      v274 = v488((v272 + v271), 1, v175);
      v275 = v408;
      if (v274 == 1)
      {
        v192 = v175;
LABEL_134:
        sub_1E47738B8(v273, &qword_1ECF7CDD8, &qword_1E487F920);
        goto LABEL_193;
      }
    }

    else
    {
      v297 = v397;
      sub_1E4773850(v272, v397, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v488((v272 + v271), 1, v175) != 1)
      {
        v357 = v478;
        v358 = v273 + v271;
        v359 = v447;
        (*(v478 + 32))(v447, v358, v175);
        sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
        v360 = v273;
        v361 = sub_1E4878AFC();
        v362 = *(v357 + 8);
        v362(v359, v483);
        sub_1E47738B8(v442, &qword_1ECF7CDD8, &qword_1E487F920);
        v362(v297, v483);
        v192 = v483;
        sub_1E47738B8(v360, &qword_1ECF7CDD8, &qword_1E487F920);
        v275 = v408;
        if (v361)
        {
          goto LABEL_193;
        }

        goto LABEL_132;
      }

      sub_1E47738B8(v442, &qword_1ECF7CDD8, &qword_1E487F920);
      (*(v478 + 8))(v297, v175);
      v275 = v408;
    }

    v192 = v175;
    sub_1E47738B8(v272, &qword_1ECF7CFB0, &qword_1E487FBA8);
LABEL_132:
    sub_1E487738C();
    v472(v275, 0, 1, v192);
    v298 = *(v482 + 48);
    v299 = v401;
    sub_1E4773850(v275, v401, &qword_1ECF7CDD8, &qword_1E487F920);
    v273 = v299;
    sub_1E4773850(v487, v299 + v298, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v488(v299, 1, v192) == 1)
    {
      sub_1E47738B8(v275, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v488((v299 + v298), 1, v192) == 1)
      {
        goto LABEL_134;
      }

LABEL_144:
      sub_1E47738B8(v299, &qword_1ECF7CFB0, &qword_1E487FBA8);
      goto LABEL_145;
    }

    v303 = v395;
    sub_1E4773850(v299, v395, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v488((v299 + v298), 1, v192) == 1)
    {
      sub_1E47738B8(v408, &qword_1ECF7CDD8, &qword_1E487F920);
      (*(v478 + 8))(v303, v192);
      goto LABEL_144;
    }

    v374 = v478;
    v375 = v273 + v298;
    v376 = v447;
    (*(v478 + 32))(v447, v375, v192);
    sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
    v377 = v273;
    v378 = sub_1E4878AFC();
    v379 = *(v374 + 8);
    v379(v376, v483);
    sub_1E47738B8(v408, &qword_1ECF7CDD8, &qword_1E487F920);
    v379(v303, v483);
    v192 = v483;
    sub_1E47738B8(v377, &qword_1ECF7CDD8, &qword_1E487F920);
    if ((v378 & 1) == 0)
    {
      goto LABEL_145;
    }

LABEL_193:
    sub_1E47738B8(v487, &qword_1ECF7CDD8, &qword_1E487F920);
    v443(v464, *MEMORY[0x1E6993238], v445);
    sub_1E487787C();
    v461(v477, *MEMORY[0x1E6993210], v463);
    sub_1E487781C();
    sub_1E487791C();
    sub_1E48778CC();
    sub_1E487789C();
    sub_1E48777FC();
    sub_1E48778EC();
    sub_1E487827C();
    sub_1E487796C();
    sub_1E487777C();
    sub_1E487782C();
    sub_1E487827C();
    sub_1E487793C();
    sub_1E487783C();
    v380 = v403;
    sub_1E487738C();
    v381 = v192;
    v472(v380, 0, 1, v192);
    v382 = *(v482 + 48);
    v372 = v399;
    sub_1E4773850(v380, v399, &qword_1ECF7CDD8, &qword_1E487F920);
    sub_1E4773850(v481, v372 + v382, &qword_1ECF7CDD8, &qword_1E487F920);
    if (v488(v372, 1, v192) == 1)
    {
      sub_1E47738B8(v380, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v488((v372 + v382), 1, v192) != 1)
      {
        goto LABEL_198;
      }

      sub_1E47738B8(v372, &qword_1ECF7CDD8, &qword_1E487F920);
    }

    else
    {
      v383 = v393;
      sub_1E4773850(v372, v393, &qword_1ECF7CDD8, &qword_1E487F920);
      if (v488((v372 + v382), 1, v381) == 1)
      {
        sub_1E47738B8(v403, &qword_1ECF7CDD8, &qword_1E487F920);
        (*(v478 + 8))(v383, v381);
        goto LABEL_198;
      }

      v388 = v478;
      v389 = v447;
      (*(v478 + 32))(v447, v372 + v382, v381);
      sub_1E481E5E4(&qword_1EE2B4650, MEMORY[0x1E6969610]);
      v390 = sub_1E4878AFC();
      v391 = *(v388 + 8);
      v391(v389, v381);
      sub_1E47738B8(v403, &qword_1ECF7CDD8, &qword_1E487F920);
      v391(v383, v381);
      sub_1E47738B8(v372, &qword_1ECF7CDD8, &qword_1E487F920);
      if ((v390 & 1) == 0)
      {
        goto LABEL_199;
      }
    }

    v197 = v468;
    v198 = v467;
    v486 = sub_1E481E288(&unk_1F5E7B2C8);
    goto LABEL_157;
  }

LABEL_63:

LABEL_64:
  v221 = v470;
  sub_1E47738B8(v487, &qword_1ECF7CDD8, &qword_1E487F920);
  v197 = v468;
  v198 = v467;
  v222 = v445;
  v223 = v455;
  if (!v161)
  {
    v443(v464, *MEMORY[0x1E6993230], v445);
    sub_1E487787C();
    sub_1E487777C();
    if (!v223)
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

LABEL_65:

  v443(v464, v437, v222);
  sub_1E487787C();
  sub_1E48778EC();
  sub_1E487782C();
  sub_1E487822C();
  sub_1E487793C();
  sub_1E487822C();
  sub_1E487796C();
  if (!v223)
  {
LABEL_70:

    if (!v161)
    {
      goto LABEL_157;
    }

    goto LABEL_71;
  }

LABEL_68:
  if (v221)
  {

    goto LABEL_70;
  }

  v224 = *MEMORY[0x1E6993200];
  v461(v477, v224, v463);
  sub_1E487781C();
  sub_1E487791C();
  sub_1E48778FC();
  sub_1E48777BC();
  sub_1E48777DC();
  sub_1E48778CC();
  sub_1E487789C();
  sub_1E48778BC();
  sub_1E487794C();
  sub_1E48786EC();
  sub_1E487775C();
  sub_1E487824C();
  sub_1E487786C();
  v230 = sub_1E4878C1C();
  if (v230 == 4 || v230 == 5)
  {
    sub_1E487778C();
    sub_1E48777AC();
  }

  if (!v161)
  {

    goto LABEL_157;
  }

  v247 = objc_opt_self();
  v248 = sub_1E4878B9C();

  v249 = v420;
  sub_1E487750C();
  v250 = sub_1E487756C();
  (*(v430 + 8))(v249, v431);
  v251 = [v247 overlayCalendarForCalendarIdentifier:v248 timezone:v250];

  if (v251)
  {
    v252 = v415;
    sub_1E487749C();

    v253 = v416;
    (*(v456 + 32))(v416, v252, v457);
    v254 = v471;
    v255 = v465;
    v256 = v466;
    (*(v471 + 104))(v465, *MEMORY[0x1E6969A48], v466);
    v257 = sub_1E487752C();
    (*(v254 + 8))(v255, v256);
    if (v257 % 10 == 1)
    {
      v258 = sub_1E4878C1C();

      v197 = v468;
      if (v258 == 5)
      {
        v300 = sub_1E487779C();
        *v301 = *v301 + 0.3;
        v300(v489, 0);
        goto LABEL_136;
      }

      if (v258 == 4)
      {
        v259 = sub_1E487779C();
        *v260 = *v260 + 0.4;
        v259(v489, 0);
LABEL_136:
        sub_1E48777DC();
      }
    }

    else
    {

      v197 = v468;
    }

    (*(v456 + 8))(v253, v457);

    goto LABEL_138;
  }

  v197 = v468;
LABEL_138:
  v198 = v467;
LABEL_72:
  v225 = v477;
  sub_1E487780C();
  v226 = v460;
  v227 = v463;
  v461(v460, v224, v463);
  sub_1E481E5E4(&qword_1EE2B4630, MEMORY[0x1E6993218]);
  v228 = sub_1E4878AFC();
  v229 = v476[1];
  v229(v226, v227);
  v229(v225, v227);
  if ((v228 & 1) == 0)
  {
    v428(v458, *MEMORY[0x1E6993240], v459);
    sub_1E487788C();
    sub_1E48778BC();
    sub_1E487794C();
    sub_1E487792C();
    sub_1E487822C();
    sub_1E487793C();
    sub_1E487822C();
    sub_1E487796C();
    sub_1E48778EC();
    sub_1E487782C();
    sub_1E487789C();
  }

LABEL_157:
  v314 = v450;
  sub_1E48773CC();
  v315 = sub_1E48773AC();
  v317 = v316;
  (*(v451 + 8))(v314, v452);
  if (v315 == 1853120876 && v317 == 0xE400000000000000)
  {
  }

  else
  {
    v318 = sub_1E48790EC();

    if ((v318 & 1) == 0)
    {
      v320 = *(v471 + 104);
      goto LABEL_171;
    }
  }

  v319 = v471;
  v320 = *(v471 + 104);
  v321 = v465;
  v322 = v466;
  v320(v465, *MEMORY[0x1E6969A48], v466);
  v323 = sub_1E487752C();
  (*(v319 + 8))(v321, v322);
  v324 = sub_1E481E288(&unk_1F5E7B308);
  v325 = 0.0;
  if (*(v324 + 16))
  {
    v326 = v486;
    v327 = sub_1E481DD30(v323);
    v328 = v463;
    if (v329)
    {
      v325 = *(*(v324 + 56) + 8 * v327);
    }
  }

  else
  {
    v326 = v486;
    v328 = v463;
  }

  v330 = sub_1E487790C();
  *v331 = v325 + *v331;
  v330(v489, 0);
  v332 = v477;
  sub_1E487780C();
  v333 = v460;
  v461(v460, v446, v328);
  sub_1E481E5E4(&qword_1EE2B4630, MEMORY[0x1E6993218]);
  v334 = sub_1E4878AFC();
  v335 = v476[1];
  v335(v333, v328);
  v335(v332, v328);
  v486 = v326;
  if (v334)
  {
    v197 = v468;
    v198 = v467;
  }

  else
  {
    v197 = v468;
    v198 = v467;
    if (v323 == 1)
    {
      sub_1E48777BC();
    }
  }

LABEL_171:
  v336 = v465;
  v337 = v466;
  v320(v465, *MEMORY[0x1E6969AB0], v466);
  v338 = sub_1E487752C();
  (*(v471 + 8))(v336, v337);
  if (*(v486 + 16) && (v339 = sub_1E481DD30(v338), (v340 & 1) != 0))
  {
    v341 = *(*(v486 + 56) + 8 * v339);

    v342 = v454;
  }

  else
  {

    sub_1E48777CC();
    v342 = v454;
    if (v343 != 0.0)
    {
      sub_1E48777CC();
    }
  }

  sub_1E48777DC();
  v344 = v453;
  sub_1E487892C();
  v345 = sub_1E48788FC();
  v346 = *(v198 + 8);
  v346(v344, v197);
  if (v345)
  {
    v347 = v438;
    sub_1E48774EC();
    MEMORY[0x1E6918080](v347);
    sub_1E47738B8(v347, &qword_1ECF7BE58, &unk_1E487DDB0);
  }

  else
  {
    sub_1E48786EC();
  }

  sub_1E487776C();
  v348 = sub_1E487732C();
  (*(*(v348 - 8) + 8))(v479, v348);
  v349 = sub_1E487744C();
  (*(*(v349 - 8) + 8))(v480, v349);
  (*(v456 + 8))(v484, v457);
  v346(v342, v197);
  return sub_1E47738B8(v481, &qword_1ECF7CDD8, &qword_1E487F920);
}

uint64_t sub_1E481D818@<X0>(_WORD *a1@<X8>)
{
  sub_1E4878D2C();
  sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 256;
  return result;
}

void sub_1E481D918()
{
  type metadata accessor for CalendarDateTimelineEntry(319);
  if (v0 <= 0x3F)
  {
    sub_1E481DAA0(319, &qword_1EE2B16B8, MEMORY[0x1E6969AE8]);
    if (v1 <= 0x3F)
    {
      sub_1E481DAA0(319, &qword_1EE2B16C0, MEMORY[0x1E6969770]);
      if (v2 <= 0x3F)
      {
        sub_1E481DAA0(319, &qword_1EE2B1678, MEMORY[0x1E697F6A8]);
        if (v3 <= 0x3F)
        {
          sub_1E478305C();
          if (v4 <= 0x3F)
          {
            sub_1E481DAA0(319, &qword_1EE2B1698, MEMORY[0x1E6985780]);
            if (v5 <= 0x3F)
            {
              sub_1E481DAA0(319, &unk_1EE2B16A0, type metadata accessor for ViewMetrics);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E481DAA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4877B4C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E481DB10()
{
  result = qword_1EE2B1550;
  if (!qword_1EE2B1550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3E0, &qword_1E48810C8);
    sub_1E487798C();
    sub_1E481E5E4(&qword_1EE2B4628, MEMORY[0x1E6993258]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1550);
  }

  return result;
}

uint64_t sub_1E481DBFC(uint64_t a1)
{
  v2 = sub_1E487744C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E4877E7C();
}

unint64_t sub_1E481DCC4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1E487914C();
  sub_1E487820C();
  v4 = sub_1E487917C();

  return sub_1E481DEA0(a1, v4);
}

unint64_t sub_1E481DD30(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1E487913C();

  return sub_1E481DF58(a1, v4);
}

unint64_t sub_1E481DD74(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1E487732C();
  sub_1E481E5E4(&qword_1EE2B5A08, MEMORY[0x1E6969530]);
  v5 = sub_1E4878A9C();

  return sub_1E481DFC4(a1, v5);
}

unint64_t sub_1E481DE0C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1E4878BDC();
  sub_1E487914C();
  sub_1E4878C0C();
  v4 = sub_1E487917C();

  return sub_1E481E184(a1, v4);
}

unint64_t sub_1E481DEA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);

      v7 = sub_1E48781DC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E481DF58(uint64_t a1, uint64_t a2)
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

unint64_t sub_1E481DFC4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1E487732C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
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
      sub_1E481E5E4(&qword_1EE2B59F8, MEMORY[0x1E6969530]);
      v16 = sub_1E4878AFC();
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

unint64_t sub_1E481E184(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1E4878BDC();
      v9 = v8;
      if (v7 == sub_1E4878BDC() && v9 == v10)
      {
        break;
      }

      v12 = sub_1E48790EC();

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

unint64_t sub_1E481E288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D400, &qword_1E4881128);
    v3 = sub_1E487908C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1E481DD30(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E481E368()
{
  result = qword_1EE2B1528;
  if (!qword_1EE2B1528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3F0, &qword_1E4881110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7D3E0, &qword_1E48810C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7BE98, &qword_1E487C870);
    sub_1E481DB10();
    sub_1E4773680(&qword_1EE2B16D0, &qword_1ECF7BE98, &qword_1E487C870);
    swift_getOpaqueTypeConformance2();
    sub_1E4773680(&qword_1EE2B5A58, &qword_1ECF7BA30, &qword_1E487AD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1528);
  }

  return result;
}

unint64_t sub_1E481E4BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D410, &qword_1E4881220);
    v3 = sub_1E487908C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E4773850(v4, &v11, &qword_1ECF7D418, &qword_1E4881228);
      v5 = v11;
      result = sub_1E481DE0C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1E479B278(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E481E5E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E481E62C(uint64_t a1, int a2)
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

uint64_t sub_1E481E674(uint64_t result, int a2, int a3)
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

void *sub_1E481E70C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  LODWORD(v82) = a5;
  v83 = a2;
  v84 = a4;
  v74 = a3;
  v6 = sub_1E487894C();
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1E4878A4C();
  v86 = *(v88 - 8);
  v9 = *(v86 + 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E48789CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E487753C();
  v87 = *(v16 - 8);
  v17 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E487732C();
  v89 = *(v20 - 8);
  v90 = v20;
  v21 = *(v89 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v78 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v72 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v72 - v27;
  v29 = [objc_opt_self() shared];
  v30 = [v29 stopTimeDemoModeActive];

  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v32 = result;
    sub_1E48772FC();

    v82 = v19;
    sub_1E4877A7C();
    sub_1E48789AC();
    v80 = v30;
    if (v30)
    {
      v33 = a1;
      v34 = v26;
      sub_1E48789BC();
      (*(v12 + 8))(v33, v11);
      (*(v12 + 32))(v33, v15, v11);
      v35 = 1;
    }

    else
    {
      v34 = v26;
      v35 = 3;
    }

    v37 = v89;
    v36 = v90;
    v38 = v88;
    v39 = v85;
    v40 = v86;
    v79 = v35;
    if (qword_1EE2B22D0 != -1)
    {
      swift_once();
    }

    v41 = sub_1E4877ADC();
    __swift_project_value_buffer(v41, qword_1ECF7EA98);
    v42 = *(v37 + 16);
    v43 = v34;
    v86 = v28;
    v42(v34, v28, v36);
    (*(v40 + 16))(v39, v83, v38);
    v44 = v84;

    v45 = v44;
    v46 = sub_1E4877ABC();
    v47 = sub_1E4878DEC();

    LODWORD(v83) = v47;
    v48 = os_log_type_enabled(v46, v47);
    v81 = v16;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v91[0] = v73;
      *v49 = 136446978;
      *(v49 + 4) = sub_1E47A0DEC(v74, v45, v91);
      *(v49 + 12) = 2082;
      sub_1E48203DC(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
      v50 = sub_1E48790CC();
      v52 = v51;
      v53 = *(v37 + 8);
      v53(v43, v90);
      v54 = sub_1E47A0DEC(v50, v52, v91);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2048;
      v55 = v79;
      *(v49 + 24) = v79;
      *(v49 + 32) = 2082;
      v56 = v39;
      v57 = v75;
      sub_1E4878A3C();
      sub_1E48203DC(&qword_1EE2B4700, MEMORY[0x1E6985840]);
      v58 = v77;
      v59 = sub_1E48790CC();
      v61 = v60;
      (*(v76 + 8))(v57, v58);
      (*(v40 + 8))(v56, v88);
      v62 = sub_1E47A0DEC(v59, v61, v91);

      *(v49 + 34) = v62;
      _os_log_impl(&dword_1E475C000, v46, v83, "Timeline entries requested for %{public}s with start date: %{public}s, limit: %ld, family: %{public}s", v49, 0x2Au);
      v63 = v73;
      swift_arrayDestroy();
      v36 = v90;
      MEMORY[0x1E6919FE0](v63, -1, -1);
      MEMORY[0x1E6919FE0](v49, -1, -1);

      v64 = v87;
    }

    else
    {

      (*(v40 + 8))(v39, v38);
      v53 = *(v37 + 8);
      v53(v43, v36);
      v64 = v87;
      v55 = v79;
    }

    v65 = v86;
    v66 = v55;
    v67 = v82;
    v68 = sub_1E47E5784(v86, v66, v82);
    if (v80)
    {
      v69 = v78;
      v70 = sub_1E487731C();
      MEMORY[0x1EEE9AC00](v70);
      *(&v72 - 2) = v69;
      v71 = sub_1E4856878(sub_1E48203BC, (&v72 - 4), v68);

      (*(v64 + 8))(v67, v81);
      v53(v65, v36);
      v53(v69, v36);
      return v71;
    }

    else
    {
      (*(v64 + 8))(v67, v81);
      v53(v65, v36);
    }

    return v68;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E481EF24()
{
  v0 = sub_1E4877ADC();
  __swift_allocate_value_buffer(v0, qword_1ECF7EA98);
  v1 = __swift_project_value_buffer(v0, qword_1ECF7EA98);
  if (qword_1ECF7B640 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ECF7EA30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1E481EFEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E487732C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = [objc_opt_self() shared];
  v11 = [v10 stopTimeDemoModeActive];

  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v13 = result;
    sub_1E48772FC();

    sub_1E487731C();
    if (v11)
    {
      v14 = v9;
    }

    else
    {
      v14 = v7;
    }

    if (!v11)
    {
      v7 = v9;
    }

    (*(v3 + 8))(v14, v2);
    return (*(v3 + 32))(a1, v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E481F178(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v87 = a5;
  v82 = a2;
  v83 = a4;
  v81 = a3;
  v84 = a1;
  v78 = type metadata accessor for CalendarDateTimelineEntry(0);
  v5 = *(*(v78 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v78);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v70 - v9;
  v11 = sub_1E487894C();
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4878A4C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E487732C();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v77 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v70 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v70 - v27;
  v85 = objc_opt_self();
  result = [v85 CalSimulatedDateForNow];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v30 = result;
  v79 = v8;
  v80 = v10;
  sub_1E48772FC();

  if (qword_1EE2B22D0 != -1)
  {
    swift_once();
  }

  v31 = sub_1E4877ADC();
  v32 = __swift_project_value_buffer(v31, qword_1ECF7EA98);
  v33 = v20[2];
  v76 = v28;
  v33(v26, v28, v19);
  v34 = v14;
  (*(v15 + 16))(v18, v84, v14);
  v35 = v87;

  v84 = v32;
  v36 = sub_1E4877ABC();
  v37 = sub_1E4878DEC();

  v38 = os_log_type_enabled(v36, v37);
  v86 = v20;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v70 = v34;
    v40 = v39;
    v71 = swift_slowAlloc();
    v88[0] = v71;
    *v40 = 136446722;
    *(v40 + 4) = sub_1E47A0DEC(v83, v35, v88);
    *(v40 + 12) = 2082;
    sub_1E48203DC(&qword_1EE2B59F0, MEMORY[0x1E6969530]);
    v41 = sub_1E48790CC();
    v43 = v42;
    v75 = v20[1];
    v75(v26, v19);
    v44 = sub_1E47A0DEC(v41, v43, v88);

    *(v40 + 14) = v44;
    *(v40 + 22) = 2082;
    v45 = v72;
    sub_1E4878A3C();
    sub_1E48203DC(&qword_1EE2B4700, MEMORY[0x1E6985840]);
    v46 = v74;
    v47 = sub_1E48790CC();
    v49 = v48;
    (*(v73 + 8))(v45, v46);
    (*(v15 + 8))(v18, v70);
    v50 = sub_1E47A0DEC(v47, v49, v88);

    *(v40 + 24) = v50;
    _os_log_impl(&dword_1E475C000, v36, v37, "Snapshot entry requested for %{public}s with start date: %{public}s, family: %{public}s", v40, 0x20u);
    v51 = v71;
    swift_arrayDestroy();
    MEMORY[0x1E6919FE0](v51, -1, -1);
    MEMORY[0x1E6919FE0](v40, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v34);
    v75 = v20[1];
    v75(v26, v19);
  }

  v52 = v19;
  v54 = v79;
  v53 = v80;
  result = [v85 CalSimulatedDateForNow];
  if (!result)
  {
    goto LABEL_13;
  }

  v55 = result;
  v56 = v77;
  sub_1E48772FC();

  sub_1E481EFEC(v53);
  v57 = v78;
  v58 = *(v78 + 24);
  v59 = sub_1E487753C();
  (*(*(v59 - 8) + 56))(v53 + v58, 1, 1, v59);
  (v86[4])(v53 + *(v57 + 20), v56, v19);
  sub_1E479D35C(v53, v54);
  v60 = v87;

  v61 = sub_1E4877ABC();
  v62 = sub_1E4878DEC();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v88[0] = v64;
    *v63 = 136446466;
    *(v63 + 4) = sub_1E47A0DEC(v83, v60, v88);
    *(v63 + 12) = 2082;
    v65 = sub_1E47F86AC();
    v66 = v52;
    v68 = v67;
    sub_1E4820424(v54);
    v69 = sub_1E47A0DEC(v65, v68, v88);
    v52 = v66;

    *(v63 + 14) = v69;
    _os_log_impl(&dword_1E475C000, v61, v62, "Calling current entry completion for %{public}s with entry: %{public}s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6919FE0](v64, -1, -1);
    MEMORY[0x1E6919FE0](v63, -1, -1);
  }

  else
  {

    sub_1E4820424(v54);
  }

  v82(v53);
  sub_1E4820424(v53);
  return (v75)(v76, v52);
}

uint64_t sub_1E481F948(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v77 = a3;
  v75 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D420, &qword_1E48812E8);
  v73 = *(v76 - 8);
  v10 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D428, &unk_1E48812F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v74 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v69 = &v63 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v63 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v63 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v63 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v63 - v28;
  v30 = &v63 + *(v27 + 48) - v28;
  v71 = a4;
  *(&v63 - v28) = sub_1E481E70C(v30, a1, a4, a5, a6);
  if (qword_1EE2B22D0 != -1)
  {
    swift_once();
  }

  v31 = sub_1E4877ADC();
  __swift_project_value_buffer(v31, qword_1ECF7EA98);
  sub_1E48202E4(v29, v26);
  sub_1E48202E4(v29, v23);

  v32 = sub_1E4877ABC();
  v33 = sub_1E4878DEC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v66 = v23;
    v67 = v33;
    v35 = v34;
    v68 = swift_slowAlloc();
    v78 = v68;
    *v35 = 136446722;
    *(v35 + 4) = sub_1E47A0DEC(v71, a5, &v78);
    *(v35 + 12) = 2048;
    sub_1E48202E4(v26, v20);
    v36 = *v20;
    v70 = v12;
    v71 = v20;
    v37 = *(v12 + 48);
    v38 = *(v36 + 16);

    v39 = sub_1E48789CC();
    v40 = *(v39 - 8);
    v41 = *(v40 + 8);
    v65 = v40 + 8;
    v41(&v71[v37], v39);
    sub_1E4820354(v26);
    *(v35 + 14) = v38;
    *(v35 + 22) = 2082;
    v42 = v23;
    v43 = v69;
    sub_1E48202E4(v42, v69);
    if (*(*v43 + 16) < 5uLL)
    {
      v44 = *(*v43 + 16);
    }

    v64 = *(v70 + 48);
    v45 = *(type metadata accessor for CalendarDateTimelineEntry(0) - 8);
    v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v41((v43 + v64), v39);
    v12 = v70;
    v47 = sub_1E4878E9C();
    v49 = v48;

    sub_1E4820354(v66);
    v50 = sub_1E47A0DEC(v47, v49, &v78);

    *(v35 + 24) = v50;
    v20 = v71;
    v51 = v32;
    _os_log_impl(&dword_1E475C000, v32, v67, "Calling timeline entries completion for %{public}s with %ld entries: (first 5) %{public}s", v35, 0x20u);
    v52 = v68;
    swift_arrayDestroy();
    MEMORY[0x1E6919FE0](v52, -1, -1);
    MEMORY[0x1E6919FE0](v35, -1, -1);
  }

  else
  {
    sub_1E4820354(v26);

    sub_1E4820354(v23);
  }

  sub_1E48202E4(v29, v20);
  v53 = v20;
  v54 = *v20;
  v55 = *(v12 + 48);
  v56 = v12;
  v57 = v74;
  sub_1E48202E4(v29, v74);
  v58 = *v57;

  v59 = *(v56 + 48);
  type metadata accessor for CalendarDateTimelineEntry(0);
  sub_1E48203DC(&qword_1EE2B4608, type metadata accessor for CalendarDateTimelineEntry);
  v60 = v72;
  sub_1E4878A5C();
  v61 = sub_1E48789CC();
  (*(*(v61 - 8) + 8))(&v53[v55], v61);
  v75(v60);
  (*(v73 + 8))(v60, v76);
  return sub_1E4820354(v29);
}

uint64_t sub_1E481FF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E487732C();
  v7 = *(*(v6 - 8) + 16);
  v7(a3, a2, v6);
  v8 = type metadata accessor for CalendarDateTimelineEntry(0);
  v7(a3 + *(v8 + 20), a1 + *(v8 + 20), v6);
  v9 = *(v8 + 24);
  v10 = sub_1E487753C();
  return (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
}

id sub_1E4820008@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E487732C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v8 = result;
    sub_1E48772FC();

    sub_1E481EFEC(a1);
    v9 = type metadata accessor for CalendarDateTimelineEntry(0);
    v10 = *(v9 + 24);
    v11 = sub_1E487753C();
    (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
    return (*(v3 + 32))(a1 + *(v9 + 20), v6, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E482017C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x1E6985950] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E478CC5C;

  return MEMORY[0x1EEDE8200](a1, a2, a3);
}

uint64_t sub_1E4820230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x1E6985958] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E478EC70;

  return MEMORY[0x1EEDE8210](a1, a2, a3);
}

uint64_t sub_1E48202E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D428, &unk_1E48812F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4820354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7D428, &unk_1E48812F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E48203DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4820424(uint64_t a1)
{
  v2 = type metadata accessor for CalendarDateTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ViewMetrics.__allocating_init(widgetMargins:widgetLargeContentSizeMargins:widgetTightMargins:horizontalMonthViewMarginDelta:eventBackgroundPadding:eventBackgroundCornerRadius:colorBarWidth:spacingBetweenColorBarAndText:spacingBetweenIconAndTextDelta:horizontalSpacingBetweenColorBars:allDayCirclesFrameSizeRatio:usePrivacyAnnotations:primaryFont:secondaryFont:showsAttendeesLine:showsDateLine:)(char a1, uint64_t a2, uint64_t a3, char a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v30 = *(v19 + 48);
  v31 = *(v19 + 52);
  v32 = swift_allocObject();
  sub_1E487758C();
  *(v32 + 16) = a6;
  *(v32 + 24) = a7;
  *(v32 + 32) = a8;
  *(v32 + 40) = a9;
  *(v32 + 48) = a10;
  *(v32 + 56) = a11;
  *(v32 + 64) = a12;
  *(v32 + 72) = a13;
  *(v32 + 88) = a17;
  *(v32 + 104) = a18;
  *(v32 + 112) = a19;
  *(v32 + 120) = a1;
  *(v32 + 128) = a2;
  *(v32 + 136) = a3;
  *(v32 + 144) = a4;
  *(v32 + 145) = a5;
  *(v32 + 146) = 1;
  *(v32 + 80) = 0x4020000000000000;
  *(v32 + 96) = 0x4008000000000000;
  return v32;
}

uint64_t View.viewMetrics(_:)()
{
  swift_getKeyPath();
  sub_1E487850C();
}

double ViewMetrics.verticalPadding(respecting:)(uint64_t a1)
{
  v3 = sub_1E4877F9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E697F688], v3);
  v8 = sub_1E4877F8C();
  v9 = sub_1E48217E4(a1, v8);
  v11 = v10;

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  v13 = sub_1E4877F8C();
  v14 = sub_1E48217E4(v7, v13);
  v16 = v15;

  (*(v4 + 8))(v7, v3);
  if ((v16 & 1) == 0)
  {
    if (v14 < v12)
    {
      goto LABEL_6;
    }

LABEL_8:
    v17 = 16;
    return *(v1 + v17);
  }

  if (v12 <= 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17 = 24;
  return *(v1 + v17);
}

uint64_t ViewMetrics.init(widgetMargins:widgetLargeContentSizeMargins:widgetTightMargins:horizontalMonthViewMarginDelta:eventBackgroundPadding:eventBackgroundCornerRadius:colorBarWidth:spacingBetweenColorBarAndText:spacingBetweenIconAndTextDelta:horizontalSpacingBetweenColorBars:allDayCirclesFrameSizeRatio:usePrivacyAnnotations:primaryFont:secondaryFont:showsAttendeesLine:showsDateLine:)(char a1, uint64_t a2, uint64_t a3, char a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1E487758C();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  *(v19 + 32) = a8;
  *(v19 + 40) = a9;
  *(v19 + 48) = a10;
  *(v19 + 56) = a11;
  *(v19 + 64) = a12;
  *(v19 + 72) = a13;
  *(v19 + 88) = a17;
  *(v19 + 104) = a18;
  *(v19 + 112) = a19;
  *(v19 + 120) = a1;
  *(v19 + 128) = a2;
  *(v19 + 136) = a3;
  *(v19 + 144) = a4;
  *(v19 + 145) = a5;
  *(v19 + 146) = 1;
  *(v19 + 80) = 0x4020000000000000;
  *(v19 + 96) = 0x4008000000000000;
  return v19;
}

uint64_t ViewMetrics.__allocating_init(widgetMargins:widgetLargeContentSizeMargins:widgetTightMargins:horizontalMonthViewMarginDelta:eventBackgroundPadding:eventBackgroundCornerRadius:colorBarWidth:spacingBetweenColorBarAndText:spacingBetweenIconAndText:spacingBetweenIconAndTextDelta:secondarySpacingBetweenIconAndText:horizontalSpacingBetweenColorBars:allDayCirclesFrameSizeRatio:usePrivacyAnnotations:primaryFont:secondaryFont:showsAttendeesLine:showsDateLine:showsLeadingIcons:)(char a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  v33 = *(v19 + 48);
  v34 = *(v19 + 52);
  v35 = swift_allocObject();
  sub_1E487758C();
  *(v35 + 16) = a7;
  *(v35 + 24) = a8;
  *(v35 + 32) = a9;
  *(v35 + 40) = a10;
  *(v35 + 48) = a11;
  *(v35 + 56) = a12;
  *(v35 + 64) = a13;
  *(v35 + 72) = a14;
  *(v35 + 80) = a17;
  *(v35 + 96) = a18;
  *(v35 + 112) = a19;
  *(v35 + 120) = a1;
  *(v35 + 128) = a2;
  *(v35 + 136) = a3;
  *(v35 + 144) = a4;
  *(v35 + 145) = a5;
  *(v35 + 146) = a6;
  return v35;
}

uint64_t ViewMetrics.init(widgetMargins:widgetLargeContentSizeMargins:widgetTightMargins:horizontalMonthViewMarginDelta:eventBackgroundPadding:eventBackgroundCornerRadius:colorBarWidth:spacingBetweenColorBarAndText:spacingBetweenIconAndText:spacingBetweenIconAndTextDelta:secondarySpacingBetweenIconAndText:horizontalSpacingBetweenColorBars:allDayCirclesFrameSizeRatio:usePrivacyAnnotations:primaryFont:secondaryFont:showsAttendeesLine:showsDateLine:showsLeadingIcons:)(char a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  sub_1E487758C();
  *(v19 + 16) = a7;
  *(v19 + 24) = a8;
  *(v19 + 32) = a9;
  *(v19 + 40) = a10;
  *(v19 + 48) = a11;
  *(v19 + 56) = a12;
  *(v19 + 64) = a13;
  *(v19 + 72) = a14;
  *(v19 + 80) = a17;
  *(v19 + 96) = a18;
  *(v19 + 112) = a19;
  *(v19 + 120) = a1;
  *(v19 + 128) = a2;
  *(v19 + 136) = a3;
  *(v19 + 144) = a4;
  *(v19 + 145) = a5;
  *(v19 + 146) = a6;
  return v19;
}

uint64_t ViewMetrics.deinit()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 136);

  v3 = OBJC_IVAR____TtC14CalendarWidget11ViewMetrics___observationRegistrar;
  v4 = sub_1E487759C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ViewMetrics.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 17);

  v3 = OBJC_IVAR____TtC14CalendarWidget11ViewMetrics___observationRegistrar;
  v4 = sub_1E487759C();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_1E4820C50()
{
  v0 = sub_1E48782AC();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E48782EC();
  v5 = *MEMORY[0x1E6980EA0];
  v6 = v1[13];
  v6(v4, v5, v0);
  sub_1E48782CC();

  v7 = v1[1];
  v7(v4, v0);
  v8 = sub_1E48781FC();

  sub_1E48782EC();
  v6(v4, v5, v0);
  v9 = sub_1E48782CC();

  v7(v4, v0);
  v10 = type metadata accessor for ViewMetrics();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_1E487758C();
  *(v13 + 16) = xmmword_1E487BC80;
  *(v13 + 32) = xmmword_1E487BC90;
  *(v13 + 48) = xmmword_1E487BCB0;
  *(v13 + 64) = xmmword_1E4881300;
  *(v13 + 112) = 0x3FF0000000000000;
  *(v13 + 120) = 1;
  *(v13 + 128) = v8;
  *(v13 + 136) = v9;
  *(v13 + 144) = 1;
  *(v13 + 146) = 1;
  result = 8.0;
  __asm { FMOV            V1.2D, #3.0 }

  *(v13 + 80) = xmmword_1E487BCC0;
  *(v13 + 96) = _Q1;
  qword_1EE2B3B80 = v13;
  return result;
}

uint64_t sub_1E4820E50@<X0>(void *a1@<X8>)
{
  if (qword_1EE2B3B78 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EE2B3B80;
}

uint64_t EnvironmentValues.viewMetrics.getter()
{
  sub_1E48218D4();
  sub_1E4877F2C();
  return v1;
}

uint64_t sub_1E4820F00@<X0>(void *a1@<X8>)
{
  sub_1E48218D4();
  result = sub_1E4877F2C();
  *a1 = v3;
  return result;
}

uint64_t sub_1E4820F50(uint64_t *a1)
{
  v2 = *a1;
  sub_1E48218D4();

  return sub_1E4877F3C();
}

uint64_t (*EnvironmentValues.viewMetrics.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1E48218D4();
  sub_1E4877F2C();
  return sub_1E482104C;
}

uint64_t sub_1E482104C(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_1E4877F3C();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_1E4877F3C();
  }
}