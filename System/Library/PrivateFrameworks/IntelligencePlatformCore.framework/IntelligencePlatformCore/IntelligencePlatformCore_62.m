uint64_t sub_1C4998068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v3 = sub_1C4EFD678();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = sub_1C4EFF658();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v23 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v48 - v25;
  v27 = sub_1C4EFF8F8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v32;
  sub_1C446C964(v55, v26, &qword_1EC0BAA00, &unk_1C4F17400);
  v34 = sub_1C44157D4(v26, 1, v33);
  v50 = v33;
  v59 = v28;
  if (v34 == 1)
  {
    sub_1C440BAA8(v22, 1, 1, v3);
    sub_1C4EFF8C8();
    if (sub_1C44157D4(v26, 1, v33) != 1)
    {
      sub_1C4420C3C(v26, &qword_1EC0BAA00, &unk_1C4F17400);
    }
  }

  else
  {
    (*(v28 + 32))(v31, v26, v33);
  }

  v35 = v61;
  sub_1C4EFF648();
  type metadata accessor for GraphTriple(0);
  v60[3] = sub_1C4EFB298();
  v60[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v60);
  sub_1C4EFDCA8();
  sub_1C4999D1C(&qword_1EDDFE210, type metadata accessor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v60);
  sub_1C4EFF8E8();
  v36 = sub_1C44157D4(v20, 1, v3);
  v37 = v57;
  if (v36 == 1)
  {
    sub_1C4420C3C(v20, &unk_1EC0C07E0, &unk_1C4F168F0);
    v38 = v58;
  }

  else
  {
    v39 = v48;
    v40 = v49;
    (*(v49 + 32))(v48, v20, v3);
    sub_1C4EFD658();
    sub_1C4401CBC(&qword_1EDDF0108, &unk_1EC0C0800, &qword_1C4F0F948);
    v41 = v51;
    sub_1C4EFB308();

    v42 = v39;
    v35 = v61;
    (*(v40 + 8))(v42, v3);
    v38 = v58;
    (*(v58 + 8))(v12, v37);
    (*(v38 + 32))(v12, v41, v37);
  }

  result = sub_1C4EFF8D8();
  v44 = v59;
  if (v45)
  {
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_1C4401CBC(&qword_1EC0C0810, &unk_1EC0C0800, &qword_1C4F0F948);
    v46 = v51;
    sub_1C4EFB608();
    (*(v38 + 8))(v12, v37);
    (*(v38 + 32))(v12, v46, v37);
LABEL_11:
    sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
    sub_1C4999D1C(&qword_1EDDFE208, type metadata accessor for GraphTriple);
    v47 = sub_1C4EFAFE8();
    (*(v38 + 8))(v12, v37);
    (*(v52 + 8))(v35, v53);
    (*(v44 + 8))(v31, v50);
    return v47;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C49987AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v3 = sub_1C4EFD678();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&qword_1EC0BF758, &qword_1C4F3A6C0);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = sub_1C4EFF658();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v23 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v48 - v25;
  v27 = sub_1C4EFF8F8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v32;
  sub_1C446C964(v55, v26, &qword_1EC0BAA00, &unk_1C4F17400);
  v34 = sub_1C44157D4(v26, 1, v33);
  v50 = v33;
  v59 = v28;
  if (v34 == 1)
  {
    sub_1C440BAA8(v22, 1, 1, v3);
    sub_1C4EFF8C8();
    if (sub_1C44157D4(v26, 1, v33) != 1)
    {
      sub_1C4420C3C(v26, &qword_1EC0BAA00, &unk_1C4F17400);
    }
  }

  else
  {
    (*(v28 + 32))(v31, v26, v33);
  }

  v35 = v61;
  sub_1C4EFF648();
  type metadata accessor for LiveGlobalKnowledgeTriple();
  v60[3] = sub_1C4EFB298();
  v60[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v60);
  sub_1C4EFDCA8();
  sub_1C4999D1C(&qword_1EDDE1270, type metadata accessor for LiveGlobalKnowledgeTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v60);
  sub_1C4EFF8E8();
  v36 = sub_1C44157D4(v20, 1, v3);
  v37 = v57;
  if (v36 == 1)
  {
    sub_1C4420C3C(v20, &unk_1EC0C07E0, &unk_1C4F168F0);
    v38 = v58;
  }

  else
  {
    v39 = v48;
    v40 = v49;
    (*(v49 + 32))(v48, v20, v3);
    sub_1C4EFD658();
    sub_1C4401CBC(&unk_1EC0C0830, &qword_1EC0BF758, &qword_1C4F3A6C0);
    v41 = v51;
    sub_1C4EFB308();

    v42 = v39;
    v35 = v61;
    (*(v40 + 8))(v42, v3);
    v38 = v58;
    (*(v58 + 8))(v12, v37);
    (*(v38 + 32))(v12, v41, v37);
  }

  result = sub_1C4EFF8D8();
  v44 = v59;
  if (v45)
  {
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_1C4401CBC(&qword_1EC0C0828, &qword_1EC0BF758, &qword_1C4F3A6C0);
    v46 = v51;
    sub_1C4EFB608();
    (*(v38 + 8))(v12, v37);
    (*(v38 + 32))(v12, v46, v37);
LABEL_11:
    sub_1C4401CBC(&qword_1EC0BF760, &qword_1EC0BF758, &qword_1C4F3A6C0);
    sub_1C4999D1C(&qword_1EC0C0820, type metadata accessor for LiveGlobalKnowledgeTriple);
    v47 = sub_1C4EFAFE8();
    (*(v38 + 8))(v12, v37);
    (*(v52 + 8))(v35, v53);
    (*(v44 + 8))(v31, v50);
    return v47;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4998EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v3 = sub_1C4EFD678();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = sub_1C4EFF658();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v23 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v48 - v25;
  v27 = sub_1C4EFF8F8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v32;
  sub_1C446C964(v55, v26, &qword_1EC0BAA00, &unk_1C4F17400);
  v34 = sub_1C44157D4(v26, 1, v33);
  v50 = v33;
  v59 = v28;
  if (v34 == 1)
  {
    sub_1C440BAA8(v22, 1, 1, v3);
    sub_1C4EFF8C8();
    if (sub_1C44157D4(v26, 1, v33) != 1)
    {
      sub_1C4420C3C(v26, &qword_1EC0BAA00, &unk_1C4F17400);
    }
  }

  else
  {
    (*(v28 + 32))(v31, v26, v33);
  }

  v35 = v61;
  sub_1C4EFF648();
  type metadata accessor for EventTriple(0);
  v60[3] = sub_1C4EFB298();
  v60[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v60);
  sub_1C4EFDCA8();
  sub_1C4999D1C(&qword_1EDDFE2E8, type metadata accessor for EventTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v60);
  sub_1C4EFF8E8();
  v36 = sub_1C44157D4(v20, 1, v3);
  v37 = v57;
  if (v36 == 1)
  {
    sub_1C4420C3C(v20, &unk_1EC0C07E0, &unk_1C4F168F0);
    v38 = v58;
  }

  else
  {
    v39 = v48;
    v40 = v49;
    (*(v49 + 32))(v48, v20, v3);
    sub_1C4EFD658();
    sub_1C4401CBC(&qword_1EC0C07F8, &qword_1EC0BDFD0, &qword_1C4F324F8);
    v41 = v51;
    sub_1C4EFB308();

    v42 = v39;
    v35 = v61;
    (*(v40 + 8))(v42, v3);
    v38 = v58;
    (*(v58 + 8))(v12, v37);
    (*(v38 + 32))(v12, v41, v37);
  }

  result = sub_1C4EFF8D8();
  v44 = v59;
  if (v45)
  {
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_1C4401CBC(&qword_1EC0C07F0, &qword_1EC0BDFD0, &qword_1C4F324F8);
    v46 = v51;
    sub_1C4EFB608();
    (*(v38 + 8))(v12, v37);
    (*(v38 + 32))(v12, v46, v37);
LABEL_11:
    sub_1C4401CBC(&unk_1EDDFF9D0, &qword_1EC0BDFD0, &qword_1C4F324F8);
    sub_1C4999D1C(&qword_1EDDFC2C8, type metadata accessor for EventTriple);
    v47 = sub_1C4EFAFE8();
    (*(v38 + 8))(v12, v37);
    (*(v52 + 8))(v35, v53);
    (*(v44 + 8))(v31, v50);
    return v47;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4999628()
{
  result = qword_1EC0C0758;
  if (!qword_1EC0C0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0758);
  }

  return result;
}

uint64_t sub_1C499967C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 32);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C49996D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C499974C()
{
  result = qword_1EC0C0770;
  if (!qword_1EC0C0770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0770);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InternalXPC.InternalXPCError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C49998B8()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C440E474(v4);

  return v7(v6);
}

uint64_t sub_1C4999948()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C440E474(v4);

  return v7(v6);
}

uint64_t sub_1C49999D8()
{
  sub_1C43FCF70();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1C43FC218(v4);
  *v5 = v6;
  v5[1] = sub_1C4999D74;

  return sub_1C4996DE8(v1, v2, v3);
}

uint64_t sub_1C4999A84()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C440E474(v4);

  return v7(v6);
}

uint64_t sub_1C4999B14()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1C43FBDAC();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1C4999BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C4997924(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4999C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C4998068(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4999C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C49987AC(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4999C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C4998EE8(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4999D1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4999D88(int a1, char a2)
{
  if (!flock(a1, 8))
  {
    return sub_1C4999FA0();
  }

  sub_1C4F02248();
  v4 = sub_1C446A060(a2);
  MEMORY[0x1C6940010](v4);

  v5 = sub_1C441FDAC();
  MEMORY[0x1C6940010](v5);
  sub_1C4EF98F8();
  sub_1C44266D0();
  sub_1C4F02858();
  sub_1C4408C4C();

  v6 = MEMORY[0x1C6940010](0xD00000000000002DLL, 0x80000001C4FAB270);
  MEMORY[0x1C693F6A0](v6);
  sub_1C4F02858();
  sub_1C4408C4C();

  sub_1C44072D4();
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C4999FA0()
{
  result = sub_1C4F00A38();
  if ((result & 0x100000000) != 0)
  {
    v1 = result;
    sub_1C499A9B0();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v2 = v1;
  }

  return result;
}

uint64_t sub_1C499A018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF98F8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDDFECB8);
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CB8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33[0] = v16;
    *v15 = 136315138;
    v17 = sub_1C446A060(a2);
    v31 = v7;
    v19 = sub_1C441D828(v17, v18, v33);
    v7 = v31;

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1C43F8000, v13, v14, "%s: unlock called.", v15, 0xCu);
    sub_1C440962C(v16);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (*(v7 + 16))(v11, a1, v4);
  type metadata accessor for InterprocessLockDescriptors();
  v20 = sub_1C499A458(a1, a2);
  if ((v20 & 0x100000000) != 0)
  {
    sub_1C440AD7C();
    sub_1C4F02248();
    v22 = sub_1C446A060(a2);
    MEMORY[0x1C6940010](v22);

    v23 = sub_1C441FDAC();
    MEMORY[0x1C6940010](v23);
    sub_1C44266D0();
    sub_1C44133D4();
    sub_1C440F848();

    MEMORY[0x1C6940010](0xD000000000000032, 0x80000001C4FAB2D0);
    sub_1C440AD8C();
    v24 = 75;
  }

  else
  {
    if (!flock(v20, 8))
    {
      sub_1C4999FA0();
      return (*(v7 + 8))(v11, v4);
    }

    sub_1C440AD7C();
    sub_1C4F02248();
    v25 = sub_1C446A060(a2);
    v27 = v26;

    v33[0] = v25;
    v33[1] = v27;
    v28 = sub_1C441FDAC();
    MEMORY[0x1C6940010](v28);
    sub_1C44266D0();
    sub_1C44133D4();
    sub_1C440F848();

    v29 = MEMORY[0x1C6940010](0xD000000000000028, 0x80000001C4FAB310);
    LODWORD(v32) = MEMORY[0x1C693F6A0](v29);
    sub_1C4F02858();
    sub_1C440F848();

    sub_1C440AD8C();
    v24 = 79;
  }

  v30 = v24;
  sub_1C44072D4();
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

unint64_t sub_1C499A458(uint64_t a1, uint64_t a2)
{
  if (qword_1EDDF2318 != -1)
  {
    swift_once();
  }

  result = sub_1C446A178();
  if (!v2)
  {
    v5 = *(result + 16);

    os_unfair_lock_lock((v5 + 24));
    v6 = *(v5 + 16);
    swift_beginAccess();
    v7 = *(v6 + 16);
    if (*(v7 + 16) && (v8 = sub_1C446A3F0(a2), (v9 & 1) != 0))
    {
      v10 = 0;
      v11 = *(*(v7 + 56) + 4 * v8);
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }

    swift_endAccess();
    os_unfair_lock_unlock((v5 + 24));

    return v11 | (v10 << 32);
  }

  return result;
}

uint64_t sub_1C499A56C()
{
  result = sub_1C4400720() & 0xFFFFFFFFFFFFLL | 0x5365000000000000;
  switch(v1)
  {
    case 1:
      result = sub_1C43FD3B0();
      break;
    case 2:
      result = sub_1C4432574();
      break;
    case 3:
      result = sub_1C4400720() & 0xFFFFFFFFFFFFLL | 0x4365000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C499A62C()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C499A69C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C499A62C();
  *a2 = result;
  return result;
}

uint64_t sub_1C499A6CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1C499A56C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1C499A700()
{
  sub_1C456902C(&qword_1EC0C0850, &unk_1C4F3F320);
  swift_allocObject();
  result = sub_1C4CE5730();
  qword_1EDDF2320 = result;
  return result;
}

uint64_t sub_1C499A74C(uint64_t a1)
{
  type metadata accessor for InterprocessLockDescriptors.GuardedData();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  sub_1C456902C(&qword_1EC0C0848, &qword_1C4F3F318);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v1 + 16) = v4;
  sub_1C4409954(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCoreP33_68ED29ADC1C8F1510ECF194B6AB7052227InterprocessLockDescriptors_config);
  return v1;
}

uint64_t sub_1C499A7E4()
{
  v1 = v0[2];

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCoreP33_68ED29ADC1C8F1510ECF194B6AB7052227InterprocessLockDescriptors_config);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for InterprocessLock(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C499A95C()
{
  result = qword_1EDDF5B70;
  if (!qword_1EDDF5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF5B70);
  }

  return result;
}

unint64_t sub_1C499A9B0()
{
  result = qword_1EC0C0840;
  if (!qword_1EC0C0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0840);
  }

  return result;
}

uint64_t sub_1C499AA04(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v11 = type metadata accessor for Source();
  *(v3 + 48) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  v14 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v17 = type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor();
  *(v3 + 88) = v17;
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 129) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C499AB68, 0, 0);
}

uint64_t sub_1C499AB68()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 16);
  sub_1C4419B5C();
  sub_1C4471928(v3, v4, v5);
  if (qword_1EDDFD178 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 129);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 64);
  v19 = *(v0 + 56);
  v20 = *(v0 + 72);
  v12 = *(v0 + 16);
  v13 = sub_1C442B738(*(v0 + 48), &qword_1EDDFD180);
  *(v0 + 112) = v13;
  sub_1C4471928(v13, v7 + *(v9 + 20), type metadata accessor for Source);
  *(v7 + *(v9 + 24)) = v6;
  sub_1C4471928(v12, v10, type metadata accessor for PhaseStores);
  sub_1C4471928(v13, v11, type metadata accessor for Source);
  sub_1C4471928(v7, v8, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
  sub_1C4471928(v13, v19, type metadata accessor for Source);
  sub_1C4471928(v12, v20, type metadata accessor for PhaseStores);
  *(v0 + 128) = v6;
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_1C499AD44;
  v15 = *(v0 + 72);
  v16 = *(v0 + 56);
  v17 = *(v0 + 40);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C499AD44()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C499AE40, 0, 0);
}

