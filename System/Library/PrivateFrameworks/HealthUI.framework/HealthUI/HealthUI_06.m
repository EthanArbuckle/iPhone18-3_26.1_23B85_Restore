uint64_t sub_1C3C4D14C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  sub_1C3C4E464(0, &qword_1EC081008, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = v65 - v4;
  v5 = sub_1C3D1FAF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  v74 = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v6 + 104))(v8, *MEMORY[0x1E69814D8], v5);
  v73 = sub_1C3D1FB54();
  v9 = [*a1 title];
  v10 = sub_1C3D20104();
  v12 = v11;

  v93 = v10;
  v94 = v12;
  sub_1C3C4999C();
  v13 = sub_1C3D20724();
  v15 = v14;

  v16 = sub_1C3C4C688(v13, v15);
  v18 = v17;

  if (!v18)
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v93 = v16;
  v94 = v18;
  v19 = sub_1C3D1F994();
  v21 = v20;
  v23 = v22;
  v93 = sub_1C3D1FB24();
  v24 = sub_1C3D1F924();
  v26 = v25;
  v28 = v27;
  v65[1] = v29;
  sub_1C3C2EE8C(v19, v21, v23 & 1);

  type metadata accessor for ClinicalAccountBrandLogoView();
  sub_1C3C4C410();
  sub_1C3D1F094();
  v30 = sub_1C3D1F814();
  v31 = *(v30 - 8);
  v66 = v30;
  v67 = v31;
  v32 = *(v31 + 56);
  v68 = v31 + 56;
  v69 = v32;
  v33 = v72;
  v32(v72, 1, 1, v30);
  sub_1C3D1F844();
  v71 = MEMORY[0x1E6980E30];
  v70 = MEMORY[0x1E69E6720];
  sub_1C3C4E408(v33, &qword_1EC081008, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  v34 = sub_1C3D1F954();
  v36 = v35;
  v38 = v37;
  v65[0] = v39;

  sub_1C3C2EE8C(v24, v26, v28 & 1);

  sub_1C3D1F834();
  v40 = sub_1C3D1F904();
  v42 = v41;
  v44 = v43;
  sub_1C3C2EE8C(v34, v36, v38 & 1);

  v45 = v66;
  (*(v67 + 104))(v33, *MEMORY[0x1E6980E28], v66);
  v69(v33, 0, 1, v45);
  v46 = sub_1C3D1F8F4();
  v48 = v47;
  LOBYTE(v34) = v49;
  v51 = v50;
  sub_1C3C2EE8C(v40, v42, v44 & 1);

  sub_1C3C4E408(v33, &qword_1EC081008, v71, v70);
  sub_1C3D1FD14();
  sub_1C3D1F1E4();
  *&v84 = v46;
  *(&v84 + 1) = v48;
  LOBYTE(v85) = v34 & 1;
  *(&v85 + 1) = *v105;
  DWORD1(v85) = *&v105[3];
  *(&v85 + 1) = v51;
  v52 = v81;
  v53 = v82;
  v90 = v81;
  v91 = v82;
  v54 = v83;
  v92 = v83;
  v55 = v77;
  v56 = v78;
  v86 = v77;
  v87 = v78;
  v58 = v79;
  v57 = v80;
  v88 = v79;
  v89 = v80;
  v59 = v79;
  v60 = v75;
  *(v75 + 88) = v80;
  v61 = v91;
  *(v60 + 104) = v90;
  *(v60 + 120) = v61;
  *(v60 + 136) = v92;
  v62 = v84;
  *(v60 + 24) = v85;
  v63 = v87;
  *(v60 + 40) = v86;
  *(v60 + 56) = v63;
  *(v60 + 72) = v59;
  *(v60 + 8) = v62;
  v102 = v52;
  v103 = v53;
  v104 = v54;
  v98 = v55;
  v99 = v56;
  v106 = v34 & 1;
  *v60 = v73;
  v93 = v46;
  v94 = v48;
  v95 = v34 & 1;
  *v96 = *v105;
  *&v96[3] = *&v105[3];
  v97 = v51;
  v100 = v58;
  v101 = v57;

  sub_1C3C4E4C8(&v84, &v76);
  sub_1C3C4E558(&v93);
}

uint64_t sub_1C3C4D7A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C3C4D808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalAccountBrandLogoView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C4D86C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalAccountBrandLogoView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1C3C4C9E0(a1, v6, a2);
}

void sub_1C3C4D97C()
{
  if (!qword_1EC085E58)
  {
    sub_1C3C4E0C0(255, &qword_1EC0812F8, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085E58);
    }
  }
}

void sub_1C3C4DA08()
{
  if (!qword_1EC085E60)
  {
    sub_1C3C4DA9C();
    sub_1C3C4EC18(&qword_1EC085E78, sub_1C3C4DA9C);
    v0 = sub_1C3D1F554();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085E60);
    }
  }
}

void sub_1C3C4DA9C()
{
  if (!qword_1EC085E68)
  {
    sub_1C3D1F1D4();
    sub_1C3C4EC18(&qword_1EC085E70, MEMORY[0x1E697EAF0]);
    v0 = sub_1C3D1F024();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085E68);
    }
  }
}

void sub_1C3C4DB4C()
{
  if (!qword_1EC085E80)
  {
    sub_1C3C4DBE0();
    sub_1C3C4EC18(&qword_1EC085E90, sub_1C3C4DBE0);
    v0 = sub_1C3D1F1F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085E80);
    }
  }
}

void sub_1C3C4DBE0()
{
  if (!qword_1EC085E88)
  {
    sub_1C3D1F1D4();
    sub_1C3C4EC18(&qword_1EC085E70, MEMORY[0x1E697EAF0]);
    v0 = sub_1C3D1F1C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085E88);
    }
  }
}

void sub_1C3C4DCA4()
{
  if (!qword_1EC085EA0)
  {
    sub_1C3C4E464(255, &qword_1EC085EA8, sub_1C3C4DD38, MEMORY[0x1E6981F40]);
    sub_1C3C4DE60();
    v0 = sub_1C3D1FC94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085EA0);
    }
  }
}

void sub_1C3C4DD38()
{
  if (!qword_1EC085EB0)
  {
    sub_1C3C4DDD4();
    sub_1C3C4E0C0(255, &qword_1EC087F50, MEMORY[0x1E6981148], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC085EB0);
    }
  }
}

void sub_1C3C4DDD4()
{
  if (!qword_1EC085EB8)
  {
    sub_1C3C4E0C0(255, &qword_1EC085EC0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085EB8);
    }
  }
}

unint64_t sub_1C3C4DE60()
{
  result = qword_1EC085EC8;
  if (!qword_1EC085EC8)
  {
    sub_1C3C4E464(255, &qword_1EC085EA8, sub_1C3C4DD38, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085EC8);
  }

  return result;
}

void sub_1C3C4DEE8()
{
  if (!qword_1EC085ED0)
  {
    sub_1C3D1F1D4();
    sub_1C3C4EC18(&qword_1EC085E70, MEMORY[0x1E697EAF0]);
    v0 = sub_1C3D1F124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085ED0);
    }
  }
}

void sub_1C3C4DF7C()
{
  if (!qword_1EC085ED8)
  {
    sub_1C3C4DEE8();
    sub_1C3C4EC18(&qword_1EC085EE0, sub_1C3C4DEE8);
    v0 = sub_1C3D1F024();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085ED8);
    }
  }
}

void sub_1C3C4E02C()
{
  if (!qword_1EC085EE8)
  {
    sub_1C3C4DF7C();
    sub_1C3C4E0C0(255, &qword_1EC085EF0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F930]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085EE8);
    }
  }
}

void sub_1C3C4E0C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1C3C4E114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C3C4E17C()
{
  result = qword_1EC085EF8;
  if (!qword_1EC085EF8)
  {
    sub_1C3C4D8EC(255);
    sub_1C3C4E22C();
    sub_1C3C4EC18(&qword_1EC085F18, sub_1C3C4DB4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085EF8);
  }

  return result;
}

unint64_t sub_1C3C4E22C()
{
  result = qword_1EC085F00;
  if (!qword_1EC085F00)
  {
    sub_1C3C4D934(255);
    sub_1C3C4EA70(&qword_1EC085F08, sub_1C3C4D97C, sub_1C3C2D700);
    sub_1C3C4EC18(&qword_1EC085F10, sub_1C3C4DA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085F00);
  }

  return result;
}

