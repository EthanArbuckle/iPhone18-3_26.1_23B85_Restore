uint64_t sub_21A1525E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A152628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A152670(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21A1526B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CookingSession();
  sub_21A1525E0(&qword_2811B80E0, type metadata accessor for CookingSession);
  KeyPath = swift_getKeyPath();
  v3 = sub_21A15275C(KeyPath, MEMORY[0x277D84F90]);

  *a1 = v3;
  return result;
}

uint64_t sub_21A15275C(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v3 = type metadata accessor for CookingSession();
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v57 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v50 = &v49 - v9;
  v10 = sub_21A176C98(&qword_27CCFEB38);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v49 - v16;
  v18 = sub_21A176C98(&qword_27CD039E0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = (&v49 - v20);
  v51 = a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    sub_21A176C98(&qword_27CD039E8);
    v23 = sub_21A2F8194();
  }

  else
  {
    v23 = MEMORY[0x277D84F98];
  }

  v58 = v23;
  v54 = (v56 + 56);
  v24 = (v56 + 48);
  swift_bridgeObjectRetain_n();

  v25 = 0;
  for (i = v22; ; v22 = i)
  {
    if (v25 == v22)
    {
      v26 = 1;
      v25 = v22;
    }

    else
    {
      if (v25 >= v22)
      {
        goto LABEL_25;
      }

      sub_21A270888(v51 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v25, v17, type metadata accessor for CookingSession);
      v27 = __OFADD__(v25++, 1);
      if (v27)
      {
        goto LABEL_26;
      }

      v26 = 0;
    }

    v28 = v55;
    (*v54)(v17, v26, 1, v55);
    sub_21A149B18(v17, v14, &qword_27CCFEB38);
    if ((*v24)(v14, 1, v28) == 1)
    {
      v29 = sub_21A176C98(&qword_27CD039F0);
      (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    }

    else
    {
      v30 = v50;
      sub_21A2708F0(v14, v50, type metadata accessor for CookingSession);
      v31 = sub_21A176C98(&qword_27CD039F0);
      v32 = *(v31 + 48);
      swift_getAtKeyPath();
      sub_21A2708F0(v30, v21 + v32, type metadata accessor for CookingSession);
      (*(*(v31 - 8) + 56))(v21, 0, 1, v31);
    }

    v33 = sub_21A176C98(&qword_27CD039F0);
    if ((*(*(v33 - 8) + 48))(v21, 1, v33) == 1)
    {

      swift_bridgeObjectRelease_n();
      return v23;
    }

    v34 = *(v33 + 48);
    v36 = *v21;
    v35 = v21[1];
    sub_21A2708F0(v21 + v34, v57, type metadata accessor for CookingSession);
    v38 = sub_21A261F58(v36, v35);
    v39 = v23[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      break;
    }

    v42 = v37;
    if (v23[3] < v41)
    {
      sub_21A26DF58(v41, 1, type metadata accessor for CookingSession, &qword_27CD039E8, &unk_21A30E718, type metadata accessor for CookingSession);
      v43 = sub_21A261F58(v36, v35);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_28;
      }

      v38 = v43;
    }

    v23 = v58;
    if (v42)
    {

      sub_21A26F8DC(v57, v23[7] + *(v56 + 72) * v38, type metadata accessor for CookingSession);
    }

    else
    {
      v58[(v38 >> 6) + 8] |= 1 << v38;
      v45 = (v23[6] + 16 * v38);
      *v45 = v36;
      v45[1] = v35;
      sub_21A2708F0(v57, v23[7] + *(v56 + 72) * v38, type metadata accessor for CookingSession);
      v46 = v23[2];
      v27 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v27)
      {
        goto LABEL_27;
      }

      v23[2] = v47;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  result = sub_21A2F83D4();
  __break(1u);
  return result;
}

uint64_t sub_21A152D20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A146070;

  return sub_21A152F6C(a1, v4);
}

uint64_t sub_21A152DEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFF048);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A152EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CCFF048);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A152F6C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_21A145F40;

  return v5(v2 + 16);
}

uint64_t sub_21A153080(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A146070;

  return sub_21A153154(a1, v4, v5, v6);
}

uint64_t sub_21A153154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_21A145D14;

  return sub_21A1534B4();
}