uint64_t sub_1C499AE40()
{
  v1 = *(v0 + 129);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v23 = *(v0 + 64);
  v24 = *(v0 + 80);
  v6 = *(v0 + 32);
  v25 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  sub_1C4471928(*(v0 + 112), *(v0 + 56), type metadata accessor for Source);
  sub_1C4419B5C();
  sub_1C4471928(v8, v5, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C448550C(v8, type metadata accessor for PhaseStores);
  sub_1C448550C(v2, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
  v10 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v3;
  v10[4] = sub_1C499B128();
  v11 = sub_1C4422F90(v10);
  sub_1C499B180(v4, v11, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
  sub_1C441FDB8();
  sub_1C499B180(v23, v12, v13);
  sub_1C441FDB8();
  sub_1C499B180(v24, v14, v15);
  sub_1C441FDB8();
  sub_1C499B180(v25, v16, v17);
  sub_1C441FDB8();
  sub_1C499B180(v6, v18, v19);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v20 = *(v0 + 8);
  v21 = *(v0 + 24);

  return v20(v21);
}

uint64_t type metadata accessor for IPEntityTaggingPersonInferencePhase()
{
  result = qword_1EC0C0858;
  if (!qword_1EC0C0858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C499B128()
{
  result = qword_1EC0C0868;
  if (!qword_1EC0C0868)
  {
    type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0868);
  }

  return result;
}

uint64_t sub_1C499B180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor()
{
  result = qword_1EC0C0870;
  if (!qword_1EC0C0870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C499B254()
{
  v1 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C43FD2C8(&v78 - v3);
  v95 = sub_1C4EFDE18();
  v4 = sub_1C43FCDF8(v95);
  v94 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v9 - v8);
  v10 = sub_1C4EFDE68();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v13 - v12);
  v14 = sub_1C4EFDE88();
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v100 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  v104 = v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  v103 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v78 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v101 = &v78 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v78 - v36;
  v92 = sub_1C4EFDE98();
  v38 = sub_1C43FCDF8(v92);
  v91 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBCC4();
  v86 = v43 - v42;
  v44 = swift_allocObject();
  v106 = v44;
  *(v44 + 16) = 0;
  v98 = (v44 + 16);
  v45 = swift_allocObject();
  v105 = v45;
  *(v45 + 16) = 0;
  v97 = (v45 + 16);
  v120 = MEMORY[0x1E69E7CC0];
  v119 = MEMORY[0x1E69E7CC0];
  v46 = *(type metadata accessor for PhaseStores() + 24);
  v82 = v0;
  v87 = *(v0 + v46);
  sub_1C456902C(&unk_1EC0BAC00, &unk_1C4F11680);
  v47 = *(type metadata accessor for Source() - 8);
  v48 = *(v47 + 72);
  v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C4F0D130;
  v51 = *(type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor() + 20);
  sub_1C4419B74();
  sub_1C448CE44(v0 + v52, v50 + v49, v53);
  SourceSet.init(arrayLiteral:)(&v118, v50);
  v80 = v118;
  v54 = *MEMORY[0x1E69A95C0];
  v55 = *(v17 + 104);
  v81 = v37;
  sub_1C43FDA64();
  v55();
  sub_1C43FDA64();
  v55();
  v56 = v33;
  v79 = v33;
  sub_1C43FDA64();
  v55();
  v57 = v83;
  sub_1C43FDA64();
  v55();
  v58 = v84;
  sub_1C43FDA64();
  v55();
  v59 = v85;
  sub_1C43FDA64();
  v55();
  v60 = *(v100 + 16);
  v60(v102, v37, v14);
  v60(v103, v101, v14);
  v60(v104, v56, v14);
  v60(v88, v57, v14);
  v60(v89, v58, v14);
  v60(v90, v59, v14);
  v61 = v93;
  sub_1C4EFDD38();
  (*(v94 + 104))(v61, *MEMORY[0x1E69A95A8], v95);
  sub_1C4EFDE28();
  v62 = v86;
  sub_1C4EFDEA8();
  v63 = *(v100 + 8);
  v63(v59, v14);
  v63(v58, v14);
  v63(v57, v14);
  v64 = v82;
  v63(v79, v14);
  v63(v101, v14);
  v63(v81, v14);
  v65 = sub_1C4EFD678();
  v66 = v96;
  sub_1C440BAA8(v96, 1, 1, v65);
  v115 = v64;
  v116 = &v120;
  v117 = &v119;
  sub_1C48687D0(v62, v66, sub_1C499CDBC, v114);
  sub_1C499CDC8(v66);
  (*(v91 + 8))(v62, v92);
  sub_1C4681710(v120, v119);
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  v68 = (v67 + 16);
  v69 = [BiomeLibrary() IntelligencePlatform];
  swift_unknownObjectRelease();
  v70 = [v69 EntityTagging];
  swift_unknownObjectRelease();
  v71 = [v70 PersonInference];
  swift_unknownObjectRelease();
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  v108 = v71;
  v109 = v64;
  v110 = v67;
  v111 = v72;
  v112 = v106;
  v113 = v105;
  v73 = v99;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C499CE30, v107);
  if (!v73)
  {
    swift_beginAccess();
    v74 = *v68;
    if (*v68)
    {
      v75 = *v68;
      swift_willThrow();
      v76 = v74;

      goto LABEL_5;
    }

    sub_1C4EF9AE8();
    sub_1C464B4B0();
  }

LABEL_5:
  sub_1C499BC18(v64, v97, v98);
}

uint64_t sub_1C499BC18(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C448CE44(a1, v10, type metadata accessor for Configuration);
  v10[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C44BCADC(v10, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  swift_beginAccess();
  v13 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_beginAccess();
  v14 = *a3;
  swift_beginAccess();
  result = v14 - *a2;
  if (__OFSUB__(v14, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C499BED8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v29 = a3;
  v31 = a2;
  v6 = sub_1C456902C(&qword_1EC0BAC10, &unk_1C4F0F030);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = type metadata accessor for GraphTriple(0);
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDF7900 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v14, qword_1EDE2D620);
  String.base64EncodedSHA(withPrefix:)();
  v16 = v15;
  v18 = v17;
  v19 = *(type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor() + 20);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  sub_1C4B4AF44();
  swift_setDeallocating();
  sub_1C44DEE40();
  if (*&v13[*(v10 + 36)])
  {
    v21 = *(v6 + 48);
    sub_1C448CE44(a1, v9, type metadata accessor for GraphTriple);
    sub_1C448CE44(v13, &v9[v21], type metadata accessor for GraphTriple);
    sub_1C4588FA8();
    v22 = *(*a4 + 16);
    sub_1C4589B90();
    sub_1C44BCADC(v13, type metadata accessor for GraphTriple);
    v23 = *a4;
    *(v23 + 16) = v22 + 1;
    sub_1C46829D4(v9, v23 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22);
  }

  else
  {
    v24 = v29;
    sub_1C4588D78();
    v25 = *(*v24 + 16);
    sub_1C4589968();
    sub_1C44BCADC(v13, type metadata accessor for GraphTriple);
    v26 = *v24;
    *(v26 + 16) = v25 + 1;
    sub_1C448CE44(a1, v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for GraphTriple);
  }

  return 1;
}

uint64_t sub_1C499C218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v41 = a9;
  v38 = a7;
  v39 = a8;
  v36 = a2;
  v37 = a6;
  v34 = a5;
  v35 = a1;
  v11 = type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = [a3 publisher];
  v46 = nullsub_1;
  v47 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v32[1] = &v44;
  v44 = sub_1C44405F8;
  v45 = &unk_1F43F2478;
  v33 = _Block_copy(&aBlock);
  sub_1C448CE44(a4, v14, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1C499D10C(v14, v20 + v15);
  v21 = v35;
  *(v20 + v16) = v34;
  v22 = v37;
  v23 = v38;
  *(v20 + v17) = v37;
  *(v20 + v18) = v23;
  v24 = (v20 + v19);
  v25 = v36;
  *v24 = v21;
  v24[1] = v25;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v46 = sub_1C499D170;
  v47 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1C45AF9C8;
  v45 = &unk_1F43F24C8;
  v26 = _Block_copy(&aBlock);

  v27 = v22;

  v28 = v40;
  v29 = v33;
  v30 = [v40 sinkWithCompletion:v33 shouldContinue:v26];
  _Block_release(v26);
  _Block_release(v29);

  result = swift_beginAccess();
  *v41 = *(v27 + 16);
  return result;
}

uint64_t sub_1C499C50C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  sub_1C4ACF474();
  swift_beginAccess();
  v14 = *(a3 + 16);
  if (v14)
  {
    swift_beginAccess();
    *(a4 + 16) = 1;
    return v14 == 0;
  }

  v15 = [a1 eventBody];
  if (!v15)
  {
    return v14 == 0;
  }

  v16 = v15;
  result = swift_beginAccess();
  v18 = *(a5 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v20;
    v26[0] = *(a2 + *(type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor() + 24));
    sub_1C499C724(v26);
    sub_1C4812140();
    v22 = v21;

    a6(v22);

    result = swift_beginAccess();
    v23 = *(a8 + 16);
    v19 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v19)
    {
      *(a8 + 16) = v24;
      return v14 == 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C499C724(unsigned __int8 *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C0890, &qword_1C4F3F420);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v63 - v6;
  v8 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType(0);
  v9 = sub_1C43FBCE0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person(0);
  v16 = sub_1C43FBCE0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v71 = *a1;
  if (qword_1EDDF7900 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v22, qword_1EDE2D620);
  String.base64EncodedSHA(withPrefix:)();
  v24 = v23;
  v26 = v25;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4DDB44C();
  if (v2)
  {
  }

  else
  {
    v66 = v24;
    v67 = v1;
    v65 = v7;
    v27 = *(v15 + 36);
    v68 = v21;
    v28 = (v21 + v27);
    v29 = *(v21 + v27 + 8);

    *v28 = xmmword_1C4F17530;
    v30 = sub_1C4EFEEF8();
    sub_1C440BAA8(v14, 1, 1, v30);
    v31 = v14 + v8[5];
    sub_1C4EFD318();
    v32 = v8[6];
    if (qword_1EDDFD178 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Source();
    sub_1C442B738(v33, &qword_1EDDFD180);
    sub_1C4419B74();
    sub_1C448CE44(v34, v14 + v32, v35);
    v36 = v14 + v8[7];
    sub_1C4EFE808();
    v37 = (v14 + v8[8]);
    *v37 = 0;
    v37[1] = 0;
    v38 = v14 + v8[9];
    sub_1C4EFE878();
    v39 = (v14 + v8[10]);
    *v39 = 0;
    v39[1] = 0;
    v64 = v39;
    v40 = v14 + v8[11];
    sub_1C4EFE2A8();
    v41 = (v14 + v8[12]);
    *v41 = 0;
    v41[1] = 0;
    v42 = v14 + v8[13];
    sub_1C4EFEB28();
    v43 = (v14 + v8[14]);
    *v43 = 0;
    v43[1] = 0;
    v44 = v14 + v8[15];
    sub_1C4EFEB48();
    v45 = (v14 + v8[16]);
    *v45 = 0;
    v45[1] = 0;
    v46 = v67;
    if ([v67 hasEntityIdentifier])
    {
      v63 = v41;
      sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1C4F0D130;
      v48 = [v46 entityIdentifier];
      v49 = MEMORY[0x1E69E7738];
      *(v47 + 56) = MEMORY[0x1E69E76D8];
      *(v47 + 64) = v49;
      *(v47 + 32) = v48;
      *v37 = sub_1C4F01168();
      v37[1] = v50;
      *v43 = sub_1C499D240(v46);
      v43[1] = v51;
      [v46 entityTagID];
      v69 = sub_1C499CE54();
      v70 = v52;
      v53 = sub_1C4F01438();
      v54 = v64;
      *v64 = v53;
      v54[1] = v55;
      [v46 entityTagID];
      v69 = sub_1C499CE54();
      v70 = v56;
      *v45 = sub_1C4F01438();
      v45[1] = v57;
      if ([v46 hasScore])
      {
        [v46 score];
        v58 = sub_1C4F019E8();
        v59 = v63;
        *v63 = v58;
        v59[1] = v60;
      }

      v61 = v65;
      sub_1C448CE44(v14, v65, type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType);
      sub_1C440BAA8(v61, 0, 1, v8);
      sub_1C4DDBD9C(v61);
    }

    LOBYTE(v69) = v71;
    v24 = sub_1C4DDBF58(v66, v26, &v69);

    sub_1C440AD9C();
    sub_1C4400730();
  }

  return v24;
}

uint64_t sub_1C499CBD4()
{
  sub_1C499B254();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C499CC4C(uint64_t a1)
{
  v2 = *(a1 + 20);
  sub_1C4419B74();
  return sub_1C448CE44(v1 + v3, v4, v5);
}

uint64_t sub_1C499CCAC(uint64_t a1)
{
  result = sub_1C499CD78(&qword_1EC0C0880);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C499CCF0(uint64_t a1)
{
  result = sub_1C499CD78(&qword_1EC0C0888);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C499CD34(uint64_t a1)
{
  result = sub_1C499CD78(&qword_1EC0BA628);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C499CD78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C499CDC8(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C499CE54()
{
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C499D10C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C499D170(void *a1)
{
  v3 = *(type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C499C50C(a1, v1 + v4, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C499D240(void *a1)
{
  v1 = [a1 feedbackEventID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C499D2AC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C49A2490(a1, sub_1C49A2458, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C499D330(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E696F70 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C499D3EC(char a1)
{
  if (a1)
  {
    return 0x73746E696F70;
  }

  else
  {
    return 25705;
  }
}

void sub_1C499D414()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C0948, &qword_1C4F3F6F8);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE61C();
  v10 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C49A2A70();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0C0958, &qword_1C4F3F700);
    sub_1C49A2AC4(&qword_1EC0C0960, &qword_1EC0C0968);
    sub_1C4F027E8();
  }

  (*(v6 + 8))(v1, v4);
  sub_1C43FBC80();
}

uint64_t sub_1C499D5CC(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C0970, &qword_1C4F3F708);
  sub_1C43FCDF8(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C49A2A70();
  sub_1C4F02BC8();
  if (!v1)
  {
    v7 = sub_1C4F02678();
    sub_1C456902C(&qword_1EC0C0958, &qword_1C4F3F700);
    sub_1C49A2AC4(&qword_1EC0C0978, &qword_1EC0C0980);
    sub_1C4F026C8();
    v9 = sub_1C44069E0();
    v10(v9);
  }

  sub_1C440962C(a1);
  return v7;
}

uint64_t sub_1C499D7E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7890025 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C499D8A8(char a1)
{
  if (a1)
  {
    return 1702125924;
  }

  else
  {
    return 7890025;
  }
}

uint64_t sub_1C499D8D0(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C0998, &qword_1C4F3F718);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C49A2B60();
  sub_1C4F02BF8();
  v14 = *v3;
  v19[15] = 0;
  sub_1C4F027D8();
  if (!v2)
  {
    v15 = *(type metadata accessor for JointHUDataCollectionTaskManager.Point(0) + 20);
    v19[14] = 1;
    sub_1C4EF9CD8();
    sub_1C4411F90();
    sub_1C44724C0(v16, v17);
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1C499DA68()
{
  sub_1C43FE96C();
  v3 = v2;
  v32 = v4;
  v34 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v34);
  v31 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v35 = sub_1C456902C(&qword_1EC0C0988, &qword_1C4F3F710);
  sub_1C43FCDF8(v35);
  v33 = v9;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for JointHUDataCollectionTaskManager.Point(0);
  v16 = sub_1C43FBCE0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v21 = (v20 - v19);
  v22 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C49A2B60();
  sub_1C4F02BC8();
  if (!v0)
  {
    v30 = v15;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    *v21 = sub_1C4F026B8();
    sub_1C4411F90();
    sub_1C44724C0(v26, v27);
    v29 = v1;
    sub_1C4F026C8();
    (*(v23 + 8))(v14, v25);
    (*(v31 + 32))(v21 + *(v30 + 20), v29, v24);
    sub_1C49A27C0(v21, v32);
  }

  sub_1C440962C(v3);
  sub_1C43FBC80();
}

uint64_t sub_1C499DD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C499D330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C499DD3C(uint64_t a1)
{
  v2 = sub_1C49A2A70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C499DD78(uint64_t a1)
{
  v2 = sub_1C49A2A70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C499DDB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C499D5CC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_1C499DDE4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C499D414();
}

uint64_t sub_1C499DE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C499D7E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C499DE34(uint64_t a1)
{
  v2 = sub_1C49A2B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C499DE70(uint64_t a1)
{
  v2 = sub_1C49A2B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C499DEF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

void sub_1C499DF40()
{
  sub_1C43FE96C();
  v301 = v1;
  v3 = v0;
  v295 = v4;
  v276 = sub_1C4F01828();
  v5 = sub_1C43FCDF8(v276);
  v270 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v274 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v273 = v11;
  sub_1C43FBE44();
  v12 = type metadata accessor for Configuration();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1C43FBCC4();
  v281 = v15 - v14;
  v16 = sub_1C456902C(&qword_1EC0C0900, &unk_1C4F3F510);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  sub_1C43FBFDC();
  v279 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  v286 = v20;
  sub_1C43FBE44();
  v293 = sub_1C4EF9CD8();
  v21 = sub_1C43FCDF8(v293);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  v282 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  v287 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  v280 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  v271 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  v278 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  v291 = v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  v277 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  v292 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v294 = v42;
  sub_1C43FBE44();
  v43 = sub_1C4EF9D38();
  v44 = sub_1C43FCDF8(v43);
  v284 = v45;
  v285 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  v283 = v49 - v48;
  v50 = sub_1C43FBE44();
  v51 = type metadata accessor for JointHUDataCollectionTaskManager.Point(v50);
  v52 = sub_1C43FCDF8(v51);
  v272 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v299 = sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70);
  v56 = sub_1C43FCDF8(v299);
  v302 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBFDC();
  v298 = v60;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  v297 = v62;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v63);
  v65 = v267 - v64;
  v66 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_kvStore);
  v67 = v3;
  v68 = v3 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_savedStateKey;
  v69 = *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_savedStateKey);
  v70 = *(v68 + 8);
  v71 = v301;
  v72 = sub_1C4598E94();
  v300 = v23;
  if (v71)
  {

    v289 = 0;
LABEL_3:
    v75 = v293;
    goto LABEL_4;
  }

  v267[0] = v65;
  v267[1] = v66;
  v268 = v70;
  v269 = v69;
  v296 = v2;
  v301 = v51;
  v289 = 0;
  if (!v73)
  {
    goto LABEL_3;
  }

  v75 = v293;
  if (*(v74 + 16))
  {
    v290 = v73;
    v285 = v74;
    v275 = v72;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v110 = sub_1C4F00978();
    sub_1C442B738(v110, qword_1EDDFECB8);
    v111 = v290;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v112 = sub_1C4F00968();
    v113 = sub_1C4F01CB8();

    v114 = os_log_type_enabled(v112, v113);
    v115 = v300;
    v288 = v67;
    if (v114)
    {
      sub_1C43FEC60();
      v116 = swift_slowAlloc();
      sub_1C443FD74();
      v295 = swift_slowAlloc();
      v307[0] = v295;
      *v116 = 136315650;
      *(v116 + 4) = sub_1C4410EF0();
      *(v116 + 12) = 2080;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v117 = sub_1C441D828(v275, v111, v307);

      *(v116 + 14) = v117;
      *(v116 + 22) = 2048;
      v118 = *(v285 + 16);

      *(v116 + 24) = v118;
      v115 = v300;

      _os_log_impl(&dword_1C43F8000, v112, v113, "%s: Found saved state %s with %ld points. Will resume.", v116, 0x20u);
      swift_arrayDestroy();
      v67 = v288;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v250 = v268;
    v249 = v269;
    v251 = v272;
    v252 = *(v285 + 16);
    if (v252)
    {
      v307[0] = MEMORY[0x1E69E7CC0];
      v253 = v285;
      sub_1C459E978();
      v254 = v253 + ((*(v251 + 80) + 32) & ~*(v251 + 80));
      v255 = *(v251 + 9);
      v294 = v115 + 4;
      v295 = v255;
      v95 = v307[0];
      v256 = v299;
      v257 = v267[0];
      do
      {
        v258 = v296;
        sub_1C4430E88(v254, v296, type metadata accessor for JointHUDataCollectionTaskManager.Point);
        v259 = *(v256 + 48);
        *v257 = *v258;
        v260 = v75;
        (v294->isa)(v257 + v259, v258 + *(v301 + 20), v75);
        v307[0] = v95;
        v261 = *(v95 + 16);
        if (v261 >= *(v95 + 24) >> 1)
        {
          sub_1C459E978();
          v256 = v299;
          v95 = v307[0];
        }

        *(v95 + 16) = v261 + 1;
        sub_1C43FBF6C();
        sub_1C44CD9E0(v257, v95 + v262 + *(v263 + 72) * v261, &qword_1EC0B9078, &unk_1C4F30C70);
        v254 += v295;
        --v252;
        v75 = v260;
      }

      while (v252);

      v67 = v288;
      v250 = v268;
      v249 = v269;
    }

    else
    {

      v95 = MEMORY[0x1E69E7CC0];
    }

    v265._countAndFlagsBits = v249;
    v265._object = v250;
    KeyValueStore.delete(key:)(v265);
    v96 = v266;
    if (v266)
    {

      goto LABEL_20;
    }

    v87 = v300;
    v88 = v286;
    goto LABEL_11;
  }

LABEL_4:
  if (qword_1EDDFECB0 != -1)
  {
LABEL_83:
    sub_1C44064A8();
    swift_once();
  }

  v76 = sub_1C4F00978();
  sub_1C442B738(v76, qword_1EDDFECB8);
  sub_1C4426A94();

  v77 = sub_1C4F00968();
  v78 = sub_1C4F01CB8();

  if (os_log_type_enabled(v77, v78))
  {
    sub_1C43FECF0();
    v79 = swift_slowAlloc();
    sub_1C43FEC60();
    v80 = v75;
    v81 = swift_slowAlloc();
    v307[0] = v81;
    *v79 = 136315138;
    *(v79 + 4) = sub_1C441D828(*(v67 + 16), *(v67 + 24), v307);
    _os_log_impl(&dword_1C43F8000, v77, v78, "%s: deciding whether to sample.", v79, 0xCu);
    sub_1C440962C(v81);
    v75 = v80;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v82 = sub_1C49A0688();

  v83 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4409E60();

  v84 = sub_1C441ED60();
  if (!v82)
  {
    if (v84)
    {
      sub_1C43FECF0();
      v105 = swift_slowAlloc();
      sub_1C43FEC60();
      v106 = swift_slowAlloc();
      v307[0] = v106;
      *(v105 + 4) = sub_1C44044B4(4.8149e-34);
      sub_1C44003E4(&dword_1C43F8000, v107, v108, "%s: decided not to sample");
      sub_1C440962C(v106);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C49A2824();
    swift_allocError();
    *v109 = 1;
    goto LABEL_19;
  }

  if (v84)
  {
    sub_1C43FECF0();
    v85 = swift_slowAlloc();
    sub_1C43FEC60();
    v86 = swift_slowAlloc();
    v307[0] = v86;
    *v85 = 136315138;
    *(v85 + 4) = sub_1C441D828(*(v67 + 16), *(v67 + 24), v307);
    _os_log_impl(&dword_1C43F8000, v83, v77, "%s: decided that sampling will occur.", v85, 0xCu);
    sub_1C440962C(v86);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v87 = v300;
  v88 = v286;
  v89 = v283;
  sub_1C4EF9058();
  v275 = sub_1C4EF9CF8();
  v290 = v90;
  (*(v284 + 1))(v89, v285);
  v91 = v294;
  v92 = sub_1C4EF9BE8();
  MEMORY[0x1EEE9AC00](v92);
  v267[-2] = v91;
  v267[-1] = v67;
  v93 = v289;
  sub_1C45DB1D8();
  v95 = v94;
  v96 = v93;
  (v87[1].isa)(v91, v75);
LABEL_11:
  sub_1C4868694(v95, v88);
  v97 = v299;
  if (sub_1C44157D4(v88, 1, v299) == 1)
  {

    sub_1C4420C3C(v88, &qword_1EC0C0900, &unk_1C4F3F510);
    if (qword_1EDDFECB0 == -1)
    {
LABEL_13:
      v98 = sub_1C4F00978();
      sub_1C442B738(v98, qword_1EDDFECB8);
      sub_1C4426A94();

      v99 = sub_1C4F00968();
      sub_1C4F01CD8();
      sub_1C4409E60();

      if (sub_1C441ED60())
      {
        sub_1C43FECF0();
        v100 = swift_slowAlloc();
        sub_1C43FEC60();
        v101 = swift_slowAlloc();
        v307[0] = v101;
        *(v100 + 4) = sub_1C44044B4(4.8149e-34);
        sub_1C44003E4(&dword_1C43F8000, v102, v103, "%s: received empty timepoints. Stopping data collection due to unexpected state.");
        sub_1C440962C(v101);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      sub_1C49A2824();
      swift_allocError();
      *v104 = 0;
LABEL_19:
      swift_willThrow();
      goto LABEL_20;
    }

LABEL_85:
    sub_1C44064A8();
    swift_once();
    goto LABEL_13;
  }

  v288 = v67;
  v286 = v96;
  v119 = v292;
  isa = v87[4].isa;
  v121 = v277;
  isa(v277, v88 + *(v97 + 48), v75);
  isa(v119, v121, v75);
  v122 = v279;
  sub_1C4A3E29C(v95, v279);
  v123 = sub_1C44157D4(v122, 1, v97);
  v283 = &v87[4];
  v272 = isa;
  if (v123 == 1)
  {
    sub_1C4420C3C(v122, &qword_1EC0C0900, &unk_1C4F3F510);
    v124 = v87[2].isa;
    v125 = sub_1C441E4D0();
    v126(v125);
  }

  else
  {
    isa(v271, v122 + *(v97 + 48), v75);
    v127 = sub_1C441E4D0();
    (isa)(v127);
  }

  v295 = v95;
  v128 = v291;
  sub_1C4EF9BE8();
  v284 = v87[1].isa;
  v285 = &v87[1];
  (v284)(v97, v75);
  v129 = v288;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v130 = sub_1C4F00978();
  v131 = sub_1C442B738(v130, qword_1EDDFECB8);
  v132 = v87[2].isa;
  v133 = v280;
  v132(v280, v292, v75);
  v132(v287, v128, v75);

  v301 = v131;
  v134 = sub_1C4F00968();
  v135 = sub_1C4F01CB8();

  v136 = v129;
  if (sub_1C441ED60())
  {
    sub_1C43FEC60();
    v137 = swift_slowAlloc();
    v138 = v287;
    v139 = v137;
    v296 = swift_slowAlloc();
    v307[0] = v296;
    *(v139 + 4) = sub_1C44044B4(4.8152e-34);
    *(v139 + 12) = 2080;
    sub_1C4411F90();
    sub_1C44724C0(v140, v141);
    v294 = v134;
    v142 = sub_1C4F02858();
    v143 = v133;
    v144 = v75;
    v146 = v145;
    LODWORD(v289) = v135;
    v147 = v284;
    (v284)(v143, v144);
    v148 = sub_1C441D828(v142, v146, v307);
    v149 = v144;
    v150 = v290;

    *(v139 + 14) = v148;
    *(v139 + 22) = 2080;
    v151 = sub_1C4F02858();
    v153 = v152;
    v147(v138, v149);
    sub_1C441D828(v151, v153, v307);
    sub_1C4426A94();
    v136 = v288;

    *(v139 + 24) = v151;
    v154 = v294;
    _os_log_impl(&dword_1C43F8000, v294, v289, "%s: startTime = %s endTime = %s", v139, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v155 = v284;
    (v284)(v287, v75);
    v155(v133, v75);
    v150 = v290;
  }

  v156 = v286;
  v157 = v281;
  sub_1C4419B8C();
  sub_1C4430E88(v136 + v158, v157, v159);
  v160 = type metadata accessor for CUFeatureProvider();
  sub_1C43FD23C(v160);
  swift_allocObject();
  sub_1C46A4590(v157);
  if ([objc_opt_self() isBetaBuild])
  {
    v161 = 1;
  }

  else
  {
    v161 = [objc_opt_self() isInternalDevice];
  }

  v162 = v156;
  v163 = sub_1C46A52B8(v161);
  if (v156)
  {

    v164 = v156;
    v165 = sub_1C4F00968();
    v166 = sub_1C4F01CE8();

    if (os_log_type_enabled(v165, v166))
    {
      sub_1C441024C();
      v167 = swift_slowAlloc();
      sub_1C443FD74();
      v296 = swift_slowAlloc();
      v307[0] = v296;
      *v167 = 136315394;
      *(v167 + 4) = sub_1C4410EF0();
      *(v167 + 12) = 2080;
      swift_getErrorValue();
      v168 = sub_1C4F02A38();
      v170 = sub_1C441D828(v168, v169, v307);

      *(v167 + 14) = v170;
      _os_log_impl(&dword_1C43F8000, v165, v166, "%s: unable to generate cu signals: %s", v167, 0x16u);
      swift_arrayDestroy();
      v136 = v288;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C456902C(&qword_1EC0B9AE0, &qword_1C4F16C40);
    v171 = sub_1C4F00F28();
  }

  else
  {
    v171 = v163;
  }

  sub_1C49A0950();
  v173 = v172;
  sub_1C456902C(&qword_1EC0B9088, &qword_1C4F0EBB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001C4F8F2E0;
  *(inited + 72) = type metadata accessor for BehaviorsFeatureProvider();
  *(inited + 80) = sub_1C44724C0(&qword_1EC0C0920, type metadata accessor for BehaviorsFeatureProvider);
  *(inited + 48) = v173;

  *(inited + 88) = sub_1C4665B2C();
  *(inited + 104) = 1;
  sub_1C456902C(&qword_1EC0B9AE0, &qword_1C4F16C40);
  v175 = sub_1C4F00F28();
  v176 = *(v136 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorsFeatureProvider);
  *(v136 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorsFeatureProvider) = v173;

  v294 = sub_1C499D2AC(v171, v175);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v177 = sub_1C4F00968();
  sub_1C4F01CF8();

  v178 = sub_1C441ED60();
  v286 = 0;
  if (v178)
  {
    sub_1C43FECF0();
    v179 = swift_slowAlloc();
    sub_1C43FEC60();
    v175 = swift_slowAlloc();
    v307[0] = v175;
    *v179 = 136315138;
    v180 = v275;
    *(v179 + 4) = sub_1C441D828(v275, v150, v307);
    sub_1C44003E4(&dword_1C43F8000, v181, v182, "Features: Starting data collection with id %s");
    sub_1C440962C(v175);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v180 = v275;
  }

  v183 = v150;
  sub_1C4812934();
  v185 = v184;
  v186 = swift_allocObject();
  *(v186 + 16) = v180;
  *(v186 + 24) = v183;
  v290 = v183;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v187 = sub_1C4668774();
  sub_1C442E860(v136 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventTracker, v309);
  v188 = sub_1C456902C(&qword_1EC0C0910, &unk_1C4F3F520);
  sub_1C43FD23C(v188);
  v189 = swift_allocObject();
  sub_1C4418280(v309, v309[3]);
  v279 = v267;
  sub_1C43FCE64();
  v191 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v192);
  sub_1C43FBCC4();
  v194 = sub_1C4408C64(v193);
  v195(v194);
  v196 = *v175;
  v308[3] = sub_1C4F00518();
  v308[4] = &off_1F43E7288;
  v308[0] = v196;
  v197 = qword_1EC151B98;
  v198 = sub_1C456902C(&qword_1EC0B9CA8, &qword_1C4F22290);
  sub_1C440BAA8(v189 + v197, 1, 2, v198);
  v199 = (v189 + qword_1EC0BB058);
  *v199 = 0u;
  v199[1] = 0u;
  v199[2] = 0u;
  v199[3] = 0u;
  *(v189 + qword_1EC0BB060) = 0;
  *(v189 + qword_1EC0BB068) = 0;
  v200 = v294;
  *(v189 + 16) = v294;
  v201 = v185;
  *(v189 + 48) = sub_1C49A2898;
  *(v189 + 56) = v186;
  *(v189 + 32) = v185;
  *(v189 + 40) = 0x4072C00000000000;
  *(v189 + 64) = v187;
  *(v189 + 72) = 2;
  *(v189 + 80) = 256;
  v287 = v189;
  sub_1C442E860(v308, v189 + 88);
  sub_1C456902C(&qword_1EC0C0918, &unk_1C4F3F530);
  v202 = sub_1C4F02538();
  v203 = v200 + 8;
  v204 = 1 << LOBYTE(v200[4].isa);
  v205 = -1;
  if (v204 < 64)
  {
    v205 = ~(-1 << v204);
  }

  v206 = v205 & v200[8].isa;
  v207 = (v204 + 63) >> 6;
  v301 = v202;
  v289 = v202 + 64;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v281 = v201;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v280 = v186;

  v208 = 0;
  if (v206)
  {
    while (1)
    {
      v209 = __clz(__rbit64(v206));
      v206 &= v206 - 1;
      v214 = v209 | (v208 << 6);
      v215 = v294[7].isa;
      v216 = (v294[6].isa + 16 * v214);
      v217 = v216[1];
      v296 = *v216;
      sub_1C4460050(v215 + 64 * v214, v307, &qword_1EC0B9AE0, &qword_1C4F16C40);
      sub_1C4460050(v307, v303, &qword_1EC0B9AE0, &qword_1C4F16C40);
      v218 = v304;
      if (!v304)
      {
        goto LABEL_59;
      }

LABEL_57:
      if (v304 != 1)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C460986C(v303, v305);
      }

      else
      {
LABEL_59:
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C441D670(v303, v305);
      }

      v219 = v296;
      v306 = v218;
      sub_1C4420C3C(v307, &qword_1EC0B9AE0, &qword_1C4F16C40);
      *(v289 + ((v214 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v214;
      v220 = v301;
      v221 = (*(v301 + 48) + 16 * v214);
      *v221 = v219;
      v221[1] = v217;
      v222 = *(v220 + 56) + 56 * v214;
      v223 = v306;
      v225 = v305[1];
      v224 = v305[2];
      *v222 = v305[0];
      *(v222 + 16) = v225;
      *(v222 + 32) = v224;
      *(v222 + 48) = v223;
      v226 = *(v220 + 16);
      v227 = __OFADD__(v226, 1);
      v228 = v226 + 1;
      if (v227)
      {
        break;
      }

      *(v301 + 16) = v228;
      if (!v206)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

LABEL_52:
  v210 = v208;
  v67 = v293;
  v211 = v282;
  v75 = v283;
  v212 = v295;
  while (1)
  {
    v208 = v210 + 1;
    if (__OFADD__(v210, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v208 >= v207)
    {
      break;
    }

    v213 = v203[v208].isa;
    ++v210;
    if (v213)
    {
      v209 = __clz(__rbit64(v213));
      v206 = (v213 - 1) & v213;
      goto LABEL_57;
    }
  }

  sub_1C440962C(v308);
  v229 = v287;
  *(v287 + 24) = v301;
  *(v229 + qword_1EC151BA0) = v281;
  sub_1C440962C(v309);
  v230 = (v288 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair);
  v232 = *(v288 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair);
  v231 = *(v288 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair + 8);
  v233 = *(v288 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair + 16);
  v234 = v290;
  *v230 = v275;
  v230[1] = v234;
  v230[2] = v229;

  sub_1C49A28A0(v232, v231);
  v235 = *(v212 + 16);
  if (v235)
  {
    v307[0] = MEMORY[0x1E69E7CC0];
    sub_1C459D270();
    v236 = v307[0];
    sub_1C43FBF6C();
    v238 = v212 + v237;
    v296 = *(v239 + 72);
    v240 = v272;
    do
    {
      v301 = v238;
      v302 = v235;
      v241 = v297;
      v242 = v75;
      sub_1C4460050(v238, v297, &qword_1EC0B9078, &unk_1C4F30C70);
      v243 = v241;
      v244 = v298;
      sub_1C44CD9E0(v243, v298, &qword_1EC0B9078, &unk_1C4F30C70);
      v240(v211, v244 + *(v299 + 48), v67);
      v307[0] = v236;
      v245 = *(v236 + 16);
      if (v245 >= *(v236 + 24) >> 1)
      {
        sub_1C459D270();
        v236 = v307[0];
      }

      *(v236 + 16) = v245 + 1;
      sub_1C43FBF6C();
      v240(v236 + v246 + *(v247 + 72) * v245, v211, v67);
      v238 = v296 + v301;
      v235 = v302 - 1;
      v75 = v242;
    }

    while (v302 != 1);

    v248 = v284;
    (v284)(v291, v67);
    v248(v292, v67);
  }

  else
  {

    v264 = v284;
    (v284)(v291, v67);
    v264(v292, v67);
  }

LABEL_20:
  sub_1C43FBC80();
}

uint64_t sub_1C499FC70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70) + 48);
  *a2 = v3;
  return sub_1C4EF9BE8();
}

uint64_t sub_1C499FCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1C4F00318();
  v8 = type metadata accessor for HUTenPointDataCollection(0);
  v9 = (a4 + v8[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a4 + v8[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a4 + v8[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a4 + v8[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v8[9];
  v14 = type metadata accessor for HUTenPointSessionSample(0);
  result = sub_1C440BAA8(a4 + v13, 1, 1, v14);
  *v9 = 0xD00000000000001ALL;
  v9[1] = 0x80000001C4FAB610;
  *v10 = xmmword_1C4F3F430;
  *v11 = a2;
  v11[1] = a3;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *v12 = a1;
  *(v12 + 4) = 0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C499FDF4()
{
  v1 = v0;
  v59 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  v2 = sub_1C43FCDF8(v59);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (v53 - v10);
  v58 = type metadata accessor for JointHUDataCollectionTaskManager.Point(0);
  v12 = sub_1C43FCDF8(v58);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v19 = (v18 - v17);
  v20 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair);
  v21 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair + 8);
  if (v21)
  {
    v57 = v4;
    v22 = *v20;
    v23 = v20[2];
    v24 = qword_1EC151BA0;
    swift_beginAccess();
    v25 = *(v23 + v24);
    v26 = *(v25 + 16);
    if (v26)
    {
      v55 = v1;
      v56 = v22;
      sub_1C49A277C(v22, v21);
      v60 = MEMORY[0x1E69E7CC0];
      v54 = v21;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v53[2] = v23;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459E9B8();
      v27 = v60;
      sub_1C43FBF6C();
      v53[1] = v25;
      v29 = v25 + v28;
      v57 = *(v30 + 72);
      do
      {
        sub_1C4460050(v29, v11, &qword_1EC0B89E8, &unk_1C4F3E630);
        v31 = *v11;
        sub_1C44CD9E0(v11, v9, &qword_1EC0B89E8, &unk_1C4F3E630);
        v32 = v58;
        isa_low = SLODWORD(v59[6].isa);
        *v19 = v31;
        v34 = *(v32 + 20);
        v35 = sub_1C4EF9CD8();
        sub_1C43FBCE0(v35);
        (*(v36 + 32))(&v19[v34], &v9[isa_low]);
        v60 = v27;
        v37 = *(v27 + 16);
        if (v37 >= *(v27 + 24) >> 1)
        {
          sub_1C459E9B8();
          v27 = v60;
        }

        *(v27 + 16) = v37 + 1;
        sub_1C49A27C0(v19, v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v37);
        v29 += v57;
        --v26;
      }

      while (v26);

      v39 = v54;
      v38 = v55;
      v40 = *(v55 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_kvStore);
      v41 = *(v55 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_savedStateKey);
      v42 = *(v55 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_savedStateKey + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C495C7C0();
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v48 = sub_1C4F00978();
      sub_1C442B738(v48, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v49 = sub_1C4F00968();
      v50 = sub_1C4F01CB8();

      if (os_log_type_enabled(v49, v50))
      {
        sub_1C43FEC60();
        v51 = swift_slowAlloc();
        sub_1C443FD74();
        v60 = swift_slowAlloc();
        *v51 = 136315650;
        *(v51 + 4) = sub_1C441D828(*(v38 + 16), *(v38 + 24), &v60);
        *(v51 + 12) = 2080;
        *(v51 + 14) = sub_1C441D828(v56, v39, &v60);
        *(v51 + 22) = 2048;
        v52 = *(v27 + 16);

        *(v51 + 24) = v52;

        _os_log_impl(&dword_1C43F8000, v49, v50, "%s: Saved data collection state %s with %ld remaining points.", v51, 0x20u);
        swift_arrayDestroy();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v43 = sub_1C4F00978();
    sub_1C442B738(v43, qword_1EDDFECB8);

    v59 = sub_1C4F00968();
    v44 = sub_1C4F01CB8();

    if (os_log_type_enabled(v59, v44))
    {
      sub_1C43FECF0();
      v45 = swift_slowAlloc();
      sub_1C43FEC60();
      v46 = swift_slowAlloc();
      v61 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_1C441D828(*(v1 + 16), *(v1 + 24), &v61);
      _os_log_impl(&dword_1C43F8000, v59, v44, "%s: Skipping persisting state for deferral since no sample task has been created.", v45, 0xCu);
      sub_1C440962C(v46);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
      v47 = v59;
    }
  }
}

uint64_t sub_1C49A0554()
{
  v2 = v0;
  if (!*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorsFeatureProvider) || (, sub_1C4637460(), result = , !v1))
  {
    v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_kvStore);
    return KeyValueStore.delete(key:)(*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_savedStateKey));
  }

  return result;
}

void sub_1C49A05DC()
{
  v1 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor);
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor);
  if (v2)
  {
    v4 = v1[2];
    v3 = v1[3];
    v5 = v1[1];
    v6 = v2;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4886B98();
  }
}

BOOL sub_1C49A0688()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  if (qword_1EDDE3C60 != -1)
  {
    swift_once();
  }

  sub_1C4EF9CC8();
  v9 = sub_1C46D791C();
  (*(v3 + 8))(v8, v0);
  if (v9)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDDFECB8);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CF8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C43F8000, v11, v12, "Not sampling for Joint HU due to being enrolled in longitudinal data collection", v13, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    return 0;
  }

  else
  {
    v15 = 1.0;
    if (([objc_opt_self() isInternalDevice] & 1) == 0)
    {
      if ([objc_opt_self() isBetaBuild])
      {
        v15 = 0.1;
      }

      else
      {
        v15 = 0.02;
      }
    }

    sub_1C4701FFC(0.0, 1.0);
    v17 = v16;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDDFECB8);
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CF8();
    if (os_log_type_enabled(v19, v20))
    {
      sub_1C441024C();
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      *(v21 + 4) = v15;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v17;
      _os_log_impl(&dword_1C43F8000, v19, v20, "Probability = %f, Draw = %f", v21, 0x16u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    return v17 < v15;
  }
}

void sub_1C49A0950()
{
  sub_1C43FE96C();
  v241 = v3;
  v245 = v1;
  v4 = v0;
  v236 = v5;
  v231 = v6;
  v232 = v7;
  v8 = type metadata accessor for Configuration();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBFDC();
  v199 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v201 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v203 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v205 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  v207 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  v209 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v211 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v213 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  v215 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  v217 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  v220 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD230();
  v228 = v32;
  sub_1C43FBE44();
  v33 = sub_1C4EFDAB8();
  v34 = sub_1C43FCDF8(v33);
  v221 = v35;
  v222 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  v198 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  v200 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  v202 = v42;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  v204 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  v206 = v46;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  v208 = v48;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  v210 = v50;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  v212 = v52;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  v214 = v54;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  v216 = v56;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  v219 = v58;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  v218 = v60;
  sub_1C43FBE44();
  v226 = sub_1C4EF9CD8();
  v61 = sub_1C43FCDF8(v226);
  v224 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBFDC();
  v227 = v65;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FD230();
  v225 = v67;
  sub_1C43FBE44();
  v68 = type metadata accessor for BehaviorSampleGenerator();
  v69 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorDatabase);
  v70 = OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventSource;
  sub_1C442E860(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventSource, &v257);
  v71 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_kvStore);
  v72 = v258;
  v73 = v259;
  sub_1C4418280(&v257, v258);
  sub_1C43FCE64();
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v76);
  sub_1C43FBCC4();
  v78 = sub_1C442E094(v77);
  v79(v78);
  v253[0] = v69;
  v80 = type metadata accessor for BehaviorDatabase(0);
  swift_retain_n();

  v230 = v68;
  sub_1C4632EB0(v253, v2, v71, v68, v80, v72, &off_1F43E5250, v73);
  sub_1C440962C(&v257);
  v267 = type metadata accessor for BehaviorFeaturizer();
  sub_1C442E860(v4 + v70, &v257);
  v81 = sub_1C45EDEF8();
  v238 = v4;
  v233 = v70;
  v223 = v69;
  sub_1C45EA370(v4 + v70, v253);
  v82 = v258;
  v239 = v259;
  sub_1C4418280(&v257, v258);
  sub_1C43FCE64();
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v85);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  (*(v86 + 16))(v72);
  v87 = v254;
  v88 = v255;
  sub_1C4418280(v253, v254);
  sub_1C43FCE64();
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v91);
  sub_1C43FBCC4();
  v94 = v93 - v92;
  (*(v95 + 16))(v93 - v92);
  v261[0] = v81;
  v96 = type metadata accessor for BehaviorDatabaseEventTracker();
  sub_1C460784C(v72, v261, v94, v71, v267, v82, v87, v96, v239, v88, &off_1F43E2390);
  sub_1C440962C(v253);
  sub_1C440962C(&v257);
  v97 = objc_autoreleasePoolPush();
  sub_1C460299C(v241);
  if (v245)
  {
    objc_autoreleasePoolPop(v97);
  }

  else
  {
    sub_1C46320C0(v241);
    objc_autoreleasePoolPop(v97);
    sub_1C442E860(v238 + v233, &v257);
    v98 = *(v224 + 16);
    v98(v225, v241, v226);
    v98(v227, v236, v226);
    v99 = type metadata accessor for CachedContextProvider();
    sub_1C43FD23C(v99);
    swift_allocObject();
    v100 = sub_1C466C344(&v257, v225, v227);
    swift_retain_n();

    v234 = sub_1C496CD80(v223, v100, v71);

    v242 = sub_1C45EDEF8();
    v254 = v99;
    v255 = &off_1F43E5FE8;
    v253[0] = v100;

    sub_1C45EA370(v253, &v257);
    sub_1C440962C(v253);
    v101 = v258;
    v102 = v259;
    sub_1C4418280(&v257, v258);
    sub_1C43FCE64();
    v104 = *(v103 + 64);
    MEMORY[0x1EEE9AC00](v105);
    sub_1C43FBCC4();
    v107 = sub_1C4408C64(v106);
    v108(v107);
    v237 = v100;
    v253[0] = v100;
    v261[0] = v242;
    v246 = v99;
    v243 = sub_1C460784C(v253, v261, v226, v71, v267, v99, v101, v96, &off_1F43E5FE8, v102, &off_1F43E2390);
    sub_1C440962C(&v257);
    if ([objc_opt_self() isBetaBuild])
    {
      v109 = 1;
    }

    else
    {
      v109 = [objc_opt_self() isInternalDevice];
    }

    v240 = swift_allocObject();
    *(v240 + 16) = v109;
    v110 = sub_1C45FB538();
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v117 = (v238 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor);
    v119 = *(v238 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor);
    v118 = *(v238 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor + 8);
    v120 = *(v238 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor + 16);
    v121 = *(v238 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor + 24);
    *v117 = v110;
    v117[1] = v111;
    v117[2] = v113;
    v117[3] = v115;
    sub_1C49A26FC(v110);
    sub_1C45942C8(v119);
    v262 = v246;
    v263 = &off_1F43E5FE8;
    v261[0] = v237;
    v259 = &off_1F43E5240;
    v260 = &off_1F43E5228;
    v258 = v230;
    *&v257 = v234;
    v255 = &off_1F43E2F70;
    v256 = &off_1F43E2F40;
    v254 = v267;
    v253[0] = v243;
    if (v110)
    {
      *(&v248 + 1) = &type metadata for BehaviorEventPostProcessor;
      v249 = &off_1F43E2A10;
      v122 = swift_allocObject();
      *&v247 = v122;
      v122[2] = v110;
      v122[3] = v112;
      v122[4] = v114;
      v122[5] = v116;
      sub_1C441D670(&v247, &v250);
      v123 = v228;
    }

    else
    {
      v249 = 0;
      v247 = 0u;
      v248 = 0u;
      (*(v221 + 104))(v218, *MEMORY[0x1E69A9450], v222);
      sub_1C45D29E0(v218, 7040629, 0xE300000000000000, v264);
      v124 = v265;
      v125 = v266;
      *(&v251 + 1) = &type metadata for SimpleBehaviorReplacer;
      v252 = &off_1F43E2B20;
      v126 = swift_allocObject();
      *&v250 = v126;
      v127 = v264[1];
      *(v126 + 16) = v264[0];
      *(v126 + 32) = v127;
      *(v126 + 48) = v124;
      *(v126 + 56) = v125;
      v123 = v228;
      if (*(&v248 + 1))
      {
        sub_1C4420C3C(&v247, &qword_1EC0BA148, &qword_1C4F3F500);
      }
    }

    sub_1C456902C(&qword_1EC0C08F8, &qword_1C4F3F508);
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_1C4F17D00;
    sub_1C4419B8C();
    v244 = v129;
    sub_1C4430E88(v238 + v129, v123, v130);
    v131 = type metadata accessor for BehaviorCountLimiter();
    swift_allocObject();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v132 = sub_1C45D8548(v123, v231, v232, 200);
    *(v128 + 56) = v131;
    *(v128 + 64) = &off_1F43E2360;
    *(v128 + 32) = v132;
    sub_1C4419B8C();
    sub_1C4430E88(v238 + v244, v220, v133);
    v229 = *(v221 + 104);
    v229(v219, *MEMORY[0x1E69A93D0], v222);
    v134 = type metadata accessor for BehaviorTypeCountLimiter();
    v235 = sub_1C43FD23C(v134);
    swift_allocObject();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(v128 + 72) = sub_1C45D8BA0(v220, v231, v232, v219, 2);
    *(v128 + 96) = v235;
    *(v128 + 104) = &off_1F43E2348;
    sub_1C4419B8C();
    sub_1C4430E88(v135 + v244, v217, v136);
    v229(v216, *MEMORY[0x1E69A9430], v222);
    sub_1C440E4BC();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(v128 + 112) = sub_1C45D8BA0(v217, v231, v232, v216, 5);
    *(v128 + 136) = v235;
    *(v128 + 144) = &off_1F43E2348;
    sub_1C4419B8C();
    sub_1C4430E88(v238 + v244, v215, v137);
    v229(v214, *MEMORY[0x1E69A93E0], v222);
    sub_1C440E4BC();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440A87C();
    *(v128 + 152) = sub_1C45D8BA0(v138, v139, v140, v214, 20);
    *(v128 + 176) = v235;
    *(v128 + 184) = &off_1F43E2348;
    sub_1C4419B8C();
    sub_1C4430E88(v141 + v244, v213, v142);
    v229(v212, *MEMORY[0x1E69A9410], v222);
    sub_1C440E4BC();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440A87C();
    *(v128 + 192) = sub_1C45D8BA0(v143, v144, v145, v212, 10);
    *(v128 + 216) = v235;
    *(v128 + 224) = &off_1F43E2348;
    sub_1C4419B8C();
    sub_1C4430E88(v238 + v244, v211, v146);
    v229(v210, *MEMORY[0x1E69A9428], v222);
    v147 = *(v235 + 48);
    v148 = *(v235 + 52);
    swift_allocObject();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440A87C();
    *(v128 + 232) = sub_1C45D8BA0(v149, v150, v151, v210, 10);
    *(v128 + 256) = v235;
    *(v128 + 264) = &off_1F43E2348;
    sub_1C4419B8C();
    sub_1C4430E88(v238 + v244, v209, v152);
    v229(v208, *MEMORY[0x1E69A9438], v222);
    v153 = *(v235 + 48);
    v154 = *(v235 + 52);
    swift_allocObject();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v155 = sub_1C45D8BA0(v209, v231, v232, v208, 10);
    *(v128 + 296) = v235;
    *(v128 + 304) = &off_1F43E2348;
    *(v128 + 272) = v155;
    sub_1C4419B8C();
    sub_1C4430E88(v238 + v244, v207, v156);
    v229(v206, *MEMORY[0x1E69A9470], v222);
    v157 = *(v235 + 48);
    v158 = *(v235 + 52);
    swift_allocObject();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440A87C();
    v162 = sub_1C45D8BA0(v159, v160, v161, v206, 10);
    *(v128 + 336) = v235;
    *(v128 + 344) = &off_1F43E2348;
    *(v128 + 312) = v162;
    sub_1C4419B8C();
    sub_1C4430E88(v238 + v244, v205, v163);
    v229(v204, *MEMORY[0x1E69A9400], v222);
    sub_1C440E4BC();
    sub_1C43FC5CC();
    v164 = sub_1C45D8BA0(v205, v231, 0, v204, 10);
    *(v128 + 376) = v235;
    *(v128 + 384) = &off_1F43E2348;
    *(v128 + 352) = v164;
    sub_1C4419B8C();
    v165 = sub_1C441CB70();
    sub_1C4430E88(v165, v203, v166);
    v229(v202, *MEMORY[0x1E69A93D8], v222);
    sub_1C440E4BC();
    sub_1C43FC5CC();
    v167 = sub_1C45D8BA0(v203, v231, 0, v202, 5);
    *(v128 + 416) = v235;
    *(v128 + 424) = &off_1F43E2348;
    *(v128 + 392) = v167;
    sub_1C4419B8C();
    v168 = sub_1C441CB70();
    sub_1C4430E88(v168, v201, v169);
    v229(v200, *MEMORY[0x1E69A9448], v222);
    sub_1C440E4BC();
    sub_1C43FC5CC();
    v170 = sub_1C4405DF0();
    *(v128 + 456) = v235;
    *(v128 + 464) = &off_1F43E2348;
    *(v128 + 432) = v170;
    sub_1C4419B8C();
    v171 = sub_1C441CB70();
    sub_1C4430E88(v171, v199, v172);
    v229(v198, *MEMORY[0x1E69A93F0], v222);
    sub_1C440E4BC();
    sub_1C43FC5CC();
    v173 = sub_1C4405DF0();
    *(v128 + 496) = v235;
    *(v128 + 504) = &off_1F43E2348;
    *(v128 + 472) = v173;

    sub_1C4418280(v261, v262);
    sub_1C43FCE64();
    v175 = *(v174 + 64);
    MEMORY[0x1EEE9AC00](v176);
    sub_1C43FBCC4();
    v179 = (v178 - v177);
    (*(v180 + 16))(v178 - v177);
    sub_1C4418280(&v257, v258);
    sub_1C43FCE64();
    v182 = *(v181 + 64);
    MEMORY[0x1EEE9AC00](v183);
    sub_1C43FBCC4();
    v185 = sub_1C442E094(v184);
    v186(v185);
    sub_1C4418280(v253, v254);
    sub_1C43FCE64();
    v188 = *(v187 + 64);
    MEMORY[0x1EEE9AC00](v189);
    sub_1C43FBCC4();
    v191 = sub_1C4408C64(v190);
    v192(v191);
    v193 = *v179;
    v194 = *v199;
    v195 = *(v128 + 152);
    type metadata accessor for BehaviorsFeatureProvider();
    v196 = swift_allocObject();
    v197 = v251;
    *(v196 + 152) = v250;
    *(v196 + 40) = v246;
    *(v196 + 48) = &off_1F43E5FE8;
    *(v196 + 16) = v193;
    *(v196 + 80) = v230;
    *(v196 + 88) = &off_1F43E5240;
    *(v196 + 56) = v194;
    *(v196 + 128) = v267;
    *(v196 + 136) = &off_1F43E2F70;
    *(v196 + 144) = &off_1F43E2F40;
    *(v196 + 96) = &off_1F43E5228;
    *(v196 + 104) = v195;
    *(v196 + 168) = v197;
    *(v196 + 184) = v252;
    *(v196 + 192) = v128;
    *(v196 + 200) = 100;
    *(v196 + 208) = sub_1C49A26F4;
    *(v196 + 216) = v240;
    sub_1C440962C(v253);
    sub_1C440962C(&v257);
    sub_1C440962C(v261);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C49A210C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 1;
  }

  if (qword_1EC0B68C0 != -1)
  {
    swift_once();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4836304();
  v4 = v3;

  return v4 & 1;
}

uint64_t sub_1C49A2194()
{
  v1 = *(v0 + 24);

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_config);
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorDatabase);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventSource));
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_kvStore);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventTracker));
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_savedStateKey + 8);

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorsFeatureProvider);

  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair + 16);
  sub_1C49A28A0(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair + 8));
  v7 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor + 8);
  v8 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor + 16);
  v9 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor + 24);
  sub_1C45942C8(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor));
  return v0;
}

uint64_t sub_1C49A2258()
{
  sub_1C49A2194();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C49A22D8()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C49A2458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C46C3940((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C49A2490(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1C46C3CC4(v37);
  v35[2] = v37[0];
  v35[3] = v37[1];
  v35[4] = v37[2];
  v36 = v38;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  while (1)
  {
    sub_1C45E7890(v34);
    v7 = *(&v34[0] + 1);
    if (!*(&v34[0] + 1))
    {
      sub_1C449BB0C();
    }

    v8 = *&v34[0];
    v31 = v34[1];
    v32 = v34[2];
    v33[0] = v35[0];
    *(v33 + 9) = *(v35 + 9);
    v9 = *a5;
    v11 = sub_1C445FAA8(*&v34[0], *(&v34[0] + 1));
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1C456902C(&qword_1EC0C0928, &unk_1C4F3F540);
        sub_1C4F02468();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1C467AC18(v14);
      v16 = *a5;
      v17 = sub_1C445FAA8(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_1C4460050(*(*a5 + 56) + (v11 << 6), v30, &qword_1EC0B9AE0, &qword_1C4F16C40);
        sub_1C4420C3C(&v31, &qword_1EC0B9AE0, &qword_1C4F16C40);

        sub_1C49A28E4(v30, *(v19 + 56) + (v11 << 6));
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    v22 = (v20[7] + (v11 << 6));
    v23 = v31;
    v24 = v32;
    v25 = v33[0];
    *(v22 + 41) = *(v33 + 9);
    v22[1] = v24;
    v22[2] = v25;
    *v22 = v23;
    v26 = v20[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    v20[2] = v28;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void *sub_1C49A26FC(void *result)
{
  if (result)
  {
    v1 = result;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C49A277C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C49A27C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JointHUDataCollectionTaskManager.Point(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C49A2824()
{
  result = qword_1EC0C0908;
  if (!qword_1EC0C0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0908);
  }

  return result;
}

uint64_t sub_1C49A2878@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1C499FC70(a1, a2);
}

uint64_t sub_1C49A28A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C49A28E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9AE0, &qword_1C4F16C40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49A299C()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C49A2A1C()
{
  result = qword_1EC0C0940;
  if (!qword_1EC0C0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0940);
  }

  return result;
}

unint64_t sub_1C49A2A70()
{
  result = qword_1EC0C0950;
  if (!qword_1EC0C0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0950);
  }

  return result;
}

uint64_t sub_1C49A2AC4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C0958, &qword_1C4F3F700);
    sub_1C44724C0(a2, type metadata accessor for JointHUDataCollectionTaskManager.Point);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C49A2B60()
{
  result = qword_1EC0C0990;
  if (!qword_1EC0C0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0990);
  }

  return result;
}

_BYTE *sub_1C49A2BC4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C49A2CA4()
{
  result = qword_1EC0C09A0;
  if (!qword_1EC0C09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09A0);
  }

  return result;
}

unint64_t sub_1C49A2CFC()
{
  result = qword_1EC0C09A8;
  if (!qword_1EC0C09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09A8);
  }

  return result;
}

unint64_t sub_1C49A2D54()
{
  result = qword_1EC0C09B0;
  if (!qword_1EC0C09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09B0);
  }

  return result;
}

unint64_t sub_1C49A2DAC()
{
  result = qword_1EC0C09B8;
  if (!qword_1EC0C09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09B8);
  }

  return result;
}

unint64_t sub_1C49A2E04()
{
  result = qword_1EC0C09C0;
  if (!qword_1EC0C09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09C0);
  }

  return result;
}

unint64_t sub_1C49A2E5C()
{
  result = qword_1EC0C09C8;
  if (!qword_1EC0C09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09C8);
  }

  return result;
}

uint64_t JSONDecoder.decode<A>(_:fromURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1C4F00978();
  v11 = sub_1C43FCDF8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = sub_1C4EF9938();
  v16 = v15;
  v17 = objc_autoreleasePoolPush();
  sub_1C49A3158(v5, a1, v14, v16, a2, a3, a4, &v20);
  objc_autoreleasePoolPop(v17);
  sub_1C4434000(v14, v16);
  return sub_1C440BAA8(a5, 0, 1, a2);
}

uint64_t sub_1C49A3158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  result = sub_1C4EF9328();
  if (v8)
  {
    *a8 = v8;
  }

  return result;
}

uint64_t static NSJSONSerialization.decode<A>(_:fromURL:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = sub_1C4EF98F8();
  v6 = sub_1C43FCDF8(v5);
  v68 = v7;
  v69 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4F00978();
  v13 = sub_1C43FCDF8(v12);
  v71 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v75 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - v19;
  v74 = a2;
  v21 = sub_1C4F01F48();
  v22 = sub_1C4F01F48();
  v23 = sub_1C43FCDF8(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v23);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v62 - v31;
  v33 = sub_1C4EF9938();
  v72 = v12;
  v66 = v30;
  v67 = v25;
  v63 = a1;
  v64 = v11;
  v65 = v20;
  v35 = v34;
  v36 = v33;
  v37 = objc_autoreleasePoolPush();
  sub_1C49A37FC(v76, v32);
  v70 = v36;
  v75 = v35;
  objc_autoreleasePoolPop(v37);
  v39 = v66;
  v38 = v67;
  v40 = v22;
  (*(v67 + 16))(v66, v32, v22);
  v41 = sub_1C44157D4(v39, 1, v21);
  v44 = *(v38 + 8);
  v42 = v38 + 8;
  v43 = v44;
  if (v41 == 1)
  {
    v62 = v32;
    v43(v39, v22);
    v45 = v65;
    sub_1C4F00148();
    v46 = v68;
    v47 = v69;
    v48 = v64;
    (*(v68 + 16))(v64, v63, v69);
    v49 = sub_1C4F00968();
    v50 = sub_1C4F01CD8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v67 = v42;
      v52 = v51;
      v53 = swift_slowAlloc();
      v76[0] = v53;
      *v52 = 136315138;
      sub_1C44266D0();
      v54 = sub_1C4F02858();
      v55 = v48;
      v57 = v56;
      (*(v46 + 8))(v55, v47);
      v58 = sub_1C441D828(v54, v57, v76);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_1C43F8000, v49, v50, "JSONSerialization: decode fromURL: failed to decode %s as JSON of expected type.", v52, 0xCu);
      sub_1C440962C(v53);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
      sub_1C4434000(v70, v75);

      sub_1C442CD24();
      v59(v65);
    }

    else
    {
      sub_1C4434000(v70, v75);

      (*(v46 + 8))(v48, v47);
      sub_1C442CD24();
      v61(v45);
    }

    v43(v62, v40);
    return sub_1C440BAA8(v73, 1, 1, v74);
  }

  else
  {
    v43(v32, v22);
    sub_1C4434000(v70, v75);
    return (*(*(v21 - 8) + 32))(v73, v39, v21);
  }
}