uint64_t sub_1C3C4E314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3C4E374(uint64_t a1, uint64_t a2)
{
  sub_1C3C4E464(0, &qword_1EC085EA8, sub_1C3C4DD38, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C4E408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1C3C4E464(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1C3C4E464(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C3C4E4C8(uint64_t a1, uint64_t a2)
{
  sub_1C3C4E0C0(0, &qword_1EC087F50, MEMORY[0x1E6981148], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C4E558(uint64_t a1)
{
  sub_1C3C4E0C0(0, &qword_1EC087F50, MEMORY[0x1E6981148], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C3C4E5E0()
{
  result = qword_1EC085F28;
  if (!qword_1EC085F28)
  {
    sub_1C3C4E730(255, &qword_1EC085F30, sub_1C3C4E6B8);
    sub_1C3C4EA70(&qword_1EC085F80, sub_1C3C4E6B8, sub_1C3C4EAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085F28);
  }

  return result;
}

void sub_1C3C4E730(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D1F1A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3C4E7BC()
{
  if (!qword_1EC085F58)
  {
    sub_1C3C4E850();
    sub_1C3C4EC18(&qword_1EC085F78, sub_1C3C4E850);
    v0 = sub_1C3D1FC84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085F58);
    }
  }
}

void sub_1C3C4E850()
{
  if (!qword_1EC085F60)
  {
    sub_1C3C4E8F8(255, &qword_1EC085F68, sub_1C3C4D8EC, sub_1C3C4DCA4, MEMORY[0x1E697F960]);
    sub_1C3C4E97C();
    v0 = type metadata accessor for LoadableImage();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC085F60);
    }
  }
}

void sub_1C3C4E8F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1C3C4E97C()
{
  result = qword_1EC085F70;
  if (!qword_1EC085F70)
  {
    sub_1C3C4E8F8(255, &qword_1EC085F68, sub_1C3C4D8EC, sub_1C3C4DCA4, MEMORY[0x1E697F960]);
    sub_1C3C4E17C();
    sub_1C3C4EC18(&qword_1EC085F20, sub_1C3C4DCA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085F70);
  }

  return result;
}

uint64_t sub_1C3C4EA70(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C3C4EB68()
{
  result = qword_1EC085F98;
  if (!qword_1EC085F98)
  {
    sub_1C3C4E794(255);
    sub_1C3C4EC18(&unk_1EC085FA0, sub_1C3C4E7BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085F98);
  }

  return result;
}

uint64_t sub_1C3C4EC18(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C3C4EC60()
{
  sub_1C3C27C60();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C3D5EAE0;
  sub_1C3C27CB4(0, &qword_1EC0857B8);
  *(v0 + 32) = MEMORY[0x1C692FB80](*MEMORY[0x1E696B698]);
  sub_1C3C27CB4(0, &qword_1EC0857A0);
  v1 = sub_1C3D202A4();

  return v1;
}

uint64_t static HKSampleType.associatedSleepScoreTypes.getter()
{
  sub_1C3C27C60();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C3D5EAE0;
  sub_1C3C27CB4(0, &qword_1EC0857B8);
  *(v0 + 32) = MEMORY[0x1C692FB80](*MEMORY[0x1E696B698]);
  return v0;
}

uint64_t sub_1C3C4ED90(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_1C3C4D7A4(a1, &v2[OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_collection]);
  v6 = OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_date;
  v7 = sub_1C3D1E1E4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a2, v7);
  v9 = sub_1C3D1E8B4();
  v10 = sub_1C3C751C4(MEMORY[0x1E69E7CC0]);
  v35 = a1;
  v11 = sub_1C3C4F324(v10, sub_1C3C4FD18, v34, v9);

  *&v3[OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_valuesByMetric] = v11;

  *&v13 = COERCE_DOUBLE(sub_1C3C9D694(v12));
  if (v14)
  {

    v15 = 0.0;
    v16 = 0.0;
  }

  else
  {
    v17 = *&v13;
    v18 = COERCE_DOUBLE(sub_1C3C9D8C4(v11));
    v20 = v19;

    v15 = 0.0;
    v16 = 0.0;
    if ((v20 & 1) == 0)
    {
      v15 = v17;
      v16 = v18;
      if (v17 > v18)
      {
        __break(1u);
        return result;
      }
    }
  }

  v22 = &v3[OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_valueRange];
  *v22 = v15;
  v22[1] = v16;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v23 = sub_1C3D1EA54();
  v24 = 0xBFFCCCCCCCCCCCCDLL;
  if ((v23 & 1) == 0)
  {
    v24 = 0;
  }

  v25 = 0x3FFCCCCCCCCCCCCDLL;
  if ((v23 & 1) == 0)
  {
    v25 = 0;
  }

  v26 = &v3[OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_warmupRange];
  *v26 = v24;
  *(v26 + 1) = v25;
  v26[16] = (v23 & 1) == 0;
  v27 = sub_1C3D1E8B4();
  v28 = sub_1C3C75398(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1EEE9AC00](v28);
  v32[2] = a1;
  v30 = sub_1C3C4F324(v29, sub_1C3C4FD34, v32, v27);

  *&v3[OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_warmupRangeByMetric] = v30;
  v36.receiver = v3;
  v36.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v36, sel_init);
  (*(v8 + 8))(a2, v7);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v31;
}

uint64_t sub_1C3C4F038(uint64_t *a1, uint64_t a2, void *a3)
{
  v35 = a1;
  v4 = sub_1C3D1E9C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C3D1E8C4();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v32 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v11;
  v12 = *(v11 + 16);
  v34 = v13;
  v12(v9);
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v14 = sub_1C3D1EA24();
  v15 = *(v14 + 16);
  if (v15)
  {
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v18 = *(v16 + 64);
    v31[1] = v14;
    v19 = v14 + ((v18 + 32) & ~v18);
    v37 = *(v16 + 56);
    v38 = v17;
    v20 = (v16 - 8);
    v21 = MEMORY[0x1E69E7CC0];
    v36 = v16;
    v17(v7, v19, v4);
    while (1)
    {
      v22 = sub_1C3D1E924();
      v24 = v23;
      (*v20)(v7, v4);
      if ((v24 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1C3C467D0(0, *(v21 + 2) + 1, 1, v21);
        }

        v26 = *(v21 + 2);
        v25 = *(v21 + 3);
        if (v26 >= v25 >> 1)
        {
          v21 = sub_1C3C467D0((v25 > 1), v26 + 1, 1, v21);
        }

        *(v21 + 2) = v26 + 1;
        *&v21[8 * v26 + 32] = v22;
      }

      v19 += v37;
      if (!--v15)
      {
        break;
      }

      v38(v7, v19, v4);
    }
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  v27 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v27;
  v29 = v32;
  sub_1C3CA20E8(v21, v32, isUniquelyReferenced_nonNull_native);
  result = (*(v33 + 8))(v29, v34);
  *v27 = v39;
  return result;
}

uint64_t sub_1C3C4F324(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_1C3D1E8C4() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_1C3C4F408(uint64_t *a1, uint64_t a2, void *a3)
{
  v18 = a1;
  v5 = sub_1C3D1E9C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v17 = a2;
  result = sub_1C3D1EA24();
  v10 = result;
  v11 = 0;
  v12 = *(result + 16);
  while (1)
  {
    if (v12 == v11)
    {

      v14 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v14;
      result = sub_1C3CA2118(v17, isUniquelyReferenced_nonNull_native, -1.8, 1.8);
      *v14 = v19;
      return result;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    (*(v6 + 16))(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11++, v5);
    v13 = sub_1C3D1E934();
    result = (*(v6 + 8))(v8, v5);
    if ((v13 & 1) == 0)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for BalanceChartPoint()
{
  result = qword_1EC085FC0;
  if (!qword_1EC085FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3C4F6F4()
{
  result = sub_1C3D1E1E4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1C3C4F7B4(uint64_t a1)
{
  v2 = sub_1C3D1E1E4();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_date, v2);
  v5 = sub_1C3D20A84();

  return v5;
}

double sub_1C3C4F898@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1C3D1EDA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D1ED64();
  v8 = sub_1C3D1ED84();
  v9 = sub_1C3D204F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = sub_1C3D20CD4();
    v15 = sub_1C3C22C28(v13, v14, &v19);

    *(v11 + 4) = v15;
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1C69321D0](v12, -1, -1);
    v16 = v11;
    a1 = v18;
    MEMORY[0x1C69321D0](v16, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  result = *(v2 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_valueRange);
  *(a1 + 24) = MEMORY[0x1E69E63B0];
  *a1 = result;
  return result;
}

uint64_t sub_1C3C4FBC8()
{
  v6[3] = MEMORY[0x1E69E63B0];
  v1 = *(v0 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_valueRange + 8);
  v6[0] = *(v0 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_valueRange);
  v5 = MEMORY[0x1E69E63B0];
  *&v4 = v1;
  sub_1C3C358E8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C3D5DCD0;
  sub_1C3C233C8(v6, v2 + 32);
  sub_1C3C233B8(&v4, (v2 + 64));
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v2;
}

void sub_1C3C4FD64()
{
  v1 = OBJC_IVAR___HKAudiogramCurrentValueViewDataSource____lazy_storage___chartFormatter;
  v2 = *(v0 + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource____lazy_storage___chartFormatter);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = *(v0 + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_applicationItems);
  v4 = [v3 displayTypeController];
  v5 = [objc_opt_self() audiogramSampleType];
  v6 = [v4 displayTypeForObjectType_];

  if (v6)
  {
    v7 = [v3 unitController];
    v8 = type metadata accessor for AudiogramChartDataFormatter();
    v16.receiver = objc_allocWithZone(v8);
    v16.super_class = v8;
    v9 = objc_msgSendSuper2(&v16, sel_init);
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 hk_chartCurrentValueValueFont];
    [v11 setMajorFont_];

    v13 = [v10 hk_chartCurrentValueKindFont];
    [v11 setMinorFont_];

    [v11 setUnitController_];
    [v11 setDisplayType_];

    v14 = *(v0 + v1);
    *(v0 + v1) = v11;
    v11;

    v2 = 0;
LABEL_4:
    v15 = v2;
    return;
  }

  __break(1u);
}

id AudiogramCurrentValueViewDataSource.__allocating_init(applicationItems:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___HKAudiogramCurrentValueViewDataSource____lazy_storage___chartFormatter] = 0;
  *&v3[OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_audiogram] = 0;
  *&v3[OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_applicationItems] = a1;
  *&v3[OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_keyValueLabels] = MEMORY[0x1E69E7CC0];
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AudiogramCurrentValueViewDataSource.init(applicationItems:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___HKAudiogramCurrentValueViewDataSource____lazy_storage___chartFormatter] = 0;
  *&v1[OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_audiogram] = 0;
  *&v1[OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_applicationItems] = a1;
  *&v1[OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_keyValueLabels] = MEMORY[0x1E69E7CC0];
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AudiogramCurrentValueViewDataSource();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1C3C50154(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_audiogram);
  *(v1 + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_audiogram) = a1;
  v3 = a1;

  sub_1C3C507C8();
}

uint64_t sub_1C3C503DC()
{
  v1 = OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_keyValueLabels;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    return sub_1C3D20964();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1C3C50520(unint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_keyValueLabels;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if ((v7 & 0xC000000000000001) != 0)
  {

    v11 = MEMORY[0x1C692FEB0](a1, v7);

    v8 = v11;
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v8 = *(v7 + 8 * a1 + 32);
LABEL_5:
    v9 = a2 == 0;
    v10 = v8;
    [v8 setOrientation_];
    return v10;
  }

  __break(1u);
  return result;
}

void sub_1C3C507C8()
{
  v1 = v0;
  v2 = OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_keyValueLabels;
  swift_beginAccess();
  *(v0 + v2) = MEMORY[0x1E69E7CC0];

  v3 = *(v0 + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_audiogram);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 averageLeftEarSensitivity];
    if (v5)
    {
      v6 = v5;
      sub_1C3C4FD64();
      v8 = v7;
      v9 = [objc_opt_self() decibelHearingLevelUnit];
      v10 = [v6 doubleValueForUnit_];
      v12 = v11;
      v13 = MEMORY[0x1E69E7D40];
      v14 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
      [v14 setDataType_];
      v15 = [v8 attributedStringWithValue:v9 unit:1 showUnit:v12];
      [v14 setAttributedString_];

      v16 = sub_1C3D1E804();
      [v14 setValueAsNumber_];

      if (qword_1EC080DC0 != -1)
      {
        swift_once();
      }

      sub_1C3D1DEC4();
      v17 = sub_1C3D200C4();

      [v14 setTitleOverride_];

      v18 = [objc_opt_self() clearColor];
      v19 = _s8HealthUI20AudiogramPointMarkerV7OptionsV03forC0_4sideSayAEGSo17HKAudiogramSampleC_So0I19SensitivityTestSideVtFZ_0(v4, 0);
      sub_1C3C27CB4(0, &qword_1EC085FF8);
      sub_1C3C5221C();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C3D5F370;
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 32) = 0xD00000000000001DLL;
      *(v20 + 40) = 0x80000001C3D83300;
      sub_1C396DFC8(0, &qword_1EC086010, &type metadata for AudiogramPointMarker.Options, MEMORY[0x1E69E62F8]);
      *(v20 + 88) = v21;
      *(v20 + 64) = v19;
      sub_1C3C27CB4(0, &qword_1EC086018);

      v22 = sub_1C3D204C4();
      v23 = sub_1C3D204B4();

      v24 = v18;
      [v23 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      [v14 setMetadata_];

      v25 = [objc_allocWithZone(HKInteractiveChartAnnotationViewKeyValueLabel) init];
      v26 = [v25 keyLabel];
      [v26 setSelectedRangeData_];

      v27 = [v25 valueLabel];
      v28 = [v14 attributedString];
      [v27 setAttributedText_];

      v29 = swift_beginAccess();
      MEMORY[0x1C692F8F0](v29);
      if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C3D202C4();
      }

      sub_1C3D202F4();
      swift_endAccess();
    }

    v30 = [v4 averageRightEarSensitivity];
    if (v30)
    {
      v31 = v30;
      sub_1C3C4FD64();
      v33 = v32;
      v34 = [objc_opt_self() decibelHearingLevelUnit];
      v58 = v31;
      v35 = [v31 doubleValueForUnit_];
      v37 = v36;
      v38 = MEMORY[0x1E69E7D40];
      v39 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
      [v39 setDataType_];
      v40 = [v33 attributedStringWithValue:v34 unit:1 showUnit:v37];
      [v39 setAttributedString_];

      v41 = sub_1C3D1E804();
      [v39 setValueAsNumber_];

      if (qword_1EC080DC0 != -1)
      {
        swift_once();
      }

      sub_1C3D1DEC4();
      v42 = sub_1C3D200C4();

      [v39 setTitleOverride_];

      v43 = [objc_opt_self() clearColor];
      v44 = _s8HealthUI20AudiogramPointMarkerV7OptionsV03forC0_4sideSayAEGSo17HKAudiogramSampleC_So0I19SensitivityTestSideVtFZ_0(v4, 1);
      sub_1C3C27CB4(0, &qword_1EC085FF8);
      sub_1C3C5221C();
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1C3D5F370;
      *(v45 + 56) = MEMORY[0x1E69E6158];
      *(v45 + 32) = 0xD00000000000001DLL;
      *(v45 + 40) = 0x80000001C3D83300;
      sub_1C396DFC8(0, &qword_1EC086010, &type metadata for AudiogramPointMarker.Options, MEMORY[0x1E69E62F8]);
      *(v45 + 88) = v46;
      *(v45 + 64) = v44;
      sub_1C3C27CB4(0, &qword_1EC086018);

      v47 = sub_1C3D204C4();
      v48 = sub_1C3D204B4();

      v49 = v43;
      [v48 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      [v39 setMetadata_];

      v50 = [objc_allocWithZone(HKInteractiveChartAnnotationViewKeyValueLabel) init];
      v51 = [v50 keyLabel];
      [v51 setSelectedRangeData_];

      v52 = [v50 valueLabel];
      v53 = [v39 attributedString];
      [v52 setAttributedText_];

      v54 = swift_beginAccess();
      MEMORY[0x1C692F8F0](v54);
      if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C3D202C4();
      }

      sub_1C3D202F4();
      swift_endAccess();
    }

    v55 = *(v1 + v2);
    if (v55 >> 62)
    {
      if (sub_1C3D20964())
      {
        goto LABEL_16;
      }
    }

    else if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      v56 = v4;
LABEL_21:

      return;
    }

    v57 = sub_1C3C512B0(v4);
    swift_beginAccess();
    v56 = v57;
    MEMORY[0x1C692F8F0]();
    if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C3D202C4();
    }

    sub_1C3D202F4();
    swift_endAccess();

    goto LABEL_21;
  }
}

id sub_1C3C512B0(void *a1)
{
  v2 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
  [v2 setDataType_];
  sub_1C3C51404(a1);
  v4 = v3;
  [v2 setAttributedString_];

  sub_1C3C51A6C(a1);
  v5 = sub_1C3D200C4();

  [v2 setTitleOverride_];

  v6 = [objc_allocWithZone(HKInteractiveChartAnnotationViewKeyValueLabel) init];
  v7 = [v6 keyLabel];
  [v7 setSelectedRangeData_];

  v8 = [v6 valueLabel];
  v9 = [v2 attributedString];
  [v8 setAttributedText_];

  return v6;
}

void sub_1C3C51404(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_applicationItems);
  v4 = [v3 healthStore];
  v5 = type metadata accessor for AudiogramCurrentValueDataProvider();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_audiogram] = a1;
  *&v6[OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_healthStore] = v4;
  *&v6[OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_options] = 1;
  v44.receiver = v6;
  v44.super_class = v5;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v44, sel_init);
  v9 = [v3 displayTypeController];
  v10 = [objc_opt_self() audiogramSampleType];
  v11 = [v9 displayTypeForObjectType_];

  v42 = v11;
  if (v11)
  {
    v41 = [v3 unitController];
    v12 = objc_opt_self();
    v13 = [v12 hk_chartCurrentValueValueFont];
    v14 = [v12 hk_chartCurrentValueUnitFont];
    v39 = [v3 dateCache];
    v15 = objc_opt_self();
    v16 = [v15 labelColor];
    v40 = [v15 secondaryLabelColor];
    v43 = v13;
    if (!v13)
    {
      v43 = [v12 hk_chartCurrentValueValueFont];
    }

    v37 = v13;
    v17 = v14;
    if (!v14)
    {
      v17 = [v12 hk_chartCurrentValueUnitFont];
    }

    v18 = *&v8[OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_options];
    v36 = v14;
    v19 = sub_1C3C52F1C(v11, v41, v18 & 1);
    v38 = v16;
    v21 = sub_1C3C542D4(v19, v20, v43, v16);
    v22 = [objc_opt_self() decibelHearingLevelUnit];
    v23 = [v41 localizedDisplayNameForUnit:v22 value:0];

    v24 = sub_1C3D20104();
    v26 = v25;

    v27 = sub_1C3C542D4(v24, v26, v17, v40);
    if (qword_1EC080DC0 != -1)
    {
      swift_once();
    }

    v28 = qword_1EC08DBD8;
    sub_1C3D1DEC4();

    sub_1C396DFC8(0, &qword_1EC080D50, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C3D5DCD0;
    v30 = sub_1C3C27CB4(0, &qword_1EC080E40);
    *(v29 + 32) = v21;
    *(v29 + 88) = v30;
    *(v29 + 56) = v30;
    *(v29 + 64) = v27;
    v31 = v21;
    v32 = v27;
    v33 = sub_1C3D202A4();

    v34 = sub_1C3D200C4();
    v35 = HKUIJoinAttributedStringsWithFormat(v33, v34);

    if (v35)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id AudiogramCurrentValueViewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudiogramCurrentValueViewDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramCurrentValueViewDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C3C51A6C(void *a1)
{
  v2 = [a1 hearingLevelSummary];
  v3 = [v2 overallMetrics];

  v4 = [v3 averageSensitivity];
  if (!v4)
  {
    if (qword_1EC080DC0 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC08DBD8;
    sub_1C3D1DEC4();

    sub_1C3C4999C();
    v9 = sub_1C3D20734();

    return v9;
  }

  v5 = [a1 averageLeftEarSensitivity];
  v6 = [a1 averageRightEarSensitivity];
  result = HKAudiogramEarLocalizedDisplayNameForEar(1, 0);
  if (result)
  {
    v8 = result;
    v9 = sub_1C3D20104();
    v11 = v10;

    result = HKAudiogramEarLocalizedDisplayNameForEar(2, 0);
    if (result)
    {
      v12 = result;
      v13 = sub_1C3D20104();
      v15 = v14;

      sub_1C396DFC8(0, &qword_1EC081100, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1C3D5DCD0;
      *(v16 + 32) = v9;
      *(v16 + 40) = v11;
      *(v16 + 48) = v13;
      *(v16 + 56) = v15;
      v17 = qword_1EC080DC0;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = qword_1EC08DBD8;
      sub_1C3D1DEC4();

      sub_1C396DFC8(0, &qword_1EC080E80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1C3C521A0();
      v19 = sub_1C3D1FFC4();

      if (v6)
      {
        if (v5)
        {

          return v19;
        }

        else
        {

          return v13;
        }
      }

      else
      {
      }

      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3C51E50()
{
  v1 = sub_1C3D1E1E4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v18 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = *(v0 + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_audiogram);
  if (v11)
  {
    v12 = [v11 endDate];
    sub_1C3D1E1A4();

    (*(v2 + 32))(v10, v8, v1);
    v13 = [*(v0 + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_applicationItems) dateCache];
    sub_1C3CD78E4(v10, v13, 1);
    v15 = v14;
  }

  else
  {
    sub_1C3D1E1B4();
    v13 = [*(v0 + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_applicationItems) dateCache];
    sub_1C3CD78E4(v5, v13, 0);
    v15 = v16;
    v10 = v5;
  }

  (*(v2 + 8))(v10, v1);
  return v15;
}

unint64_t sub_1C3C521A0()
{
  result = qword_1EC085FF0;
  if (!qword_1EC085FF0)
  {
    sub_1C396DFC8(255, &qword_1EC080E80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC085FF0);
  }

  return result;
}

void sub_1C3C5221C()
{
  if (!qword_1EC086000)
  {
    sub_1C3C52274();
    v0 = sub_1C3D20A24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086000);
    }
  }
}

void sub_1C3C52274()
{
  if (!qword_1EC086008)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC086008);
    }
  }
}

id AudiogramCurrentValueDataProvider.__allocating_init(audiogram:healthStore:options:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = *a3;
  *&v7[OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_audiogram] = a1;
  *&v7[OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_healthStore] = a2;
  *&v7[OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_options] = v8;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1C3C5236C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_audiogram) startDate];
  sub_1C3D1E1A4();
}

id AudiogramCurrentValueDataProvider.init(audiogram:healthStore:options:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *&v3[OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_audiogram] = a1;
  *&v3[OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_healthStore] = a2;
  *&v3[OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_options] = v4;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for AudiogramCurrentValueDataProvider();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1C3C52454(void *a1)
{
  v3 = sub_1C3D1E1E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_audiogram) startDate];
  sub_1C3D1E1A4();

  v8 = sub_1C3D1E174();
  (*(v4 + 8))(v6, v3);
  v9 = HKLastUpdatedText(v8, a1);

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1C3D20104();

  return v10;
}

uint64_t sub_1C3C525B4(void *a1)
{
  v3 = sub_1C3D1E1E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_audiogram) startDate];
  sub_1C3D1E1A4();

  v8 = sub_1C3D1E174();
  (*(v4 + 8))(v6, v3);
  v9 = HKMostRecentSampleEndDateText(v8, a1, 0);

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1C3D20104();

  return v10;
}

id sub_1C3C52718(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  a4(v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1C3D200C4();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1C3C52878(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = a1 == 1;
  swift_getObjectType();
  if (a1)
  {
    v13 = 2 * v12;
  }

  else
  {
    v13 = 1;
  }

  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  v16 = [v14 secondaryLabelColor];
  v17 = *(v6 + OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_audiogram);
  if (v13)
  {
    if (v13 == 2)
    {
      v18 = [v17 averageRightEarSensitivity];
    }

    else
    {
      v18 = [v17 averageLeftEarSensitivity];
    }

    v21 = v18;
    if (v21)
    {
      goto LABEL_12;
    }

LABEL_9:

    return 0;
  }

  v19 = [v17 hearingLevelSummary];
  v20 = [v19 overallMetrics];

  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = [v20 averageSensitivity];

  if (!v21)
  {
    goto LABEL_9;
  }

LABEL_12:
  if (a4)
  {
    v23 = v21;
    v24 = a4;
  }

  else
  {
    v25 = objc_opt_self();
    v26 = v21;
    v24 = [v25 hk_chartCurrentValueValueFont];
  }

  v72 = v24;
  if (a5)
  {
    v27 = a4;
    v28 = a5;
  }

  else
  {
    v29 = objc_opt_self();
    v30 = a4;
    v28 = [v29 hk_chartCurrentValueUnitFont];
  }

  v31 = objc_opt_self();
  v32 = a5;
  v71 = v31;
  v33 = [v31 decibelHearingLevelUnit];
  [v21 doubleValueForUnit_];
  HKRoundWithPositiveZeroForDoubleValue(v34);
  v35 = sub_1C3D1E804();
  v36 = HKIntegerFormatter();
  v37 = HKFormattedStringFromValue(v35, a2, a3, 1, v36);

  v73 = v15;
  if (v37)
  {
    v38 = sub_1C3D20104();
    v40 = v39;

    v41 = v28;
  }

  else
  {
    v70 = a3;
    if (qword_1EC0850C0 != -1)
    {
      swift_once();
    }

    v42 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v42, qword_1EC08DCE0);
    v43 = v35;
    v44 = sub_1C3D1ED84();
    v45 = sub_1C3D204F4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v74 = v47;
      *v46 = 136315650;
      v48 = sub_1C3D20CD4();
      v50 = sub_1C3C22C28(v48, v49, &v74);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_1C3C22C28(0xD000000000000048, 0x80000001C3D83350, &v74);
      *(v46 + 22) = 2080;
      swift_getObjectType();
      v51 = sub_1C3D20CD4();
      v53 = sub_1C3C22C28(v51, v52, &v74);

      *(v46 + 24) = v53;
      v15 = v73;
      _os_log_impl(&dword_1C3942000, v44, v45, "[%s][%s] Unable to format string from value. Found type: %s", v46, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v47, -1, -1);
      MEMORY[0x1C69321D0](v46, -1, -1);
    }

    v41 = v28;
    v38 = 0;
    v40 = 0xE000000000000000;
    a3 = v70;
  }

  v54 = sub_1C3C542D4(v38, v40, v72, v15);

  v55 = [v71 decibelHearingLevelUnit];
  v56 = [a3 localizedDisplayNameForUnit:v55 value:0];

  v57 = sub_1C3D20104();
  v59 = v58;

  v60 = sub_1C3C542D4(v57, v59, v41, v16);

  v61 = v41;
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v62 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  sub_1C396E018(0, &qword_1EC080D50, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1C3D5DCD0;
  v64 = sub_1C3C27CB4(0, &qword_1EC080E40);
  *(v63 + 32) = v54;
  *(v63 + 88) = v64;
  *(v63 + 56) = v64;
  *(v63 + 64) = v60;
  v65 = v54;
  v66 = v60;
  v67 = sub_1C3D202A4();

  v68 = sub_1C3D200C4();

  v69 = HKUIJoinAttributedStringsWithFormat(v67, v68);

  return v69;
}

uint64_t sub_1C3C52F1C(void *a1, void *a2, char a3)
{
  swift_getObjectType();
  v7 = *(v3 + OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_audiogram);
  v8 = [v7 averageLeftEarSensitivity];
  v9 = [v7 averageRightEarSensitivity];
  v10 = v9;
  if (v8)
  {
    v105 = a3;
    v11 = objc_opt_self();
    if (v10)
    {
      v12 = v10;
      v13 = v8;
      v14 = [v11 decibelHearingLevelUnit];
      [v13 doubleValueForUnit_];
      HKRoundWithPositiveZeroForDoubleValue(v15);
      v16 = sub_1C3D1E804();
      v17 = HKIntegerFormatter();
      v18 = HKFormattedStringFromValue(v16, a1, a2, 1, v17);

      if (v18)
      {
        v19 = sub_1C3D20104();
        v102 = v20;
        v103 = v19;

        if (v105)
        {
        }

        else
        {
          if (qword_1EC080DC0 != -1)
          {
            swift_once();
          }

          v59 = qword_1EC08DBD8;
          v99 = 0xE000000000000000;
          sub_1C3D1DEC4();

          sub_1C3C54B70(0, &qword_1EC080D70, sub_1C3C54AB8);
          v60 = swift_allocObject();
          *(v60 + 16) = xmmword_1C3D5F370;
          *(v60 + 56) = MEMORY[0x1E69E6158];
          *(v60 + 64) = sub_1C3C54B1C();
          *(v60 + 32) = v103;
          *(v60 + 40) = v102;
          v61 = sub_1C3D20114();
          v102 = v62;
          v103 = v61;
        }
      }

      else
      {
        v100 = v12;
        if (qword_1EC0850C0 != -1)
        {
          swift_once();
        }

        v47 = sub_1C3D1EDA4();
        __swift_project_value_buffer(v47, qword_1EC08DCE0);
        v48 = v16;
        v49 = sub_1C3D1ED84();
        v50 = sub_1C3D204F4();

        if (os_log_type_enabled(v49, v50))
        {
          v101 = v13;
          v51 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v106 = v104;
          *v51 = 136315650;
          v52 = sub_1C3D20CD4();
          v54 = sub_1C3C22C28(v52, v53, &v106);

          *(v51 + 4) = v54;
          *(v51 + 12) = 2080;
          *(v51 + 14) = sub_1C3C22C28(0xD000000000000048, 0x80000001C3D83350, &v106);
          *(v51 + 22) = 2080;
          swift_getObjectType();
          v55 = sub_1C3D20CD4();
          v57 = sub_1C3C22C28(v55, v56, &v106);

          *(v51 + 24) = v57;
          _os_log_impl(&dword_1C3942000, v49, v50, "[%s][%s] Unable to format string from value. Found type: %s", v51, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1C69321D0](v104, -1, -1);
          v58 = v51;
          v13 = v101;
          MEMORY[0x1C69321D0](v58, -1, -1);
        }

        v102 = 0xE000000000000000;
        v103 = 0;
        v12 = v100;
      }

      v63 = [v11 decibelHearingLevelUnit];
      [v12 doubleValueForUnit_];
      HKRoundWithPositiveZeroForDoubleValue(v64);
      v65 = sub_1C3D1E804();
      v66 = HKIntegerFormatter();
      v67 = HKFormattedStringFromValue(v65, a1, a2, 1, v66);

      if (v67)
      {
        v68 = sub_1C3D20104();
        v70 = v69;

        if (v105)
        {

LABEL_37:
          sub_1C396E018(0, &qword_1EC081100, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v85 = swift_allocObject();
          *(v85 + 16) = xmmword_1C3D5DCD0;
          *(v85 + 32) = v103;
          *(v85 + 40) = v102;
          *(v85 + 48) = v68;
          *(v85 + 56) = v70;
          v106 = v85;
          if (qword_1EC080DC0 != -1)
          {
            swift_once();
          }

          v86 = qword_1EC08DBD8;
          sub_1C3D1DEC4();

          sub_1C396E018(0, &qword_1EC080E80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          sub_1C3C521A0();
          v28 = sub_1C3D1FFC4();

LABEL_50:

          return v28;
        }

        if (qword_1EC080DC0 != -1)
        {
          swift_once();
        }

        v87 = qword_1EC08DBD8;
        sub_1C3D1DEC4();

        sub_1C3C54B70(0, &qword_1EC080D70, sub_1C3C54AB8);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1C3D5F370;
        *(v88 + 56) = MEMORY[0x1E69E6158];
        *(v88 + 64) = sub_1C3C54B1C();
        *(v88 + 32) = v68;
        *(v88 + 40) = v70;
        v89 = sub_1C3D20114();
        v91 = v90;
      }

      else
      {
        if (qword_1EC0850C0 != -1)
        {
          swift_once();
        }

        v71 = sub_1C3D1EDA4();
        __swift_project_value_buffer(v71, qword_1EC08DCE0);
        v72 = v65;
        v73 = sub_1C3D1ED84();
        v74 = sub_1C3D204F4();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v106 = v76;
          *v75 = 136315650;
          v77 = sub_1C3D20CD4();
          v79 = v13;
          v80 = v12;
          v81 = sub_1C3C22C28(v77, v78, &v106);

          *(v75 + 4) = v81;
          *(v75 + 12) = 2080;
          *(v75 + 14) = sub_1C3C22C28(0xD000000000000048, 0x80000001C3D83350, &v106);
          *(v75 + 22) = 2080;
          swift_getObjectType();
          v82 = sub_1C3D20CD4();
          v84 = sub_1C3C22C28(v82, v83, &v106);

          *(v75 + 24) = v84;
          v12 = v80;
          v13 = v79;
          _os_log_impl(&dword_1C3942000, v73, v74, "[%s][%s] Unable to format string from value. Found type: %s", v75, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1C69321D0](v76, -1, -1);
          MEMORY[0x1C69321D0](v75, -1, -1);
        }

        if (v105)
        {
          v68 = 0;
          v70 = 0xE000000000000000;
          goto LABEL_37;
        }

        v89 = 0;
        v91 = 0xE000000000000000;
      }

      if (qword_1EC080DC0 != -1)
      {
        swift_once();
      }

      v94 = qword_1EC08DBD8;
      sub_1C3D1DEC4();

      sub_1C3C54B70(0, &qword_1EC080D70, sub_1C3C54AB8);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_1C3D5DCD0;
      v96 = MEMORY[0x1E69E6158];
      *(v95 + 56) = MEMORY[0x1E69E6158];
      v97 = sub_1C3C54B1C();
      *(v95 + 32) = v103;
      *(v95 + 40) = v102;
      *(v95 + 96) = v96;
      *(v95 + 104) = v97;
      *(v95 + 64) = v97;
      *(v95 + 72) = v89;
      *(v95 + 80) = v91;
      v28 = sub_1C3D20114();

      goto LABEL_50;
    }

    v22 = v8;
    v23 = [v11 decibelHearingLevelUnit];
    [v22 doubleValueForUnit_];
    HKRoundWithPositiveZeroForDoubleValue(v31);
    v25 = sub_1C3D1E804();
    v32 = HKIntegerFormatter();
    v33 = HKFormattedStringFromValue(v25, a1, a2, 1, v32);

    if (v33)
    {
      v28 = sub_1C3D20104();
      v30 = v34;

      if (v105)
      {
        goto LABEL_13;
      }

      if (qword_1EC080DC0 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }

    goto LABEL_14;
  }

  if (v9)
  {
    v21 = objc_opt_self();
    v22 = v10;
    v23 = [v21 decibelHearingLevelUnit];
    [v22 doubleValueForUnit_];
    HKRoundWithPositiveZeroForDoubleValue(v24);
    v25 = sub_1C3D1E804();
    v26 = HKIntegerFormatter();
    v27 = HKFormattedStringFromValue(v25, a1, a2, 1, v26);

    if (v27)
    {
      v28 = sub_1C3D20104();
      v30 = v29;

      if (a3)
      {
LABEL_13:

LABEL_45:
        return v28;
      }

      if (qword_1EC080DC0 == -1)
      {
LABEL_44:
        v92 = qword_1EC08DBD8;
        sub_1C3D1DEC4();

        sub_1C3C54B70(0, &qword_1EC080D70, sub_1C3C54AB8);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1C3D5F370;
        *(v93 + 56) = MEMORY[0x1E69E6158];
        *(v93 + 64) = sub_1C3C54B1C();
        *(v93 + 32) = v28;
        *(v93 + 40) = v30;
        v28 = sub_1C3D20114();

        goto LABEL_45;
      }

LABEL_52:
      swift_once();
      goto LABEL_44;
    }

LABEL_14:
    if (qword_1EC0850C0 != -1)
    {
      swift_once();
    }

    v35 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v35, qword_1EC08DCE0);
    v36 = v25;
    v37 = sub_1C3D1ED84();
    v38 = sub_1C3D204F4();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v106 = v40;
      *v39 = 136315650;
      v41 = sub_1C3D20CD4();
      v43 = sub_1C3C22C28(v41, v42, &v106);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_1C3C22C28(0xD000000000000048, 0x80000001C3D83350, &v106);
      *(v39 + 22) = 2080;
      swift_getObjectType();
      v44 = sub_1C3D20CD4();
      v46 = sub_1C3C22C28(v44, v45, &v106);

      *(v39 + 24) = v46;
      _os_log_impl(&dword_1C3942000, v37, v38, "[%s][%s] Unable to format string from value. Found type: %s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v40, -1, -1);
      MEMORY[0x1C69321D0](v39, -1, -1);
    }

    v28 = 0;
    goto LABEL_45;
  }

  return sub_1C3C53E70(a1, a2);
}

uint64_t sub_1C3C53E70(void *a1, void *a2)
{
  v5 = [objc_opt_self() decibelHearingLevelUnit];
  v6 = *(v2 + OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_audiogram);
  v7 = [v6 minimumSensitivity];
  if (v7 && (v8 = v7, [v7 doubleValueForUnit_], v8, v9 = sub_1C3D1E804(), v10 = HKIntegerFormatter(), v11 = HKFormattedStringFromValue(v9, a1, a2, 1, v10), v9, v10, v11))
  {
    v12 = sub_1C3D20104();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = [v6 maximumSensitivity];
  if (v15 && (v16 = v15, [v15 doubleValueForUnit_], v16, v17 = sub_1C3D1E804(), v18 = HKIntegerFormatter(), v19 = HKFormattedStringFromValue(v17, a1, a2, 1, v18), v17, v18, v19))
  {
    v20 = sub_1C3D20104();
    v22 = v21;

    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (!v14)
    {
LABEL_8:

      if (!v22)
      {
        return 0;
      }

      return v20;
    }
  }

  if (!v22)
  {
LABEL_16:

    return v12;
  }

  if (v12 == v20 && v14 == v22 || (sub_1C3D20A54() & 1) != 0)
  {

    goto LABEL_16;
  }

  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v24 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  sub_1C3C54B70(0, &qword_1EC080D70, sub_1C3C54AB8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C3D5DCD0;
  v26 = MEMORY[0x1E69E6158];
  *(v25 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1C3C54B1C();
  *(v25 + 32) = v12;
  *(v25 + 40) = v14;
  *(v25 + 96) = v26;
  *(v25 + 104) = v27;
  *(v25 + 64) = v27;
  *(v25 + 72) = v20;
  *(v25 + 80) = v22;
  v20 = sub_1C3D20114();

  return v20;
}

id AudiogramCurrentValueDataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudiogramCurrentValueDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramCurrentValueDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C3C542D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1C3C54B70(0, &qword_1EC080D80, sub_1C3C54BC4);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C3D5DCD0;
  v7 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v8 = sub_1C3C27CB4(0, &qword_1EC080DF0);
  *(inited + 40) = a3;
  v9 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  *(inited + 104) = sub_1C3C27CB4(0, &qword_1EC080DD0);
  *(inited + 80) = a4;
  v10 = v7;
  v11 = a3;
  v12 = v9;
  v13 = a4;
  sub_1C3C7556C(inited);
  swift_setDeallocating();
  sub_1C3C54BC4();
  swift_arrayDestroy();
  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = sub_1C3D200C4();
  type metadata accessor for Key(0);
  sub_1C3C54C30();
  v16 = sub_1C3D1FEE4();

  v17 = [v14 initWithString:v15 attributes:v16];

  return v17;
}

void sub_1C3C54478(void *a1, void *a2, void *a3, void *a4)
{
  v9 = objc_opt_self();
  v10 = [v9 labelColor];
  v11 = [v9 secondaryLabelColor];
  if (a3)
  {
    v12 = a3;
    if (a4)
    {
LABEL_3:
      v13 = a3;
      v14 = a4;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = [objc_opt_self() hk_chartCurrentValueValueFont];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = objc_opt_self();
  v16 = a3;
  v14 = [v15 hk_chartCurrentValueUnitFont];
LABEL_6:
  v17 = *(v4 + OBJC_IVAR____TtC8HealthUI33AudiogramCurrentValueDataProvider_options);
  v18 = a4;
  v19 = sub_1C3C52F1C(a1, a2, v17 & 1);
  v36 = v12;
  v37 = v10;
  v21 = sub_1C3C542D4(v19, v20, v12, v10);
  v22 = [objc_opt_self() decibelHearingLevelUnit];
  v23 = [a2 localizedDisplayNameForUnit:v22 value:0];

  v24 = sub_1C3D20104();
  v26 = v25;

  v27 = sub_1C3C542D4(v24, v26, v14, v11);
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v28 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  sub_1C396E018(0, &qword_1EC080D50, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C3D5DCD0;
  v30 = sub_1C3C27CB4(0, &qword_1EC080E40);
  *(v29 + 32) = v21;
  *(v29 + 88) = v30;
  *(v29 + 56) = v30;
  *(v29 + 64) = v27;
  v31 = v21;
  v32 = v27;
  v33 = sub_1C3D202A4();

  v34 = sub_1C3D200C4();
  v35 = HKUIJoinAttributedStringsWithFormat(v33, v34);

  if (v35)
  {
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1C3C547E8()
{
  result = qword_1EC086038;
  if (!qword_1EC086038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086038);
  }

  return result;
}

unint64_t sub_1C3C54840()
{
  result = qword_1EC086040;
  if (!qword_1EC086040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086040);
  }

  return result;
}

unint64_t sub_1C3C54898()
{
  result = qword_1EC080F88;
  if (!qword_1EC080F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080F88);
  }

  return result;
}

unint64_t sub_1C3C548F0()
{
  result = qword_1EC080F80;
  if (!qword_1EC080F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080F80);
  }

  return result;
}

unint64_t sub_1C3C54AB8()
{
  result = qword_1EC080D48;
  if (!qword_1EC080D48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC080D48);
  }

  return result;
}

unint64_t sub_1C3C54B1C()
{
  result = qword_1EC080EA0;
  if (!qword_1EC080EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080EA0);
  }

  return result;
}

void sub_1C3C54B70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D20A24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3C54BC4()
{
  if (!qword_1EC080E20)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC080E20);
    }
  }
}

unint64_t sub_1C3C54C30()
{
  result = qword_1EC080E30;
  if (!qword_1EC080E30)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080E30);
  }

  return result;
}

