void sub_251A9FE94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_251A9FEF4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251A85F5C(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251A9FF6C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251A85F5C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251A9FFEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251A85F5C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251AA005C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AA00E0(uint64_t a1)
{
  v3 = sub_251C702E4();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v64 = (&v50 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v62 = &v50 - v9;
  v50 = v1;
  v68 = MEMORY[0x277D84F90];
  v13 = v10;
  sub_251C0B6AC(0, v11, 0);
  v12 = v68;
  v14 = a1 + 56;
  v15 = -1 << *(a1 + 32);
  result = sub_251C715F4();
  v17 = v13;
  v18 = result;
  v19 = 0;
  v60 = v13 + 88;
  v59 = *MEMORY[0x277D112F0];
  v57 = v3;
  v58 = (v13 + 8);
  v52 = (v13 + 96);
  v51 = a1 + 64;
  v54 = v13 + 16;
  v55 = v11;
  v63 = a1;
  v56 = v13;
  v61 = a1 + 56;
  while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
  {
    v21 = v18 >> 6;
    if ((*(v14 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_24;
    }

    v67 = v12;
    v22 = *(a1 + 36);
    v65 = v19;
    v66 = v22;
    v23 = *(v17 + 16);
    v24 = v62;
    v25 = v17;
    v23(v62, *(a1 + 48) + *(v17 + 72) * v18, v3);
    v26 = v64;
    v23(v64, v24, v3);
    v27 = (*(v25 + 88))(v26, v3);
    if (v27 == v59)
    {
      (*v52)(v26, v3);
      v28 = v3;
      v29 = *v26;
      v30 = [*v26 identifier];
      v31 = sub_251C70F14();
      v33 = v32;

      result = (*v58)(v24, v28);
    }

    else
    {
      v23(v53, v24, v3);
      v31 = sub_251C70F74();
      v34 = v26;
      v33 = v35;
      v36 = v3;
      v37 = *v58;
      (*v58)(v34, v36);
      result = v37(v24, v36);
    }

    v12 = v67;
    v68 = v67;
    v39 = *(v67 + 16);
    v38 = *(v67 + 24);
    if (v39 >= v38 >> 1)
    {
      result = sub_251C0B6AC((v38 > 1), v39 + 1, 1);
      v12 = v68;
    }

    *(v12 + 16) = v39 + 1;
    v40 = v12 + 16 * v39;
    *(v40 + 32) = v31;
    *(v40 + 40) = v33;
    a1 = v63;
    v20 = 1 << *(v63 + 32);
    v14 = v61;
    if (v18 >= v20)
    {
      goto LABEL_25;
    }

    v41 = *(v61 + 8 * v21);
    if ((v41 & (1 << v18)) == 0)
    {
      goto LABEL_26;
    }

    if (v66 != *(v63 + 36))
    {
      goto LABEL_27;
    }

    v42 = v41 & (-2 << (v18 & 0x3F));
    if (v42)
    {
      v20 = __clz(__rbit64(v42)) | v18 & 0x7FFFFFFFFFFFFFC0;
      v17 = v56;
      v3 = v57;
    }

    else
    {
      v43 = v21 << 6;
      v44 = v21 + 1;
      v45 = (v51 + 8 * v21);
      v3 = v57;
      while (v44 < (v20 + 63) >> 6)
      {
        v47 = *v45++;
        v46 = v47;
        v43 += 64;
        ++v44;
        if (v47)
        {
          v48 = v56;
          result = sub_251AA935C(v18, v66, 0);
          v17 = v48;
          v20 = __clz(__rbit64(v46)) + v43;
          goto LABEL_4;
        }
      }

      v49 = v56;
      result = sub_251AA935C(v18, v66, 0);
      v17 = v49;
    }

LABEL_4:
    v19 = v65 + 1;
    v18 = v20;
    if (v65 + 1 == v55)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_251AA0554()
{
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  v94 = *(DiagnosticsTask - 8);
  v2 = DiagnosticsTask - 8;
  v93 = *(v94 + 64);
  MEMORY[0x28223BE20](DiagnosticsTask - 8);
  v92 = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA0FCC();
  v83 = v4;
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_251C701E4();
  v7 = *(v95 - 8);
  v74 = *(v7 + 64);
  v8 = MEMORY[0x28223BE20](v95);
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v68 - v11;
  sub_251AA11F4(0);
  v85 = v13;
  v86 = *(v13 - 8);
  v14 = *(v86 + 64);
  MEMORY[0x28223BE20](v13);
  v81 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA1248();
  v17 = *(v16 - 8);
  v88 = v16;
  v89 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v82 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA12DC();
  v21 = *(v20 - 8);
  v90 = v20;
  v91 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v87 = v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_251C70014();
  v72 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v28;
  MEMORY[0x28223BE20](v27);
  v79 = v68 - v30;
  sub_251C70004();
  v96 = v0;
  v31 = sub_251AA137C();
  v68[1] = v31;
  v70 = v2;
  v32 = __swift_project_boxed_opaque_existential_1((v0 + *(v2 + 40)), *(v0 + *(v2 + 40) + 24));
  v99[3] = &type metadata for ClinicalSharingQueryDefaultDataProvider;
  v99[4] = &off_2863FD718;
  v99[0] = swift_allocObject();
  sub_251AA1810((v32 + 3), v99[0] + 16);
  v69 = v12;
  sub_251C70184();
  v33 = *(v2 + 48);
  v98 = v31;
  sub_251A823B4(v99, &v97);
  v34 = v10;
  v35 = v10;
  v36 = v95;
  (*(v7 + 16))(v35, v12, v95);
  v37 = *(v25 + 16);
  v76 = v25 + 16;
  v77 = v37;
  v38 = v29;
  v71 = v29;
  v37(v29, (v96 + v33), v24);
  v39 = *(v7 + 80);
  v40 = v7;
  v68[0] = v7;
  v41 = (v39 + 56) & ~v39;
  v42 = *(v25 + 80);
  v43 = v25;
  v80 = v25;
  v44 = (v74 + v42 + v41) & ~v42;
  v45 = swift_allocObject();
  sub_251A7E8D8(&v97, v45 + 16);
  (*(v40 + 32))(v45 + v41, v34, v36);
  v46 = *(v43 + 32);
  v73 = v43 + 32;
  v74 = v46;
  v46(v45 + v44, v38, v24);
  sub_251C70964();
  sub_251AA1134();
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251AA10B4();
  sub_251AA11AC(&qword_2813E2178, sub_251AA1134);
  sub_251AA11AC(&qword_2813E21C8, sub_251AA10B4);
  v47 = v78;
  sub_251C70B94();

  sub_251AA11AC(&qword_27F4791A0, sub_251AA0FCC);
  v48 = v83;
  v49 = sub_251C70A94();

  (*(v84 + 8))(v47, v48);
  (*(v68[0] + 8))(v69, v95);
  __swift_destroy_boxed_opaque_existential_1(v99);
  v50 = v96;
  v51 = sub_251AA186C(v96 + *(v70 + 36), *(v96 + *(v70 + 44)), v49);

  v99[0] = v51;
  type metadata accessor for QueryOutput(0);
  v52 = v81;
  sub_251C70AE4();

  sub_251AA11AC(&qword_27F479188, sub_251AA11F4);
  v53 = v82;
  v54 = v85;
  sub_251C70B64();
  (*(v86 + 8))(v52, v54);
  v55 = v92;
  sub_251AA8828(v50, v92, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  v56 = v71;
  v57 = v79;
  v58 = v72;
  v77(v71, v79, v72);
  v59 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v60 = (v93 + v42 + v59) & ~v42;
  v61 = swift_allocObject();
  sub_251AA8650(v55, v61 + v59, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  v62 = v58;
  v74(v61 + v60, v56, v58);
  sub_251AA11AC(&qword_27F479198, sub_251AA1248);
  v64 = v87;
  v63 = v88;
  sub_251C70B54();

  (*(v89 + 8))(v53, v63);
  sub_251AA11AC(&qword_27F4791A8, sub_251AA12DC);
  v65 = v90;
  v66 = sub_251C70A94();
  (*(v91 + 8))(v64, v65);
  (*(v80 + 8))(v57, v62);
  return v66;
}

void sub_251AA0FCC()
{
  if (!qword_27F479170)
  {
    sub_251AA10B4();
    sub_251AA1134();
    sub_251AA11AC(&qword_2813E21C8, sub_251AA10B4);
    sub_251AA11AC(&qword_2813E2178, sub_251AA1134);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479170);
    }
  }
}

void sub_251AA10B4()
{
  if (!qword_2813E21C0)
  {
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251AA98B0(255, &qword_2813E1C30);
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E21C0);
    }
  }
}

void sub_251AA1134()
{
  if (!qword_2813E2170)
  {
    sub_251AA98B0(255, &qword_2813E1C30);
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2170);
    }
  }
}

uint64_t sub_251AA11AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251AA1248()
{
  if (!qword_27F479180)
  {
    sub_251AA11F4(255);
    sub_251AA11AC(&qword_27F479188, sub_251AA11F4);
    v0 = sub_251C708C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479180);
    }
  }
}

void sub_251AA12DC()
{
  if (!qword_27F479190)
  {
    sub_251AA1248();
    sub_251AA11AC(&qword_27F479198, sub_251AA1248);
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479190);
    }
  }
}