uint64_t sub_1C49A37FC@<X0>(uint64_t *a1@<X4>, uint64_t a2@<X8>)
{
  v14[4] = *MEMORY[0x1E69E9840];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1C4EF9A38();
  v14[0] = 0;
  v6 = [ObjCClassFromMetadata JSONObjectWithData:v5 options:0 error:v14];

  if (v6)
  {
    v7 = v14[0];
    sub_1C4F02078();
    swift_unknownObjectRelease();
    v8 = sub_1C4F01F48();
    v9 = swift_dynamicCast();
    result = sub_1C440BAA8(a2, v9 ^ 1u, 1, v8);
  }

  else
  {
    v11 = v14[0];
    v12 = sub_1C4EF97A8();

    result = swift_willThrow();
    *a1 = v12;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::String_optional __swiftcall String.removeNullFieldsFromJsonString()()
{
  v2 = v1;
  v3 = v0;
  v45 = *MEMORY[0x1E69E9840];
  v4 = sub_1C4F01188();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4F01178();
  sub_1C4F01148();
  v10 = v9;
  (*(v5 + 8))(v8, v4);
  v11 = 0;
  v12 = 0;
  if (v10 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v13 = objc_opt_self();
  sub_1C4402120();
  v14 = sub_1C4EF9A38();
  *&v40 = 0;
  v12 = [v13 JSONObjectWithData:v14 options:0 error:&v40];

  v15 = v40;
  if (!v12)
  {
    v25 = v15;
    v26 = sub_1C4EF97A8();

    swift_willThrow();
    v27 = sub_1C4402120();
    sub_1C441DFEC(v27, v28);

LABEL_8:
    v11 = 0;
    goto LABEL_12;
  }

  sub_1C4F02078();
  swift_unknownObjectRelease();
  sub_1C44482AC(v42, v44);
  sub_1C49A3C84(v44, v3, v2, &v40);
  if (!v41)
  {
    sub_1C440962C(v44);
    v29 = sub_1C4402120();
    sub_1C441DFEC(v29, v30);
    sub_1C4448244(&v40);
LABEL_11:
    v11 = 0;
    v12 = 0;
    goto LABEL_12;
  }

  sub_1C44482AC(&v40, v42);
  sub_1C4409678(v42, v43);
  v16 = sub_1C4F02918();
  *&v40 = 0;
  v17 = [v13 dataWithJSONObject:v16 options:0 error:&v40];
  swift_unknownObjectRelease();
  v18 = v40;
  if (!v17)
  {
    v31 = v18;
    v32 = sub_1C4EF97A8();

    swift_willThrow();
    v33 = sub_1C4402120();
    sub_1C441DFEC(v33, v34);

    sub_1C440962C(v44);
    sub_1C440962C(v42);
    goto LABEL_11;
  }

  v19 = sub_1C4EF9A68();
  v21 = v20;

  sub_1C4F01178();
  v11 = sub_1C4F01158();
  v12 = v22;
  v23 = sub_1C4402120();
  sub_1C441DFEC(v23, v24);
  sub_1C4434000(v19, v21);
  sub_1C440962C(v44);
  sub_1C440962C(v42);
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_12:
  v35 = *MEMORY[0x1E69E9840];
  v36 = v11;
  v37 = v12;
  result.value._object = v37;
  result.value._countAndFlagsBits = v36;
  return result;
}

void sub_1C49A3C84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1C442B870(a1, &v52);
  v6 = sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
  if (swift_dynamicCast())
  {
    v42 = v6;
    v7 = 0;
    v8 = v49 + 64;
    v44 = v49;
    v9 = 1 << *(v49 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v49 + 64);
    v12 = MEMORY[0x1E69E7CC8];
    v13 = (v9 + 63) >> 6;
    v43 = v49 + 64;
    while (1)
    {
      if (!v11)
      {
        while (1)
        {
          v14 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v14 >= v13)
          {
            v11 = 0;
            v50 = 0u;
            v51 = 0u;
            v49 = 0u;
            goto LABEL_12;
          }

          v11 = *(v8 + 8 * v14);
          ++v7;
          if (v11)
          {
            v7 = v14;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        sub_1C4F029F8();
        __break(1u);
        return;
      }

      v14 = v7;
LABEL_11:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v14 << 6);
      v17 = (*(v44 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1C442B870(*(v44 + 56) + 32 * v16, &v54);
      *&v49 = v19;
      *(&v49 + 1) = v18;
      sub_1C44482AC(&v54, &v50);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_12:
      v52 = v49;
      v53[0] = v50;
      v53[1] = v51;
      v20 = *(&v49 + 1);
      if (!*(&v49 + 1))
      {
        break;
      }

      v21 = v52;
      sub_1C44482AC(v53, &v49);
      sub_1C49A3C84(&v47, &v49, a2, a3);
      if (v48)
      {
        sub_1C44482AC(&v47, &v54);
        sub_1C442B870(&v54, &v47);
        swift_isUniquelyReferenced_nonNull_native();
        v22 = v21;
        v23 = sub_1C445FAA8(v21, v20);
        if (__OFADD__(v12[2], (v24 & 1) == 0))
        {
          goto LABEL_49;
        }

        v25 = v23;
        v26 = v24;
        sub_1C456902C(&unk_1EC0C47F0, &unk_1C4F22550);
        if (sub_1C4F02458())
        {
          v27 = sub_1C445FAA8(v22, v20);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_51;
          }

          v25 = v27;
        }

        if (v26)
        {

          v29 = (v12[7] + 32 * v25);
          sub_1C440962C(v29);
          sub_1C44482AC(&v47, v29);
          sub_1C440962C(&v54);
          sub_1C440962C(&v49);
        }

        else
        {
          v12[(v25 >> 6) + 8] |= 1 << v25;
          v30 = (v12[6] + 16 * v25);
          *v30 = v22;
          v30[1] = v20;
          sub_1C44482AC(&v47, (v12[7] + 32 * v25));
          sub_1C440962C(&v54);
          sub_1C440962C(&v49);
          v31 = v12[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_50;
          }

          v12[2] = v33;
        }

        v8 = v43;
      }

      else
      {
        sub_1C440962C(&v49);

        sub_1C4448244(&v47);
      }
    }

    if (v12[2])
    {
      *(a4 + 24) = v42;
      *a4 = v12;
    }

    else
    {

      *a4 = 0u;
      *(a4 + 16) = 0u;
    }
  }

  else
  {
    sub_1C442B870(a1, &v52);
    v34 = sub_1C456902C(&unk_1EC0C5D60, &unk_1C4F5BC70);
    if (swift_dynamicCast())
    {
      v35 = *(v49 + 16);
      if (v35)
      {
        v36 = v49 + 32;
        v37 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1C442B870(v36, &v52);
          sub_1C49A3C84(&v54, &v52, a2, a3);
          sub_1C440962C(&v52);
          if (v55)
          {
            sub_1C44482AC(&v54, &v49);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = *(v37 + 16);
              sub_1C458B364();
              v37 = v40;
            }

            v38 = *(v37 + 16);
            if (v38 >= *(v37 + 24) >> 1)
            {
              sub_1C458B364();
              v37 = v41;
            }

            *(v37 + 16) = v38 + 1;
            sub_1C44482AC(&v49, (v37 + 32 * v38 + 32));
          }

          else
          {
            sub_1C4448244(&v54);
          }

          v36 += 32;
          --v35;
        }

        while (v35);
      }

      else
      {

        v37 = MEMORY[0x1E69E7CC0];
      }

      if (*(v37 + 16))
      {
        *(a4 + 24) = v34;
        *a4 = v37;
        return;
      }
    }

    else
    {
      sub_1C442B870(a1, &v52);
      sub_1C49A4194();
      if (!swift_dynamicCast())
      {
        sub_1C442B870(a1, a4);
        return;
      }
    }

    *a4 = 0u;
    *(a4 + 16) = 0u;
  }
}

unint64_t sub_1C49A4194()
{
  result = qword_1EC0C09D0;
  if (!qword_1EC0C09D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C09D0);
  }

  return result;
}