uint64_t sub_1C3C54C88@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  if (v3)
  {
    v9 = *v1;
    v31 = v1[1];
    sub_1C3C54F58(*v1, v31, v3);

    sub_1C3CD0834(v55);
    v29 = v55[1];
    v30 = v55[0];
    v34 = v8;
    v35 = v55[2];
    v27 = v55[4];
    v28 = v55[3];
    v25 = v7;
    v26 = v55[5];
    v32 = v55[7];
    v33 = v55[6];
  }

  else
  {
    v9 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    v34 = 0;
    v35 = 0;
    v26 = 0;
    v27 = 0;
    v32 = 0;
    v33 = 0;
    v25 = 0;
  }

  if (v5)
  {

    sub_1C3C54F58(v4, v6, v5);
    sub_1C3CD0834(v56);
    v10 = v56[0];
    v11 = v56[1];
    v12 = v56[2];
    v13 = v56[3];
    v14 = v56[4];
    v15 = v56[5];
    v16 = v56[6];
    v17 = v56[7];
    v18 = v4;
    v19 = v6;
    v20 = v8;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v20 = 0;
    v7 = 0;
  }

  *&v39 = v9;
  *(&v39 + 1) = v31;
  *&v40 = v3;
  *(&v40 + 1) = v30;
  *&v41 = v29;
  *(&v41 + 1) = v35;
  *&v42 = v28;
  *(&v42 + 1) = v27;
  *&v43 = v26;
  *(&v43 + 1) = v33;
  *&v44 = v32;
  *(&v44 + 1) = v34;
  v45 = v25;
  *v38 = v25;
  v36 = v43;
  v37 = v44;
  *&v46 = v18;
  *(&v46 + 1) = v19;
  *&v47 = v5;
  *(&v47 + 1) = v10;
  *&v48 = v11;
  *(&v48 + 1) = v12;
  *&v49 = v13;
  *(&v49 + 1) = v14;
  *&v50 = v15;
  *(&v50 + 1) = v16;
  *&v51 = v17;
  *(&v51 + 1) = v20;
  v52 = v7;
  *&v38[40] = v48;
  *&v38[24] = v47;
  *&v38[8] = v46;
  *&v38[104] = v7;
  *&v38[88] = v51;
  *&v38[72] = v50;
  *&v38[56] = v49;
  v21 = v39;
  v22 = v40;
  v23 = v42;
  a1[2] = v41;
  a1[3] = v23;
  *a1 = v21;
  a1[1] = v22;
  a1[6] = *v38;
  a1[7] = *&v38[16];
  a1[4] = v36;
  a1[5] = v37;
  a1[11] = *&v38[80];
  a1[12] = *&v38[96];
  a1[9] = *&v38[48];
  a1[10] = *&v38[64];
  a1[8] = *&v38[32];
  v53[0] = v18;
  v53[1] = v19;
  v53[2] = v5;
  v53[3] = v10;
  v53[4] = v11;
  v53[5] = v12;
  v53[6] = v13;
  v53[7] = v14;
  v53[8] = v15;
  v53[9] = v16;
  v53[10] = v17;
  v53[11] = v20;
  v53[12] = v7;
  sub_1C3C5578C(&v39, v54);
  sub_1C3C5578C(&v46, v54);
  sub_1C3C55840(v53);
  v54[0] = v9;
  v54[1] = v31;
  v54[2] = v3;
  v54[3] = v30;
  v54[4] = v29;
  v54[5] = v35;
  v54[6] = v28;
  v54[7] = v27;
  v54[8] = v26;
  v54[9] = v33;
  v54[10] = v32;
  v54[11] = v34;
  v54[12] = v25;
  return sub_1C3C55840(v54);
}

void PairedDeviceFeatureAttributes.localFeatureAttributes.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  sub_1C3C54F58(v2, v3, v4);
}

void sub_1C3C54F58(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {

    v3 = a3;
  }
}

__n128 PairedDeviceFeatureAttributes.localFeatureAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_1C3C54FE4(*v1, *(v1 + 8), *(v1 + 16));
  result = v4;
  *v1 = v4;
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1C3C54FE4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
  }

  return result;
}

void PairedDeviceFeatureAttributes.remoteFeatureAttributes.getter(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_1C3C54F58(v2, v3, v4);
}

__n128 PairedDeviceFeatureAttributes.remoteFeatureAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_1C3C54FE4(*(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = v4;
  *(v1 + 24) = v4;
  *(v1 + 40) = v2;
  return result;
}

uint64_t PairedDeviceFeatureAttributes.init(localFeatureAttributes:remoteFeatureAttributes:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v4 == 0;
  }

  if (v9)
  {
    v10 = *a1;
  }

  else
  {

    v5 = 0;
    v10 = 0;
  }

  sub_1C3C54F58(v10, v5, v4);
  sub_1C3C54FE4(0, 0, 0);
  sub_1C3C54FE4(0, 0, 0);
  result = sub_1C3C54FE4(v10, v5, v4);
  *a3 = v10;
  a3[1] = v5;
  a3[2] = v4;
  a3[3] = v6;
  a3[4] = v7;
  a3[5] = v8;
  return result;
}

BOOL _s8HealthUI29PairedDeviceFeatureAttributesV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v11 = a2[5];
  v31 = a2[4];
  if (!v5)
  {
    v30 = a2[3];
    sub_1C3C54F58(v3, v2, 0);
    if (!v10)
    {
      v29 = v6;
      sub_1C3C54F58(v9, v8, 0);
      sub_1C3C54FE4(v3, v2, 0);
      v17 = v7;
      if (v7)
      {
        goto LABEL_18;
      }

LABEL_26:
      v18 = v4;
      v23 = v4;
      v24 = v29;
      sub_1C3C54F58(v23, v29, 0);
      v19 = v31;
      if (!v11)
      {
        sub_1C3C54F58(v30, v31, 0);
        sub_1C3C54FE4(v18, v29, 0);
        return 1;
      }

      v25 = v30;
      sub_1C3C54F58(v30, v31, v11);
LABEL_29:
      sub_1C3C54FE4(v18, v24, v17);
      v13 = v25;
      v14 = v19;
      v15 = v11;
      goto LABEL_33;
    }

    sub_1C3C54F58(v9, v8, v10);
LABEL_12:
    sub_1C3C54FE4(v3, v2, v5);
    v13 = v9;
    v14 = v8;
    v15 = v10;
LABEL_33:
    sub_1C3C54FE4(v13, v14, v15);
    return 0;
  }

  if (!v10)
  {
    sub_1C3C54F58(v3, v2, v5);
    sub_1C3C54F58(v9, v8, 0);
    sub_1C3C54F58(v3, v2, v5);

    goto LABEL_12;
  }

  if (v2)
  {
    if (!v8 || ((v30 = a2[3], v3 != v9) || v2 != v8) && (sub_1C3D20A54() & 1) == 0)
    {
      v12 = v2;
LABEL_15:
      sub_1C3C54F58(v3, v12, v5);
      sub_1C3C54F58(v9, v8, v10);
      sub_1C3C54F58(v3, v12, v5);
      sub_1C3C54FE4(v9, v8, v10);

      v13 = v3;
      v14 = v2;
      v15 = v5;
      goto LABEL_33;
    }
  }

  else
  {
    v30 = a2[3];
    if (v8)
    {
      v12 = 0;
      goto LABEL_15;
    }
  }

  v29 = v6;
  sub_1C3C5589C();
  sub_1C3C54F58(v3, v2, v5);
  sub_1C3C54F58(v9, v8, v10);
  sub_1C3C54F58(v3, v2, v5);
  v16 = sub_1C3D206B4();
  sub_1C3C54FE4(v9, v8, v10);

  sub_1C3C54FE4(v3, v2, v5);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = v7;
  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_18:
  v18 = v4;
  v19 = v31;
  if (!v11)
  {
    v26 = v4;
    v24 = v29;
    sub_1C3C54F58(v26, v29, v17);
    v25 = v30;
    sub_1C3C54F58(v30, v31, 0);
    sub_1C3C54F58(v18, v29, v17);

    goto LABEL_29;
  }

  if (v29)
  {
    if (!v31 || (v4 != v30 || v29 != v31) && (sub_1C3D20A54() & 1) == 0)
    {
      v20 = v4;
      v21 = v29;
      v22 = v29;
LABEL_32:
      sub_1C3C54F58(v20, v22, v17);
      sub_1C3C54F58(v30, v31, v11);
      sub_1C3C54F58(v20, v22, v17);
      sub_1C3C54FE4(v30, v31, v11);

      v13 = v20;
      v14 = v21;
      v15 = v17;
      goto LABEL_33;
    }
  }

  else if (v31)
  {
    v20 = v4;
    v22 = 0;
    v21 = 0;
    goto LABEL_32;
  }

  sub_1C3C5589C();
  sub_1C3C54F58(v4, v29, v17);
  sub_1C3C54F58(v30, v31, v11);
  sub_1C3C54F58(v4, v29, v17);
  v28 = sub_1C3D206B4();
  sub_1C3C54FE4(v30, v31, v11);

  sub_1C3C54FE4(v4, v29, v17);
  return (v28 & 1) != 0;
}

uint64_t get_enum_tag_for_layout_string_8HealthUI23DeviceFeatureAttributesVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C3C555FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1C3C55658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1C3C556C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C3C55710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C3C5578C(uint64_t a1, uint64_t a2)
{
  sub_1C3C557F0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C3C557F0()
{
  if (!qword_1EC0860B0)
  {
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0860B0);
    }
  }
}

uint64_t sub_1C3C55840(uint64_t a1)
{
  sub_1C3C557F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C3C5589C()
{
  result = qword_1EC081120;
  if (!qword_1EC081120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC081120);
  }

  return result;
}

unint64_t sub_1C3C558E8()
{
  result = qword_1EC0860B8;
  if (!qword_1EC0860B8)
  {
    sub_1C3C55940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0860B8);
  }

  return result;
}

void sub_1C3C55940()
{
  if (!qword_1EC0860C0)
  {
    sub_1C3C55998();
    v0 = sub_1C3D1FD34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0860C0);
    }
  }
}

void sub_1C3C55998()
{
  if (!qword_1EC0860C8[0])
  {
    sub_1C3C557F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EC0860C8);
    }
  }
}

unint64_t get_enum_tag_for_layout_string_8HealthUI18LoadableImagePhaseO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1C3C55A18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C3C55A74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1C3C55AD4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1C3C55B10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1C3C55B80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C3C55BC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1C3C55C78()
{
  v1 = sub_1C3D1F3B4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  sub_1C3D20504();
  v7 = sub_1C3D1F6F4();
  sub_1C3D1ED54();

  sub_1C3D1F3A4();
  swift_getAtKeyPath();
  sub_1C3C2ECC8(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_1C3C55DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1C3D203A4();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D1F134();
  v9 = sub_1C3D1F1A4();
  v33 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v28 - v12;
  v13 = *(v2 + 16);
  sub_1C3C5649C();
  sub_1C3D1FC04();
  __swift_project_boxed_opaque_existential_0(&v39, *(&v40 + 1));
  v14 = off_1F42FE4F8;
  type metadata accessor for ClinicalAccountLogoLoader();
  v15 = v14();
  __swift_destroy_boxed_opaque_existential_0(&v39);
  v16 = v28;
  v13(v15);
  sub_1C3C564F4(v15);
  (*(*(a1 - 8) + 16))(&v39, v2, a1);
  v17 = swift_allocObject();
  v18 = *(a1 + 24);
  *(v17 + 16) = v7;
  *(v17 + 24) = v18;
  v19 = v42;
  *(v17 + 64) = v41;
  *(v17 + 80) = v19;
  *(v17 + 96) = v43;
  v20 = v40;
  *(v17 + 32) = v39;
  *(v17 + 48) = v20;
  v21 = v31;
  sub_1C3D20384();
  v22 = v29;
  sub_1C3D1FA84();

  (*(v34 + 8))(v21, v35);
  (*(v32 + 8))(v16, v7);
  v23 = sub_1C3C565BC();
  v37 = v18;
  v38 = v23;
  WitnessTable = swift_getWitnessTable();
  v25 = v30;
  sub_1C3C684D0(v22, v9, WitnessTable);
  v26 = *(v33 + 8);
  v26(v22, v9);
  sub_1C3C684D0(v25, v9, WitnessTable);
  return (v26)(v25, v9);
}

uint64_t sub_1C3C561A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_1C3D20374();
  v3[10] = sub_1C3D20364();
  v5 = sub_1C3D20314();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C3C56240, v5, v4);
}

uint64_t sub_1C3C56240()
{
  sub_1C3C5649C();
  sub_1C3D1FC04();
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v1 = sub_1C3C55C78();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1C3C56310;

  return sub_1C3D00BEC(v1);
}

uint64_t sub_1C3C56310()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1C3C56430, v3, v2);
}