uint64_t sub_21A1531E8()
{
  result = type metadata accessor for CookingSessionCommandAction(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21A153264()
{
  sub_21A13D428(319, qword_2811B3DD0);
  if (v0 <= 0x3F)
  {
    sub_21A13D428(319, qword_2811B7570);
    if (v1 <= 0x3F)
    {
      sub_21A15375C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_21A15330C()
{
  v1 = v0[2];
  v2 = sub_21A1534D4();
  v3 = sub_21A153B7C(v2);
  v0[3] = v3;
  v4 = *(v3 + 16);
  v5 = *(v2 + 16);

  v6 = *(v1 + 120);
  *(v1 + 120) = v3;
  v7 = *(v1 + 128);
  *(v1 + 128) = 1;

  sub_21A1448F0(v6, v7);
  if (v4 == v5)
  {
    v8 = v0[1];
    v9 = v0[3];

    return v8(v9);
  }

  else
  {
    v11 = swift_task_alloc();
    v0[4] = v11;
    *v11 = v0;
    v11[1] = sub_21A1F6DD0;

    return sub_21A1F8D28();
  }
}

void sub_21A153450()
{
  if (!qword_2811B7BA8)
  {
    sub_21A176D98(&qword_27CCFF070);
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811B7BA8);
    }
  }
}

unint64_t sub_21A1534D4()
{
  v1 = *(v0 + 112);
  v2 = sub_21A2F78A4();
  v3 = [v1 dataForKey_];

  if (v3)
  {
    v4 = sub_21A2F4814();
    v6 = v5;

    sub_21A2F4464();
    swift_allocObject();
    sub_21A2F4454();
    sub_21A1F98F8();
    sub_21A2F4434();

    sub_21A180748(v4, v6);
    return v9;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];

    return sub_21A1537BC(v7);
  }
}

void sub_21A15375C()
{
  if (!qword_2811B7BB0[0])
  {
    sub_21A153450();
    if (!v1)
    {
      atomic_store(v0, qword_2811B7BB0);
    }
  }
}

unint64_t sub_21A1537BC(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD03528);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_21A176C98(&qword_27CD03530);
    v8 = sub_21A2F8194();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21A183960(v10, v6, &qword_27CD03528);
      result = sub_21A25A39C(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v8[6] + 16 * result);
      v16 = v6[1];
      *v15 = *v6;
      v15[1] = v16;
      v17 = v8[7];
      v18 = type metadata accessor for PersistentCookingSessions.Entry();
      result = sub_21A261A6C(v6 + v9, v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for PersistentCookingSessions.Entry);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

uint64_t type metadata accessor for PersistentCookingSessions.Entry()
{
  result = qword_2811B8C90;
  if (!qword_2811B8C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A1539F8()
{
  result = sub_21A2F4A24();
  if (v1 <= 0x3F)
  {
    sub_21A176D98(&qword_27CCFFBB8);
    result = sub_21A2F7C04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21A153AA4()
{
  result = qword_2811B8300[0];
  if (!qword_2811B8300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B8300);
  }

  return result;
}

uint64_t sub_21A153AF8()
{
  result = type metadata accessor for CookingSession();
  if (v1 <= 0x3F)
  {
    result = sub_21A2F49B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A153B7C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x28223BE20](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_21A153D30(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_21A1F9630(v13, v7, v3);
  result = MEMORY[0x21CED7BA0](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

unint64_t sub_21A153CDC()
{
  result = qword_2811B83B0;
  if (!qword_2811B83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B83B0);
  }

  return result;
}

uint64_t sub_21A153D30(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a1;
  v66 = sub_21A2F4AB4();
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v5);
  v65 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_21A2F49B4();
  v7 = *(v64 - 8);
  v9 = MEMORY[0x28223BE20](v64, v8);
  v63 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v62 = &v48 - v12;
  v61 = sub_21A176C98(&qword_27CD01030);
  v14 = MEMORY[0x28223BE20](v61, v13);
  v60 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v59 = (&v48 - v17);
  v18 = type metadata accessor for PersistentCookingSessions.Entry();
  v57 = *(v18 - 8);
  v58 = v18;
  result = MEMORY[0x28223BE20](v18, v19);
  v70 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v67 = a3;
  v23 = *(a3 + 64);
  v51 = 0;
  v52 = a3 + 64;
  v24 = 1 << *(a3 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v53 = (v24 + 63) >> 6;
  v55 = (v7 + 8);
  v56 = (v4 + 8);
  while (v26)
  {
    v27 = __clz(__rbit64(v26));
    v69 = (v26 - 1) & v26;
LABEL_11:
    v30 = v27 | (v22 << 6);
    v31 = v67[7];
    v32 = (v67[6] + 16 * v30);
    v34 = *v32;
    v33 = v32[1];
    v35 = *(v57 + 72);
    v54 = v30;
    v36 = v70;
    sub_21A1BA364(v31 + v35 * v30, v70, type metadata accessor for PersistentCookingSessions.Entry);
    v37 = v59;
    *v59 = v34;
    *(v37 + 8) = v33;
    v68 = v33;
    v38 = v61;
    sub_21A1BA364(v36, v37 + *(v61 + 48), type metadata accessor for PersistentCookingSessions.Entry);
    v39 = v60;
    sub_21A183960(v37, v60, &qword_27CD01030);
    swift_bridgeObjectRetain_n();

    v40 = v39 + *(v38 + 48);
    v41 = v63;
    sub_21A2F4974();
    v42 = v65;
    sub_21A2F4A94();
    v43 = v62;
    sub_21A2F4834();
    (*v56)(v42, v66);
    v44 = *v55;
    v45 = v41;
    v46 = v64;
    (*v55)(v45, v64);
    sub_21A152670(&qword_27CCFF338, 255, MEMORY[0x277CC9578]);
    LOBYTE(v38) = sub_21A2F7844();
    v44(v43, v46);
    sub_21A1427A8(v37, &qword_27CD01030);
    sub_21A1BA820(v40, type metadata accessor for PersistentCookingSessions.Entry);
    sub_21A1BA820(v70, type metadata accessor for PersistentCookingSessions.Entry);

    v26 = v69;
    if (v38)
    {
      *(v50 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
      if (__OFADD__(v51++, 1))
      {
        __break(1u);
        return sub_21A15424C(v50, v49, v51, v67);
      }
    }
  }

  v28 = v22;
  while (1)
  {
    v22 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v22 >= v53)
    {
      return sub_21A15424C(v50, v49, v51, v67);
    }

    v29 = *(v52 + 8 * v22);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v69 = (v29 - 1) & v29;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A1542C0(uint64_t a1)
{
  v2 = sub_21A1525E0(&qword_2811B8768, type metadata accessor for CookingSessionsSource);

  return MEMORY[0x2821D1080](a1, v2);
}

uint64_t sub_21A15432C()
{
  sub_21A176C98(&qword_27CD03E98);
  sub_21A2F7594();
  sub_21A151A34();
  sub_21A2F75E4();
}

uint64_t Catalog<>.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v17 = 0x5B676F6C61746143;
  v18 = 0xE800000000000000;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = v4;
  v15[6] = v6;
  v15[7] = a2;
  v15[8] = v5;
  v15[2] = a2;
  v15[3] = v5;
  v15[4] = swift_getKeyPath();
  v7 = sub_21A2F7794();
  sub_21A2F5434();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_21A1545D0(sub_21A27DF74, v15, v7, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v16 = v10;
  sub_21A176C98(&qword_27CD010C8);
  sub_21A1549F0();
  v11 = sub_21A2F7834();
  v13 = v12;

  MEMORY[0x21CED6480](v11, v13);

  MEMORY[0x21CED6480](93, 0xE100000000000000);
  return v17;
}

uint64_t sub_21A154578@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F8354();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_21A1545BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_21A1545D0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_21A2F7D24();
  if (!v22)
  {
    return sub_21A2F7B64();
  }

  v44 = v22;
  v48 = sub_21A2F80F4();
  v35 = sub_21A2F8104();
  sub_21A2F80A4();
  result = sub_21A2F7D04();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_21A2F7D84();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_21A2F80E4();
      result = sub_21A2F7D64();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_21A1549F0()
{
  result = qword_2811B3C18;
  if (!qword_2811B3C18)
  {
    sub_21A176D98(&qword_27CD010C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3C18);
  }

  return result;
}

uint64_t sub_21A154A54()
{
  sub_21A154AC4();
  sub_21A2F5434();
  sub_21A2F75F4();
}

unint64_t sub_21A154AC4()
{
  result = qword_2811B8260[0];
  if (!qword_2811B8260[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B8260);
  }

  return result;
}

uint64_t sub_21A154B2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A2F7614();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21A154BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A2F7614();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21A154CBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CCFEAB8);
  result = sub_21A2F51B4();
  if (v6)
  {
    MEMORY[0x21CED60A0](result);
    v4 = type metadata accessor for CookingSessionsPersistenceCommandHandler();
    sub_21A142AEC(v5, a2 + *(v4 + 20));
    sub_21A144380(&qword_2811B8258, type metadata accessor for CookingSessionsPersistenceCommandHandler);
    sub_21A154AC4();
    sub_21A2F75D4();
    return sub_21A142808(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21A154E38()
{
  result = qword_2811B6B78[0];
  if (!qword_2811B6B78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B6B78);
  }

  return result;
}

uint64_t Dependencies.cookingSessions.getter()
{
  sub_21A151D0C();
  sub_21A151D60();

  return sub_21A2F7624();
}

__n128 sub_21A154EE8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21A154EF4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CCFEAA8);
  result = sub_21A2F51B4();
  if (v11)
  {
    v8 = a2(0);
    v9 = swift_allocObject();
    result = sub_21A14274C(&v10, v9 + 16);
    a4[3] = v8;
    a4[4] = a3;
    *a4 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21A155010()
{
  sub_21A13E4E0(319, &qword_2811B3DC8, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_21A13E4E0(319, &qword_2811B3BD8, type metadata accessor for CGSize);
    if (v1 <= 0x3F)
    {
      sub_21A13D428(319, &qword_2811B3C60);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ExternalRecipe.ImageMetadata(319);
        if (v3 <= 0x3F)
        {
          sub_21A13D428(319, qword_2811B7978);
          if (v4 <= 0x3F)
          {
            sub_21A13E4E0(319, qword_2811B7928, type metadata accessor for ExternalRecipe.Source);
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

void sub_21A1551BC()
{
  sub_21A13E4E0(319, &qword_2811B3DC8, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_21A13E4E0(319, &qword_2811B3BD8, type metadata accessor for CGSize);
    if (v1 <= 0x3F)
    {
      sub_21A13E4E0(319, &qword_2811B3BB8, sub_21A1552C4);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21A1552C4()
{
  result = qword_2811B3BC0;
  if (!qword_2811B3BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811B3BC0);
  }

  return result;
}

void sub_21A155330()
{
  sub_21A13D428(319, &qword_2811B3C60);
  if (v0 <= 0x3F)
  {
    sub_21A13E4E0(319, &qword_2811B3DC8, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      sub_21A13E4E0(319, &qword_2811B3BD8, type metadata accessor for CGSize);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21A155424(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A146070;

  return sub_21A1554E4(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_21A1554E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_21A2F7C34();
  v5[5] = sub_21A2F7C24();
  v7 = sub_21A2F7BD4();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_21A15557C, v7, v6);
}

uint64_t sub_21A15557C()
{
  *(v0 + 64) = *sub_21A142764(*(v0 + 24), *(*(v0 + 24) + 24));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_21A155C98;

  return sub_21A15561C();
}

uint64_t sub_21A15561C()
{
  *(v1 + 32) = v0;
  sub_21A176C98(&qword_27CCFEB08);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A155A20, v0, 0);
}

uint64_t sub_21A1556B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A146070;

  return sub_21A155778(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_21A155778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[17] = sub_21A2F7C34();
  v5[18] = sub_21A2F7C24();
  v7 = sub_21A2F7BD4();
  v5[19] = v7;
  v5[20] = v6;

  return MEMORY[0x2822009F8](sub_21A155814, v7, v6);
}

uint64_t sub_21A155814()
{
  v1 = v0[15];
  v2 = v1[3];
  v3 = v1[4];
  sub_21A142764(v1, v2);
  (*(v3 + 24))(v2, v3);
  v4 = v0[10];
  v5 = sub_21A142764(v0 + 7, v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  sub_21A156050(v0 + 2);
  sub_21A2F7CC4();

  sub_21A142808((v0 + 7));
  v8 = sub_21A2F7C24();
  v0[21] = v8;
  sub_21A143D8C((v0 + 2), v0[5]);
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_21A1A1EF4;
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v8, v10);
}

uint64_t sub_21A155A20()
{
  v1 = v0[4];
  v2 = *(v1 + 120);
  v0[6] = v2;
  if (*(v1 + 128))
  {
    if (*(v1 + 128) == 1)
    {
      sub_21A2F5434();

      v3 = v0[1];

      return v3(v2);
    }

    v7 = v0[5];
    v8 = sub_21A2F7C64();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v10 = sub_21A14486C(qword_2811B5270, v9, type metadata accessor for SelectedIngredientsManager);
    v11 = swift_allocObject();
    v11[2] = v1;
    v11[3] = v10;
    v11[4] = v1;
    swift_retain_n();
    v2 = sub_21A19A300(0, 0, v7, &unk_21A3136C8, v11);
    v0[8] = v2;
    v12 = *(v1 + 120);
    *(v1 + 120) = v2;
    LOBYTE(v11) = *(v1 + 128);
    *(v1 + 128) = 0;

    sub_21A1448F0(v12, v11);
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_21A1F6ACC;
    v6 = v0 + 3;
  }

  else
  {

    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_21A1F6948;
    v6 = v0 + 2;
  }

  return MEMORY[0x282200460](v6, v2, &type metadata for PersistentSelectedIngredients);
}

uint64_t sub_21A155C98(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_21A155FD0, v2, 0);
}

void *sub_21A155DB0(uint64_t a1)
{
  v2 = type metadata accessor for PersistentSelectedIngredients.Entry();
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v30 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21A176C98(&qword_27CD03468);
  result = sub_21A2F8174();
  v6 = 0;
  v32 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v28 = result + 8;
  v29 = result;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(v32 + 56);
      v19 = (*(v32 + 48) + 16 * v17);
      v20 = v19[1];
      v33 = *v19;
      v21 = v30;
      sub_21A2BFAD4(v18 + *(v31 + 72) * v17, v30, type metadata accessor for PersistentSelectedIngredients.Entry);
      v22 = *v21;
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A1DAD88(v21);
      result = v29;
      *(v28 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v23 = (result[6] + 16 * v17);
      *v23 = v33;
      v23[1] = v20;
      *(result[7] + 8 * v17) = v22;
      v24 = result[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      result[2] = v26;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A155FD0()
{
  v0[11] = sub_21A155DB0(v0[10]);

  v1 = v0[6];
  v2 = v0[7];

  return MEMORY[0x2822009F8](sub_21A1571D8, v1, v2);
}

uint64_t *sub_21A156050(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21A1560B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A146070;

  return sub_21A156174(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_21A156174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_21A2F7C34();
  v5[5] = sub_21A2F7C24();
  v7 = sub_21A2F7BD4();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_21A15620C, v7, v6);
}

uint64_t sub_21A15620C()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  sub_21A142764(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_21A1570B0;

  return v6(v2, v3);
}

uint64_t sub_21A156330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A145E2C;

  return sub_21A1563F0(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_21A1563F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[11] = sub_21A2F7C34();
  v5[12] = sub_21A2F7C24();
  v7 = sub_21A2F7BD4();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x2822009F8](sub_21A15648C, v7, v6);
}

uint64_t sub_21A15648C()
{
  v1 = v0[9];
  v2 = v1[3];
  v3 = sub_21A142764(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  sub_21A156050(v0 + 2);
  sub_21A2F7CC4();

  v6 = sub_21A2F7C24();
  v0[15] = v6;
  sub_21A143D8C((v0 + 2), v0[5]);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_21A26D88C;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 7, v6, v8);
}

void sub_21A15665C(uint64_t *a1@<X8>)
{
  v3 = sub_21A176C98(&qword_27CD040F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v8 = *v1;
  a1[3] = sub_21A176C98(&qword_27CD04100);
  a1[4] = sub_21A156808();
  sub_21A156050(a1);
  v9 = *(v8 + 16);
  v10 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v10));
  (*(v4 + 104))(v7, *MEMORY[0x277D85778], v3);
  sub_21A176C98(&qword_27CCFEBE0);
  sub_21A2F5134();
  (*(v4 + 8))(v7, v3);
  os_unfair_lock_unlock((v9 + v10));
}

unint64_t sub_21A156808()
{
  result = qword_2811B3C10;
  if (!qword_2811B3C10)
  {
    sub_21A176D98(&qword_27CD04100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3C10);
  }

  return result;
}

uint64_t sub_21A15686C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[15] = sub_21A2F7C34();
  v5[16] = sub_21A2F7C24();
  v7 = sub_21A2F7BD4();
  v5[17] = v7;
  v5[18] = v6;

  return MEMORY[0x2822009F8](sub_21A1569C8, v7, v6);
}

uint64_t sub_21A156908(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A145E2C;

  return sub_21A15686C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_21A1569C8()
{
  v1 = v0[13];
  v2 = v1[3];
  v3 = v1[4];
  sub_21A142764(v1, v2);
  (*(v3 + 8))(v2, v3);
  v4 = v0[10];
  v5 = sub_21A142764(v0 + 7, v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  sub_21A156050(v0 + 2);
  sub_21A2F7CC4();

  sub_21A142808((v0 + 7));
  v8 = sub_21A2F7C24();
  v0[19] = v8;
  sub_21A143D8C((v0 + 2), v0[5]);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_21A22F62C;
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 21, v8, v10);
}

uint64_t sub_21A156BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21A146070;

  return sub_21A156C94(a1, v4, v5, v7, v6);
}

uint64_t sub_21A156C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = *a5;
  sub_21A2F7C34();
  v5[10] = sub_21A2F7C24();
  v7 = sub_21A2F7BD4();

  return MEMORY[0x2822009F8](sub_21A156D54, v7, v6);
}

uint64_t sub_21A156D54()
{
  v1 = v0[7];

  if (v1 >> 62)
  {
    result = sub_21A2F8164();
    v3 = result;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CED6AE0](i, v0[7]);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v0[8];
      v0[5] = v0[9];
      v0[6] = &off_282B370F8;
      v0[2] = v5;
      v6 = off_282B2EE08[0];
      type metadata accessor for RecipeTimersSource();

      v6();
      swift_unknownObjectRelease();

      sub_21A142808((v0 + 2));
    }

    else
    {
    }
  }

LABEL_13:
  v7 = v0[1];

  return v7();
}

uint64_t sub_21A156EE8()
{
  v1 = *(*sub_21A142764(v0 + 2, v0[5]) + 64);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  sub_21A2F5434();
  os_unfair_lock_unlock((v1 + 24));
  v0[7] = v2;

  sub_21A14DA6C(&qword_2811B6DF0);
  return sub_21A2F75C4();
}

uint64_t sub_21A156FB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21A1570B0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_21A1572D8, v4, v3);
}

uint64_t sub_21A1571D8()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 16) = v0[11];
    v2 = Strong;

    v0[2] = v2;
    type metadata accessor for SelectedIngredientsSource();
    sub_21A1444BC(&qword_2811B57B0, type metadata accessor for SelectedIngredientsSource);
    sub_21A2F75C4();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_21A1572D8()
{

  Strong = swift_weakLoadStrong();
  v2 = v0[9];
  if (Strong)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v15 = Strong;
      v16 = MEMORY[0x277D84F90];
      sub_21A25D6E4(0, v3, 0);
      v4 = v16;
      v5 = *(v16 + 16);
      v6 = 16 * v5;
      v7 = (v2 + 40);
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;
        v10 = *(v16 + 24);
        sub_21A2F5434();
        if (v5 >= v10 >> 1)
        {
          sub_21A25D6E4((v10 > 1), v5 + 1, 1);
        }

        *(v16 + 16) = v5 + 1;
        v11 = v16 + v6;
        *(v11 + 32) = v9;
        *(v11 + 40) = v8;
        v6 += 16;
        v7 += 2;
        ++v5;
        --v3;
      }

      while (v3);

      v12 = v15;
    }

    else
    {
      v12 = Strong;

      v4 = MEMORY[0x277D84F90];
    }

    *(v12 + 56) = v4;

    v0[2] = v12;
    type metadata accessor for SavedRecipesSource();
    sub_21A148524(&qword_2811B6D18, type metadata accessor for SavedRecipesSource);
    sub_21A2F75C4();
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_21A1574AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_21A1574D8()
{
  if (sub_21A2F3EF8(2, 26, 0, 0))
  {
    sub_21A2F6404();

    return sub_21A2F5AF4();
  }

  else
  {
    sub_21A2F5BE4();
    swift_getWitnessTable();
    sub_21A2F6244();
    sub_21A2F5AF4();
    sub_21A2F7EA4();
    swift_getWitnessTable();
    sub_21A2F5BE4();
    swift_getWitnessTable();
    sub_21A2F6244();
    return sub_21A2F5AF4();
  }
}

uint64_t sub_21A15763C()
{
  if (sub_21A2F3EF8(2, 26, 0, 0))
  {
    sub_21A2F6404();
    sub_21A2F5AF4();
  }

  else
  {
    sub_21A2F5BE4();
    swift_getWitnessTable();
    sub_21A2F6244();
    sub_21A2F5AF4();
    sub_21A2F7EA4();
    swift_getWitnessTable();
    sub_21A2F5BE4();
    swift_getWitnessTable();
    sub_21A2F6244();
    sub_21A2F5AF4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21A157864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F78E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TextRange(uint64_t a1, int a2)
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

uint64_t sub_21A157AD4()
{
  sub_21A179EC4();
  sub_21A144380(&qword_27CCFEB20, type metadata accessor for RecipeTheme);
  return sub_21A2F7624();
}

uint64_t sub_21A157CEC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFEC18);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFEC20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21A157E28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CCFEC18);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFEC20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21A157F64(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return sub_21A2F5434();
  }

  return result;
}

uint64_t sub_21A157F80(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A17BF34(v4);
}

uint64_t sub_21A157FBC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_21A157FE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21A158028()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21A158070@<X0>(void *a1@<X8>)
{
  sub_21A17DF70();
  result = sub_21A2F7644();
  *a1 = v3;
  return result;
}

uint64_t sub_21A1580C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFED00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A15815C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A2F7614();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21A158208(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A2F7614();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A1582C0(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = sub_21A176C98(&qword_27CCFEDD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CCFEDD8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_21A2F7614();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

char *sub_21A158444(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_21A176C98(&qword_27CCFEDD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CCFEDD8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_21A2F7614();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21A1585D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFEE18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21A176C98(&qword_27CCFEE20);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_21A176C98(&qword_27CCFEE28);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_21A158734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A176C98(&qword_27CCFEE18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_21A176C98(&qword_27CCFEE20);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_21A176C98(&qword_27CCFEE28);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_21A1588AC()
{
  v1 = type metadata accessor for RecipeSourceView();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  sub_21A176C98(&qword_27CCFEEA0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_15;
  }

  type metadata accessor for RecipeTheme();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    v4 = v2 + *(sub_21A176C98(&qword_27CCFEEA8) + 64);
    type metadata accessor for ImageAsset(0);
    v6 = swift_getEnumCaseMultiPayload();
    if (v6 != 2)
    {
      if (v6 == 1)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

LABEL_12:
    v13 = sub_21A2F4794();
    (*(*(v13 - 8) + 8))(v4, v13);
    v8 = type metadata accessor for LocalImageAsset(0);
    goto LABEL_13;
  }

  v4 = v2 + *(sub_21A176C98(&qword_27CCFEB90) + 48);
  v5 = type metadata accessor for ImageAsset(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    goto LABEL_15;
  }

  v6 = swift_getEnumCaseMultiPayload();
  if (v6 == 2)
  {
    goto LABEL_12;
  }

  if (v6 == 1)
  {
LABEL_6:
    v7 = sub_21A2F4794();
    (*(*(v7 - 8) + 8))(v4, v7);
    v8 = type metadata accessor for WebImageAsset(0);
LABEL_13:
    v14 = v8;

    v12 = *(v14 + 24);
    goto LABEL_14;
  }

LABEL_10:
  if (v6)
  {
    goto LABEL_15;
  }

  v9 = type metadata accessor for ExternalImageAsset(0);
  v10 = v9[5];
  v11 = sub_21A2F4794();
  (*(*(v11 - 8) + 8))(&v4[v10], v11);

  v12 = v9[10];
LABEL_14:

LABEL_15:
  v15 = *(v1 + 20);
  sub_21A176C98(&qword_27CCFED70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21A2F5A64();
    (*(*(v16 - 8) + 8))(v2 + v15, v16);
  }

  else
  {
  }

  v17 = *(v1 + 24);
  v18 = sub_21A176C98(&qword_27CCFEE28);
  (*(*(v18 - 8) + 8))(v2 + v17, v18);

  return swift_deallocObject();
}

uint64_t sub_21A158C6C(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFEE80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A158D10()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21A158D58(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = sub_21A176C98(&qword_27CCFF0E8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_19:
    v18 = *(v10 + 48);

    return v18(a1 + v11, a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CCFF0F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_19;
  }

  v13 = sub_21A176C98(&qword_27CCFF0F8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_19;
  }

  v14 = sub_21A176C98(&qword_27CCFF100);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_19;
  }

  v15 = sub_21A176C98(&qword_27CCFF108);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[9];
    goto LABEL_19;
  }

  v16 = sub_21A176C98(&qword_27CCFF110);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[10];
    goto LABEL_19;
  }

  v17 = sub_21A176C98(&qword_27CCFF118);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a3[11];
    goto LABEL_19;
  }

  v19 = sub_21A2F7614();
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[12];

  return v20(v21, a2, v19);
}

char *sub_21A159080(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_21A176C98(&qword_27CCFF0E8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_17:
    v18 = *(v10 + 56);

    return v18(&v5[v11], a2, a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CCFF0F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_17;
  }

  v13 = sub_21A176C98(&qword_27CCFF0F8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_17;
  }

  v14 = sub_21A176C98(&qword_27CCFF100);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_17;
  }

  v15 = sub_21A176C98(&qword_27CCFF108);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[9];
    goto LABEL_17;
  }

  v16 = sub_21A176C98(&qword_27CCFF110);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[10];
    goto LABEL_17;
  }

  v17 = sub_21A176C98(&qword_27CCFF118);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[11];
    goto LABEL_17;
  }

  v19 = sub_21A2F7614();
  v20 = *(*(v19 - 8) + 56);
  v21 = &v5[a4[12]];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_21A1594AC()
{
  sub_21A142808(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21A1594E4()
{

  return swift_deallocObject();
}

uint64_t sub_21A159520(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A18C7EC(v4);
}

uint64_t sub_21A15955C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21A159578(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A18CAAC(v1, v2);
}

__n128 sub_21A1595C0@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[2].n128_u64[0];
  result = a1[1];
  *a2 = result;
  a2[1].n128_u64[0] = v2;
  return result;
}

__n128 sub_21A1595D4(__n128 *a1, __n128 *a2)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  a2[1] = *a1;
  a2[2].n128_u64[0] = v2;
  a2[6].n128_u64[0] = 0;
  a2[6].n128_u64[1] = 0;
  a2[5].n128_u64[1] = 0;
  a2[7].n128_u8[0] = 1;
  return result;
}

__n128 sub_21A1595F8@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  result = *(a1 + 120);
  *a2 = result;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = v3;
  return result;
}

__n128 sub_21A159614(__n128 *a1, uint64_t a2)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *(a2 + 120) = *a1;
  *(a2 + 136) = v2;
  *(a2 + 144) = v3;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 152) = 0;
  *(a2 + 176) = 1;
  return result;
}

_BYTE *sub_21A15964C(_BYTE *result, uint64_t a2)
{
  *(a2 + 177) = *result;
  *(a2 + 178) = 4;
  return result;
}

uint64_t sub_21A159660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFEE18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21A159738(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A176C98(&qword_27CCFEE18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21A159848()
{
  sub_21A176D98(&qword_27CCFF2C0);
  sub_21A176D98(&qword_27CCFF2C8);
  sub_21A1772F8(&qword_27CCFF2D0, &qword_27CCFF2C0);
  sub_21A2F5C84();
  sub_21A1935CC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A159934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Recipe();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21A2F4794();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A159A24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Recipe();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21A2F4794();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A159B20()
{

  return swift_deallocObject();
}

uint64_t sub_21A159B58()
{
  swift_unknownObjectRelease();
  sub_21A16E294();

  return swift_deallocObject();
}

uint64_t sub_21A159BC4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFF3F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_21A159C80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFF3F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A159D30(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFF3F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_21A159DEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFF3F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A159EA0()
{

  return swift_deallocObject();
}

uint64_t sub_21A159ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A159F68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A28D40C(v1, v2);
}

uint64_t sub_21A159FB0()
{
  sub_21A176D98(&qword_27CCFF4E8);
  sub_21A176D98(&qword_27CCFF510);
  sub_21A176D98(&qword_27CCFF4E0);
  sub_21A1A6968();
  swift_getOpaqueTypeConformance2();
  sub_21A176D98(&qword_27CCFF518);
  sub_21A1772F8(&qword_27CCFF520, &qword_27CCFF518);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A15A108()
{
  sub_21A1A702C();
  sub_21A1A7080();
  return sub_21A2F7624();
}

uint64_t sub_21A15A168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21A176C98(&qword_27CCFEDC0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21A15A230(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFEDC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A15A2E0()
{
  v1 = (type metadata accessor for RecipeCardHeroTiledImageModifier(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[9];
  v4 = type metadata accessor for ImageAsset(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v12 = sub_21A2F4794();
      (*(*(v12 - 8) + 8))(v3, v12);
      v11 = type metadata accessor for LocalImageAsset(0);
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_10;
        }

        v6 = type metadata accessor for ExternalImageAsset(0);
        v7 = v6[5];
        v8 = sub_21A2F4794();
        (*(*(v8 - 8) + 8))(v3 + v7, v8);

        v9 = v6 + 10;
        goto LABEL_9;
      }

      v10 = sub_21A2F4794();
      (*(*(v10 - 8) + 8))(v3, v10);
      v11 = type metadata accessor for WebImageAsset(0);
    }

    v13 = v11;

    v9 = (v13 + 24);
LABEL_9:
  }

LABEL_10:

  return swift_deallocObject();
}

uint64_t sub_21A15A520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFEDC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21A15A5E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A176C98(&qword_27CCFEDC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21A15A6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFF3F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21A176C98(&qword_27CCFEE18);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A15A7C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A176C98(&qword_27CCFF3F8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21A176C98(&qword_27CCFEE18);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A15A9A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A15AA14(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFF808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A15AA80(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFF0E8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFF8A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21A15ABBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CCFF0E8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFF8A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21A15ACFC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A1AD340(v4);
}

uint64_t sub_21A15AD74(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21A15AD8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A2F5DB4();
  *a1 = result;
  return result;
}

uint64_t sub_21A15ADE0@<X0>(uint64_t a1@<X8>)
{
  result = sub_21A2F5E84();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21A15AE44()
{
  sub_21A176D98(&qword_27CCFF9B0);
  sub_21A176D98(&qword_27CCFEF60);
  sub_21A176D98(&qword_27CCFF9B8);
  sub_21A1AF1C4();
  swift_getOpaqueTypeConformance2();
  sub_21A1772F8(&qword_27CCFEFD0, &qword_27CCFEF60);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A15AF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CCFF3E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A15B000(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFF3E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A15B0B0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_21A176C98(&qword_27CCFFA38);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CCFFA40);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_13;
  }

  v13 = sub_21A176C98(&qword_27CCFFA48);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v14 = sub_21A176C98(&qword_27CCFF118);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v16 = sub_21A176C98(&qword_27CCFFA50);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[9]];

  return v17(v18, a2, v16);
}

char *sub_21A15B2E8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_21A176C98(&qword_27CCFFA38);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CCFFA40);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = sub_21A176C98(&qword_27CCFFA48);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = sub_21A176C98(&qword_27CCFF118);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v16 = sub_21A176C98(&qword_27CCFFA50);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[9]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_21A15B53C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A1AFC90(v4);
}

uint64_t sub_21A15B6A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFFAA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21A15B720(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFFAA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21A15B79C@<X0>(void *a1@<X8>)
{
  sub_21A1B47D0();
  result = sub_21A2F5EE4();
  *a1 = v3;
  return result;
}

uint64_t sub_21A15B7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFEE18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21A15B8C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A176C98(&qword_27CCFEE18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21A15B990@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A2F5D04();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21A15B9E8@<X0>(void *a1@<X8>)
{
  result = sub_21A2F5D84();
  *a1 = v3;
  return result;
}

uint64_t sub_21A15BA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CookingSession();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21A2F49B4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A15BB3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CookingSession();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21A2F49B4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A15BC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFF3F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_21A176C98(&qword_27CCFEE18);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return v14 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_21A15BD58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A176C98(&qword_27CCFF3F8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21A176C98(&qword_27CCFEE18);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21A15BE80()
{
  sub_21A1BE468();
  sub_21A1BE4BC();
  return sub_21A2F7624();
}

uint64_t sub_21A15BED8()
{
  type metadata accessor for RecipeImageContentView();
  sub_21A176D98(&qword_27CCFEDC0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21A2F7EA4();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

void sub_21A15BFDC(unint64_t *a1)
{
  v1 = *a1;
  sub_21A17F220(*a1);
  sub_21A17ED40(v1);
}

uint64_t sub_21A15C010@<X0>(void *a1@<X8>)
{
  sub_21A17F27C();
  result = sub_21A2F7644();
  *a1 = v3;
  return result;
}

uint64_t sub_21A15C060()
{
  sub_21A176D98(&qword_27CCFFED0);
  sub_21A2F6124();
  sub_21A2F6124();
  sub_21A1BE23C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21A2F7174();
  sub_21A176D98(&qword_27CCFFEF8);
  sub_21A2F5AF4();
  swift_getWitnessTable();
  sub_21A1BE404();
  return swift_getWitnessTable();
}

uint64_t sub_21A15C194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CCFF3E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A15C250(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFF3E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A15C304(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFFA38);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFFA40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21A15C440(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CCFFA38);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFFA40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21A15C5D8@<X0>(_BYTE *a1@<X8>)
{
  sub_21A1C07A4();
  result = sub_21A2F7624();
  *a1 = v3;
  return result;
}

uint64_t sub_21A15C684(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFFA38);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21A15C740(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFFA38);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A15C7F0()
{

  return swift_deallocObject();
}

uint64_t sub_21A15C844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A2F4A24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_21A176D98(&qword_27CCFFBB8);
    v10 = sub_21A2F7C04();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A15C95C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A2F4A24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_21A176D98(&qword_27CCFFBB8);
    v12 = sub_21A2F7C04();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A15CA8C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFEE18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_21A15CB48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFEE18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A15CC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD000F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A15CD44()
{

  return swift_deallocObject();
}

uint64_t sub_21A15CDD8()
{
  sub_21A176D98(&qword_27CD00188);
  sub_21A176D98(&qword_27CD00220);
  sub_21A176D98(&qword_27CD00228);
  sub_21A1CC374();
  sub_21A176D98(&qword_27CD00248);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21A1CC530();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A15CF04(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD002B8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21A15CF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD002B8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21A15D004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CD002F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A15D0C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CD002F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A15D200@<X0>(_BYTE *a1@<X8>)
{
  sub_21A1CE3D8();
  result = sub_21A2F7624();
  *a1 = v3;
  return result;
}

uint64_t sub_21A15D2AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21A15D2E4()
{
  v1 = sub_21A176C98(&qword_27CD003B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21A15D3C8()
{
  v1 = sub_21A2F4A24();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 89) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  sub_21A1997F4();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21A15D4CC()
{
  v1 = *(v0 + 32);
  v2 = (type metadata accessor for GroceriesButton() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  swift_unknownObjectRelease();
  v4 = sub_21A176C98(&qword_27CD003D0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = v0 + v3 + v2[11];
  v6 = sub_21A176C98(qword_27CD003D8);
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_21A176C98(&qword_27CD004C0);

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[13], v1);

  v7 = v2[15];
  v8 = sub_21A2F4794();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21A15D724()
{
  v1 = *(sub_21A176C98(&qword_27CCFEA80) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_21A2F4794();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_21A15D878()
{
  sub_21A2F7E34();
  sub_21A2F70D4();
  sub_21A176D98(&qword_27CD00490);
  sub_21A2F5AF4();
  sub_21A176D98(&qword_27CCFEF30);
  sub_21A2F5AF4();
  type metadata accessor for ExportToGroceryListTipViewModifier();
  sub_21A2F5AF4();
  sub_21A176D98(&qword_27CD00498);
  sub_21A2F5AF4();
  swift_getWitnessTable();
  sub_21A1772F8(&qword_27CD004A0, &qword_27CD00490);
  swift_getWitnessTable();
  sub_21A1772F8(&qword_27CCFEF48, &qword_27CCFEF30);
  swift_getWitnessTable();
  sub_21A1D3C70(&qword_27CD004A8, type metadata accessor for ExportToGroceryListTipViewModifier);
  swift_getWitnessTable();
  sub_21A1772F8(&qword_27CD004B0, &qword_27CD00498);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21A2F5AF4();
  sub_21A1D3C70(&qword_27CD004B8, MEMORY[0x277CC9DB0]);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_21A2F5BD4();
  return swift_getWitnessTable();
}

uint64_t sub_21A15DC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21A176C98(&qword_27CD00538);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21A15DCD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CD00538);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A15DD88()
{
  v1 = type metadata accessor for InstructionsView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_21A142808(v0 + v2);
  }

  v4 = v1[8];
  v5 = sub_21A176C98(&qword_27CD00538);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  sub_21A1478E8(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v6 = v3 + v1[10];
  sub_21A1D83B0(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 25));

  return swift_deallocObject();
}

uint64_t sub_21A15DED0()
{
  v1 = type metadata accessor for InstructionsView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_21A142808(v0 + v2);
  }

  v4 = v1[8];
  v5 = sub_21A176C98(&qword_27CD00538);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  sub_21A1478E8(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v6 = v3 + v1[10];
  sub_21A1D83B0(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 25));

  return swift_deallocObject();
}

uint64_t sub_21A15E020()
{
  v1 = (type metadata accessor for InstructionsViewModel.Instruction(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for InstructionsView();
  v5 = *(*(v4 - 1) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v7 = v0 + v2;

  v8 = v1[9];
  v9 = sub_21A2F4404();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v11 = v0 + v6;
  if (*(v0 + v6 + 24))
  {
    sub_21A142808(v0 + v6);
  }

  v12 = v4[8];
  v13 = sub_21A176C98(&qword_27CD00538);
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  sub_21A1478E8(*(v11 + v4[9]), *(v11 + v4[9] + 8));
  v14 = v11 + v4[10];
  sub_21A1D83B0(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 25));

  return swift_deallocObject();
}

uint64_t sub_21A15E25C@<X0>(void *a1@<X8>)
{
  sub_21A1D9274();
  result = sub_21A2F7644();
  *a1 = v3;
  return result;
}

uint64_t sub_21A15E2D0()
{
  v1 = sub_21A2F6144();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21A15E358()
{
  v1 = type metadata accessor for InstructionsView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_21A142808(v0 + v2);
  }

  v4 = v1[8];
  v5 = sub_21A176C98(&qword_27CD00538);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  sub_21A1478E8(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v6 = v3 + v1[10];
  sub_21A1D83B0(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 25));

  return swift_deallocObject();
}

uint64_t sub_21A15E49C()
{
  sub_21A176D98(&qword_27CD00590);
  sub_21A176D98(&qword_27CD00380);
  sub_21A176D98(&qword_27CD00588);
  sub_21A176D98(&qword_27CCFEB60);
  sub_21A1D86D0();
  swift_getOpaqueTypeConformance2();
  sub_21A1D8844(&qword_27CD00378, sub_21A17A0F8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A15E5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CookingSessionCommandAction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A15E660(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CookingSessionCommandAction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A15E704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFEE18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21A176C98(&qword_27CCFF3F8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A15E80C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A176C98(&qword_27CCFEE18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21A176C98(&qword_27CCFF3F8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A15E924(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A2F49B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21A15E9D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A2F49B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A15EA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A2F4794();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A15EB20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A2F4794();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A15EBC4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21A176C98(&qword_27CCFFA38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_21A176C98(&qword_27CCFEDD0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_21A176C98(&qword_27CCFF110);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7] + 24);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_21A176C98(&qword_27CCFEBC0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_21A15EDB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21A176C98(&qword_27CCFFA38);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_21A176C98(&qword_27CCFEDD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_21A176C98(&qword_27CCFF110);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 24) = (a2 - 1);
  }

  else
  {
    v17 = sub_21A176C98(&qword_27CCFEBC0);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[8];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_21A15EFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFEC20);
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

uint64_t sub_21A15F070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A176C98(&qword_27CCFEC20);
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

uint64_t sub_21A15F13C()
{
  sub_21A176D98(&qword_27CD008F8);
  sub_21A176D98(&qword_27CD008F0);
  sub_21A176D98(&qword_27CD00940);
  sub_21A176D98(&qword_27CD008E8);
  sub_21A176D98(&qword_27CD00910);
  sub_21A176D98(&qword_27CD00918);
  sub_21A1772F8(&qword_27CD00920, &qword_27CD008E8);
  sub_21A176D98(&qword_27CD00928);
  sub_21A176D98(&qword_27CD00930);
  sub_21A1772F8(&qword_27CD00938, &qword_27CD00930);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21A176D98(&qword_27CCFED48);
  sub_21A176D98(&qword_27CCFED58);
  sub_21A1772F8(&qword_27CCFED60, &qword_27CCFED58);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21A176D98(&qword_27CD00948);
  sub_21A1772F8(&qword_27CD00950, &qword_27CD00948);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A15F45C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A1EFBAC(v4);
}

uint64_t sub_21A15F498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CD00978);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21A176C98(&qword_27CCFF3F8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A15F5A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A176C98(&qword_27CD00978);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21A176C98(&qword_27CCFF3F8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A15F6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CD009C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A15F774(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CD009C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A15F844(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A1EFD10(v1, v2);
}

uint64_t sub_21A15F8F4()
{

  return swift_deallocObject();
}

uint64_t sub_21A15F97C()
{
  v1 = (type metadata accessor for CookingModeContentView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_21A1478E8(*v2, *(v2 + 8));

  v3 = v2 + v1[12];

  v4 = *(sub_21A176C98(&qword_27CD009C0) + 32);
  v5 = sub_21A2F59E4();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

void *sub_21A15FB08(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  return sub_21A1F0030(&v3);
}

uint64_t sub_21A15FB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecipeTheme();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_21A176C98(&qword_27CCFF3F8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21A15FC9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RecipeTheme();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_21A176C98(&qword_27CCFF3F8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21A15FEE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21A176C98(&qword_27CCFFA38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_21A176C98(&qword_27CD00EC0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_21A176C98(&qword_27CCFF118);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_21A160060(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21A176C98(&qword_27CCFFA38);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_21A176C98(&qword_27CD00EC0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_21A176C98(&qword_27CCFF118);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21A16029C()
{
  v1 = type metadata accessor for ExternalRecipeSource();
  v74 = *(*(v1 - 8) + 80);
  v2 = (v74 + 16) & ~v74;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for Recipe();
  v5 = *(*(v4 - 1) + 80);
  v6 = v3 + v5 + 40;

  v7 = v0 + v2 + *(v1 + 28);
  v8 = type metadata accessor for ImageAsset(0);
  v9 = *(*(v8 - 8) + 48);
  v75 = v5;
  v76 = v0;
  if (!v9(v7, 1, v8))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v17 = sub_21A2F4794();
      (*(*(v17 - 8) + 8))(v7, v17);
      v16 = type metadata accessor for LocalImageAsset(0);
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_10;
        }

        v11 = type metadata accessor for ExternalImageAsset(0);
        v12 = v11[5];
        v13 = sub_21A2F4794();
        (*(*(v13 - 8) + 8))(v7 + v12, v13);

        v14 = v11 + 10;
        goto LABEL_9;
      }

      v15 = sub_21A2F4794();
      (*(*(v15 - 8) + 8))(v7, v15);
      v16 = type metadata accessor for WebImageAsset(0);
    }

    v18 = v16;

    v14 = (v18 + 24);
LABEL_9:

    v5 = v75;
    v0 = v76;
  }

LABEL_10:
  v19 = v6 & ~v5;
  if (*(v0 + v3 + 24))
  {
    sub_21A142808(v0 + v3);
  }

  v20 = v0 + v19;

  v21 = v0 + v19 + v4[7];
  if (!v9(v20 + v4[7], 1, v8))
  {
    v22 = swift_getEnumCaseMultiPayload();
    if (v22 == 2)
    {
      v29 = sub_21A2F4794();
      (*(*(v29 - 8) + 8))(v21, v29);
      v28 = type metadata accessor for LocalImageAsset(0);
    }

    else
    {
      if (v22 != 1)
      {
        if (v22)
        {
          goto LABEL_21;
        }

        v23 = type metadata accessor for ExternalImageAsset(0);
        v24 = v23[5];
        v25 = sub_21A2F4794();
        (*(*(v25 - 8) + 8))(v21 + v24, v25);

        v26 = v23 + 10;
        goto LABEL_20;
      }

      v27 = sub_21A2F4794();
      (*(*(v27 - 8) + 8))(v21, v27);
      v28 = type metadata accessor for WebImageAsset(0);
    }

    v30 = v28;

    v26 = (v30 + 24);
LABEL_20:
  }

LABEL_21:
  v31 = v20 + v4[8];
  if (v9(v31, 1, v8))
  {
    goto LABEL_30;
  }

  v32 = swift_getEnumCaseMultiPayload();
  if (v32 == 2)
  {
    v39 = sub_21A2F4794();
    (*(*(v39 - 8) + 8))(v31, v39);
    v38 = type metadata accessor for LocalImageAsset(0);
    goto LABEL_28;
  }

  if (v32 == 1)
  {
    v37 = sub_21A2F4794();
    (*(*(v37 - 8) + 8))(v31, v37);
    v38 = type metadata accessor for WebImageAsset(0);
LABEL_28:
    v40 = v38;

    v36 = (v40 + 24);
    goto LABEL_29;
  }

  if (v32)
  {
    goto LABEL_30;
  }

  v33 = type metadata accessor for ExternalImageAsset(0);
  v34 = v33[5];
  v35 = sub_21A2F4794();
  (*(*(v35 - 8) + 8))(v31 + v34, v35);

  v36 = v33 + 10;
LABEL_29:

LABEL_30:

  if (*(v20 + v4[11] + 24))
  {
  }

  v41 = v20 + v4[12];
  v42 = type metadata accessor for RecipeSourceType();
  if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
  {
    v61 = swift_getEnumCaseMultiPayload();
    if (v61 != 1)
    {
      if (!v61)
      {

        v62 = *(type metadata accessor for WebRecipeSource() + 20);
        v63 = sub_21A2F4794();
        (*(*(v63 - 8) + 8))(v41 + v62, v63);
      }

      goto LABEL_33;
    }

    v64 = v41 + *(v1 + 28);
    if (v9(v64, 1, v8))
    {
      goto LABEL_33;
    }

    v65 = swift_getEnumCaseMultiPayload();
    if (v65 == 2)
    {
      v72 = sub_21A2F4794();
      (*(*(v72 - 8) + 8))(v64, v72);
      v71 = type metadata accessor for LocalImageAsset(0);
    }

    else
    {
      if (v65 != 1)
      {
        if (v65)
        {
          goto LABEL_33;
        }

        v66 = type metadata accessor for ExternalImageAsset(0);
        v67 = v66[5];
        v68 = sub_21A2F4794();
        (*(*(v68 - 8) + 8))(v64 + v67, v68);

        v69 = v66[10];
LABEL_56:

        goto LABEL_33;
      }

      v70 = sub_21A2F4794();
      (*(*(v70 - 8) + 8))(v64, v70);
      v71 = type metadata accessor for WebImageAsset(0);
    }

    v73 = v71;

    v69 = *(v73 + 24);
    goto LABEL_56;
  }

LABEL_33:
  v43 = v20 + v4[13];
  v44 = type metadata accessor for Duration();
  v45 = *(*(v44 - 8) + 48);
  if (!v45(v43, 1, v44))
  {
    v46 = swift_getEnumCaseMultiPayload();
    v47 = sub_21A2F5294();
    v48 = *(*(v47 - 8) + 8);
    v48(v43, v47);
    if (v46 == 1)
    {
      v49 = sub_21A176C98(&qword_27CCFF388);
      v48(v43 + *(v49 + 36), v47);
    }
  }

  v50 = v20 + v4[14];
  if (!v45(v50, 1, v44))
  {
    v51 = swift_getEnumCaseMultiPayload();
    v52 = sub_21A2F5294();
    v53 = *(*(v52 - 8) + 8);
    v53(v50, v52);
    if (v51 == 1)
    {
      v54 = sub_21A176C98(&qword_27CCFF388);
      v53(v50 + *(v54 + 36), v52);
    }
  }

  v55 = v20 + v4[15];
  if (!v45(v55, 1, v44))
  {
    v56 = swift_getEnumCaseMultiPayload();
    v57 = sub_21A2F5294();
    v58 = *(*(v57 - 8) + 8);
    v58(v55, v57);
    if (v56 == 1)
    {
      v59 = sub_21A176C98(&qword_27CCFF388);
      v58(v55 + *(v59 + 36), v57);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21A160DC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A1ECA58(v1, v2);
}

uint64_t sub_21A160E08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A1EC7FC(v1, v2);
}

uint64_t sub_21A160E90(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_21A176C98(&qword_27CD00F00);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CCFFA38);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_21A176C98(&qword_27CD00F08);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_21A161020(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_21A176C98(&qword_27CD00F00);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CCFFA38);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_21A176C98(&qword_27CD00F08);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21A161250(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFEE18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_21A16130C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFEE18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A1615C0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_21A176C98(&qword_27CCFFA38);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CD01098);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_13;
  }

  v13 = sub_21A176C98(&qword_27CD010A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v14 = sub_21A176C98(&qword_27CCFFA40);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v16 = sub_21A176C98(&qword_27CD010A8);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[9]];

  return v17(v18, a2, v16);
}

char *sub_21A1617F8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_21A176C98(&qword_27CCFFA38);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(&v5[v11], a2, a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CD01098);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = sub_21A176C98(&qword_27CD010A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = sub_21A176C98(&qword_27CCFFA40);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v16 = sub_21A176C98(&qword_27CD010A8);
  v17 = *(*(v16 - 8) + 56);
  v18 = &v5[a4[9]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_21A161A7C(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  return sub_21A1FAE00(&v4);
}

uint64_t sub_21A161BCC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_21A161CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CCFEDC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A161D64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFEDC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A161E1C()
{
  v1 = sub_21A2F4794();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21A161EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CD016B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21A161FC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A176C98(&qword_27CD016B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_21A1620A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CD017B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21A162168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A176C98(&qword_27CD017B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21A16224C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CD01908);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21A176C98(&qword_27CCFF3F8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21A162354(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A176C98(&qword_27CD01908);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21A176C98(&qword_27CCFF3F8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21A1624B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFEE18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for RecipeCardQuickLinksView.QuickLink.Variant(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21A1625E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A176C98(&qword_27CCFEE18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for RecipeCardQuickLinksView.QuickLink.Variant(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21A1627B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD01AF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A162820()
{
  sub_21A176D98(&qword_27CD01A38);
  sub_21A21B204();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A162884()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ExternalShareButton() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  v4 = *(type metadata accessor for ShareableRecipe(0) + 28);
  v5 = sub_21A2F4794();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  (*(*(v1 - 8) + 8))(v3 + v2[12], v1);

  return swift_deallocObject();
}

uint64_t sub_21A1629F0()
{

  return swift_deallocObject();
}

uint64_t sub_21A162A28()
{
  v1 = (type metadata accessor for ShareableRecipe(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);

  v3 = v1[9];
  v4 = sub_21A2F4794();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_21A162B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD01D48);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21A162BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD01D48);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21A162C68()
{
  sub_21A2F70D4();
  swift_getWitnessTable();
  sub_21A2F7174();
  sub_21A176D98(&qword_27CD01CF8);
  sub_21A2F5AF4();
  sub_21A176D98(&qword_27CD01D00);
  sub_21A2F5AF4();
  swift_getWitnessTable();
  sub_21A1772F8(&qword_27CD01D08, &qword_27CD01CF8);
  swift_getWitnessTable();
  sub_21A1772F8(&qword_27CD01D10, &qword_27CD01D00);
  return swift_getWitnessTable();
}

uint64_t sub_21A162FCC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21A163004()
{
  v1 = sub_21A176C98(&qword_27CD023B8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21A1630E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFF3D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21A1631B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A176C98(&qword_27CCFF3D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21A16327C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFEE18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_21A163338(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFEE18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A1633E8()
{
  v1 = sub_21A2F6134();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21A1634EC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_21A176C98(&qword_27CCFEA80);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_21A2F6874();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_21A176C98(&qword_27CCFEE20);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[9]];

  return v15(v16, a2, v14);
}

char *sub_21A163670(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_21A176C98(&qword_27CCFEA80);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_21A2F6874();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_21A176C98(&qword_27CCFEE20);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[9]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21A1637F4()
{
  v1 = type metadata accessor for IngredientStackView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  v4 = sub_21A2F4794();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = v1[8];
  v7 = sub_21A2F6874();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);
  v8 = v1[9];
  sub_21A176C98(&qword_27CCFED70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21A2F5A64();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21A1639F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD026A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A163A60@<X0>(void *a1@<X8>)
{
  sub_21A23782C();
  result = sub_21A2F7644();
  *a1 = v3;
  return result;
}

uint64_t sub_21A163ABC@<X0>(void *a1@<X8>)
{
  sub_21A2377D8();
  result = sub_21A2F5EE4();
  *a1 = v3;
  return result;
}

void sub_21A163B1C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21A27E340(v1);
}

uint64_t sub_21A163B54(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for IngredientsViewModel.Ingredient(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21A163C00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IngredientsViewModel.Ingredient(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A163CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD02780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A163D80(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CD028C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFF118);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21A163EBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CD028C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFF118);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21A16400C@<X0>(void *a1@<X8>)
{
  result = sub_21A2F5814();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_21A16403C()
{
  v1 = sub_21A2F6134();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21A164120()
{

  return swift_deallocObject();
}

uint64_t sub_21A16417C()
{

  return swift_deallocObject();
}

uint64_t sub_21A1641C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD02C30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21A16423C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD02C30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21A1642B8@<X0>(void *a1@<X8>)
{
  sub_21A240838();
  result = sub_21A2F5EE4();
  *a1 = v3;
  return result;
}

uint64_t sub_21A164310()
{
  sub_21A1478E8(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21A16434C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD02CC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1643C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A2F4794();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A164474(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A2F4794();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A164528(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21A176C98(&qword_27CCFF3F8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_21A176C98(&qword_27CCFEE20);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_21A176C98(&qword_27CCFEA80);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_21A1646BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21A176C98(&qword_27CCFF3F8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = sub_21A176C98(&qword_27CCFEE20);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v14 = sub_21A176C98(&qword_27CCFEA80);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[8];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_21A164870@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F5CE4();
  *a1 = result;
  return result;
}

uint64_t sub_21A1648C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD03070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A164938(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD03070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A1649A8@<X0>(void *a1@<X8>)
{
  sub_21A24DE0C();
  result = sub_21A2F7644();
  *a1 = v3;
  return result;
}

uint64_t sub_21A164A0C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFEA80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CD030E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21A164B48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CCFEA80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CD030E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21A164C88()
{
  v1 = type metadata accessor for GroceriesLabelView.MoreActionsMenuView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = *(v1 + 24);
  v4 = sub_21A2F4794();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = *(v1 + 28);
  v7 = sub_21A176C98(&qword_27CD030E0);
  (*(*(v7 - 8) + 8))(v2 + v6, v7);
  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_21A164E28()
{
  v1 = *(sub_21A176C98(&qword_27CCFEA80) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_21A2F4794();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_21A164FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A2F49B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A165084(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A2F49B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A165128()
{

  return swift_deallocObject();
}

uint64_t sub_21A165160()
{
  v1 = sub_21A176C98(&qword_27CD03590);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21A1651F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21A165234()
{

  return swift_deallocObject();
}

uint64_t sub_21A165270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_21A176C98(&qword_27CCFF3A8);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_21A1652F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_21A176C98(&qword_27CCFF3A8);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_21A16537C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for Duration();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21A165434(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for Duration();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A1654D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CCFF3F8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFEE18);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21A165614(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CCFF3F8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFEE18);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21A165774()
{
  sub_21A176D98(&qword_27CD036F0);
  sub_21A265F00();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A1657D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecipeTheme();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_21A176C98(&qword_27CCFF3F8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21A165904(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RecipeTheme();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = sub_21A176C98(&qword_27CCFF3F8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21A165A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD037D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A165AC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F5EA4();
  *a1 = result;
  return result;
}

uint64_t sub_21A165B4C()
{
  sub_21A176D98(&qword_27CD03890);
  sub_21A1772F8(&qword_27CD038A0, &qword_27CD03890);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A165C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A2F4794();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A165CAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A2F4794();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A165D50@<X0>(void *a1@<X8>)
{
  sub_21A26C67C();
  result = sub_21A2F7644();
  *a1 = v3;
  return result;
}

uint64_t sub_21A165DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21A176C98(&qword_27CD03958);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21A165E68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CD03958);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A165F2C()
{

  return swift_deallocObject();
}

uint64_t sub_21A165F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CD028C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_21A176C98(&qword_27CCFF118);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_21A1660A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A176C98(&qword_27CD028C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21A176C98(&qword_27CCFF118);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21A1661C8()
{

  return swift_deallocObject();
}

uint64_t sub_21A166200(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD017B8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21A166278(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD017B8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21A1663F0()
{

  return swift_deallocObject();
}

__n128 sub_21A166474(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21A166508(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A27ED30(v1, v2);
}

uint64_t sub_21A166558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFFA38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21A176C98(&qword_27CCFEDD0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for RecipeTheme();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_21A1666B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A176C98(&qword_27CCFFA38);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_21A176C98(&qword_27CCFEDD0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for RecipeTheme();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_21A166814(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A2F4A24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21A1668C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A2F4A24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A166964(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CD028C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFF118);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21A166AA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CD028C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFF118);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21A166BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A2F4A64();
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

uint64_t sub_21A166CA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A2F4A64();
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

uint64_t sub_21A166D58()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for VerticalOffsetReaderModifier() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  sub_21A142808(v0 + v3 + v2[11]);

  return swift_deallocObject();
}

uint64_t sub_21A166E48()
{
  type metadata accessor for VerticalOffsetReaderModifier();
  swift_getWitnessTable();
  sub_21A2F6254();
  type metadata accessor for VerticalOffsetPreferenceKey();
  swift_getWitnessTable();
  sub_21A2F6474();
  sub_21A2F5AF4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21A2F5924();
  swift_getWitnessTable();
  sub_21A2F60F4();
  sub_21A2F5AF4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21A16700C()
{

  return swift_deallocObject();
}

uint64_t sub_21A167090()
{
  sub_21A176D98(&qword_27CD00B88);
  type metadata accessor for CircularButtonStyle();
  sub_21A287B34();
  sub_21A287B98();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A167114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeSourceSafari(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A167180(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for RecipeSourceSafari(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21A167200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A2F4794();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = type metadata accessor for ImageResource();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_21A167334(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A2F4794();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = type metadata accessor for ImageResource();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21A16745C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CD04060);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21A167534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A176C98(&qword_27CD04060);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21A167600()
{
  v1 = *(type metadata accessor for HorizontalParallaxViewModifier() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_21A176C98(&qword_27CD04060);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_21A1676E4()
{
  sub_21A176D98(&qword_27CD04088);
  sub_21A176D98(&qword_27CCFF218);
  sub_21A289520();
  sub_21A2F5C84();
  sub_21A289584(&qword_27CCFF220, MEMORY[0x277CDFCB0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A1677E8(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  return sub_21A28BD18(&v4);
}

uint64_t sub_21A1678B4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_21A176C98(&qword_27CCFFA38);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_17:
    v17 = *(v10 + 48);

    return v17(&a1[v11], a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CD00F08);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_17;
  }

  v13 = sub_21A176C98(&qword_27CD00F00);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_17;
  }

  v14 = sub_21A176C98(&qword_27CD028C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_17;
  }

  v15 = sub_21A176C98(&qword_27CCFF118);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[9];
    goto LABEL_17;
  }

  v16 = sub_21A176C98(&qword_27CD040B0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[10];
    goto LABEL_17;
  }

  v18 = sub_21A2F7614();
  v19 = *(*(v18 - 8) + 48);
  v20 = &a1[a3[13]];

  return v19(v20, a2, v18);
}

char *sub_21A167B88(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_21A176C98(&qword_27CCFFA38);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(&v5[v11], a2, a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CD00F08);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_15;
  }

  v13 = sub_21A176C98(&qword_27CD00F00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_15;
  }

  v14 = sub_21A176C98(&qword_27CD028C0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_15;
  }

  v15 = sub_21A176C98(&qword_27CCFF118);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[9];
    goto LABEL_15;
  }

  v16 = sub_21A176C98(&qword_27CD040B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[10];
    goto LABEL_15;
  }

  v18 = sub_21A2F7614();
  v19 = *(*(v18 - 8) + 56);
  v20 = &v5[a4[13]];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_21A167E9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A28D7C0(v1, v2, &OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__excerpt);
}

uint64_t sub_21A167F00()
{
  v1 = sub_21A2F4794();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21A167F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Recipe();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21A167FF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Recipe();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

_OWORD *sub_21A168068(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return ObservableHorizontalParallaxModel.model.setter(v3);
}

uint64_t sub_21A1680A8@<X0>(void *a1@<X8>)
{
  sub_21A296C54();
  result = sub_21A2F7644();
  *a1 = v3;
  return result;
}

uint64_t sub_21A1680FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21A176C98(&qword_27CCFEA80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for ExternalRecipe.ImageMetadata(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[11];
      goto LABEL_3;
    }

    v15 = sub_21A176C98(&qword_27CD03B70);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[15];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21A16828C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_21A176C98(&qword_27CCFEA80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for ExternalRecipe.ImageMetadata(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[11];
    goto LABEL_3;
  }

  v15 = sub_21A176C98(&qword_27CD03B70);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[15];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21A16841C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFEA80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 48));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21A1684F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A176C98(&qword_27CCFEA80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 48)) = a2;
  }

  return result;
}

uint64_t sub_21A1685BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CCFEA80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A168678(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFEA80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A168728()
{

  return swift_deallocObject();
}

uint64_t sub_21A168764@<X0>(void *a1@<X8>)
{
  sub_21A17E1F0();
  result = sub_21A2F7644();
  *a1 = v3;
  return result;
}

uint64_t sub_21A16882C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CD040B0);
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

uint64_t sub_21A1688F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A176C98(&qword_27CD040B0);
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

uint64_t sub_21A1689D0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFF0E8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFF0F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21A168B0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CCFF0E8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFF0F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21A168C4C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A29D704(v4);
}

uint64_t sub_21A168CCC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CD010A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFFA38);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21A168E08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CD010A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_21A176C98(&qword_27CCFFA38);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21A168F48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A29F460(v1, v2);
}

uint64_t sub_21A168F8C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A29EBA8(v4);
}

uint64_t sub_21A169008(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFEE18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_21A1690C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFEE18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A169174()
{

  return swift_deallocObject();
}

uint64_t sub_21A1691AC()
{
  v1 = type metadata accessor for RecipeCardMetadataView();
  v2 = *(*(v1 - 8) + 80);
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 56))
  {
  }

  v3 = (v0 + ((v2 + 80) & ~v2) + *(v1 + 24));
  sub_21A176C98(&qword_27CCFEEA0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_19;
  }

  type metadata accessor for RecipeTheme();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    v5 = v3 + *(sub_21A176C98(&qword_27CCFEEA8) + 64);
    type metadata accessor for ImageAsset(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 != 2)
    {
      if (v7 == 1)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }

LABEL_16:
    v14 = sub_21A2F4794();
    (*(*(v14 - 8) + 8))(v5, v14);
    v9 = type metadata accessor for LocalImageAsset(0);
    goto LABEL_17;
  }

  v5 = v3 + *(sub_21A176C98(&qword_27CCFEB90) + 48);
  v6 = type metadata accessor for ImageAsset(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    goto LABEL_19;
  }

  v7 = swift_getEnumCaseMultiPayload();
  if (v7 == 2)
  {
    goto LABEL_16;
  }

  if (v7 == 1)
  {
LABEL_10:
    v8 = sub_21A2F4794();
    (*(*(v8 - 8) + 8))(v5, v8);
    v9 = type metadata accessor for WebImageAsset(0);
LABEL_17:
    v15 = v9;

    v13 = *(v15 + 24);
    goto LABEL_18;
  }

LABEL_14:
  if (v7)
  {
    goto LABEL_19;
  }

  v10 = type metadata accessor for ExternalImageAsset(0);
  v11 = v10[5];
  v12 = sub_21A2F4794();
  (*(*(v12 - 8) + 8))(&v5[v11], v12);

  v13 = v10[10];
LABEL_18:

LABEL_19:

  return swift_deallocObject();
}

uint64_t sub_21A1694D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD04390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A169544(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD04390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A169678@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A2F5DE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21A1696A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A2F5DD4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21A16973C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A2F3150();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21A1697F8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A28C6E4(v4);
}

uint64_t sub_21A169834(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21A176C98(&qword_27CD043F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_21A176C98(&qword_27CCFF3F8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_21A176C98(&qword_27CCFEE20);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_21A1699BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21A176C98(&qword_27CD043F8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_21A176C98(&qword_27CCFF3F8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[7];
    }

    else
    {
      result = sub_21A176C98(&qword_27CCFEE20);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[9];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21A169B38()
{

  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_21A169B80()
{
  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_21A169BBC@<X0>(_BYTE *a1@<X8>)
{
  sub_21A2ADDAC();
  result = sub_21A2F5EE4();
  *a1 = v3;
  return result;
}

uint64_t sub_21A169EB4()
{

  return swift_deallocObject();
}

uint64_t sub_21A169EF4()
{

  return swift_deallocObject();
}

uint64_t sub_21A169FC0(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  return sub_21A28B340(&v4);
}

uint64_t sub_21A16A0B0()
{
  v1 = type metadata accessor for RecipeCardView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_21A176C98(&qword_27CD043F8);
  (*(*(v3 - 8) + 8))(v2, v3);
  sub_21A1478E8(*(v2 + v1[5]), *(v2 + v1[5] + 8));
  sub_21A1478E8(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  v4 = v1[7];
  sub_21A176C98(&qword_27CCFECD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21A2F5654();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  sub_21A1478E8(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  v6 = v1[9];
  sub_21A176C98(&qword_27CCFED70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21A2F5A64();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21A16A2DC()
{
  v1 = type metadata accessor for RecipeCardView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_21A176C98(&qword_27CD043F8);
  (*(*(v3 - 8) + 8))(v2, v3);
  sub_21A1478E8(*(v2 + v1[5]), *(v2 + v1[5] + 8));
  sub_21A1478E8(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  v4 = v1[7];
  sub_21A176C98(&qword_27CCFECD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21A2F5654();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  sub_21A1478E8(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  v6 = v1[9];
  sub_21A176C98(&qword_27CCFED70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21A2F5A64();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21A16A508()
{

  return swift_deallocObject();
}

uint64_t sub_21A16A5EC()
{

  return swift_deallocObject();
}

uint64_t sub_21A16A650()
{

  return swift_deallocObject();
}

uint64_t sub_21A16A6B4@<X0>(_BYTE *a1@<X8>)
{
  sub_21A27099C();
  result = sub_21A2F7624();
  *a1 = v3;
  return result;
}

uint64_t sub_21A16A760(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_21A176C98(&qword_27CCFFA38);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CCFF110);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_21A176C98(&qword_27CCFF118);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_21A16A8F0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_21A176C98(&qword_27CCFFA38);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CCFF110);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_21A176C98(&qword_27CCFF118);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21A16AAC4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A2B24A4(v4);
}

uint64_t sub_21A16AB1C()
{
  v1 = *(sub_21A176C98(&qword_27CD004F8) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {

    v4 = *(v3 + 20);
    v5 = sub_21A2F49B4();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21A16AC78(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_21A2F5654();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 32)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_21A16AD1C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_21A2F5654();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 32)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A16ADEC()
{

  return swift_deallocObject();
}

uint64_t sub_21A16AE2C()
{
  sub_21A176D98(&qword_27CD048C8);
  sub_21A176D98(&qword_27CD04918);
  sub_21A176D98(&qword_27CD048C0);
  sub_21A1772F8(&qword_27CD04910, &qword_27CD048C0);
  swift_getOpaqueTypeConformance2();
  sub_21A2D143C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A16AF2C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = sub_21A176C98(&qword_27CD04988);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = sub_21A176C98(&qword_27CCFF3F8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_21A176C98(&qword_27CCFEE18);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_21A16B0C8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
    return result;
  }

  v8 = sub_21A176C98(&qword_27CD04988);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_21A176C98(&qword_27CCFF3F8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_21A176C98(&qword_27CCFEE18);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21A16B278@<X0>(void *a1@<X8>)
{
  result = sub_21A2F5CB4();
  *a1 = v3;
  return result;
}

uint64_t sub_21A16B2F8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CD04A20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_21A16B3B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CD04A20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A16B4AC()
{

  return swift_deallocObject();
}

uint64_t sub_21A16B4E8()
{
  v1 = sub_21A2F6954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for InstructionOverlayViewModifier(0);
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v7 = *(v2 + 8);
  v7(v0 + v3, v1);

  if (*(v0 + v6 + 72) <= 0xFBu)
  {
    sub_21A1997F4();
  }

  v8 = v0 + v6 + *(v5 + 24);
  if (!(*(v2 + 48))(v8, 1, v1))
  {
    v7(v8, v1);
  }

  sub_21A176C98(&qword_27CD04A20);

  return swift_deallocObject();
}

uint64_t sub_21A16B6C0()
{
  v1 = type metadata accessor for InstructionOverlayViewModifier(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_21A2F6954();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  if (*(v0 + v2 + 72) <= 0xFBu)
  {
    sub_21A1997F4();
  }

  v7 = v0 + v2 + *(v1 + 24);
  if (!(*(v5 + 48))(v7, 1, v4))
  {
    (*(v5 + 8))(v7, v4);
  }

  sub_21A176C98(&qword_27CD04A20);

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_21A16B890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A2F5E64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21A16B90C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFFA38);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21A16B9C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFFA38);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A16BA7C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A2D3B38(v4);
}

uint64_t sub_21A16BABC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A2D3DF8(v1, v2);
}

uint64_t sub_21A16BAFC()
{
  v1 = *(sub_21A176C98(&qword_27CD004F8) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {

    v4 = *(v3 + 20);
    v5 = sub_21A2F49B4();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21A16BC50(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for InstructionSubStepViewModel.PopOver(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21A16BCFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InstructionSubStepViewModel.PopOver(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A16BDD4(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD04BF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A16BE40()
{

  return swift_deallocObject();
}

uint64_t sub_21A16BE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD04D20);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21A16BF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD04D20);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21A16BF90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21A16BFC8()
{

  return swift_deallocObject();
}

uint64_t sub_21A16C008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F5DF4();
  *a1 = result;
  return result;
}

uint64_t sub_21A16C064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CD03E98);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21A176C98(&qword_27CCFF0E8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_21A176C98(&qword_27CCFEB38);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_21A16C1C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A176C98(&qword_27CD03E98);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_21A176C98(&qword_27CCFF0E8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_21A176C98(&qword_27CCFEB38);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_21A16C338()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21A16C370()
{
  v1 = *(type metadata accessor for ImageAsset(0) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  sub_21A142808(v0 + 32);
  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v11 = sub_21A2F4794();
    (*(*(v11 - 8) + 8))(v0 + v2, v11);
    v10 = type metadata accessor for LocalImageAsset(0);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21A2F4794();
    (*(*(v9 - 8) + 8))(v0 + v2, v9);
    v10 = type metadata accessor for WebImageAsset(0);
LABEL_7:
    v12 = v10;

    v8 = (v12 + 24);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  v5 = type metadata accessor for ExternalImageAsset(0);
  v6 = v5[5];
  v7 = sub_21A2F4794();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  v8 = v5 + 10;
LABEL_8:

LABEL_9:

  return swift_deallocObject();
}

uint64_t sub_21A16C584()
{

  return swift_deallocObject();
}

uint64_t sub_21A16C5BC()
{
  v1 = *(type metadata accessor for ImageAsset(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v12 = sub_21A2F4794();
    (*(*(v12 - 8) + 8))(v0 + v2, v12);
    v11 = type metadata accessor for LocalImageAsset(0);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = sub_21A2F4794();
    (*(*(v10 - 8) + 8))(v0 + v2, v10);
    v11 = type metadata accessor for WebImageAsset(0);
LABEL_7:
    v13 = v11;

    v9 = (v13 + 24);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  v6 = type metadata accessor for ExternalImageAsset(0);
  v7 = v6[5];
  v8 = sub_21A2F4794();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  v9 = v6 + 10;
LABEL_8:

LABEL_9:

  return swift_deallocObject();
}

uint64_t sub_21A16C7D0()
{
  v1 = *(type metadata accessor for ImageAsset(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v12 = sub_21A2F4794();
    (*(*(v12 - 8) + 8))(v0 + v2, v12);
    v11 = type metadata accessor for LocalImageAsset(0);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = sub_21A2F4794();
    (*(*(v10 - 8) + 8))(v0 + v2, v10);
    v11 = type metadata accessor for WebImageAsset(0);
LABEL_7:
    v13 = v11;

    v9 = (v13 + 24);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  v6 = type metadata accessor for ExternalImageAsset(0);
  v7 = v6[5];
  v8 = sub_21A2F4794();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  v9 = v6 + 10;
LABEL_8:

LABEL_9:

  return swift_deallocObject();
}

uint64_t sub_21A16C9E8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_21A176C98(&qword_27CCFF3F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

void *sub_21A16CAA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CCFF3F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A16CB58()
{

  return swift_deallocObject();
}

uint64_t sub_21A16CBA0()
{
  v1 = type metadata accessor for RecipeCardRegularIngredientsAndInstructionsView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_21A2E45D4();

  v3 = v1[14];
  sub_21A176C98(&qword_27CCFECD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21A2F5654();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_21A2330F0(*(v2 + v1[15]), *(v2 + v1[15] + 8));
  v5 = v2 + v1[16];
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      sub_21A142808(v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21A16CDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A176C98(&qword_27CD05040);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21A16CEAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_21A176C98(&qword_27CD05040);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A16CF64()
{

  return swift_deallocObject();
}

uint64_t sub_21A16CFA0()
{
  sub_21A176D98(&qword_27CD05090);
  sub_21A1772F8(&qword_27CD050A0, &qword_27CD05090);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21A16D080()
{
  v1 = *(v0 + 16);
  v19 = *(v0 + 24);
  v2 = (type metadata accessor for RoundSegmentedPickerView() - 8);
  v3 = (*(*v2 + 80) + 56) & ~*(*v2 + 80);

  v4 = sub_21A2F71C4();
  (*(*(v1 - 8) + 8))(v0 + v3 + *(v4 + 32), v1);
  (*(*(v19 - 8) + 8))(v0 + v3 + v2[15]);
  v5 = (v0 + v3 + v2[16]);
  sub_21A176C98(&qword_27CCFEEA0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    return swift_deallocObject();
  }

  type metadata accessor for RecipeTheme();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v7 = v5 + *(sub_21A176C98(&qword_27CCFEB90) + 48);
    v8 = type metadata accessor for ImageAsset(0);
    if ((*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      return swift_deallocObject();
    }

    v9 = swift_getEnumCaseMultiPayload();
    if (v9 != 2)
    {
      if (v9 == 1)
      {
LABEL_6:
        v10 = sub_21A2F4794();
        (*(*(v10 - 8) + 8))(v7, v10);
        v11 = type metadata accessor for WebImageAsset(0);
LABEL_13:
        v17 = v11;

        v15 = *(v17 + 24);
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_12:
    v16 = sub_21A2F4794();
    (*(*(v16 - 8) + 8))(v7, v16);
    v11 = type metadata accessor for LocalImageAsset(0);
    goto LABEL_13;
  }

  v7 = v5 + *(sub_21A176C98(&qword_27CCFEEA8) + 64);
  type metadata accessor for ImageAsset(0);
  v9 = swift_getEnumCaseMultiPayload();
  if (v9 == 2)
  {
    goto LABEL_12;
  }

  if (v9 == 1)
  {
    goto LABEL_6;
  }

LABEL_10:
  if (!v9)
  {

    v12 = type metadata accessor for ExternalImageAsset(0);
    v13 = v12[5];
    v14 = sub_21A2F4794();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);

    v15 = v12[10];
LABEL_14:
  }

  return swift_deallocObject();
}

uint64_t sub_21A16D420()
{
  v1 = *(v0 + 16);
  v2 = *(sub_21A2F7EA4() - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v23 = *(v0 + 24);
  v5 = type metadata accessor for RoundSegmentedPickerView();
  v6 = (v4 + v3 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4, 1, v1))
  {
    (*(v7 + 8))(v0 + v4, v1);
  }

  v8 = sub_21A2F71C4();
  (*(v7 + 8))(v0 + v6 + *(v8 + 32), v1);
  (*(*(v23 - 8) + 8))(v0 + v6 + *(v5 + 52));
  v9 = (v0 + v6 + *(v5 + 56));
  sub_21A176C98(&qword_27CCFEEA0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    return swift_deallocObject();
  }

  type metadata accessor for RecipeTheme();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v11 = v9 + *(sub_21A176C98(&qword_27CCFEB90) + 48);
    v12 = type metadata accessor for ImageAsset(0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      return swift_deallocObject();
    }

    v13 = swift_getEnumCaseMultiPayload();
    if (v13 != 2)
    {
      if (v13 == 1)
      {
LABEL_8:
        v14 = sub_21A2F4794();
        (*(*(v14 - 8) + 8))(v11, v14);
        v15 = type metadata accessor for WebImageAsset(0);
LABEL_15:
        v21 = v15;

        v19 = *(v21 + 24);
        goto LABEL_16;
      }

      goto LABEL_12;
    }

LABEL_14:
    v20 = sub_21A2F4794();
    (*(*(v20 - 8) + 8))(v11, v20);
    v15 = type metadata accessor for LocalImageAsset(0);
    goto LABEL_15;
  }

  v11 = v9 + *(sub_21A176C98(&qword_27CCFEEA8) + 64);
  type metadata accessor for ImageAsset(0);
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 == 2)
  {
    goto LABEL_14;
  }

  if (v13 == 1)
  {
    goto LABEL_8;
  }

LABEL_12:
  if (!v13)
  {

    v16 = type metadata accessor for ExternalImageAsset(0);
    v17 = v16[5];
    v18 = sub_21A2F4794();
    (*(*(v18 - 8) + 8))(&v11[v17], v18);

    v19 = v16[10];
LABEL_16:
  }

  return swift_deallocObject();
}

uint64_t sub_21A16D874()
{
  v1 = *(v0 + 16);
  v2 = *(sub_21A2F7EA4() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, v1))
  {
    (*(v4 + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21A16D994()
{
  sub_21A176D98(&qword_27CD05208);
  type metadata accessor for CGRect(255);
  type metadata accessor for SegmentPreferenceKey();
  swift_getWitnessTable();
  sub_21A2F63F4();
  sub_21A2F5AF4();
  sub_21A1772F8(&qword_27CD05210, &qword_27CD05208);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21A2ECB84();
  swift_getOpaqueTypeMetadata2();
  sub_21A2F6574();
  sub_21A2F5AF4();
  swift_getOpaqueTypeConformance2();
  sub_21A2EDE04(&qword_27CCFF558, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21A176D98(&qword_27CCFEF60);
  swift_getOpaqueTypeConformance2();
  sub_21A1772F8(&qword_27CCFEFD0, &qword_27CCFEF60);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_21A2F63D4();
  sub_21A2F7254();
  swift_getWitnessTable();
  sub_21A2EDE04(&qword_27CD05220, MEMORY[0x277CE12A8]);
  sub_21A2F7224();
  swift_getWitnessTable();
  sub_21A2F70F4();
  sub_21A176D98(&qword_27CD05228);
  sub_21A2ECBD8();
  sub_21A2F6564();
  sub_21A2F5AF4();
  sub_21A2F5AF4();
  sub_21A176D98(&qword_27CD05248);
  sub_21A2F5AF4();
  sub_21A2F5F84();
  sub_21A2F5AF4();
  sub_21A2F5AF4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21A1772F8(&qword_27CD05280, &qword_27CD05248);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21A16DF7C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21A16DFB8()
{
  v1 = sub_21A2F4A24();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21A16E05C()
{

  return swift_deallocObject();
}

uint64_t sub_21A16E0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A176C98(&qword_27CCFF3D0);
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

uint64_t sub_21A16E178(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A176C98(&qword_27CCFF3D0);
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

uint64_t sub_21A16E294()
{
}

uint64_t CGColorSpaceGetSRGB(void)
{
  if (qword_2811B8CD8 != -1)
  {
    sub_21A2F43C0();
  }

  return qword_2811B8CD0;
}

CGColorSpaceRef sub_21A16E370()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  qword_2811B8CD0 = result;
  return result;
}

BOOL isCloseToColor(ITColor *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (a1 && (a3 < 0.0500000007 && a7 < 0.0500000007 || a5 < 0.0149999997 && a9 < 0.0149999997))
  {
    v34.mRed = ITColor::CreateFromHSVDoubles(a1, a2, a3, a4);
    v34.mGreen = v23;
    v34.mBlue = v24;
    v34.mAlpha = v25;
    v33.mRed = ITColor::CreateFromHSVDoubles(v26, a6, a7, a8);
    v33.mGreen = v27;
    v33.mBlue = v28;
    v33.mAlpha = v29;
    if (ITColor::GetContrastWithColor(&v34, &v33) <= 1.65999997)
    {
      return 1;
    }
  }

  if (vabdd_f64(a3, a7) > a10 || vabdd_f64(a4, a8) > a10)
  {
    return 0;
  }

  if (vabdd_f64(a2, a6) <= a10)
  {
    return 1;
  }

  v31 = a2 + 1.0;
  if (a2 >= a10)
  {
    v31 = a2;
  }

  v32 = a6 + 1.0;
  if (a6 >= a10)
  {
    v32 = a6;
  }

  return vabdd_f64(v31, v32) <= a10;
}

void ImageAnalyzer::ImageAnalyzer(ImageAnalyzer *this)
{
  ITColor::ITColor((this + 40));
  ITColor::ITColor((this + 72));
  ITColor::ITColor((this + 104));
  ITColor::ITColor((this + 136));
  ITColor::ITColor((this + 168));
  ITColor::ITColor((this + 200));
  ITColor::ITColor((this + 232));
  ITColor::ITColor((this + 264));
  ITColor::ITColor((this + 296));
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
}

void ImageAnalyzer::~ImageAnalyzer(ImageAnalyzer *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *this = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    free(v3);
    *(this + 2) = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    free(v4);
    *(this + 1) = 0;
  }

  v5 = *(this + 44);
  if (v5)
  {
    *(this + 45) = v5;
    operator delete(v5);
  }

  v6 = *(this + 41);
  if (v6)
  {
    *(this + 42) = v6;
    operator delete(v6);
  }
}

uint64_t ImageAnalyzer::AnalyzeImage(ImageAnalyzer *this, CGContext *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = ImageAnalyzer::GenerateColorMaps(this, a2);
  if (result)
  {
    result = ImageAnalyzer::QuantizeColorMaps(this);
    if (result)
    {
      ImageAnalyzer::PickBackgroundColor(this);
      ImageAnalyzer::PickTextColors(this);
      ImageAnalyzer::DoPostImageAnalysis(this);
      return 1;
    }
  }

  return result;
}

uint64_t ImageAnalyzer::GenerateColorMaps(ImageAnalyzer *this, CGContextRef context)
{
  if (!context)
  {
    return 0;
  }

  BytesPerRow = CGBitmapContextGetBytesPerRow(context);
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
  result = 0;
  if (Height == 102 && Width == 102)
  {
    ITColor::ITColor(&v34);
    BitmapInfo = CGBitmapContextGetBitmapInfo(context);
    result = CGBitmapContextGetData(context);
    v32 = result;
    if (result)
    {
      result = malloc_type_calloc(0x28A4uLL, 0x20uLL, 0x1000040E0EAB150uLL);
      *this = result;
      if (result)
      {
        result = malloc_type_calloc(0x28A4uLL, 0x20uLL, 0x1000040E0EAB150uLL);
        *(this + 1) = result;
        if (result)
        {
          v11 = 0;
          v12 = BitmapInfo & 0x3000;
          for (i = 1; i != 101; ++i)
          {
            v14 = 0;
            v15 = 24;
            do
            {
              v16 = v32 + BytesPerRow * i + v14;
              if (v12)
              {
                v17 = 4;
              }

              else
              {
                v17 = 7;
              }

              if (v12)
              {
                v18 = 5;
              }

              else
              {
                v18 = 6;
              }

              if (v12)
              {
                v19 = 6;
              }

              else
              {
                v19 = 5;
              }

              LOBYTE(v8) = *(v16 + v19);
              LOBYTE(v9) = *(v16 + v18);
              LOBYTE(v10) = *(v16 + v17);
              ITColor::ITColor(&v35, *&v8 / 255.0, *&v9 / 255.0, v10 / 255.0, 1.0);
              v34 = v35;
              HSVColor = ITColor::GetHSVColor(&v35);
              v22 = v21;
              v24 = v23;
              ITColor::GetLuminance(&v35);
              v25 = *this + v11;
              v26 = (v25 + v15);
              *(v26 - 3) = HSVColor;
              v27 = v25 + 8 * v14;
              *(v27 + 8) = v22;
              *(v27 + 16) = v24;
              *v26 = v28;
              v29 = *(this + 1) + v11;
              v30 = (v29 + v15);
              *(v30 - 3) = HSVColor;
              v31 = v29 + 8 * v14;
              *(v31 + 8) = v22;
              *(v31 + 16) = v24;
              *v30 = v28;
              v9 = *(this + 48);
              v8 = v28 + v9;
              *(this + 48) = v8;
              v14 += 4;
              v15 += 32;
            }

            while (v14 != 400);
            v11 += 3200;
          }

          *(this + 48) = v8 / 10000.0;
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t ImageAnalyzer::QuantizeColorMaps(ImageAnalyzer *this)
{
  result = malloc_type_calloc(0x2710uLL, 8uLL, 0x100004000313F17uLL);
  *(this + 2) = result;
  if (result)
  {
    result = malloc_type_calloc(0x2710uLL, 1uLL, 0x100004077774924uLL);
    if (result)
    {
      v3 = result;
      v4 = 0;
      v5 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v6 = 1;
      do
      {
        if ((v3[v5] & 1) == 0)
        {
          v7 = (*this + 32 * v5);
          v8 = ImageAnalyzer::WeightForPointOnEdge(result, v5 - 100 * (v5 / 0x64u), v5 / 0x64u);
          v23 = *v7;
          v24 = v7[1];
          v30[0] = *v7;
          v30[1] = v24;
          v31 = v5;
          v32 = v8;
          v34 = v4;
          sub_21A16F41C(&v33, v30);
          *(*(this + 2) + 8 * v5) = v32;
          v3[v5] = 1;
          if (v5 <= 0x270E)
          {
            v9 = v6;
            do
            {
              if ((v3[v9] & 1) == 0)
              {
                v10 = *this + 32 * v9;
                v25 = *(v10 + 16);
                v26 = *v10;
                result = isCloseToColor(0, *&v23, *(&v23 + 1), *&v24, *(&v24 + 1), *v10, *(v10 + 8), *&v25, *(v10 + 24), 0.0799999982);
                if (result)
                {
                  v11 = ImageAnalyzer::WeightForPointOnEdge(result, v9 - 100 * (v9 / 0x64u), v9 / 0x64u);
                  v27[0] = v26;
                  v27[1] = v25;
                  v28 = v9;
                  v29 = v11;
                  ImageAnalyzer::AddQuantizeColorEntryToSet(v12, v27, &v33);
                  v3[v9] = 1;
                }
              }

              ++v9;
            }

            while (v9 != 10000);
          }

          v4 = v33;
          if (v34 != v33)
          {
            *&v27[0] = CompareQuantizeSortcolor;
            sub_21A170684(v33, v34, v27, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v34 - v33)), 1);
            v4 = v33;
            v13 = *(v33 + 8);
            v14 = *(v33 + 5);
            v15 = 0xAAAAAAAAAAAAAAABLL * (v34 - v33);
            if (v15 >= 2)
            {
              v16 = v33 + 11;
              v17 = v15 - 1;
              do
              {
                v18 = *(v16 - 2);
                v19 = *v16;
                if ((v3[v18] & 1) == 0)
                {
                  v3[v18] = 1;
                }

                v14 = v14 + v19;
                v16 += 6;
                v20 = (*this + 32 * v13);
                v21 = v20[1];
                v22 = (*this + 32 * v18);
                *v22 = *v20;
                v22[1] = v21;
                --v17;
              }

              while (v17);
            }

            *(*(this + 2) + 8 * v13) = v14;
          }
        }

        ++v5;
        ++v6;
      }

      while (v5 != 10000);
      free(v3);
      if (v4)
      {
        v34 = v4;
        operator delete(v4);
      }

      return 1;
    }
  }

  return result;
}