uint64_t sub_1C49A41D8()
{
  v0 = sub_1C4EFB0B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = MEMORY[0x1E69E7CC0];
  sub_1C44FAF64(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4829BD0();
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1C49A436C()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB4F8();

  sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  return sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C49A4588()
{
  v1 = sub_1C4EFB0B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C4EFBF68();
  if (!v0)
  {
    v7[1] = MEMORY[0x1E69E7CC0];
    sub_1C44FAF64(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
    sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4829BD0();
    sub_1C4F020C8();
    sub_1C4EFBFC8();
    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_1C49A4740()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v12 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = *MEMORY[0x1E69A00D0];
  v10 = sub_1C4EFBF38();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_1C440BAA8(v3, 0, 1, v10);
  sub_1C4EFB478();
  return sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

unint64_t sub_1C49A4994()
{
  sub_1C4F02248();

  v0 = sub_1C4EF98E8();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_1C49A4A54()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_url;
  v2 = sub_1C4EF98F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_config);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);

  return v0;
}

uint64_t sub_1C49A4AD4()
{
  sub_1C49A4A54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C49A4B34()
{
  result = sub_1C4EF98F8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Configuration();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C49A4C30()
{
  if (qword_1EDDFF230 != -1)
  {
    swift_once();
  }
}

void *sub_1C49A4CB8(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(a1, v5);
  sub_1C4419BC4();
  return sub_1C49A4E54(v5, v6, v7);
}

double sub_1C49A4D58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Configuration();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_1C44098F0(a1, &v15 - v9);
  sub_1C44098F0(v10, v8);
  sub_1C4419BC4();
  sub_1C49A4F58(v8, v11, v12, 0xD00000000000001ELL, 0x80000001C4FAB720, 0, 1, v16);
  sub_1C4467948(v10);
  result = *v16;
  v14 = v16[1];
  *a2 = v16[0];
  *(a2 + 16) = v14;
  *(a2 + 32) = v17;
  return result;
}

void *sub_1C49A4E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Configuration();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(a1, v9);
  v10 = type metadata accessor for KeyValueStore();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = KeyValueStore.init(config:domain:)(v9, a2, a3);
  sub_1C4467948(a1);
  return v13;
}

uint64_t sub_1C49A4F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for Configuration();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(a1, v19);
  v20 = type metadata accessor for KeyValueStore();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = KeyValueStore.init(config:domain:)(v19, a2, a3);
  result = sub_1C4467948(a1);
  *a8 = v23;
  *(a8 + 8) = a4;
  *(a8 + 16) = a5;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7 & 1;
  return result;
}

uint64_t KeyValueStore.fetch<A>(key:)()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  sub_1C4F01F48();

  sub_1C4777004();
}

uint64_t KeyValueStore.__allocating_init(config:domain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  KeyValueStore.init(config:domain:)(a1, a2, a3);
  return v9;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> KeyValueStore.delete(key:)(Swift::String key)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);

  v3 = sub_1C445AD5C();

  return v3 & 1;
}

uint64_t KeyValueStore.keys()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);

  v2 = sub_1C443D764(sub_1C49A8C10, v0, sub_1C47D1EDC);

  return v2;
}