uint64_t sub_1C3C56430()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_1C3C5649C()
{
  if (!qword_1EC086150)
  {
    sub_1C3C4C608();
    v0 = sub_1C3D1FC24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086150);
    }
  }
}

void sub_1C3C564F4(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

uint64_t sub_1C3C56514()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C3C56614;

  return sub_1C3C561A4(v0 + 32, v2, v3);
}

unint64_t sub_1C3C565BC()
{
  result = qword_1EC086158;
  if (!qword_1EC086158)
  {
    sub_1C3D1F134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086158);
  }

  return result;
}

uint64_t sub_1C3C56618@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id static AudiogramPointMarker.Options.forAudiogramChartData(_:bordered:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = a2 & 1;
  result = [a1 isMasked];
  v7 = a2 & 1 | 4;
  if (!result)
  {
    v7 = v5;
  }

  *a3 = v7;
  return result;
}

double AudiogramPointMarker.init(ear:pointColor:backgroundColor:options:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  if (!a3)
  {
    a3 = [objc_opt_self() systemBackgroundColor];
  }

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v8;
  result = 2.0;
  *(a5 + 32) = xmmword_1C3D602C0;
  return result;
}

UIImage __swiftcall AudiogramPointMarker.makePointMarkerImage(bounds:)(__C::CGRect bounds)
{
  v2 = v1[1];
  v24 = *v1;
  v25 = v2;
  v26 = v1[2];
  if (BYTE8(v2))
  {
    v5 = (MEMORY[0x1EEE9AC00])();
    v19[2] = &v24;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v5;
    v13 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v14 = swift_allocObject();
    v15 = v25;
    *(v14 + 16) = v24;
    *(v14 + 32) = v15;
    *(v14 + 48) = v26;
    *(v14 + 64) = v12;
    *(v14 + 72) = v11;
    *(v14 + 80) = v9;
    *(v14 + 88) = v7;
    *(v14 + 96) = sub_1C3C58A00;
    *(v14 + 104) = v19;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C3C58A40;
    *(v16 + 24) = v14;
    *&v23 = sub_1C3C58A44;
    *(&v23 + 1) = v16;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v22 = sub_1C3C57A08;
    *(&v22 + 1) = &block_descriptor_5;
    v17 = _Block_copy(&aBlock);
    sub_1C3C58A84(&v24, v20);

    v18 = [v13 imageWithActions_];

    _Block_release(v17);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }

    else
    {
      return v18;
    }
  }

  else
  {
    v3 = v1[1];
    aBlock = *v1;
    v22 = v3;
    v23 = v1[2];
    return sub_1C3C56DBC(bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height);
  }

  return result;
}

void sub_1C3C56AA8(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 1);
    v8 = *(v5 + 2);
    v9 = *(v5 + 3);
    v11 = v5[4];
    v10 = v5[5];
    if (*&v6 == 2)
    {
      if ((v9 & 4) != 0)
      {
        sub_1C3C576C0(a1, v7, a2, a3, a4, a5);
      }

      else
      {
        v17 = [v8 CGColor];
        CGContextSetFillColorWithColor(a1, v17);

        v38.origin.x = a2;
        v38.origin.y = a3;
        v38.size.width = a4;
        v38.size.height = a5;
        CGContextFillEllipseInRect(a1, v38);
        v39.origin.x = a2;
        v39.origin.y = a3;
        v39.size.width = a4;
        v39.size.height = a5;
        v40 = CGRectInset(v39, v11, v11);
        x = v40.origin.x;
        y = v40.origin.y;
        width = v40.size.width;
        height = v40.size.height;
        v22 = [v7 CGColor];
        CGContextSetFillColorWithColor(a1, v22);

        v23 = x;
        v24 = y;
        v25 = width;
        v26 = height;

        CGContextFillEllipseInRect(a1, *&v23);
      }
    }

    else if (*&v6 == 1)
    {
      if ((v9 & 4) != 0)
      {
        v32 = objc_opt_self();
        v33 = [v32 bezierPathWithRoundedRect:a2 cornerRadius:{a3, a4, a5, 1.5}];
        v34 = [v8 CGColor];
        CGContextSetFillColorWithColor(a1, v34);

        [v33 fill];
        v41.origin.x = a2;
        v41.origin.y = a3;
        v41.size.width = a4;
        v41.size.height = a5;
        v42 = CGRectInset(v41, v11, v11);
        v36 = [v32 bezierPathWithRoundedRect:v42.origin.x cornerRadius:{v42.origin.y, v42.size.width, v42.size.height, 1.5}];
        v35 = [v7 CGColor];
        CGContextSetFillColorWithColor(a1, v35);

        [v36 fill];
      }

      else
      {
        sub_1C3C5750C(a1, v7, a2, a3, a4, a5);
      }
    }

    else
    {
      type metadata accessor for HKAudiogramEar(0);
      sub_1C3D20A74();
      __break(1u);
    }
  }
}

uint64_t sub_1C3C56DBC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v10 = *v4;
  v9 = v4[1];
  v12 = v4[2];
  v11 = v4[3];
  v14 = v4[4];
  v13 = v4[5];
  Height = CGRectGetHeight(*&a1);
  v16 = objc_opt_self();
  v17 = [v16 configurationWithPointSize_];
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  switch(v10)
  {
    case 0:
LABEL_13:
      if ((v11 & 2) == 0)
      {
        v24 = sub_1C3C573C4();
        if (v24)
        {
          v25 = v24;

          return v25;
        }

        if (qword_1EC0850C0 != -1)
        {
          swift_once();
        }

        v26 = sub_1C3D1EDA4();
        __swift_project_value_buffer(v26, qword_1EC08DCE0);
        v18 = v18;
        v27 = sub_1C3D1ED84();
        v28 = sub_1C3D204F4();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v37 = v30;
          *v29 = 136315394;
          *(v29 + 4) = sub_1C3C22C28(0xD000000000000017, 0x80000001C3D83510, &v37);
          *(v29 + 12) = 2080;
          v18 = v18;
          v31 = [v18 description];
          v32 = sub_1C3D20104();
          v34 = v33;

          v35 = sub_1C3C22C28(v32, v34, &v37);

          *(v29 + 14) = v35;
          _os_log_impl(&dword_1C3942000, v27, v28, "%s: failed to flip symbol vertically for: %s", v29, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C69321D0](v30, -1, -1);
          MEMORY[0x1C69321D0](v29, -1, -1);
        }
      }

      return v18;
    case 2:
      if ((v11 & 4) != 0)
      {
        v37 = 2;
        v38 = v9;
        v39 = v12;
        v40 = v11;
        v41 = v14;
        v42 = v13;
        v22 = 0x656C676E61697274;
        v23 = 0xED00006C6C69662ELL;
LABEL_11:
        v21 = sub_1C3C5718C(v22, v23, v17);

        goto LABEL_12;
      }

      v37 = 2;
      v38 = v9;
      v39 = v12;
      v40 = v11;
      v41 = v14;
      v42 = v13;
      v19 = 0x656C63726963;
LABEL_10:
      v22 = v19 & 0xFFFFFFFFFFFFLL | 0x662E000000000000;
      v23 = 0xEB000000006C6C69;
      goto LABEL_11;
    case 1:
      if ((v11 & 4) == 0)
      {
        v43.origin.x = a1;
        v43.origin.y = a2;
        v43.size.width = a3;
        v43.size.height = a4;
        v20 = [v16 configurationWithPointSize:8 weight:CGRectGetHeight(v43)];

        v37 = 1;
        v38 = v9;
        v39 = v12;
        v40 = v11;
        v41 = v14;
        v42 = v13;
        v17 = v20;
        v21 = sub_1C3C5718C(0x6B72616D78, 0xE500000000000000, v17);

LABEL_12:
        v18 = v21;
        goto LABEL_13;
      }

      v37 = 1;
      v38 = v9;
      v39 = v12;
      v40 = v11;
      v41 = v14;
      v42 = v13;
      v19 = 0x657261757173;
      goto LABEL_10;
  }

  type metadata accessor for HKAudiogramEar(0);
  result = sub_1C3D20A74();
  __break(1u);
  return result;
}

id sub_1C3C5718C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = sub_1C3D200C4();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:a3];

  if (v9)
  {
    v10 = [v9 imageWithTintColor:v7 renderingMode:1];

    return v10;
  }

  else
  {
    if (qword_1EC0850C0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v12, qword_1EC08DCE0);

    v13 = sub_1C3D1ED84();
    v14 = sub_1C3D204F4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1C3C22C28(0xD000000000000016, 0x80000001C3D83530, &v18);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1C3C22C28(a1, a2, &v18);
      _os_log_impl(&dword_1C3942000, v13, v14, "[%s] unable to render sf symbol for %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v16, -1, -1);
      MEMORY[0x1C69321D0](v15, -1, -1);
    }

    v17 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

    return [v17 init];
  }
}

CGContext *sub_1C3C573C4()
{
  [v0 size];
  v2 = v1;
  v4 = v3;
  [v0 scale];
  v6 = v5;
  v19.width = v2;
  v19.height = v4;
  UIGraphicsBeginImageContextWithOptions(v19, 0, v6);
  result = UIGraphicsGetCurrentContext();
  if (result)
  {
    v8 = result;
    [v0 size];
    v10 = v9 * 0.5;
    [v0 size];
    CGContextTranslateCTM(v8, v10, v11 * 0.5);
    CGContextScaleCTM(v8, 1.0, -1.0);
    [v0 size];
    v13 = v12 * -0.5;
    [v0 size];
    CGContextTranslateCTM(v8, v13, v14 * -0.5);
    [v0 size];
    v16 = v15;
    [v0 size];
    [v0 drawInRect_];
    v18 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C3C5750C(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  Width = CGRectGetWidth(*&a3);
  v16 = Width * Width;
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  Height = CGRectGetHeight(v24);
  v18 = sqrt(v16 + Height * Height) + v14 * 3.0 * -0.5;
  v19 = sub_1C3C57A54(a3, a4, a5, a6, v14 * 3.0, v18);
  v20 = [v13 CGColor];
  CGContextSetFillColorWithColor(a1, v20);

  [v19 fill];
  v22 = sub_1C3C57A54(a3, a4, a5, a6, v14, v18 - (v14 + v14));
  v21 = [a2 CGColor];
  CGContextSetFillColorWithColor(a1, v21);

  [v22 fill];
}

void sub_1C3C576C0(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = *(v6 + 16);
  CGContextSetLineWidth(a1, *(v6 + 32));
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  CGRectGetMidX(v18);
  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  CGRectGetMinY(v19);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  CGRectGetMinX(v20);
  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  CGRectGetMaxY(v21);
  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  CGRectGetMaxX(v22);
  v23.origin.x = a3;
  v23.origin.y = a4;
  v23.size.width = a5;
  v23.size.height = a6;
  CGRectGetMaxY(v23);
  Mutable = CGPathCreateMutable();
  sub_1C3D20574();
  sub_1C3D20584();
  sub_1C3D20584();
  sub_1C3D20584();
  CGPathCloseSubpath(Mutable);
  CGContextAddPath(a1, Mutable);

  v15 = [v13 CGColor];
  CGContextSetStrokeColorWithColor(a1, v15);

  v16 = [a2 CGColor];
  CGContextSetFillColorWithColor(a1, v16);

  CGContextDrawPath(a1, kCGPathFillStroke);
}

void sub_1C3C578D8(void *a1, uint64_t a2, void (*a3)(CGContext *, double, double, double, double), CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = [a1 CGContext];
  CGContextSaveGState(v13);
  if ((*(a2 + 24) & 2) == 0)
  {
    v17.origin.x = a4;
    v17.origin.y = a5;
    v17.size.width = a6;
    v17.size.height = a7;
    Height = CGRectGetHeight(v17);
    CGAffineTransformMakeTranslation(&transform, 0.0, Height);
    CGAffineTransformScale(&v15, &transform, 1.0, -1.0);
    transform = v15;
    CGContextConcatCTM(v13, &transform);
  }

  a3(v13, a4, a5, a6, a7);
  CGContextRestoreGState(v13);
}

void sub_1C3C57A08(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1C3C57A54(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v12 = CGRectGetMidX(*&a1) - a5 * 0.5;
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  v13 = CGRectGetMidY(v35) - a6 * 0.5;
  v14 = objc_opt_self();
  v15 = [v14 bezierPathWithRoundedRect:v12 cornerRadius:{v13, a5, a6, a5 * 0.5}];
  v16 = [v14 bezierPathWithRoundedRect:v12 cornerRadius:{v13, a5, a6, a5 * 0.5}];
  v17 = [v15 CGPath];
  BoundingBox = CGPathGetBoundingBox(v17);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;

  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MidX = CGRectGetMidX(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MidY = CGRectGetMidY(v38);
  v34.a = 1.0;
  v34.b = 0.0;
  v34.c = 0.0;
  v34.d = 1.0;
  v34.tx = 0.0;
  v34.ty = 0.0;
  CGAffineTransformTranslate(&v33, &v34, MidX, MidY);
  v34 = v33;
  CGAffineTransformRotate(&v33, &v34, 0.785398163);
  v34 = v33;
  CGAffineTransformTranslate(&v33, &v34, -MidX, -MidY);
  v34 = v33;
  [v15 applyTransform_];
  v24 = [v16 CGPath];
  v39 = CGPathGetBoundingBox(v24);
  v25 = v39.origin.x;
  v26 = v39.origin.y;
  v27 = v39.size.width;
  v28 = v39.size.height;

  v40.origin.x = v25;
  v40.origin.y = v26;
  v40.size.width = v27;
  v40.size.height = v28;
  v29 = CGRectGetMidX(v40);
  v41.origin.x = v25;
  v41.origin.y = v26;
  v41.size.width = v27;
  v41.size.height = v28;
  v30 = CGRectGetMidY(v41);
  v34.a = 1.0;
  v34.b = 0.0;
  v34.c = 0.0;
  v34.d = 1.0;
  v34.tx = 0.0;
  v34.ty = 0.0;
  CGAffineTransformTranslate(&v33, &v34, v29, v30);
  v34 = v33;
  CGAffineTransformRotate(&v33, &v34, -0.785398163);
  v34 = v33;
  CGAffineTransformTranslate(&v33, &v34, -v29, -v30);
  v34 = v33;
  [v16 applyTransform_];
  v31 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v31 appendPath_];
  [v31 appendPath_];

  return v31;
}

UIImage __swiftcall AudiogramPointMarker.makeAnnotationMarkerImage(bounds:)(__C::CGRect bounds)
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v6 = v1[1];
  v17 = *v1;
  v18 = v6;
  v19 = v1[2];
  v14[2] = &v17;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v8 = swift_allocObject();
  v9 = v18;
  *(v8 + 16) = v17;
  *(v8 + 32) = v9;
  *(v8 + 48) = v19;
  *(v8 + 64) = x;
  *(v8 + 72) = y;
  *(v8 + 80) = width;
  *(v8 + 88) = height;
  *(v8 + 96) = sub_1C3C58ABC;
  *(v8 + 104) = v14;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C3C59488;
  *(v10 + 24) = v8;
  aBlock[4] = sub_1C3C59490;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C3C57A08;
  aBlock[3] = &block_descriptor_14;
  v11 = _Block_copy(aBlock);
  sub_1C3C58A84(&v17, v15);

  v12 = [v7 imageWithActions_];

  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

id AudiogramPointMarker.annotationAttributedString(fontSize:)(double a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = [objc_opt_self() hk:a1 roundedSystemFontWithSize:*MEMORY[0x1E69DB958] weight:?];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v5 setAlignment_];
  v6 = HKAudiogramEarLocalizedKeyForEar(v2, 1);
  sub_1C3D20104();

  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  v8 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v9 = sub_1C3D200C4();

  v10 = [v8 initWithString_];

  sub_1C3C58AD8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C3D602D0;
  v12 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v13 = sub_1C3C27CB4(0, &qword_1EC080DD0);
  *(inited + 40) = v3;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  v15 = sub_1C3C27CB4(0, &qword_1EC080DF0);
  *(inited + 80) = v4;
  v16 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  *(inited + 144) = sub_1C3C27CB4(0, &qword_1EC086160);
  *(inited + 120) = v5;
  v17 = v12;
  v18 = v3;
  v19 = v14;
  v20 = v4;
  v21 = v16;
  v22 = v5;
  sub_1C3C7556C(inited);
  swift_setDeallocating();
  sub_1C3C54BC4();
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_1C3C54C30();
  v23 = sub_1C3D1FEE4();

  v24 = v10;
  [v24 addAttributes:v23 range:{0, objc_msgSend(v24, sel_length)}];

  return v24;
}

void sub_1C3C58324(void *a1, unint64_t a2)
{
  c = [a1 CGContext];
  CGContextSaveGState(c);
  if (a2 >> 62)
  {
    v3 = sub_1C3D20964();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  v5 = 0.0;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C692FEB0](v4, a2);
    }

    else
    {
      v6 = *(a2 + 8 * v4 + 32);
    }

    v7 = v6;
    ++v4;
    [v6 size];
    v9 = v8;
    [v7 size];
    [v7 drawInRect_];
    [v7 size];
    v12 = v11;

    v5 = v5 + v12;
  }

  while (v3 != v4);
LABEL_10:
  CGContextRestoreGState(c);
}

char *_s8HealthUI20AudiogramPointMarkerV7OptionsV03forC0_4sideSayAEGSo17HKAudiogramSampleC_So0I19SensitivityTestSideVtFZ_0(void *a1, id a2)
{
  v3 = [a1 sensitivityPoints];
  sub_1C3C27CB4(0, &qword_1EC086170);
  v4 = sub_1C3D202B4();

  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C3D20964())
  {
    v6 = 0;
    v40 = i;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C692FEB0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v7 = *(v4 + 32 + 8 * v6);
      }

      v8 = v7;
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        break;
      }

      v10 = [v7 tests];
      sub_1C3C27CB4(0, &unk_1EC0871B0);
      v11 = sub_1C3D202B4();

      if (v11 >> 62)
      {
        v12 = sub_1C3D20964();
        if (v12)
        {
LABEL_11:
          v13 = 0;
          while (1)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x1C692FEB0](v13, v11);
            }

            else
            {
              if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v14 = *(v11 + 8 * v13 + 32);
            }

            v15 = v14;
            v16 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if ([v14 side] == a2 && (objc_msgSend(v15, sel_masked) & 1) != 0)
            {

              v37 = 0;
              goto LABEL_30;
            }

            ++v13;
            if (v16 == v12)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
          goto LABEL_11;
        }
      }

LABEL_4:

      if (v6 == v40)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:

  v37 = 1;
LABEL_30:
  v17 = [a1 sensitivityPoints];
  v18 = sub_1C3D202B4();

  v39 = v18;
  if (v18 >> 62)
  {
LABEL_60:
    v19 = sub_1C3D20964();
    if (v19)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_32:
      v20 = 0;
      do
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1C692FEB0](v20, v39);
        }

        else
        {
          if (v20 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v21 = *(v39 + 32 + 8 * v20);
        }

        v22 = v21;
        v9 = __OFADD__(v20++, 1);
        if (v9)
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v23 = [v21 tests];
        sub_1C3C27CB4(0, &unk_1EC0871B0);
        v24 = sub_1C3D202B4();

        if (v24 >> 62)
        {
          v25 = sub_1C3D20964();
          if (v25)
          {
LABEL_40:
            v26 = 0;
            while (1)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x1C692FEB0](v26, v24);
              }

              else
              {
                if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_57;
                }

                v27 = *(v24 + 8 * v26 + 32);
              }

              v28 = v27;
              v29 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                __break(1u);
LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

              if ([v27 side] == a2 && !objc_msgSend(v28, sel_masked))
              {
                break;
              }

              ++v26;
              if (v29 == v25)
              {
                goto LABEL_33;
              }
            }

            if (v37)
            {
              result = MEMORY[0x1E69E7CC0];
              goto LABEL_67;
            }

            v31 = 0;
LABEL_64:
            result = sub_1C3C468D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v33 = *(result + 2);
            v32 = *(result + 3);
            if (v33 >= v32 >> 1)
            {
              result = sub_1C3C468D8((v32 > 1), v33 + 1, 1, result);
            }

            *(result + 2) = v33 + 1;
            *&result[8 * v33 + 32] = 4;
            if ((v31 & 1) == 0)
            {
LABEL_67:
              v34 = result;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                result = v34;
              }

              else
              {
                result = sub_1C3C468D8(0, *(v34 + 2) + 1, 1, v34);
              }

              v36 = *(result + 2);
              v35 = *(result + 3);
              if (v36 >= v35 >> 1)
              {
                result = sub_1C3C468D8((v35 > 1), v36 + 1, 1, result);
              }

              *(result + 2) = v36 + 1;
              *&result[8 * v36 + 32] = 0;
            }

            return result;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_40;
          }
        }

LABEL_33:
      }

      while (v20 != v19);
    }
  }

  if ((v37 & 1) == 0)
  {
    v31 = 1;
    goto LABEL_64;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C3C58AD8()
{
  if (!qword_1EC080D80)
  {
    sub_1C3C54BC4();
    v0 = sub_1C3D20A24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC080D80);
    }
  }
}