uint64_t sub_251AA137C()
{
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  v2 = DiagnosticsTask - 8;
  v28 = *(DiagnosticsTask - 8);
  v26[2] = *(v28 + 64);
  MEMORY[0x28223BE20](DiagnosticsTask);
  v27 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA8D3C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA8EF0();
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_project_boxed_opaque_existential_1((v0 + *(v2 + 40)), *(v0 + *(v2 + 40) + 24))[2];
  v33[3] = &type metadata for ClinicalSharingAccountStore;
  v33[4] = &off_2863F67B8;
  v33[0] = v15;
  v32 = *__swift_project_boxed_opaque_existential_1(v33, &type metadata for ClinicalSharingAccountStore);
  v16 = off_2863F67E8;
  v17 = v15;
  v31 = v16();
  sub_251AA8E00();
  v26[0] = v18;
  sub_251AA8E98(0, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  sub_251AA11AC(&qword_2813E2118, sub_251AA8E00);
  sub_251C70AE4();

  sub_251AA11AC(&qword_2813E25B0, sub_251AA8D3C);
  v19 = sub_251C70A94();
  (*(v6 + 8))(v9, v5);
  v32 = v19;
  v20 = v27;
  sub_251AA8828(v26[1], v27, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_251AA8650(v20, v22 + v21, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
  sub_251C70964();
  sub_251AA1134();
  sub_251AA11AC(&qword_2813E2178, sub_251AA1134);
  sub_251C70B94();

  __swift_destroy_boxed_opaque_existential_1(v33);
  sub_251AA11AC(&qword_27F479220, sub_251AA8EF0);
  v23 = v29;
  v24 = sub_251C70A94();
  (*(v30 + 8))(v14, v23);
  return v24;
}

id sub_251AA186C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v44 = a1;
  sub_251AA86B8(0);
  v5 = v4;
  v49 = *(v4 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251C6FE64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PublisherOutputWriter();
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v53 = a3;
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = [result isAppleInternalInstall];

  sub_251AA10B4();
  v22 = v21;
  v50 = sub_251AA11AC(&qword_2813E21C8, sub_251AA10B4);
  v51 = v22;
  result = sub_251C70A94();
  if (v20)
  {
    v43 = v5;
    v23 = result;
    v24 = *(v9 + 16);
    v24(v12, v44, v8);
    v24(v17, v12, v8);
    v25 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    (*(v9 + 8))(v12, v8);
    *&v17[*(v13 + 20)] = v25;
    v26 = v47;
    if (v47)
    {
      v35 = swift_allocObject();
      v35[2] = sub_251AFC004;
      v35[3] = 0;
      v35[4] = 1852797802;
      v35[5] = 0xE400000000000000;
      v52 = v23;
      v36 = v46;
      sub_251AA8828(v17, v46, type metadata accessor for PublisherOutputWriter);
      v37 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = sub_251AAA7D4;
      *(v38 + 24) = v35;
      sub_251AA8650(v36, v38 + v37, type metadata accessor for PublisherOutputWriter);
      type metadata accessor for ClinicalSharingQueryOutput(0);

      v39 = v48;
      sub_251C70B54();

      sub_251AA11AC(&qword_27F4791C8, sub_251AA86B8);
      v28 = v43;
      v40 = sub_251C70A94();

      (*(v49 + 8))(v39, v28);
      v27 = v40;
      if ((v26 & 2) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v27 = v23;
      v28 = v43;
      if ((v47 & 2) == 0)
      {
LABEL_7:
        v52 = v27;
        v41 = sub_251C70A94();
        sub_251AA87A8(v17, type metadata accessor for PublisherOutputWriter);

        return v41;
      }
    }

    v29 = swift_allocObject();
    v29[2] = sub_251AFC140;
    v29[3] = 0;
    v29[4] = 25200;
    v29[5] = 0xE200000000000000;
    v52 = v27;
    v30 = v46;
    sub_251AA8828(v17, v46, type metadata accessor for PublisherOutputWriter);
    v31 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_251AA8808;
    *(v32 + 24) = v29;
    sub_251AA8650(v30, v32 + v31, type metadata accessor for PublisherOutputWriter);
    type metadata accessor for ClinicalSharingQueryOutput(0);

    v33 = v48;
    sub_251C70B54();

    sub_251AA11AC(&qword_27F4791C8, sub_251AA86B8);
    v34 = sub_251C70A94();

    (*(v49 + 8))(v33, v28);
    v27 = v34;
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_251AA1EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251AA8CD8(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  Output = type metadata accessor for ClinicalSharingQueryOutput(0);
  v9 = *(*(Output - 8) + 64);
  MEMORY[0x28223BE20](Output - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA8828(a1, v11, type metadata accessor for ClinicalSharingQueryOutput);
  v12 = v11[8];
  *a2 = *v11;
  *(a2 + 8) = v12;
  v13 = a2 + *(type metadata accessor for QueryOutput(0) + 20);
  v14 = type metadata accessor for PBTypedData(0);
  sub_251AA926C(&v11[*(v14 + 28)], v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v15 = type metadata accessor for PBDateRange(0);
  v16 = *(*(v15 - 8) + 48);
  if (v16(v7, 1, v15) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0xE000000000000000;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    v17 = v13 + *(v15 + 28);
    sub_251C703A4();
    sub_251AA87A8(v11, type metadata accessor for ClinicalSharingQueryOutput);
    result = v16(v7, 1, v15);
    if (result != 1)
    {
      return sub_251AA92EC(v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
    }
  }

  else
  {
    sub_251AA87A8(v11, type metadata accessor for ClinicalSharingQueryOutput);
    return sub_251AA8650(v7, v13, type metadata accessor for PBDateRange);
  }

  return result;
}

uint64_t sub_251AA214C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_251C70014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v12 = *a1;
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  (*(v5 + 16))(v11, a2 + *(DiagnosticsTask + 40), v4);
  sub_251C70004();
  sub_251C6FF74();
  v15 = v14;
  (*(v5 + 8))(v9, v4);
  v16 = *(a2 + *(DiagnosticsTask + 36));

  sub_251AA7F3C(v11, v16, v12, v18, v15);
  sub_251AA2308(v18, 0x2E7972616D6D7573, 0xEC0000006E6F736ALL);
  return sub_251AA8564(v18);
}

uint64_t sub_251AA2308(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v26 = a2;
  v27 = a3;
  v35 = *MEMORY[0x277D85DE8];
  v7 = sub_251C6FE64();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v32 = a1[2];
  v33 = v11;
  v34 = a1[4];
  v12 = a1[1];
  v30 = *a1;
  v31 = v12;
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  v14 = *(v5 + DiagnosticsTask[5]);
  v15 = DiagnosticsTask[7];
  v16 = sub_251C6FDD4();
  v29 = 0;
  LODWORD(v14) = [v14 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:{&v29, v26, v27}];

  v17 = v29;
  if (v14)
  {
    v18 = *(v5 + DiagnosticsTask[6]);
    sub_251AA8594();
    v19 = v17;
    result = sub_251C6FA34();
    if (!v4)
    {
      v22 = result;
      v23 = v21;
      sub_251C6FDF4();
      sub_251C6FF04();
      (*(v28 + 8))(v10, v7);
      result = sub_251A83028(v22, v23);
    }
  }

  else
  {
    v24 = v29;
    sub_251C6FD84();

    result = swift_willThrow();
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251AA2528(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v24 = a2;
  v25 = a3;
  v27[2] = *MEMORY[0x277D85DE8];
  v7 = sub_251C6FE64();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = a1;
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  v12 = *(v5 + DiagnosticsTask[5]);
  v13 = DiagnosticsTask[7];
  v14 = sub_251C6FDD4();
  v27[0] = 0;
  LODWORD(v12) = [v12 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:{v27, v24, v25}];

  v15 = v27[0];
  if (v12)
  {
    v16 = *(v5 + DiagnosticsTask[6]);
    sub_251AA8CD8(0, &qword_27F479240, type metadata accessor for AccountSummary, MEMORY[0x277D83940]);
    sub_251AA9194();
    v17 = v15;
    result = sub_251C6FA34();
    if (!v4)
    {
      v20 = result;
      v21 = v19;
      sub_251C6FDF4();
      sub_251C6FF04();
      (*(v26 + 8))(v10, v7);
      result = sub_251A83028(v20, v21);
    }
  }

  else
  {
    v22 = v27[0];
    sub_251C6FD84();

    result = swift_willThrow();
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

size_t sub_251AA276C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = sub_251C70074();
  v6 = *(v53 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v53);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  DiagnosticsTask = type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0);
  v11 = DiagnosticsTask - 8;
  v49 = *(DiagnosticsTask - 8);
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](DiagnosticsTask);
  v50 = v13;
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA9058();
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = *__swift_project_boxed_opaque_existential_1((a2 + *(v11 + 40)), *(a2 + *(v11 + 40) + 24));
  if (v21 >> 62)
  {
    v48 = v22;
    v23 = sub_251C717F4();
    v22 = v48;
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v21;
  v51 = v14;
  v52 = v20;
  if (!v23)
  {
    v35 = v22;
    v36 = v22;
    v28 = MEMORY[0x277D84F90];
LABEL_14:
    v37 = sub_251C5D708(v28);

    v55 = v37;
    v38 = a2;
    v39 = v51;
    sub_251AA8828(v38, v51, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
    v40 = (*(v49 + 80) + 24) & ~*(v49 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v54;
    sub_251AA8650(v39, v41 + v40, type metadata accessor for ClinicalSharingQueryDiagnosticsTask);
    sub_251AA1134();
    sub_251AA11AC(&qword_2813E2178, sub_251AA1134);

    v42 = v52;
    sub_251C70B54();

    sub_251AA11AC(&qword_27F479230, sub_251AA9058);
    v43 = sub_251C70A94();
    result = (*(v17 + 8))(v42, v16);
    *a3 = v43;
    return result;
  }

  v47 = a2;
  v55 = MEMORY[0x277D84F90];
  v48 = v22;
  v24 = v22;
  result = sub_251C0B5E4(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v44 = v17;
    v45 = v16;
    v46 = a3;
    v26 = 0;
    v27 = v54;
    v28 = v55;
    v29 = v54 & 0xC000000000000001;
    do
    {
      if (v29)
      {
        v30 = MEMORY[0x25308D460](v26);
      }

      else
      {
        v30 = *(v27 + 8 * v26 + 32);
      }

      v31 = v30;
      v32 = [v31 identifier];
      sub_251C70054();

      v55 = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_251C0B5E4(v33 > 1, v34 + 1, 1);
        v28 = v55;
      }

      ++v26;
      *(v28 + 16) = v34 + 1;
      (*(v6 + 32))(v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, v9, v53);
      v27 = v54;
    }

    while (v23 != v26);
    v16 = v45;
    a3 = v46;
    v17 = v44;
    a2 = v47;
    v35 = v48;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_251AA2C40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = sub_251AA2DF8(a2, *a1);
  sub_251AA2528(v8, 0x73746E756F636361, 0xED00006E6F736A2ELL);

  if (!v4)
  {
    if ((*(a3 + *(type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) + 36)) & 4) != 0)
    {
      sub_251AA8CD8(0, &qword_27F479238, MEMORY[0x277CC95F0], MEMORY[0x277D84560]);
      v10 = sub_251C70074();
      v11 = *(v10 - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_251C74800;
      sub_251C70064();
      v15 = sub_251C5ECD8(v14);
      swift_setDeallocating();
      (*(v11 + 8))(v14 + v13, v10);
      result = swift_deallocClassInstance();
      *a4 = v15;
    }

    else
    {
      *a4 = v7;
    }
  }

  return result;
}

uint64_t sub_251AA2DF8(uint64_t a1, uint64_t a2)
{
  v36 = sub_251C70074();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v36);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccountSummary(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v37 = sub_251AA6E30(v12, sub_251C3A1BC, sub_251AA6ED4);
  sub_251AA5010(&v37);
  v13 = v37;
  if ((v37 & 0x8000000000000000) == 0 && (v37 & 0x4000000000000000) == 0)
  {
    v14 = *(v37 + 16);
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_18:

    return MEMORY[0x277D84F90];
  }

  v31 = v37;
  v14 = sub_251C717F4();
  v13 = v31;
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_4:
  v15 = v13;
  v37 = MEMORY[0x277D84F90];
  sub_251C0B62C(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v37;
    v18 = v15;
    v33 = v15 & 0xC000000000000001;
    v34 = a2;
    v19 = (v3 + 8);
    v35 = v18;
    do
    {
      v20 = v14;
      if (v33)
      {
        v21 = MEMORY[0x25308D460](v16);
      }

      else
      {
        v21 = *(v18 + 8 * v16 + 32);
      }

      v22 = v21;
      v23 = [v21 identifier];
      sub_251C70054();

      if (*(a2 + 16) && (v24 = sub_251AC8AFC(v6), (v25 & 1) != 0))
      {
        v26 = *(*(a2 + 56) + 8 * v24);
        v27 = *v19;

        v27(v6, v36);
        v28 = v26;
      }

      else
      {
        (*v19)(v6, v36);
        v28 = MEMORY[0x277D84FA0];
      }

      sub_251AA3E60(v22, v28, v11);
      v37 = v17;
      v30 = *(v17 + 16);
      v29 = *(v17 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_251C0B62C(v29 > 1, v30 + 1, 1);
        v17 = v37;
      }

      ++v16;
      *(v17 + 16) = v30 + 1;
      sub_251AA8650(v11, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v30, type metadata accessor for AccountSummary);
      v14 = v20;
      a2 = v34;
      v18 = v35;
    }

    while (v20 != v16);

    return v17;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_251AA3158@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v40 = a5;
  v41 = a4;
  sub_251AA8A58();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251C70014();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251C701E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  sub_251A823B4(a2, v42);
  (*(v18 + 16))(v21, a3, v17);
  (*(v13 + 16))(v16, v41, v12);
  v23 = v43;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);

  v30 = sub_251AA7C78(v29, v27, v21, v16);
  v32 = v31;
  __swift_destroy_boxed_opaque_existential_1(v42);
  result = sub_251BFE2FC(v30, v32);
  v42[0] = result;
  if (v32 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_251AA8C10();
    sub_251AA10B4();
    sub_251AA11AC(&qword_27F4791F0, sub_251AA8C10);
    sub_251AA11AC(&qword_2813E21C8, sub_251AA10B4);
    sub_251C70BD4();

    sub_251AA11AC(&qword_27F479200, sub_251AA8A58);
    v34 = v39;
    v35 = sub_251C70A94();
    (*(v38 + 8))(v11, v34);
    v36 = sub_251BFECFC(v35, v30, v32);

    *v40 = v36;
  }

  return result;
}

uint64_t sub_251AA3580@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_251C701E4() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_251C70014() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_251AA3158(a1, v2 + 16, v2 + v6, v9, a2);
}

uint64_t sub_251AA3668(uint64_t *a1)
{
  v3 = *(type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(*(sub_251C70014() - 8) + 80);
  return sub_251AA214C(a1, v1 + v4);
}

uint64_t sub_251AA3748(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[2] = a5;
  v15[1] = a4;
  sub_251AA9DA4(0, &qword_27F479320, sub_251AA9E04);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251AA9E04();
  sub_251C71B14();
  v17 = 0;
  v13 = v15[3];
  sub_251C71934();
  if (!v13)
  {
    v16 = 1;
    sub_251C71934();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_251AA38D0()
{
  if (*v0)
  {
    result = 6581861;
  }

  else
  {
    result = 0x7472617473;
  }

  *v0;
  return result;
}

uint64_t sub_251AA3900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_251C719D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251C719D4();

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

uint64_t sub_251AA39D8(uint64_t a1)
{
  v2 = sub_251AA9E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251AA3A14(uint64_t a1)
{
  v2 = sub_251AA9E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251AA3A70(void *a1)
{
  v3 = v1;
  sub_251AA9DA4(0, &qword_27F4792B8, sub_251AA990C);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251AA990C();
  sub_251C71B14();
  v12 = *v3;
  v13 = v3[1];
  v28 = 0;
  sub_251C71934();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v27 = 1;
    sub_251C71934();
    v16 = v3[4];
    v26 = 2;
    sub_251C71944();
    v17 = v3[5];
    v18 = v3[6];
    v25 = 3;
    sub_251C71934();
    v20 = v3[7];
    v21 = v3[8];
    v24 = 4;
    sub_251C71934();
    v22[1] = v3[9];
    v23 = 5;
    sub_251AA9960();
    sub_251AA9AD8(&qword_27F4792E0, sub_251AA9960, sub_251AA9AA4);
    sub_251C71964();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_251AA3CC8()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x646C697562;
  v4 = 0x656369766564;
  if (v1 != 4)
  {
    v4 = 0x74757074756FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x736E6F6974706FLL;
  if (v1 != 1)
  {
    v5 = 0x64657370616C65;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_251AA3D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251AAA2E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251AA3DA4(uint64_t a1)
{
  v2 = sub_251AA990C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251AA3DE0(uint64_t a1)
{
  v2 = sub_251AA990C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251AA3E1C(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_251AA3A70(a1);
}

void sub_251AA3E60(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v5 = sub_251C70014();
  v93 = *(v5 - 8);
  v94 = v5;
  v6 = *(v93 + 64);
  MEMORY[0x28223BE20](v5);
  v89 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA8CD8(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v87 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v88 = &v86 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v86 - v15;
  MEMORY[0x28223BE20](v14);
  v92 = &v86 - v17;
  v18 = sub_251C70244();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 identifier];
  sub_251C70054();

  v24 = [a1 provenance];
  v25 = [v24 title];

  v26 = sub_251C70F14();
  v28 = v27;

  v29 = type metadata accessor for AccountSummary(0);
  v30 = (a3 + v29[5]);
  *v30 = v26;
  v30[1] = v28;
  v91 = a1;
  v31 = [a1 clinicalSharingStatus];
  v32 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_251C70234();
  v33 = sub_251C70214();
  (*(v19 + 8))(v22, v18);
  v95 = v32;
  [v32 setTimeZone_];

  [v31 featureStatus];
  v34 = HKClinicalSharingFeatureStatusToString();
  v35 = sub_251C70F14();
  v37 = v36;

  v38 = (a3 + v29[6]);
  *v38 = v35;
  v38[1] = v37;
  [v31 userStatus];
  v39 = HKClinicalSharingUserStatusToString();
  v40 = sub_251C70F14();
  v42 = v41;

  v43 = (a3 + v29[7]);
  *v43 = v40;
  v43[1] = v42;
  [v31 multiDeviceStatus];
  v44 = HKClinicalSharingMultiDeviceStatusToString();
  v45 = sub_251C70F14();
  v47 = v46;

  v48 = (a3 + v29[8]);
  *v48 = v45;
  v48[1] = v47;
  v97 = v31;
  v49 = [v31 primaryDeviceName];
  if (v49)
  {
    v50 = v49;
    v51 = sub_251C70F14();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v54 = (a3 + v29[9]);
  *v54 = v51;
  v54[1] = v53;
  v55 = [v97 firstSharedDate];
  v57 = v92;
  v56 = v93;
  v96 = a3;
  if (v55)
  {
    v58 = v55;
    sub_251C6FFE4();

    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  v60 = v94;
  v61 = *(v56 + 56);
  v61(v57, v59, 1, v94);
  sub_251AA926C(v57, v16, &qword_2813E7500, MEMORY[0x277CC9578]);
  v62 = *(v56 + 48);
  if (v62(v16, 1, v60) == 1)
  {
    sub_251AA92EC(v57, &qword_2813E7500, MEMORY[0x277CC9578]);
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v65 = v89;
    (*(v56 + 32))(v89, v16, v60);
    v66 = sub_251C6FF94();
    v67 = [v95 stringFromDate_];

    v63 = sub_251C70F14();
    v64 = v68;

    v60 = v94;
    (*(v56 + 8))(v65, v94);
    sub_251AA92EC(v92, &qword_2813E7500, MEMORY[0x277CC9578]);
  }

  v69 = v88;
  v70 = v97;
  v71 = (v96 + v29[10]);
  *v71 = v63;
  v71[1] = v64;
  v72 = [v70 lastSharedDate];
  if (v72)
  {
    v73 = v72;
    sub_251C6FFE4();

    v74 = 0;
  }

  else
  {
    v74 = 1;
  }

  v61(v69, v74, 1, v60);
  v75 = v87;
  sub_251AA926C(v69, v87, &qword_2813E7500, MEMORY[0x277CC9578]);
  if (v62(v75, 1, v60) == 1)
  {
    sub_251AA92EC(v69, &qword_2813E7500, MEMORY[0x277CC9578]);
    v76 = 0;
    v77 = 0;
  }

  else
  {
    v78 = v93;
    v79 = v89;
    (*(v93 + 32))(v89, v75, v60);
    v80 = sub_251C6FF94();
    v81 = [v95 stringFromDate_];

    v76 = sub_251C70F14();
    v77 = v82;

    (*(v78 + 8))(v79, v60);
    sub_251AA92EC(v69, &qword_2813E7500, MEMORY[0x277CC9578]);
  }

  v83 = v96;
  v84 = (v96 + v29[11]);
  *v84 = v76;
  v84[1] = v77;
  v85 = sub_251AA00E0(v90);

  v98 = v85;

  sub_251AA508C(&v98);

  *(v83 + v29[12]) = v98;
}

uint64_t sub_251AA4620(id *a1, void **a2)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *a2;
  v13 = [*a1 identifier];
  sub_251C70054();

  v14 = sub_251C70024();
  v16 = v15;
  v17 = *(v5 + 8);
  v17(v11, v4);
  v18 = [v12 identifier];
  sub_251C70054();

  v19 = sub_251C70024();
  v21 = v20;
  v17(v9, v4);
  if (v14 == v19 && v16 == v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_251C719D4();
  }

  return v23 & 1;
}

unint64_t sub_251AA47EC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 1684632949;
    v5 = 0x5365727574616566;
    if (a1 != 2)
    {
      v5 = 0x7461745372657375;
    }

    if (a1)
    {
      v4 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6168537473726966;
    v2 = 0x726168537473616CLL;
    if (a1 != 7)
    {
      v2 = 0x7A69726F68747561;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 <= 5u)
    {
      return 0xD000000000000011;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_251AA4930(void *a1)
{
  v3 = v1;
  sub_251AA9DA4(0, &qword_27F479308, sub_251AA9CBC);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v35[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251AA9CBC();
  sub_251C71B14();
  LOBYTE(v36) = 0;
  sub_251C70074();
  sub_251AA11AC(&qword_2813E74E8, MEMORY[0x277CC95F0]);
  sub_251C71964();
  if (!v2)
  {
    v12 = type metadata accessor for AccountSummary(0);
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v36) = 1;
    sub_251C71934();
    v16 = (v3 + v12[6]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v36) = 2;
    sub_251C71934();
    v19 = (v3 + v12[7]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v36) = 3;
    sub_251C71934();
    v22 = (v3 + v12[8]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v36) = 4;
    sub_251C71934();
    v25 = (v3 + v12[9]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v36) = 5;
    sub_251C718F4();
    v28 = (v3 + v12[10]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v36) = 6;
    sub_251C718F4();
    v31 = (v3 + v12[11]);
    v32 = *v31;
    v33 = v31[1];
    LOBYTE(v36) = 7;
    sub_251C718F4();
    v36 = *(v3 + v12[12]);
    v35[15] = 8;
    sub_251AA9A54(0, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_251AA9D10();
    sub_251C71964();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_251AA4CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_251AAA4D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_251AA4CDC(uint64_t a1)
{
  v2 = sub_251AA9CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251AA4D18(uint64_t a1)
{
  v2 = sub_251AA9CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251AA4D6C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v39 = a3;
  v40[1] = *MEMORY[0x277D85DE8];
  v8 = sub_251C6FE64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  result = a2(a1);
  if (!v4)
  {
    v18 = result;
    v35 = v8;
    v36 = v9;
    v33 = a1;
    v34 = a4;
    v37 = v17;
    v38 = 0;
    v19 = v39;
    sub_251C6FDE4();
    sub_251C6FE04();
    v20 = *(v19 + *(type metadata accessor for PublisherOutputWriter() + 20));
    v21 = sub_251C6FDD4();
    v40[0] = 0;
    LODWORD(v20) = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:v40];

    if (v20)
    {
      v22 = v40[0];
      v24 = v37;
      v23 = v38;
      sub_251C6FF04();
      v38 = v23;
      v26 = v35;
      v25 = v36;
      if (!v23)
      {
        v27 = *(v36 + 8);
        v27(v13, v35);
        v27(v15, v26);
        sub_251AA8828(v33, v34, type metadata accessor for ClinicalSharingQueryOutput);
LABEL_7:

        result = sub_251A83028(v18, v24);
        goto LABEL_8;
      }
    }

    else
    {
      v28 = v40[0];
      v29 = sub_251C6FD84();

      v38 = v29;
      swift_willThrow();
      v25 = v36;
      v24 = v37;
      v26 = v35;
    }

    v30 = *(v25 + 8);
    v30(v13, v26);
    v30(v15, v26);
    goto LABEL_7;
  }

LABEL_8:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251AA5010(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_251BFC484(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_251AA50F8(v6);
  return sub_251C71744();
}

uint64_t sub_251AA508C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251BFADF0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_251AA520C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_251AA50F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_251C71994();
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
        sub_251A8223C(0, &qword_2813E1D98, 0x277D123D8);
        v6 = sub_251C71184();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_251AA5678(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_251AA5304(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251AA520C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_251C71994();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_251C71184();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_251AA6034(v7, v8, a1, v4);
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
    return sub_251AA55A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251AA5304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = sub_251C70074();
  v8 = *(*(v43 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v41 = &v35 - v13;
  v36 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v40 = (v12 + 8);
    v44 = v14;
    v15 = v14 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_6:
    v38 = v15;
    v39 = a3;
    v17 = *(v44 + 8 * a3);
    v37 = v16;
    while (1)
    {
      v18 = *v15;
      v19 = v17;
      v20 = v18;
      v46 = v19;
      v21 = [v19 identifier];
      v22 = v41;
      sub_251C70054();

      v23 = sub_251C70024();
      v45 = v24;
      v25 = *v40;
      v26 = v43;
      (*v40)(v22, v43);
      v47 = v20;
      v27 = [v20 identifier];
      v28 = v42;
      sub_251C70054();

      v29 = sub_251C70024();
      v31 = v30;
      v25(v28, v26);
      if (v23 == v29 && v45 == v31)
      {

LABEL_5:
        a3 = v39 + 1;
        v15 = v38 + 8;
        v16 = v37 - 1;
        if (v39 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v32 = sub_251C719D4();

      if ((v32 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v33 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v33;
      v15 -= 8;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_251AA55A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_251C719D4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_251AA5678(void ***a1, uint64_t a2, void ***a3, uint64_t a4)
{
  v7 = v5;
  v125 = a1;
  v137 = sub_251C70074();
  v10 = *(*(v137 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v137);
  v134 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v133 = &v120 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v129 = &v120 - v16;
  MEMORY[0x28223BE20](v15);
  v128 = &v120 - v18;
  v19 = a3[1];
  v126 = a3;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_100:
    v6 = *v125;
    if (!*v125)
    {
      goto LABEL_141;
    }

    v4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v114 = v4;
LABEL_103:
      v143 = v114;
      v4 = *(v114 + 2);
      if (v4 >= 2)
      {
        do
        {
          v115 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          a3 = (v4 - 1);
          v116 = *&v114[16 * v4];
          v117 = v114;
          v118 = *&v114[16 * v4 + 24];
          sub_251AA6610(&v115[v116], &v115[*&v114[16 * v4 + 16]], &v115[v118], v6);
          if (v7)
          {
            break;
          }

          if (v118 < v116)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = sub_251BFABE4(v117);
          }

          if (v4 - 2 >= *(v117 + 2))
          {
            goto LABEL_129;
          }

          v119 = &v117[16 * v4];
          *v119 = v116;
          *(v119 + 1) = v118;
          v143 = v117;
          sub_251BFAB58(v4 - 1);
          v114 = v143;
          v4 = *(v143 + 2);
          a3 = v126;
        }

        while (v4 > 1);
      }

LABEL_111:

      return;
    }

LABEL_135:
    v114 = sub_251BFABE4(v4);
    goto LABEL_103;
  }

  v20 = 0;
  v136 = (v17 + 8);
  v21 = MEMORY[0x277D84F90];
  v124 = a4;
  while (2)
  {
    v22 = v20++;
    if (v20 >= v19)
    {
      goto LABEL_27;
    }

    v123 = v21;
    v6 = *a3;
    v23 = (*a3)[v20];
    v141 = (*a3)[v22];
    v24 = v141;
    v142 = v23;
    v25 = v23;
    v4 = v24;
    LODWORD(v138) = sub_251AA4620(&v142, &v141);
    if (v7)
    {

      return;
    }

    v20 = v22 + 2;
    if (v22 + 2 >= v19)
    {
      v21 = v123;
      if (v138)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }

    v122 = 0;
    v121 = v22;
    v26 = &v6[v22 + 2];
    v135 = v19;
    while (1)
    {
      v132 = v20;
      v28 = *(v26 - 1);
      v29 = *v26;
      v30 = v28;
      v139 = v29;
      v31 = [v29 identifier];
      v32 = v128;
      sub_251C70054();

      v4 = sub_251C70024();
      v6 = v33;
      v34 = v137;
      v35 = *v136;
      (*v136)(v32, v137);
      v140 = v30;
      v36 = [v30 identifier];
      v37 = v129;
      sub_251C70054();

      v38 = sub_251C70024();
      v40 = v39;
      v35(v37, v34);
      if (v4 == v38 && v6 == v40)
      {

        v27 = v135;
        if (v138)
        {
          a3 = v126;
          v21 = v123;
          a4 = v124;
          v7 = v122;
          v20 = v132;
          v22 = v121;
          goto LABEL_19;
        }

        goto LABEL_9;
      }

      v4 = sub_251C719D4();

      v27 = v135;
      if ((v138 ^ v4))
      {
        break;
      }

LABEL_9:
      v20 = v132 + 1;
      ++v26;
      if (v27 == (v132 + 1))
      {
        v20 = v27;
        a3 = v126;
        v21 = v123;
        a4 = v124;
        v7 = v122;
        goto LABEL_18;
      }
    }

    a3 = v126;
    v21 = v123;
    a4 = v124;
    v7 = v122;
    v20 = v132;
LABEL_18:
    v22 = v121;
    if (v138)
    {
LABEL_19:
      if (v20 < v22)
      {
        goto LABEL_132;
      }

      if (v22 < v20)
      {
        v41 = 8 * v20 - 8;
        v42 = v22;
        v43 = v20;
        v44 = v22;
        do
        {
          if (v44 != --v43)
          {
            v46 = *a3;
            if (!*a3)
            {
              goto LABEL_138;
            }

            v45 = v46[v42];
            v46[v42] = *(v46 + v41);
            *(v46 + v41) = v45;
          }

          ++v44;
          v41 -= 8;
          ++v42;
        }

        while (v44 < v43);
      }
    }

LABEL_27:
    v47 = a3[1];
    if (v20 >= v47)
    {
      goto LABEL_47;
    }

    if (__OFSUB__(v20, v22))
    {
      goto LABEL_131;
    }

    if (v20 - v22 >= a4)
    {
LABEL_47:
      if (v20 < v22)
      {
        goto LABEL_130;
      }

      v68 = v21;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v21 = v68;
      }

      else
      {
        v21 = sub_251C38DF0(0, *(v68 + 2) + 1, 1, v68);
      }

      v4 = *(v21 + 2);
      v69 = *(v21 + 3);
      v70 = v4 + 1;
      if (v4 >= v69 >> 1)
      {
        v21 = sub_251C38DF0((v69 > 1), v4 + 1, 1, v21);
      }

      *(v21 + 2) = v70;
      v71 = &v21[16 * v4];
      *(v71 + 4) = v22;
      *(v71 + 5) = v20;
      v6 = *v125;
      if (!*v125)
      {
        goto LABEL_140;
      }

      if (!v4)
      {
LABEL_3:
        v19 = a3[1];
        a4 = v124;
        if (v20 >= v19)
        {
          goto LABEL_100;
        }

        continue;
      }

      while (1)
      {
        v72 = v70 - 1;
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v73 = *(v21 + 4);
          v74 = *(v21 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_67:
          if (v76)
          {
            goto LABEL_119;
          }

          v89 = &v21[16 * v70];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_122;
          }

          v95 = &v21[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_126;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v70 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v99 = &v21[16 * v70];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_81:
        if (v94)
        {
          goto LABEL_121;
        }

        v102 = &v21[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_124;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_88:
        v4 = v72 - 1;
        if (v72 - 1 >= v70)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
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
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v110 = v21;
        v111 = *&v21[16 * v4 + 32];
        v112 = *&v21[16 * v72 + 40];
        sub_251AA6610(&(*a3)[v111], &(*a3)[*&v21[16 * v72 + 32]], &(*a3)[v112], v6);
        if (v7)
        {
          goto LABEL_111;
        }

        if (v112 < v111)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_251BFABE4(v110);
        }

        if (v4 >= *(v110 + 2))
        {
          goto LABEL_116;
        }

        v113 = &v110[16 * v4];
        *(v113 + 4) = v111;
        *(v113 + 5) = v112;
        v143 = v110;
        sub_251BFAB58(v72);
        v21 = v143;
        v70 = *(v143 + 2);
        if (v70 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v21[16 * v70 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_117;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_118;
      }

      v84 = &v21[16 * v70];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_120;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_123;
      }

      if (v88 >= v80)
      {
        v106 = &v21[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_127;
        }

        if (v75 < v109)
        {
          v72 = v70 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

    break;
  }

  v48 = (v22 + a4);
  if (__OFADD__(v22, a4))
  {
    goto LABEL_133;
  }

  if (v48 >= v47)
  {
    v48 = a3[1];
  }

  if (v48 < v22)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v20 == v48)
  {
    goto LABEL_47;
  }

  v122 = v7;
  v123 = v21;
  v135 = *a3;
  v49 = &v135[v20 - 1];
  v121 = v22;
  v50 = v22 - v20;
  v127 = v48;
LABEL_38:
  v131 = v49;
  v132 = v20;
  v51 = v135[v20];
  v130 = v50;
  v52 = v50;
  while (1)
  {
    v53 = *v49;
    v54 = v51;
    v55 = v53;
    v139 = v54;
    v56 = [v54 identifier];
    v57 = v133;
    sub_251C70054();

    v138 = sub_251C70024();
    v59 = v58;
    v6 = v137;
    v60 = *v136;
    (*v136)(v57, v137);
    v140 = v55;
    v61 = [v55 identifier];
    v62 = v134;
    sub_251C70054();

    v63 = sub_251C70024();
    v4 = v64;
    v60(v62, v6);
    if (v138 == v63 && v59 == v4)
    {

LABEL_37:
      v20 = v132 + 1;
      v49 = v131 + 8;
      v50 = v130 - 1;
      if (v132 + 1 == v127)
      {
        v20 = v127;
        v7 = v122;
        v21 = v123;
        a3 = v126;
        v22 = v121;
        goto LABEL_47;
      }

      goto LABEL_38;
    }

    v65 = sub_251C719D4();

    if ((v65 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (!v135)
    {
      break;
    }

    v66 = *v49;
    v51 = *(v49 + 8);
    *v49 = v51;
    *(v49 + 8) = v66;
    v49 -= 8;
    if (__CFADD__(v52++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_251AA6034(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_251BFABE4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_251AA6BDC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_251C719D4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_251C719D4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251C38DF0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_251C38DF0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_251AA6BDC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_251BFABE4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_251BFAB58(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_251C719D4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_251AA6610(void **a1, void **a2, void **a3, void **a4)
{
  v76 = sub_251C70074();
  v8 = *(v76 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v76);
  v70 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v69 = &v66 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v68 = (&v66 - v15);
  MEMORY[0x28223BE20](v14);
  v67 = &v66 - v16;
  v17 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v17 = a2 - a1;
  }

  v18 = v17 >> 3;
  v71 = a3;
  v19 = a3 - a2;
  v20 = v19 / 8;
  if (v17 >> 3 >= v19 / 8)
  {
    if (a4 != a2 || &a2[v20] <= a4)
    {
      memmove(a4, a2, 8 * v20);
    }

    v78 = &a4[v20];
    if (v19 >= 8 && a2 > a1)
    {
      v67 = (v8 + 8);
      v41 = v71;
      v77 = a4;
      v74 = a1;
      v42 = (v8 + 8);
LABEL_27:
      v75 = a2;
      v43 = a2 - 1;
      v44 = v41;
      v45 = v78;
      v68 = a2 - 1;
      do
      {
        v46 = *(v45 - 1);
        v71 = v45 - 1;
        v47 = *v43;
        v48 = v46;
        v49 = v47;
        v72 = v48;
        v50 = [v48 identifier];
        v51 = v69;
        sub_251C70054();

        v52 = sub_251C70024();
        v54 = v53;
        v55 = *v42;
        v56 = v51;
        v57 = v76;
        (*v42)(v56, v76);
        v73 = v49;
        v58 = [v49 identifier];
        v59 = v70;
        sub_251C70054();

        v60 = sub_251C70024();
        v62 = v61;
        v55(v59, v57);
        if (v52 == v60 && v54 == v62)
        {

          v41 = v44 - 1;
        }

        else
        {
          v63 = sub_251C719D4();

          v41 = v44 - 1;
          if (v63)
          {
            a4 = v77;
            v64 = v68;
            if (v44 != v75)
            {
              *v41 = *v68;
            }

            if (v78 <= a4 || (a2 = v64, v64 <= v74))
            {
              a2 = v64;
              goto LABEL_41;
            }

            goto LABEL_27;
          }
        }

        a4 = v77;
        v43 = v68;
        v45 = v71;
        if (v78 != v44)
        {
          *v41 = *v71;
        }

        v78 = v45;
        v44 = v41;
      }

      while (v45 > a4);
      v78 = v45;
      a2 = v75;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v18] <= a4)
    {
      memmove(a4, a1, 8 * v18);
    }

    v78 = &a4[v18];
    if (a2 - a1 >= 8 && a2 < v71)
    {
      v70 = (v8 + 8);
      while (1)
      {
        v74 = a1;
        v75 = a2;
        v21 = *a2;
        v77 = a4;
        v22 = *a4;
        v23 = v21;
        v24 = v22;
        v72 = v23;
        v25 = [v23 identifier];
        v26 = v67;
        sub_251C70054();

        v27 = sub_251C70024();
        v29 = v28;
        v30 = *v70;
        v31 = v76;
        (*v70)(v26, v76);
        v73 = v24;
        v32 = [v24 identifier];
        v33 = v68;
        sub_251C70054();

        v34 = sub_251C70024();
        v36 = v35;
        v30(v33, v31);
        if (v27 == v34 && v29 == v36)
        {
          break;
        }

        v37 = sub_251C719D4();

        if ((v37 & 1) == 0)
        {
          goto LABEL_16;
        }

        v38 = v74;
        v39 = v75;
        a2 = v75 + 1;
        v40 = v71;
        a4 = v77;
        if (v74 != v75)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v38 + 1;
        if (a4 >= v78 || a2 >= v40)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      v39 = v77;
      a4 = v77 + 1;
      v38 = v74;
      a2 = v75;
      v40 = v71;
      if (v74 == v77)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v38 = *v39;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_41:
  if (a2 != a4 || a2 >= (a4 + ((v78 - a4 + (v78 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v78 - a4));
  }

  return 1;
}

uint64_t sub_251AA6BDC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_251C719D4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_251C719D4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_251AA6E30(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_251C717F4();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_251AA6ED4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_251C717F4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_251C717F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_251AA8E98(0, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
          sub_251AA9368();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_251AA752C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_251A8223C(0, &qword_2813E1D98, 0x277D123D8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251AA7068(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_251C717F4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_251C717F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_251AA8E98(0, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
          sub_251AA9C4C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_251AA75B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_251A8223C(0, &qword_27F478D70, 0x277CCD8A8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251AA71FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_251C717F4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_251C717F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_251AA8CD8(0, &qword_2813E1EA0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277D83940]);
          sub_251AA93D8();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_251AA7634(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ClinicalSharingSyncContext();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251AA7398(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_251C717F4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_251C717F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_251AA8E98(0, &qword_27F479270, &qword_27F479268, 0x277D12488);
          sub_251AA9460();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_251AA75B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_251A8223C(0, &qword_27F479268, 0x277D12488);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_251AA752C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25308D460](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_251AA75AC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_251AA75B4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25308D460](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_251AAA810;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_251AA7634(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25308D460](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_251AA76B4;
  }

  __break(1u);
  return result;
}

uint64_t sub_251AA76BC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a2;
  sub_251AA8CD8(0, &qword_27F479208, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v53[3] = v53 - v9;
  v10 = sub_251C70244();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v53[2] = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251C70094();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v53 - v19;
  v21 = sub_251C701E4();
  v54 = *(v21 - 8);
  v55 = v21;
  v22 = *(v54 + 64);
  MEMORY[0x28223BE20](v21);
  v57 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59[3] = &type metadata for ClinicalSharingQueryDefaultDataProvider;
  v59[4] = &off_2863FD718;
  v24 = swift_allocObject();
  v59[0] = v24;
  v25 = a1[1];
  v24[1] = *a1;
  v24[2] = v25;
  v26 = a1[3];
  v24[3] = a1[2];
  v24[4] = v26;
  Context = type metadata accessor for ClinicalSharingQueryContext(0);
  v28 = *(Context + 48);
  v29 = *(Context + 52);
  v30 = swift_allocObject();
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v59, &type metadata for ClinicalSharingQueryDefaultDataProvider);
  v32 = *(off_2863FD6F0 + 8);
  MEMORY[0x28223BE20](v31);
  v34 = (v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v58[3] = &type metadata for ClinicalSharingQueryDefaultDataProvider;
  v58[4] = &off_2863FD718;
  v36 = swift_allocObject();
  v58[0] = v36;
  v37 = v34[1];
  v36[1] = *v34;
  v36[2] = v37;
  v38 = v34[3];
  v36[3] = v34[2];
  v36[4] = v38;
  v39 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter;
  *(v30 + v39) = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  *(v30 + 56) = v56;
  sub_251A823B4(v58, v30 + 16);
  v40 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date;
  v41 = sub_251C70014();
  v42 = *(v41 - 8);
  v43 = *(v42 + 16);
  v56 = a4;
  v43(v30 + v40, a4, v41);
  (*(v14 + 104))(v20, *MEMORY[0x277CC9830], v13);
  v44 = a3;
  sub_251C700B4();
  sub_251AA11AC(&qword_27F479210, MEMORY[0x277CC9840]);
  v45 = v20;
  LOBYTE(v40) = sub_251C70ED4();
  v48 = *(v14 + 8);
  v46 = v14 + 8;
  v47 = v48;
  v48(v18, v13);
  if (v40)
  {
    (*(v42 + 8))(v56, v41);
    v47(v45, v13);
    __swift_destroy_boxed_opaque_existential_1(v58);
    v49 = v55;
    v50 = *(v54 + 32);
    v50(v57, v44, v55);
  }

  else
  {
    v53[1] = v46;
    sub_251C700A4();
    sub_251C701A4();
    sub_251C701B4();
    sub_251C70164();
    sub_251C70174();
    (*(v42 + 8))(v56, v41);
    v51 = v54;
    v49 = v55;
    (*(v54 + 8))(v44, v55);
    v47(v45, v13);
    __swift_destroy_boxed_opaque_existential_1(v58);
    v50 = *(v51 + 32);
  }

  v50((v30 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar), v57, v49);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return v30;
}

uint64_t sub_251AA7C78(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v7 = sub_251C70014();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251C701E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[3] = &type metadata for ClinicalSharingQueryDefaultDataProvider;
  v32[4] = &off_2863FD718;
  v17 = swift_allocObject();
  v32[0] = v17;
  v18 = a2[1];
  v17[1] = *a2;
  v17[2] = v18;
  v19 = a2[3];
  v17[3] = a2[2];
  v17[4] = v19;
  sub_251A823B4(v32, v30);
  (*(v13 + 16))(v16, a3, v12);
  (*(v8 + 16))(v11, a4, v7);
  v20 = v31;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = sub_251AA76BC(v24, v29, v16, v11);
  (*(v8 + 8))(a4, v7);
  (*(v13 + 8))(a3, v12);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v26;
}

id sub_251AA7F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v84 = a3;
  Output = type metadata accessor for QueryOutput(0);
  v10 = *(Output - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](Output);
  v87 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = &v73 - v14;
  v15 = sub_251C70244();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_251C70234();
  v21 = sub_251C70214();
  (*(v16 + 8))(v19, v15);
  [v20 setTimeZone_];

  v83 = a1;
  v22 = sub_251C6FF94();
  v23 = [v20 stringFromDate_];

  v24 = sub_251C70F14();
  v81 = v25;
  v82 = v24;

  v26 = sub_251B24874(&unk_2863F2E48, a2);
  v80 = v27;
  sub_251AA85E8();
  swift_arrayDestroy();
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v29 = result;
  result = [result currentOSBuild];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = result;
  v79 = v26;
  v31 = sub_251C70F14();
  v77 = v32;
  v78 = v31;

  result = [v29 currentInternalDeviceModel];
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v33 = result;
  v76 = sub_251C70F14();
  v75 = v34;

  v35 = sub_251C4BAEC(MEMORY[0x277D84F90]);
  v36 = *(v84 + 16);
  if (v36)
  {
    v73 = v29;
    v74 = a4;
    v37 = v84 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v85 = *(v10 + 72);
    v86 = Output;
    v38 = v88;
    do
    {
      v93 = v36;
      sub_251AA8828(v37, v38, type metadata accessor for QueryOutput);
      v39 = *(v38 + 8);
      v94 = *v38;
      v95 = v39;
      v40 = sub_251C70F74();
      v42 = v40;
      v43 = v41;
      if (*(v35 + 16) && (v44 = sub_251AC8C58(v40, v41), (v45 & 1) != 0))
      {
        v46 = *(*(v35 + 56) + 8 * v44);
      }

      else
      {
        v46 = sub_251C4BB0C(MEMORY[0x277D84F90]);
      }

      v47 = v38 + *(Output + 20);
      v48 = *(v47 + 32);
      LOBYTE(v47) = *(v47 + 40);
      v94 = v48;
      v95 = v47;
      v49 = sub_251C70F74();
      v51 = v50;
      v52 = *(v46 + 16);
      v91 = v42;
      v92 = v43;
      v90 = v49;
      if (v52 && (v53 = sub_251AC8C58(v49, v50), (v54 & 1) != 0))
      {
        v55 = *(*(v46 + 56) + 8 * v53);
      }

      else
      {
        v55 = MEMORY[0x277D84F90];
      }

      v56 = v38;
      v57 = v87;
      sub_251AA8828(v56, v87, type metadata accessor for QueryOutput);
      v58 = (v57 + *(Output + 20));
      v59 = *v58;
      v60 = v58[1];
      v61 = v58[3];
      v89 = v58[2];

      sub_251AA87A8(v58, type metadata accessor for PBDateRange);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_251C38DDC(0, *(v55 + 2) + 1, 1, v55);
      }

      v63 = *(v55 + 2);
      v62 = *(v55 + 3);
      if (v63 >= v62 >> 1)
      {
        v55 = sub_251C38DDC((v62 > 1), v63 + 1, 1, v55);
      }

      *(v55 + 2) = v63 + 1;
      v64 = &v55[32 * v63];
      *(v64 + 4) = v59;
      *(v64 + 5) = v60;
      *(v64 + 6) = v89;
      *(v64 + 7) = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v46;
      sub_251ACCE14(v55, v90, v51, isUniquelyReferenced_nonNull_native);

      v66 = v94;

      v67 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v35;
      sub_251ACCDE8(v66, v91, v92, v67);

      v35 = v94;
      v38 = v88;
      sub_251AA87A8(v88, type metadata accessor for QueryOutput);

      Output = v86;
      v37 += v85;
      v36 = v93 - 1;
    }

    while (v93 != 1);

    a4 = v74;
    v29 = v73;
  }

  else
  {
  }

  v68 = sub_251C70014();
  result = (*(*(v68 - 8) + 8))(v83, v68);
  v69 = v81;
  *a4 = v82;
  *(a4 + 8) = v69;
  v70 = v80;
  *(a4 + 16) = v79;
  *(a4 + 24) = v70;
  *(a4 + 32) = a5;
  v71 = v77;
  *(a4 + 40) = v78;
  *(a4 + 48) = v71;
  v72 = v75;
  *(a4 + 56) = v76;
  *(a4 + 64) = v72;
  *(a4 + 72) = v35;
  return result;
}

unint64_t sub_251AA8594()
{
  result = qword_27F4791B0;
  if (!qword_27F4791B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4791B0);
  }

  return result;
}

void sub_251AA85E8()
{
  if (!qword_27F4791B8)
  {
    type metadata accessor for HKClinicalSharingQueryDiagnosticOptions(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4791B8);
    }
  }
}

uint64_t sub_251AA8650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251AA86EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_251AA10B4();
    v9 = v8;
    v10 = a3(255);
    v11 = sub_251AA11AC(&qword_2813E21C8, sub_251AA10B4);
    v12 = a4(a1, v9, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t sub_251AA87A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251AA8828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_11Tm()
{
  v1 = (type metadata accessor for PublisherOutputWriter() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_251C6FE64();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251AA89D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PublisherOutputWriter() - 8);
  v6 = *(v2 + 24);
  return sub_251AA4D6C(a1, *(v2 + 16), v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), a2);
}

void sub_251AA8A58()
{
  if (!qword_27F4791D0)
  {
    sub_251AA10B4();
    sub_251AA8B44();
    sub_251AA11AC(&qword_2813E21C8, sub_251AA10B4);
    sub_251AA11AC(&qword_27F4791F8, sub_251AA8B44);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4791D0);
    }
  }
}

void sub_251AA8B44()
{
  if (!qword_27F4791D8)
  {
    sub_251AA8C10();
    sub_251AA98B0(255, &qword_2813E1C30);
    sub_251AA11AC(&qword_27F4791F0, sub_251AA8C10);
    v0 = sub_251C707E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4791D8);
    }
  }
}

void sub_251AA8C10()
{
  if (!qword_27F4791E0)
  {
    sub_251AA98B0(255, &qword_27F4791E8);
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4791E0);
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_251AA8CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251AA8D3C()
{
  if (!qword_2813E25A8)
  {
    sub_251AA8E00();
    sub_251AA8E98(255, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AA11AC(&qword_2813E2118, sub_251AA8E00);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E25A8);
    }
  }
}

void sub_251AA8E00()
{
  if (!qword_2813E2110)
  {
    sub_251AA8E98(255, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AA98B0(255, &qword_2813E1C30);
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2110);
    }
  }
}

void sub_251AA8E98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_251A8223C(255, a3, a4);
    v5 = sub_251C711A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251AA8EF0()
{
  if (!qword_27F479218)
  {
    sub_251AA1134();
    sub_251AA8E00();
    sub_251AA11AC(&qword_2813E2178, sub_251AA1134);
    sub_251AA11AC(&qword_2813E2118, sub_251AA8E00);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479218);
    }
  }
}

size_t sub_251AA8FD8@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingQueryDiagnosticsTask(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251AA276C(a1, v6, a2);
}

void sub_251AA9058()
{
  if (!qword_27F479228)
  {
    sub_251AA1134();
    sub_251AA11AC(&qword_2813E2178, sub_251AA1134);
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479228);
    }
  }
}

unint64_t sub_251AA9194()
{
  result = qword_27F479248;
  if (!qword_27F479248)
  {
    sub_251AA8CD8(255, &qword_27F479240, type metadata accessor for AccountSummary, MEMORY[0x277D83940]);
    sub_251AA11AC(&qword_27F479250, type metadata accessor for AccountSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479248);
  }

  return result;
}

uint64_t sub_251AA926C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251AA8CD8(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251AA92EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251AA8CD8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251AA935C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_251AA9368()
{
  result = qword_27F479258;
  if (!qword_27F479258)
  {
    sub_251AA8E98(255, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479258);
  }

  return result;
}

unint64_t sub_251AA93D8()
{
  result = qword_27F479260;
  if (!qword_27F479260)
  {
    sub_251AA8CD8(255, &qword_2813E1EA0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479260);
  }

  return result;
}

unint64_t sub_251AA9460()
{
  result = qword_27F479278;
  if (!qword_27F479278)
  {
    sub_251AA8E98(255, &qword_27F479270, &qword_27F479268, 0x277D12488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479278);
  }

  return result;
}

void sub_251AA94F8()
{
  sub_251C70074();
  if (v0 <= 0x3F)
  {
    sub_251AA9A54(319, &qword_2813E1FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_251AA9A54(319, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
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

uint64_t sub_251AA961C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_251AA9664(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_251AA96F0()
{
  result = type metadata accessor for PBDateRange(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251AA9794()
{
  sub_251C70074();
  if (v0 <= 0x3F)
  {
    sub_251A8223C(319, &qword_27F4792B0, 0x277CCAA00);
    if (v1 <= 0x3F)
    {
      sub_251C6FA54();
      if (v2 <= 0x3F)
      {
        sub_251C6FE64();
        if (v3 <= 0x3F)
        {
          sub_251AA98B0(319, qword_2813E7418);
          if (v4 <= 0x3F)
          {
            type metadata accessor for HKClinicalSharingQueryDiagnosticOptions(319);
            if (v5 <= 0x3F)
            {
              sub_251C70014();
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

uint64_t sub_251AA98B0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_251AA990C()
{
  result = qword_27F4792C0;
  if (!qword_27F4792C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4792C0);
  }

  return result;
}

void sub_251AA9960()
{
  if (!qword_27F4792C8)
  {
    sub_251AA99C8();
    v0 = sub_251C70E74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4792C8);
    }
  }
}

void sub_251AA99C8()
{
  if (!qword_27F4792D0)
  {
    sub_251AA9A54(255, &qword_27F4792D8, &type metadata for QuerySummary.QueryOutputDescription, MEMORY[0x277D83940]);
    v0 = sub_251C70E74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4792D0);
    }
  }
}

void sub_251AA9A54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251AA9AD8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_251AA9B5C()
{
  result = qword_27F4792F0;
  if (!qword_27F4792F0)
  {
    sub_251AA9A54(255, &qword_27F4792D8, &type metadata for QuerySummary.QueryOutputDescription, MEMORY[0x277D83940]);
    sub_251AA9BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4792F0);
  }

  return result;
}

unint64_t sub_251AA9BF8()
{
  result = qword_27F4792F8;
  if (!qword_27F4792F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4792F8);
  }

  return result;
}

unint64_t sub_251AA9C4C()
{
  result = qword_27F479300;
  if (!qword_27F479300)
  {
    sub_251AA8E98(255, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479300);
  }

  return result;
}

unint64_t sub_251AA9CBC()
{
  result = qword_27F479310;
  if (!qword_27F479310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479310);
  }

  return result;
}

unint64_t sub_251AA9D10()
{
  result = qword_27F479318;
  if (!qword_27F479318)
  {
    sub_251AA9A54(255, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479318);
  }

  return result;
}

void sub_251AA9DA4(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_251C71974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_251AA9E04()
{
  result = qword_27F479328;
  if (!qword_27F479328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479328);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountSummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountSummary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_251AA9FCC()
{
  result = qword_27F479330;
  if (!qword_27F479330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479330);
  }

  return result;
}

unint64_t sub_251AAA024()
{
  result = qword_27F479338;
  if (!qword_27F479338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479338);
  }

  return result;
}

unint64_t sub_251AAA07C()
{
  result = qword_27F479340;
  if (!qword_27F479340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479340);
  }

  return result;
}

unint64_t sub_251AAA0D4()
{
  result = qword_27F479348;
  if (!qword_27F479348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479348);
  }

  return result;
}

unint64_t sub_251AAA12C()
{
  result = qword_27F479350;
  if (!qword_27F479350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479350);
  }

  return result;
}

unint64_t sub_251AAA184()
{
  result = qword_27F479358;
  if (!qword_27F479358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479358);
  }

  return result;
}

unint64_t sub_251AAA1DC()
{
  result = qword_27F479360;
  if (!qword_27F479360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479360);
  }

  return result;
}

unint64_t sub_251AAA234()
{
  result = qword_27F479368;
  if (!qword_27F479368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479368);
  }

  return result;
}

unint64_t sub_251AAA28C()
{
  result = qword_27F479370;
  if (!qword_27F479370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479370);
  }

  return result;
}

uint64_t sub_251AAA2E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_251C719D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657370616C65 && a2 == 0xE700000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646C697562 && a2 == 0xE500000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_251C719D4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_251AAA4D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_251C719D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_251C719D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5365727574616566 && a2 == 0xED00007375746174 || (sub_251C719D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461745372657375 && a2 == 0xEA00000000007375 || (sub_251C719D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000251C8A090 == a2 || (sub_251C719D4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000251C8A0B0 == a2 || (sub_251C719D4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6168537473726966 && a2 == 0xEB00000000646572 || (sub_251C719D4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726168537473616CLL && a2 == 0xEA00000000006465 || (sub_251C719D4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEE00736E6F697461)
  {

    return 8;
  }

  else
  {
    v6 = sub_251C719D4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t type metadata accessor for ClinicalSharingSampleQuery()
{
  result = qword_27F479378;
  if (!qword_27F479378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251AAA894()
{
  type metadata accessor for ClinicalSharingQueryContext(319);
  if (v0 <= 0x3F)
  {
    sub_251C6FAE4();
    if (v1 <= 0x3F)
    {
      sub_251A8223C(319, &qword_27F478D50, 0x277CCD8D8);
      if (v2 <= 0x3F)
      {
        sub_251AAFDA0(319, &qword_2813E1DD0, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_251AAA98C()
{
  v1 = type metadata accessor for ClinicalSharingSampleQuery();
  v2 = v1 - 8;
  v59 = *(v1 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v1);
  v60 = v4;
  v61 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AADE3C();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v5);
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AADEE8();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v8);
  v63 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AADFDC();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v51 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AAE070();
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  MEMORY[0x28223BE20](v14);
  v52 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251C70014();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v2;
  v23 = *(v2 + 28);
  v22 = *(v2 + 32);
  v24 = v0;
  v25 = *(v0 + v22);
  v26 = objc_opt_self();
  sub_251C6FAB4();
  v27 = sub_251C6FF94();
  v28 = *(v18 + 8);
  v28(v21, v17);
  sub_251C6FA84();
  v29 = sub_251C6FF94();
  v28(v21, v17);
  v30 = v24;
  v31 = [v26 predicateForSamplesWithStartDate:v27 endDate:v29 options:0];

  v32 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v25 predicate:v31];
  sub_251BFC460(0x73656C706D6173, 0xE700000000000000, v25, 5, 1);
  sub_251A823B4(*v24 + 16, v68);
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  sub_251AAFDA0(0, &qword_27F47BD20, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_251C74560;
  *(v33 + 32) = v32;
  v58 = v32;
  sub_251AFCF70();
  v34 = v57;
  v35 = *(v30 + *(v57 + 36));
  v36 = off_2863FD760();

  __swift_destroy_boxed_opaque_existential_1(v68);
  if (*(v30 + *(v34 + 44) + 8) == 1)
  {

    v37 = v36;
  }

  else
  {
    v68[0] = v36;
    sub_251A82164();
    sub_251AADF94(&qword_27F478D78, sub_251A82164);

    v38 = v51;
    sub_251C70B64();
    sub_251A821D4();
    sub_251AADF94(&qword_27F4793B0, sub_251AADFDC);
    v39 = v52;
    v40 = v54;
    sub_251C70AE4();
    (*(v53 + 8))(v38, v40);
    sub_251AADF94(&qword_27F4793C0, sub_251AAE070);
    v41 = v56;
    v37 = sub_251C70A94();

    (*(v55 + 8))(v39, v41);
  }

  v68[0] = v37;
  sub_251A82164();
  sub_251A821D4();
  sub_251AADF94(&qword_27F478D78, sub_251A82164);

  v42 = v62;
  sub_251C70AE4();

  v43 = v61;
  sub_251AB0318(v30, v61, type metadata accessor for ClinicalSharingSampleQuery);
  v44 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v45 = swift_allocObject();
  sub_251AAFD38(v43, v45 + v44, type metadata accessor for ClinicalSharingSampleQuery);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251AADF94(&qword_27F479398, sub_251AADE3C);
  v46 = v63;
  v47 = v65;
  sub_251C70AA4();

  (*(v64 + 8))(v42, v47);
  sub_251AADF94(&qword_27F4793B8, sub_251AADEE8);
  v48 = v67;
  v49 = sub_251C70A94();

  (*(v66 + 8))(v46, v48);
  return v49;
}

uint64_t sub_251AAB254@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251AAB294(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_251AAB294(uint64_t a1)
{
  v25 = *(a1 + 16);
  if (!v25)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v24 = a1 + 32;
  while (1)
  {
    v4 = *(v24 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v22 = *(v24 + 8 * v1);
      }

      v6 = sub_251C717F4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v23 = sub_251C717F4();
      v9 = v23 + v6;
      if (__OFADD__(v23, v6))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v7)
      {
        goto LABEL_16;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v7)
      {
LABEL_16:
        sub_251C717F4();
        goto LABEL_17;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *(v10 + 16);
LABEL_17:
    result = sub_251C716C4();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v13 >> 1) - v12) < v6)
    {
      goto LABEL_40;
    }

    v29 = v6;
    v26 = v2;
    v27 = v1;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_42;
      }

      sub_251A821D4();
      sub_251AADF94(&qword_27F479300, sub_251A821D4);
      for (i = 0; i != v14; ++i)
      {
        v16 = sub_251AA75B4(v28, i, v4);
        v18 = *v17;
        (v16)(v28, 0);
        *(v10 + 8 * v12 + 32 + 8 * i) = v18;
      }
    }

    else
    {
      sub_251A8223C(0, &qword_27F478D70, 0x277CCD8A8);
      swift_arrayInitWithCopy();
    }

    v2 = v26;
    v1 = v27;
    if (v29 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v29);
      v21 = v19 + v29;
      if (v20)
      {
        goto LABEL_41;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v25)
    {
      return v2;
    }
  }

  result = sub_251C717F4();
  v14 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_251AAB568(uint64_t a1)
{
  sub_251AB02A4();
  v60 = v2;
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v53 - v6;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v56 = v11;
  v57 = a1 + 64;
  v54 = a1;
  while (1)
  {
    if (!v10)
    {
      while (1)
      {
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v17 >= v11)
        {
          goto LABEL_41;
        }

        v10 = *(v7 + 8 * v17);
        ++v13;
        if (v10)
        {
          v64 = v14;
          v13 = v17;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

    v64 = v14;
LABEL_12:
    v18 = __clz(__rbit64(v10)) | (v13 << 6);
    v19 = *(a1 + 48);
    v20 = sub_251C6FAE4();
    v21 = *(v20 - 8);
    v22 = v58;
    (*(v21 + 16))(v58, v19 + *(v21 + 72) * v18, v20);
    v23 = a1;
    v24 = *(*(a1 + 56) + 8 * v18);
    v26 = v59;
    v25 = v60;
    *(v22 + *(v60 + 48)) = v24;
    sub_251AB0318(v22, v26, sub_251AB02A4);
    v27 = *(v26 + *(v25 + 48));
    v28 = *(v21 + 8);

    v28(v26, v20);
    v29 = v22;
    v30 = v27;
    sub_251AB0380(v29, sub_251AB02A4);
    v31 = v27 >> 62;
    v32 = v27 >> 62 ? sub_251C717F4() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v64;
    v33 = v64 >> 62;
    a1 = v23;
    v62 = v32;
    if (v64 >> 62)
    {
      break;
    }

    v34 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v34 + v32;
    if (__OFADD__(v34, v32))
    {
      goto LABEL_40;
    }

LABEL_16:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v33)
      {
        v36 = v14 & 0xFFFFFFFFFFFFFF8;
        if (v35 <= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v37 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v38 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (v31)
          {
            goto LABEL_26;
          }

          goto LABEL_20;
        }

        goto LABEL_23;
      }
    }

    else if (!v33)
    {
      v36 = v14 & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v41 = *(v36 + 16);
      goto LABEL_25;
    }

    sub_251C717F4();
LABEL_25:
    result = sub_251C716C4();
    v14 = result;
    v36 = result & 0xFFFFFFFFFFFFFF8;
    v37 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v38 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (v31)
    {
LABEL_26:
      v39 = v30;
      v42 = v36;
      result = sub_251C717F4();
      v36 = v42;
      v40 = result;
      goto LABEL_27;
    }

LABEL_20:
    v39 = v30;
    v40 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_27:
    v10 &= v10 - 1;
    if (v40)
    {
      if (((v38 >> 1) - v37) < v62)
      {
        goto LABEL_44;
      }

      v43 = v36 + 8 * v37 + 32;
      v64 = v14;
      v61 = v10;
      v55 = v36;
      if (v31)
      {
        if (v40 < 1)
        {
          goto LABEL_46;
        }

        sub_251A821D4();
        sub_251AADF94(&qword_27F479300, sub_251A821D4);
        v44 = 0;
        v45 = v39;
        do
        {
          v46 = sub_251AA75B4(v63, v44, v45);
          v48 = *v47;
          (v46)(v63, 0);
          *(v43 + 8 * v44++) = v48;
        }

        while (v40 != v44);
      }

      else
      {
        sub_251A8223C(0, &qword_27F478D70, 0x277CCD8A8);
        swift_arrayInitWithCopy();
      }

      v10 = v61;
      a1 = v54;
      v11 = v56;
      v7 = v57;
      v14 = v64;
      if (v62 >= 1)
      {
        v49 = *(v55 + 16);
        v50 = __OFADD__(v49, v62);
        v51 = v49 + v62;
        if (v50)
        {
          goto LABEL_45;
        }

        *(v55 + 16) = v51;
      }
    }

    else
    {
      v15 = v62;

      v16 = v15 <= 0;
      v11 = v56;
      v7 = v57;
      if (!v16)
      {
        goto LABEL_43;
      }
    }
  }

  v52 = sub_251C717F4();
  v35 = v52 + v62;
  if (!__OFADD__(v52, v62))
  {
    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
LABEL_41:

  return v14;
}

unint64_t sub_251AABA54@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;

  result = sub_251AABA84(v4);
  *a2 = result;
  return result;
}

unint64_t sub_251AABA84(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_251C717F4();
    if (v19)
    {
      v20 = v19;
      v1 = sub_251C3A1BC(v19, 0);
      sub_251AA7068(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_251C717F4();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x25308D460]();
          v11 = MEMORY[0x25308D460](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_251AAF1D8(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_251AAF1D8(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

size_t sub_251AABC94@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_251C70014();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v6);
  v40 = sub_251C6FAE4();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AAFBA4(0, &qword_27F4793C8, type metadata accessor for PBTypedData);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v35 - v13;
  v15 = type metadata accessor for PBTypedData(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AAC580(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_251AAFDF0(v14, &qword_27F4793C8, type metadata accessor for PBTypedData);
    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    return (*(*(Output - 8) + 56))(v36, 1, 1, Output);
  }

  sub_251AAFD38(v14, v19, type metadata accessor for PBTypedData);
  v22 = type metadata accessor for ClinicalSharingSampleQuery();
  v23 = 0;
  v24 = v19;
  v25 = v36;
  if (*(v2 + *(v22 + 32)) != 1)
  {
    goto LABEL_16;
  }

  v26 = a1 >> 62 ? sub_251C717F4() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = MEMORY[0x277D84F90];
  if (!v26)
  {
    goto LABEL_16;
  }

  v35[0] = v24;
  v35[1] = v2;
  v39 = a1;
  v41 = MEMORY[0x277D84F90];
  result = sub_251C0B714(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v23 = v41;
    v37 = v7 + 32;
    v38 = v39 & 0xC000000000000001;
    v28 = v26;
    do
    {
      if (v38)
      {
        v29 = MEMORY[0x25308D460](v27, v39);
      }

      else
      {
        v29 = *(v39 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = [v29 startDate];
      sub_251C6FFE4();

      v32 = [v30 endDate];
      sub_251C6FFE4();

      sub_251C6FA94();
      v41 = v23;
      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_251C0B714(v33 > 1, v34 + 1, 1);
        v23 = v41;
      }

      ++v27;
      *(v23 + 16) = v34 + 1;
      (*(v7 + 32))(v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v34, v10, v40);
    }

    while (v28 != v27);
    v25 = v36;
    v24 = v35[0];
LABEL_16:
    sub_251BEFDB0(v24, v23, v25);

    return sub_251AB0380(v24, type metadata accessor for PBTypedData);
  }

  __break(1u);
  return result;
}

uint64_t sub_251AAC128(uint64_t a1)
{
  sub_251AAFBA4(0, &qword_27F4793D8, MEMORY[0x277CC9A70]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v36 - v5;
  sub_251AAFBA4(0, &qword_27F4793E0, MEMORY[0x277CC99E8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = sub_251C6FC94();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_251C70014();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ClinicalSharingSampleQuery();
  v22 = v1 + *(v21 + 36);
  if (*(v22 + 8))
  {
  }

  else
  {
    v37 = *v22;
    v23 = v1 + *(v21 + 20);
    sub_251C6FAB4();
    sub_251C70184();
    v24 = sub_251C701E4();
    (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
    v25 = sub_251C70244();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    sub_251C6FC74();
    v26 = objc_allocWithZone(MEMORY[0x277CCDD78]);
    v27 = sub_251C6FF94();
    v28 = sub_251C6FBC4();
    v29 = [v26 initWithAnchorDate:v27 intervalComponents:v28];

    (*(v12 + 8))(v15, v11);
    (*(v17 + 8))(v20, v16);
    v30 = v29;

    v32 = sub_251AAFE4C(v31, v30);

    v33 = sub_251AAF23C(v32, v37);

    sub_251AAB568(v33);

    v38 = sub_251AA6E04(v34);
    sub_251AAE11C(&v38);

    return v38;
  }

  return a1;
}

uint64_t sub_251AAC580@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v127 = type metadata accessor for PBCategorySeries(0);
  v4 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v128 = (&v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = type metadata accessor for PBTimeSeries(0);
  v6 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v8 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C70014();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v156 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v155 = &v126 - v13;
  sub_251AAFBA4(0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v132 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v140 = &v126 - v18;
  v19 = type metadata accessor for PBTypedData(0);
  v134 = *(v19 - 8);
  v20 = *(v134 + 64);
  MEMORY[0x28223BE20](v19);
  v138 = (&v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = type metadata accessor for PBDateRange(0);
  v135 = *(v139 - 8);
  v22 = *(v135 + 64);
  v23 = MEMORY[0x28223BE20](v139);
  v130 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v137 = &v126 - v25;
  v26 = sub_251C6FAE4();
  v27 = *(v26 - 1);
  v28 = v27[8];
  v29 = MEMORY[0x28223BE20](v26);
  v144 = &v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v154 = &v126 - v32;
  MEMORY[0x28223BE20](v31);
  v153 = &v126 - v33;
  sub_251AAFBA4(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v143 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v126 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v126 - v42;
  MEMORY[0x28223BE20](v41);
  v136 = &v126 - v44;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v129 = a2;
      a2 = v141;
      v45 = sub_251AAC128(a1);
      v151 = v27[7];
      v152 = (v27 + 7);
      v151(v43, 1, 1, v26);
      v133 = v19;
      v150 = v26;
      v126 = v8;
      a1 = v45 >> 62 ? sub_251C717F4() : *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!a1)
      {
        break;
      }

      v19 = 0;
      v148 = v45 & 0xFFFFFFFFFFFFFF8;
      v149 = v45 & 0xC000000000000001;
      v157 = (v27 + 4);
      v145 = (v27 + 6);
      v146 = a1;
      v142 = v27 + 1;
      v26 = &qword_27F478D90;
      v147 = v45;
      while (1)
      {
        if (v149)
        {
          v46 = MEMORY[0x25308D460](v19, v45);
        }

        else
        {
          if (v19 >= *(v148 + 16))
          {
            goto LABEL_34;
          }

          v46 = *(v45 + 8 * v19 + 32);
        }

        a2 = v46;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v158 = (v19 + 1);
        v47 = [v46 startDate];
        v48 = v43;
        sub_251C6FFE4();

        v49 = [a2 endDate];
        sub_251C6FFE4();

        v50 = v40;
        v51 = v153;
        v8 = v154;
        sub_251C6FA94();

        v27 = *v157;
        v52 = v51;
        v40 = v50;
        v53 = v150;
        (*v157)(v8, v52, v150);
        sub_251AAFC78(v43, v50, &qword_27F478D90, MEMORY[0x277CC88A8]);
        if ((*v145)(v50, 1, v53) == 1)
        {
          a2 = MEMORY[0x277CC88A8];
          sub_251AAFDF0(v43, &qword_27F478D90, MEMORY[0x277CC88A8]);
          sub_251AAFDF0(v50, &qword_27F478D90, a2);
          (v27)(v43, v8, v53);
          v151(v43, 0, 1, v53);
        }

        else
        {
          v54 = v144;
          (v27)(v144, v50, v53);
          v55 = v143;
          sub_251C6FAD4();
          v27 = v142;
          a2 = *v142;
          v56 = v54;
          v43 = v48;
          (*v142)(v56, v53);
          (a2)(v8, v53);
          sub_251AAFDF0(v48, &qword_27F478D90, MEMORY[0x277CC88A8]);
          v151(v55, 0, 1, v53);
          v57 = v55;
          v40 = v50;
          sub_251AAFBF8(v57, v48);
        }

        ++v19;
        a1 = v146;
        v45 = v147;
        if (v158 == v146)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      if (!sub_251C717F4())
      {
        goto LABEL_36;
      }
    }

LABEL_16:
    v58 = v136;
    sub_251AAFBF8(v43, v136);

    v59 = v137;
    v60 = v58;
    v61 = v141;
    sub_251BFC464(5, 1, v60);
    v62 = v59;
    v63 = v140;
    sub_251AB0318(v62, v140, type metadata accessor for PBDateRange);
    v64 = *(v135 + 56);
    v65 = v139;
    v64(v63, 0, 1, v139);
    v66 = v138;
    *v138 = 0;
    *(v66 + 8) = 1;
    v67 = v133;
    v68 = *(v133 + 20);
    v69 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v70 = *(v69 - 8);
    v71 = *(v70 + 56);
    v157 = (v70 + 56);
    v158 = v71;
    v71(v66 + v68, 1, 1, v69);
    v72 = v66 + *(v67 + 24);
    sub_251C703A4();
    v73 = *(v67 + 28);
    v74 = v65;
    v64(v66 + v73, 1, 1, v65);
    v156 = type metadata accessor for ClinicalSharingSampleQuery();
    v75 = *&v61[*(v156 + 6)];
    v76 = sub_251B3C450();
    if ((v77 & 0x100) == 0)
    {
      *v66 = v76;
      *(v66 + 8) = v77 & 1;
    }

    v78 = v132;
    sub_251AAFC78(v140, v132, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if ((*(v135 + 48))(v78, 1, v74) == 1)
    {
      sub_251AAFDF0(v78, qword_2813E6EE8, type metadata accessor for PBDateRange);
    }

    else
    {
      v79 = v78;
      v80 = v130;
      sub_251AAFD38(v79, v130, type metadata accessor for PBDateRange);
      sub_251AAFDF0(v66 + v73, qword_2813E6EE8, type metadata accessor for PBDateRange);
      sub_251AAFD38(v80, v66 + v73, type metadata accessor for PBDateRange);
      v64(v66 + v73, 0, 1, v139);
    }

    sub_251AAFDF0(v140, qword_2813E6EE8, type metadata accessor for PBDateRange);
    objc_opt_self();
    v81 = swift_dynamicCastObjCClass();
    if (v81)
    {
      v82 = v81;
      v155 = v75;
      v83 = v75;
      v84 = sub_251C2C490();
      if (v84)
      {
        v85 = v84;
        v86 = sub_251B14FF0(v45);

        if (v86)
        {
          v87 = v126;
          *v126 = 0;
          v87[1] = 0xE000000000000000;
          v88 = v131;
          v89 = v87 + *(v131 + 28);
          sub_251C703A4();
          v64(v87 + *(v88 + 32), 1, 1, v139);
          v90 = [v85 unitString];
          v91 = sub_251C70F14();
          v93 = v92;

          v87[2] = v91;
          v87[3] = v93;
          MEMORY[0x28223BE20](v94);
          v124 = v141;
          v125 = v85;
          v95 = sub_251BC12E0(sub_251AAFD0C, (&v126 - 4), v86);

          v87[4] = v95;
          v96 = v138;
          sub_251AAFDF0(v138 + v68, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
          sub_251AAFD38(v87, v96 + v68, type metadata accessor for PBTimeSeries);
          v75 = v155;
LABEL_28:
          swift_storeEnumTagMultiPayload();
          v158(v96 + v68, 0, 1, v69);
          v103 = [v75 code];
          sub_251AB0380(v137, type metadata accessor for PBDateRange);
          sub_251AAFDF0(v136, &qword_27F478D90, MEMORY[0x277CC88A8]);
          v104 = v103 == 15;
          v105 = v129;
          if (v104 && (v141[*(v156 + 9) + 8] & 1) == 0)
          {
            *v96 = 131;
            *(v96 + 8) = 1;
          }

          sub_251AAFD38(v96, v105, type metadata accessor for PBTypedData);
          return (*(v134 + 56))(v105, 0, 1, v133);
        }

        v159 = 0;
        v160 = 0xE000000000000000;
        sub_251C716A4();

        v159 = 0xD000000000000023;
        v160 = 0x8000000251C89D50;
        v112 = [v82 description];
        v113 = sub_251C70F14();
        v115 = v114;

        MEMORY[0x25308CDA0](v113, v115);

        LODWORD(v125) = 0;
      }

      else
      {
        v159 = 0;
        v160 = 0xE000000000000000;
        sub_251C716A4();

        v159 = 0xD00000000000001ALL;
        v160 = 0x8000000251C8A130;
        v108 = [v83 description];
        v109 = sub_251C70F14();
        v111 = v110;

        MEMORY[0x25308CDA0](v109, v111);

        LODWORD(v125) = 0;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v97 = sub_251B14FFC(v45);

        v96 = v138;
        if (v97)
        {
          v98 = v128;
          *v128 = 0;
          *(v98 + 8) = 0xE000000000000000;
          v99 = v127;
          v100 = v98 + *(v127 + 24);
          sub_251C703A4();
          v101 = (v64)(v98 + *(v99 + 28), 1, 1, v139);
          MEMORY[0x28223BE20](v101);
          v124 = v141;
          v102 = sub_251BC1320(sub_251AAFCE4, (&v126 - 4), v97);

          *(v98 + 16) = v102;
          sub_251AAFDF0(v96 + v68, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
          sub_251AAFD38(v98, v96 + v68, type metadata accessor for PBCategorySeries);
          goto LABEL_28;
        }

        v159 = 0;
        v160 = 0xE000000000000000;
        sub_251C716A4();

        v159 = 0xD000000000000023;
        v160 = 0x8000000251C89D50;
        v120 = [v75 description];
        v121 = sub_251C70F14();
        v123 = v122;

        MEMORY[0x25308CDA0](v121, v123);

        LODWORD(v125) = 0;
      }

      else
      {
        v159 = 0;
        v160 = 0xE000000000000000;
        sub_251C716A4();

        v159 = 0xD000000000000016;
        v160 = 0x8000000251C8A110;
        v116 = [v75 description];
        v117 = sub_251C70F14();
        v119 = v118;

        MEMORY[0x25308CDA0](v117, v119);

        LODWORD(v125) = 0;
      }
    }

    result = sub_251C717E4();
    __break(1u);
    return result;
  }

LABEL_36:
  v107 = *(v134 + 56);

  return v107(a2, 1, 1, v19);
}

void sub_251AAD688(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_251AAFBA4(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v42 - v9;
  v11 = type metadata accessor for PBDateRange(0);
  v48 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  v16 = type metadata accessor for PBCategorySeries.Event(0);
  v17 = a2 + v16[7];
  v18 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v44 = v18;
  v45 = v17;
  v42[1] = v19 + 56;
  v43 = v20;
  (v20)(v17, 1, 1);
  v21 = a2 + v16[8];
  sub_251C703A4();
  v22 = v16[9];
  v47 = *(v12 + 56);
  v47(a2 + v22, 1, 1, v11);
  v46 = a1;
  v23 = [a1 startDate];
  sub_251C6FFE4();

  v24 = sub_251C70014();
  v25 = *(*(v24 - 8) + 56);
  v25(v10, 0, 1, v24);
  v26 = [a1 endDate];
  sub_251C6FFE4();

  v25(v8, 0, 1, v24);
  sub_251C15BE4(v10, v8);
  v27 = v49;
  sub_251AAFDF0(v8, &qword_2813E7500, v49);
  sub_251AAFDF0(v10, &qword_2813E7500, v27);
  sub_251AAFDF0(a2 + v22, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251AAFD38(v15, a2 + v22, type metadata accessor for PBDateRange);
  v47(a2 + v22, 0, 1, v48);
  v28 = v46;
  v29 = [v46 sourceRevision];
  v30 = [v29 source];

  v31 = [v30 name];
  v32 = sub_251C70F14();
  v34 = v33;

  *(a2 + 24) = v32;
  *(a2 + 32) = v34;
  v35 = [v28 value];
  if (v35 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v35 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *a2 = v35;
  sub_251A8316C();
  if (v37)
  {
    v38 = v36;
    v39 = v37;
    v40 = v45;
    sub_251AAFDF0(v45, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    *v40 = v38;
    v40[1] = v39;
    v41 = v44;
    swift_storeEnumTagMultiPayload();
    v43(v40, 0, 1, v41);
  }
}

id sub_251AADAEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_251C70014();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 40) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0xE000000000000000;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0xE000000000000000;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 120) = MEMORY[0x277D84F90];
  *(a3 + 128) = 0;
  *(a3 + 136) = 256;
  v12 = a3 + *(type metadata accessor for PBTimeSeries.Value(0) + 80);
  sub_251C703A4();
  v13 = [a1 quantity];
  [v13 doubleValueForUnit_];
  v15 = v14;

  *(a3 + 112) = v15;
  v16 = [a1 startDate];
  sub_251C6FFE4();

  v17 = *(*v3 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v18 = sub_251C6FF94();
  v19 = [v17 stringFromDate_];

  v20 = sub_251C70F14();
  v22 = v21;

  (*(v8 + 8))(v11, v7);
  *(a3 + 24) = v20;
  *(a3 + 32) = v22;
  v23 = [a1 sourceRevision];
  v24 = [v23 source];

  v25 = [v24 name];
  v26 = sub_251C70F14();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    sub_251AAFDA0(0, &qword_27F4793D0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_251C74800;
    v31 = [a1 sourceRevision];
    v32 = [v31 source];

    v33 = [v32 name];
    v34 = sub_251C70F14();
    v36 = v35;

    *(v30 + 32) = v34;
    *(v30 + 40) = v36;
    *(a3 + 120) = v30;
  }

  result = sub_251C48D80();
  if ((v38 & 1) == 0)
  {
    v39 = result == 1;
    if (result == 2)
    {
      v39 = 2;
    }

    *(a3 + 128) = v39;
    *(a3 + 136) = 1;
  }

  return result;
}

void sub_251AADE3C()
{
  if (!qword_27F479388)
  {
    sub_251A82164();
    sub_251A821D4();
    sub_251AADF94(&qword_27F478D78, sub_251A82164);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479388);
    }
  }
}

void sub_251AADEE8()
{
  if (!qword_27F479390)
  {
    sub_251AADE3C();
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251AADF94(&qword_27F479398, sub_251AADE3C);
    v0 = sub_251C70784();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479390);
    }
  }
}

uint64_t sub_251AADF94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251AADFDC()
{
  if (!qword_27F4793A0)
  {
    sub_251A82164();
    sub_251AADF94(&qword_27F478D78, sub_251A82164);
    v0 = sub_251C708C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4793A0);
    }
  }
}

void sub_251AAE070()
{
  if (!qword_27F4793A8)
  {
    sub_251AADFDC();
    sub_251A821D4();
    sub_251AADF94(&qword_27F4793B0, sub_251AADFDC);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4793A8);
    }
  }
}

uint64_t sub_251AAE11C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_251BFC484(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_251AAE198(v6);
  return sub_251C71744();
}

void sub_251AAE198(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_251C71994();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_251A8223C(0, &qword_27F478D70, 0x277CCD8A8);
        v6 = sub_251C71184();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_251AAE4CC(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_251AAE2AC(0, v2, 1, a1);
  }
}

void sub_251AAE2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_251C70014();
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *v15;
      v20 = v17;
      v21 = v19;
      v22 = [v20 startDate];
      sub_251C6FFE4();

      v23 = [v21 startDate];
      v24 = v35;
      sub_251C6FFE4();

      LOBYTE(v23) = sub_251C6FFA4();
      v25 = *v14;
      v26 = v24;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v28;
      v15 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_251AAE4CC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v117 = a1;
  v126 = sub_251C70014();
  v9 = *(*(v126 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v126);
  v125 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v124 = &v111 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v17 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
    }

    else
    {
LABEL_121:
      v106 = sub_251BFABE4(a4);
    }

    v127 = v106;
    v107 = *(v106 + 2);
    if (v107 >= 2)
    {
      while (*v17)
      {
        a4 = *&v106[16 * v107];
        v108 = v106;
        v109 = *&v106[16 * v107 + 24];
        sub_251AAED3C((*v17 + 8 * a4), (*v17 + 8 * *&v106[16 * v107 + 16]), (*v17 + 8 * v109), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v109 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_251BFABE4(v108);
        }

        if (v107 - 2 >= *(v108 + 2))
        {
          goto LABEL_115;
        }

        v110 = &v108[16 * v107];
        *v110 = a4;
        v110[1] = v109;
        v127 = v108;
        sub_251BFAB58(v107 - 1);
        v106 = v127;
        v107 = *(v127 + 2);
        if (v107 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v15 = 0;
  v123 = (v12 + 8);
  v16 = MEMORY[0x277D84F90];
  v116 = a4;
  v112 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v121 = v14;
      v114 = v16;
      v115 = v6;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v120 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = v19;
      v23 = v21;
      v24 = [v22 startDate];
      v25 = v124;
      sub_251C6FFE4();

      v26 = [v23 startDate];
      v27 = v125;
      sub_251C6FFE4();

      LODWORD(v122) = sub_251C6FFA4();
      v28 = *v123;
      v29 = v126;
      (*v123)(v27, v126);
      v28(v25, v29);

      v113 = v17;
      v30 = (v17 + 2);
      while (1)
      {
        v15 = v121;
        if (v121 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *v5;
        v33 = v31;
        v34 = [v32 startDate];
        v35 = v124;
        sub_251C6FFE4();

        v36 = [v33 startDate];
        v37 = v125;
        sub_251C6FFE4();

        LODWORD(v36) = sub_251C6FFA4() & 1;
        v38 = v37;
        v39 = v126;
        v28(v38, v126);
        v28(v35, v39);

        ++v30;
        v5 += 8;
        if ((v122 & 1) != v36)
        {
          v15 = (v30 - 1);
          break;
        }
      }

      v16 = v114;
      v6 = v115;
      a4 = v116;
      v17 = v113;
      v40 = v120;
      if (v122)
      {
        if (v15 < v113)
        {
          goto LABEL_118;
        }

        a3 = v112;
        if (v113 < v15)
        {
          v41 = 8 * v15 - 8;
          v42 = v15;
          v43 = v113;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v44 = *(v45 + v40);
              *(v45 + v40) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            v43 = (v43 + 1);
            v41 -= 8;
            v40 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        a3 = v112;
      }
    }

    v46 = a3[1];
    if (v15 < v46)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v47 = (v17 + a4);
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v47)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v62 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v62;
    }

    else
    {
      v16 = sub_251C38DF0(0, *(v62 + 2) + 1, 1, v62);
    }

    a4 = *(v16 + 2);
    v63 = *(v16 + 3);
    v5 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v16 = sub_251C38DF0((v63 > 1), a4 + 1, 1, v16);
    }

    *(v16 + 2) = v5;
    v64 = &v16[16 * a4];
    *(v64 + 4) = v17;
    *(v64 + 5) = v15;
    v65 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v66 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v67 = *(v16 + 4);
          v68 = *(v16 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_56:
          if (v70)
          {
            goto LABEL_105;
          }

          v83 = &v16[16 * v5];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_108;
          }

          v89 = &v16[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_112;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v93 = &v16[16 * v5];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_70:
        if (v88)
        {
          goto LABEL_107;
        }

        v96 = &v16[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_110;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v66 - 1;
        if (v66 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v104 = v16;
        v5 = *&v16[16 * a4 + 32];
        v17 = *&v16[16 * v66 + 40];
        sub_251AAED3C((*a3 + 8 * v5), (*a3 + 8 * *&v16[16 * v66 + 32]), (*a3 + 8 * v17), v65);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v17 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_251BFABE4(v104);
        }

        if (a4 >= *(v104 + 2))
        {
          goto LABEL_102;
        }

        v105 = &v104[16 * a4];
        *(v105 + 4) = v5;
        *(v105 + 5) = v17;
        v127 = v104;
        a4 = &v127;
        sub_251BFAB58(v66);
        v16 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v16[16 * v5 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_103;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_104;
      }

      v78 = &v16[16 * v5];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_106;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_109;
      }

      if (v82 >= v74)
      {
        v100 = &v16[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_113;
        }

        if (v69 < v103)
        {
          v66 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v116;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v114 = v16;
  v115 = v6;
  v122 = *a3;
  v48 = v122 + 8 * v15 - 8;
  v113 = v17;
  a4 = v17 - v15;
  v118 = v47;
LABEL_29:
  v120 = v48;
  v121 = v15;
  v49 = *(v122 + 8 * v15);
  v119 = a4;
  v50 = v48;
  while (1)
  {
    v51 = *v50;
    v5 = v49;
    v52 = v51;
    v53 = [v5 startDate];
    v54 = v124;
    sub_251C6FFE4();

    v55 = [v52 startDate];
    v56 = v125;
    sub_251C6FFE4();

    LOBYTE(v55) = sub_251C6FFA4();
    v57 = *v123;
    v58 = v56;
    v59 = v126;
    (*v123)(v58, v126);
    v57(v54, v59);

    if ((v55 & 1) == 0)
    {
LABEL_28:
      v15 = v121 + 1;
      v48 = v120 + 8;
      a4 = v119 - 1;
      if ((v121 + 1) != v118)
      {
        goto LABEL_29;
      }

      v15 = v118;
      v16 = v114;
      v6 = v115;
      a3 = v112;
      v17 = v113;
      goto LABEL_36;
    }

    if (!v122)
    {
      break;
    }

    v60 = *v50;
    v49 = *(v50 + 8);
    *v50 = v49;
    *(v50 + 8) = v60;
    v50 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_251AAED3C(id *a1, id *a2, id *a3, void **a4)
{
  v57 = sub_251C70014();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v50 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v58 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v59 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > v58)
    {
      v51 = (v8 + 8);
LABEL_27:
      v50 = a1;
      v31 = a1 - 1;
      v32 = a3 - 1;
      v33 = v59;
      v52 = a1 - 1;
      do
      {
        v34 = a4;
        v35 = v32;
        v36 = v32 + 1;
        v37 = *--v33;
        v38 = *v31;
        v39 = v37;
        v54 = v39;
        v40 = v38;
        v53 = v40;
        v41 = [v39 startDate];
        v42 = v55;
        sub_251C6FFE4();

        v43 = [v40 startDate];
        v44 = v56;
        sub_251C6FFE4();

        LOBYTE(v43) = sub_251C6FFA4();
        v45 = *v51;
        v46 = v44;
        v47 = v57;
        (*v51)(v46, v57);
        v45(v42, v47);

        if (v43)
        {
          a4 = v34;
          a3 = v35;
          v48 = v52;
          if (v36 != v50)
          {
            *v35 = *v52;
          }

          if (v59 <= v34 || (a1 = v48, v48 <= v58))
          {
            a1 = v48;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v34;
        if (v36 != v59)
        {
          *v35 = *v33;
        }

        v32 = v35 - 1;
        v59 = v33;
        v31 = v52;
      }

      while (v33 > v34);
      v59 = v33;
      a1 = v50;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v59 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v58 = a1;
        v18 = *a4;
        v19 = *a2;
        v20 = v18;
        v21 = [v19 startDate];
        v22 = v55;
        sub_251C6FFE4();

        v23 = [v20 startDate];
        v24 = v56;
        sub_251C6FFE4();

        LOBYTE(v23) = sub_251C6FFA4();
        v25 = *v17;
        v26 = v24;
        v27 = v57;
        (*v17)(v26, v57);
        v25(v22, v27);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v58;
        v30 = v58 == a2++;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v58;
      v30 = v58 == a4++;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v59 - a4));
  }

  return 1;
}

uint64_t sub_251AAF1D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_251C717F4();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_251C716C4();
}

uint64_t sub_251AAF23C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_251AAF3A8(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_251AAF714(v11, v6, v4, a2);
  result = MEMORY[0x25308E2B0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251AAF3A8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v42 = a2;
  v50 = a4;
  v43 = a1;
  sub_251AB02A4();
  v49 = v5;
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v56 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v41 - v9;
  v53 = sub_251C6FAE4();
  v10 = *(*(v53 - 8) + 64);
  result = MEMORY[0x28223BE20](v53);
  v54 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v14 = 0;
  v51 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v47 = v12 + 16;
  v48 = v12;
  v46 = (v12 + 8);
  v22 = v54;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v52 = (v20 - 1) & v20;
LABEL_11:
    v26 = v23 | (v14 << 6);
    v27 = v51;
    v28 = *(v48 + 16);
    v29 = v53;
    v28(v22, v51[6] + *(v48 + 72) * v26, v53);
    v30 = v27[7];
    v45 = v26;
    v31 = *(v30 + 8 * v26);
    v32 = v55;
    v28(v55, v22, v29);
    v33 = v49;
    *(v32 + *(v49 + 48)) = v31;
    v34 = v32;
    v35 = v56;
    sub_251AB0318(v34, v56, sub_251AB02A4);
    v36 = *(v35 + *(v33 + 48));
    if (v36 >> 62)
    {
      v37 = sub_251C717F4();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_bridgeObjectRetain_n();

    sub_251AB0380(v55, sub_251AB02A4);
    v38 = *v46;
    v39 = v53;
    (*v46)(v56, v53);

    result = (v38)(v54, v39);
    v20 = v52;
    if (v37 <= v50)
    {
      *(v43 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      if (__OFADD__(v44++, 1))
      {
        goto LABEL_20;
      }
    }
  }

  v24 = v14;
  while (1)
  {
    v14 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      return sub_251AAF79C(v43, v42, v44, v51);
    }

    v25 = v16[v14];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v52 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *sub_251AAF714(void *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_251AAF3A8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_251AAF79C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v48 = sub_251C6FAE4();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v35 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_251AB03E0();
  result = sub_251C71824();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v37 = v7 + 16;
  v38 = result;
  v46 = v7 + 32;
  v16 = result + 64;
  v36 = a4;
  v39 = v7;
  v17 = v48;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v45 = *(v7 + 72);
    v23 = v41;
    (*(v7 + 16))(v41, v22 + v45 * v21, v17);
    v24 = *(a4[7] + 8 * v21);
    v43 = *(v7 + 32);
    v43(v47, v23, v17);
    v13 = v38;
    v25 = *(v38 + 40);
    sub_251AADF94(&qword_27F4793F8, MEMORY[0x277CC88A8]);
    v44 = v24;

    result = sub_251C70E84();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_26:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v13 + 48) + v29 * v45, v47, v48);
    *(*(v13 + 56) + 8 * v29) = v44;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v40[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
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

size_t sub_251AAFB30@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingSampleQuery() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_251AABC94(*a1, a2);
}

void sub_251AAFBA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251AAFBF8(uint64_t a1, uint64_t a2)
{
  sub_251AAFBA4(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AAFC78(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_251AAFBA4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_251AAFD0C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  return sub_251AADAEC(*a1, v3, a2);
}

uint64_t sub_251AAFD38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251AAFDA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251AAFDF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251AAFBA4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251AAFE4C(unint64_t a1, void *a2)
{
  v43 = a2;
  v42 = sub_251C70014();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_251C6FAE4();
  v36 = *(v40 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v9 = sub_251C717F4();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v38 = a1 & 0xFFFFFFFFFFFFFF8;
      v39 = a1 & 0xC000000000000001;
      v37 = (v3 + 8);
      v34 = (v36 + 8);
      v35 = v36 + 32;
      v11 = MEMORY[0x277D84F98];
      v33 = xmmword_251C74560;
      while (1)
      {
        if (v39)
        {
          v13 = MEMORY[0x25308D460](v10, a1);
        }

        else
        {
          if (v10 >= *(v38 + 16))
          {
            goto LABEL_21;
          }

          v13 = *(a1 + 8 * v10 + 32);
        }

        v14 = v13;
        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v16 = a1;
        v17 = [v13 startDate];
        v18 = v41;
        sub_251C6FFE4();

        v19 = sub_251C6FF94();
        (*v37)(v18, v42);
        a1 = [v43 dateIntervalContainingDate:v19 index:0];

        sub_251C6FA74();
        v3 = sub_251AC8D14(v8);
        v21 = v11[2];
        v22 = (v20 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_22;
        }

        v24 = v20;
        if (v11[3] < v23)
        {
          sub_251AC9F90(v23, 1);
          v11 = v44;
          v25 = sub_251AC8D14(v8);
          if ((v24 & 1) != (v26 & 1))
          {

            result = sub_251C71A14();
            __break(1u);
            return result;
          }

          v3 = v25;
        }

        if (v24)
        {
          v12 = (*v34)(v8, v40);
          v3 = v11[7] + 8 * v3;
          MEMORY[0x25308CEE0](v12);
          a1 = v16;
          if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v30 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_251C71174();
            a1 = v16;
          }

          sub_251C71194();
        }

        else
        {
          sub_251AAFDA0(0, &qword_27F47BD20, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
          a1 = swift_allocObject();
          *(a1 + 16) = v33;
          *(a1 + 32) = v14;
          v11[(v3 >> 6) + 8] |= 1 << v3;
          (*(v36 + 32))(v11[6] + *(v36 + 72) * v3, v8, v40);
          *(v11[7] + 8 * v3) = a1;
          v27 = v11[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_23;
          }

          v11[2] = v29;
          a1 = v16;
        }

        ++v10;
        if (v15 == v9)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

void sub_251AB02A4()
{
  if (!qword_27F4793E8)
  {
    sub_251C6FAE4();
    sub_251A821D4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4793E8);
    }
  }
}

uint64_t sub_251AB0318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AB0380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251AB03E0()
{
  if (!qword_27F4793F0)
  {
    sub_251C6FAE4();
    sub_251A821D4();
    sub_251AADF94(&qword_27F4793F8, MEMORY[0x277CC88A8]);
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4793F0);
    }
  }
}

uint64_t sub_251AB048C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v5 = sub_251C70074();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2978();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277CBCF38];
  sub_251AB29D0(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v47 - v19;
  v21 = *a1;
  v53[0] = v21;
  type metadata accessor for ClinicalSharingSyncContext();

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v10 + 8))(v13, v9);
  sub_251AB2A48(&qword_27F479410, &qword_27F479408, v14);
  v22 = sub_251C70A94();
  (*(v17 + 8))(v20, v16);
  v23 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v21 + v23, v53);
  v24 = v54;
  v25 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  (*(v25 + 16))(v24, v25);
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_1(v53);
  if (v27)
  {

    if (sub_251B30EC0())
    {
LABEL_6:
      v30 = sub_251AB0A30(v50, v21, v51, 0);
      goto LABEL_12;
    }

    v28 = *(v21 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus);
    if ([v28 userStatus] == 4)
    {

      goto LABEL_6;
    }

    v29 = [v28 userStatus];

    if (v29 == 5)
    {
      goto LABEL_6;
    }
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v31 = sub_251C70764();
  __swift_project_value_buffer(v31, qword_2813E8130);

  v32 = sub_251C70744();
  v33 = sub_251C713C4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v53[0] = v35;
    *v34 = 136315138;
    v37 = v48;
    v36 = v49;
    v38 = v21 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID;
    v39 = v47;
    (*(v48 + 16))(v47, v38, v49);
    sub_251AB2A8C(&qword_27F479418, MEMORY[0x277CC95F0]);
    v40 = sub_251C719A4();
    v42 = v41;
    (*(v37 + 8))(v39, v36);
    v43 = sub_251B10780(v40, v42, v53);

    *(v34 + 4) = v43;
    _os_log_impl(&dword_251A6C000, v32, v33, "No DocRef exists to update. Account: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x25308E2B0](v35, -1, -1);
    MEMORY[0x25308E2B0](v34, -1, -1);
  }

  v53[0] = v22;
  v44 = MEMORY[0x277CBCD88];
  sub_251AB29D0(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
  sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v44);
  v30 = sub_251C70A94();
LABEL_12:
  v45 = v30;

  *v52 = v45;
  return result;
}

uint64_t sub_251AB0A30(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v65) = a4;
  v82 = a3;
  sub_251AB2AD4();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2C00();
  v10 = *(v9 - 8);
  v75 = v9;
  v76 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v67 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2D3C();
  v14 = *(v13 - 8);
  v78 = v13;
  v79 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v74 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2E48();
  v18 = *(v17 - 8);
  v80 = v17;
  v81 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v77 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2978();
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x277CBCF38];
  sub_251AB29D0(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v64 = v28;
  v71 = *(v28 - 8);
  v70 = *(v71 + 64);
  v29 = MEMORY[0x28223BE20](v28);
  v68 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v61 - v31;
  v69 = a2;
  v83 = a2;
  type metadata accessor for ClinicalSharingSyncContext();

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v23 + 8))(v26, v22);
  v33 = swift_allocObject();
  *(v33 + 16) = v65;
  *(v33 + 24) = a1;
  v63 = a1;
  sub_251C70964();
  v34 = MEMORY[0x277CBCD88];
  sub_251AB29D0(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
  v36 = v35;
  sub_251AB2A48(&qword_27F479410, &qword_27F479408, v27);
  sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v34);
  v37 = v66;
  v38 = v32;
  v62 = v32;
  sub_251C70B94();

  v65 = MEMORY[0x277CBCCE0];
  sub_251AB2A8C(&qword_27F479458, sub_251AB2AD4);
  v39 = v73;
  v40 = sub_251C70A94();
  (*(v72 + 8))(v37, v39);
  v83 = v40;
  sub_251AB2CCC();
  v41 = v67;
  v61 = v36;
  sub_251C70B54();

  v42 = swift_allocObject();
  v43 = v63;
  *(v42 + 16) = v63;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_251AB2F60;
  *(v44 + 24) = v42;
  v45 = v43;
  sub_251C70964();
  sub_251AB2A8C(&qword_27F479440, sub_251AB2C00);
  v47 = v74;
  v46 = v75;
  sub_251C70B94();

  (*(v76 + 8))(v41, v46);
  v48 = v71;
  v49 = v68;
  v50 = v64;
  (*(v71 + 16))(v68, v38, v64);
  v51 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v52 = (v70 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v69;
  *(v53 + 16) = v82;
  *(v53 + 24) = v54;
  (*(v48 + 32))(v53 + v51, v49, v50);
  *(v53 + v52) = v45;
  sub_251AB2A8C(&qword_27F479450, sub_251AB2D3C);

  v55 = v45;
  v57 = v77;
  v56 = v78;
  sub_251C70BA4();

  (*(v79 + 8))(v47, v56);
  sub_251AB2A8C(&qword_27F479460, sub_251AB2E48);
  v58 = v80;
  v59 = sub_251C70A94();
  (*(v81 + 8))(v57, v58);
  (*(v48 + 8))(v62, v50);
  return v59;
}

uint64_t sub_251AB1274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);

  v13 = sub_251C70744();
  v14 = sub_251C713C4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = a2;
    v18 = v17;
    v33[0] = v17;
    *v16 = 136315138;
    (*(v7 + 16))(v10, v11 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v6);
    sub_251AB2A8C(&qword_27F479418, MEMORY[0x277CC95F0]);
    v19 = sub_251C719A4();
    v20 = v7;
    v22 = v21;
    (*(v20 + 8))(v10, v6);
    v23 = sub_251B10780(v19, v22, v33);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_251A6C000, v13, v14, "Preparing update request. Account: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v24 = v18;
    a2 = v36;
    MEMORY[0x25308E2B0](v24, -1, -1);
    v25 = v16;
    v3 = v32;
    MEMORY[0x25308E2B0](v25, -1, -1);
  }

  v26 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_docRefInfo;
  swift_beginAccess();
  sub_251A823B4(v11 + v26, v33);
  v27 = v34;
  v28 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  sub_251BBBC9C(v27, v28, a2);
  if (!v3)
  {
    sub_251AB2CCC();
    *(a2 + *(v29 + 48)) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_251AB1580(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_251C6F9A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_251AB31B0();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB335C();
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v28 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_251C66E04(a1, a2, 3, a3);
  (*(v7 + 16))(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  (*(v7 + 32))(v20 + v19, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_251AB354C;
  *(v21 + 24) = v20;
  sub_251AB3458(0, &qword_27F479470, &qword_27F479478, &qword_27F479480, 0x277CCAD28);
  sub_251AB3264(0, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  sub_251AB32E4();
  sub_251C70B54();

  sub_251AB2A8C(&qword_27F4794B8, sub_251AB31B0);
  v22 = sub_251C70A94();
  (*(v11 + 8))(v14, v10);
  v31 = v22;
  sub_251C70964();
  sub_251AB3458(0, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
  type metadata accessor for ClinicalSharingSyncContext();
  v23 = MEMORY[0x277CBCD88];
  sub_251AB29D0(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
  sub_251AB34D4();
  sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v23);
  v24 = v28;
  sub_251C70B94();

  sub_251AB2A8C(&qword_27F4794C0, sub_251AB335C);
  v25 = v29;
  v26 = sub_251C70A94();
  (*(v30 + 8))(v24, v25);
  return v26;
}

uint64_t sub_251AB1A2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_251AB35FC();
  *a2 = result;
  return result;
}

void sub_251AB1A58(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v112 = a4;
  v127 = a2;
  sub_251AB2AD4();
  v115 = v8;
  v114 = *(v8 - 8);
  v9 = *(v114 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2C00();
  v117 = *(v12 - 8);
  v118 = v12;
  v13 = *(v117 + 64);
  MEMORY[0x28223BE20](v12);
  v116 = v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2D3C();
  v123 = v15;
  v121 = *(v15 - 8);
  v16 = *(v121 + 64);
  MEMORY[0x28223BE20](v15);
  v126 = v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2E48();
  v124 = v18;
  v122 = *(v18 - 8);
  v19 = *(v122 + 64);
  MEMORY[0x28223BE20](v18);
  v120 = v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB2978();
  v22 = v21;
  v111 = *(v21 - 8);
  v23 = v111[8];
  MEMORY[0x28223BE20](v21);
  v25 = v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB29D0(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v125 = v26;
  v119 = *(v26 - 8);
  v27 = *(v119 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v113 = v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v128 = v104 - v29;
  v135 = *a1;
  v30 = v135;
  v31 = v135;
  sub_251A82284();
  if (swift_dynamicCast())
  {
    if (v134 == 2)
    {
      sub_251AB2F88(v131, v132, v133, 2);
      if (v127 < 1)
      {
        if (qword_2813E26F8 != -1)
        {
          swift_once();
        }

        v62 = sub_251C70764();
        __swift_project_value_buffer(v62, qword_2813E8130);
        v63 = v30;

        v64 = sub_251C70744();
        v65 = sub_251C713D4();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v130 = v67;
          *v66 = 136315394;
          sub_251C70074();
          sub_251AB2A8C(&qword_27F479418, MEMORY[0x277CC95F0]);
          v68 = sub_251C719A4();
          v70 = sub_251B10780(v68, v69, &v130);

          *(v66 + 4) = v70;
          *(v66 + 12) = 2080;
          v129 = v30;
          v71 = v30;
          v72 = sub_251C70F74();
          v74 = sub_251B10780(v72, v73, &v130);

          *(v66 + 14) = v74;
          _os_log_impl(&dword_251A6C000, v64, v65, "Could not update DocRef because of conflictResponseError. Account: %s. No retries left. Error: %s", v66, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v67, -1, -1);
          MEMORY[0x25308E2B0](v66, -1, -1);
        }

        swift_willThrow();
        v75 = v135;
        v76 = v30;
      }

      else
      {
        v108 = v127 - 1;
        if (qword_2813E26F8 != -1)
        {
          swift_once();
        }

        v109 = a5;
        v32 = sub_251C70764();
        __swift_project_value_buffer(v32, qword_2813E8130);
        v33 = v30;

        v34 = sub_251C70744();
        v35 = sub_251C713C4();

        v36 = os_log_type_enabled(v34, v35);
        v110 = a3;
        if (v36)
        {
          v37 = swift_slowAlloc();
          v106 = v35;
          v38 = v37;
          v107 = swift_slowAlloc();
          v130 = v107;
          *v38 = 136315650;
          v104[1] = sub_251C70074();
          sub_251AB2A8C(&qword_27F479418, MEMORY[0x277CC95F0]);
          v105 = v34;
          v39 = sub_251C719A4();
          v41 = sub_251B10780(v39, v40, &v130);

          *(v38 + 4) = v41;
          *(v38 + 12) = 2048;
          *(v38 + 14) = v127;
          *(v38 + 22) = 2080;
          v129 = v30;
          v42 = v30;
          v43 = sub_251C70F74();
          v45 = sub_251B10780(v43, v44, &v130);
          a3 = v110;

          *(v38 + 24) = v45;
          v46 = v105;
          _os_log_impl(&dword_251A6C000, v105, v106, "Could not update DocRef because of conflictResponseError. Retrying with no-cache header. Account: %s. Retries left: %ld. Error: %s", v38, 0x20u);
          v47 = v107;
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v47, -1, -1);
          MEMORY[0x25308E2B0](v38, -1, -1);
        }

        else
        {
        }

        v130 = a3;
        v127 = type metadata accessor for ClinicalSharingSyncContext();

        sub_251C70A24();
        sub_251C709F4();
        (v111[1])(v25, v22);
        v77 = swift_allocObject();
        *(v77 + 16) = 1;
        v78 = v112;
        *(v77 + 24) = v112;
        v111 = v78;
        sub_251C70964();
        v79 = MEMORY[0x277CBCD88];
        sub_251AB29D0(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
        v81 = v80;
        sub_251AB2A48(&qword_27F479410, &qword_27F479408, MEMORY[0x277CBCF38]);
        sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v79);
        sub_251C70B94();

        v112 = MEMORY[0x277CBCCE0];
        sub_251AB2A8C(&qword_27F479458, sub_251AB2AD4);
        v82 = v115;
        v83 = sub_251C70A94();
        (*(v114 + 8))(v11, v82);
        v130 = v83;
        sub_251AB2CCC();
        v84 = v116;
        v107 = v81;
        sub_251C70B54();

        v85 = swift_allocObject();
        v86 = v111;
        *(v85 + 16) = v111;
        v87 = swift_allocObject();
        *(v87 + 16) = sub_251AB37D4;
        *(v87 + 24) = v85;
        v88 = v86;
        sub_251C70964();
        sub_251AB2A8C(&qword_27F479440, sub_251AB2C00);
        v89 = v118;
        sub_251C70B94();

        (*(v117 + 8))(v84, v89);
        v90 = v119;
        v91 = v113;
        v92 = v125;
        (*(v119 + 16))(v113, v128, v125);
        v93 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v94 = swift_allocObject();
        v95 = v110;
        *(v94 + 16) = v108;
        *(v94 + 24) = v95;
        v96 = v91;
        v97 = v92;
        (*(v90 + 32))(v94 + v93, v96, v92);
        *(v94 + ((v27 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)) = v88;
        sub_251AB2A8C(&qword_27F479450, sub_251AB2D3C);

        v98 = v88;
        v99 = v120;
        v100 = v123;
        v101 = v126;
        sub_251C70BA4();

        (*(v121 + 8))(v101, v100);
        sub_251AB2A8C(&qword_27F479460, sub_251AB2E48);
        v102 = v124;
        v103 = sub_251C70A94();
        (*(v122 + 8))(v99, v102);
        (*(v90 + 8))(v128, v97);
        *v109 = v103;
      }

      return;
    }

    sub_251AB2F88(v131, v132, v133, v134);
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v48 = sub_251C70764();
  __swift_project_value_buffer(v48, qword_2813E8130);
  v49 = v30;

  v50 = sub_251C70744();
  v51 = sub_251C713D4();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v131 = v53;
    *v52 = 136315394;
    sub_251C70074();
    sub_251AB2A8C(&qword_27F479418, MEMORY[0x277CC95F0]);
    v54 = sub_251C719A4();
    v56 = sub_251B10780(v54, v55, &v131);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    v135 = v30;
    v57 = v30;
    v58 = sub_251C70F74();
    v60 = sub_251B10780(v58, v59, &v131);

    *(v52 + 14) = v60;
    _os_log_impl(&dword_251A6C000, v50, v51, "Could not update DocRef due to unknown error. Account: %s. Error: %s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v53, -1, -1);
    MEMORY[0x25308E2B0](v52, -1, -1);
  }

  swift_willThrow();
  v61 = v30;
}

void sub_251AB2978()
{
  if (!qword_27F479400)
  {
    type metadata accessor for ClinicalSharingSyncContext();
    v0 = sub_251C70A14();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479400);
    }
  }
}

void sub_251AB29D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ClinicalSharingSyncContext();
    v7 = sub_251A82284();
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251AB2A48(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_251AB29D0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AB2A8C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251AB2AD4()
{
  if (!qword_27F479420)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_251AB29D0(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    v1 = MEMORY[0x277CBCF38];
    sub_251AB29D0(255, &qword_27F479408, MEMORY[0x277CBCF38]);
    sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v0);
    sub_251AB2A48(&qword_27F479410, &qword_27F479408, v1);
    v2 = sub_251C708D4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F479420);
    }
  }
}

void sub_251AB2C00()
{
  if (!qword_27F479428)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_251AB29D0(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB2CCC();
    sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v0);
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479428);
    }
  }
}

void sub_251AB2CCC()
{
  if (!qword_27F479430)
  {
    sub_251C6F9A4();
    type metadata accessor for ClinicalSharingSyncContext();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479430);
    }
  }
}

void sub_251AB2D3C()
{
  if (!qword_27F479438)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_251AB29D0(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB2C00();
    sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v0);
    sub_251AB2A8C(&qword_27F479440, sub_251AB2C00);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479438);
    }
  }
}

void sub_251AB2E48()
{
  if (!qword_27F479448)
  {
    sub_251AB2D3C();
    v0 = MEMORY[0x277CBCD88];
    sub_251AB29D0(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB2A8C(&qword_27F479450, sub_251AB2D3C);
    sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v0);
    v1 = sub_251C70914();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479448);
    }
  }
}

void sub_251AB2F88(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4 == 2)
  {
LABEL_4:

    return;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t objectdestroy_8Tm_0()
{
  sub_251AB29D0(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v4 | 7);
}

void sub_251AB31B0()
{
  if (!qword_27F479468)
  {
    sub_251AB3458(255, &qword_27F479470, &qword_27F479478, &qword_27F479480, 0x277CCAD28);
    sub_251AB3264(255, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
    sub_251AB32E4();
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479468);
    }
  }
}

void sub_251AB3264(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_251A8223C(255, a3, a4);
    type metadata accessor for ClinicalSharingSyncContext();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

unint64_t sub_251AB32E4()
{
  result = qword_27F479498;
  if (!qword_27F479498)
  {
    sub_251AB3458(255, &qword_27F479470, &qword_27F479478, &qword_27F479480, 0x277CCAD28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479498);
  }

  return result;
}

void sub_251AB335C()
{
  if (!qword_27F4794A0)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_251AB29D0(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AB3458(255, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
    sub_251AB2A48(&qword_2813E21B8, &qword_2813E21B0, v0);
    sub_251AB34D4();
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4794A0);
    }
  }
}

void sub_251AB3458(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_251AB3264(255, a3, a4, a5);
    sub_251A82284();
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_251AB34D4()
{
  result = qword_27F4794B0;
  if (!qword_27F4794B0)
  {
    sub_251AB3458(255, &qword_27F4794A8, &qword_27F479488, &qword_27F479490, 0x277CCAA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4794B0);
  }

  return result;
}

uint64_t sub_251AB35FC()
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v0 = sub_251C70764();
  __swift_project_value_buffer(v0, qword_2813E8130);

  v1 = sub_251C70744();
  v2 = sub_251C713C4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    sub_251C70074();
    sub_251AB2A8C(&qword_27F479418, MEMORY[0x277CC95F0]);
    v5 = sub_251C719A4();
    v7 = sub_251B10780(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_251A6C000, v1, v2, "Successfully updated DocRef. Account: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x25308E2B0](v4, -1, -1);
    MEMORY[0x25308E2B0](v3, -1, -1);
  }

  return sub_251B265A4();
}

uint64_t sub_251AB37D8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for CatalogEntry();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_251AB4C94();
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251AB38F4, 0, 0);
}

uint64_t sub_251AB38F4()
{
  v13 = v0;
  sub_251A823B4(v0[18] + 8, (v0 + 2));
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = sub_251C70764();
  v0[27] = __swift_project_value_buffer(v1, qword_2813E8130);
  v2 = sub_251C70744();
  v3 = sub_251C713B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v0[16] = &type metadata for IssuerDirectoryDownloadTask;
    sub_251AB5FE8();
    v6 = sub_251C70F74();
    v8 = sub_251B10780(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_251A6C000, v2, v3, "%s: downloading catalog", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x25308E2B0](v5, -1, -1);
    MEMORY[0x25308E2B0](v4, -1, -1);
  }

  v9 = *v0[18];
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_251AB3AE8;

  return sub_251A835F8((v0 + 11), v9);
}

uint64_t sub_251AB3AE8()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_251AB4878;
  }

  else
  {
    v3 = sub_251AB3BFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251AB3BFC()
{
  v1 = v0[11];
  v0[30] = v1;
  v0[12] = v1;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_251AB3CA8;
  v3 = v0[26];
  v4 = v0[18];

  return sub_251AB4CEC(v3, v0 + 12);
}

uint64_t sub_251AB3CA8(uint64_t a1, char a2)
{
  v4 = *v3;
  v5 = *(*v3 + 248);
  v8 = *v3;
  *(v4 + 360) = a2;
  *(v4 + 256) = a1;
  *(v4 + 264) = v2;

  if (v2)
  {
    v6 = sub_251AB4924;
  }

  else
  {
    v6 = sub_251AB3DC0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_251AB3DC0()
{
  v24 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  sub_251AB6030(*(v0 + 208), v1, sub_251AB4C94);
  v4 = *(v3 + 48);
  *(v0 + 272) = v4;
  *(v0 + 280) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 360);
    v6 = *(v0 + 256);
    sub_251AB5F88(*(v0 + 200), sub_251AB4C94);
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = MEMORY[0x277D84F90];
    *(v0 + 304) = v7;
    *(v0 + 312) = v8;
    *(v0 + 104) = *(v0 + 240);
    v9 = swift_task_alloc();
    *(v0 + 320) = v9;
    *v9 = v0;
    v9[1] = sub_251AB4260;
    v10 = *(v0 + 192);
    v11 = *(v0 + 144);

    return sub_251AB55D4(v10, (v0 + 104));
  }

  else
  {
    v13 = *(v0 + 216);
    sub_251AB5F24(*(v0 + 200), *(v0 + 176));
    v14 = sub_251C70744();
    v15 = sub_251C713B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      *(v0 + 120) = &type metadata for IssuerDirectoryDownloadTask;
      sub_251AB5FE8();
      v18 = sub_251C70F74();
      v20 = sub_251B10780(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_251A6C000, v14, v15, "%s: downloading issuer directory", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x25308E2B0](v17, -1, -1);
      MEMORY[0x25308E2B0](v16, -1, -1);
    }

    v21 = swift_task_alloc();
    *(v0 + 288) = v21;
    *v21 = v0;
    v21[1] = sub_251AB4078;
    v22 = *(v0 + 176);

    return sub_251A8413C(v0 + 72, v22);
  }
}

uint64_t sub_251AB4078()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = *(v2 + 240);

    v5 = sub_251AB49DC;
  }

  else
  {
    v5 = sub_251AB4194;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251AB4194()
{
  sub_251AB5F88(v0[22], type metadata accessor for CatalogEntry);
  v1 = v0[10];
  v0[38] = v0[9];
  v0[39] = v1;
  v0[13] = v0[30];
  v2 = swift_task_alloc();
  v0[40] = v2;
  *v2 = v0;
  v2[1] = sub_251AB4260;
  v3 = v0[24];
  v4 = v0[18];

  return sub_251AB55D4(v3, v0 + 13);
}

uint64_t sub_251AB4260(uint64_t a1, char a2)
{
  v4 = *v3;
  v5 = *(*v3 + 320);
  v10 = *v3;
  *(v4 + 361) = a2;
  *(v4 + 328) = a1;
  *(v4 + 336) = v2;

  if (v2)
  {
    v6 = *(v4 + 312);

    v7 = sub_251AB4AC4;
  }

  else
  {
    v8 = *(v4 + 240);

    v7 = sub_251AB4388;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_251AB4388()
{
  v32 = v0;
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 184);
  v4 = *(v0 + 152);
  sub_251AB6030(*(v0 + 192), v3, sub_251AB4C94);
  if (v2(v3, 1, v4) == 1)
  {
    v5 = *(v0 + 361);
    v6 = *(v0 + 328);
    v7 = *(v0 + 208);
    v8 = *(v0 + 192);
    sub_251AB5F88(*(v0 + 184), sub_251AB4C94);
    if (v5)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    sub_251AB5F88(v8, sub_251AB4C94);
    sub_251AB5F88(v7, sub_251AB4C94);
    sub_251AB5ED0(v0 + 16);
    v10 = *(v0 + 312);
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    v17 = *(v0 + 136);
    *v17 = *(v0 + 304);
    v17[1] = v10;
    v18 = MEMORY[0x277D84F90];
    v17[2] = v9;
    v17[3] = v18;

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 216);
    sub_251AB5F24(*(v0 + 184), *(v0 + 168));
    v22 = sub_251C70744();
    v23 = sub_251C713B4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      *(v0 + 112) = &type metadata for IssuerDirectoryDownloadTask;
      sub_251AB5FE8();
      v26 = sub_251C70F74();
      v28 = sub_251B10780(v26, v27, &v31);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_251A6C000, v22, v23, "%s: downloading public keys", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x25308E2B0](v25, -1, -1);
      MEMORY[0x25308E2B0](v24, -1, -1);
    }

    v29 = swift_task_alloc();
    *(v0 + 344) = v29;
    *v29 = v0;
    v29[1] = sub_251AB464C;
    v30 = *(v0 + 168);

    return sub_251A84A64(v0 + 56, v30);
  }
}

uint64_t sub_251AB464C()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 312);

    v5 = sub_251AB4B98;
  }

  else
  {
    v5 = sub_251AB4768;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251AB4768()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  sub_251AB5F88(*(v0 + 168), type metadata accessor for CatalogEntry);
  sub_251AB5F88(v2, sub_251AB4C94);
  sub_251AB5F88(v1, sub_251AB4C94);
  sub_251AB5ED0(v0 + 16);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 136);
  *v11 = *(v0 + 304);
  *(v11 + 16) = v3;
  *(v11 + 24) = v4;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_251AB4878()
{
  sub_251AB5ED0((v0 + 2));
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];

  v8 = v0[1];

  return v8();
}