uint64_t sub_1C49A5870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a1;
  v33 = a3;
  v34 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v32 - v6;
  v8 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = sub_1C456902C(&qword_1EC0BD3F0, &qword_1C4F2DBC8);
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  sub_1C4EFBD18();
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v16 = sub_1C4EFBD38();
  v17 = sub_1C442B738(v16, qword_1EDE2E068);
  v41[3] = v16;
  v41[4] = MEMORY[0x1E69A0050];
  v18 = sub_1C4422F90(v41);
  v19 = *(*(v16 - 8) + 16);
  v19(v18, v17, v16);
  v20 = *(a2 + 16);
  v21 = *(a2 + 24);
  v40[3] = MEMORY[0x1E69E6158];
  v40[4] = MEMORY[0x1E69A0130];
  v40[0] = v20;
  v40[1] = v21;
  v42[3] = sub_1C4EFB298();
  v42[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v42);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(v40, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v41);
  v22 = v34;
  sub_1C4EFBCD8();
  (*(v4 + 8))(v7, v22);
  sub_1C440962C(v42);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C4F0D130;
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v24 = sub_1C442B738(v16, qword_1EDE2DF28);
  v25 = MEMORY[0x1E69A0038];
  *(v23 + 56) = v16;
  *(v23 + 64) = v25;
  v26 = sub_1C4422F90((v23 + 32));
  v19(v26, v24, v16);
  v27 = v36;
  sub_1C4EFB878();

  (*(v35 + 8))(v11, v27);
  sub_1C4401CBC(&qword_1EDDFCCF0, &qword_1EC0BD3F0, &qword_1C4F2DBC8);
  v28 = v38;
  v29 = v42[7];
  v30 = sub_1C4EFB008();
  result = (*(v37 + 8))(v15, v28);
  if (!v29)
  {
    *v33 = v30;
  }

  return result;
}

uint64_t KeyValueStore.store<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a1;

  sub_1C4418704(sub_1C49A8C2C, v13, v6, v7, v8, v9, v10, v11, v13[0], v13[1]);
}

{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_getTupleTypeMetadata2();
  sub_1C4F00FA8();
  swift_getWitnessTable();
  v7 = sub_1C4F017B8();
  KeyValueStore.store<A>(_:)(v7, a2, a3, a4);
}

uint64_t sub_1C49A5D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a6;
  v71 = a3;
  v59 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v55 - v14);
  v56 = v16;
  MEMORY[0x1EEE9AC00](v13);
  v18 = (&v55 - v17);
  v79 = sub_1C4F01688();
  v63 = OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_encoder;
  v70 = a4;
  v61 = a4 - 8;
  v60 = v9;
  v65 = (v9 + 8);
  v62 = (v9 + 16);
  v19 = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v58 = a2;
  v69 = TupleTypeMetadata2;
  v57 = v18;
  v68 = v15;
  while (1)
  {
    result = sub_1C4F01758();
    v21 = v79;
    if (v79 == result)
    {
      return result;
    }

    v22 = sub_1C4F01738();
    sub_1C4F016B8();
    v72 = v19;
    if (v22)
    {
      v23 = a2 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v21;
      v73 = *(v60 + 16);
      v73(v18, v23, TupleTypeMetadata2);
      goto LABEL_5;
    }

    result = sub_1C4F02298();
    if (v56 != 8)
    {
      break;
    }

    v75[0] = result;
    v73 = *v62;
    v73(v18, v75, TupleTypeMetadata2);
    swift_unknownObjectRelease();
LABEL_5:
    sub_1C4F01788();
    v24 = v18[1];
    v25 = *(TupleTypeMetadata2 + 48);
    *v15 = *v18;
    v15[1] = v24;
    v26 = v70;
    v27 = *(v70 - 8);
    v28 = v27;
    v29 = *(v27 + 32);
    v29(v15 + v25, v18 + v25, v70);
    v67 = *(v71 + v63);
    v30 = sub_1C4470614(v26, v26);
    v31 = *(v30 + 52);
    v32 = *(v27 + 72);
    v33 = (*(v28 + 80) + *(v30 + 48)) & ~*(v28 + 80);
    swift_allocObject();
    v34 = sub_1C4F016A8();
    v35 = v15;
    v37 = v36;
    v38 = v64;
    v73(v64, v35, TupleTypeMetadata2);
    v39 = *(v38 + 1);

    v29(v37, &v38[*(TupleTypeMetadata2 + 48)], v26);
    sub_1C4470680();
    v75[0] = v34;
    sub_1C4F017A8();
    v78 = v66;
    swift_getWitnessTable();
    v40 = v74;
    v41 = sub_1C4EF96D8();
    v74 = v40;
    if (v40)
    {

      return (*v65)(v68, v69);
    }

    v43 = v41;
    v44 = v42;

    v45 = *(v71 + 24);
    v67 = *(v71 + 16);
    v46 = v69;
    v73(v38, v68, v69);
    v47 = *v38;
    v48 = v70;
    v73 = *(v38 + 1);
    v49 = *(v46 + 48);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44344B8(v43, v44);
    (*(v28 + 8))(&v38[v49], v48);
    v75[0] = v67;
    v75[1] = v45;
    v75[2] = v47;
    v75[3] = v73;
    v76 = v43;
    v77 = v44;
    sub_1C446C4A0();
    v50 = v74;
    sub_1C4EFB6C8();
    v74 = v50;
    if (v50)
    {
      sub_1C4434000(v43, v44);
      v53 = v76;
      v54 = v77;

      sub_1C4434000(v53, v54);
      return (*v65)(v68, v69);
    }

    sub_1C4434000(v43, v44);
    v51 = v76;
    v52 = v77;

    sub_1C4434000(v51, v52);
    v15 = v68;
    TupleTypeMetadata2 = v69;
    (*v65)(v68, v69);
    a2 = v58;
    v18 = v57;
    v19 = v72;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall KeyValueStore.copyAllKeyValues(to:clearCurrentDomain:clearNewDomain:)(Swift::String to, Swift::Bool clearCurrentDomain, Swift::Bool clearNewDomain)
{
  v4 = *(*(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  v5[16] = clearNewDomain;
  v6 = to;
  v7 = clearCurrentDomain;

  sub_1C44652E0(sub_1C49A8C48, v5, sub_1C4418704);
}

uint64_t sub_1C49A6468(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v57 = a6;
  v62 = a5;
  v10 = sub_1C4EFB4E8();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v52 - v16;
  v18 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v66 = *(v18 - 8);
  v19 = *(v66 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v56 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v63 = &v52 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v52 - v24;
  v26 = MEMORY[0x1E69E6158];
  v67 = a1;
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v27 = a3;
  v28 = a4;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v29 = sub_1C4EFBD38();
  v30 = sub_1C442B738(v29, qword_1EDE2E068);
  v73 = v29;
  v74 = MEMORY[0x1E69A0050];
  v31 = sub_1C4422F90(v72);
  (*(*(v29 - 8) + 16))(v31, v30, v29);
  v70 = v26;
  v71 = MEMORY[0x1E69A0130];
  v68 = v27;
  v69 = v28;
  a4 = v28;
  v76 = sub_1C4EFB298();
  v77 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v75);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(&v68, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v72);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v75);
  v32 = v78;
  sub_1C4EFB898();
  result = (*(v66 + 8))(v25, v18);
  if (!v32)
  {
    v78 = 0;
    a3 = v27;
LABEL_6:
    v58 = v13;
    v59 = a3;
    v60 = a4;
    v61 = v18;
    v34 = MEMORY[0x1E69A0050];
    if (qword_1EDDFE0F8 != -1)
    {
      swift_once();
    }

    v35 = sub_1C4EFBD38();
    v36 = sub_1C442B738(v35, qword_1EDE2E068);
    v73 = v35;
    v74 = v34;
    v37 = sub_1C4422F90(v72);
    v38 = *(v35 - 8);
    v55 = *(v38 + 16);
    v54 = v38 + 16;
    v55(v37, v36, v35);
    v39 = *(v62 + 16);
    v40 = *(v62 + 24);
    v41 = MEMORY[0x1E69E6158];
    v70 = MEMORY[0x1E69E6158];
    v42 = MEMORY[0x1E69A0130];
    v71 = MEMORY[0x1E69A0130];
    v62 = v39;
    v68 = v39;
    v69 = v40;
    v53 = sub_1C4EFB298();
    v76 = v53;
    v77 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v75);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4423A0C(&v68, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v72);
    v43 = sub_1C446B728();
    v44 = v63;
    sub_1C4EFAE28();
    sub_1C440962C(v75);
    v45 = sub_1C4EFBF38();
    sub_1C440BAA8(v17, 1, 1, v45);
    v76 = v41;
    v77 = v42;
    v75[0] = v59;
    v75[1] = v60;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v46 = v58;
    v60 = v36;
    sub_1C4EFB568();
    sub_1C4423A0C(v75, &qword_1EC0C5040, &qword_1C4F0F950);
    v47 = v61;
    v48 = v78;
    sub_1C4EFB8B8();
    if (v48)
    {
      (*(v64 + 8))(v46, v65);
      sub_1C4423A0C(v17, &unk_1EC0BCAB0, &unk_1C4F111A0);
      return (*(v66 + 8))(v44, v47);
    }

    else
    {
      v59 = v43;
      v78 = 0;
      (*(v64 + 8))(v46, v65);
      sub_1C4423A0C(v17, &unk_1EC0BCAB0, &unk_1C4F111A0);
      v49 = *(v66 + 8);
      result = v49(v44, v47);
      if (v57)
      {
        v73 = v35;
        v74 = MEMORY[0x1E69A0050];
        v50 = sub_1C4422F90(v72);
        v55(v50, v60, v35);
        v70 = MEMORY[0x1E69E6158];
        v71 = MEMORY[0x1E69A0130];
        v68 = v62;
        v69 = v40;
        v76 = v53;
        v77 = MEMORY[0x1E699FE60];
        sub_1C4422F90(v75);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFBB28();
        sub_1C4423A0C(&v68, &qword_1EC0C5040, &qword_1C4F0F950);
        sub_1C440962C(v72);
        v51 = v56;
        sub_1C4EFAE28();
        sub_1C440962C(v75);
        sub_1C4EFB898();
        return v49(v51, v47);
      }
    }
  }

  return result;
}

void sub_1C49A6BEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[6];
  v7 = v2[7];
  v8 = v2[5];
  sub_1C49A6C1C(a1, v6, v7, v3, v4, a2);
}

void sub_1C49A6C1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v49 = a3;
  v48 = a2;
  v46 = a1;
  v42 = a6;
  v45 = a4;
  v40 = sub_1C4F01F48();
  v39 = *(v40 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v38 - v8;
  v9 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4EFBD38();
  v18 = sub_1C442B738(v17, qword_1EDE2E068);
  v55 = v17;
  v56 = MEMORY[0x1E69A0050];
  v19 = sub_1C4422F90(v54);
  v20 = *(*(v17 - 8) + 16);
  v20(v19, v18, v17);
  v43 = v6;
  v21 = *(v6 + 16);
  v22 = *(v6 + 24);
  v52 = MEMORY[0x1E69E6158];
  v53 = MEMORY[0x1E69A0130];
  v50 = v21;
  v51 = v22;
  v23 = sub_1C4EFB298();
  v58 = v23;
  v59 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v57);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(&v50, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v54);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v57);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v24 = sub_1C442B738(v17, qword_1EDE2DF28);
  v55 = v17;
  v56 = MEMORY[0x1E69A0050];
  v25 = sub_1C4422F90(v54);
  v20(v25, v24, v17);
  v52 = MEMORY[0x1E69E6158];
  v53 = MEMORY[0x1E69A0130];
  v50 = v48;
  v51 = v49;
  v58 = v23;
  v59 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v57);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(&v50, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v54);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v26 = *(v10 + 8);
  v26(v14, v9);
  sub_1C440962C(v57);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C446B794();
  v27 = v47;
  sub_1C4EFAFF8();
  v26(v16, v9);
  if (!v27)
  {
    v28 = v61;
    if (v61)
    {
      v47 = v60;
      v30 = v62;
      v29 = v63;
      v31 = v64;
      v32 = v65;
      v33 = *(v43 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);
      v34 = v45;
      sub_1C4F017A8();
      v66 = v44;
      swift_getWitnessTable();
      sub_1C4EF9698();
      v46 = v30;
      v44 = v60;
      swift_getWitnessTable();
      v37 = v41;
      sub_1C4F01BC8();
      if (sub_1C44157D4(v37, 1, v34) == 1)
      {
        (*(v39 + 8))(v37, v40);
        v60 = 0;
        v61 = 0xE000000000000000;
        sub_1C4F02248();

        v60 = 0xD00000000000002FLL;
        v61 = 0x80000001C4F8A7E0;
        MEMORY[0x1C6940010](v48, v49);
        sub_1C4F024A8();
        __break(1u);
        return;
      }

      sub_1C4470E30(v47, v28, v46, v29, v31, v32);
      v36 = v42;
      (*(*(v34 - 8) + 32))(v42, v37, v34);

      v35 = 0;
    }

    else
    {
      v35 = 1;
      v34 = v45;
      v36 = v42;
    }

    sub_1C440BAA8(v36, v35, 1, v34);
  }
}

uint64_t KeyValueStore.fetch<A>(keys:)()
{
  v2 = *(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  sub_1C4F00FA8();

  sub_1C4777004();

  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1C49A740C@<X0>(uint64_t *a1@<X8>)
{
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  swift_getTupleTypeMetadata2();
  sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870);
  result = sub_1C4F014E8();
  if (!v1)
  {
    sub_1C4F017A8();
    swift_getWitnessTable();
    result = sub_1C4F00F38();
    *a1 = result;
  }

  return result;
}

void sub_1C49A7560(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v30 = a4;
  v31 = a5;
  v29 = a6;
  v9 = sub_1C4F01F48();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = a1[1];
  v20 = v32;
  sub_1C49A6C1C(a2, v19, v18, a3, v30, v13);
  if (!v20)
  {
    v21 = v28;
    if (sub_1C44157D4(v13, 1, a3) == 1)
    {
      (*(v21 + 8))(v13, v9);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1C440BAA8(v29, 1, 1, TupleTypeMetadata2);
    }

    else
    {
      v23 = *(v14 + 32);
      v23(v17, v13, a3);
      v24 = v23;
      v25 = swift_getTupleTypeMetadata2();
      v26 = *(v25 + 48);
      v27 = v29;
      *v29 = v19;
      v27[1] = v18;
      v24(v27 + v26, v17, a3);
      sub_1C440BAA8(v27, 0, 1, v25);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

uint64_t sub_1C49A77C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v31 = a1;
  v28 = a5;
  v6 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4EFBD38();
  v15 = sub_1C442B738(v14, qword_1EDE2E068);
  v37 = v14;
  v38 = MEMORY[0x1E69A0050];
  v16 = sub_1C4422F90(v36);
  v17 = *(*(v14 - 8) + 16);
  v17(v16, v15, v14);
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = v18;
  v33 = v19;
  v20 = sub_1C4EFB298();
  v40 = v20;
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(&v32, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v36);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v39);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v21 = sub_1C442B738(v14, qword_1EDE2DF28);
  v37 = v14;
  v38 = MEMORY[0x1E69A0050];
  v22 = sub_1C4422F90(v36);
  v17(v22, v21, v14);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = v29;
  v33 = v30;
  v40 = v20;
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(&v32, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v36);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v23 = *(v7 + 8);
  v23(v11, v6);
  sub_1C440962C(v39);
  v24 = v42;
  v25 = sub_1C4EFB898();
  result = (v23)(v13, v6);
  if (!v24)
  {
    *v28 = v25 == 1;
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> KeyValueStore.delete(keys:)(Swift::OpaquePointer keys)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  v5[3] = keys._rawValue;

  v3 = sub_1C443D764(sub_1C49A8C8C, v5, sub_1C443D814);

  return v3;
}

uint64_t sub_1C49A7C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a3;
  v28 = a1;
  v26 = a4;
  v5 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4EFBD38();
  v14 = sub_1C442B738(v13, qword_1EDE2E068);
  v31 = v13;
  v32 = MEMORY[0x1E69A0050];
  v15 = sub_1C4422F90(v30);
  v16 = *(*(v13 - 8) + 16);
  v16(v15, v14, v13);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v29[3] = MEMORY[0x1E69E6158];
  v29[4] = MEMORY[0x1E69A0130];
  v29[0] = v17;
  v29[1] = v18;
  v19 = sub_1C4EFB298();
  v34 = v19;
  v35 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v33);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(v29, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v30);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v33);
  v29[0] = v27;
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v20 = sub_1C442B738(v13, qword_1EDE2DF28);
  v31 = v13;
  v32 = MEMORY[0x1E69A0050];
  v21 = sub_1C4422F90(v30);
  v16(v21, v20, v13);
  v34 = v19;
  v35 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v33);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4F01458();
  sub_1C440962C(v30);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v22 = *(v6 + 8);
  v22(v10, v5);
  sub_1C440962C(v33);
  v23 = v36;
  v24 = sub_1C4EFB898();
  result = (v22)(v12, v5);
  if (!v23)
  {
    *v26 = v24;
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> KeyValueStore.clear()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db) + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);

  v2 = sub_1C443D764(sub_1C49A8CA8, v0, sub_1C443D814);

  return v2;
}

uint64_t sub_1C49A8090@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-1] - v8;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4EFBD38();
  v11 = sub_1C442B738(v10, qword_1EDE2E068);
  v19[3] = v10;
  v19[4] = MEMORY[0x1E69A0050];
  v12 = sub_1C4422F90(v19);
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v18[3] = MEMORY[0x1E69E6158];
  v18[4] = MEMORY[0x1E69A0130];
  v18[0] = v13;
  v18[1] = v14;
  v20[3] = sub_1C4EFB298();
  v20[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v20);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4423A0C(v18, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v19);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v20);
  v15 = sub_1C4EFB898();
  result = (*(v6 + 8))(v9, v5);
  if (!v2)
  {
    *a2 = v15;
  }

  return result;
}

uint64_t sub_1C49A82D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_db);
  v9 = 0;
  v2 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore16KeyValueDatabase_pool);
  v8[2] = &v9;

  sub_1C44652E0(sub_1C49A8DE0, v8, sub_1C446572C);

  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0x736E69616D6F44;
  *(inited + 40) = 0xE700000000000000;
  v4 = v9;
  *(inited + 72) = sub_1C456902C(&qword_1EC0B97F8, &unk_1C4F3FA10);
  v5 = MEMORY[0x1E69E7CC8];
  if (v4)
  {
    v5 = v4;
  }

  *(inited + 48) = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C4F00F28();

  return v6;
}