void sub_1C3C58B30(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v10 = *v5;
  v11 = v5[1];
  v12 = [objc_opt_self() hk:a5 roundedSystemFontWithSize:*MEMORY[0x1E69DB960] weight:?];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v13 setAlignment_];
  v14 = HKAudiogramEarLocalizedKeyForEar(v10, 1);
  sub_1C3D20104();

  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  sub_1C3C58AD8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C3D602D0;
  v17 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v18 = sub_1C3C27CB4(0, &qword_1EC080DD0);
  *(inited + 40) = v11;
  v19 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v18;
  *(inited + 72) = v19;
  v20 = sub_1C3C27CB4(0, &qword_1EC080DF0);
  *(inited + 80) = v12;
  v21 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  *(inited + 144) = sub_1C3C27CB4(0, &qword_1EC086160);
  *(inited + 120) = v13;
  v22 = v17;
  v23 = v11;
  v24 = v19;
  v25 = v21;
  sub_1C3C7556C(inited);
  swift_setDeallocating();
  sub_1C3C54BC4();
  swift_arrayDestroy();
  v26 = sub_1C3D200C4();
  type metadata accessor for Key(0);
  sub_1C3C54C30();
  v27 = sub_1C3D1FEE4();
  [v26 sizeWithAttributes_];
  v29 = v28;
  v31 = v30;

  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  MidX = CGRectGetMidX(v38);
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  v39.size.width = v29;
  v39.size.height = v31;
  v33 = MidX - CGRectGetMidX(v39);
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  MidY = CGRectGetMidY(v40);
  v41.origin.x = 0.0;
  v41.origin.y = 0.0;
  v41.size.width = v29;
  v41.size.height = v31;
  v35 = MidY - CGRectGetMidY(v41);
  v36 = sub_1C3D200C4();

  v37 = sub_1C3D1FEE4();

  [v36 drawInRect:v37 withAttributes:{v33, v35, v29, v31}];
}

void _s8HealthUI20AudiogramPointMarkerV13renderAndJoin7symbolsSo7UIImageCSayAGG_tFZ_0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_36:
    v26 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

    [v26 init];
    return;
  }

LABEL_35:
  v2 = sub_1C3D20964();
  if (!v2)
  {
    goto LABEL_36;
  }

LABEL_3:
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = 0.0;
  do
  {
    if (v4)
    {
      v6 = MEMORY[0x1C692FEB0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    [v6 size];
    v10 = v9;

    v5 = v5 + v10;
    ++v3;
  }

  while (v8 != v2);
  if (!v4)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(a1 + 32);
      goto LABEL_14;
    }

    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v11 = MEMORY[0x1C692FEB0](0, a1);
LABEL_14:
  v12 = v11;
  if (v2 != 1)
  {
    v20 = 1;
    while (1)
    {
      if (v4)
      {
        v21 = MEMORY[0x1C692FEB0](v20, a1);
      }

      else
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v21 = *(a1 + 8 * v20 + 32);
      }

      v13 = v21;
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_32;
      }

      [v12 size];
      v24 = v23;
      [v13 size];
      if (v25 < v24)
      {

        v12 = v13;
        ++v20;
        if (v22 == v2)
        {
          goto LABEL_16;
        }
      }

      else
      {

        ++v20;
        if (v22 == v2)
        {
          break;
        }
      }
    }
  }

  v13 = v12;
LABEL_16:
  [v13 size];
  v15 = v14;

  v16 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1C3C59470;
  *(v18 + 24) = v17;
  v27[4] = sub_1C3C59490;
  v27[5] = v18;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_1C3C57A08;
  v27[3] = &block_descriptor_28;
  v19 = _Block_copy(v27);

  [v16 imageWithActions_];

  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    goto LABEL_41;
  }
}

unint64_t sub_1C3C59260()
{
  result = qword_1EC080FC0;
  if (!qword_1EC080FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080FC0);
  }

  return result;
}

unint64_t sub_1C3C592B8()
{
  result = qword_1EC086168;
  if (!qword_1EC086168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086168);
  }

  return result;
}

unint64_t sub_1C3C59310()
{
  result = qword_1EC080FC8;
  if (!qword_1EC080FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080FC8);
  }

  return result;
}

unint64_t sub_1C3C59368()
{
  result = qword_1EC080FB8;
  if (!qword_1EC080FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080FB8);
  }

  return result;
}

uint64_t sub_1C3C593BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C3C59404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id AudiogramAverageLevelSeries.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C3C59564(void *a1)
{
  v2 = [objc_opt_self() strokeStyleWithColor:a1 lineWidth:2.0];
  [v2 setDashStyle_];
  [v2 setDashStyle_];
  [v2 setLineCap_];
  v3 = [objc_allocWithZone(HKLineSeriesPresentationStyle) init];
  [v3 setStrokeStyle_];
  [v3 setShouldNegateAnnotationValue_];
  [v3 setPointMarkerStyle_];
  v4 = [objc_opt_self() hk:*MEMORY[0x1E69DDD28] roundedSystemFontWithSize:18.0 weight:*MEMORY[0x1E69DB970] textStyle:?];
  result = HKIntegerFormatter();
  if (result)
  {
    v6 = result;
    v7 = objc_opt_self();
    v8 = a1;
    v9 = [v7 labelStyleWithColor:v8 font:v4 horizontalAlignment:0 verticalAlignment:2 numberFormatter:v6];

    [v3 setAxisAnnotationStyle_];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s8HealthUI27AudiogramAverageLevelSeriesC04makecdeF012primaryColorACSo7UIColorC_tFZ_0(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for AudiogramAverageLevelSeries()) init];
  [v2 setAllowsSelection_];
  v3 = v2;
  [v3 setFlatLastValue_];
  [v3 setExtendFirstValue_];
  [v3 setExtendLastValue_];
  sub_1C3CD7580();
  v5 = v4;
  v6 = type metadata accessor for AudiogramNumericAxis.AudiogramAxisScalingRules();
  v7 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v20.receiver = v7;
  v20.super_class = v6;
  v8 = objc_msgSendSuper2(&v20, sel_init);
  [v3 setYAxis_];
  [v3 setAxisScalingRule_];

  v9 = sub_1C3C59564(a1);
  sub_1C3C27C60();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C3D5EAE0;
  *(v10 + 32) = v9;
  sub_1C3C599B4();
  v11 = v9;
  v12 = sub_1C3D202A4();

  [v3 setUnhighlightedPresentationStyles_];

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C3D5EAE0;
  *(v13 + 32) = v11;
  v14 = v11;
  v15 = sub_1C3D202A4();

  [v3 setHighlightedPresentationStyles_];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C3D5EAE0;
  *(v16 + 32) = v14;
  v17 = v14;
  v18 = sub_1C3D202A4();

  [v3 setSelectedPresentationStyles_];

  [v3 setInactivePresentationStyle_];
  return v3;
}

unint64_t sub_1C3C599B4()
{
  result = qword_1EC0859C0;
  if (!qword_1EC0859C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0859C0);
  }

  return result;
}

id sub_1C3C59A00(unint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1C3D1E9C4();
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1C3D1E974();
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C59FC8();
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    return sub_1C3C5A020();
  }

  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v43 = v14;
  v44 = v3;
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = 0;
    v46 = a1 & 0xFFFFFFFFFFFFFF8;
    v47 = (a1 & 0xC000000000000001);
    v45 = v16;
    do
    {
      if (v47)
      {
        v19 = MEMORY[0x1C692FEB0](v18, a1, v12);
      }

      else
      {
        if (v18 >= *(v46 + 16))
        {
          goto LABEL_40;
        }

        v19 = *(a1 + 8 * v18 + 32);
      }

      v3 = v19;
      v14 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_40:
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
        v16 = sub_1C3D20964();
        goto LABEL_7;
      }

      v20 = v10;
      v21 = (v19 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_collection);
      swift_beginAccess();
      __swift_project_boxed_opaque_existential_0(v21, v21[3]);
      v22 = v17;
      v23 = v3;
      v3 = sub_1C3D1EA34();
      swift_endAccess();

      v17 = v22;
      v10 = v3[2];
      v24 = v22[2];
      v25 = &v10[v24];
      if (__OFADD__(v24, v10))
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v25 <= v17[3] >> 1)
      {
        if (v3[2])
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v24 <= v25)
        {
          v27 = &v10[v24];
        }

        else
        {
          v27 = v24;
        }

        v17 = sub_1C3C469E0(isUniquelyReferenced_nonNull_native, v27, 1, v17);
        if (v3[2])
        {
LABEL_24:
          if ((v17[3] >> 1) - v17[2] < v10)
          {
            goto LABEL_43;
          }

          swift_arrayInitWithCopy();

          if (v10)
          {
            v28 = v17[2];
            v29 = __OFADD__(v28, v10);
            v30 = &v10[v28];
            if (v29)
            {
              goto LABEL_44;
            }

            v17[2] = v30;
          }

          goto LABEL_10;
        }
      }

      if (v10)
      {
        goto LABEL_42;
      }

LABEL_10:
      ++v18;
      v10 = v20;
    }

    while (v14 != v45);
  }

  v31 = v17[2];
  if (v31)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_1C3C23C6C(0, v31, 0);
    v32 = v53;
    v33 = *(v52 + 16);
    v34 = v17 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v46 = *(v52 + 72);
    v47 = v33;
    v52 += 16;
    v35 = (v52 - 8);
    do
    {
      v36 = v49;
      v37 = v51;
      v47(v49, v34, v51);
      sub_1C3D1E984();
      (*v35)(v36, v37);
      v53 = v32;
      v39 = *(v32 + 16);
      v38 = *(v32 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1C3C23C6C(v38 > 1, v39 + 1, 1);
        v32 = v53;
      }

      *(v32 + 16) = v39 + 1;
      (*(v50 + 32))(v32 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v39, v10, v48);
      v34 += v46;
      --v31;
    }

    while (v31);
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  v40 = v43;
  sub_1C3C79CC4(v32, v43);

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1C3CCB840(v40);
    swift_unknownObjectRelease();
  }

  v41 = sub_1C3C5A020();
  sub_1C3C5A268(v40);
  return v41;
}

id sub_1C3C59F38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceMostFrequentClassificationOverlayContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C3C59FC8()
{
  if (!qword_1EC086180)
  {
    sub_1C3D1E974();
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086180);
    }
  }
}

id sub_1C3C5A020()
{
  v0 = [objc_allocWithZone(HKDisplayTypeContextItem) init];
  v1 = objc_opt_self();
  v2 = sub_1C3D200C4();
  v3 = [v1 hk:v2 chartOverlayAccessibilityIdentifier:?];

  if (v3)
  {
    v14 = 0;
    sub_1C3D200F4();

    v3 = 0;
  }

  [v0 setAccessibilityIdentifier_];

  v4 = objc_opt_self();
  v5 = [objc_opt_self() tertiarySystemBackgroundColor];
  v6 = [v4 defaultContextViewColorsUsingColor_];

  [v0 setMetricColors_];
  v7 = [objc_opt_self() defaultMetricColorsForOverlayMode_];
  [v0 setMetricColors_];

  v8 = sub_1C3D200C4();
  [v0 setTitle_];

  sub_1C3C31A34();
  v10 = v9;
  [v0 setSelectedMetricColors_];

  v11 = sub_1C3D200C4();
  v12 = HKUILocalizedString(v11);

  [v0 setValue_];
  [v0 setInfoHidden_];
  return v0;
}

uint64_t sub_1C3C5A268(uint64_t a1)
{
  sub_1C3C59FC8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C3C5A2C4()
{
  v1 = OBJC_IVAR____TtC8HealthUI12GradientView____lazy_storage___gradientLayer;
  v2 = *&v0[OBJC_IVAR____TtC8HealthUI12GradientView____lazy_storage___gradientLayer];
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [v0 layer];
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
    }

    v5 = *&v0[v1];
    *&v0[v1] = v3;
    v6 = v3;
    sub_1C3C3A4A0(v5);
  }

  sub_1C3C3A4B0(v2);
  return v3;
}

unint64_t sub_1C3C5A404()
{
  result = qword_1EC086188;
  if (!qword_1EC086188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC086188);
  }

  return result;
}

void sub_1C3C5A450(void *a1, void *a2)
{
  v3 = a2;
  v15 = a1;
  v4 = (v2 + OBJC_IVAR____TtC8HealthUI12GradientView_gradientColors);
  v5 = *(v2 + OBJC_IVAR____TtC8HealthUI12GradientView_gradientColors);
  v6 = *(v2 + OBJC_IVAR____TtC8HealthUI12GradientView_gradientColors + 8);
  *v4 = a1;
  v4[1] = a2;
  sub_1C3C5ADAC(a1, a2);
  sub_1C3C5AD6C(v5, v6);
  if (v15)
  {
    v7 = sub_1C3C5A2C4();
    if (v7)
    {
      v8 = v7;
      sub_1C3C358E8();
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C3D5DCD0;
      v10 = [v15 CGColor];
      type metadata accessor for CGColor(0);
      v12 = v11;
      *(v9 + 56) = v11;
      *(v9 + 32) = v10;
      v13 = [v3 CGColor];
      *(v9 + 88) = v12;
      *(v9 + 64) = v13;
      v14 = sub_1C3D202A4();

      [v8 setColors_];

      v3 = v8;
      v15 = v14;
    }
  }
}

void sub_1C3C5A5C4(void *a1, void *a2, double a3, double a4)
{
  v9 = sub_1C3C5A2C4();
  if (v9)
  {
    v10 = v9;
    [v9 setStartPoint_];
  }

  v11 = *(v4 + OBJC_IVAR____TtC8HealthUI12GradientView____lazy_storage___gradientLayer);
  if (v11)
  {
    [v11 setEndPoint_];
  }

  v12 = a1;
  v13 = a2;

  sub_1C3C5A450(a1, a2);
}

id GradientView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GradientView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC8HealthUI12GradientView____lazy_storage___gradientLayer] = 1;
  v9 = &v4[OBJC_IVAR____TtC8HealthUI12GradientView_gradientColors];
  v10 = type metadata accessor for GradientView();
  *v9 = 0;
  *(v9 + 1) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id GradientView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GradientView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8HealthUI12GradientView____lazy_storage___gradientLayer] = 1;
  v3 = &v1[OBJC_IVAR____TtC8HealthUI12GradientView_gradientColors];
  v4 = type metadata accessor for GradientView();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id GradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C3C5AB78()
{
  v1 = *(v0 + OBJC_IVAR____TtC8HealthUI12GradientView_gradientColors);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8HealthUI12GradientView_gradientColors + 8);
    v12 = v1;
    v3 = v2;
    v4 = sub_1C3C5A2C4();
    if (v4)
    {
      v5 = v4;
      sub_1C3C358E8();
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C3D5DCD0;
      v7 = [v12 CGColor];
      type metadata accessor for CGColor(0);
      v9 = v8;
      *(v6 + 56) = v8;
      *(v6 + 32) = v7;
      v10 = [v3 CGColor];
      *(v6 + 88) = v9;
      *(v6 + 64) = v10;
      v11 = sub_1C3D202A4();

      [v5 setColors_];

      v3 = v5;
      v12 = v11;
    }
  }
}

void sub_1C3C5AD6C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_1C3C5ADAC(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_1C3C5ADEC()
{
  sub_1C3C5B8C8();
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EC0861A0 = result;
  return result;
}

id sub_1C3C5AE20(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 unitController];
  v9 = sub_1C3CF66F8(v8);

  sub_1C3C5AFA8();
  v11 = v10;
  v12 = v9;
  v13 = v11;
  v14 = [v13 sampleType];
  v15 = [v14 code];

  v16 = objc_allocWithZone(HKMeasureDisplayType);
  v17 = v12;
  v18 = [v16 initWithGraphSeries:v17 baseDisplayType:v13 valueFormatter:0 dataTypeCode:v15];

  v19 = [objc_allocWithZone(HKCacheBackedChartSeriesDataSource) init];
  v20 = sub_1C3C5B1C0(v18, a1, a2, a3, a4);
  [v19 setChartCache_];
  [v17 setDataSource_];

  return v18;
}

void sub_1C3C5AFA8()
{
  if (qword_1EC0850A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC0861A0;
  os_unfair_lock_lock((qword_1EC0861A0 + 16));
  v1 = qword_1EC0861A8;
  if (!qword_1EC0861A8)
  {
    v1 = 342;
    qword_1EC0861A8 = 342;
  }

  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    qword_1EC0861A8 = v1 + 1;
    os_unfair_lock_unlock(v0 + 4);
    v2 = [objc_opt_self() stateOfMindType];
    sub_1C3C27CB4(0, &qword_1EC0861D0);
    v3 = sub_1C3C5B3A0();
    sub_1C3C27CB4(0, &qword_1EC0861D8);
    v4 = sub_1C3C5B750();
    sub_1C3C27CB4(0, &qword_1EC0861E0);
    v5 = sub_1C3C5B3F4();
    v6 = [objc_allocWithZone(HKDisplayTypeChartingRules) initWithDefaultChartStyle_];
    v7 = objc_allocWithZone(HKDisplayType);
    sub_1C3C27CB4(0, &qword_1EC0855F0);
    v8 = sub_1C3D202A4();
    [v7 initWithDisplayTypeIdentifier:v1 categoryIdentifier:0 secondaryCategoryIdentifiers:v8 objectType:v2 behavior:v3 presentation:v4 localization:v5 chartingRules:v6 defaultChartingPredicate:0 chartingPredicatesByTimeScope:0];
  }
}

id sub_1C3C5B1C0(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5)
{
  v10 = [a3 chartDataCacheController];
  v11 = [v10 findCustomCachesForDisplayType_];

  if (!v11)
  {
    goto LABEL_10;
  }

  sub_1C3C27CB4(0, &qword_1EC0861C8);
  v12 = sub_1C3D202B4();

  if (v12 >> 62)
  {
    result = sub_1C3D20964();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

LABEL_10:
    type metadata accessor for MeasureChartDataSource();
    v16 = [a3 healthStore];
    v17 = sub_1C3C30450(a2, v16, a4, a5);

    v18 = [objc_allocWithZone(HKChartCache) init];
    [v18 setDataSource_];
    v19 = [objc_opt_self() sharedOperationManager];
    [v18 setOperationManager_];

    return v18;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1C692FEB0](0, v12);
    goto LABEL_7;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 32);
LABEL_7:
    v15 = v14;

    return v15;
  }

  __break(1u);
  return result;
}

id sub_1C3C5B3F4()
{
  sub_1C3D1EAE4();
  sub_1C3C757A4(MEMORY[0x1E69E7CC0]);
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C3D200C4();

  sub_1C3C27CB4(0, &qword_1EC0861E8);
  sub_1C3C5B878(&qword_1EC0861F0, &qword_1EC0861E8);
  v2 = sub_1C3D1FEE4();

  v3 = [v0 initWithDisplayNameKey:v1 labelDisplayNameKey:0 localizationTableNameOverride:0 localizedKeySuffix:0 unitNameKeyOverrides:v2];

  return v3;
}

id HKMeasureDisplayType.objectType.getter()
{
  v1 = *(v0 + OBJC_IVAR___HKMeasureDisplayType_underlyingObjectType);
  if (v1)
  {

    return v1;
  }

  else
  {
    result = sub_1C3D20944();
    __break(1u);
  }

  return result;
}

void *HKMeasureDisplayType.safeObjectType.getter()
{
  v1 = *(v0 + OBJC_IVAR___HKMeasureDisplayType_underlyingObjectType);
  v2 = v1;
  return v1;
}

id sub_1C3C5B708()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 initWithCurrentValue:0 secondaryValue:0 detailChart:0 singleDailyValue:0];
}

id sub_1C3C5B750()
{
  sub_1C3C27CB4(0, &qword_1EC0861F8);
  v0 = sub_1C3C5B708();
  sub_1C3C7569C(MEMORY[0x1E69E7CC0]);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C3C27CB4(0, &qword_1EC0855F0);
  sub_1C3C5B878(&qword_1EC0859E0, &qword_1EC0855F0);
  v2 = sub_1C3D1FEE4();

  LOBYTE(v5) = 0;
  v3 = [v1 initWithDefaultConfiguration:v0 configurationOverrides:v2 scaleFactor:0 showAllDataHierarchically:0 showAppDataHierarchically:0 shouldDisplayUnitStringOnYAxis:0 useSecondsWhenDisplayingDuration:1.0 isCriticalForAutoscale:v5 dataTypeIconImageName:0 detailImageName:0 listIconImageNameOverride:0 summaryAttribution:0];

  return v3;
}

uint64_t sub_1C3C5B878(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C3C27CB4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C3C5B8C8()
{
  if (!qword_1EC086200)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1C3D20874();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086200);
    }
  }
}

id sub_1C3C5B990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindCoordinate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C3C5BA94(CGFloat *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v42.x = *(v1 + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_xValue);
  v41.a = *a1;
  a = v41.a;
  v41.b = v3;
  v41.c = v4;
  v41.d = v5;
  v41.tx = v6;
  v41.ty = v7;
  v42.y = 0.0;
  x = v42.x;
  v33 = *&CGPointApplyAffineTransform(v42, &v41);
  v43.y = *(v1 + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_maxYValue);
  v41.a = a;
  v41.b = v3;
  v41.c = v4;
  v41.d = v5;
  v41.tx = v6;
  v41.ty = v7;
  v43.x = 0.0;
  y = CGPointApplyAffineTransform(v43, &v41).y;
  v44.y = *(v1 + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_minYValue);
  v37 = v3;
  v38 = a;
  v41.a = a;
  v41.b = v3;
  v41.c = v4;
  v41.d = v5;
  v41.tx = v6;
  v41.ty = v7;
  v44.x = 0.0;
  v31 = CGPointApplyAffineTransform(v44, &v41).y;
  v8 = *(v1 + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_dailyYValueRanges);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1C3C23D2C(0, v9, 0);
    v10 = v40;
    v11 = (v8 + 40);
    do
    {
      v45.y = *(v11 - 1);
      point = *v11;
      v41.a = v38;
      v41.b = v37;
      v41.c = v4;
      v41.d = v5;
      v41.tx = v6;
      v41.ty = v7;
      v45.x = x;
      v12 = CGPointApplyAffineTransform(v45, &v41).y;
      v41.a = v38;
      v41.b = v37;
      v41.c = v4;
      v41.d = v5;
      v41.tx = v6;
      v41.ty = v7;
      v46.x = x;
      v46.y = point;
      v13 = CGPointApplyAffineTransform(v46, &v41);
      if (v12 <= v13.y)
      {
        v14 = v12;
        v12 = v13.y;
      }

      else
      {
        v14 = v13.y;
        if (v13.y > v12)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return;
        }
      }

      v40 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C3C23D2C((v15 > 1), v16 + 1, 1);
        v10 = v40;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v12;
      v11 += 2;
      --v9;
    }

    while (v9);
  }

  v18 = *(v1 + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_momentaryYValueRanges);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1C3C23D2C(0, v19, 0);
    v20 = v40;
    v21 = (v18 + 40);
    do
    {
      v47.y = *(v21 - 1);
      pointa = *v21;
      v41.a = v38;
      v41.b = v37;
      v41.c = v4;
      v41.d = v5;
      v41.tx = v6;
      v41.ty = v7;
      v47.x = x;
      v22 = CGPointApplyAffineTransform(v47, &v41).y;
      v41.a = v38;
      v41.b = v37;
      v41.c = v4;
      v41.d = v5;
      v41.tx = v6;
      v41.ty = v7;
      v48.x = x;
      v48.y = pointa;
      v23 = CGPointApplyAffineTransform(v48, &v41);
      if (v22 <= v23.y)
      {
        v24 = v22;
        v22 = v23.y;
      }

      else
      {
        v24 = v23.y;
        if (v23.y > v22)
        {
          goto LABEL_20;
        }
      }

      v40 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1C3C23D2C((v25 > 1), v26 + 1, 1);
        v20 = v40;
      }

      *(v20 + 16) = v26 + 1;
      v27 = v20 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v22;
      v21 += 2;
      --v19;
    }

    while (v19);
  }

  v28 = *(v1 + OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_userInfo);
  v29 = type metadata accessor for StateOfMindCoordinate();
  v30 = objc_allocWithZone(v29);
  *&v30[OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_xValue] = v33;
  *&v30[OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_maxYValue] = y;
  *&v30[OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_minYValue] = v31;
  *&v30[OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_dailyYValueRanges] = v10;
  *&v30[OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_momentaryYValueRanges] = v20;
  *&v30[OBJC_IVAR____TtC8HealthUI21StateOfMindCoordinate_userInfo] = v28;
  v39.receiver = v30;
  v39.super_class = v29;
  swift_unknownObjectRetain();
  [(CGFloat *)&v39 init];
}

uint64_t sub_1C3C5BE18(unint64_t a1, uint64_t *a2)
{
  v45 = a2;
  sub_1C3C29314();
  v49 = v3;
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v34 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v52 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_26:
    v14 = sub_1C3D20964();
    if (v14)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v15 = 0;
  v42 = a1 & 0xFFFFFFFFFFFFFF8;
  v43 = a1 & 0xC000000000000001;
  result = MEMORY[0x1E69E7CC0];
  v39 = a1 + 32;
  v40 = v14;
  v41 = a1;
  v50 = v13;
  do
  {
    v35 = result;
    while (1)
    {
      if (v43)
      {
        v17 = MEMORY[0x1C692FEB0](v15, a1, v11);
        v18 = __OFADD__(v15, 1);
        v19 = v15 + 1;
        if (v18)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v15 >= *(v42 + 16))
        {
          goto LABEL_25;
        }

        v17 = *(v39 + 8 * v15);
        v18 = __OFADD__(v15, 1);
        v19 = v15 + 1;
        if (v18)
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      v47 = v19;
      v20 = *v45;
      v46 = v17;
      v21 = &v17[OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_collection];
      v22 = *(v21 + 3);
      v44 = v21;
      __swift_project_boxed_opaque_existential_0(v21, v22);

      sub_1C3D1EA14();
      v51 = v20;
      if (!*(v20 + 16))
      {
        break;
      }

      v23 = v51;
      sub_1C3D20B04();
      sub_1C3D1FE54();
      sub_1C3C5F428(&unk_1EC087240, MEMORY[0x1E696B418]);
      sub_1C3D1FF84();
      v48 = *(v49 + 36);
      sub_1C3D1FF84();
      v24 = sub_1C3D20B34();
      v25 = v23 + 56;
      v26 = -1 << *(v23 + 32);
      v27 = v24 & ~v26;
      if (((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        break;
      }

      v28 = ~v26;
      v29 = *(v38 + 72);
      while (1)
      {
        sub_1C3C5F3C4(*(v51 + 48) + v29 * v27, v9);
        sub_1C3C5F428(&unk_1EC0862A0, MEMORY[0x1E696B418]);
        if (sub_1C3D20034())
        {
          break;
        }

        sub_1C3C5F34C(v9, sub_1C3C29314);
LABEL_12:
        v27 = (v27 + 1) & v28;
        if (((*(v25 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v30 = sub_1C3D20034();
      sub_1C3C5F34C(v9, sub_1C3C29314);
      if ((v30 & 1) == 0)
      {
        goto LABEL_12;
      }

      v13 = v50;
      sub_1C3C5F34C(v50, sub_1C3C29314);

      a1 = v41;
      v15 = v47;
      if (v47 == v40)
      {
        return v35;
      }
    }

LABEL_20:

    v13 = v50;
    sub_1C3C5F34C(v50, sub_1C3C29314);
    __swift_project_boxed_opaque_existential_0(v44, *(v44 + 3));
    v31 = v37;
    sub_1C3D1EA14();
    v32 = v36;
    sub_1C3C66348(v36, v31);
    v33 = sub_1C3C5F34C(v32, sub_1C3C29314);
    MEMORY[0x1C692F8F0](v33);
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C3D202C4();
    }

    sub_1C3D202F4();
    result = v52;
    a1 = v41;
    v15 = v47;
  }

  while (v47 != v40);
  return result;
}

void sub_1C3C5C4A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_1C3C5F05C();
    v5 = a4;
    sub_1C3D20334();
  }

  else
  {
    sub_1C3C315FC();
    sub_1C3D202B4();
    sub_1C3C5F05C();
    sub_1C3D20344();
  }
}

uint64_t sub_1C3C5C71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = sub_1C3D1DC54();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  sub_1C3D20374();
  v6[10] = sub_1C3D20364();
  v9 = sub_1C3D20314();

  return MEMORY[0x1EEE6DFA0](sub_1C3C5C818, v9, v8);
}

uint64_t sub_1C3C5C818()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];

  v0[11] = _Block_copy(v1);
  sub_1C3D1DC04();
  v4 = v3;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1C3C5C90C;
  v7 = v0[9];
  v8 = v0[3];
  v9 = v0[4];

  return sub_1C3C5D96C(v7, v8, v9);
}

uint64_t sub_1C3C5C90C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = v5[11];
  v9 = v5[6];
  v10 = v5[3];
  (*(v5[8] + 8))(v5[9], v5[7]);

  if (v3)
  {
    v11 = sub_1C3D1DF94();

    (*(v8 + 16))(v8, 0, v11);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(v6[11]);

  v12 = v7[1];

  return v12();
}

id sub_1C3C5CDA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceOverlayContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3C5CE58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C3C42AC8;

  return sub_1C3C5C71C(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1C3C5CF2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C3C56614;

  return v6();
}

uint64_t sub_1C3C5D014()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C3C56614;

  return sub_1C3C5CF2C(v2, v3, v4);
}

uint64_t sub_1C3C5D0D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C3C42AC8;

  return v7();
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C3C5D1FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C3C56614;

  return sub_1C3C5D0D4(a1, v4, v5, v6);
}

uint64_t sub_1C3C5D2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1C3C5F1F8(0, &qword_1EC085D60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  sub_1C3C5F25C(a3, v24 - v11, &qword_1EC085D60, v9);
  v13 = sub_1C3D203A4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C3C5F2DC(v12, &qword_1EC085D60, MEMORY[0x1E69E85F0]);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1C3D20394();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1C3D20314();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1C3D20144() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1C3C5F2DC(a3, &qword_1EC085D60, MEMORY[0x1E69E85F0]);

    return v22;
  }

LABEL_8:
  sub_1C3C5F2DC(a3, &qword_1EC085D60, MEMORY[0x1E69E85F0]);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C3C5D60C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C3C5D704;

  return v6(a1);
}

uint64_t sub_1C3C5D704()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C3C5D7FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3C56614;

  return sub_1C3C5D60C(a1, v4);
}

uint64_t sub_1C3C5D8B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C3C42AC8;

  return sub_1C3C5D60C(a1, v4);
}

uint64_t sub_1C3C5D96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = swift_getObjectType();
  v5 = sub_1C3D1EDA4();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  sub_1C3C5F05C();
  v4[35] = v6;
  v4[36] = *(v6 - 8);
  v4[37] = swift_task_alloc();
  v7 = sub_1C3D1E1E4();
  v4[38] = v7;
  v4[39] = *(v7 - 8);
  v4[40] = swift_task_alloc();
  sub_1C3C5F164();
  v4[41] = v8;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  sub_1C3C5F1F8(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  sub_1C3D20374();
  v4[50] = sub_1C3D20364();
  v10 = sub_1C3D20314();
  v4[51] = v10;
  v4[52] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C3C5DC20, v10, v9);
}

uint64_t sub_1C3C5DC20()
{
  v114 = v0;
  v1 = [*(*(v0 + 216) + OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_baseDisplayType) graphSeriesForTimeScope_];
  *(v0 + 424) = v1;
  if (!v1)
  {

    sub_1C3D1ED64();
    v8 = sub_1C3D1ED84();
    v9 = sub_1C3D204F4();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 256);
    v13 = *(v0 + 232);
    v12 = *(v0 + 240);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v113 = v15;
      *v14 = 136446210;
      v16 = sub_1C3D20CD4();
      v18 = sub_1C3C22C28(v16, v17, &v113);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1C3942000, v8, v9, "[%{public}s] cannot update context item without a graph series", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1C69321D0](v15, -1, -1);
      v19 = v14;
      v1 = 0;
      MEMORY[0x1C69321D0](v19, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
    v20 = *(v0 + 216);
    v21 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0xB8))(MEMORY[0x1E69E7CC0], *(v0 + 208), 0);
    v22 = *(v20 + OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_currentContextItem);
    *(v20 + OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_currentContextItem) = v21;

    goto LABEL_27;
  }

  v2 = [*(v0 + 200) primaryGraphViewController];
  v3 = [v2 graphView];

  v4 = [v3 effectiveVisibleRangeActive];
  *(v0 + 432) = v4;

  v110 = v4;
  v5 = [v4 startDate];
  v112 = v1;
  if (v5)
  {
    v6 = v5;
    sub_1C3D1E1A4();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v24 = *(v0 + 384);
  v23 = *(v0 + 392);
  v25 = *(v0 + 344);
  v26 = *(v0 + 328);
  v28 = *(v0 + 304);
  v27 = *(v0 + 312);
  v29 = *(v27 + 56);
  v29(v23, v7, 1, v28);
  sub_1C3D1DC34();
  v105 = v29;
  v29(v24, 0, 1, v28);
  v107 = v26;
  v30 = *(v26 + 48);
  v31 = MEMORY[0x1E6969530];
  sub_1C3C5F25C(v23, v25, &qword_1EC085770, MEMORY[0x1E6969530]);
  sub_1C3C5F25C(v24, v25 + v30, &qword_1EC085770, v31);
  v32 = *(v27 + 48);
  if (v32(v25, 1, v28) == 1)
  {
    v33 = *(v0 + 392);
    v34 = *(v0 + 304);
    v35 = MEMORY[0x1E6969530];
    sub_1C3C5F2DC(*(v0 + 384), &qword_1EC085770, MEMORY[0x1E6969530]);
    sub_1C3C5F2DC(v33, &qword_1EC085770, v35);
    v36 = v32(v25 + v30, 1, v34);
    v37 = *(v0 + 344);
    if (v36 != 1)
    {
LABEL_23:
      sub_1C3C5F34C(v37, sub_1C3C5F164);
      goto LABEL_24;
    }

    v104 = v32;
    sub_1C3C5F2DC(v37, &qword_1EC085770, MEMORY[0x1E6969530]);
    goto LABEL_14;
  }

  v38 = *(v0 + 304);
  sub_1C3C5F25C(*(v0 + 344), *(v0 + 376), &qword_1EC085770, MEMORY[0x1E6969530]);
  if (v32(v25 + v30, 1, v38) == 1)
  {
    v39 = (v0 + 392);
    v40 = (v0 + 384);
    v41 = (v0 + 344);
    v42 = (v0 + 376);
LABEL_22:
    v64 = *v41;
    v65 = *v42;
    v66 = *v39;
    v68 = *(v0 + 304);
    v67 = *(v0 + 312);
    v69 = MEMORY[0x1E6969530];
    sub_1C3C5F2DC(*v40, &qword_1EC085770, MEMORY[0x1E6969530]);
    sub_1C3C5F2DC(v66, &qword_1EC085770, v69);
    (*(v67 + 8))(v65, v68);
    v37 = v64;
    goto LABEL_23;
  }

  v99 = *(v0 + 384);
  v100 = *(v0 + 392);
  v43 = *(v0 + 376);
  v102 = *(v0 + 344);
  v104 = v32;
  v45 = *(v0 + 312);
  v44 = *(v0 + 320);
  v46 = *(v0 + 304);
  (*(v45 + 32))(v44, v25 + v30, v46);
  sub_1C3C5F428(&qword_1EC086280, MEMORY[0x1E6969530]);
  v47 = sub_1C3D20034();
  v48 = *(v45 + 8);
  v48(v44, v46);
  v49 = MEMORY[0x1E6969530];
  sub_1C3C5F2DC(v99, &qword_1EC085770, MEMORY[0x1E6969530]);
  sub_1C3C5F2DC(v100, &qword_1EC085770, v49);
  v48(v43, v46);
  sub_1C3C5F2DC(v102, &qword_1EC085770, v49);
  if (v47)
  {
LABEL_14:
    v50 = [v110 endDate];
    if (v50)
    {
      v51 = v50;
      sub_1C3D1E1A4();

      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

    v54 = *(v0 + 360);
    v53 = *(v0 + 368);
    v55 = *(v0 + 336);
    v56 = *(v0 + 304);
    v105(v53, v52, 1, v56);
    sub_1C3D1DC14();
    v105(v54, 0, 1, v56);
    v57 = *(v107 + 48);
    v58 = MEMORY[0x1E6969530];
    sub_1C3C5F25C(v53, v55, &qword_1EC085770, MEMORY[0x1E6969530]);
    sub_1C3C5F25C(v54, v55 + v57, &qword_1EC085770, v58);
    if (v104(v55, 1, v56) == 1)
    {
      v59 = *(v0 + 368);
      v60 = *(v0 + 304);
      v61 = MEMORY[0x1E6969530];
      sub_1C3C5F2DC(*(v0 + 360), &qword_1EC085770, MEMORY[0x1E6969530]);
      sub_1C3C5F2DC(v59, &qword_1EC085770, v61);
      v62 = v104(v55 + v57, 1, v60);
      v37 = *(v0 + 336);
      if (v62 == 1)
      {
        sub_1C3C5F2DC(v37, &qword_1EC085770, MEMORY[0x1E6969530]);
LABEL_31:
        v92 = *(v0 + 312);
        v93 = *(v0 + 320);
        v94 = *(v0 + 304);
        v103 = *(v0 + 296);
        v95 = *(v0 + 288);
        v101 = *(v0 + 280);
        v109 = *(v0 + 200);
        v111 = *(v0 + 208);
        sub_1C3D1DC34();
        v106 = sub_1C3D1E174();
        *(v0 + 440) = v106;
        v96 = *(v92 + 8);
        v96(v93, v94);
        sub_1C3D1DC14();
        v97 = sub_1C3D1E174();
        *(v0 + 448) = v97;
        v96(v93, v94);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_1C3C5E8A4;
        swift_continuation_init();
        *(v0 + 136) = v101;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
        sub_1C3C5F0CC();
        sub_1C3C4251C();
        sub_1C3D20324();
        (*(v95 + 32))(boxed_opaque_existential_0, v103, v101);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1C3C5C4A8;
        *(v0 + 104) = &block_descriptor_6;
        [v109 cachedDataForCustomGraphSeries:v112 timeScope:v111 resolution:0 startDate:v106 endDate:v97 completion:?];
        (*(v95 + 8))(boxed_opaque_existential_0, v101);

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }

      goto LABEL_23;
    }

    v63 = *(v0 + 304);
    sub_1C3C5F25C(*(v0 + 336), *(v0 + 352), &qword_1EC085770, MEMORY[0x1E6969530]);
    if (v104(v55 + v57, 1, v63) != 1)
    {
      v84 = *(v0 + 360);
      v83 = *(v0 + 368);
      v85 = *(v0 + 352);
      v108 = *(v0 + 336);
      v86 = *(v0 + 312);
      v87 = *(v0 + 320);
      v88 = *(v0 + 304);
      (*(v86 + 32))(v87, v55 + v57, v88);
      sub_1C3C5F428(&qword_1EC086280, MEMORY[0x1E6969530]);
      v89 = sub_1C3D20034();
      v90 = *(v86 + 8);
      v90(v87, v88);
      v91 = MEMORY[0x1E6969530];
      sub_1C3C5F2DC(v84, &qword_1EC085770, MEMORY[0x1E6969530]);
      sub_1C3C5F2DC(v83, &qword_1EC085770, v91);
      v90(v85, v88);
      sub_1C3C5F2DC(v108, &qword_1EC085770, v91);
      if (v89)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    v39 = (v0 + 368);
    v40 = (v0 + 360);
    v41 = (v0 + 336);
    v42 = (v0 + 352);
    goto LABEL_22;
  }

LABEL_24:

  sub_1C3D1ED64();
  v70 = sub_1C3D1ED84();
  v71 = sub_1C3D20514();
  v72 = os_log_type_enabled(v70, v71);
  v73 = *(v0 + 264);
  v75 = *(v0 + 232);
  v74 = *(v0 + 240);
  if (v72)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v113 = v77;
    *v76 = 136446210;
    v78 = sub_1C3D20CD4();
    v80 = sub_1C3C22C28(v78, v79, &v113);

    *(v76 + 4) = v80;
    _os_log_impl(&dword_1C3942000, v70, v71, "[%{public}s] skipping update for out of range dates", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x1C69321D0](v77, -1, -1);
    MEMORY[0x1C69321D0](v76, -1, -1);
  }

  v1 = v112;
  (*(v74 + 8))(v73, v75);
LABEL_27:

  v81 = *(v0 + 8);

  return v81(v1 != 0);
}

uint64_t sub_1C3C5E8A4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  v3 = *(v1 + 416);
  v4 = *(v1 + 408);
  if (v2)
  {
    v5 = sub_1C3C5ECF4;
  }

  else
  {
    v5 = sub_1C3C5E9D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C3C5E9D4()
{
  v31 = v0;
  v2 = v0[55];
  v1 = v0[56];

  v3 = v0[21];

  v4 = sub_1C3C81C30(v3);

  if (v4)
  {
    v6 = v0[53];
    v5 = v0[54];
    v8 = v0[26];
    v7 = v0[27];
    v30[0] = MEMORY[0x1E69E7CD0];
    v9 = sub_1C3C5BE18(v4, v30);

    v10 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0xB8))(v9, v8, 0);

    v11 = *(v7 + OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_currentContextItem);
    *(v7 + OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_currentContextItem) = v10;
  }

  else
  {
    sub_1C3D1ED64();
    v12 = sub_1C3D1ED84();
    v13 = sub_1C3D204F4();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[53];
    v15 = v0[54];
    v17 = v0[34];
    v19 = v0[29];
    v18 = v0[30];
    if (v14)
    {
      v29 = v0[29];
      v28 = v0[34];
      v20 = swift_slowAlloc();
      v27 = v16;
      v21 = swift_slowAlloc();
      v30[0] = v21;
      *v20 = 136446210;
      v22 = sub_1C3D20CD4();
      v24 = sub_1C3C22C28(v22, v23, v30);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1C3942000, v12, v13, "[%{public}s] skipping update for incompatible chart points", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1C69321D0](v21, -1, -1);
      MEMORY[0x1C69321D0](v20, -1, -1);

      (*(v18 + 8))(v28, v29);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }
  }

  v25 = v0[1];

  return v25(v4 != 0);
}