uint64_t sub_1C49A8410(unint64_t a1, uint64_t *a2)
{
  v54 = a1;
  v50 = a2;
  v2 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v51 = *(v2 - 1);
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - v4;
  v6 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v11;
  if (qword_1EDDFE0F8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v12 = sub_1C4EFBD38();
  v13 = sub_1C442B738(v12, qword_1EDE2E068);
  sub_1C4EFBD18();
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C4F0CE60;
  v15 = MEMORY[0x1E69A0038];
  *(v14 + 56) = v12;
  *(v14 + 64) = v15;
  v16 = sub_1C4422F90((v14 + 32));
  v17 = *(*(v12 - 8) + 16);
  v17(v16, v13, v12);
  v56[3] = v12;
  v56[4] = MEMORY[0x1E69A0050];
  v18 = sub_1C4422F90(v56);
  v17(v18, v13, v12);
  v19 = sub_1C4EFB298();
  v20 = MEMORY[0x1E699FE50];
  *(v14 + 96) = v19;
  *(v14 + 104) = v20;
  sub_1C4422F90((v14 + 72));
  sub_1C4EFBD28();
  sub_1C440962C(v56);
  sub_1C4EFBCF8();

  (*(v51 + 8))(v5, v2);
  sub_1C456902C(&qword_1EC0BE5D8, &qword_1C4F376E0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C4F0D130;
  v22 = MEMORY[0x1E69A0040];
  *(v21 + 56) = v12;
  *(v21 + 64) = v22;
  v23 = sub_1C4422F90((v21 + 32));
  v17(v23, v13, v12);
  sub_1C4401CBC(&qword_1EDDFA270, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v2 = v52;
  sub_1C4EFB6E8();

  v24 = *(v53 + 8);
  v24(v10, v6);
  sub_1C4401CBC(&qword_1EDDFE850, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v25 = v55;
  v26 = sub_1C4EFB038();
  result = (v24)(v2, v6);
  if (!v25)
  {
    v28 = sub_1C4428DA0();
    if (v28)
    {
      v6 = v28;
      v55 = 0;
      v57 = MEMORY[0x1E69E7CC0];
      v5 = &v57;
      v29 = sub_1C459E6D0(0, v28 & ~(v28 >> 63), 0);
      if ((v6 & 0x8000000000000000) == 0)
      {
        v30 = 0;
        v10 = v57;
        v53 = v26;
        v54 = v26 & 0xC000000000000001;
        v51 = v26 & 0xFFFFFFFFFFFFFF8;
        v52 = v6;
        while (1)
        {
          v31 = (v30 + 1);
          if (__OFADD__(v30, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (v54)
          {
            v5 = MEMORY[0x1C6940F90](v30, v26);
          }

          else
          {
            if (v30 >= *(v51 + 16))
            {
              goto LABEL_29;
            }

            v5 = *(v26 + 8 * v30 + 32);
          }

          sub_1C4EFBBA8();
          v32 = sub_1C4EFBBE8();
          if (v32)
          {
            v33 = MEMORY[0x1EEE9AC00](v32);
            v2 = &v49 - 4;
            *(&v49 - 2) = v5;
            *(&v49 - 1) = 0;
            v29 = sqlite3_column_type(v33, 0);
            if (v29 == 5)
            {
              goto LABEL_32;
            }

            v34 = sub_1C4F011E8();
            v36 = v35;
          }

          else
          {
            v37 = v55;
            sub_1C4EFBB98();
            v55 = v37;
            if (v37)
            {
              goto LABEL_34;
            }

            v34 = v56[0];
            v36 = v56[1];
          }

          sub_1C4EFBBA8();
          v38 = sub_1C4EFBBE8();
          if (v38)
          {
            v39 = MEMORY[0x1EEE9AC00](v38);
            *(&v49 - 2) = v5;
            *(&v49 - 1) = 1;
            v40 = sqlite3_column_type(v39, 1);
            if (v40 == 5)
            {
              MEMORY[0x1EEE9AC00](v40);
              *(&v49 - 2) = sub_1C487BDA4;
              *(&v49 - 1) = (&v49 - 4);
              v48 = v55;
              sub_1C4EFB968();
              v55 = v48;
              goto LABEL_34;
            }

            v6 = sub_1C4F02AA8();
          }

          else
          {
            v41 = v55;
            sub_1C4EFBB98();
            v55 = v41;
            if (v41)
            {
              goto LABEL_34;
            }

            v6 = v56[0];
          }

          v57 = v10;
          v43 = *(v10 + 2);
          v42 = *(v10 + 3);
          v2 = (v43 + 1);
          if (v43 >= v42 >> 1)
          {
            v5 = &v57;
            sub_1C459E6D0((v42 > 1), v43 + 1, 1);
            v10 = v57;
          }

          *(v10 + 2) = v2;
          v44 = &v10[24 * v43];
          *(v44 + 4) = v34;
          *(v44 + 5) = v36;
          *(v44 + 6) = v6;
          ++v30;
          v26 = v53;
          if (v31 == v52)
          {

            goto LABEL_26;
          }
        }
      }

      __break(1u);
LABEL_32:
      MEMORY[0x1EEE9AC00](v29);
      *(&v49 - 2) = sub_1C487BF24;
      *(&v49 - 1) = v2;
      v47 = v55;
      sub_1C4EFB968();
      v55 = v47;
LABEL_34:
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
LABEL_26:
      v45 = sub_1C4BA04F4(v10);
      v46 = *v50;
      *v50 = v45;
    }
  }

  return result;
}

uint64_t sub_1C49A8CD8()
{
  result = type metadata accessor for Configuration();
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

uint64_t sub_1C49A8E1C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C4EFBD38();
  sub_1C44F9918(v3, a2);
  sub_1C442B738(v3, a2);
  sub_1C446C744();
  return sub_1C4EFBD58();
}

_BYTE *storeEnumTagSinglePayload for KeyValuePair.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C49A8F84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C49A908C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C49A8F84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C49A90B4(uint64_t a1)
{
  v2 = sub_1C446C744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49A90F0(uint64_t a1)
{
  v2 = sub_1C446C744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C49A912C()
{
  sub_1C446C4A0();

  return sub_1C4EFB6D8();
}

unint64_t sub_1C49A9224()
{
  result = qword_1EDDFE0E0;
  if (!qword_1EDDFE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE0E0);
  }

  return result;
}

unint64_t sub_1C49A9280()
{
  result = qword_1EC0C09E0;
  if (!qword_1EC0C09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C09E0);
  }

  return result;
}

unint64_t sub_1C49A92D8()
{
  result = qword_1EDDFC180;
  if (!qword_1EDDFC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC180);
  }

  return result;
}

unint64_t sub_1C49A9330()
{
  result = qword_1EDDFE108;
  if (!qword_1EDDFE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE108);
  }

  return result;
}

unint64_t sub_1C49A9388()
{
  result = qword_1EDDFE110;
  if (!qword_1EDDFE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE110);
  }

  return result;
}

uint64_t KnosisServer.init(config:platformConfig:)(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v4 = sub_1C4EFDBB8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = type metadata accessor for Configuration();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = sub_1C4EFDB38();
  v19 = sub_1C43FCDF8(v18);
  v35 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v33 - v27;
  sub_1C44098F0(a2, v17);
  sub_1C49A9674(v17, 0, v28);
  if (v2)
  {
    sub_1C4467948(a2);
    (*(v7 + 8))(v36, v4);
  }

  else
  {
    v34 = a2;
    v29 = v36;
    (*(v7 + 16))(v12, v36, v4);
    (*(v35 + 16))(v25, v28, v18);
    a2 = sub_1C4EFDC48();
    sub_1C4467948(v34);
    (*(v7 + 8))(v29, v4);
    v31 = sub_1C440ADD8();
    v32(v31);
  }

  return a2;
}

uint64_t sub_1C49A9674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Configuration();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBD08();
  v11 = v9 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - v16;
  if (Configuration.isGlobalKnowledgeServiceEnabled.getter())
  {
    type metadata accessor for GlobalKnowledgeStore(0);
    sub_1C44098F0(a1, v17);
    v18 = sub_1C48300AC(v17);
    if (v3)
    {
      sub_1C4467948(a1);
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  sub_1C44098F0(a1, v15);
  v20 = type metadata accessor for GraphStore();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();

  v23 = GraphStore.init(config:)(v15);
  if (v3)
  {
    sub_1C4467948(a1);
  }

  v77 = v19;
  v78 = a2;
  v69 = a3;
  v80 = v20;
  v81 = &off_1EDDED0E8;
  *&v79 = v23;
  sub_1C441D670(&v79, v82);
  sub_1C456902C(&qword_1EC0C09F8, &qword_1C4F3FDC0);
  v25 = sub_1C456902C(&qword_1EC0B9B18, &unk_1C4F10E90);
  v26 = *(v25 - 8);
  v73 = v11;
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C4F0F820;
  v76 = v29;
  v30 = v29 + v28;
  v31 = v29 + v28 + *(v25 + 48);
  v32 = *MEMORY[0x1E69A9790];
  v33 = sub_1C4EFEFB8();
  v71 = *(v33 - 8);
  v83 = a1;
  v34 = *(v71 + 104);
  (v34)(v30, v32, v33);
  *(v31 + 24) = &type metadata for TriplesIndexHandler;
  v35 = sub_1C49A9F34();
  *(v31 + 32) = v35;
  sub_1C44006A8();
  v36 = swift_allocObject();
  sub_1C4411FB4(v36);
  v37 = v30 + v27 + *(v25 + 48);
  v38 = *MEMORY[0x1E69A9788];
  v70 = v30 + v27;
  v34();
  *(v37 + 24) = &type metadata for TriplesIndexHandler;
  *(v37 + 32) = v35;
  sub_1C44006A8();
  v39 = swift_allocObject();
  sub_1C4411FB4(v39);
  v72 = v25;
  v40 = (v30 + 2 * v27 + *(v25 + 48));
  (v34)(v30 + 2 * v27, *MEMORY[0x1E69A9798], v33);
  v40[3] = &type metadata for TriplesIndexHandler;
  v40[4] = v35;
  v66 = v35;
  sub_1C44006A8();
  v41 = swift_allocObject();
  *v40 = v41;
  sub_1C49A9F88(v82, v41 + 16);
  v68 = v27;
  v74 = v30;
  v42 = v30 + 3 * v27;
  v43 = *MEMORY[0x1E69A97C0];
  v75 = v33;
  v67 = v34;
  (v34)(v42, v43, v33);
  v44 = v73;
  sub_1C44098F0(v83, v73);
  v45 = type metadata accessor for OntologyStore();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = OntologyStore.init(config:)(v44);
  v49 = v72;
  v50 = (v42 + *(v72 + 48));
  v80 = v45;
  v81 = &off_1EEB2CDE8;
  *&v79 = v48;
  v51 = v66;
  v50[3] = &type metadata for TriplesIndexHandler;
  v50[4] = v51;
  sub_1C44006A8();
  v52 = swift_allocObject();
  *v50 = v52;
  sub_1C441D670(&v79, v52 + 16);
  v53 = v74;
  v54 = v68;
  v55 = (v74 + 4 * v68 + *(v49 + 48));
  v56 = *MEMORY[0x1E69A97A8];
  v57 = v67;
  v67();
  v55[3] = &type metadata for GlobalKnowledgeIndexHandler;
  v58 = sub_1C49AA0A0();
  v55[4] = v58;
  v59 = v77;
  *v55 = v77;
  v60 = (v53 + 5 * v54 + *(v72 + 48));
  v61 = *MEMORY[0x1E69A97A0];
  v57();
  v60[3] = &type metadata for GlobalKnowledgeIndexHandler;
  v60[4] = v58;
  *v60 = v59;

  sub_1C456902C(&qword_1EC0C0A00, &qword_1C4F3FDC8);
  sub_1C49AA0F4();
  v62 = sub_1C4F00F28();
  v63 = v78;
  if (v78)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v79 = v62;
    sub_1C49AA1C8(v63, sub_1C49AA14C, 0, isUniquelyReferenced_nonNull_native, &v79);
  }

  v65 = v83;
  sub_1C4EFDB28();

  sub_1C4467948(v65);
  return sub_1C49A9FE4(v82);
}

uint64_t sub_1C49A9CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v39 = a1;
  v4 = sub_1C4EFDBB8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = type metadata accessor for Configuration();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = sub_1C4EFDB38();
  v19 = sub_1C43FCDF8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v36 - v28;
  sub_1C44098F0(a2, v17);
  v30 = v38;
  sub_1C49A9674(v17, v37, v29);
  if (v30)
  {
    sub_1C4467948(a2);
    v31 = sub_1C442CD38();
    v32(v31);
  }

  else
  {
    v38 = a2;
    (*(v7 + 16))(v12, v39, v4);
    (*(v21 + 16))(v26, v29, v18);
    v26 = sub_1C4EFDC48();
    sub_1C4467948(v38);
    v34 = sub_1C442CD38();
    v35(v34);
    (*(v21 + 8))(v29, v18);
  }

  return v26;
}

unint64_t sub_1C49A9F34()
{
  result = qword_1EDDE4BA8[0];
  if (!qword_1EDDE4BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE4BA8);
  }

  return result;
}

uint64_t sub_1C49AA038(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9B18, &unk_1C4F10E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C49AA0A0()
{
  result = qword_1EDDE0720;
  if (!qword_1EDDE0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE0720);
  }

  return result;
}

unint64_t sub_1C49AA0F4()
{
  result = qword_1EDDEFF90;
  if (!qword_1EDDEFF90)
  {
    sub_1C4EFEFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFF90);
  }

  return result;
}

uint64_t sub_1C49AA14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1C456902C(&qword_1EC0B9B08, &qword_1C4F10E80) + 48);
  v5 = a2 + *(sub_1C456902C(&qword_1EC0B9B18, &unk_1C4F10E90) + 48);

  return sub_1C46C3880(a2, v5, a1, a1 + v4);
}

uint64_t sub_1C49AA1C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v45 = sub_1C4EFEFB8();
  v9 = *(v45 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&qword_1EC0C0A08, &qword_1C4F3FDD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v38 - v15;
  sub_1C46C3CC4(v43);
  *&v42[5] = v43[0];
  *&v42[7] = v43[1];
  *&v42[9] = v43[2];
  v42[11] = v44;
  v17 = (v9 + 32);
  v40 = v9;
  v39 = (v9 + 8);
  v38[2] = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v38[1] = a3;

  while (1)
  {
    sub_1C45E7578(v16);
    v18 = sub_1C456902C(&qword_1EC0B9B18, &unk_1C4F10E90);
    if (sub_1C44157D4(v16, 1, v18) == 1)
    {
      sub_1C449BB0C();
    }

    v19 = *(v18 + 48);
    v20 = *v17;
    (*v17)(v12, v16, v45);
    sub_1C441D670(&v16[v19], v42);
    v21 = *a5;
    sub_1C457AFC0();
    v24 = v23;
    v25 = v21[2];
    v26 = (v22 & 1) == 0;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v27 = v22;
    if (v21[3] >= v25 + v26)
    {
      if (a4)
      {
        if (v22)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1C456902C(&unk_1EC0C0A10, &qword_1C4F3FDD8);
        sub_1C4F02468();
        if (v27)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1C4679D48();
      v28 = *a5;
      sub_1C457AFC0();
      if ((v27 & 1) != (v30 & 1))
      {
        goto LABEL_18;
      }

      v24 = v29;
      if (v27)
      {
LABEL_10:
        v31 = *a5;
        sub_1C442E860(v42, v41);
        sub_1C440962C(v42);
        (*v39)(v12, v45);
        v32 = (v31[7] + 40 * v24);
        sub_1C440962C(v32);
        sub_1C441D670(v41, v32);
        goto LABEL_14;
      }
    }

    v33 = *a5;
    *(*a5 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v20((v33[6] + *(v40 + 72) * v24), v12, v45);
    sub_1C441D670(v42, v33[7] + 40 * v24);
    v34 = v33[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_17;
    }

    v33[2] = v36;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

id sub_1C49AA56C()
{
  sub_1C44251FC();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C4F01108();

  v2 = [v0 initWithMachServiceName_];

  return v2;
}

uint64_t sub_1C49AA63C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = sub_1C456902C(a2, a3);
  sub_1C44F9918(v7, a4);
  sub_1C43FCEE8(v7, a4);
  v8 = a5(0);

  return sub_1C440BAA8(a4, 1, 1, v8);
}

uint64_t sub_1C49AA6B8()
{
  result = sub_1C49AA6D8();
  qword_1EDE2C930 = result;
  return result;
}

uint64_t sub_1C49AA6D8()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = sub_1C4EFDBB8();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = qword_1EC1525D8;
  if (qword_1EC1525D8)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFDBA8();
    if (qword_1EDDDBE00 != -1)
    {
      swift_once();
    }

    v15 = sub_1C442B738(v0, qword_1EDE2C918);
    swift_beginAccess();
    sub_1C4466EEC(v15, v4);
    v16 = type metadata accessor for Configuration();
    result = sub_1C44157D4(v4, 1, v16);
    if (result != 1)
    {
      sub_1C4EFDC58();
      return sub_1C49A9CAC(v11, v4, v14);
    }

    __break(1u);
  }

  else
  {
    sub_1C4EFDBA8();
    if (qword_1EDDDBE00 != -1)
    {
      swift_once();
    }

    v18 = sub_1C442B738(v0, qword_1EDE2C918);
    swift_beginAccess();
    sub_1C4466EEC(v18, v6);
    v19 = type metadata accessor for Configuration();
    result = sub_1C44157D4(v6, 1, v19);
    if (result != 1)
    {
      sub_1C4EFDC58();
      return KnosisServer.init(config:platformConfig:)(v13, v6);
    }
  }

  __break(1u);
  return result;
}

void sub_1C49AAAC4(void *a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C0A20, &qword_1C4F3FDE0);
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDE2DCD8);
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CF8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_1C43FCED0();
    *v19 = 0;
    _os_log_impl(&dword_1C43F8000, v17, v18, "KnosisXPC: starting...", v19, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDDBE00 != -1)
  {
    sub_1C442CD48();
  }

  sub_1C43FCEE8(v10, qword_1EDE2C918);
  sub_1C44098F0(a2, v15);
  type metadata accessor for Configuration();
  sub_1C43FBD94();
  sub_1C440BAA8(v20, v21, v22, v23);
  sub_1C440076C();
  sub_1C49ADF30(v15, v17, &unk_1EC0B9610, &unk_1C4F0F2E0);
  swift_endAccess();
  if (qword_1EDDDBE18 != -1)
  {
    sub_1C440ADEC();
  }

  sub_1C43FCEE8(v4, qword_1EDE2C938);
  v24 = sub_1C4EFDBB8();
  sub_1C43FBCE0(v24);
  (*(v25 + 16))(v9, a1, v24);
  sub_1C43FBD94();
  sub_1C440BAA8(v26, v27, v28, v24);
  sub_1C440076C();
  sub_1C49ADF30(v9, v17, &qword_1EC0C0A20, &qword_1C4F3FDE0);
  swift_endAccess();
  sub_1C4461BB8(0, &qword_1EDDFA520, 0x1E696B0D8);
  v29 = sub_1C49AA56C();
  v30 = qword_1EDE2C900;
  qword_1EDE2C900 = v29;
  v31 = v29;

  if (v31)
  {
    qword_1EDE2C908 = [objc_allocWithZone(type metadata accessor for KnosisXPC.Delegate()) init];
    v32 = qword_1EDE2C908;
    sub_1C44251FC();
    swift_unknownObjectRelease();
    [v31 setDelegate_];

    [v31 resume];
  }

  else
  {
    v31 = sub_1C4F00968();
    v33 = sub_1C4F01CE8();
    if (sub_1C43FCEA4(v33))
    {
      v34 = sub_1C43FCED0();
      sub_1C43FBD24(v34);
      sub_1C44057CC();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      sub_1C43FBE2C();
    }
  }
}

void static KnosisXPC.start(knosisConfig:platformConfig:indexHandlers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v5 = sub_1C456902C(&qword_1EC0C0A20, &qword_1C4F3FDE0);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v17 = sub_1C4F00978();
  v18 = sub_1C442B738(v17, qword_1EDE2DCD8);
  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CF8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = sub_1C43FCED0();
    *v21 = 0;
    _os_log_impl(&dword_1C43F8000, v19, v20, "KnosisXPC: starting...", v21, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDDBE00 != -1)
  {
    sub_1C442CD48();
  }

  sub_1C43FCEE8(v11, qword_1EDE2C918);
  sub_1C44098F0(a2, v16);
  type metadata accessor for Configuration();
  sub_1C43FBD94();
  sub_1C440BAA8(v22, v23, v24, v25);
  sub_1C440076C();
  sub_1C49ADF30(v16, v19, &unk_1EC0B9610, &unk_1C4F0F2E0);
  swift_endAccess();
  if (qword_1EDDDBE18 != -1)
  {
    sub_1C440ADEC();
  }

  sub_1C43FCEE8(v5, qword_1EDE2C938);
  v26 = sub_1C4EFDBB8();
  sub_1C43FBCE0(v26);
  (*(v27 + 16))(v10, v42, v26);
  sub_1C43FBD94();
  sub_1C440BAA8(v28, v29, v30, v26);
  sub_1C440076C();
  sub_1C49ADF30(v10, v19, &qword_1EC0C0A20, &qword_1C4F3FDE0);
  swift_endAccess();
  qword_1EC1525D8 = a3;

  sub_1C4461BB8(0, &qword_1EDDFA520, 0x1E696B0D8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = sub_1C49AA56C();
  v32 = qword_1EDE2C900;
  qword_1EDE2C900 = v31;
  v33 = v31;

  if (v33)
  {
    qword_1EDE2C908 = [objc_allocWithZone(type metadata accessor for KnosisXPC.Delegate()) init];
    v34 = qword_1EDE2C908;
    sub_1C44251FC();
    swift_unknownObjectRelease();
    [v33 setDelegate_];

    [v33 resume];
  }

  else
  {
    v33 = sub_1C4F00968();
    v35 = sub_1C4F01CE8();
    if (sub_1C43FCEA4(v35))
    {
      v36 = sub_1C43FCED0();
      sub_1C43FBD24(v36);
      sub_1C44057CC();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      sub_1C43FBE2C();
    }
  }
}

id sub_1C49AB1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C44251FC();
  ObjectType = swift_getObjectType();
  v6 = sub_1C4EFF988();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = (v13 - v12);
  v15 = sub_1C4EFF2D8();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  *v14 = a2;
  v14[1] = a3;
  (*(v9 + 104))(v14, *MEMORY[0x1E69A9A48], v6);
  sub_1C4598474();
  sub_1C4EFF2C8();
  (*(v18 + 32))(v3 + OBJC_IVAR____TtCC24IntelligencePlatformCore9KnosisXPC6Server_accessConfig, v23, v15);
  v26.receiver = v3;
  v26.super_class = ObjectType;
  return objc_msgSendSuper2(&v26, sel_init);
}

void sub_1C49AB384(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  if (qword_1EDDDBE08 != -1)
  {
    swift_once();
  }

  if (qword_1EDE2C930)
  {
    v5 = qword_1EDE2C930;
    v6 = sub_1C49AE008(a1);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      if (qword_1EDDFA678 != -1)
      {
        swift_once();
      }

      v10 = sub_1C4F00978();
      sub_1C442B738(v10, qword_1EDE2DCD8);
      v11 = a1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = sub_1C4F00968();
      v13 = sub_1C4F01CC8();

      if (os_log_type_enabled(v12, v13))
      {
        v37 = v5;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v38 = v16;
        *v14 = 136315650;
        v17 = sub_1C441D828(v8, v9, &v38);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2112;
        v18 = [v11 limit];
        *(v14 + 14) = v18;
        *v15 = v18;
        *(v14 + 22) = 2112;
        v19 = [v11 offset];
        *(v14 + 24) = v19;
        v15[1] = v19;
        _os_log_impl(&dword_1C43F8000, v12, v13, "Knosis XPC: Got executeKGQ request kgq:%s, limit:%@, offset:%@", v14, 0x20u);
        sub_1C456902C(&qword_1EC0BDA00, &qword_1C4F10D30);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v15, -1, -1);
        sub_1C440962C(v16);
        MEMORY[0x1C6942830](v16, -1, -1);
        v20 = v14;
        v5 = v37;
        MEMORY[0x1C6942830](v20, -1, -1);
      }

      else
      {
      }

      v27 = sub_1C4EFDC28();
      v28 = sub_1C4F00968();
      v29 = sub_1C4F01CC8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = v5;
        v31 = swift_slowAlloc();
        *v31 = 134218240;
        v32 = [v27 answers];
        sub_1C4461BB8(0, &unk_1EC0C0A30, 0x1E69A9EB0);
        sub_1C4F01678();

        v33 = sub_1C4428DA0();

        *(v31 + 4) = v33;

        *(v31 + 12) = 2048;
        v34 = [v27 status];
        sub_1C4F02AF8();
        MEMORY[0x1C69417F0](v34);
        v35 = sub_1C4F02B68();

        *(v31 + 14) = v35;
        _os_log_impl(&dword_1C43F8000, v28, v29, "Knosis XPC: Got executeKGQ result, answersCount:%ld, status:%ld", v31, 0x16u);
        v36 = v31;
        v5 = v30;
        MEMORY[0x1C6942830](v36, -1, -1);
      }

      else
      {

        v28 = v27;
      }

      (a3)[2](a3, v27, 0);
    }

    else
    {
      sub_1C49ADFB4();
      v24 = swift_allocError();
      *v25 = 0xD00000000000002BLL;
      v25[1] = 0x80000001C4FAB7C0;
      v26 = sub_1C4EF9798();
      (a3)[2](a3, 0, v26);
    }
  }

  else
  {
    sub_1C49ADFB4();
    v21 = swift_allocError();
    *v22 = xmmword_1C4F0D7C0;
    v23 = sub_1C4EF9798();
    (a3)[2](a3, 0, v23);
  }

  _Block_release(a3);
}

void KnosisXPC.Server.executeKGQ(_:withCompletion:)(void *a1, void (*a2)(void, void))
{
  if (qword_1EDDDBE08 != -1)
  {
    sub_1C4413408();
  }

  if (qword_1EDE2C930)
  {
    v33 = qword_1EDE2C930;
    v4 = sub_1C49AE008(a1);
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0();
      }

      v8 = sub_1C4F00978();
      sub_1C442B738(v8, qword_1EDE2DCD8);
      v9 = a1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v10 = sub_1C4F00968();
      v11 = sub_1C4F01CC8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = sub_1C43FFD34();
        v31 = a2;
        v13 = swift_slowAlloc();
        v14 = sub_1C43FFD34();
        v34 = v14;
        *v12 = 136315650;
        v15 = sub_1C441D828(v6, v7, &v34);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2112;
        v16 = [v9 limit];
        *(v12 + 14) = v16;
        *v13 = v16;
        *(v12 + 22) = 2112;
        v17 = [v9 offset];
        *(v12 + 24) = v17;
        v13[1] = v17;
        _os_log_impl(&dword_1C43F8000, v10, v11, "Knosis XPC: Got executeKGQ request kgq:%s, limit:%@, offset:%@", v12, 0x20u);
        sub_1C456902C(&qword_1EC0BDA00, &qword_1C4F10D30);
        swift_arrayDestroy();
        a2 = v31;
        sub_1C43FBE2C();
        sub_1C440962C(v14);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
      }

      v23 = sub_1C4EFDC28();
      v24 = sub_1C4F00968();
      v25 = sub_1C4F01CC8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134218240;
        v27 = [v23 answers];
        sub_1C4461BB8(0, &unk_1EC0C0A30, 0x1E69A9EB0);
        sub_1C4F01678();

        v28 = sub_1C4428DA0();

        *(v26 + 4) = v28;

        *(v26 + 12) = 2048;
        v29 = [v23 status];
        sub_1C4F02AF8();
        MEMORY[0x1C69417F0](v29);
        v30 = sub_1C4F02B68();

        *(v26 + 14) = v30;
        _os_log_impl(&dword_1C43F8000, v24, v25, "Knosis XPC: Got executeKGQ result, answersCount:%ld, status:%ld", v26, 0x16u);
        sub_1C43FBE2C();
      }

      else
      {

        v24 = v23;
      }

      v32 = v23;
      a2(v23, 0);

      v20 = v32;
    }

    else
    {
      sub_1C49ADFB4();
      v21 = swift_allocError();
      *v22 = 0xD00000000000002BLL;
      v22[1] = 0x80000001C4FAB7C0;
      a2(0, v21);

      v20 = v33;
    }
  }

  else
  {
    sub_1C49ADFB4();
    v18 = swift_allocError();
    *v19 = xmmword_1C4F0D7C0;
    a2(0, v18);
    v20 = v18;
  }
}