uint64_t sub_1C3C5ECF4()
{
  v30 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);

  swift_willThrow();

  sub_1C3D1ED64();
  v5 = v1;
  v6 = sub_1C3D1ED84();
  v7 = sub_1C3D204F4();

  if (os_log_type_enabled(v6, v7))
  {
    v25 = *(v0 + 456);
    v26 = *(v0 + 424);
    v8 = *(v0 + 240);
    v27 = *(v0 + 232);
    v28 = *(v0 + 248);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v9 = 136446466;
    v11 = sub_1C3D20CD4();
    v13 = sub_1C3C22C28(v11, v12, v29);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = *(*(v0 + 152) - 8);
    swift_task_alloc();
    (*(v14 + 16))();
    v15 = sub_1C3D20134();
    v17 = v16;

    v18 = sub_1C3C22C28(v15, v17, v29);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1C3942000, v6, v7, "[%{public}s] skipping update due to fetch error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v10, -1, -1);
    MEMORY[0x1C69321D0](v9, -1, -1);

    (*(v8 + 8))(v28, v27);
  }

  else
  {
    v19 = *(v0 + 456);
    v21 = *(v0 + 240);
    v20 = *(v0 + 248);
    v22 = *(v0 + 232);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 8);

  return v23(0);
}

void sub_1C3C5F05C()
{
  if (!qword_1EC086258)
  {
    sub_1C3C5F0CC();
    sub_1C3C4251C();
    v0 = sub_1C3D20354();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086258);
    }
  }
}

void sub_1C3C5F0CC()
{
  if (!qword_1EC086260)
  {
    sub_1C3C5F1F8(255, &qword_1EC086268, sub_1C3C315FC, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC086260);
    }
  }
}

void sub_1C3C5F164()
{
  if (!qword_1EC086270)
  {
    sub_1C3C5F1F8(255, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC086270);
    }
  }
}

void sub_1C3C5F1F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C3C5F25C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C3C5F1F8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C3C5F2DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C3C5F1F8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C3C5F34C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3C5F3C4(uint64_t a1, uint64_t a2)
{
  sub_1C3C29314();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C5F428(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C3C5F470(void *a1)
{
  v2 = [objc_opt_self() audiogramSampleType];
  v3 = [a1 displayTypeController];
  v25 = v2;
  v4 = [v3 displayTypeForObjectType_];

  if (v4)
  {
    v5 = v4;
    v6 = [a1 healthStore];
    v24 = [objc_allocWithZone(type metadata accessor for AudiogramLongitudinalChartDataSource()) initWithDisplayType:v5 healthStore:v6];

    v7 = [objc_allocWithZone(HKChartCache) init];
    [v7 setDataSource_];
    v8 = [objc_opt_self() sharedOperationManager];
    [v7 setOperationManager_];

    v9 = [objc_allocWithZone(HKCacheBackedChartSeriesDataSource) init];
    [v9 setChartCache_];
    v10 = [objc_allocWithZone(type metadata accessor for HKMultiLineSeries()) init];
    [v10 setDataSource_];
    sub_1C3CD7580();
    v12 = v11;
    v13 = type metadata accessor for AudiogramNumericAxis.AudiogramAxisScalingRules();
    v14 = objc_allocWithZone(v13);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v27.receiver = v14;
    v27.super_class = v13;
    v15 = objc_msgSendSuper2(&v27, sel_init);
    [v10 setYAxis_];
    [v10 setAxisScalingRule_];

    [v10 setAllowsSelection_];
    [v10 setAdjustYAxisForLabels_];
    v16 = v5;
    v17 = [a1 unitController];
    v26.receiver = objc_allocWithZone(type metadata accessor for AudiogramLongitudinalChartFormatter());
    v26.super_class = type metadata accessor for AudiogramChartDataFormatter();
    v18 = objc_msgSendSuper2(&v26, sel_init);
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 hk_chartCurrentValueValueFont];
    [v20 setMajorFont_];

    v22 = [v19 hk_chartCurrentValueKindFont];
    [v20 setMinorFont_];

    [v20 setUnitController_];
    [v20 setDisplayType_];

    v23 = [v25 code];
    [objc_allocWithZone(HKInteractiveChartDisplayType) initWithGraphSeries:v10 baseDisplayType:v16 valueFormatter:v20 dataTypeCode:v23];
  }

  else
  {
    __break(1u);
  }
}

unint64_t AttributedDurationFormatterUnitsStyle.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1C3C5F870@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1C3C5F97C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v40 = a3;
  v41 = a4;
  v43 = a2;
  sub_1C3C46020();
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C613B8();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6145C(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  sub_1C3C61428(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v40 - v23;
  sub_1C3D1DD14();
  sub_1C3C614F4(&qword_1EC0810D0, MEMORY[0x1E6968438]);
  sub_1C3D1DE14();
  sub_1C3C6153C();
  sub_1C3D1DE14();
  v25 = *(v7 + 56);
  sub_1C3C61590(v24, v9, sub_1C3C61428);
  sub_1C3C61590(v18, &v9[v25], sub_1C3C6145C);
  v26 = sub_1C3D1DD04();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v9, 1, v26) == 1)
  {
    goto LABEL_13;
  }

  sub_1C3C61658(v9, v21, sub_1C3C61428);
  v28 = (*(v27 + 88))(v21, v26);
  if (v28 != *MEMORY[0x1E69683F8])
  {
    if (v28 == *MEMORY[0x1E69683F0])
    {
      v34 = sub_1C3D1DD24();
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(&v9[v25], 1, v34) != 1)
      {
        sub_1C3C61658(&v9[v25], v12, sub_1C3C6145C);
        v36 = (*(v35 + 88))(v12, v34);
        if (v36 != *MEMORY[0x1E6968488] && v36 != *MEMORY[0x1E6968498])
        {
          (*(v35 + 8))(v12, v34);
        }
      }
    }

    else
    {
      (*(v27 + 8))(v21, v26);
    }

    goto LABEL_13;
  }

  v29 = sub_1C3D1DD24();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(&v9[v25], 1, v29) == 1)
  {
LABEL_13:
    v32 = v44;
    sub_1C3D1DDF4();
    v33 = v41;
    goto LABEL_14;
  }

  sub_1C3C61658(&v9[v25], v15, sub_1C3C6145C);
  v31 = (*(v30 + 88))(v15, v29);
  if (v31 != *MEMORY[0x1E6968488] && v31 != *MEMORY[0x1E6968498])
  {
    (*(v30 + 8))(v15, v29);
    goto LABEL_13;
  }

  v32 = v44;
  sub_1C3D1DDF4();
  v33 = v40;
LABEL_14:
  v37 = v33;
  sub_1C3C614F4(&qword_1EC080E58, sub_1C3C46020);
  v38 = sub_1C3D1DEA4();
  v46 = v33;
  sub_1C3C61364();
  sub_1C3D1DF54();
  v38(v45, 0);
  sub_1C3C615F8(v32, sub_1C3C46020);
  sub_1C3C615F8(&v9[v25], sub_1C3C6145C);
  return sub_1C3C615F8(v9, sub_1C3C61428);
}

id AttributedDurationFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttributedDurationFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3C5FFF0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v37 = sub_1C3D1DE24();
  v6 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C3D1DE04();
  v8 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C3D1DE34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C36BB4();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10, v15);
  v18 = MEMORY[0x1E69687C8];
  sub_1C3C614F4(&qword_1EC0862C8, MEMORY[0x1E69687C8]);
  sub_1C3D20224();
  sub_1C3C614F4(&qword_1EC085990, v18);
  v34 = (v6 + 8);
  v27 = (v8 + 8);
  v28 = (v8 + 16);
  while (1)
  {
    v19 = v35;
    sub_1C3D20424();
    sub_1C3C614F4(&qword_1EC0859A8, MEMORY[0x1E69687B0]);
    v20 = v37;
    v21 = sub_1C3D20034();
    (*v34)(v19, v20);
    if (v21)
    {
      break;
    }

    v22 = sub_1C3D20444();
    v23 = v29;
    v24 = v30;
    (*v28)(v29);
    v22(v36, 0);
    sub_1C3D20434();
    sub_1C3C5F97C(v23, v31, v32, v33);
    if (v4)
    {
      (*v27)(v23, v24);
      return sub_1C3C615F8(v17, sub_1C3C36BB4);
    }

    (*v27)(v23, v24);
  }

  return sub_1C3C615F8(v17, sub_1C3C36BB4);
}

uint64_t sub_1C3C60410(void *a1, void *a2, void *a3, void *a4)
{
  v91 = a3;
  v92 = a4;
  v89 = a2;
  v5 = sub_1C3D1DE34();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v86 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C3D20BF4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v76 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C3D20BA4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v72 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C3D20C74();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v12 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C3D20BC4();
  v80 = *(v13 - 8);
  v81 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v79 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C61290(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v83 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C45FEC(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v85 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C46020();
  v84 = v19;
  v82 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v69[0] = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C3D1E294();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69[2] = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C3D200B4();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v69[1] = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C3D20094();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v25 = sub_1C3D1DF24();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v26 = sub_1C3D20C64();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v69 - v31;
  v78 = sub_1C3D1DE74();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v69 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v90 = v69 - v38;
  sub_1C3D20CA4();
  v93 = v32;
  if (a1 == 1)
  {
    sub_1C3D20C54();
  }

  else
  {
    if (a1)
    {
      v94 = a1;
      result = sub_1C3D20A74();
      __break(1u);
      return result;
    }

    sub_1C3D20C34();
  }

  v39 = v36;
  sub_1C3D20CA4();
  if (sub_1C3D20C94())
  {
    v87 = v27;
    v88 = v26;
    if (qword_1EC080DC0 != -1)
    {
      swift_once();
    }

    v40 = qword_1EC08DBD8;
    v41 = sub_1C3D1DEC4();
    v86 = "VALUE_UNIT_FORMAT %@ %@";
    v43 = v42;

    sub_1C3D1DF14();
    sub_1C3D1DE84();
    v44 = v89;
    v94 = v89;
    sub_1C3C612C4();
    v45 = v44;
    sub_1C3D1DE94();
    v46 = v91;
    v94 = v91;
    sub_1C3C61364();
    v47 = v46;
    v91 = v39;
    sub_1C3D1DE94();
    sub_1C3D20084();
    sub_1C3D20074();
    sub_1C3D20064();
    sub_1C3D20074();
    sub_1C3D200A4();
    sub_1C3D1E284();
    sub_1C3D20124();
    sub_1C3D1DF14();
    v48 = v75;
    sub_1C3D1DE84();
    v94 = v44;
    sub_1C3D1DE94();
    v94 = v92;
    v49 = v92;
    sub_1C3D1DE94();
    v94 = v41;
    v95 = v43;
    v50 = v83;
    (*(v70 + 56))(v83, 1, 1, v71);
    sub_1C3C614F4(&qword_1EC0862C0, MEMORY[0x1E6968848]);
    sub_1C3C4999C();
    v51 = v85;
    v52 = v78;
    sub_1C3D1DFB4();
    sub_1C3C615F8(v50, sub_1C3C61290);

    if ((*(v82 + 48))(v51, 1, v84) == 1)
    {
      v53 = v77;
      (*(v77 + 8))(v91, v52);
      (*(v87 + 8))(v93, v88);
      sub_1C3C615F8(v51, sub_1C3C45FEC);
    }

    else
    {
      v65 = v51;
      v66 = v69[0];
      sub_1C3C61590(v65, v69[0], sub_1C3C46020);
      sub_1C3C614F4(&qword_1EC080E58, sub_1C3C46020);
      v67 = v91;
      sub_1C3D1DDC4();
      sub_1C3C615F8(v66, sub_1C3C46020);
      v53 = v77;
      (*(v77 + 8))(v67, v52);
      (*(v87 + 8))(v93, v88);
    }

    (*(v53 + 32))(v90, v48, v52);
  }

  else
  {
    sub_1C3C61490(0, &qword_1EC0862B8, MEMORY[0x1E696A1C0], MEMORY[0x1E69E6F90]);
    v54 = v27;
    v55 = v26;
    sub_1C3D20C24();
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1C3D5DCD0;
    sub_1C3D20C04();
    sub_1C3D20C14();
    sub_1C3C8C2C0(v56);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v57 = v93;
    (*(v54 + 16))(v29, v93, v55);
    sub_1C3D20B94();
    sub_1C3D20BE4();
    sub_1C3D20B84();
    v58 = v79;
    sub_1C3D20BD4();
    (*(v73 + 8))(v12, v74);
    v59 = v90;
    sub_1C3D20BB4();
    v60 = v89;
    v94 = v89;
    sub_1C3C612C4();
    v61 = v60;
    sub_1C3D1DE94();
    v62 = v86;
    sub_1C3D1DE44();
    v63 = v91;
    v64 = v92;
    sub_1C3C5FFF0(v62, v59, v63, v64);

    (*(v87 + 8))(v62, v88);
    (*(v80 + 8))(v58, v81);
    (*(v54 + 8))(v57, v55);
  }

  sub_1C3C61318();
  return sub_1C3D20624();
}

unint64_t sub_1C3C61200()
{
  result = qword_1EC0862B0;
  if (!qword_1EC0862B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0862B0);
  }

  return result;
}

unint64_t sub_1C3C612C4()
{
  result = qword_1EC0810C0;
  if (!qword_1EC0810C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0810C0);
  }

  return result;
}

unint64_t sub_1C3C61318()
{
  result = qword_1EC080E40;
  if (!qword_1EC080E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC080E40);
  }

  return result;
}

unint64_t sub_1C3C61364()
{
  result = qword_1EC0810C8;
  if (!qword_1EC0810C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0810C8);
  }

  return result;
}

void sub_1C3C613B8()
{
  if (!qword_1EC0862D0)
  {
    sub_1C3C61428(255);
    sub_1C3C6145C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0862D0);
    }
  }
}

void sub_1C3C61490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C3C614F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C3C6153C()
{
  result = qword_1EC0862E8;
  if (!qword_1EC0862E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0862E8);
  }

  return result;
}

uint64_t sub_1C3C61590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3C615F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3C61658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t BalanceCoordinateInfo.Context.TimeScope.hashValue.getter()
{
  v1 = *v0;
  sub_1C3D20B04();
  MEMORY[0x1C6930170](v1);
  return sub_1C3D20B34();
}