void sub_1C49ABD30(void *a1, unint64_t a2, void (**a3)(void, void, void *))
{
  v76 = a3;
  v84 = sub_1C4EFE0B8();
  v83 = *(v84 - 8);
  v5 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1C4F002A8();
  v8 = *(v93 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v72 - v12;
  if (qword_1EDDDBE08 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    if (!qword_1EDE2C930)
    {
      sub_1C49ADFB4();
      v45 = swift_allocError();
      *v46 = xmmword_1C4F0D7C0;
      v47 = sub_1C4EF9798();
      v48 = v76;
      v76[2](v76, 0, v47);

      _Block_release(v48);
      return;
    }

    v75 = qword_1EDE2C930;
    v13 = sub_1C49AE06C(a1);
    v74 = a2;
    v73 = a1;
    if (!v13)
    {
      goto LABEL_37;
    }

    v14 = v13;
    v82 = sub_1C4428DA0();
    if (!v82)
    {
      break;
    }

    v15 = 0;
    v81 = v14 & 0xC000000000000001;
    v77 = v14 + 32;
    v90 = (v8 + 8);
    v78 = v83 + 32;
    v16 = MEMORY[0x1E69E7CC0];
    v80 = v7;
    v79 = v14;
    while (1)
    {
      v8 = v81;
      sub_1C4431590(v15, v81 == 0);
      v17 = v8 ? MEMORY[0x1C6940F90](v15, v14) : *(v77 + 8 * v15);
      a1 = v17;
      v18 = __OFADD__(v15, 1);
      v19 = v15 + 1;
      if (v18)
      {
        break;
      }

      v87 = v19;
      v97[0] = MEMORY[0x1E69E7CD0];
      a2 = [v17 args];
      v7 = sub_1C4461BB8(0, &qword_1EC0C0A40, 0x1E69A9EB8);
      sub_1C49AE0DC();
      v20 = sub_1C4F01AB8();

      v88 = v16;
      v86 = a1;
      v89 = v7;
      if ((v20 & 0xC000000000000001) != 0)
      {
        sub_1C4F02118();
        sub_1C4F01B08();
        v20 = v97[9];
        a1 = v97[10];
        v21 = v97[11];
        v22 = v97[12];
        v8 = v97[13];
      }

      else
      {
        v22 = 0;
        v23 = -1 << *(v20 + 32);
        a1 = (v20 + 56);
        v21 = ~v23;
        v24 = -v23;
        if (v24 < 64)
        {
          v25 = ~(-1 << v24);
        }

        else
        {
          v25 = -1;
        }

        v8 = v25 & *(v20 + 56);
      }

      v85 = v21;
      v26 = (v21 + 64) >> 6;
      if (v20 < 0)
      {
        goto LABEL_23;
      }

      while (1)
      {
        v27 = v22;
        v28 = v8;
        v29 = v22;
        if (!v8)
        {
          while (1)
          {
            v29 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v29 >= v26)
            {
              goto LABEL_27;
            }

            v28 = *(a1 + v29);
            ++v27;
            if (v28)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_46;
        }

LABEL_21:
        v30 = (v28 - 1) & v28;
        v7 = *(*(v20 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
        if (!v7)
        {
          break;
        }

        while (1)
        {
          v32 = [v7 arg];
          sub_1C4F01138();
          v94 = v30;
          v33 = a1;

          v34 = [v7 value];
          sub_1C4F01138();

          sub_1C4F00298();
          a2 = v97;
          v35 = v91;
          sub_1C483C44C();

          v36 = v35;
          a1 = v33;
          (*v90)(v36, v93);
          v22 = v29;
          v8 = v94;
          if ((v20 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_23:
          v31 = sub_1C4F02148();
          if (v31)
          {
            v95 = v31;
            swift_dynamicCast();
            v7 = v96;
            v29 = v22;
            v30 = v8;
            if (v96)
            {
              continue;
            }
          }

          goto LABEL_27;
        }
      }

LABEL_27:
      sub_1C449BB0C();
      v37 = v86;
      v38 = [v86 intent];
      sub_1C4F01138();
      v7 = v39;

      v40 = [v37 score];
      sub_1C4F01A48();

      v41 = v80;
      sub_1C4EFE0A8();
      v16 = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458E770(0, *(v16 + 16) + 1, 1, v16);
        v16 = v43;
      }

      v14 = v79;
      v15 = v87;
      a2 = *(v16 + 16);
      v42 = *(v16 + 24);
      if (a2 >= v42 >> 1)
      {
        sub_1C458E770(v42 > 1, a2 + 1, 1, v16);
        v16 = v44;
      }

      *(v16 + 16) = a2 + 1;
      (*(v83 + 32))(v16 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * a2, v41, v84);
      if (v15 == v82)
      {
        goto LABEL_36;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }

LABEL_36:

LABEL_37:
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v49 = sub_1C4F00978();
  sub_1C442B738(v49, qword_1EDE2DCD8);
  v50 = v73;
  v51 = sub_1C4F00968();
  v52 = sub_1C4F01CC8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v97[0] = v55;
    *v53 = 136315650;
    v56 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v57 = MEMORY[0x1C6940380](v56, v84);
    v59 = v58;

    v60 = sub_1C441D828(v57, v59, v97);

    *(v53 + 4) = v60;
    *(v53 + 12) = 2112;
    v61 = [v50 limit];
    *(v53 + 14) = v61;
    *v54 = v61;
    *(v53 + 22) = 2112;
    v62 = [v50 offset];
    *(v53 + 24) = v62;
    v54[1] = v62;
    _os_log_impl(&dword_1C43F8000, v51, v52, "Knosis XPC: Got executeIntents request intents:%s, limit:%@, offset:%@", v53, 0x20u);
    sub_1C456902C(&qword_1EC0BDA00, &qword_1C4F10D30);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v54, -1, -1);
    sub_1C440962C(v55);
    MEMORY[0x1C6942830](v55, -1, -1);
    MEMORY[0x1C6942830](v53, -1, -1);
  }

  v63 = sub_1C4EFDC38();
  v64 = sub_1C4F00968();
  v65 = sub_1C4F01CC8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134218240;
    v67 = [v63 answers];
    sub_1C4461BB8(0, &unk_1EC0C0A30, 0x1E69A9EB0);
    sub_1C4F01678();

    v68 = sub_1C4428DA0();

    *(v66 + 4) = v68;

    *(v66 + 12) = 2048;
    v69 = [v63 status];
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](v69);
    v70 = sub_1C4F02B68();

    *(v66 + 14) = v70;
    _os_log_impl(&dword_1C43F8000, v64, v65, "Knosis XPC: Got executeIntents result, answersCount:%ld, status:%ld", v66, 0x16u);
    MEMORY[0x1C6942830](v66, -1, -1);
  }

  else
  {

    v64 = v63;
  }

  v71 = v76;
  (v76)[2](v76, v63, 0);

  _Block_release(v71);
}

void KnosisXPC.Server.executeIntent(_:withCompletion:)(void *a1, void (*a2)(NSObject *, uint64_t), uint64_t a3)
{
  v85 = a3;
  v84 = a2;
  v93 = sub_1C4EFE0B8();
  v5 = sub_1C43FCDF8(v93);
  v92 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v102 = sub_1C4F002A8();
  v12 = sub_1C43FCDF8(v102);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v101 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v80 - v19;
  if (qword_1EDDDBE08 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    if (!qword_1EDE2C930)
    {
      sub_1C49ADFB4();
      v53 = swift_allocError();
      *v54 = xmmword_1C4F0D7C0;
      v84(0, v53);
      sub_1C44086C4();

      return;
    }

    v83 = qword_1EDE2C930;
    v20 = sub_1C49AE06C(a1);
    v82 = v3;
    v81 = a1;
    if (!v20)
    {
      goto LABEL_37;
    }

    v21 = v20;
    v91 = sub_1C4428DA0();
    if (!v91)
    {
      break;
    }

    v22 = 0;
    v90 = v21 & 0xC000000000000001;
    v86 = v21 + 32;
    v99 = (v14 + 8);
    v87 = v92 + 32;
    v23 = MEMORY[0x1E69E7CC0];
    v89 = v11;
    v88 = v21;
    while (1)
    {
      v14 = v90;
      sub_1C4431590(v22, v90 == 0);
      v24 = v14 ? MEMORY[0x1C6940F90](v22, v21) : *(v86 + 8 * v22);
      v25 = __OFADD__(v22, 1);
      a1 = v22 + 1;
      if (v25)
      {
        break;
      }

      v97 = v23;
      v107[0] = MEMORY[0x1E69E7CD0];
      v95 = v24;
      v26 = [v24 args];
      v27 = sub_1C4461BB8(0, &qword_1EC0C0A40, 0x1E69A9EB8);
      v3 = sub_1C49AE0DC();
      v28 = sub_1C4F01AB8();

      v96 = a1;
      v98 = v27;
      if ((v28 & 0xC000000000000001) != 0)
      {
        sub_1C4F02118();
        sub_1C4F01B08();
        v28 = v107[9];
        v14 = v107[10];
        v29 = v107[11];
        v11 = v107[12];
        v30 = v107[13];
      }

      else
      {
        v11 = 0;
        v31 = -1 << *(v28 + 32);
        v14 = v28 + 56;
        v29 = ~v31;
        v32 = -v31;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        else
        {
          v33 = -1;
        }

        v30 = v33 & *(v28 + 56);
      }

      v94 = v29;
      a1 = ((v29 + 64) >> 6);
      v103 = a1;
      if (v28 < 0)
      {
        goto LABEL_23;
      }

      while (1)
      {
        v34 = v11;
        v35 = v30;
        v36 = v11;
        if (!v30)
        {
          while (1)
          {
            v36 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              break;
            }

            if (v36 >= a1)
            {
              goto LABEL_27;
            }

            v35 = *(v14 + 8 * v36);
            ++v34;
            if (v35)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_46;
        }

LABEL_21:
        v37 = (v35 - 1) & v35;
        v38 = *(*(v28 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
        if (!v38)
        {
          break;
        }

        while (1)
        {
          v40 = [v38 arg];
          v104 = v37;
          v41 = v40;
          sub_1C4F01138();
          v42 = v14;

          v43 = [v38 value];
          sub_1C4F01138();

          sub_1C4F00298();
          v3 = v107;
          v44 = v100;
          sub_1C483C44C();

          v45 = v44;
          v14 = v42;
          a1 = v103;
          (*v99)(v45, v102);
          v11 = v36;
          v30 = v104;
          if ((v28 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_23:
          v39 = sub_1C4F02148();
          if (v39)
          {
            v105 = v39;
            swift_dynamicCast();
            v38 = v106;
            v36 = v11;
            v37 = v30;
            if (v106)
            {
              continue;
            }
          }

          goto LABEL_27;
        }
      }

LABEL_27:
      sub_1C449BB0C();
      v46 = v95;
      v47 = [v95 intent];
      sub_1C4F01138();

      v48 = [v46 score];
      sub_1C4F01A48();

      v11 = v89;
      sub_1C4EFE0A8();
      v23 = v97;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458E770(0, *(v23 + 16) + 1, 1, v23);
        v23 = v51;
      }

      v21 = v88;
      v22 = v96;
      v50 = *(v23 + 16);
      v49 = *(v23 + 24);
      v3 = (v50 + 1);
      if (v50 >= v49 >> 1)
      {
        sub_1C458E770(v49 > 1, v50 + 1, 1, v23);
        v23 = v52;
      }

      *(v23 + 16) = v3;
      (*(v92 + 32))(v23 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v50, v11, v93);
      if (v22 == v91)
      {
        goto LABEL_36;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    sub_1C4413408();
  }

LABEL_36:

LABEL_37:
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v57 = sub_1C4F00978();
  sub_1C442B738(v57, qword_1EDE2DCD8);
  v58 = v81;
  v59 = sub_1C4F00968();
  v60 = sub_1C4F01CC8();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = sub_1C43FFD34();
    v62 = swift_slowAlloc();
    v63 = sub_1C43FFD34();
    v107[0] = v63;
    *v61 = 136315650;
    v64 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v65 = MEMORY[0x1C6940380](v64, v93);
    v67 = v66;

    v68 = sub_1C441D828(v65, v67, v107);

    *(v61 + 4) = v68;
    *(v61 + 12) = 2112;
    v69 = [v58 limit];
    *(v61 + 14) = v69;
    *v62 = v69;
    *(v61 + 22) = 2112;
    v70 = [v58 offset];
    *(v61 + 24) = v70;
    v62[1] = v70;
    _os_log_impl(&dword_1C43F8000, v59, v60, "Knosis XPC: Got executeIntents request intents:%s, limit:%@, offset:%@", v61, 0x20u);
    sub_1C456902C(&qword_1EC0BDA00, &qword_1C4F10D30);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C440962C(v63);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v71 = sub_1C4EFDC38();
  v72 = sub_1C4F00968();
  v73 = sub_1C4F01CC8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 134218240;
    v75 = [v71 answers];
    sub_1C4461BB8(0, &unk_1EC0C0A30, 0x1E69A9EB0);
    sub_1C4F01678();

    v76 = sub_1C4428DA0();

    *(v74 + 4) = v76;

    *(v74 + 12) = 2048;
    v77 = [v71 status];
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](v77);
    v78 = sub_1C4F02B68();

    *(v74 + 14) = v78;
    _os_log_impl(&dword_1C43F8000, v72, v73, "Knosis XPC: Got executeIntents result, answersCount:%ld, status:%ld", v74, 0x16u);
    sub_1C43FBE2C();
  }

  else
  {

    v72 = v71;
  }

  v79 = v71;
  v84(v71, 0);

  sub_1C44086C4();
}

void sub_1C49AD228(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

id KnosisXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1C49AD390(uint64_t a1, void *a2)
{
  v3 = *(*(sub_1C456902C(&qword_1EC0C0AB8, qword_1C4F3FE30) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v99 - v5;
  v7 = sub_1C4EFEFB8();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v15 = (v14 - v13);
  v16 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v99 - v20;
  if (qword_1EDDDBE00 != -1)
  {
    sub_1C442CD48();
  }

  v22 = sub_1C442B738(v16, qword_1EDE2C918);
  swift_beginAccess();
  sub_1C4466EEC(v22, v21);
  v23 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v21, 1, v23) != 1)
  {
    v24 = &v21[*(v23 + 20)];
    v25 = *v24;
    v26 = *(v24 + 1);
    sub_1C4467948(v21);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v25) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v26) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
LABEL_58:
        sub_1C43FFCC0();
      }

      v30 = sub_1C4F00978();
      sub_1C43FCEE8(v30, qword_1EDE2DCD8);
      v31 = sub_1C4F00968();
      v32 = sub_1C4F01CF8();
      if (!sub_1C43FCEA4(v32))
      {
        goto LABEL_52;
      }

      v33 = sub_1C43FCED0();
      sub_1C43FBD24(v33);
      sub_1C44057CC();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      goto LABEL_51;
    }

    if ((sub_1C446874C() & 1) == 0)
    {
LABEL_53:
      sub_1C44086C4();
      return;
    }

    v106 = v10;
    v28 = sub_1C4F01108();
    v29 = [a2 valueForEntitlement_];

    if (v29)
    {
      sub_1C4F02078();
      swift_unknownObjectRelease();
    }

    else
    {
      v113 = 0u;
      v114 = 0u;
    }

    aBlock = v113;
    v108 = v114;
    if (*(&v114 + 1))
    {
      if (swift_dynamicCast())
      {
        v39 = v112;
        v104 = v111;
        if (qword_1EDDFA678 != -1)
        {
          sub_1C43FFCC0();
        }

        v40 = sub_1C4F00978();
        sub_1C43FCEE8(v40, qword_1EDE2DCD8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v105 = v39;
        v41 = sub_1C4F00968();
        v42 = v105;
        v43 = v41;
        v44 = sub_1C4F01CF8();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = sub_1C43FD084();
          v46 = a2;
          v47 = sub_1C43FFD34();
          *&aBlock = v47;
          *v45 = 136315138;
          *(v45 + 4) = sub_1C441D828(v104, v42, &aBlock);
          _os_log_impl(&dword_1C43F8000, v43, v44, "KnosisXPC: clientIdentifier: %s", v45, 0xCu);
          sub_1C440962C(v47);
          a2 = v46;
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        sub_1C440D5A4();
        v48 = sub_1C4F01108();
        v49 = [a2 valueForEntitlement_];

        if (v49)
        {
          sub_1C4F02078();
          swift_unknownObjectRelease();
        }

        else
        {
          v113 = 0u;
          v114 = 0u;
        }

        aBlock = v113;
        v108 = v114;
        if (*(&v114 + 1))
        {
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          if (swift_dynamicCast())
          {
            v100 = a2;
            v56 = v111;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v57 = sub_1C4F00968();
            v58 = sub_1C4F01CF8();

            v59 = os_log_type_enabled(v57, v58);
            v101 = v29;
            if (v59)
            {
              v60 = sub_1C43FD084();
              v61 = sub_1C43FFD34();
              *&aBlock = v61;
              *v60 = 136315138;
              v62 = MEMORY[0x1C6940380](v56, MEMORY[0x1E69E6158]);
              v64 = sub_1C441D828(v62, v63, &aBlock);

              *(v60 + 4) = v64;
              _os_log_impl(&dword_1C43F8000, v57, v58, "KnosisXPC: entitledIndexNames: %s", v60, 0xCu);
              sub_1C440962C(v61);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            v65 = 0;
            v66 = *(v56 + 16);
            v102 = (v106 + 32);
            v67 = v56 + 40;
            v103 = MEMORY[0x1E69E7CC0];
            v99 = v56 + 40;
LABEL_36:
            v68 = (v67 + 16 * v65);
            while (v66 != v65)
            {
              if (v65 >= *(v56 + 16))
              {
                __break(1u);
                goto LABEL_58;
              }

              v70 = *(v68 - 1);
              v69 = *v68;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4EFEFA8();
              if (sub_1C44157D4(v6, 1, v7) != 1)
              {
                v71 = *v102;
                (*v102)(v15, v6, v7);
                v72 = v103;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1C458E7B0(0, *(v72 + 16) + 1, 1, v72);
                  v72 = v77;
                }

                v73 = v72;
                v74 = *(v72 + 16);
                v103 = v73;
                v75 = *(v73 + 24);
                if (v74 >= v75 >> 1)
                {
                  sub_1C458E7B0(v75 > 1, v74 + 1, 1, v103);
                  v103 = v78;
                }

                ++v65;
                v76 = v103;
                *(v103 + 16) = v74 + 1;
                v71(v76 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v74, v15, v7);
                v67 = v99;
                goto LABEL_36;
              }

              sub_1C4420C3C(v6, &qword_1EC0C0AB8, qword_1C4F3FE30);
              v68 += 2;
              ++v65;
            }

            v85 = v103;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v86 = sub_1C4F00968();
            v87 = sub_1C4F01CF8();

            if (os_log_type_enabled(v86, v87))
            {
              v88 = sub_1C43FD084();
              v89 = sub_1C43FFD34();
              *&aBlock = v89;
              *v88 = 136315138;
              v90 = MEMORY[0x1C6940380](v85, v7);
              v92 = sub_1C441D828(v90, v91, &aBlock);

              *(v88 + 4) = v92;
              _os_log_impl(&dword_1C43F8000, v86, v87, "KnosisXPC: entitledIndexTypes: %s", v88, 0xCu);
              sub_1C440962C(v89);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            v93 = v100;
            v94 = [objc_opt_self() interfaceWithProtocol_];
            sub_1C43FC5E8(v94, sel_setExportedInterface_);

            v95 = objc_allocWithZone(type metadata accessor for KnosisXPC.Server());
            v96 = sub_1C49AB1E8(v85, v104, v105);
            sub_1C43FC5E8(v96, sel_setExportedObject_);

            v109 = sub_1C49ADE44;
            v110 = 0;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v108 = sub_1C4833DD0;
            *(&v108 + 1) = &unk_1F43F2980;
            v97 = _Block_copy(&aBlock);
            sub_1C43FC5E8(v97, sel_setInterruptionHandler_);
            _Block_release(v97);
            v109 = sub_1C49ADE64;
            v110 = 0;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v108 = sub_1C4833DD0;
            *(&v108 + 1) = &unk_1F43F29A8;
            v98 = _Block_copy(&aBlock);
            sub_1C43FC5E8(v98, sel_setInvalidationHandler_);
            _Block_release(v98);
            [v93 resume];
            goto LABEL_53;
          }
        }

        else
        {

          sub_1C4420C3C(&aBlock, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        }

        v31 = sub_1C4F00968();
        v79 = sub_1C4F01CD8();
        if (!sub_1C43FCEA4(v79))
        {
          goto LABEL_52;
        }

        v52 = sub_1C43FD084();
        v53 = sub_1C43FFD34();
        *&aBlock = v53;
        *v52 = 136315138;
        v55 = sub_1C440D5A4();
LABEL_50:
        *(v52 + 4) = sub_1C441D828(v55, v54, &aBlock);
        sub_1C44057CC();
        _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
        sub_1C440962C(v53);
        sub_1C43FBE2C();
LABEL_51:
        sub_1C43FBE2C();
LABEL_52:

        goto LABEL_53;
      }
    }

    else
    {
      sub_1C4420C3C(&aBlock, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v50 = sub_1C4F00978();
    sub_1C43FCEE8(v50, qword_1EDE2DCD8);
    v31 = sub_1C4F00968();
    v51 = sub_1C4F01CD8();
    if (!sub_1C43FCEA4(v51))
    {
      goto LABEL_52;
    }

    v52 = sub_1C43FD084();
    v53 = sub_1C43FFD34();
    *&aBlock = v53;
    *v52 = 136315138;
    v54 = 0x80000001C4F9BF60;
    v55 = 0xD000000000000016;
    goto LABEL_50;
  }

  __break(1u);
}

uint64_t sub_1C49ADF30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C456902C(a3, a4);
  sub_1C43FBCE0(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

unint64_t sub_1C49ADFB4()
{
  result = qword_1EC0C0A28;
  if (!qword_1EC0C0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0A28);
  }

  return result;
}

uint64_t sub_1C49AE008(void *a1)
{
  v1 = [a1 kgq];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C49AE06C(void *a1)
{
  v1 = [a1 intentArgs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C4461BB8(0, &qword_1EC0C0AC0, 0x1E69A9EC0);
  v3 = sub_1C4F01678();

  return v3;
}

unint64_t sub_1C49AE0DC()
{
  result = qword_1EC0C0A48;
  if (!qword_1EC0C0A48)
  {
    sub_1C4461BB8(255, &qword_1EC0C0A40, 0x1E69A9EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0A48);
  }

  return result;
}

uint64_t type metadata accessor for KnosisXPC.Server()
{
  result = qword_1EDDDBDF0;
  if (!qword_1EDDDBDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C49AE1BC()
{
  result = sub_1C4EFF2D8();
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

uint64_t sub_1C49AE27C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C49AE294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C49AE2E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1C49AE344(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C49AE378(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x206E776F6E6B6E55;
  }

  if (a2 == 1)
  {
    return 0xD000000000000028;
  }

  sub_1C4F02248();

  MEMORY[0x1C6940010](a1, a2);
  return 0xD00000000000001CLL;
}

uint64_t sub_1C49AE468(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  if (a2 != 1)
  {
    v2 = 2;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C49AE480(uint64_t a1, uint64_t a2)
{
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v5 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1C4F01138();
  *(inited + 40) = v6;
  v7 = sub_1C49AE378(a1, a2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  return sub_1C4F00F28();
}

uint64_t sub_1C49AE530(uint64_t a1)
{
  v2 = sub_1C49AE5E0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C49AE56C(uint64_t a1)
{
  v2 = sub_1C49AE5E0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1C49AE5E0()
{
  result = qword_1EC0C0AC8;
  if (!qword_1EC0C0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0AC8);
  }

  return result;
}

uint64_t static KnowledgeConstructionSystem.start()()
{
  v0 = sub_1C4EF98F8();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Configuration();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - v9;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4F00978();
  v55 = sub_1C442B738(v11, qword_1EDDFECB8);
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    sub_1C4407324(&dword_1C43F8000, v15, v16, "KnowledgeConstructionSystem: starting...");
    MEMORY[0x1C6942830](v14, -1, -1);
  }

  if (qword_1EDDFFA78 != -1)
  {
    swift_once();
  }

  v57[0] = xmmword_1EDDFFA80;
  if (qword_1EDDFFA40 != -1)
  {
    swift_once();
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v57[1] = xmmword_1EDDFFA48;
  do
  {
    v21 = v19;
    v22 = &v57[v20];
    v24 = *v22;
    v23 = v22[1];
    if ((v24 & ~v17) != 0 || (v23 & v18) != v23)
    {
      v17 |= v24;
      v18 |= v23;
    }

    v19 = 1;
    v20 = 1;
  }

  while ((v21 & 1) == 0);
  sub_1C4F001A8();
  v53 = v1[2];
  v53(v10, v4, v0);
  static Features.optionsForEnabledFeatures.getter(v56);
  v26 = v1[1];
  v26(v4, v0);
  sub_1C4419BF0();
  v28 = &v10[v27];
  *v28 = v29;
  *(v28 + 1) = v30;
  sub_1C4D61780(v10);
  sub_1C4D62120(v10);
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CF8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    sub_1C4407324(&dword_1C43F8000, v34, v35, "KnowledgeConstructionSystem: running storage cleanup");
    MEMORY[0x1C6942830](v33, -1, -1);
  }

  if (sub_1C4B6A8D0(v10, v36, v37, v38, v39, v40, v41, v42) == 2)
  {
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    sub_1C4F001A8();
    v43 = v54;
    v53(v54, v4, v0);
    static Features.optionsForEnabledFeatures.getter(v56);
    v26(v4, v0);
    sub_1C4419BF0();
    v45 = (v43 + v44);
    *v45 = v46;
    v45[1] = v47;
    sub_1C4467948(v10);
    sub_1C4409954(v43, v10);
    sub_1C4787A70(v10);
    sub_1C4AE8C60();
    type metadata accessor for KnowledgeConstructionXPC();
    sub_1C49AEBEC(v10);
    v48 = sub_1C4F00968();
    v49 = sub_1C4F01CF8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1C43F8000, v48, v49, "KnowledgeConstructionSystem: storage system failed to start, will exit when process becomes clean after handling launch events.", v50, 2u);
      MEMORY[0x1C6942830](v50, -1, -1);
    }

    xpc_transaction_exit_clean();
  }

  else
  {
    sub_1C4787A70(v10);
    sub_1C4AE8C60();
    type metadata accessor for KnowledgeConstructionXPC();
    sub_1C49AEBEC(v10);
  }

  return sub_1C4467948(v10);
}

_BYTE *storeEnumTagSinglePayload for KnowledgeConstructionSystem(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1C49AEBEC(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v8))
  {
    v9 = sub_1C43FCED0();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "KnowledgeConstructionXPC: starting...", v9, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDE1A10 != -1)
  {
    sub_1C4407344();
  }

  sub_1C43FCEE8(v2, qword_1EDE2CB88);
  sub_1C44098F0(a1, v5);
  v10 = type metadata accessor for Configuration();
  sub_1C440BAA8(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1C45A6EE0(v5, v7);
  swift_endAccess();
  sub_1C45A6F50();
  sub_1C44351C0();
  v11 = sub_1C49AA56C();
  v12 = qword_1EDE2CB78;
  qword_1EDE2CB78 = v11;
  v13 = v11;

  if (v13)
  {
    qword_1EDE2CB80 = [objc_allocWithZone(type metadata accessor for KnowledgeConstructionXPC.Delegate()) init];
    v14 = qword_1EDE2CB80;
    swift_unknownObjectRelease();
    [v13 setDelegate_];

    [v13 resume];
  }

  else
  {
    v13 = sub_1C4F00968();
    v15 = sub_1C4F01CE8();
    if (sub_1C4402B64(v15))
    {
      v16 = sub_1C43FCED0();
      sub_1C43FBD24(v16);
      sub_1C43FFFD8(&dword_1C43F8000, v17, v18, "Failed to create KnowledgeConstruction XPC service");
      sub_1C43FE9D4();
    }
  }
}

uint64_t sub_1C49AEE60()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CB88);
  v1 = sub_1C442B738(v0, qword_1EDE2CB88);
  v2 = type metadata accessor for Configuration();

  return sub_1C440BAA8(v1, 1, 1, v2);
}

id KnowledgeConstructionXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t KnowledgeConstructionXPC.Server.runFullPipeline(with:)()
{
  sub_1C43FBCD4();
  v0[6] = v1;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[7] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v0[8] = swift_task_alloc();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C49AF00C()
{
  if ([objc_opt_self() isInternalDevice])
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v1 = sub_1C4F00978();
    v0[9] = v1;
    v0[10] = sub_1C442B738(v1, qword_1EDE2DCD8);
    v2 = sub_1C4F00968();
    v3 = sub_1C4F01CF8();
    if (sub_1C4402B64(v3))
    {
      v4 = sub_1C43FCED0();
      sub_1C43FBD24(v4);
      sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "KnowledgeConstructionXPC: runFullPipeline");
      sub_1C43FE9D4();
    }

    if (qword_1EDDE1A10 != -1)
    {
      sub_1C4407344();
    }

    v7 = v0[8];
    sub_1C442B738(v0[7], qword_1EDE2CB88);
    sub_1C43FC600();
    v8 = sub_1C43FBC98();
    sub_1C4466EEC(v8, v9);
    v10 = type metadata accessor for Configuration();
    result = sub_1C43FD9F0(v10);
    if (v12)
    {
      __break(1u);
    }

    else
    {
      if (qword_1EDDF0AB0 != -1)
      {
        sub_1C4402D88();
      }

      v13 = v0[8];
      v0[11] = sub_1C4468E90();
      sub_1C4467948(v0[8]);
      v23 = swift_task_alloc();
      v0[12] = v23;
      *v23 = v0;
      v23[1] = sub_1C49AF3BC;
      v24 = v0[6];

      return sub_1C4ABFCBC(v24);
    }
  }

  else
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v14 = sub_1C4F00978();
    sub_1C43FCEE8(v14, qword_1EDE2DCD8);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (sub_1C4402B64(v16))
    {
      v17 = sub_1C43FCED0();
      sub_1C43FBD24(v17);
      sub_1C43FFFD8(&dword_1C43F8000, v18, v19, "KnowledgeConstructionXPC: API disabled on customer devices.");
      sub_1C43FE9D4();
    }

    v20 = v0[8];

    v21 = sub_1C4409E50();

    return v22(v21);
  }

  return result;
}

uint64_t sub_1C49AF3BC()
{
  sub_1C43FBCD4();
  v3 = *(*v1 + 96);
  v2 = *v1;
  sub_1C43FBDAC();
  *v4 = v2;
  *(v2 + 104) = v0;

  if (v0)
  {
    v5 = sub_1C49AF570;
  }

  else
  {
    v6 = *(v2 + 88);

    v5 = sub_1C49AF4CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C49AF4CC()
{
  sub_1C43FCF70();
  v1 = *(v0 + 80);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "KnowledgeConstructionXPC: runFullPipeline: done");
    sub_1C43FE9D4();
  }

  v7 = *(v0 + 64);

  sub_1C43FBCF0();

  return v8(1);
}

uint64_t sub_1C49AF570()
{
  sub_1C43FCF70();
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);
  *(v0 + 40) = v2;
  v3 = v2;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {

    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    sub_1C43FCEE8(*(v0 + 72), qword_1EDE2DE10);
    v4 = sub_1C4F00968();
    v5 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      sub_1C49AFFF8();
      swift_allocError();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      sub_1C442BCC0(&dword_1C43F8000, v9, v10, "%@: Pipeline retired same phase multiple times. Need to invoke long running construction xpc activity");
      sub_1C45B4B90(v7);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v11 = *(v0 + 64);

    v12 = sub_1C4409E50();
  }

  else
  {
    v14 = *(v0 + 64);

    v12 = sub_1C4409E50();
  }

  return v13(v12);
}

uint64_t sub_1C49AF738(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1C4999D64;

  return KnowledgeConstructionXPC.Server.runFullPipeline(with:)();
}

uint64_t sub_1C49AF7F0()
{
  sub_1C43FBCD4();
  v3 = *(*v1 + 80);
  v2 = *v1;
  sub_1C43FBDAC();
  *v4 = v2;
  *(v2 + 88) = v0;

  if (v0)
  {
    v5 = sub_1C49AF9A4;
  }

  else
  {
    v6 = *(v2 + 72);

    v5 = sub_1C49AF900;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C49AF900()
{
  sub_1C43FCF70();
  v1 = *(v0 + 64);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "KnowledgeConstructionXPC: runFastpassPipeline: done");
    sub_1C43FE9D4();
  }

  v7 = *(v0 + 56);

  sub_1C43FBCF0();
  v9 = *(v0 + 96);

  return v8(v9);
}

uint64_t sub_1C49AF9A4()
{
  sub_1C43FBCD4();
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[7];

  v4 = sub_1C4409E50();

  return v5(v4);
}

uint64_t KnowledgeConstructionXPC.Server.stopPipeline()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 40) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 48) = swift_task_alloc();
  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C49AFA98()
{
  v2 = [objc_opt_self() isInternalDevice];
  if (!v2)
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v13 = sub_1C4F00978();
    sub_1C43FCEE8(v13, qword_1EDE2DCD8);
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CF8();
    if (!sub_1C43FEB2C(v19))
    {
      goto LABEL_17;
    }

    v14 = sub_1C43FCED0();
    sub_1C43FBD24(v14);
    v15 = "KnowledgeConstructionXPC: API disabled on customer devices.";
    goto LABEL_16;
  }

  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DCD8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v5))
  {
    v6 = sub_1C43FCED0();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, v4, v5, "KnowledgeConstructionXPC: stopPipeline", v6, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDE1A10 != -1)
  {
    sub_1C4407344();
  }

  v7 = *(v1 + 48);
  v8 = sub_1C442B738(*(v1 + 40), qword_1EDE2CB88);
  sub_1C43FC600();
  sub_1C4466EEC(v8, v7);
  v9 = type metadata accessor for Configuration();
  result = sub_1C43FD9F0(v9);
  if (v11)
  {
    __break(1u);
    return result;
  }

  if (qword_1EDDF0AB0 != -1)
  {
    sub_1C4402D88();
  }

  v12 = *(v1 + 48);
  v0 = 0;
  sub_1C4468E90();
  sub_1C4467948(*(v1 + 48));
  sub_1C4ABF738();

  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v19))
  {
    v21 = sub_1C43FCED0();
    sub_1C43FBD24(v21);
    v15 = "KnowledgeConstructionXPC: stopPipeline: done";
LABEL_16:
    _os_log_impl(&dword_1C43F8000, v18, v19, v15, v0, 2u);
    sub_1C43FE9D4();
  }

LABEL_17:

  v16 = *(v1 + 48);

  sub_1C43FBCF0();

  return v17(v2);
}

uint64_t sub_1C49AFD48(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C498F20C;

  return KnowledgeConstructionXPC.Server.stopPipeline()();
}

uint64_t sub_1C49AFE08()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v0 = sub_1C4F00978();
  sub_1C43FCEE8(v0, qword_1EDE2DCD8);
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_1C43FCED0();
    *v3 = 0;
    _os_log_impl(&dword_1C43F8000, v1, v2, "KnowledgeConstructionXPC: checkIn", v3, 2u);
    sub_1C43FBE2C();
  }

  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (sub_1C4402B64(v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C43FBD24(v6);
    sub_1C43FFFD8(&dword_1C43F8000, v7, v8, "KnowledgeConstructionXPC: checkIn: done");
    sub_1C43FE9D4();
  }

  sub_1C43FBCF0();

  return v9(1);
}