uint64_t BalanceCoordinateInfo.Context.init(selectedMetric:timeScope:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1C3C61798(a1, a3);
  result = type metadata accessor for BalanceCoordinateInfo.Context(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_1C3C61798(uint64_t a1, uint64_t a2)
{
  sub_1C3C617FC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C3C617FC()
{
  if (!qword_1EC0862F0)
  {
    sub_1C3D1E8C4();
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0862F0);
    }
  }
}

id BalanceCoordinateInfo.__allocating_init(collection:context:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  sub_1C3C4D7A4(a1, v5 + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_collection);
  sub_1C3C61994(a2, v5 + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_context);
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_1C3C619F8(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

id BalanceCoordinateInfo.init(collection:context:)(uint64_t a1, uint64_t a2)
{
  sub_1C3C4D7A4(a1, v2 + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_collection);
  sub_1C3C61994(a2, v2 + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_context);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BalanceCoordinateInfo(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_1C3C619F8(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

uint64_t sub_1C3C61994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalanceCoordinateInfo.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3C619F8(uint64_t a1)
{
  v2 = type metadata accessor for BalanceCoordinateInfo.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id BalanceCoordinateInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BalanceCoordinateInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceCoordinateInfo(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C3C61B44()
{
  result = qword_1EC086300;
  if (!qword_1EC086300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC086300);
  }

  return result;
}

uint64_t sub_1C3C61BEC()
{
  result = type metadata accessor for BalanceCoordinateInfo.Context(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C3C61CDC()
{
  sub_1C3C617FC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for BalanceCoordinateInfo.Context.TimeScope(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BalanceCoordinateInfo.Context.TimeScope(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C3C61EAC(void *a1)
{
  ObjectType = swift_getObjectType();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = v1;
LABEL_4:
    oslog = v4;
    [v4 showViewController:a1 sender:0];
    goto LABEL_5;
  }

  v4 = [v1 navigationController];
  if (v4)
  {
    goto LABEL_4;
  }

  if (qword_1EC0850A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v5, qword_1EC08DCB0);
  v6 = a1;
  oslog = sub_1C3D1ED84();
  v7 = sub_1C3D204F4();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    v20[1] = ObjectType;
    *v8 = 136315394;
    swift_getMetatypeMetadata();
    v10 = sub_1C3D20134();
    v12 = sub_1C3C22C28(v10, v11, v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = v6;
    v14 = [v13 description];
    v15 = sub_1C3D20104();
    v17 = v16;

    v18 = sub_1C3C22C28(v15, v17, v20);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_1C3942000, oslog, v7, "%s: navigation controller was nil, unable to show view controller %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v9, -1, -1);
    MEMORY[0x1C69321D0](v8, -1, -1);

    return;
  }

LABEL_5:
}

void sub_1C3C62114(void *a1, uint64_t a2, void *a3)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = a1;
  _sSo16UIViewControllerC8HealthUIE011hk_showViewB0_8animatedyAB_SbtF_0(v5);
}

Swift::Void __swiftcall UIViewController.hk_popToControllerAtIndex(_:animated:)(Swift::Int _, Swift::Bool animated)
{
  v3 = v2;
  v28 = animated;
  v31 = _;
  v4 = sub_1C3D1FDC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C3D1ED14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v27[-v14];
  v16 = [v2 traitCollection];
  sub_1C3D205F4();

  v17 = v3;
  v18 = [v3 traitCollection];
  sub_1C3D20614();

  v19 = sub_1C3D1FD84();
  v20 = *(v5 + 8);
  v29 = v4;
  v30 = v20;
  v20(v7, v4);
  (*(v9 + 104))(v11, *MEMORY[0x1E69C59D0], v8);
  sub_1C3C62D18(&qword_1EC086338, MEMORY[0x1E69C59D8]);
  sub_1C3D20254();
  sub_1C3D20254();
  v21 = *(v9 + 8);
  v21(v11, v8);
  if (v33 != v32 || (v19 & 1) == 0)
  {
    sub_1C3C62560(v31, v28);
LABEL_8:
    v21(v15, v8);
    return;
  }

  v22 = [v17 traitCollection];
  sub_1C3D20614();

  v23 = sub_1C3D1FDB4();
  v24 = v29;
  v30(v7, v29);
  v25 = v23 - v31;
  if (__OFSUB__(v23, v31))
  {
    __break(1u);
  }

  else if (!__OFSUB__(v25, 1))
  {
    if (v25 - 1 >= 1)
    {
      v26 = [v17 traitCollection];
      sub_1C3D20614();

      sub_1C3D1FDA4();
      v30(v7, v24);
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_1C3C62560(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v20 = v7;
    v8 = v3;
    v9 = v20;
  }

  else
  {
    v9 = [v3 navigationController];
    if (!v9)
    {
      if (qword_1EC0850A8 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  v21 = v9;
  v10 = [v9 viewControllers];
  sub_1C3C62CCC();
  ObjectType = sub_1C3D202B4();

  if (ObjectType >> 62)
  {
    if (sub_1C3D20964() > a1)
    {
      goto LABEL_6;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (*((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((ObjectType & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C692FEB0](a1, ObjectType);
    goto LABEL_10;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v11 = *(ObjectType + 8 * a1 + 32);
LABEL_10:
    v12 = v11;

    goto LABEL_16;
  }

  __break(1u);
LABEL_22:
  swift_once();
LABEL_12:
  v13 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v13, qword_1EC08DCB0);
  v21 = sub_1C3D1ED84();
  v14 = sub_1C3D204F4();
  if (os_log_type_enabled(v21, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    v22[1] = ObjectType;
    *v15 = 136315138;
    swift_getMetatypeMetadata();
    v17 = sub_1C3D20134();
    v19 = sub_1C3C22C28(v17, v18, v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1C3942000, v21, v14, "%s: navigation controller was nil", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1C69321D0](v16, -1, -1);
    MEMORY[0x1C69321D0](v15, -1, -1);

    return;
  }

LABEL_16:
}

void sub_1C3C62824(void *a1, uint64_t a2, Swift::Int a3, Swift::Bool a4)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1;
  UIViewController.hk_popToControllerAtIndex(_:animated:)(a3, a4);
}

uint64_t _sSo16UIViewControllerC8HealthUIE011hk_showViewB0_8animatedyAB_SbtF_0(void *a1)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_1C3D1ED24();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C3D1FDC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C3D1ED14();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = [v1 traitCollection];
  sub_1C3D205F4();

  v18 = [v2 traitCollection];
  sub_1C3D20614();

  v19 = sub_1C3D1FD84();
  v26 = *(v6 + 8);
  v27 = v5;
  v26(v8, v5);
  (*(v10 + 104))(v12, *MEMORY[0x1E69C59D0], v9);
  sub_1C3C62D18(&qword_1EC086338, MEMORY[0x1E69C59D8]);
  sub_1C3D20254();
  sub_1C3D20254();
  v20 = *(v10 + 8);
  v20(v12, v9);
  if (v33 == v32 && (v19 & 1) != 0)
  {
    v21 = v31;
    v22 = v28;
    sub_1C3D1ED34();
    v23 = [v2 traitCollection];
    sub_1C3D20614();

    sub_1C3C62D18(&qword_1EC086348, MEMORY[0x1E69C59E8]);
    v24 = v30;
    sub_1C3D1FD94();
    v26(v8, v27);
    (*(v29 + 8))(v22, v24);
  }

  else
  {
    sub_1C3C61EAC(v31);
  }

  return (v20)(v16, v9);
}

unint64_t sub_1C3C62CCC()
{
  result = qword_1EC086340;
  if (!qword_1EC086340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC086340);
  }

  return result;
}

uint64_t sub_1C3C62D18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3C62D98(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1C3D1FD44();
}

char *sub_1C3C62F68(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v5;
    v18[0] = *(v5 - 1);
    v18[1] = v8;

    a1(&v19, v18);
    if (v3)
    {

      return v6;
    }

    v9 = v19;
    v10 = *(v19 + 16);
    v11 = *(v6 + 2);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v12 <= *(v6 + 3) >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v13 = v11 + v10;
      }

      else
      {
        v13 = v11;
      }

      result = sub_1C3C46A14(result, v13, 1, v6);
      v6 = result;
      if (*(v9 + 16))
      {
LABEL_15:
        if ((*(v6 + 3) >> 1) - *(v6 + 2) < v10)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v14 = *(v6 + 2);
          v15 = __OFADD__(v14, v10);
          v16 = v14 + v10;
          if (v15)
          {
            goto LABEL_25;
          }

          *(v6 + 2) = v16;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_23;
    }

LABEL_4:
    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_1C3C630FC(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    result = a1(&v19, v5);
    if (v3)
    {

      return v6;
    }

    v8 = v19;
    v9 = *(v19 + 16);
    v10 = v6[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v11 <= v6[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      v6 = sub_1C3C469E0(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      if (*(v8 + 16))
      {
LABEL_15:
        v14 = (v6[3] >> 1) - v6[2];
        result = sub_1C3D1E9C4();
        if (v14 < v9)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v15 = v6[2];
          v16 = __OFADD__(v15, v9);
          v17 = v15 + v9;
          if (v16)
          {
            goto LABEL_25;
          }

          v6[2] = v17;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    v5 += 40;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t AccessoryRectangularChartView.init(titleOptions:detailOptions:baseAccessibilityIdentifier:chartContent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t AccessoryRectangularChartView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a1;
  v24 = a2;
  type metadata accessor for AccessoryRectangularTitleView();
  v4 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_1C3D1FD34();
  swift_getWitnessTable();
  v5 = sub_1C3D1FC84();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = sub_1C3D1F1A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = v2[1];
  v30[0] = *v2;
  v30[1] = v15;
  v30[2] = v2[2];
  sub_1C3D1F434();
  v16 = *(v22 + 24);
  v25 = v4;
  v26 = v16;
  v27 = v30;
  sub_1C3D1FC74();
  sub_1C3D1FD24();
  WitnessTable = swift_getWitnessTable();
  sub_1C3D1FA94();
  (*(v23 + 8))(v7, v5);
  v28 = WitnessTable;
  v29 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  v17 = *(v9 + 16);
  v17(v14, v11, v8);
  v18 = *(v9 + 8);
  v18(v11, v8);
  v17(v24, v14, v8);
  return (v18)(v14, v8);
}

uint64_t type metadata accessor for AccessoryRectangularTitleView()
{
  result = qword_1EC080EB8;
  if (!qword_1EC080EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3C63650@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v35 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v29 - v10;
  v11 = type metadata accessor for AccessoryRectangularTitleView();
  MEMORY[0x1EEE9AC00](v11);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  sub_1C3D20374();
  v31 = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *a1;
  v44 = a1[1];
  v17 = v44;
  v45 = v16;
  v43 = *(a1 + 1);
  v18 = v43;
  *v15 = v16;
  *(v15 + 1) = v17;
  *(v15 + 1) = v18;
  v19 = *(v11 + 28);
  *&v15[v19] = swift_getKeyPath();
  sub_1C3C657F4(0, &qword_1EC081398, MEMORY[0x1E6985778], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v30 = v11;
  v20 = a1[4];
  v21 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69E62F8];
  sub_1C3C67AAC(&v45, v42, &qword_1EC080E80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1C3C65AC8);
  sub_1C3C67AAC(&v44, v42, &qword_1EC080E80, v21, v22, sub_1C3C65AC8);
  v23 = sub_1C3C67F24(&v43, v42);
  v20(v23);
  v24 = *(v6 + 16);
  v25 = v33;
  v24(v33, v8, a2);
  v26 = *(v6 + 8);
  v26(v8, a2);
  v27 = v32;
  sub_1C3C67A44(v15, v32, type metadata accessor for AccessoryRectangularTitleView);
  v42[0] = v27;
  v24(v8, v25, a2);
  v40 = 0;
  v41 = 0;
  v42[1] = v8;
  v42[2] = &v40;
  v39[0] = v30;
  v39[1] = a2;
  v39[2] = MEMORY[0x1E6981840];
  v36 = sub_1C3C65DF8(&qword_1EC080EC8, type metadata accessor for AccessoryRectangularTitleView);
  v37 = v34;
  v38 = MEMORY[0x1E6981838];
  sub_1C3C62D98(v42, 3uLL, v39);
  v26(v25, a2);
  sub_1C3C67DB4(v15, type metadata accessor for AccessoryRectangularTitleView);
  v26(v8, a2);
  sub_1C3C67DB4(v27, type metadata accessor for AccessoryRectangularTitleView);
}

uint64_t sub_1C3C63AB8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C3C63AF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C3C63B3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C3C63BC8()
{
  sub_1C3C65AC8(319, &qword_1EC080E80, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C3C657F4(319, &qword_1EC081388, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C3C63CC8()
{
  if (*v0)
  {
    return 0x6C6961746564;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1C3C63CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1C3D20A54() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C3D20A54();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C3C63DE8(uint64_t a1)
{
  v2 = sub_1C3C68300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C3C63E24(uint64_t a1)
{
  v2 = sub_1C3C68300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C3C63E60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  sub_1C3C68354(0, &qword_1EC080D98, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C3C68300();
  sub_1C3D20B64();
  v15 = 0;
  sub_1C3D209E4();
  if (!v5)
  {
    v14 = 1;
    sub_1C3D209E4();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1C3C63FE0()
{
  sub_1C3D20B04();
  sub_1C3D20164();
  sub_1C3D20164();
  return sub_1C3D20B34();
}

uint64_t sub_1C3C64048()
{
  sub_1C3D20164();

  return sub_1C3D20164();
}

uint64_t sub_1C3C64098()
{
  sub_1C3D20B04();
  sub_1C3D20164();
  sub_1C3D20164();
  return sub_1C3D20B34();
}

uint64_t sub_1C3C640FC@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];

  MEMORY[0x1C692F800](58, 0xE100000000000000);
  result = MEMORY[0x1C692F800](v3, v4);
  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t sub_1C3C64164@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C3C6810C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1C3C641B4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1C3D20A54(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1C3D20A54();
    }
  }

  return result;
}

uint64_t sub_1C3C64258(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryRectangularTitleView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = sub_1C3C64480();
  swift_getKeyPath();
  sub_1C3C67A44(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryRectangularTitleView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C3C67E14(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AccessoryRectangularTitleView);
  sub_1C3C65AC8(0, &unk_1EC080E90, &type metadata for AccessoryRectangularTitleView.TitleDetail, MEMORY[0x1E69E62F8]);
  sub_1C3C65630();
  sub_1C3C65B18();
  sub_1C3C65B94();
  sub_1C3C65C68();
  sub_1C3D1FCB4();
}

char *sub_1C3C64480()
{
  v6[5] = MEMORY[0x1E69E7CD0];

  v2 = sub_1C3C67BAC(v1);

  if (!v2[2])
  {

    v2 = &unk_1F42FA558;
  }

  MEMORY[0x1EEE9AC00](v3);
  v6[2] = v0;
  v4 = sub_1C3C62F68(sub_1C3C67D0C, v6, v2);

  return v4;
}

void sub_1C3C6454C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_1C3D1F3F4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_1C3C65EBC();
  sub_1C3C64908(v5, v6, a2, v7, v8, a3 + *(v9 + 44));
  KeyPath = swift_getKeyPath();
  sub_1C3C656EC(0, &qword_1EC081040, sub_1C3C65760, sub_1C3C4BEDC);
  v12 = a3 + *(v11 + 36);
  *v12 = KeyPath;
  *(v12 + 8) = 1;
  *(v12 + 16) = 0;
  v13 = swift_getKeyPath();

  sub_1C3C65630();
  v15 = a3 + *(v14 + 36);
  *v15 = v13;
  *(v15 + 8) = 1;
}

uint64_t sub_1C3C646B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v15 = *a1;
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_1C3C67BAC(v4);

  v6 = v5[2];
  if (v6 || (, v5 = &unk_1F42FA588, (v6 = qword_1F42FA598) != 0))
  {
    v14 = a2;
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C3C23D68(0, v6, 0);
    v7 = v17;
    v8 = v5 + 5;
    do
    {
      v9 = *v8;
      v16 = *(v8 - 1);

      sub_1C3D20364();
      sub_1C3D20314();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C3C23D68((v10 > 1), v11 + 1, 1);
      }

      *(v17 + 16) = v11 + 1;
      v12 = (v17 + 32 * v11);
      v12[4] = v15;
      v12[5] = v3;
      v12[6] = v16;
      v12[7] = v9;
      v8 += 2;
      --v6;
    }

    while (v6);

    a2 = v14;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1C3C64908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v96 = a5;
  v94 = a4;
  v110 = a3;
  v108 = a6;
  sub_1C3C659C0();
  v103 = v8;
  v102 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v99 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C65960();
  v105 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v104 = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C656EC(0, &qword_1EC081038, sub_1C3C65960, MEMORY[0x1E697CBE8]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v107 = v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v106 = v90 - v15;
  v16 = sub_1C3D1FEA4();
  v112 = *(v16 - 8);
  v113 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v95 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v109 = v90 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v90 - v21;
  sub_1C3C65900();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v98 = v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v111 = v90 - v26;
  sub_1C3D20374();
  v97 = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v100 = a1;
  v116 = a1;
  v117 = a2;
  v27 = sub_1C3C4999C();
  v101 = a2;

  v90[1] = v27;
  v28 = sub_1C3D1F994();
  v30 = v29;
  v32 = v31;
  sub_1C3C65240();
  v33 = sub_1C3D1F954();
  v35 = v34;
  v37 = v36;

  sub_1C3C2EE8C(v28, v30, v32 & 1);

  v90[0] = *(type metadata accessor for AccessoryRectangularTitleView() + 28);
  sub_1C3C65F54(v22);
  v38 = v109;
  sub_1C3D1FE94();
  LOBYTE(v28) = sub_1C3D1FE84();
  v39 = v112 + 8;
  v40 = *(v112 + 8);
  v40(v38, v113);
  if (v28)
  {
    sub_1C3D1FB24();
  }

  else
  {
    sub_1C3D1FB34();
  }

  v40(v22, v113);
  v41 = sub_1C3D1F914();
  v43 = v42;
  v112 = v39;
  v45 = v44;
  v91 = v40;
  v47 = v46;
  sub_1C3C2EE8C(v33, v35, v37 & 1);

  v116 = v41;
  v117 = v43;
  v118 = v45 & 1;
  v119 = v47;
  v48 = *(v110 + 24);
  v92 = *(v110 + 16);
  v114 = v92;
  v115 = v48;
  v93 = v48;

  MEMORY[0x1C692F800](0xD000000000000028, 0x80000001C3D83C60);
  sub_1C3D1FA64();

  sub_1C3C2EE8C(v41, v43, v45 & 1);

  v116 = v94;
  v117 = v96;

  v49 = sub_1C3D1F994();
  v51 = v50;
  LOBYTE(v43) = v52;
  sub_1C3C65240();
  v53 = sub_1C3D1F954();
  v55 = v54;
  v57 = v56;
  v58 = v91;

  sub_1C3C2EE8C(v49, v51, v43 & 1);

  v59 = v95;
  sub_1C3C65F54(v95);
  v60 = v109;
  sub_1C3D1FE94();
  LOBYTE(v49) = sub_1C3D1FE84();
  v58(v60, v113);
  if (v49)
  {
    sub_1C3D1FB14();
  }

  else
  {
    sub_1C3D1FAE4();
  }

  v58(v59, v113);
  v61 = sub_1C3D1F914();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  sub_1C3C2EE8C(v53, v55, v57 & 1);

  v116 = v61;
  v117 = v63;
  v118 = v65 & 1;
  v119 = v67;
  v68 = v99;
  sub_1C3D1F9A4();
  sub_1C3C2EE8C(v61, v63, v65 & 1);

  v69 = sub_1C3D1F774();
  v70 = sub_1C3D1F784();
  sub_1C3D1F784();
  if (sub_1C3D1F784() != v69)
  {
    v70 = sub_1C3D1F784();
  }

  sub_1C3D1F014();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v104;
  (*(v102 + 32))(v104, v68, v103);
  v80 = v79 + *(v105 + 36);
  *v80 = v70;
  *(v80 + 8) = v72;
  *(v80 + 16) = v74;
  *(v80 + 24) = v76;
  *(v80 + 32) = v78;
  *(v80 + 40) = 0;
  v116 = v92;
  v117 = v93;

  MEMORY[0x1C692F800](0xD000000000000029, 0x80000001C3D83C90);
  sub_1C3C67994();
  v81 = v106;
  sub_1C3D1FA64();

  sub_1C3974304(v79);
  v82 = v111;
  v83 = v98;
  sub_1C3C67A44(v111, v98, sub_1C3C65900);
  v84 = v107;
  sub_1C3974360(v81, v107);
  v85 = v108;
  sub_1C3C67A44(v83, v108, sub_1C3C65900);
  sub_1C3C65858();
  v87 = v86;
  sub_1C3974360(v84, v85 + *(v86 + 48));
  v88 = v85 + *(v87 + 64);
  *v88 = 0;
  *(v88 + 8) = 0;
  sub_1C39743F4(v81);
  sub_1C3C67DB4(v82, sub_1C3C65900);
  sub_1C39743F4(v84);
  sub_1C3C67DB4(v83, sub_1C3C65900);
}

uint64_t sub_1C3C65240()
{
  sub_1C3C657F4(0, &qword_1EC081008, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_1C3D1F7E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedBehavior];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 isAppleWatch];

    if (!v9)
    {
      sub_1C3D1F7D4();
      v10 = *MEMORY[0x1E6980E28];
      v11 = sub_1C3D1F814();
      v12 = *(v11 - 8);
      (*(v12 + 104))(v2, v10, v11);
      (*(v12 + 56))(v2, 0, 1, v11);
      sub_1C3D1F854();
      sub_1C3C67B20(v2);
      (*(v4 + 8))(v6, v3);
      sub_1C3D1F834();
      v13 = sub_1C3D1F874();

      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEDE2DE0]();
}

uint64_t sub_1C3C654C4@<X0>(_BYTE *a1@<X8>)
{
  *a1 = sub_1C3D1F704();
  sub_1C3C65504();
  return sub_1C3C64258(v1);
}

void sub_1C3C65504()
{
  if (!qword_1EC081070)
  {
    sub_1C3C65570();
    sub_1C3C2EC0C();
    v0 = sub_1C3D1F144();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081070);
    }
  }
}

void sub_1C3C65570()
{
  if (!qword_1EC080FE0)
  {
    sub_1C3C65AC8(255, &unk_1EC080E90, &type metadata for AccessoryRectangularTitleView.TitleDetail, MEMORY[0x1E69E62F8]);
    sub_1C3C65630();
    sub_1C3C65B18();
    sub_1C3C65B94();
    v0 = sub_1C3D1FCC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC080FE0);
    }
  }
}

void sub_1C3C65630()
{
  if (!qword_1EC081028)
  {
    sub_1C3C656EC(255, &qword_1EC081040, sub_1C3C65760, sub_1C3C4BEDC);
    sub_1C3C65AC8(255, &qword_1EC081010, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081028);
    }
  }
}

void sub_1C3C656EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1C3D1F1A4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1C3C65760()
{
  if (!qword_1EC080FF0)
  {
    sub_1C3C657F4(255, &qword_1EC080FD0, sub_1C3C65858, MEMORY[0x1E6981F40]);
    sub_1C3C65A40();
    v0 = sub_1C3D1FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC080FF0);
    }
  }
}

void sub_1C3C657F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C3C65858()
{
  if (!qword_1EC081060)
  {
    sub_1C3C65900();
    sub_1C3C656EC(255, &qword_1EC081038, sub_1C3C65960, MEMORY[0x1E697CBE8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC081060);
    }
  }
}

void sub_1C3C65900()
{
  if (!qword_1EC081068)
  {
    sub_1C3D1F6E4();
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081068);
    }
  }
}

void sub_1C3C65960()
{
  if (!qword_1EC081050)
  {
    sub_1C3C659C0();
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081050);
    }
  }
}

void sub_1C3C659C0()
{
  if (!qword_1EC081000)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC081000);
    }
  }
}

unint64_t sub_1C3C65A40()
{
  result = qword_1EC080FD8;
  if (!qword_1EC080FD8)
  {
    sub_1C3C657F4(255, &qword_1EC080FD0, sub_1C3C65858, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080FD8);
  }

  return result;
}

void sub_1C3C65AC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C3C65B18()
{
  result = qword_1EC080E88;
  if (!qword_1EC080E88)
  {
    sub_1C3C65AC8(255, &unk_1EC080E90, &type metadata for AccessoryRectangularTitleView.TitleDetail, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080E88);
  }

  return result;
}

unint64_t sub_1C3C65B94()
{
  result = qword_1EC080ED8;
  if (!qword_1EC080ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC080ED8);
  }

  return result;
}

void sub_1C3C65BE8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccessoryRectangularTitleView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1C3C6454C(a1, v6, a2);
}

unint64_t sub_1C3C65C68()
{
  result = qword_1EC081030;
  if (!qword_1EC081030)
  {
    sub_1C3C65630();
    sub_1C3C65CE8();
    sub_1C3C65E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081030);
  }

  return result;
}

unint64_t sub_1C3C65CE8()
{
  result = qword_1EC081048;
  if (!qword_1EC081048)
  {
    sub_1C3C656EC(255, &qword_1EC081040, sub_1C3C65760, sub_1C3C4BEDC);
    sub_1C3C65DF8(&qword_1EC080FF8, sub_1C3C65760);
    sub_1C3C65DF8(&qword_1EC0811F8, sub_1C3C4BEDC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081048);
  }

  return result;
}

uint64_t sub_1C3C65DF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C3C65E40()
{
  result = qword_1EC081018;
  if (!qword_1EC081018)
  {
    sub_1C3C65AC8(255, &qword_1EC081010, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC081018);
  }

  return result;
}

void sub_1C3C65EBC()
{
  if (!qword_1EC081078)
  {
    sub_1C3C657F4(255, &qword_1EC080FD0, sub_1C3C65858, MEMORY[0x1E6981F40]);
    v0 = sub_1C3D1F144();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC081078);
    }
  }
}

uint64_t sub_1C3C65F54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C3D1F3B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6985778];
  v9 = MEMORY[0x1E697DCB8];
  sub_1C3C657F4(0, &qword_1EC081398, MEMORY[0x1E6985778], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1C3C67AAC(v2, &v16 - v11, &qword_1EC081398, v8, v9, sub_1C3C657F4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1C3D1FEA4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_1C3D20504();
    v15 = sub_1C3D1F6F4();
    sub_1C3D1ED54();

    sub_1C3D1F3A4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1C3C66194@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C3D1F384();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C3C661F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C3D20B04();
  sub_1C3D20164();
  v8 = sub_1C3D20B34();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C3D20A54() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1C3C66C30(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C3C66348(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  sub_1C3C29314();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v24 = &v24 - v10;
  v25 = v2;
  v11 = *v2;
  sub_1C3D20B04();
  sub_1C3D1FE54();
  sub_1C3C67D80();
  sub_1C3D1FF84();
  v12 = *(v5 + 36);
  v30 = a2;
  v27 = v12;
  v28 = v5;
  sub_1C3D1FF84();
  v13 = sub_1C3D20B34();
  v29 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v6 + 72);
    while (1)
    {
      sub_1C3C67A44(*(v29 + 48) + v17 * v15, v8, sub_1C3C29314);
      sub_1C3C65DF8(&unk_1EC0862A0, MEMORY[0x1E696B418]);
      if (sub_1C3D20034())
      {
        v19 = sub_1C3D20034();
        sub_1C3C67DB4(v8, sub_1C3C29314);
        if (v19)
        {
          sub_1C3C67DB4(v30, sub_1C3C29314);
          sub_1C3C67A44(*(v29 + 48) + v17 * v15, v26, sub_1C3C29314);
          return 0;
        }
      }

      else
      {
        sub_1C3C67DB4(v8, sub_1C3C29314);
      }

      v15 = (v15 + 1) & v16;
      v18 = v30;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  v18 = v30;
LABEL_9:
  v21 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v24;
  sub_1C3C67A44(v18, v24, sub_1C3C29314);
  v31 = *v21;
  sub_1C3C66DB0(v23, v15, isUniquelyReferenced_nonNull_native);
  *v21 = v31;
  sub_1C3C67E14(v18, v26, sub_1C3C29314);
  return 1;
}

uint64_t sub_1C3C6669C()
{
  v1 = v0;
  v2 = *v0;
  sub_1C3C67D28();
  result = sub_1C3D207F4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C3D20B04();
      sub_1C3D20164();
      result = sub_1C3D20B34();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}