uint64_t sub_1C49AFF50(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4999D64;

  return KnowledgeConstructionXPC.Server.checkIn()();
}

unint64_t sub_1C49AFFF8()
{
  result = qword_1EC0C0AD0;
  if (!qword_1EC0C0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0AD0);
  }

  return result;
}

uint64_t sub_1C49B0094()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v4[1] = sub_1C4999D74;
  v6 = sub_1C43FBC98();

  return v7(v6);
}

uint64_t sub_1C49B0134()
{
  sub_1C43FCF70();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v4[1] = sub_1C4999B14;
  v6 = sub_1C43FBC98();

  return v7(v6);
}

uint64_t sub_1C49B01D4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C49B0214()
{
  sub_1C43FCF70();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1C43FC218(v4);
  *v5 = v6;
  v7 = sub_1C440E174(v5);

  return v8(v7);
}

uint64_t sub_1C49B02C0()
{
  sub_1C456902C(&qword_1EC0C0B60, &unk_1C4F40040);
  v0 = sub_1C4F00F28();
  sub_1C49B1820();
  sub_1C4F01108();
  v1 = sub_1C4F01CA8();
  v2 = [objc_opt_self() supportedLanguages];
  v3 = sub_1C4F01AB8();

  v4 = sub_1C4F01C98();
  if (!v4)
  {

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC();
    }

    v38 = sub_1C4F00978();
    sub_1C442B738(v38, qword_1EDE2DF70);
    v39 = sub_1C4F00968();
    v40 = sub_1C4F01CD8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1C43F8000, v39, v40, "languageView: Error executing Biome AppLanguageConsumption query: No results returned.", v41, 2u);
      MEMORY[0x1C6942830](v41, -1, -1);
    }

    return v0;
  }

  v50 = v0;
  v45 = 0;
  for (i = 0; ; i = sub_1C49B0B00)
  {
    while (1)
    {
      while (1)
      {
        do
        {
          if (![v4 next])
          {

            sub_1C44239FC(i);
            sub_1C44239FC(v45);
            return v50;
          }

          v5 = sub_1C4BD1B7C(v4);
        }

        while (!v5);
        v6 = v5;
        sub_1C4407364();
        if (*(v6 + 16))
        {
          v7 = sub_1C457AA70(v52);
          if (v8)
          {
            sub_1C440078C(v7);
            sub_1C457E804(v52);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_8;
            }

            sub_1C4407364();
            if (*(v6 + 16))
            {
              v9 = sub_1C457AA70(v52);
              if (v10)
              {
                break;
              }
            }
          }
        }

LABEL_9:

        sub_1C457E804(v52);
      }

      sub_1C440078C(v9);
      sub_1C457E804(v52);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_8;
      }

      sub_1C4407364();
      if (!*(v6 + 16) || (v11 = sub_1C457AA70(v52), (v12 & 1) == 0))
      {

        goto LABEL_9;
      }

      sub_1C440078C(v11);
      sub_1C457E804(v52);

      if ((swift_dynamicCast() & 1) != 0 && sub_1C4499AD0(0x4C746E65746E6F63, 0xEF65676175676E61, v3))
      {
        break;
      }

LABEL_8:
    }

    v13 = sub_1C4585948(0x72756F5361746164uLL);
    v14 = v13 == 8 ? 0 : v13;
    LOBYTE(v52[0]) = v14;
    v43 = sub_1C4F01198();
    v16 = v15;
    sub_1C44239FC(i);
    v17 = v50;
    swift_isUniquelyReferenced_nonNull_native();
    v52[0] = v50;
    v48 = sub_1C445FAA8(v43, v16);
    v51 = v18;
    if (__OFADD__(*(v17 + 16), (v18 & 1) == 0))
    {
      break;
    }

    sub_1C456902C(&qword_1EC0C0B70, &qword_1C4F40050);
    if (sub_1C4F02458())
    {
      v48 = sub_1C445FAA8(v43, v16);
      v20 = v51;
      if ((v51 & 1) != (v19 & 1))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v20 = v51;
    }

    v21 = v52[0];
    if ((v20 & 1) == 0)
    {
      sub_1C49B0B00(v52);
      sub_1C44686DC(v48, v43, v16, v52[0], v21);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v50 = v21;
    v22 = *(v21 + 56);
    sub_1C44239FC(v45);
    v23 = *(v22 + 8 * v48);
    swift_isUniquelyReferenced_nonNull_native();
    v52[0] = *(v22 + 8 * v48);
    v24 = v52[0];
    *(v22 + 8 * v48) = 0x8000000000000000;
    v46 = sub_1C445FAA8(0x4C746E65746E6F63, 0xEF65676175676E61);
    v44 = v25;
    if (__OFADD__(*(v24 + 16), (v25 & 1) == 0))
    {
      goto LABEL_51;
    }

    sub_1C456902C(&qword_1EC0C0B78, &qword_1C4F40058);
    if (sub_1C4F02458())
    {
      v26 = sub_1C445FAA8(0x4C746E65746E6F63, 0xEF65676175676E61);
      if ((v44 & 1) != (v27 & 1))
      {
        goto LABEL_52;
      }

      v46 = v26;
    }

    v28 = *(v22 + 8 * v48);
    *(v22 + 8 * v48) = v52[0];

    v29 = *(v22 + 8 * v48);
    if (v44)
    {
    }

    else
    {
      sub_1C44686DC(v46, 0x4C746E65746E6F63, 0xEF65676175676E61, MEMORY[0x1E69E7CC0], v29);
    }

    v30 = *(v29 + 56);
    v31 = *(v30 + 8 * v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v31;
    v49 = v30;
    *(v30 + 8 * v46) = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = *(v31 + 16);
      sub_1C458A6E0();
      v33 = v36;
      *(v30 + 8 * v46) = v36;
    }

    v34 = *(v33 + 16);
    if (v34 >= *(v33 + 24) >> 1)
    {
      sub_1C458A6E0();
      v33 = v37;
      *(v49 + 8 * v46) = v37;
    }

    *(v33 + 16) = v34 + 1;
    *(v33 + 8 * v34 + 32) = 0x6E657053656D6974;
    v45 = sub_1C455B584;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C49B0B00@<X0>(uint64_t *a1@<X8>)
{
  sub_1C456902C(&qword_1EC0B9228, &unk_1C4F3DD70);
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

uint64_t sub_1C49B0B58(uint64_t a1, uint64_t a2)
{
  sub_1C456902C(&qword_1EC0C0B38, &qword_1C4F40020);
  sub_1C49B0EBC();
  v3 = sub_1C4F00F28();
  v4 = sub_1C4F01198();
  v6 = sub_1C4663244(v4, v5, a2);

  if (!v6)
  {
    return v3;
  }

  if (!*(v6 + 16))
  {
    goto LABEL_38;
  }

  v7 = 0;
  v8 = v6 + 64;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = 0.0;
  while (v11)
  {
LABEL_11:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v6 + 56) + ((v7 << 9) | (8 * v15)));
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 32);
      do
      {
        v19 = *v18++;
        v13 = v13 + v19;
        --v17;
      }

      while (v17);
    }
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v7;
    if (v11)
    {
      v7 = v14;
      goto LABEL_11;
    }
  }

  if (v13 <= 0.0)
  {
LABEL_38:

    return v3;
  }

  v20 = 0;
  v21 = 1 << *(v6 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v6 + 64);
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
LABEL_24:
    v26 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v27 = v26 | (v20 << 6);
    v28 = *(*(v6 + 56) + 8 * v27);
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = (*(v6 + 48) + 16 * v27);
      v31 = *v30;
      v32 = v30[1];
      v33 = 0.0;
      v34 = 32;
      do
      {
        v33 = v33 + *(v28 + v34);
        v34 += 8;
        --v29;
      }

      while (v29);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v35 = sub_1C49B0F38(v31, v32);

      if (*(v35 + 16))
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C457B14C(v35);
        v46 = v37;
        if (__OFADD__(v3[2], (v37 & 1) == 0))
        {
          goto LABEL_43;
        }

        v38 = v36;
        sub_1C456902C(&qword_1EC0C0B48, &qword_1C4F40028);
        if (sub_1C4F02458())
        {
          sub_1C457B14C(v35);
          v41 = v46;
          if ((v46 & 1) != (v40 & 1))
          {
            goto LABEL_45;
          }

          v38 = v39;
        }

        else
        {
          v41 = v46;
        }

        if (v41)
        {
          *(v3[7] + 8 * v38) = v33;
          goto LABEL_28;
        }

        v3[(v38 >> 6) + 8] |= 1 << v38;
        *(v3[6] + 8 * v38) = v35;
        *(v3[7] + 8 * v38) = v33;
        v42 = v3[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_44;
        }

        v3[2] = v44;
      }

      else
      {
LABEL_28:
      }
    }
  }

  while (1)
  {
    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      return v3;
    }

    v23 = *(v8 + 8 * v25);
    ++v20;
    if (v23)
    {
      v20 = v25;
      goto LABEL_24;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}