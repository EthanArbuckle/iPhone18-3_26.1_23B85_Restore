uint64_t sub_1E616A204(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for RouteSource(0);
  v2[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = type metadata accessor for RouteDestination();
  v2[11] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v11 = sub_1E65E20A8();
  v2[14] = v11;
  v12 = *(v11 - 8);
  v2[15] = v12;
  v13 = *(v12 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616A404, 0, 0);
}

uint64_t sub_1E616A404()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_1E5DFD1CC(*(v0 + 32), v3, &qword_1ED073718, &qword_1E65ED978);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(*(v0 + 104), &qword_1ED073718, &qword_1E65ED978);
    v4 = *(v0 + 128);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 96);
    v39 = *(v0 + 88);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v34 = *(v0 + 64);
    v36 = *(v0 + 56);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    v40 = v16[3];
    v41 = v16[4];
    __swift_project_boxed_opaque_existential_1(v16, v40);
    MEMORY[0x1E6949A30]();
    v18 = sub_1E65D76F8();
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
    v19 = sub_1E65E2058();
    v37 = v20;
    v38 = v19;
    v35 = v15;
    sub_1E65E2078();
    v21 = sub_1E65E2CF8();
    (*(*(v21 - 8) + 56))(v15, 0, 1, v21);
    v32 = sub_1E65E2048();
    sub_1E65E2068();
    v33 = sub_1E65E2088();
    v22 = sub_1E65E2098();
    swift_storeEnumTagMultiPayload();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
    v24 = (v13 + v23[12]);
    v25 = v23[16];
    v26 = v23[20];
    v27 = v23[24];
    v28 = v23[28];
    v29 = v13 + v23[32];
    sub_1E5DFD1CC(v14, v13, &unk_1ED077760, &unk_1E66011D0);
    *v24 = v38;
    v24[1] = v37;
    sub_1E5DFD1CC(v35, v13 + v25, &qword_1ED072B60, &unk_1E65FA490);
    *(v13 + v26) = v32;
    sub_1E5DFD1CC(v34, v13 + v27, &unk_1ED077750, &unk_1E66011C0);
    *(v13 + v28) = v33;
    *v29 = v22;
    *(v29 + 8) = 0;
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    sub_1E5E1E1E8(v36, v13 + *(v39 + 20), type metadata accessor for RouteSource);
    sub_1E5DFE50C(v34, &unk_1ED077750, &unk_1E66011C0);
    sub_1E5DFE50C(v35, &qword_1ED072B60, &unk_1E65FA490);
    sub_1E5DFE50C(v14, &unk_1ED077760, &unk_1E66011D0);
    *(v13 + *(v39 + 24)) = MEMORY[0x1E69E7CD0];
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    sub_1E600F5B0((v0 + 25));
    v30 = swift_task_alloc();
    *(v0 + 136) = v30;
    *v30 = v0;
    v30[1] = sub_1E616A83C;
    v31 = *(v0 + 96);

    return RoutingContext.presentDestination(_:style:priority:)(v31, (v0 + 16), (v0 + 25), v40, v41);
  }
}

uint64_t sub_1E616A83C()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 144) = v0;

  sub_1E60111F8(v3);
  if (v0)
  {
    v4 = sub_1E616AA34;
  }

  else
  {
    v4 = sub_1E616A96C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E616A96C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E616AA34()
{
  v1 = v0[13];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v7 = v0[1];
  v8 = v0[18];

  return v7();
}

uint64_t sub_1E616AB08(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E616A204(a1, v1 + 16);
}

uint64_t sub_1E616ABA0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D9C28();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_1E65E20A8();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616ACF4, 0, 0);
}

uint64_t sub_1E616ACF4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1E5DFD1CC(v0[2], v3, &qword_1ED073718, &qword_1E65ED978);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[7], &qword_1ED073718, &qword_1E65ED978);
    v4 = v0[10];
    v5 = v0[6];
    v6 = v0[7];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[6];
    v10 = v0[3];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v11 = v10 + *(type metadata accessor for AppComposer() + 20);
    v12 = v11 + *(type metadata accessor for AppEnvironment() + 100);
    v13 = RemoteBrowsingService.showPersonalizedWorkoutPlanCreationPrompt.getter();
    v0[11] = v14;
    sub_1E62588A8(v9);
    v18 = (v13 + *v13);
    v15 = v13[1];
    v16 = swift_task_alloc();
    v0[12] = v16;
    *v16 = v0;
    v16[1] = sub_1E616AF0C;
    v17 = v0[6];

    return v18(v17);
  }
}

uint64_t sub_1E616AF0C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1E616B130;
  }

  else
  {
    v7 = sub_1E616B0A0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E616B0A0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E616B130()
{
  v1 = v0[7];
  v2 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_1E616B1CC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E616ABA0(a1, v1 + v5);
}

uint64_t sub_1E616B2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v57 = a7;
  v58 = a8;
  v60 = a5;
  v61 = a6;
  v54 = a2;
  v55 = a4;
  v56 = a1;
  v59 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v52 - v16;
  v18 = sub_1E65D7848();
  v52 = *(v18 - 8);
  v53 = v18;
  v19 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E65E23A8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v52 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = &v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  if (a3)
  {
    sub_1E5DFD1CC(v55, v34, &qword_1ED073718, &qword_1E65ED978);
    v36 = v56 + *(type metadata accessor for AppState() + 108);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    (*(v23 + 16))(v27, v36 + *(v37 + 28), v22);
    v38 = *(v58 + *(type metadata accessor for AppComposer() + 20) + 8);

    sub_1E65DAE38();
    sub_1E65DAE38();
    return sub_1E65E20F8();
  }

  else
  {
    sub_1E5DFD1CC(v55, &v52 - v35, &qword_1ED073718, &qword_1E65ED978);
    v40 = type metadata accessor for AppState();
    v41 = v56 + *(v40 + 108);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    v43 = *(v23 + 16);
    v44 = v41 + *(v42 + 28);
    v55 = v29;
    v43(v29, v44, v22);
    v45 = *(v40 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    sub_1E65E4C98();
    sub_1E5E1F544(v17);
    sub_1E5DFE50C(v13, &qword_1ED071F78, &unk_1E65EA3F0);
    v47 = v52;
    v46 = v53;
    v48 = *(v52 + 48);
    if (v48(v17, 1, v53) == 1)
    {
      sub_1E65D77C8();
      v49 = v48(v17, 1, v46);
      v50 = v58;
      if (v49 != 1)
      {
        sub_1E5DFE50C(v17, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v47 + 32))(v21, v17, v46);
      v50 = v58;
    }

    v51 = *(v50 + *(type metadata accessor for AppComposer() + 20) + 8);
    sub_1E65DAE38();
    sub_1E65DAE38();

    return sub_1E65E2108();
  }
}

uint64_t sub_1E616B784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E616B7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for AppComposer() - 8);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = *(v2 + v7);
  v13 = *(v2 + v8);
  v14 = *(v2 + v8 + 8);
  v15 = v2 + ((v8 + *(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1E616B2A4(a1, v10, v11, v2 + v6, v12, v13, v14, v15, a2);
}

uint64_t sub_1E616B908(uint64_t a1)
{
  v2 = sub_1E65E23A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E20E8();
  v7 = a1 + *(type metadata accessor for AppState() + 108);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  return (*(v3 + 40))(v7 + *(v8 + 28), v6, v2);
}

uint64_t sub_1E616BA04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E616BAEC@<X0>(uint64_t *a1@<X8>)
{
  v101 = a1;
  v105 = type metadata accessor for ContentAvailabilityService();
  Description = v105[-1].Description;
  v2 = Description[8];
  MEMORY[0x1EEE9AC00](v105);
  v89 = v3;
  v104 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v108 = &v75 - v6;
  v96 = type metadata accessor for ArchivedSessionService();
  v107 = v96[-1].Description;
  v7 = v107[8];
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v8;
  v9 = type metadata accessor for CatalogService();
  v10 = v9[-1].Description;
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  v103 = *(v87 - 8);
  v13 = *(v103 + 64);
  v14 = MEMORY[0x1EEE9AC00](v87);
  v102 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v75 - v16;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v17 = sub_1E65E3B68();
  __swift_project_value_buffer(v17, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v18 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v88 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v19 = type metadata accessor for AppEnvironment();
  v20 = v19[8];
  v86 = v20;
  v21 = v19[12];
  v98 = v19[14];
  v22 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  KeyPath = swift_getKeyPath();
  (v10[2])(&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v21, v9);
  v23 = v107;
  v84 = v107[2];
  v85 = (v107 + 2);
  v24 = v18 + v20;
  v25 = v99;
  v26 = v96;
  v84(v99, v24, v96);
  v27 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v83 = *(v23 + 80);
  v28 = (v11 + v83 + v27) & ~v83;
  v29 = swift_allocObject();
  (v10[4])(v29 + v27, v12, v9);
  v30 = v23[4];
  v107 = v23 + 4;
  v82 = v30;
  v30(v29 + v28, v25, v26);

  v31 = v97;
  sub_1E65E4E08();
  v32 = v87;
  v33 = v101;
  v101[3] = v87;
  v33[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v35 = v103;
  v36 = v103 + 16;
  v37 = *(v103 + 16);
  v38 = v31;
  v37(boxed_opaque_existential_1, v31, v32);
  v90 = v36;
  v91 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  KeyPath = swift_allocObject();
  *(KeyPath + 16) = xmmword_1E65EA8E0;
  v93 = sub_1E65E60A8();
  v39 = *(v93 - 8);
  v92 = *(v39 + 56);
  v94 = v39 + 56;
  v92(v108, 1, 1, v93);
  v40 = Description;
  v41 = Description[2];
  v80 = (Description + 2);
  v81 = v41;
  v42 = v88;
  v44 = v104;
  v43 = v105;
  v41(v104, v88 + v98, v105);
  v45 = v38;
  v46 = v32;
  v37(v102, v45, v32);
  v47 = *(v40 + 80);
  v48 = *(v35 + 80);
  v49 = (v47 + 32) & ~v47;
  v78 = v49;
  v79 = v48 | v47;
  v50 = (v89 + v48 + v49) & ~v48;
  v76 = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  v77 = v40[4];
  Description = v40 + 4;
  v77(v51 + v49, v44, v43);
  v89 = *(v35 + 32);
  v52 = v102;
  v53 = v46;
  v89(v51 + v50, v102, v46);
  v54 = v108;
  v55 = sub_1E6059EAC(0, 0, v108, &unk_1E65F37E8, v51);
  *(KeyPath + 32) = v55;
  v92(v54, 1, 1, v93);
  v56 = v99;
  v57 = v96;
  v84(v99, v42 + v86, v96);
  v58 = v52;
  v59 = v52;
  v60 = v97;
  v61 = v53;
  v91(v58, v97, v53);
  v62 = (v83 + 32) & ~v83;
  v63 = (v62 + v100 + v48) & ~v48;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  v82(v64 + v62, v56, v57);
  v65 = v61;
  v89(v64 + v63, v59, v61);
  v66 = v108;
  v67 = sub_1E6059EAC(0, 0, v108, &unk_1E65F37F8, v64);
  v68 = KeyPath;
  *(KeyPath + 40) = v67;
  v92(v66, 1, 1, v93);
  v69 = v104;
  v70 = v105;
  v81(v104, v88 + v98, v105);
  v71 = v65;
  v91(v59, v60, v65);
  v72 = v76;
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = 0;
  v77(v73 + v78, v69, v70);
  v89(v73 + v72, v59, v71);
  *(v68 + 48) = sub_1E6059EAC(0, 0, v66, &unk_1E65F3808, v73);
  result = (*(v103 + 8))(v60, v71);
  v101[5] = v68;
  return result;
}

uint64_t sub_1E616C420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8798();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1E65D76A8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616C54C, 0, 0);
}

uint64_t sub_1E616C54C()
{
  v1 = v0[3];
  v2 = CatalogService.requestCatalogSync.getter();
  v0[12] = v3;
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1E616C644;

  return v7(1);
}

uint64_t sub_1E616C644()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  v5 = *(v2 + 96);
  if (v0)
  {

    v6 = sub_1E6171EC0;
  }

  else
  {

    v6 = sub_1E616C78C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E616C78C()
{
  v1 = v0[4];
  v2 = ArchivedSessionService.queryAllCompletedWorkoutIdentifiers.getter();
  v0[14] = v3;
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1E616C880;

  return v7();
}

uint64_t sub_1E616C880(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 112);

    v8 = sub_1E616CFCC;
  }

  else
  {
    *(v4 + 128) = a1;
    v8 = sub_1E616C9B8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E616C9B8()
{
  v1 = v0[16];
  v2 = v0[14];

  v0[17] = v1;
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[3];
  v8 = CatalogService.queryCatalogWorkoutReferencesReleasedSince.getter();
  v0[18] = v9;
  sub_1E65D7688();
  sub_1E65E61C8();
  sub_1E65D7678();
  v10 = *(v6 + 8);
  v0[19] = v10;
  v0[20] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v5);
  v15 = (v8 + *v8);
  v11 = v8[1];
  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_1E616CB28;
  v13 = v0[11];

  return v15(v13, 2);
}

uint64_t sub_1E616CB28(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  v4[22] = v1;

  v7 = v4[20];
  v8 = v4[19];
  v9 = v4[18];
  if (v1)
  {
    v10 = v4[17];
    v8(v4[11], v4[8]);

    v11 = sub_1E6171EB0;
  }

  else
  {
    v12 = v4[11];
    v13 = v4[8];
    v4[23] = a1;
    v8(v12, v13);

    v11 = sub_1E616CCC4;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1E616CCC4()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[7];
  v4 = v0[3];
  v5 = CatalogService.requestCatalogLockupPlaceholderBackfill.getter();
  v0[24] = v6;
  sub_1E600C468(v1);

  sub_1E65D8788();
  v11 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_1E616CE20;
  v9 = v0[7];

  return v11(v9);
}

uint64_t sub_1E616CE20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  v4[26] = v1;

  v7 = v4[24];
  v8 = v4[7];
  v9 = v4[6];
  v10 = v4[5];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E6171EB4;
  }

  else
  {
    v4[27] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E6171EBC;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1E616CFCC()
{
  v0[17] = 0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[3];
  v6 = CatalogService.queryCatalogWorkoutReferencesReleasedSince.getter();
  v0[18] = v7;
  sub_1E65D7688();
  sub_1E65E61C8();
  sub_1E65D7678();
  v8 = *(v4 + 8);
  v0[19] = v8;
  v0[20] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v3);
  v13 = (v6 + *v6);
  v9 = v6[1];
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_1E616CB28;
  v11 = v0[11];

  return v13(v11, 2);
}

uint64_t sub_1E616D130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616D264, 0, 0);
}

uint64_t sub_1E616D264()
{
  v1 = v0[2];
  v2 = ContentAvailabilityService.makeContentAvailabilityUpdatedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E616D360;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E616D360()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E616D478, 0, 0);
}

uint64_t sub_1E616D478()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E616D554;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E616D554()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E616D650, 0, 0);
}

uint64_t sub_1E616D650()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E616D750, v5, v4);
  }
}

uint64_t sub_1E616D750()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E616D554;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E616D81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616D950, 0, 0);
}

uint64_t sub_1E616D950()
{
  v1 = v0[3];
  v2 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E616DA4C;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E616DA4C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E6171EB8;
  }

  else
  {
    v4 = sub_1E616DB7C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E616DB7C()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E616DC58;
  v7 = v0[10];
  v8 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
}

uint64_t sub_1E616DC58()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E616DD54, 0, 0);
}

uint64_t sub_1E616DD54()
{
  if (v0[2])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E616DE54, v2, v1);
  }

  else
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E616DE54()
{
  v1 = v0[15];
  v2 = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E616DC58;
  v5 = v0[10];
  v6 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1E616DF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B08, &qword_1E65EC510);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B00, &qword_1E65EC508);
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616E054, 0, 0);
}

uint64_t sub_1E616E054()
{
  v1 = v0[4];
  v2 = ContentAvailabilityService.makeStorefrontLanguageUpdatedStream.getter();
  v0[12] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1E616E150;
  v6 = v0[8];

  return v8(v6);
}

uint64_t sub_1E616E150()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E616E268, 0, 0);
}

uint64_t sub_1E616E268()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E616E344;
  v7 = v0[11];
  v8 = v0[9];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
}

uint64_t sub_1E616E344()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E616E440, 0, 0);
}

uint64_t sub_1E616E440()
{
  if (v0[3])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E616E540, v2, v1);
  }

  else
  {
    v3 = v0[8];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E616E540()
{
  v1 = v0[15];
  v2 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E616E344;
  v5 = v0[11];
  v6 = v0[9];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1E616E60C@<X0>(uint64_t *a1@<X8>)
{
  v101 = a1;
  v105 = type metadata accessor for ContentAvailabilityService();
  Description = v105[-1].Description;
  v2 = Description[8];
  MEMORY[0x1EEE9AC00](v105);
  v89 = v3;
  v104 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v108 = &v75 - v6;
  v96 = type metadata accessor for ArchivedSessionService();
  v107 = v96[-1].Description;
  v7 = v107[8];
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v8;
  v9 = type metadata accessor for CatalogService();
  v10 = v9[-1].Description;
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  v103 = *(v87 - 8);
  v13 = *(v103 + 64);
  v14 = MEMORY[0x1EEE9AC00](v87);
  v102 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v75 - v16;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v17 = sub_1E65E3B68();
  __swift_project_value_buffer(v17, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v18 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v88 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v19 = type metadata accessor for AppEnvironment();
  v20 = v19[8];
  v86 = v20;
  v21 = v19[12];
  v98 = v19[14];
  v22 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  KeyPath = swift_getKeyPath();
  (v10[2])(&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v21, v9);
  v23 = v107;
  v84 = v107[2];
  v85 = (v107 + 2);
  v24 = v18 + v20;
  v25 = v99;
  v26 = v96;
  v84(v99, v24, v96);
  v27 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v83 = *(v23 + 80);
  v28 = (v11 + v83 + v27) & ~v83;
  v29 = swift_allocObject();
  (v10[4])(v29 + v27, v12, v9);
  v30 = v23[4];
  v107 = v23 + 4;
  v82 = v30;
  v30(v29 + v28, v25, v26);

  v31 = v97;
  sub_1E65E4E08();
  v32 = v87;
  v33 = v101;
  v101[3] = v87;
  v33[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v35 = v103;
  v36 = v103 + 16;
  v37 = *(v103 + 16);
  v38 = v31;
  v37(boxed_opaque_existential_1, v31, v32);
  v90 = v36;
  v91 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  KeyPath = swift_allocObject();
  *(KeyPath + 16) = xmmword_1E65EA8E0;
  v93 = sub_1E65E60A8();
  v39 = *(v93 - 8);
  v92 = *(v39 + 56);
  v94 = v39 + 56;
  v92(v108, 1, 1, v93);
  v40 = Description;
  v41 = Description[2];
  v80 = (Description + 2);
  v81 = v41;
  v42 = v88;
  v44 = v104;
  v43 = v105;
  v41(v104, v88 + v98, v105);
  v45 = v38;
  v46 = v32;
  v37(v102, v45, v32);
  v47 = *(v40 + 80);
  v48 = *(v35 + 80);
  v49 = (v47 + 32) & ~v47;
  v78 = v49;
  v79 = v48 | v47;
  v50 = (v89 + v48 + v49) & ~v48;
  v76 = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  v77 = v40[4];
  Description = v40 + 4;
  v77(v51 + v49, v44, v43);
  v89 = *(v35 + 32);
  v52 = v102;
  v53 = v46;
  v89(v51 + v50, v102, v46);
  v54 = v108;
  v55 = sub_1E6059EAC(0, 0, v108, &unk_1E65F3778, v51);
  *(KeyPath + 32) = v55;
  v92(v54, 1, 1, v93);
  v56 = v99;
  v57 = v96;
  v84(v99, v42 + v86, v96);
  v58 = v52;
  v59 = v52;
  v60 = v97;
  v61 = v53;
  v91(v58, v97, v53);
  v62 = (v83 + 32) & ~v83;
  v63 = (v62 + v100 + v48) & ~v48;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  v82(v64 + v62, v56, v57);
  v65 = v61;
  v89(v64 + v63, v59, v61);
  v66 = v108;
  v67 = sub_1E6059EAC(0, 0, v108, &unk_1E65F3788, v64);
  v68 = KeyPath;
  *(KeyPath + 40) = v67;
  v92(v66, 1, 1, v93);
  v69 = v104;
  v70 = v105;
  v81(v104, v88 + v98, v105);
  v71 = v65;
  v91(v59, v60, v65);
  v72 = v76;
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = 0;
  v77(v73 + v78, v69, v70);
  v89(v73 + v72, v59, v71);
  *(v68 + 48) = sub_1E6059EAC(0, 0, v66, &unk_1E65F3798, v73);
  result = (*(v103 + 8))(v60, v71);
  v101[5] = v68;
  return result;
}

uint64_t sub_1E616EF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8798();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1E65D76A8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616F068, 0, 0);
}

uint64_t sub_1E616F068()
{
  v1 = v0[3];
  v2 = CatalogService.requestCatalogSync.getter();
  v0[12] = v3;
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1E616F160;

  return v7(1);
}

uint64_t sub_1E616F160()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  v5 = *(v2 + 96);
  if (v0)
  {

    v6 = sub_1E6171EC4;
  }

  else
  {

    v6 = sub_1E616F2A8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E616F2A8()
{
  v1 = v0[4];
  v2 = ArchivedSessionService.queryAllCompletedWorkoutIdentifiers.getter();
  v0[14] = v3;
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1E616F39C;

  return v7();
}

uint64_t sub_1E616F39C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 112);

    v8 = sub_1E616FB6C;
  }

  else
  {
    *(v4 + 128) = a1;
    v8 = sub_1E616F4D4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E616F4D4()
{
  v1 = v0[16];
  v2 = v0[14];

  v0[17] = v1;
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[3];
  v8 = CatalogService.queryCatalogWorkoutReferencesReleasedSince.getter();
  v0[18] = v9;
  sub_1E65D7688();
  sub_1E65E61C8();
  sub_1E65D7678();
  v10 = *(v6 + 8);
  v0[19] = v10;
  v0[20] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v5);
  v15 = (v8 + *v8);
  v11 = v8[1];
  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_1E616F644;
  v13 = v0[11];

  return v15(v13, 3);
}

uint64_t sub_1E616F644(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  v4[22] = v1;

  v7 = v4[20];
  v8 = v4[19];
  v9 = v4[18];
  if (v1)
  {
    v10 = v4[17];
    v8(v4[11], v4[8]);

    v11 = sub_1E616FCD0;
  }

  else
  {
    v12 = v4[11];
    v13 = v4[8];
    v4[23] = a1;
    v8(v12, v13);

    v11 = sub_1E616F7E0;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1E616F7E0()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[7];
  v4 = v0[3];
  v5 = CatalogService.requestCatalogLockupPlaceholderBackfill.getter();
  v0[24] = v6;
  sub_1E600C468(v1);

  sub_1E65D8788();
  v11 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_1E616F93C;
  v9 = v0[7];

  return v11(v9);
}

uint64_t sub_1E616F93C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  v4[26] = v1;

  v7 = v4[24];
  v8 = v4[7];
  v9 = v4[6];
  v10 = v4[5];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E616FD50;
  }

  else
  {
    v4[27] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E616FAE8;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1E616FAE8()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  **(v0 + 16) = *(v0 + 216);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E616FB6C()
{
  v0[17] = 0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[3];
  v6 = CatalogService.queryCatalogWorkoutReferencesReleasedSince.getter();
  v0[18] = v7;
  sub_1E65D7688();
  sub_1E65E61C8();
  sub_1E65D7678();
  v8 = *(v4 + 8);
  v0[19] = v8;
  v0[20] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v3);
  v13 = (v6 + *v6);
  v9 = v6[1];
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_1E616F644;
  v11 = v0[11];

  return v13(v11, 3);
}

uint64_t sub_1E616FCD0()
{
  v1 = v0[22];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E616FD50()
{
  v1 = v0[26];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E616FDD0(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for CatalogService()[-1].Description;
  v6 = (*(Description + 80) + 16) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for ArchivedSessionService()[-1].Description;
  v9 = (v6 + v7 + v8[80]) & ~v8[80];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFA78C;

  return sub_1E616EF3C(a1, v1 + v6, v1 + v9);
}

uint64_t sub_1E616FF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6170040, 0, 0);
}

uint64_t sub_1E6170040()
{
  v1 = v0[2];
  v2 = ContentAvailabilityService.makeContentAvailabilityUpdatedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E617013C;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E617013C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6170254, 0, 0);
}

uint64_t sub_1E6170254()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E6170330;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E6170330()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E617042C, 0, 0);
}

uint64_t sub_1E617042C()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E617052C, v5, v4);
  }
}

uint64_t sub_1E617052C()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6170330;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E61705F8(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E616FF0C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6170754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6170888, 0, 0);
}

uint64_t sub_1E6170888()
{
  v1 = v0[3];
  v2 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E6170984;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E6170984()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E5FE0E84;
  }

  else
  {
    v4 = sub_1E6170AB4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6170AB4()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E6170B90;
  v7 = v0[10];
  v8 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
}

uint64_t sub_1E6170B90()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6170C8C, 0, 0);
}

uint64_t sub_1E6170C8C()
{
  if (v0[2])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6170D8C, v2, v1);
  }

  else
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E6170D8C()
{
  v1 = v0[15];
  v2 = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E6170B90;
  v5 = v0[10];
  v6 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1E6170E58(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6170754(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6170FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B08, &qword_1E65EC510);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B00, &qword_1E65EC508);
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61710E8, 0, 0);
}

uint64_t sub_1E61710E8()
{
  v1 = v0[4];
  v2 = ContentAvailabilityService.makeStorefrontLanguageUpdatedStream.getter();
  v0[12] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1E61711E4;
  v6 = v0[8];

  return v8(v6);
}

uint64_t sub_1E61711E4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61712FC, 0, 0);
}

uint64_t sub_1E61712FC()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E61713D8;
  v7 = v0[11];
  v8 = v0[9];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
}

uint64_t sub_1E61713D8()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61714D4, 0, 0);
}

uint64_t sub_1E61714D4()
{
  if (v0[3])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61715D4, v2, v1);
  }

  else
  {
    v3 = v0[8];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E61715D4()
{
  v1 = v0[15];
  v2 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E61713D8;
  v5 = v0[11];
  v6 = v0[9];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1E61716A0(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6170FB4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E61717FC(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for CatalogService()[-1].Description;
  v6 = (*(Description + 80) + 16) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for ArchivedSessionService()[-1].Description;
  v9 = (v6 + v7 + v8[80]) & ~v8[80];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E616C420(a1, v1 + v6, v1 + v9);
}

uint64_t sub_1E6171938(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E616D130(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6171A94(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E616D81C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_7(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E6171D54(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E616DF20(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6171EC8(uint64_t a1, int a2)
{
  v57 = a2;
  v3 = sub_1E65D8A08();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v51 - v19;
  v51[0] = v51 - v19;
  v21 = sub_1E65D8C88();
  v54 = *(v21 - 8);
  v55 = v21;
  v22 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v52 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[1] = v28;
  MEMORY[0x1EEE9AC00](v26);
  v30 = v51 - v29;
  v31 = sub_1E65D97D8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = v51 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = v51 - v37;
  v39 = sub_1E65D89F8();
  (*(*(v39 - 8) + 16))(v38, a1, v39);
  (*(v32 + 104))(v38, *MEMORY[0x1E69CC320], v31);
  v40 = sub_1E65D7A38();
  (*(*(v40 - 8) + 56))(v30, 1, 1, v40);
  v51[2] = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  (*(v32 + 16))(v36, v38, v31);
  sub_1E5DFD1CC(v30, v28, &unk_1ED07B500, &qword_1E65F0EE0);
  v41 = sub_1E65D9208();
  (*(*(v41 - 8) + 56))(v20, 1, 1, v41);
  v42 = sub_1E65D9218();
  (*(*(v42 - 8) + 56))(v16, 1, 1, v42);
  sub_1E65D8CA8();
  v43 = sub_1E65D8CB8();
  (*(*(v43 - 8) + 56))(v12, 0, 1, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
  (*(*(v44 - 8) + 56))(v53, 1, 1, v44);
  v45 = sub_1E65D9928();
  (*(*(v45 - 8) + 56))(v56, 1, 1, v45);
  v46 = v52;
  sub_1E65D8C78();
  v47 = v58 + *(type metadata accessor for AppComposer() + 20);
  v48 = v47 + *(type metadata accessor for AppEnvironment() + 80);
  v49 = MetricService.record.getter();
  v49(v46);

  (*(v54 + 8))(v46, v55);
  sub_1E6175BC8(v30);
  return (*(v32 + 8))(v38, v31);
}

uint64_t sub_1E6172530(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65D76A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  sub_1E60C9A54(ObjectType, a2);
  v9 = ImpressionsTracker.consumeImpressions(on:)(v7, ObjectType, a2);
  (*(v4 + 8))(v7, v3);
  return v9;
}

uint64_t sub_1E6172628(int *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 320) = a4;
  *(v8 + 16) = a3;
  v10 = *(*(sub_1E65D8A08() - 8) + 64) + 15;
  *(v8 + 56) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0) - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60) - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0) - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820) - 8) + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v15 = sub_1E65D8C88();
  *(v8 + 96) = v15;
  v16 = *(v15 - 8);
  *(v8 + 104) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v18 = sub_1E65D97D8();
  *(v8 + 120) = v18;
  v19 = *(v18 - 8);
  *(v8 + 128) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  v21 = sub_1E65D9F68();
  *(v8 + 152) = v21;
  v22 = *(v21 - 8);
  *(v8 + 160) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0) - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v25 = swift_task_alloc();
  *(v8 + 192) = v25;
  v26 = sub_1E65D7A38();
  *(v8 + 200) = v26;
  v27 = *(v26 - 8);
  *(v8 + 208) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v32 = (a1 + *a1);
  v29 = a1[1];
  v30 = swift_task_alloc();
  *(v8 + 224) = v30;
  *v30 = v8;
  v30[1] = sub_1E6172A10;

  return v32(v25);
}

uint64_t sub_1E6172A10()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1E6176354;
  }

  else
  {
    v3 = sub_1E6172B24;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6172B24()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E6175BC8(v3);
    v4 = *(v0 + 216);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 112);
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v25 = *(v0 + 72);
    v26 = *(v0 + 64);
    v27 = *(v0 + 56);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v17 = *(v0 + 24);
    v16 = *(v0 + 32);
    v18 = *(v0 + 16);
    v28 = *(v0 + 40);
    v19 = (*(v2 + 32))(*(v0 + 216), v3, v1);
    *(v0 + 240) = v17(v19);
    v20 = swift_allocObject();
    *(v0 + 248) = v20;
    *(v20 + 16) = v28;
    v21 = type metadata accessor for AppComposer();
    *(v0 + 256) = v21;
    v22 = (v18 + *(v21 + 32));
    *(v0 + 264) = *v22;
    *(v0 + 272) = v22[1];
    swift_unknownObjectRetain();
    *(v0 + 280) = swift_getObjectType();
    *(v0 + 288) = sub_1E65E6058();
    *(v0 + 296) = sub_1E65E6048();
    v24 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6172D78, v24, v23);
  }
}

uint64_t sub_1E6172D78()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 216);
  v6 = *(v0 + 168);
  v7 = *(v0 + 320);

  sub_1E65DB6A8();

  return MEMORY[0x1EEE6DFA0](sub_1E6172E1C, 0, 0);
}

uint64_t sub_1E6172E1C()
{
  v1 = v0[36];
  v2 = v0[30];
  v3 = swift_allocObject();
  v0[38] = v3;
  *(v3 + 16) = v2;

  v0[39] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6172ED0, v5, v4);
}

uint64_t sub_1E6172ED0()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  v8 = *(v0 + 320);

  sub_1E65DB668();

  return MEMORY[0x1EEE6DFA0](sub_1E6172FB0, 0, 0);
}

uint64_t sub_1E6172FB0()
{
  v40 = *(v0 + 256);
  v48 = *(v0 + 248);
  v39 = *(v0 + 240);
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v41 = v1;
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  v29 = *(v0 + 176);
  v46 = *(v0 + 168);
  v38 = *(v0 + 160);
  v5 = *(v0 + 144);
  v44 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  v36 = *(v0 + 112);
  v42 = *(v0 + 104);
  v43 = *(v0 + 96);
  v30 = *(v0 + 88);
  v31 = *(v0 + 80);
  v32 = *(v0 + 72);
  v33 = *(v0 + 64);
  v34 = *(v0 + 56);
  v37 = *(v0 + 16);
  v35 = *(v0 + 320);
  (*(v38 + 16))(v5);
  (*(v6 + 104))(v5, *MEMORY[0x1E69CC328], v8);
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v6 + 16))(v7, v5, v8);
  sub_1E5DFD1CC(v4, v29, &unk_1ED07B500, &qword_1E65F0EE0);
  v9 = sub_1E65D9208();
  (*(*(v9 - 8) + 56))(v30, 1, 1, v9);
  v10 = sub_1E65D9218();
  (*(*(v10 - 8) + 56))(v31, 1, 1, v10);
  sub_1E65D8CA8();
  v11 = sub_1E65D8CB8();
  (*(*(v11 - 8) + 56))(v32, 0, 1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
  (*(*(v12 - 8) + 56))(v33, 1, 1, v12);
  v13 = sub_1E65D9928();
  (*(*(v13 - 8) + 56))(v34, 1, 1, v13);
  sub_1E65D8C78();
  v14 = *(v40 + 20);
  v15 = v37 + *(type metadata accessor for AppEnvironment() + 80) + v14;
  v16 = MetricService.record.getter();
  v16(v36);

  (*(v42 + 8))(v36, v43);
  sub_1E6175BC8(v4);
  (*(v6 + 8))(v5, v8);
  (*(v38 + 8))(v46, v44);
  (*(v2 + 8))(v41, v3);
  v17 = *(v0 + 216);
  v18 = *(v0 + 184);
  v19 = *(v0 + 192);
  v21 = *(v0 + 168);
  v20 = *(v0 + 176);
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v24 = *(v0 + 112);
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v45 = *(v0 + 72);
  v47 = *(v0 + 64);
  v49 = *(v0 + 56);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1E617344C(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 256) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a3;
  v10 = *(*(sub_1E65D8A08() - 8) + 64) + 15;
  *(v8 + 56) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0) - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60) - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0) - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820) - 8) + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v15 = sub_1E65D8C88();
  *(v8 + 96) = v15;
  v16 = *(v15 - 8);
  *(v8 + 104) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v18 = sub_1E65D97D8();
  *(v8 + 120) = v18;
  v19 = *(v18 - 8);
  *(v8 + 128) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  v21 = sub_1E65D76A8();
  *(v8 + 152) = v21;
  v22 = *(v21 - 8);
  *(v8 + 160) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0) - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v25 = swift_task_alloc();
  *(v8 + 192) = v25;
  v26 = sub_1E65D7A38();
  *(v8 + 200) = v26;
  v27 = *(v26 - 8);
  *(v8 + 208) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v32 = (a1 + *a1);
  v29 = a1[1];
  v30 = swift_task_alloc();
  *(v8 + 224) = v30;
  *v30 = v8;
  v30[1] = sub_1E6173834;

  return v32(v25);
}

uint64_t sub_1E6173834()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1E6174054;
  }

  else
  {
    v3 = sub_1E6173948;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6173948()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E6175BC8(v3);
    v4 = v0[27];
    v5 = v0[23];
    v6 = v0[24];
    v8 = v0[21];
    v7 = v0[22];
    v10 = v0[17];
    v9 = v0[18];
    v11 = v0[14];
    v13 = v0[10];
    v12 = v0[11];
    v18 = v0[9];
    v19 = v0[8];
    v20 = v0[7];

    v14 = v0[1];

    return v14();
  }

  else
  {
    (*(v2 + 32))(v0[27], v3, v1);
    sub_1E65E6058();
    v0[30] = sub_1E65E6048();
    v17 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6173B20, v17, v16);
  }
}

uint64_t sub_1E6173B20()
{
  v1 = v0[30];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v6 = v0[2];
  v5 = v0[3];

  ObjectType = swift_getObjectType();
  sub_1E60C9A54(ObjectType, v5);
  v0[31] = ImpressionsTracker.consumeImpressions(on:)(v2, ObjectType, v5);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1E6173BEC, 0, 0);
}

uint64_t sub_1E6173BEC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 48);
  (*(v0 + 40))();
  if (*(v1 + 16))
  {
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = *(v0 + 200);
    v6 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = *(v0 + 120);
    v11 = *(v0 + 128);
    v39 = *(v0 + 112);
    v42 = *(v0 + 104);
    v44 = *(v0 + 96);
    v33 = *(v0 + 88);
    v34 = *(v0 + 80);
    v35 = *(v0 + 72);
    v36 = *(v0 + 64);
    v37 = *(v0 + 56);
    v40 = *(v0 + 32);
    v38 = *(v0 + 256);
    *v8 = *(v0 + 248);
    (*(v11 + 104))(v8, *MEMORY[0x1E69CC318], v10);
    (*(v4 + 16))(v7, v3, v5);
    (*(v4 + 56))(v7, 0, 1, v5);
    (*(v11 + 16))(v9, v8, v10);
    sub_1E5DFD1CC(v7, v6, &unk_1ED07B500, &qword_1E65F0EE0);
    v12 = sub_1E65D9208();
    (*(*(v12 - 8) + 56))(v33, 1, 1, v12);
    v13 = sub_1E65D9218();
    (*(*(v13 - 8) + 56))(v34, 1, 1, v13);
    sub_1E65D8CA8();
    v14 = sub_1E65D8CB8();
    (*(*(v14 - 8) + 56))(v35, 0, 1, v14);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
    (*(*(v15 - 8) + 56))(v36, 1, 1, v15);
    v16 = sub_1E65D9928();
    (*(*(v16 - 8) + 56))(v37, 1, 1, v16);
    sub_1E65D8C78();
    v17 = v40 + *(type metadata accessor for AppComposer() + 20);
    v18 = v17 + *(type metadata accessor for AppEnvironment() + 80);
    v19 = MetricService.record.getter();
    v19(v39);

    (*(v42 + 8))(v39, v44);
    sub_1E6175BC8(v7);
    (*(v11 + 8))(v8, v10);
  }

  else
  {
    v20 = *(v0 + 248);
  }

  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  v21 = *(v0 + 216);
  v22 = *(v0 + 184);
  v23 = *(v0 + 192);
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);
  v27 = *(v0 + 136);
  v26 = *(v0 + 144);
  v28 = *(v0 + 112);
  v30 = *(v0 + 80);
  v29 = *(v0 + 88);
  v41 = *(v0 + 72);
  v43 = *(v0 + 64);
  v45 = *(v0 + 56);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1E6174054()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[14];
  v10 = v0[10];
  v9 = v0[11];
  v14 = v0[9];
  v15 = v0[8];
  v16 = v0[7];

  v11 = v0[1];
  v12 = v0[29];

  return v11();
}

uint64_t sub_1E617415C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 368) = v47;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  v10 = *(*(sub_1E65D8A08() - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0) - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60) - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0) - 8) + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820) - 8) + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v15 = sub_1E65D8C88();
  *(v8 + 104) = v15;
  v16 = *(v15 - 8);
  *(v8 + 112) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v18 = sub_1E65D97D8();
  *(v8 + 128) = v18;
  v19 = *(v18 - 8);
  *(v8 + 136) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570) - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v22 = sub_1E65D8F28();
  *(v8 + 168) = v22;
  v23 = *(v22 - 8);
  *(v8 + 176) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v27 = sub_1E65D8C68();
  *(v8 + 208) = v27;
  v28 = *(v27 - 8);
  *(v8 + 216) = v28;
  v29 = *(v28 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  v31 = sub_1E65D7D78();
  *(v8 + 240) = v31;
  v32 = *(v31 - 8);
  *(v8 + 248) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  v34 = sub_1E65D76A8();
  *(v8 + 264) = v34;
  v35 = *(v34 - 8);
  *(v8 + 272) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0) - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v38 = swift_task_alloc();
  *(v8 + 304) = v38;
  v39 = sub_1E65D7A38();
  *(v8 + 312) = v39;
  v40 = *(v39 - 8);
  *(v8 + 320) = v40;
  v41 = *(v40 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  v45 = (a2 + *a2);
  v42 = a2[1];
  v43 = swift_task_alloc();
  *(v8 + 336) = v43;
  *v43 = v8;
  v43[1] = sub_1E6174740;

  return v45(v38);
}

uint64_t sub_1E6174740()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_1E6175284;
  }

  else
  {
    v3 = sub_1E6174854;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6174854()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E6175BC8(v3);
    v4 = v0[41];
    v6 = v0[37];
    v5 = v0[38];
    v7 = v0[35];
    v8 = v0[36];
    v9 = v0[32];
    v11 = v0[28];
    v10 = v0[29];
    v13 = v0[24];
    v12 = v0[25];
    v18 = v0[23];
    v19 = v0[20];
    v20 = v0[19];
    v21 = v0[18];
    v22 = v0[15];
    v23 = v0[12];
    v24 = v0[11];
    v25 = v0[10];
    v26 = v0[9];
    v27 = v0[8];

    v14 = v0[1];

    return v14();
  }

  else
  {
    (*(v2 + 32))(v0[41], v3, v1);
    sub_1E65E6058();
    v0[44] = sub_1E65E6048();
    v17 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6174A84, v17, v16);
  }
}

uint64_t sub_1E6174A84()
{
  v1 = v0[44];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v6 = v0[3];
  v5 = v0[4];

  ObjectType = swift_getObjectType();
  sub_1E60C9A54(ObjectType, v5);
  v0[45] = ImpressionsTracker.snapshotOnScreenImpressions(on:)(v2, ObjectType, v5);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1E6174B50, 0, 0);
}

uint64_t sub_1E6174B50()
{
  v100 = v0;
  v65 = *(v0 + 360);
  v90 = *(v0 + 344);
  v81 = *(v0 + 312);
  v84 = *(v0 + 328);
  v75 = *(v0 + 320);
  v78 = *(v0 + 296);
  v67 = *(v0 + 248);
  v1 = *(v0 + 232);
  v72 = *(v0 + 240);
  v61 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v93 = *(v0 + 184);
  v96 = *(v0 + 192);
  v6 = *(v0 + 176);
  v57 = *(v0 + 168);
  v60 = *(v0 + 160);
  v63 = *(v0 + 152);
  v64 = *(v0 + 136);
  v69 = *(v0 + 128);
  v7 = *(v0 + 56);
  v8 = *(v0 + 16);
  v87 = (*(v0 + 48))();
  sub_1E5DFD1CC(v8, v1, &qword_1ED073578, &qword_1E65F0E60);
  v9 = type metadata accessor for PageMetricsClick();
  (*(v2 + 16))(v3, v8 + v9[5], v4);
  sub_1E5DFD1CC(v8 + v9[6], v5, &qword_1ED072340, &qword_1E65EA410);
  v10 = *(v8 + v9[7]);
  v11 = (v8 + v9[12]);
  v12 = *v11;
  v13 = v11[1];
  v14 = (v8 + v9[13]);
  v15 = v14[1];
  v59 = *v14;
  sub_1E5DFD1CC(v8 + v9[15], v96, &qword_1ED072330, &qword_1E65EAB70);
  (*(v6 + 16))(v93, v8 + v9[14], v57);
  sub_1E5DFD1CC(v8 + v9[8], v60, &qword_1ED073570, &unk_1E65F4570);
  v16 = v9[10];
  v17 = (v8 + v9[9]);
  v18 = v17[1];
  v58 = *v17;
  v20 = *(v8 + v16);
  v19 = *(v8 + v16 + 8);

  sub_1E65D7D68();
  (*(v67 + 16))(v63, v61, v72);
  (*(v64 + 104))(v63, *MEMORY[0x1E69CC330], v69);
  (*(v75 + 16))(v78, v84, v81);
  (*(v75 + 56))(v78, 0, 1, v81);
  v21 = *(v8 + v9[11]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v99[0] = v21;
  sub_1E6175C30(v87, sub_1E60481B8, 0, isUniquelyReferenced_nonNull_native, v99);

  if (v90)
  {
  }

  else
  {
    v91 = *(v0 + 320);
    v94 = *(v0 + 312);
    v97 = *(v0 + 328);
    v30 = *(v0 + 288);
    v29 = *(v0 + 296);
    v70 = v29;
    v82 = *(v0 + 248);
    v85 = *(v0 + 240);
    v88 = *(v0 + 256);
    v76 = *(v0 + 152);
    v31 = *(v0 + 136);
    v73 = *(v0 + 128);
    v32 = *(v0 + 112);
    v33 = *(v0 + 120);
    v34 = *(v0 + 96);
    v79 = *(v0 + 104);
    v35 = *(v0 + 80);
    v36 = *(v0 + 88);
    v37 = *(v0 + 64);
    v62 = *(v0 + 72);
    v68 = *(v0 + 40);
    v66 = *(v0 + 368);
    (*(v31 + 16))(*(v0 + 144), v76, v73, v23, v24, v25, v26, v27);
    sub_1E5DFD1CC(v29, v30, &unk_1ED07B500, &qword_1E65F0EE0);
    v38 = sub_1E65D9208();
    (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
    v39 = sub_1E65D9218();
    (*(*(v39 - 8) + 56))(v36, 1, 1, v39);
    sub_1E65D8CA8();
    v40 = sub_1E65D8CB8();
    (*(*(v40 - 8) + 56))(v35, 0, 1, v40);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
    (*(*(v41 - 8) + 56))(v62, 1, 1, v41);
    v42 = sub_1E65D9928();
    (*(*(v42 - 8) + 56))(v37, 1, 1, v42);
    sub_1E65D8C78();
    v43 = v68 + *(type metadata accessor for AppComposer() + 20);
    v44 = v43 + *(type metadata accessor for AppEnvironment() + 80);
    v45 = MetricService.record.getter();
    v45(v33);

    (*(v32 + 8))(v33, v79);
    sub_1E6175BC8(v70);
    (*(v31 + 8))(v76, v73);
    (*(v82 + 8))(v88, v85);
    (*(v91 + 8))(v97, v94);
    v46 = *(v0 + 328);
    v48 = *(v0 + 296);
    v47 = *(v0 + 304);
    v49 = *(v0 + 280);
    v50 = *(v0 + 288);
    v51 = *(v0 + 256);
    v53 = *(v0 + 224);
    v52 = *(v0 + 232);
    v55 = *(v0 + 192);
    v54 = *(v0 + 200);
    v71 = *(v0 + 184);
    v74 = *(v0 + 160);
    v77 = *(v0 + 152);
    v80 = *(v0 + 144);
    v83 = *(v0 + 120);
    v86 = *(v0 + 96);
    v89 = *(v0 + 88);
    v92 = *(v0 + 80);
    v95 = *(v0 + 72);
    v98 = *(v0 + 64);

    v56 = *(v0 + 8);

    return v56();
  }
}

uint64_t sub_1E6175284()
{
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[32];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[24];
  v9 = v0[25];
  v14 = v0[23];
  v15 = v0[20];
  v16 = v0[19];
  v17 = v0[18];
  v18 = v0[15];
  v19 = v0[12];
  v20 = v0[11];
  v21 = v0[10];
  v22 = v0[9];
  v23 = v0[8];

  v11 = v0[1];
  v12 = v0[43];

  return v11();
}

uint64_t sub_1E61753E4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[4] = v7;
  v8 = sub_1E65D7A38();
  v4[5] = v8;
  v9 = *(v8 - 8);
  v4[6] = v9;
  v10 = *(v9 + 64) + 15;
  v4[7] = swift_task_alloc();
  v14 = (a2 + *a2);
  v11 = a2[1];
  v12 = swift_task_alloc();
  v4[8] = v12;
  *v12 = v4;
  v12[1] = sub_1E617557C;

  return v14(v7);
}

uint64_t sub_1E617557C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1E6175798;
  }

  else
  {
    v3 = sub_1E6175690;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6175690()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E6175BC8(v3);
  }

  else
  {
    v4 = v0[7];
    v6 = v0[2];
    v5 = v0[3];
    (*(v2 + 32))(v4, v3, v1);
    sub_1E6175808(v6, v4);
    (*(v2 + 8))(v4, v1);
  }

  v7 = v0[7];
  v8 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6175798()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1E6175808(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - v5;
  v7 = sub_1E65DA7F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073600, &qword_1E65ED750);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v30 - v14;
  v16 = sub_1E65D8A28();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 8);
  v22 = *(a1 + 48);
  v23 = sub_1E65D9D98();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = type metadata accessor for PageMetricsRender();
  v25 = *(a1 + *(v24 + 56));
  v26 = *(a1 + *(v24 + 60));

  sub_1E65D8A18();
  (*(v17 + 16))(v11, v20, v16);
  (*(v8 + 104))(v11, *MEMORY[0x1E69CCFA0], v7);
  v27 = sub_1E65D7A38();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v6, v30, v27);
  (*(v28 + 56))(v6, 0, 1, v27);
  sub_1E6427784(MEMORY[0x1E69E7CC0]);
  sub_1E6175F64(v11, v6);

  sub_1E6175BC8(v6);
  (*(v8 + 8))(v11, v7);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1E6175BC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E6175C30(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v55 = a1;
  v56 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v57 = v8;
  v58 = 0;
  v59 = v11 & v9;
  v60 = a2;
  v61 = a3;

  sub_1E6121040(&v51);
  if (!*(&v53 + 1))
  {
    goto LABEL_25;
  }

  v12 = v51;
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v13 = *a5;
  result = sub_1E641708C(v51);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_1E6419AF8(v19, a4 & 1);
    v21 = *a5;
    result = sub_1E641708C(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1E65E6C68();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_1E6423608();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v23 = *a5;
    v24 = 40 * result;
    sub_1E604FBF8(*(*a5 + 56) + 40 * result, v47);
    sub_1E6009FC0(&v48);
    sub_1E5FEE468(v47, *(v23 + 56) + v24);
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + result) = v12;
  v27 = v26[7] + 40 * result;
  v28 = v48;
  v29 = v49;
  *(v27 + 32) = v50;
  *v27 = v28;
  *(v27 + 16) = v29;
  v30 = v26[2];
  v18 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v18)
  {
    v26[2] = v31;
LABEL_15:
    sub_1E6121040(&v51);
    if (*(&v53 + 1))
    {
      v20 = 1;
      do
      {
        v12 = v51;
        v48 = v52;
        v49 = v53;
        v50 = v54;
        v34 = *a5;
        result = sub_1E641708C(v51);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v18 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_1E6419AF8(v38, 1);
          v39 = *a5;
          result = sub_1E641708C(v12);
          if ((a4 & 1) != (v40 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 40 * result;
          sub_1E604FBF8(*(*a5 + 56) + 40 * result, v47);
          sub_1E6009FC0(&v48);
          sub_1E5FEE468(v47, *(v32 + 56) + v33);
        }

        else
        {
          v41 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v41[6] + result) = v12;
          v42 = v41[7] + 40 * result;
          v43 = v48;
          v44 = v49;
          *(v42 + 32) = v50;
          *v42 = v43;
          *(v42 + 16) = v44;
          v45 = v41[2];
          v18 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v41[2] = v46;
        }

        sub_1E6121040(&v51);
      }

      while (*(&v53 + 1));
    }

LABEL_25:
    sub_1E5E24EE4();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E6175F64(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v36 = a2;
  v2 = sub_1E65DA7F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v35 - v13;
  v15 = sub_1E65D8A08();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v35 - v21;
  v23 = sub_1E65D9B48();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E65D8CB8();
  (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
  v29 = sub_1E65D9928();
  (*(*(v29 - 8) + 56))(v18, 1, 1, v29);
  sub_1E5DFD1CC(v36, v14, &unk_1ED07B500, &qword_1E65F0EE0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
  (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
  (*(v3 + 16))(v6, v37, v2);
  sub_1E65D9B38();
  v31 = v38 + *(type metadata accessor for AppComposer() + 20);
  v32 = v31 + *(type metadata accessor for AppEnvironment() + 80);
  v33 = MetricService.recordMetricPerformanceStream.getter();
  v33(v27);

  return (*(v24 + 8))(v27, v23);
}

uint64_t sub_1E6176358@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for AppComposer();
  v25 = *(v1 - 8);
  v2 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757C8, &qword_1E65F1D58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v24 - v6;
  v7 = sub_1E65DDE68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  (*(v8 + 104))(v11, *MEMORY[0x1E69CAB48], v7);
  v30 = 0;
  sub_1E65DDC88();
  sub_1E65DDC48();
  (*(v13 + 8))(v16, v12);
  if (v29 == 1)
  {
    sub_1E5E1DEAC(v27, &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v18 = swift_allocObject();
    sub_1E5E1FA80(&v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    sub_1E5E25708();
    v19 = v26;
    sub_1E65DF098();
    v20 = v28;
    (*(v4 + 32))(v28, v19, v3);
    v21 = 0;
    v22 = v20;
  }

  else
  {
    v21 = 1;
    v22 = v28;
  }

  return (*(v4 + 56))(v22, v21, 1, v3);
}

uint64_t sub_1E61766E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D20, &qword_1E65F3830);
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v26 = v24 - v4;
  v5 = type metadata accessor for AppComposer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D28, &qword_1E65F3838);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D30, &qword_1E65F3840);
  v25 = *(v14 - 8);
  v15 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v24 - v16;
  v24[1] = *a1;
  sub_1E5E1DEAC(a1, v11);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  sub_1E5E1FA80(v11, v19 + v18);
  sub_1E5E1DEAC(a1, v9);
  v20 = swift_allocObject();
  sub_1E5E1FA80(v9, v20 + v18);
  sub_1E5E25708();
  sub_1E65DF1A8();
  sub_1E65DF128();
  type metadata accessor for AppFeature();
  sub_1E5DED16C();
  sub_1E6177728();
  v21 = v26;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v22 = sub_1E65E4F08();
  (*(v27 + 8))(v21, v28);
  (*(v25 + 8))(v17, v14);
  return v22;
}

uint64_t sub_1E6176AAC()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1E61766E8(v2);
}

uint64_t sub_1E6176B2C()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6176BDC, v3, v2);
}

uint64_t sub_1E6176BDC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_1E5E20198(23, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6080D24, 0, 0);
}

uint64_t sub_1E6176C54(_OWORD *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v4 = type metadata accessor for AppAction();
  *(v2 + 24) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1E6176CF4, 0, 0);
}

uint64_t sub_1E6176CF4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 56) = **(v0 + 16);
  *v3 = v1;
  v3[1] = v2;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  sub_1E5E05374(v1, v2);
  *(v0 + 64) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6176DBC, v6, v5);
}

uint64_t sub_1E6176DBC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];

  sub_1E65E4EE8();
  sub_1E6177B30(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6176E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v66 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EA8, &qword_1E65F1140);
  v61 = *(v68 - 8);
  v2 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v60 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D48, &qword_1E65F3870);
  v4 = *(*(v62 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v60 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E80, &qword_1E65F1130);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v60 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v60 - v19;
  v21 = sub_1E65D7848();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AppState();
  v27 = v26[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v20);
  sub_1E5DFE50C(v16, &qword_1ED071F78, &unk_1E65EA3F0);
  v28 = *(v22 + 48);
  if (v28(v20, 1, v21) == 1)
  {
    sub_1E65D77C8();
    v29 = v28(v20, 1, v21);
    v30 = v25;
    if (v29 != 1)
    {
      sub_1E5DFE50C(v20, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    v30 = v25;
  }

  v31 = v66;
  (*(v10 + 16))(v64, v66 + v26[71], v9);
  sub_1E65E4C98();
  v32 = v63;
  sub_1E617778C(v8, v63);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v38 = *v32;
    v39 = *(*v32 + 16);
    if (!v39)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v32, &qword_1ED075D48, &qword_1E65F3870);
LABEL_22:
    v54 = 0;
    v53 = 6;
    goto LABEL_25;
  }

  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D50, &qword_1E65F3878) + 48);
  v35 = *v32;
  v36 = sub_1E65D76A8();
  v37 = v32 + v34;
  v38 = v35;
  (*(*(v36 - 8) + 8))(v37, v36);
  v39 = *(v35 + 16);
  if (!v39)
  {
LABEL_9:

    v40 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

LABEL_11:
  v62 = v26;
  v63 = v30;
  v70 = MEMORY[0x1E69E7CC0];
  sub_1E601C9FC(0, v39, 0);
  v40 = v70;
  v41 = v61 + 16;
  v42 = *(v61 + 16);
  v43 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v61 = v38;
  v44 = v38 + v43;
  v45 = *(v41 + 56);
  v46 = (v41 - 8);
  do
  {
    v47 = v67;
    v48 = v68;
    v42(v67, v44, v68);
    sub_1E65DEFB8();
    (*v46)(v47, v48);
    v49 = v69;
    v70 = v40;
    v51 = *(v40 + 16);
    v50 = *(v40 + 24);
    if (v51 >= v50 >> 1)
    {
      v60 = v69;
      sub_1E601C9FC((v50 > 1), v51 + 1, 1);
      v49 = v60;
      v40 = v70;
    }

    *(v40 + 16) = v51 + 1;
    *(v40 + 16 * v51 + 32) = v49;
    v44 += v45;
    --v39;
  }

  while (v39);

  v31 = v66;
  v26 = v62;
LABEL_16:
  v52 = (v31 + v26[62]);
  v53 = v52[1];
  if (v53 == 6)
  {

    v54 = 0;
  }

  else
  {
    v54 = *v52;
    v55 = *(v31 + v26[63]);
    sub_1E5E05374(*v52, v53);
    if (sub_1E5E25298(v54, v53, v55))
    {
      sub_1E5E05374(v54, v53);
      sub_1E61777FC(v54, v53, v40);
      v57 = v56;
      sub_1E5E07DA0(v54, v53);

      if ((v57 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    sub_1E5E07DA0(v54, v53);
    v54 = 0;
    v53 = 6;
  }

LABEL_25:
  *&v69 = v54;
  *(&v69 + 1) = v53;
  v58 = *(v31 + v26[39]);
  sub_1E5E25708();
  return sub_1E65DF0F8();
}

uint64_t sub_1E6177500(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D40, &qword_1E65F3868);
  v2 = sub_1E65DF0E8();
  result = type metadata accessor for AppState();
  *(a1 + *(result + 156)) = v2 & 1;
  return result;
}

uint64_t sub_1E6177584()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6176B0C(v0 + v3);
}

uint64_t sub_1E6177650(_OWORD *a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6176C54(a1, v1 + v5);
}

unint64_t sub_1E6177728()
{
  result = qword_1ED075D38;
  if (!qword_1ED075D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075D30, &qword_1E65F3840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075D38);
  }

  return result;
}

uint64_t sub_1E617778C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D48, &qword_1E65F3870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61777FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v6 = 0;
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *(i - 1);
      v9 = *i;
      if (*i > 2)
      {
        if (v9 == 3)
        {
          v10 = 0xE600000000000000;
          v11 = 0x686372616573;
          if (a2 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        if (v9 != 4)
        {
          if (v9 == 5)
          {
            v10 = 0xE500000000000000;
            v11 = 0x736E616C70;
            if (a2 <= 2)
            {
              goto LABEL_29;
            }

            goto LABEL_21;
          }

          goto LABEL_18;
        }

        v10 = 0xE600000000000000;
        v11 = 0x7478654E7075;
        if (a2 <= 2)
        {
LABEL_29:
          switch(a2)
          {
            case 0:
              v12 = 0xE700000000000000;
              if (v11 != 0x65726F6C707865)
              {
                goto LABEL_42;
              }

              goto LABEL_41;
            case 1:
              v12 = 0xE600000000000000;
              if (v11 != 0x756F59726F66)
              {
                goto LABEL_42;
              }

              goto LABEL_41;
            case 2:
              v12 = 0xE700000000000000;
              if (v11 != 0x7972617262696CLL)
              {
                goto LABEL_42;
              }

              goto LABEL_41;
          }

          goto LABEL_36;
        }
      }

      else
      {
        if (!v9)
        {
          v10 = 0xE700000000000000;
          v11 = 0x65726F6C707865;
          if (a2 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            v10 = 0xE700000000000000;
            v11 = 0x7972617262696CLL;
            if (a2 <= 2)
            {
              goto LABEL_29;
            }

            goto LABEL_21;
          }

LABEL_18:
          sub_1E5E05374(v8, v9);
          MEMORY[0x1E694D7C0](v8, v9);
          v11 = 0x7974696C61646F6DLL;
          v10 = 0xE90000000000003ALL;
          if (a2 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        v10 = 0xE600000000000000;
        v11 = 0x756F59726F66;
        if (a2 <= 2)
        {
          goto LABEL_29;
        }
      }

LABEL_21:
      if (a2 == 3)
      {
        v12 = 0xE600000000000000;
        if (v11 != 0x686372616573)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      if (a2 != 4)
      {
        if (a2 == 5)
        {
          v12 = 0xE500000000000000;
          if (v11 != 0x736E616C70)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

LABEL_36:
        v13 = v11;
        MEMORY[0x1E694D7C0](a1, a2);
        v12 = 0xE90000000000003ALL;
        if (v13 != 0x7974696C61646F6DLL)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v12 = 0xE600000000000000;
      if (v11 != 0x7478654E7075)
      {
        goto LABEL_42;
      }

LABEL_41:
      if (v10 == v12)
      {
        sub_1E5E0476C(v8, v9);

        return v6;
      }

LABEL_42:
      v14 = sub_1E65E6C18();
      sub_1E5E0476C(v8, v9);

      if (v14)
      {
        return v6;
      }

      if (v3 == ++v6)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_1E6177B30(uint64_t a1)
{
  v2 = type metadata accessor for AppAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6177B8C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D58, &qword_1E65F3880);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v28 - v5;
  v6 = type metadata accessor for AppComposer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = sub_1E65E3A78();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v30 = sub_1E65E3AB8();
  v32 = *(v30 - 8);
  v15 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *v2;
  sub_1E5E1DEAC(v2, v12);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = (v18 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1E5E1FA80(v12, v20 + v18);
  v21 = (v20 + v19);
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  sub_1E5E1DEAC(v2, v10);
  v23 = swift_allocObject();
  sub_1E5E1FA80(v10, v23 + v18);

  sub_1E65E3A68();
  sub_1E65E3AA8();
  type metadata accessor for AppFeature();
  sub_1E6179144(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E6179144(qword_1EE2D59B8, MEMORY[0x1E699EFD0]);
  v24 = v33;
  v25 = v30;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v26 = sub_1E65E4F08();
  (*(v34 + 8))(v24, v35);
  (*(v32 + 8))(v17, v25);
  return v26;
}

uint64_t sub_1E6177FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = *(*(sub_1E65D74E8() - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v6 = sub_1E65D8D48();
  v4[25] = v6;
  v7 = *(v6 - 8);
  v4[26] = v7;
  v8 = *(v7 + 64) + 15;
  v4[27] = swift_task_alloc();
  v9 = type metadata accessor for RouteDestination();
  v4[28] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61780C8, 0, 0);
}

uint64_t sub_1E61780C8()
{
  v1 = **(v0 + 168);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = *(v0 + 104);
  *(v0 + 240) = v2;
  if (v2 == 6)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6328();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "[SharePlaySessionComposer] Failed to get the currently selected root item", v6, 2u);
      MEMORY[0x1E694F1C0](v6, -1, -1);
    }

    v7 = *(v0 + 232);
    v8 = *(v0 + 216);
    v9 = *(v0 + 192);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 96);
    *(v0 + 248) = v12;
    *(v0 + 112) = v12;
    *(v0 + 120) = v2;
    sub_1E65E6058();
    *(v0 + 256) = sub_1E65E6048();
    v14 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61782B4, v14, v13);
  }
}

uint64_t sub_1E61782B4()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v5 = v0[22];
  v4 = v0[23];

  v5(v0 + 14);
  sub_1E5E07DA0(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E6178348, 0, 0);
}

uint64_t sub_1E6178348()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 232);
    v2 = *(v0 + 208);
    v3 = *(v0 + 216);
    v4 = *(v0 + 192);
    v18 = *(v0 + 224);
    v19 = *(v0 + 200);
    v5 = *(v0 + 160);
    sub_1E5DF599C((v0 + 56), v0 + 16);
    v20 = *(v0 + 40);
    v21 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v20);
    sub_1E65E3A28();
    sub_1E65E3A38();
    sub_1E65E3A48();
    sub_1E65E39F8();
    sub_1E65E3A08();
    sub_1E65D8CF8();
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    (*(v2 + 16))(v1 + *(v18 + 20), v3, v19);
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    (*(v2 + 8))(v3, v19);
    *(v1 + *(v18 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611D1C0(v0 + 128);
    v6 = *(v0 + 136);
    *(v0 + 144) = *(v0 + 128);
    *(v0 + 152) = v6;
    sub_1E600F5B0((v0 + 137));
    v7 = swift_task_alloc();
    *(v0 + 264) = v7;
    *v7 = v0;
    v7[1] = sub_1E6178678;
    v8 = *(v0 + 232);

    return RoutingContext.presentDestination(_:style:priority:)(v8, (v0 + 144), (v0 + 137), v20, v21);
  }

  else
  {
    sub_1E601B260(v0 + 56);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v10 = sub_1E65E3B68();
    __swift_project_value_buffer(v10, qword_1EE2EA2A0);
    v11 = sub_1E65E3B48();
    v12 = sub_1E65E6328();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1E5DE9000, v11, v12, "[SharePlaySessionComposer] Failed to get routing context", v13, 2u);
      MEMORY[0x1E694F1C0](v13, -1, -1);
    }

    v14 = *(v0 + 232);
    v15 = *(v0 + 216);
    v16 = *(v0 + 192);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1E6178678()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 232);
  v7 = *v1;
  *(v2 + 272) = v0;

  sub_1E5F94E00(*(v2 + 144), *(v2 + 152));
  sub_1E60111F8(v4);
  if (v0)
  {
    v5 = sub_1E6178844;
  }

  else
  {
    v5 = sub_1E61787C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E61787C0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6178844()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];
  v5 = v0[34];

  return v4();
}

uint64_t sub_1E61788D4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6177FA8(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E61789EC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D60, &qword_1E65F38A8);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6178A8C, 0, 0);
}

uint64_t sub_1E6178A8C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 116);
  v4 = SharePlayService.makeMultiUserBeginActivityRequested.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E6178BA8;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E6178BA8()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1E5FE45F0;
  }

  else
  {
    v4 = sub_1E6178CD8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6178CD8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D68, &qword_1E65F38B8);
  v3[4] = sub_1E5FED46C(&qword_1EE2D44E0, &qword_1ED075D68, &qword_1E65F38B8);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E65E3A58();
  sub_1E5FED46C(&qword_1EE2D47C0, &qword_1ED075D60, &qword_1E65F38A8);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6178E18(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E61789EC(a1, v1 + v5);
}

uint64_t sub_1E6178EF4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_1E65D74E8() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6178F84, 0, 0);
}

uint64_t sub_1E6178F84()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1E65D8D08();
  sub_1E65D8D18();
  sub_1E65D8D38();
  sub_1E65D8CD8();
  sub_1E65D8CE8();
  sub_1E65E3A18();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6179064(uint64_t a1)
{
  v2 = sub_1E65E39E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E3A88();
  v7 = type metadata accessor for AppState();
  return (*(v3 + 40))(a1 + *(v7 + 280), v6, v2);
}

uint64_t sub_1E6179144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E61791A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001E6613C00 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E65E6C18();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E617923C(uint64_t a1)
{
  v2 = sub_1E617AA08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6179278(uint64_t a1)
{
  v2 = sub_1E617AA08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61792B4()
{
  v1 = *v0;
  v2 = 0x6472617761;
  v3 = 0x726F6C6F43786568;
  v4 = 0x647261646E617473;
  if (v1 != 4)
  {
    v4 = 0x5074756F6B726F77;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x63696D616E7964;
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

uint64_t sub_1E6179378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E617D8DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E61793A0(uint64_t a1)
{
  v2 = sub_1E617A7AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61793DC(uint64_t a1)
{
  v2 = sub_1E617A7AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6179418(uint64_t a1)
{
  v2 = sub_1E617A9B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6179454(uint64_t a1)
{
  v2 = sub_1E617A9B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61794AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E617953C(uint64_t a1)
{
  v2 = sub_1E617A960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6179578(uint64_t a1)
{
  v2 = sub_1E617A960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61795CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F6C6F43786568 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E6179654(uint64_t a1)
{
  v2 = sub_1E617A90C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6179690(uint64_t a1)
{
  v2 = sub_1E617A90C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61796CC()
{
  if (*v0)
  {
    result = 0x65646F43706F7263;
  }

  else
  {
    result = 0x6B726F77747261;
  }

  *v0;
  return result;
}

uint64_t sub_1E6179708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E61797E4(uint64_t a1)
{
  v2 = sub_1E617A8B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6179820(uint64_t a1)
{
  v2 = sub_1E617A8B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E617985C()
{
  v1 = 0x656C756465686373;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E61798C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E617DAE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E61798E8(uint64_t a1)
{
  v2 = sub_1E617A864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6179924(uint64_t a1)
{
  v2 = sub_1E617A864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkContent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D70, &qword_1E65F38F0);
  v102 = *(v2 - 8);
  v103 = v2;
  v3 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v100 = &v82 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v106 = &v82 - v7;
  v8 = sub_1E65D76F8();
  v104 = *(v8 - 8);
  v105 = v8;
  v9 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D80, &unk_1E65F3900);
  v96 = *(v98 - 8);
  v11 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v82 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  v13 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v108 = &v82 - v14;
  v99 = sub_1E65DB268();
  v97 = *(v99 - 8);
  v15 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v107 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D88, &qword_1E65F3910);
  v93 = *(v94 - 8);
  v17 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v82 - v18;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D90, &qword_1E65F3918);
  v91 = *(v92 - 8);
  v19 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v82 - v20;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v87 = *(v88 - 8);
  v21 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v82 - v22;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D98, &qword_1E65F3928);
  v84 = *(v85 - 8);
  v23 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v25 = &v82 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DA0, &qword_1E65F3930);
  v83 = *(v26 - 8);
  v27 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v82 - v28;
  v30 = type metadata accessor for ArtworkContent();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DA8, &qword_1E65F3938);
  v109 = *(v112 - 8);
  v34 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v36 = &v82 - v35;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E617A7AC();
  v111 = v36;
  sub_1E65E6DA8();
  sub_1E617A800(v110, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v58 = *v33;
      v59 = v33[1];
      v114 = 0;
      sub_1E617AA08();
      v61 = v111;
      v60 = v112;
      sub_1E65E6B18();
      sub_1E65E6B48();

      (*(v83 + 8))(v29, v26);
      return (*(v109 + 8))(v61, v60);
    }

    if (EnumCaseMultiPayload != 1)
    {
      v69 = *v33;
      v70 = v33[1];
      v117 = 3;
      sub_1E617A90C();
      v71 = v90;
      v73 = v111;
      v72 = v112;
      sub_1E65E6B18();
      v74 = v94;
      sub_1E65E6B48();

      (*(v93 + 8))(v71, v74);
      return (*(v109 + 8))(v73, v72);
    }

    v39 = v87;
    v40 = v86;
    v41 = v88;
    (*(v87 + 32))(v86, v33, v88);
    v116 = 2;
    sub_1E617A960();
    v42 = v89;
    v44 = v111;
    v43 = v112;
    sub_1E65E6B18();
    sub_1E617D0F4(&qword_1ED074A00);
    v45 = v92;
    sub_1E65E6B78();
    (*(v91 + 8))(v42, v45);
    (*(v39 + 8))(v40, v41);
    return (*(v109 + 8))(v44, v43);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
    v63 = v97;
    v64 = v107;
    v65 = v99;
    (*(v97 + 32))(v107, v33, v99);
    sub_1E5FAB460(v33 + v62, v108, &qword_1ED073548, &qword_1E65ED508);
    v120 = 4;
    sub_1E617A8B8();
    v66 = v95;
    v44 = v111;
    v43 = v112;
    sub_1E65E6B18();
    v119 = 0;
    sub_1E5DF2818(&qword_1EE2D6D78, MEMORY[0x1E699D120]);
    v67 = v98;
    v68 = v113;
    sub_1E65E6B78();
    if (v68)
    {
      (*(v96 + 8))(v66, v67);
      sub_1E5DFE50C(v108, &qword_1ED073548, &qword_1E65ED508);
      (*(v63 + 8))(v64, v65);
    }

    else
    {
      v118 = 1;
      sub_1E617BA68(&qword_1EE2D64D0);
      v77 = v108;
      sub_1E65E6B78();
      (*(v96 + 8))(v66, v67);
      sub_1E5DFE50C(v77, &qword_1ED073548, &qword_1E65ED508);
      (*(v63 + 8))(v107, v65);
    }

    return (*(v109 + 8))(v44, v43);
  }

  if (EnumCaseMultiPayload == 4)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DB0, &qword_1E65F3940);
    v47 = *(v46 + 48);
    v110 = *(v33 + *(v46 + 64));
    v48 = v104;
    v49 = v105;
    v50 = v101;
    (*(v104 + 32))(v101, v33, v105);
    v51 = v106;
    sub_1E5FAB460(v33 + v47, v106, &qword_1ED075D78, &qword_1E65F38F8);
    v124 = 5;
    sub_1E617A864();
    v52 = v100;
    v54 = v111;
    v53 = v112;
    sub_1E65E6B18();
    v123 = 0;
    sub_1E5DF2818(&qword_1EE2D71B0, MEMORY[0x1E69695A8]);
    v55 = v103;
    v56 = v113;
    sub_1E65E6B78();
    v113 = v56;
    if (v56)
    {
      (*(v102 + 8))(v52, v55);
      sub_1E5DFE50C(v51, &qword_1ED075D78, &qword_1E65F38F8);
      (*(v48 + 8))(v50, v49);
      return (*(v109 + 8))(v54, v53);
    }

    else
    {
      v122 = 1;
      sub_1E65D9388();
      sub_1E5DF2818(&qword_1ED075DC0, MEMORY[0x1E69CC048]);
      v78 = v113;
      sub_1E65E6B38();
      if (v78)
      {
        (*(v102 + 8))(v52, v55);
        sub_1E5DFE50C(v51, &qword_1ED075D78, &qword_1E65F38F8);
        (*(v48 + 8))(v50, v49);
        return (*(v109 + 8))(v111, v112);
      }

      else
      {
        v121 = 2;
        sub_1E65E6B68();
        v79 = v52;
        v81 = v111;
        v80 = v112;
        (*(v102 + 8))(v79, v55);
        sub_1E5DFE50C(v106, &qword_1ED075D78, &qword_1E65F38F8);
        (*(v48 + 8))(v50, v49);
        return (*(v109 + 8))(v81, v80);
      }
    }
  }

  else
  {
    v115 = 1;
    sub_1E617A9B4();
    v76 = v111;
    v75 = v112;
    sub_1E65E6B18();
    (*(v84 + 8))(v25, v85);
    return (*(v109 + 8))(v76, v75);
  }
}

unint64_t sub_1E617A7AC()
{
  result = qword_1EE2DAB40[0];
  if (!qword_1EE2DAB40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2DAB40);
  }

  return result;
}

uint64_t sub_1E617A800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E617A864()
{
  result = qword_1ED075DB8;
  if (!qword_1ED075DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075DB8);
  }

  return result;
}

unint64_t sub_1E617A8B8()
{
  result = qword_1EE2DAAF8;
  if (!qword_1EE2DAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAF8);
  }

  return result;
}

unint64_t sub_1E617A90C()
{
  result = qword_1ED075DD0;
  if (!qword_1ED075DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075DD0);
  }

  return result;
}

unint64_t sub_1E617A960()
{
  result = qword_1ED075DD8;
  if (!qword_1ED075DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075DD8);
  }

  return result;
}

unint64_t sub_1E617A9B4()
{
  result = qword_1EE2DAAD0;
  if (!qword_1EE2DAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAD0);
  }

  return result;
}

unint64_t sub_1E617AA08()
{
  result = qword_1ED075DE0;
  if (!qword_1ED075DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075DE0);
  }

  return result;
}

uint64_t ArtworkContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DE8, &qword_1E65F3950);
  v4 = *(v3 - 8);
  v109 = v3;
  v110 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v120 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DF0, &qword_1E65F3958);
  v107 = *(v7 - 8);
  v108 = v7;
  v8 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v119 = &v93 - v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DF8, &qword_1E65F3960);
  v105 = *(v106 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v118 = &v93 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E00, &qword_1E65F3968);
  v104 = *(v103 - 8);
  v12 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v117 = &v93 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E08, &qword_1E65F3970);
  v101 = *(v102 - 8);
  v14 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v113 = &v93 - v15;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E10, &qword_1E65F3978);
  v99 = *(v100 - 8);
  v16 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v112 = &v93 - v17;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E18, &unk_1E65F3980);
  v116 = *(v121 - 8);
  v18 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v20 = &v93 - v19;
  v115 = type metadata accessor for ArtworkContent();
  v21 = *(*(v115 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v115);
  v111 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v93 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v93 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v93 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = (&v93 - v34);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v93 - v36;
  v38 = a1[3];
  v39 = a1[4];
  v123 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1E617A7AC();
  v40 = v122;
  sub_1E65E6D98();
  if (!v40)
  {
    v94 = v35;
    v95 = v29;
    v96 = v32;
    v97 = v26;
    v42 = v117;
    v41 = v118;
    v122 = 0;
    v44 = v119;
    v43 = v120;
    v98 = v37;
    v45 = v116;
    v46 = v121;
    v47 = sub_1E65E6AF8();
    v48 = (2 * *(v47 + 16)) | 1;
    v124 = v47;
    v125 = v47 + 32;
    v126 = 0;
    v127 = v48;
    v49 = sub_1E5FBE3E8();
    v50 = v20;
    if (v49 != 6 && v126 == v127 >> 1)
    {
      if (v49 > 2u)
      {
        if (v49 != 3)
        {
          v118 = v20;
          v59 = v45;
          if (v49 == 4)
          {
            v128 = 4;
            sub_1E617A8B8();
            v60 = v121;
            v61 = v122;
            v62 = v118;
            sub_1E65E6A68();
            if (!v61)
            {
              sub_1E65DB268();
              v128 = 0;
              sub_1E5DF2818(&qword_1ED075E28, MEMORY[0x1E699D120]);
              v63 = v97;
              v64 = v108;
              sub_1E65E6AD8();
              v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
              v128 = 1;
              sub_1E617BA68(&qword_1ED075E30);
              sub_1E65E6AD8();
              (*(v107 + 8))(v44, v64);
              (*(v59 + 8))(v118, v121);
              swift_unknownObjectRelease();
              swift_storeEnumTagMultiPayload();
              v89 = v63;
LABEL_28:
              v53 = v98;
              sub_1E617BA04(v89, v98);
              goto LABEL_29;
            }
          }

          else
          {
            v128 = 5;
            sub_1E617A864();
            v60 = v121;
            v73 = v122;
            v62 = v118;
            sub_1E65E6A68();
            if (!v73)
            {
              sub_1E65D76F8();
              v128 = 0;
              sub_1E5DF2818(&qword_1ED073B78, MEMORY[0x1E69695A8]);
              v77 = v109;
              sub_1E65E6AD8();
              v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DB0, &qword_1E65F3940);
              v88 = *(v87 + 48);
              sub_1E65D9388();
              v128 = 1;
              sub_1E5DF2818(&qword_1ED075E20, MEMORY[0x1E69CC048]);
              sub_1E65E6A98();
              v128 = 2;
              v90 = sub_1E65E6AC8();
              v91 = *(v87 + 64);
              (*(v110 + 8))(v43, v77);
              (*(v59 + 8))(v118, v121);
              swift_unknownObjectRelease();
              v92 = v111;
              *&v111[v91] = v90;
              swift_storeEnumTagMultiPayload();
              v89 = v92;
              goto LABEL_28;
            }
          }

          (*(v45 + 8))(v62, v60);
          goto LABEL_11;
        }

        v128 = 3;
        sub_1E617A90C();
        v69 = v122;
        sub_1E65E6A68();
        v67 = v114;
        v70 = v45;
        if (v69)
        {
          (*(v45 + 8))(v20, v46);
          goto LABEL_11;
        }

        v74 = v106;
        v75 = sub_1E65E6AA8();
        v76 = v41;
        v82 = v75;
        v84 = v83;
        (*(v105 + 8))(v76, v74);
        (*(v70 + 8))(v20, v46);
        swift_unknownObjectRelease();
        v81 = v95;
        *v95 = v82;
        *(v81 + 8) = v84;
      }

      else
      {
        if (v49)
        {
          v51 = v122;
          if (v49 == 1)
          {
            v128 = 1;
            sub_1E617A9B4();
            v52 = v113;
            sub_1E65E6A68();
            if (!v51)
            {
              (*(v101 + 8))(v52, v102);
              (*(v45 + 8))(v50, v46);
              swift_unknownObjectRelease();
              v53 = v98;
              swift_storeEnumTagMultiPayload();
LABEL_29:
              v85 = v114;
              goto LABEL_30;
            }

            goto LABEL_10;
          }

          v128 = 2;
          sub_1E617A960();
          sub_1E65E6A68();
          if (!v51)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
            sub_1E617D0F4(&qword_1ED0750C8);
            v71 = v96;
            v72 = v103;
            sub_1E65E6AD8();
            (*(v104 + 8))(v42, v72);
            (*(v45 + 8))(v50, v46);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v89 = v71;
            goto LABEL_28;
          }

LABEL_10:
          (*(v45 + 8))(v50, v46);
LABEL_11:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v123);
        }

        v128 = 0;
        sub_1E617AA08();
        v65 = v112;
        v66 = v122;
        sub_1E65E6A68();
        v67 = v114;
        if (v66)
        {
          goto LABEL_10;
        }

        v68 = v100;
        v78 = sub_1E65E6AA8();
        v80 = v79;
        (*(v99 + 8))(v65, v68);
        (*(v45 + 8))(v20, v46);
        swift_unknownObjectRelease();
        v81 = v94;
        *v94 = v78;
        *(v81 + 8) = v80;
      }

      swift_storeEnumTagMultiPayload();
      v53 = v98;
      sub_1E617BA04(v81, v98);
      v85 = v67;
LABEL_30:
      sub_1E617BA04(v53, v85);
      return __swift_destroy_boxed_opaque_existential_1(v123);
    }

    v54 = sub_1E65E68F8();
    swift_allocError();
    v56 = v55;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v56 = v115;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
    swift_willThrow();
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v123);
}

uint64_t sub_1E617BA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E617BA68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073548, &qword_1E65ED508);
    v3 = MEMORY[0x1E699DC60];
    sub_1E5DF2818(&qword_1EE2D6B58, MEMORY[0x1E699DC60]);
    sub_1E5DF2818(&qword_1EE2D6B78, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ArtworkContent.hash(into:)(uint64_t a1)
{
  v58 = a1;
  v2 = sub_1E65D9388();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - v9;
  v55 = sub_1E65D76F8();
  v53 = *(v55 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - v14;
  v16 = sub_1E65DB268();
  v50 = *(v16 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - v23;
  v25 = type metadata accessor for ArtworkContent();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E617A800(v1, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
      v45 = v50;
      (*(v50 + 32))(v19, v28, v16);
      sub_1E5FAB460(v28 + v44, v15, &qword_1ED073548, &qword_1E65ED508);
      MEMORY[0x1E694E740](4);
      sub_1E5DF2818(&qword_1EE2D6D70, MEMORY[0x1E699D120]);
      sub_1E65E5B48();
      sub_1E5DF2818(&qword_1EE2D6B70, MEMORY[0x1E699DC60]);
      sub_1E65E1758();
      sub_1E5DFE50C(v15, &qword_1ED073548, &qword_1E65ED508);
      return (*(v45 + 8))(v19, v16);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DB0, &qword_1E65F3940);
      v32 = *(v31 + 48);
      v33 = *(v28 + *(v31 + 64));
      v35 = v52;
      v34 = v53;
      v36 = v55;
      (*(v53 + 32))(v52, v28, v55);
      v37 = v54;
      sub_1E5FAB460(v28 + v32, v54, &qword_1ED075D78, &qword_1E65F38F8);
      MEMORY[0x1E694E740](5);
      sub_1E5DF2818(&qword_1EE2D71A8, MEMORY[0x1E69695A8]);
      sub_1E65E5B48();
      v38 = v51;
      sub_1E617D084(v37, v51);
      v40 = v56;
      v39 = v57;
      if ((*(v56 + 48))(v38, 1, v57) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v48 = v49;
        (*(v40 + 32))(v49, v38, v39);
        sub_1E65E6D48();
        sub_1E5DF2818(&qword_1ED075E38, MEMORY[0x1E69CC048]);
        sub_1E65E5B48();
        (*(v40 + 8))(v48, v39);
      }

      MEMORY[0x1E694E740](v33);
      sub_1E5DFE50C(v37, &qword_1ED075D78, &qword_1E65F38F8);
      return (*(v34 + 8))(v35, v36);
    }

    else
    {
      return MEMORY[0x1E694E740](1);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v21 + 32))(v24, v28, v20);
        MEMORY[0x1E694E740](2);
        sub_1E617D0F4(&qword_1EE2D6B88);
        sub_1E65E5B48();
        return (*(v21 + 8))(v24, v20);
      }

      v46 = *v28;
      v47 = v28[1];
      v43 = 3;
    }

    else
    {
      v41 = *v28;
      v42 = v28[1];
      v43 = 0;
    }

    MEMORY[0x1E694E740](v43);
    sub_1E65E5D78();
  }
}

uint64_t ArtworkContent.hashValue.getter()
{
  sub_1E65E6D28();
  ArtworkContent.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E617C31C()
{
  sub_1E65E6D28();
  ArtworkContent.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E617C360()
{
  sub_1E65E6D28();
  ArtworkContent.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard14ArtworkContentO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v115 = a1;
  v116 = a2;
  v2 = sub_1E65D9388();
  v3 = *(v2 - 8);
  v101 = v2;
  v102 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v98 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E78, &qword_1E65F41F8);
  v6 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v103 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v99 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v107 = &v98 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v98 - v14;
  v15 = sub_1E65D76F8();
  v16 = *(v15 - 8);
  v112 = v15;
  v113 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v109 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v105 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v106 = &v98 - v23;
  v114 = sub_1E65DB268();
  v111 = *(v114 - 8);
  v24 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v110 = *(v26 - 8);
  v27 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v98 - v28;
  v30 = type metadata accessor for ArtworkContent();
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v98 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = (&v98 - v39);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v98 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = (&v98 - v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E80, &qword_1E65F4200);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46 - 8);
  v50 = &v98 - v49;
  v51 = (&v98 + *(v48 + 56) - v49);
  sub_1E617A800(v115, &v98 - v49);
  sub_1E617A800(v116, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1E617A800(v50, v37);
      v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v78 = v111;
        v79 = v104;
        v80 = v114;
        (*(v111 + 32))(v104, v51, v114);
        v81 = v106;
        sub_1E5FAB460(&v37[v77], v106, &qword_1ED073548, &qword_1E65ED508);
        v82 = v51 + v77;
        v83 = v79;
        v84 = v105;
        sub_1E5FAB460(v82, v105, &qword_1ED073548, &qword_1E65ED508);
        v85 = MEMORY[0x1E6942C60](v37, v79);
        v86 = *(v78 + 8);
        v86(v37, v80);
        if (v85)
        {
          sub_1E65DC488();
          v87 = MEMORY[0x1E699DC60];
          sub_1E5DF2818(&qword_1EE2D6B68, MEMORY[0x1E699DC60]);
          sub_1E5DF2818(&qword_1EE2D6B60, v87);
          v54 = sub_1E65E1768();
          sub_1E5DFE50C(v84, &qword_1ED073548, &qword_1E65ED508);
          sub_1E5DFE50C(v81, &qword_1ED073548, &qword_1E65ED508);
          v86(v83, v80);
          goto LABEL_40;
        }

        sub_1E5DFE50C(v84, &qword_1ED073548, &qword_1E65ED508);
        sub_1E5DFE50C(v81, &qword_1ED073548, &qword_1E65ED508);
        v86(v83, v80);
        goto LABEL_35;
      }

      sub_1E5DFE50C(&v37[v77], &qword_1ED073548, &qword_1E65ED508);
      (*(v111 + 8))(v37, v114);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1E617A800(v50, v34);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DB0, &qword_1E65F3940);
        v57 = *(v56 + 48);
        v58 = *(v56 + 64);
        v59 = *&v34[v58];
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          sub_1E5DFE50C(&v34[v57], &qword_1ED075D78, &qword_1E65F38F8);
          (*(v113 + 8))(v34, v112);
          goto LABEL_27;
        }

        v115 = *(v51 + v58);
        v116 = v59;
        v61 = v112;
        v60 = v113;
        v62 = v109;
        (*(v113 + 32))(v109, v51, v112);
        v63 = v108;
        sub_1E5FAB460(&v34[v57], v108, &qword_1ED075D78, &qword_1E65F38F8);
        v64 = v51 + v57;
        v65 = v62;
        v66 = v107;
        sub_1E5FAB460(v64, v107, &qword_1ED075D78, &qword_1E65F38F8);
        v67 = sub_1E65D76D8();
        v68 = v60 + 8;
        v69 = *(v60 + 8);
        v69(v34, v61);
        if ((v67 & 1) == 0)
        {
          sub_1E5DFE50C(v66, &qword_1ED075D78, &qword_1E65F38F8);
          sub_1E5DFE50C(v63, &qword_1ED075D78, &qword_1E65F38F8);
          v69(v65, v61);
          goto LABEL_35;
        }

        v113 = v68;
        v70 = *(v100 + 48);
        v71 = v103;
        sub_1E617D084(v63, v103);
        sub_1E617D084(v66, v71 + v70);
        v72 = v101;
        v73 = *(v102 + 48);
        if (v73(v71, 1, v101) == 1)
        {
          sub_1E5DFE50C(v66, &qword_1ED075D78, &qword_1E65F38F8);
          v74 = v103;
          sub_1E5DFE50C(v63, &qword_1ED075D78, &qword_1E65F38F8);
          v69(v109, v112);
          if (v73(v74 + v70, 1, v72) == 1)
          {
            sub_1E5DFE50C(v74, &qword_1ED075D78, &qword_1E65F38F8);
            goto LABEL_39;
          }
        }

        else
        {
          v91 = v99;
          sub_1E617D084(v71, v99);
          if (v73(v71 + v70, 1, v72) != 1)
          {
            v93 = v102;
            v94 = v71 + v70;
            v95 = v98;
            (*(v102 + 32))(v98, v94, v72);
            sub_1E5DF2818(&qword_1ED075E88, MEMORY[0x1E69CC048]);
            v96 = sub_1E65E5B98();
            v97 = *(v93 + 8);
            v97(v95, v72);
            sub_1E5DFE50C(v107, &qword_1ED075D78, &qword_1E65F38F8);
            sub_1E5DFE50C(v108, &qword_1ED075D78, &qword_1E65F38F8);
            v69(v109, v112);
            v97(v91, v72);
            sub_1E5DFE50C(v71, &qword_1ED075D78, &qword_1E65F38F8);
            if ((v96 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_39:
            v54 = v116 == v115;
            goto LABEL_40;
          }

          sub_1E5DFE50C(v107, &qword_1ED075D78, &qword_1E65F38F8);
          v74 = v103;
          sub_1E5DFE50C(v108, &qword_1ED075D78, &qword_1E65F38F8);
          v69(v109, v112);
          (*(v102 + 8))(v91, v72);
        }

        sub_1E5DFE50C(v74, &qword_1ED075E78, &qword_1E65F41F8);
        goto LABEL_35;
      }

      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_29;
      }
    }

LABEL_27:
    sub_1E5DFE50C(v50, &qword_1ED075E80, &qword_1E65F4200);
LABEL_36:
    v54 = 0;
    return v54 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E617A800(v50, v45);
    v76 = *v45;
    v75 = v45[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1E617A800(v50, v43);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v53 = v110;
      (*(v110 + 32))(v29, v51, v26);
      sub_1E5DF2818(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
      v54 = sub_1E65DC418();
      v55 = *(v53 + 8);
      v55(v29, v26);
      v55(v43, v26);
LABEL_40:
      sub_1E617DC08(v50);
      return v54 & 1;
    }

    (*(v110 + 8))(v43, v26);
    goto LABEL_27;
  }

  sub_1E617A800(v50, v40);
  v76 = *v40;
  v75 = v40[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_14:

    goto LABEL_27;
  }

LABEL_19:
  if (v76 != *v51 || v75 != v51[1])
  {
    v89 = v51[1];
    v90 = sub_1E65E6C18();

    if (v90)
    {
      goto LABEL_29;
    }

LABEL_35:
    sub_1E617DC08(v50);
    goto LABEL_36;
  }

  v88 = v51[1];

LABEL_29:
  sub_1E617DC08(v50);
  v54 = 1;
  return v54 & 1;
}

uint64_t sub_1E617D084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E617D0F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A08, &qword_1E65F3920);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E617D200()
{
  result = qword_1ED075E48;
  if (!qword_1ED075E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075E48);
  }

  return result;
}

unint64_t sub_1E617D258()
{
  result = qword_1ED075E50;
  if (!qword_1ED075E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075E50);
  }

  return result;
}

unint64_t sub_1E617D2B0()
{
  result = qword_1ED075E58;
  if (!qword_1ED075E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075E58);
  }

  return result;
}

unint64_t sub_1E617D308()
{
  result = qword_1ED075E60;
  if (!qword_1ED075E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075E60);
  }

  return result;
}

unint64_t sub_1E617D360()
{
  result = qword_1ED075E68;
  if (!qword_1ED075E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075E68);
  }

  return result;
}

unint64_t sub_1E617D3B8()
{
  result = qword_1ED075E70;
  if (!qword_1ED075E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075E70);
  }

  return result;
}

unint64_t sub_1E617D410()
{
  result = qword_1EE2DAB20;
  if (!qword_1EE2DAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB20);
  }

  return result;
}

unint64_t sub_1E617D468()
{
  result = qword_1EE2DAB28;
  if (!qword_1EE2DAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB28);
  }

  return result;
}

unint64_t sub_1E617D4C0()
{
  result = qword_1EE2DAAC0;
  if (!qword_1EE2DAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAC0);
  }

  return result;
}

unint64_t sub_1E617D518()
{
  result = qword_1EE2DAAC8;
  if (!qword_1EE2DAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAC8);
  }

  return result;
}

unint64_t sub_1E617D570()
{
  result = qword_1EE2DAB10;
  if (!qword_1EE2DAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB10);
  }

  return result;
}

unint64_t sub_1E617D5C8()
{
  result = qword_1EE2DAB18;
  if (!qword_1EE2DAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB18);
  }

  return result;
}

unint64_t sub_1E617D620()
{
  result = qword_1EE2DAB00;
  if (!qword_1EE2DAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB00);
  }

  return result;
}

unint64_t sub_1E617D678()
{
  result = qword_1EE2DAB08;
  if (!qword_1EE2DAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB08);
  }

  return result;
}

unint64_t sub_1E617D6D0()
{
  result = qword_1EE2DAAE8;
  if (!qword_1EE2DAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAE8);
  }

  return result;
}

unint64_t sub_1E617D728()
{
  result = qword_1EE2DAAF0;
  if (!qword_1EE2DAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAF0);
  }

  return result;
}

unint64_t sub_1E617D780()
{
  result = qword_1EE2DAAD8;
  if (!qword_1EE2DAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAD8);
  }

  return result;
}

unint64_t sub_1E617D7D8()
{
  result = qword_1EE2DAAE0;
  if (!qword_1EE2DAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAE0);
  }

  return result;
}

unint64_t sub_1E617D830()
{
  result = qword_1EE2DAB30;
  if (!qword_1EE2DAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB30);
  }

  return result;
}

unint64_t sub_1E617D888()
{
  result = qword_1EE2DAB38;
  if (!qword_1EE2DAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB38);
  }

  return result;
}

uint64_t sub_1E617D8DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6472617761 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6613BC0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63696D616E7964 && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F43786568 && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5074756F6B726F77 && a2 == 0xEB000000006E616CLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

uint64_t sub_1E617DAE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E6613BE0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E617DC08(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E617DC64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v4 = type metadata accessor for AppComposer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v65 = &v56 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v64 = &v56 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v63 = (&v56 - v14);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v56 - v17;
  v19 = type metadata accessor for BrowsePage();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v72 = v2;
  v73 = sub_1E617E190(a1);
  sub_1E617FA24(a1, &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BrowsePage);
  v69 = type metadata accessor for AppComposer;
  sub_1E617FA24(v2, v18, type metadata accessor for AppComposer);
  v22 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v23 = *(v5 + 80);
  v59 = v16;
  v70 = v23 | 7;
  v24 = swift_allocObject();
  sub_1E617FC80(&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22, type metadata accessor for BrowsePage);
  v68 = type metadata accessor for AppComposer;
  v57 = v24;
  sub_1E617FC80(v18, v24 + ((v21 + v23 + v22) & ~v23), type metadata accessor for AppComposer);
  sub_1E65E5148();
  v71 = sub_1E65E5138();
  v25 = v72;
  v26 = v63;
  sub_1E617FA24(v72, v63, type metadata accessor for AppComposer);
  v27 = (v23 + 32) & ~v23;
  v28 = v27 + v16;
  v60 = v28;
  v61 = v27;
  v29 = swift_allocObject();
  v58 = &unk_1E65F4228;
  *(v29 + 16) = &unk_1E65F4228;
  *(v29 + 24) = v24;
  v30 = v29;
  v31 = v68;
  sub_1E617FC80(v26, v29 + v27, v68);
  *(v30 + v28) = v73;
  v32 = v30 + (v28 & 0xFFFFFFFFFFFFFFF8);
  v62 = v30;
  v63 = sub_1E6172524;
  *(v32 + 8) = sub_1E6172524;
  *(v32 + 16) = 0;
  v33 = (v30 + (((v28 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v34 = MEMORY[0x1E69AB380];
  *v33 = v71;
  v33[1] = v34;
  v35 = v64;
  v36 = v69;
  sub_1E617FA24(v25, v64, v69);
  v37 = (v23 + 48) & ~v23;
  v38 = v37 + v59;
  v56 = v37;
  v39 = (v37 + v59) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v57;
  v42 = v58;
  v40[2] = v58;
  v40[3] = v41;
  v43 = v71;
  v40[4] = v71;
  v40[5] = MEMORY[0x1E69AB380];
  sub_1E617FC80(v35, v40 + v37, v31);
  *(v40 + v38) = v73;
  v44 = v40 + v39;
  v45 = v63;
  *(v44 + 1) = v63;
  *(v44 + 2) = 0;
  v46 = v65;
  sub_1E617FA24(v72, v65, v36);
  v47 = (v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v48[2] = v42;
  v48[3] = v41;
  v49 = v42;
  v48[4] = v43;
  v48[5] = MEMORY[0x1E69AB380];
  v50 = v68;
  sub_1E617FC80(v46, v48 + v56, v68);
  v51 = v48 + v47;
  *v51 = v45;
  *(v51 + 1) = 0;
  v51[16] = v73;
  v52 = v66;
  sub_1E617FA24(v72, v66, v69);
  v53 = swift_allocObject();
  *(v53 + 16) = v49;
  *(v53 + 24) = v41;
  sub_1E617FC80(v52, v53 + v61, v50);
  swift_retain_n();
  result = swift_retain_n();
  v55 = v67;
  *v67 = result;
  v55[1] = MEMORY[0x1E69AB380];
  v55[2] = &unk_1E65EB918;
  v55[3] = v62;
  v55[4] = &unk_1E65FA770;
  v55[5] = v40;
  v55[6] = &unk_1E65EB920;
  v55[7] = v48;
  v55[8] = &unk_1E65FA780;
  v55[9] = v53;
  return result;
}

uint64_t sub_1E617E190(uint64_t a1)
{
  v2 = type metadata accessor for BrowsePage();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E617FA24(a1, v5, type metadata accessor for BrowsePage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1E617FC20(v5, type metadata accessor for BrowsePage);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return 0;
  }

  v7 = *(v5 + 1);

  v8 = v5[16];
  v9 = sub_1E65E03C8();
  v11 = v10;
  if (v9 == sub_1E65E03C8() && v11 == v12)
  {

    v15 = 3;
  }

  else
  {
    v14 = sub_1E65E6C18();

    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }
  }

  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
  v18 = sub_1E65D72D8();
  (*(*(v18 - 8) + 8))(&v5[v17], v18);
  return v15;
}

uint64_t sub_1E617E338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1E65D7218();
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = sub_1E65D72D8();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = sub_1E65DFC18();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = sub_1E65DFA58();
  v3[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v14 = sub_1E65DFAC8();
  v3[16] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EA0, &qword_1E65F4230) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v17 = sub_1E65DFA08();
  v3[21] = v17;
  v18 = *(v17 - 8);
  v3[22] = v18;
  v19 = *(v18 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v24 = type metadata accessor for BrowsePage();
  v3[31] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v26 = sub_1E65DFB08();
  v3[33] = v26;
  v27 = *(v26 - 8);
  v3[34] = v27;
  v28 = *(v27 + 64) + 15;
  v3[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E617E724, 0, 0);
}

uint64_t sub_1E617E724()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v6 = v0[4];
  sub_1E6143704(v1);
  v7 = sub_1E65DFAF8();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  sub_1E617FA24(v6, v4, type metadata accessor for BrowsePage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v32 = v0[5];
    sub_1E617FC20(v0[32], type metadata accessor for BrowsePage);
    v33 = *v32;
    swift_getKeyPath();
    sub_1E65E4EC8();

    v34 = v0[2];
    if (*(v34 + 16) && (v35 = sub_1E6215038(v7, v9), (v36 & 1) != 0))
    {
      v38 = v0[23];
      v37 = v0[24];
      v39 = v0[21];
      v40 = v0[22];
      v42 = v0[16];
      v41 = v0[17];
      (*(v40 + 16))(v38, *(v34 + 56) + *(v40 + 72) * v35, v39);

      (*(v40 + 32))(v37, v38, v39);
      sub_1E65DF9C8();
      v43 = swift_getEnumCaseMultiPayload();
      if ((v43 - 2) < 2)
      {
        v44 = v0[3];
        (*(v0[22] + 8))(v0[24], v0[21]);

        v45 = sub_1E65D7A38();
        (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
        goto LABEL_15;
      }

      if (!v43)
      {
        v86 = v0[20];
        sub_1E617FC20(v0[17], MEMORY[0x1E699D4C0]);
        v87 = sub_1E65E0218();
        (*(*(v87 - 8) + 56))(v86, 1, 1, v87);
LABEL_23:
        v96 = v0[29];
        v97 = v0[19];
        v98 = v0[20];
        v99 = v0[5];
        v100 = *MEMORY[0x1E69CBD40];
        v101 = sub_1E65D8F38();
        v102 = *(v101 - 8);
        (*(v102 + 104))(v96, v100, v101);
        (*(v102 + 56))(v96, 0, 1, v101);
        v103 = (v99 + *(type metadata accessor for AppComposer() + 36));
        v104 = *v103;
        v105 = v103[1];
        sub_1E617FCE8(v98, v97);
        sub_1E65E0218();
        v106 = *(v87 - 8);
        v107 = *(v106 + 48);
        v108 = v107(v97, 1, v87);
        sub_1E5FA9D34(v104, v105);
        if (v108 == 1)
        {
          sub_1E617FD58(v0[19]);
        }

        else
        {
          v109 = v0[27];
          v110 = v0[19];
          v112 = v0[12];
          v111 = v0[13];
          v113 = v0[11];
          sub_1E65E01F8();
          (*(v106 + 8))(v110, v87);
          sub_1E65DFBD8();
          (*(v112 + 8))(v111, v113);
          v108 = 0;
        }

        v114 = v0[27];
        v115 = v0[20];
        v116 = v0[18];
        v117 = sub_1E65D74E8();
        (*(*(v117 - 8) + 56))(v114, v108, 1, v117);
        sub_1E617FCE8(v115, v116);
        v118 = v107(v116, 1, v87);
        v119 = v0[18];
        if (v118 == 1)
        {
          sub_1E617FD58(v0[18]);
        }

        else
        {
          v120 = v0[12];
          v121 = v0[13];
          v122 = v0[11];
          sub_1E65E01F8();
          (*(v106 + 8))(v119, v87);
          sub_1E65DFBE8();
          (*(v120 + 8))(v121, v122);
        }

        v123 = v0[29];
        v124 = v0[26];
        v125 = v0[27];
        v126 = v0[24];
        v127 = v0[25];
        v129 = v0[21];
        v128 = v0[22];
        v130 = v0[20];
        v51 = v0[3];
        v131 = sub_1E65D9908();
        (*(*(v131 - 8) + 56))(v124, 1, 1, v131);
        v132 = sub_1E65D9F88();
        (*(*(v132 - 8) + 56))(v127, 1, 1, v132);
        sub_1E65D7A28();
        sub_1E617FD58(v130);
        (*(v128 + 8))(v126, v129);
        goto LABEL_10;
      }

      v88 = v0[17];
      v90 = v0[14];
      v89 = v0[15];
      v91 = *(v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E98, &qword_1E65F4218) + 64));

      sub_1E617FC80(v88, v89, MEMORY[0x1E699D488]);
      if (!swift_getEnumCaseMultiPayload())
      {
        v93 = v0[20];
        v94 = v0[15];
        v87 = sub_1E65E0218();
        v95 = *(v87 - 8);
        (*(v95 + 32))(v93, v94, v87);
        (*(v95 + 56))(v93, 0, 1, v87);
        goto LABEL_23;
      }

      v92 = v0[15];
      v61 = v0[3];
      (*(v0[22] + 8))(v0[24], v0[21]);

      sub_1E617FC20(v92, MEMORY[0x1E699D488]);
    }

    else
    {
      v61 = v0[3];
    }

    v62 = sub_1E65D7A38();
    (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = v0[32];
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    v15 = *(v11 + 8);

    v16 = *(v11 + 16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0);
    (*(v13 + 32))(v12, v11 + *(v17 + 80), v14);
    v18 = v0[30];
    v19 = v0[28];
    v20 = v0[26];
    v21 = v0[9];
    v142 = v0[10];
    v138 = v0[25];
    v140 = v0[8];
    if (v16)
    {
      v22 = v0[3];

      v23 = *MEMORY[0x1E69CBDB0];
      v24 = sub_1E65D8F38();
      v25 = *(v24 - 8);
      (*(v25 + 104))(v18, v23, v24);
      (*(v25 + 56))(v18, 0, 1, v24);
      v26 = sub_1E65D74E8();
      (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
      v27 = sub_1E65D9908();
      (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
      v28 = sub_1E65D9F88();
      (*(*(v28 - 8) + 56))(v138, 1, 1, v28);
      sub_1E65D7A28();
      (*(v21 + 8))(v142, v140);
      v29 = sub_1E65D7A38();
      v30 = *(*(v29 - 8) + 56);
      v31 = v22;
    }

    else
    {
      v63 = v0[7];
      v64 = v0[5];
      v134 = v0[6];
      v136 = v0[3];
      v65 = *MEMORY[0x1E69CBDB0];
      v66 = sub_1E65D8F38();
      v67 = *(v66 - 8);
      (*(v67 + 104))(v18, v65, v66);
      (*(v67 + 56))(v18, 0, 1, v66);
      v68 = (v64 + *(type metadata accessor for AppComposer() + 36));
      v69 = *v68;
      v70 = v68[1];
      v71 = sub_1E65D74E8();
      (*(*(v71 - 8) + 56))(v19, 1, 1, v71);
      sub_1E5FA9D34(v69, v70);
      sub_1E65D71F8();
      sub_1E617FBC8();
      sub_1E65E5E48();
      v72 = sub_1E65D9908();
      (*(*(v72 - 8) + 56))(v20, 1, 1, v72);
      v73 = sub_1E65D9F88();
      (*(*(v73 - 8) + 56))(v138, 1, 1, v73);
      sub_1E65D7A28();
      (*(v21 + 8))(v142, v140);
      v29 = sub_1E65D7A38();
      v30 = *(*(v29 - 8) + 56);
      v31 = v136;
    }

    goto LABEL_14;
  }

  v46 = v0[30];
  v47 = v0[28];
  v49 = v0[25];
  v48 = v0[26];
  v50 = v0[5];
  v51 = v0[3];
  v52 = *MEMORY[0x1E69CBD80];
  v53 = sub_1E65D8F38();
  v54 = *(v53 - 8);
  (*(v54 + 104))(v46, v52, v53);
  (*(v54 + 56))(v46, 0, 1, v53);
  v55 = (v50 + *(type metadata accessor for AppComposer() + 36));
  v56 = *v55;
  v57 = v55[1];
  v58 = sub_1E65D74E8();
  (*(*(v58 - 8) + 56))(v47, 1, 1, v58);
  v59 = sub_1E65D9908();
  (*(*(v59 - 8) + 56))(v48, 1, 1, v59);
  v60 = sub_1E65D9F88();
  (*(*(v60 - 8) + 56))(v49, 1, 1, v60);
  sub_1E5FA9D34(v56, v57);
  sub_1E65D7A28();
LABEL_10:
  v29 = sub_1E65D7A38();
  v30 = *(*(v29 - 8) + 56);
  v31 = v51;
LABEL_14:
  v30(v31, 0, 1, v29);
LABEL_15:
  v74 = v0[35];
  v75 = v0[32];
  v77 = v0[29];
  v76 = v0[30];
  v79 = v0[27];
  v78 = v0[28];
  v80 = v0[25];
  v81 = v0[26];
  v83 = v0[23];
  v82 = v0[24];
  v133 = v0[20];
  v135 = v0[19];
  v137 = v0[18];
  v139 = v0[17];
  v141 = v0[15];
  v143 = v0[13];
  v144 = v0[10];
  v145 = v0[7];

  v84 = v0[1];

  return v84();
}

uint64_t sub_1E617F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1E65DFAC8();
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v9 = sub_1E65DFA18();
  v6[8] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E617F644, 0, 0);
}

uint64_t sub_1E617F644()
{
  v1 = v0 + 9;
  v2 = v0[8];
  sub_1E617FA24(v0[2], v0[9], MEMORY[0x1E699D470]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = MEMORY[0x1E699D470];
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 3) < 2)
    {
      goto LABEL_8;
    }

    v18 = v0[6];
    v19 = v0[7];
    v1 = v0 + 6;
    v20 = v0[5];
    v21 = v0[3];
    sub_1E65DF9C8();
    sub_1E617FC80(v19, v18, MEMORY[0x1E699D4C0]);
    v22 = swift_getEnumCaseMultiPayload();
    v4 = MEMORY[0x1E699D4C0];
    if ((v22 - 2) < 2)
    {
LABEL_8:
      v6 = v0[9];
      v7 = v0[6];
      v8 = v0[7];

      v9 = v0[1];

      return v9();
    }

    if (!v22)
    {
LABEL_6:
      sub_1E617FC20(*v1, v4);
      goto LABEL_8;
    }

    v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E98, &qword_1E65F4218) + 64);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v5 = EnumCaseMultiPayload == 1;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      goto LABEL_6;
    }

    v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E90, &qword_1E65F4210) + 48);
  }

  v12 = *v1;
  v13 = v0[4];
  v14 = *(*v1 + *v11);

  sub_1E617FC20(v12, MEMORY[0x1E699D488]);
  v15 = *(v13 + 24);
  v23 = (*(v13 + 16) + **(v13 + 16));
  v16 = *(*(v13 + 16) + 4);
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_1E617F8D4;

  return v23();
}

uint64_t sub_1E617F8D4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v8 = *v0;

  v3 = v1[9];
  v4 = v1[7];
  v5 = v1[6];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1E617FA24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E617FA8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BrowsePage() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFA78C;

  return sub_1E617E338(a1, v1 + v6, v1 + v9);
}

unint64_t sub_1E617FBC8()
{
  result = qword_1ED075EA8;
  if (!qword_1ED075EA8)
  {
    sub_1E65D7218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075EA8);
  }

  return result;
}

uint64_t sub_1E617FC20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E617FC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E617FCE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EA0, &qword_1E65F4230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E617FD58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EA0, &qword_1E65F4230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E617FDC0()
{
  v0 = sub_1E65DB838();
  v1 = sub_1E65D8888();
  v3 = v2;
  sub_1E65D8CC8();
  v9 = v4;
  sub_1E65E6848();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v0;
  sub_1E64205E4(v7, v1, v3, isUniquelyReferenced_nonNull_native);

  sub_1E65DB818();
  return sub_1E65DB808();
}

uint64_t sub_1E617FE94@<X0>(uint64_t *a1@<X8>)
{
  v112 = a1;
  v2 = type metadata accessor for AccountService();
  Description = v2[-1].Description;
  v107 = v2;
  v3 = Description[8];
  MEMORY[0x1EEE9AC00](v2);
  v104 = v4;
  v105 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for AppStateService();
  v103 = v111[-1].Description;
  v5 = *(v103 + 8);
  MEMORY[0x1EEE9AC00](v111);
  v101 = v6;
  v102 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for RemoteBrowsingService();
  v98 = v100[-1].Description;
  v7 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v96 = v8;
  v97 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v125 = &v91 - v11;
  QueueService = type metadata accessor for UpNextQueueService();
  v13 = QueueService[-1].Description;
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](QueueService);
  v16 = v15;
  v17 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  v115 = *(v109 - 8);
  v18 = *(v115 + 64);
  v19 = MEMORY[0x1EEE9AC00](v109);
  v110 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v123 = &v91 - v21;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v22 = sub_1E65E3B68();
  __swift_project_value_buffer(v22, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v23 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v113 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v24 = type metadata accessor for AppEnvironment();
  v25 = v24[7];
  v99 = v24[6];
  v108 = v25;
  v95 = v24[25];
  v26 = v24[33];
  v93 = v26;
  v27 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v92 = v13[2];
  v92(v17, v23 + v26, QueueService);
  v28 = *(v13 + 80);
  v94 = v28 | 7;
  v91 = v16;
  v29 = swift_allocObject();
  v30 = v13[4];
  v114 = (v13 + 4);
  v117 = v30;
  v30(v29 + ((v28 + 16) & ~v28), v17, QueueService);

  v31 = v123;
  sub_1E65E4E08();
  v32 = v112;
  v33 = v109;
  v112[3] = v109;
  v32[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  v35 = v115 + 16;
  v36 = *(v115 + 16);
  v36(boxed_opaque_existential_1, v31, v33);
  v37 = v17;
  v38 = v36;
  v119 = v35;
  v120 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_1E65F2010;
  v121 = sub_1E65E60A8();
  v39 = *(v121 - 8);
  v118 = *(v39 + 56);
  v122 = v39 + 56;
  v118(v125, 1, 1, v121);
  v40 = v113;
  v92(v37, v113 + v93, QueueService);
  v38(v110, v31, v33);
  v41 = (v28 + 32) & ~v28;
  v42 = v115;
  v43 = *(v115 + 80);
  v44 = (v41 + v91 + v43) & ~v43;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  v117(v45 + v41, v37, QueueService);
  v46 = *(v42 + 32);
  v114 = (v42 + 32);
  v117 = v46;
  v47 = v110;
  v48 = v33;
  v46(v45 + v44, v110, v33);
  v49 = v125;
  v50 = sub_1E6059EAC(0, 0, v125, &unk_1E65F42A0, v45);
  *(v116 + 32) = v50;
  v118(v49, 1, 1, v121);
  v51 = v98;
  v52 = v40;
  v53 = v97;
  v54 = v100;
  (*(v98 + 16))(v97, v40 + v95, v100);
  v55 = v48;
  v120(v47, v123, v48);
  v56 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v57 = (v96 + v43 + v56) & ~v43;
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  (*(v51 + 32))(v58 + v56, v53, v54);
  v59 = v47;
  v60 = v47;
  v61 = v55;
  v117(v58 + v57, v60, v55);
  v62 = v125;
  v63 = sub_1E6059EAC(0, 0, v125, &unk_1E65F42B0, v58);
  *(v116 + 40) = v63;
  v118(v62, 1, 1, v121);
  v64 = v103;
  v100 = *(v103 + 2);
  v65 = v52 + v108;
  v66 = v102;
  (v100)(v102, v65, v111);
  v67 = v59;
  v120(v59, v123, v61);
  v68 = *(v64 + 80);
  v69 = (v68 + 32) & ~v68;
  v93 = v43;
  v98 = v69;
  v70 = (v101 + v43 + v69) & ~v43;
  v101 = v43 | v68;
  v71 = v70;
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  *(v72 + 24) = 0;
  v73 = v64[4];
  v74 = v111;
  v73(v72 + v69, v66, v111);
  v117(v72 + v71, v67, v61);
  v75 = v125;
  v76 = sub_1E6059EAC(0, 0, v125, &unk_1E65F42C0, v72);
  *(v116 + 48) = v76;
  v118(v75, 1, 1, v121);
  (v100)(v66, v113 + v108, v74);
  v77 = v123;
  v78 = v109;
  v120(v67, v123, v109);
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  v73(v79 + v98, v66, v74);
  v80 = v67;
  v117(v79 + v71, v67, v78);
  v81 = v125;
  v82 = sub_1E6059EAC(0, 0, v125, &unk_1E65F42D0, v79);
  v83 = v116;
  *(v116 + 56) = v82;
  v118(v81, 1, 1, v121);
  v85 = v105;
  v84 = Description;
  v86 = v107;
  (Description[2])(v105, v113 + v99, v107);
  v120(v80, v77, v78);
  v87 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v88 = (v104 + v93 + v87) & ~v93;
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  *(v89 + 24) = 0;
  (v84[4])(v89 + v87, v85, v86);
  v117(v89 + v88, v80, v78);
  *(v83 + 64) = sub_1E6059EAC(0, 0, v125, &unk_1E65F42E0, v89);
  result = (*(v115 + 8))(v123, v78);
  v112[5] = v83;
  return result;
}

uint64_t sub_1E6180A3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D8948();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6180AFC, 0, 0);
}

uint64_t sub_1E6180AFC()
{
  v1 = v0[3];
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  v0[7] = v3;
  v7 = (Queue + *Queue);
  v4 = Queue[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1E6180BF0;

  return v7();
}

uint64_t sub_1E6180BF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v8 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v5 = sub_1E6180EA8;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_1E6180D0C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6180D0C()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 40);
    v23 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v2, 0);
    v4 = v23;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v21 = *(v3 + 56);
    v22 = v5;
    v7 = (v3 - 8);
    do
    {
      v8 = *(v0 + 48);
      v9 = *(v0 + 32);
      v22(v8, v6, v9);
      v10 = sub_1E65D88F8();
      v12 = v11;
      (*v7)(v8, v9);
      v14 = *(v23 + 16);
      v13 = *(v23 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1E601C0B8((v13 > 1), v14 + 1, 1);
      }

      *(v23 + 16) = v14 + 1;
      v15 = v23 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 += v21;
      --v2;
    }

    while (v2);
    v16 = *(v0 + 72);
  }

  else
  {
    v17 = *(v0 + 72);

    v4 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v0 + 48);
  **(v0 + 16) = v4;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1E6180EA8()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1E6180F14(uint64_t a1)
{
  Description = type metadata accessor for UpNextQueueService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6180A3C(a1, v1 + v5);
}

uint64_t sub_1E6180FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6181124, 0, 0);
}

uint64_t sub_1E6181124()
{
  v1 = v0[2];
  Queue = UpNextQueueService.makeUpNextQueueUpdatedStream.getter();
  v0[10] = v3;
  v8 = (Queue + *Queue);
  v4 = Queue[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6181220;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6181220()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1E60EC658;
  }

  else
  {
    v4 = sub_1E6181350;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6181350()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E618142C;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v8);
}

uint64_t sub_1E618142C()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6181528, 0, 0);
}

uint64_t sub_1E6181528()
{
  if (*(v0 + 120) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 112) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6181628, v5, v4);
  }
}

uint64_t sub_1E6181628()
{
  v1 = v0[14];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E618142C;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v6);
}

uint64_t sub_1E61816F4(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for UpNextQueueService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6180FF0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6181850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61819BC, 0, 0);
}

uint64_t sub_1E61819BC()
{
  v1 = v0[2];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E6181AB8;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E6181AB8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6181BD0, 0, 0);
}

uint64_t sub_1E6181BD0()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6181CAC;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E6181CAC()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6181DA8, 0, 0);
}

uint64_t sub_1E6181DA8()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6181EF8, v7, v6);
  }
}

uint64_t sub_1E6181EF8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6181F7C, 0, 0);
}

uint64_t sub_1E6181F7C()
{
  sub_1E5FC789C(v0[4]);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E6181CAC;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E618202C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6181850(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6182188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61822BC, 0, 0);
}

uint64_t sub_1E61822BC()
{
  v1 = v0[2];
  v2 = AppStateService.makeAppWillEnterForegroundStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E61823B8;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E61823B8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61824D0, 0, 0);
}

uint64_t sub_1E61824D0()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E61825AC;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E61825AC()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61826A8, 0, 0);
}

uint64_t sub_1E61826A8()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61827A8, v5, v4);
  }
}

uint64_t sub_1E61827A8()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E61825AC;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E6182874(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6182188(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E61829D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6182B04, 0, 0);
}

uint64_t sub_1E6182B04()
{
  v1 = v0[2];
  v2 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6182C00;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6182C00()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6182D18, 0, 0);
}

uint64_t sub_1E6182D18()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E6182DF4;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E6182DF4()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6182EF0, 0, 0);
}

uint64_t sub_1E6182EF0()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6182FF0, v5, v4);
  }
}

uint64_t sub_1E6182FF0()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6182DF4;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E61830BC(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E61829D0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6183218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E618334C, 0, 0);
}

uint64_t sub_1E618334C()
{
  v1 = v0[2];
  v2 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6183448;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6183448()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6183560, 0, 0);
}

uint64_t sub_1E6183560()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E618363C;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E618363C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6183738, 0, 0);
}

uint64_t sub_1E6183738()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6183838, v5, v4);
  }
}

uint64_t sub_1E6183838()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E618363C;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t objectdestroy_3Tm_8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E6183A68(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6183218(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6183BC4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EC8, &qword_1E65F4450);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6185EA0();
  sub_1E65E6DA8();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  sub_1E613C6E4(&qword_1ED075A00);
  sub_1E65E6B78();
  if (!v1)
  {
    v9 = *(type metadata accessor for DynamicLibraryActionLoadState() + 20);
    v11[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    sub_1E613BED0(&qword_1ED075A08);
    sub_1E65E6B78();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1E6183DB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v23 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB8, &qword_1E65F4448);
  v27 = *(v30 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v11 = &v23 - v10;
  State = type metadata accessor for DynamicLibraryActionLoadState();
  v13 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6185EA0();
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = State;
  v24 = a1;
  v17 = v15;
  v19 = v27;
  v18 = v28;
  v32 = 0;
  sub_1E613C6E4(&qword_1ED075A38);
  v21 = v29;
  v20 = v30;
  sub_1E65E6AD8();
  sub_1E5FAB460(v21, v17, &unk_1ED077CC0, &unk_1E65F2610);
  v31 = 1;
  sub_1E613BED0(&qword_1ED075A40);
  sub_1E65E6AD8();
  (*(v19 + 8))(v11, v20);
  sub_1E5FAB460(v18, v17 + *(v23 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E6185EF4(v17, v25);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1E6185D20(v17);
}

uint64_t sub_1E618413C()
{
  if (*v0)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    return 0x6B72616D6B6F6F62;
  }
}

uint64_t sub_1E6184170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E618424C(uint64_t a1)
{
  v2 = sub_1E6185EA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6184288(uint64_t a1)
{
  v2 = sub_1E6185EA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61842F4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  sub_1E65E4DB8();
  v3 = *(a2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613CC1C();
  return sub_1E65E4DB8();
}

uint64_t sub_1E618437C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1E5DF23E0();

  return sub_1E65E4D98();
}

uint64_t sub_1E6184404@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for DynamicLibraryActionLoadState();
  v5 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  sub_1E5DFD1CC(v2, &v19 - v10, &qword_1ED073958, &qword_1E65EDCD0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v11;
  v13 = *(v11 + 1);
  v15 = v11[16];
  if (EnumCaseMultiPayload == 1)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073968, &unk_1E65F4320);
    sub_1E6185CBC(&v11[*(v16 + 48)], v7);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0) + 48);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = v15;
    sub_1E5DFD1CC(v7, a1 + v17, &unk_1ED077CC0, &unk_1E65F2610);
    sub_1E6185D20(v7);
  }

  else
  {
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E61845B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for DynamicLibraryActionLoadState();
  v5 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  sub_1E5DFD1CC(v2, &v21 - v10, &qword_1ED073958, &qword_1E65EDCD0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v11;
  v13 = *(v11 + 1);
  v15 = v11[16];
  if (EnumCaseMultiPayload == 1)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073968, &unk_1E65F4320);
    sub_1E6185CBC(&v11[*(v16 + 48)], v7);
    if (v15)
    {
      sub_1E6001C2C(v14, v13, v15);
      sub_1E6185D20(v7);
LABEL_6:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }

    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350) + 48);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    sub_1E5DFD1CC(&v7[*(State + 20)], a1 + v19, &unk_1ED077CD0, &unk_1E65F42F0);
    sub_1E6185D20(v7);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  }

  else
  {
    if (v11[16])
    {
      sub_1E6001C2C(*v11, *(v11 + 1), v11[16]);
      goto LABEL_6;
    }

    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
}

uint64_t sub_1E6184840@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v155 = a2;
  v174 = a1;
  v184 = a3;
  State = type metadata accessor for DynamicLibraryActionLoadState();
  v4 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v171 = &State - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v6 = *(*(v182 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v182);
  v157 = &State - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v158 = &State - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v166 = &State - v12;
  MEMORY[0x1EEE9AC00](v11);
  v183 = (&State - v13);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v164 = *(v165 - 8);
  v14 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &State - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v178 = *(v16 - 8);
  v179 = v16;
  v17 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &State - v18;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  v20 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v181 = &State - v21;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v22 = *(*(v168 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v168);
  v156 = &State - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v162 = &State - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v167 = &State - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v185 = &State - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &State - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v173 = &State - v35;
  MEMORY[0x1EEE9AC00](v34);
  v172 = &State - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v175 = &State - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v169 = &State - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v154 = &State - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &State - v47;
  MEMORY[0x1EEE9AC00](v46);
  v50 = &State - v49;
  v51 = sub_1E65D7848();
  v176 = *(v51 - 8);
  v177 = v51;
  v52 = *(v176 + 64);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v159 = &State - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v161 = &State - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v170 = &State - v58;
  MEMORY[0x1EEE9AC00](v57);
  v160 = &State - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v63 = &State - v62;
  sub_1E5DFD1CC(v3, &State - v62, &qword_1ED073958, &qword_1E65EDCD0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v65 = *v63;
  v66 = *(v63 + 1);
  v67 = v63[16];
  if (EnumCaseMultiPayload == 1)
  {
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073968, &unk_1E65F4320);
    v69 = v171;
    sub_1E6185CBC(&v63[*(v68 + 48)], v171);
    v70 = type metadata accessor for AppState();
    v71 = v70[22];
    *&v191 = v65;
    *(&v191 + 1) = v66;
    v192 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
    sub_1E65E4D78();
    v72 = v179;
    sub_1E65E4C98();
    (*(v178 + 8))(v19, v72);
    v73 = v167;
    sub_1E5DFD1CC(v33, v167, &unk_1ED077CC0, &unk_1E65F2610);
    v74 = swift_getEnumCaseMultiPayload();
    v75 = v69;
    v76 = v66;
    v77 = v33;
    v78 = v169;
    if (v74 > 2)
    {
      goto LABEL_17;
    }

    if (v74)
    {
      if (v74 != 1)
      {
        sub_1E5DFE50C(v73, &unk_1ED077CC0, &unk_1E65F2610);
        v75 = v69;
LABEL_17:
        sub_1E5DFD1CC(v75, v185, &unk_1ED077CC0, &unk_1E65F2610);
        if (v67)
        {
          *&v191 = v65;
          *(&v191 + 1) = v76;
          v192 = v67;
          v108 = v70[7];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
          v109 = v175;
          sub_1E65E4C98();
          sub_1E5E1F544(v78);
          sub_1E5DFE50C(v109, &qword_1ED071F78, &unk_1E65EA3F0);
          v111 = v176;
          v110 = v177;
          v112 = *(v176 + 48);
          if (v112(v78, 1, v177) == 1)
          {
            sub_1E65D77C8();
            if (v112(v78, 1, v110) != 1)
            {
              sub_1E5DFE50C(v78, &qword_1ED071F80, &unk_1E65F4310);
            }
          }

          else
          {
            (*(v111 + 32))(v159, v78, v110);
          }

          v130 = v70[73];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
          v131 = v181;
          sub_1E65E4C98();
          sub_1E65E4DA8();
          sub_1E5DFE50C(v131, &qword_1ED0741D8, &unk_1E6606270);
          v132 = v185;
          sub_1E5DFD1CC(v185, v173, &unk_1ED077CC0, &unk_1E65F2610);
          v133 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
          v134 = v183;
          *v183 = 0;
          *(v134 + 2) = 256;
          sub_1E65D7688();
          swift_storeEnumTagMultiPayload();
          sub_1E604CB00();
          sub_1E65DEC08();
          sub_1E5DFE50C(v132, &unk_1ED077CC0, &unk_1E65F2610);
          v135 = v77;
          goto LABEL_36;
        }

        v113 = v77;
        v114 = v70[29];
        *&v191 = v65;
        *(&v191 + 1) = v76;
        v192 = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
        v115 = v163;
        sub_1E65E4D78();
        v116 = v65;
        v117 = v183;
        v118 = v165;
        sub_1E65E4C98();
        v119 = (*(v164 + 8))(v115, v118);
        MEMORY[0x1EEE9AC00](v119);
        *(&State - 16) = v155 & 1;
        sub_1E5DF23E0();
        sub_1E65E4DA8();
        v120 = v116;
        sub_1E5DFE50C(v117, &unk_1ED077CD0, &unk_1E65F42F0);
        *&v191 = v116;
        *(&v191 + 1) = v76;
        v192 = 0;
        v121 = v70[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
        v122 = v175;
        sub_1E65E4C98();
        v123 = v154;
        sub_1E5E1F544(v154);
        sub_1E5DFE50C(v122, &qword_1ED071F78, &unk_1E65EA3F0);
        v125 = v176;
        v124 = v177;
        v126 = *(v176 + 48);
        if (v126(v123, 1, v177) == 1)
        {
          sub_1E65D77C8();
          v127 = v126(v123, 1, v124);
          v128 = v113;
          v129 = v156;
          if (v127 != 1)
          {
            sub_1E5DFE50C(v123, &qword_1ED071F80, &unk_1E65F4310);
          }
        }

        else
        {
          (*(v125 + 32))(v161, v123, v124);
          v128 = v113;
          v129 = v156;
        }

        v144 = v70[73];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
        v145 = v181;
        sub_1E65E4C98();
        sub_1E65E4DA8();
        sub_1E5DFE50C(v145, &qword_1ED0741D8, &unk_1E6606270);
        sub_1E5DFD1CC(v185, v129, &unk_1ED077CC0, &unk_1E65F2610);
        v146 = v166;
        v147 = v157;
        sub_1E5DFD1CC(v166, v157, &unk_1ED077CD0, &unk_1E65F42F0);
        v148 = swift_getEnumCaseMultiPayload();
        v69 = v171;
        if (v148 <= 2)
        {
          v149 = v148;
          v150 = v146;
          if (!v149)
          {
LABEL_35:
            sub_1E5DFD1CC(v150, v158, &unk_1ED077CD0, &unk_1E65F42F0);
            sub_1E604CB00();
            sub_1E65DEC08();
            sub_1E6001C2C(v120, v76, 0);
            sub_1E5DFE50C(v146, &unk_1ED077CD0, &unk_1E65F42F0);
            sub_1E5DFE50C(v185, &unk_1ED077CC0, &unk_1E65F2610);
            v135 = v128;
LABEL_36:
            sub_1E5DFE50C(v135, &unk_1ED077CC0, &unk_1E65F2610);
            return sub_1E6185D20(v69);
          }

          if (v149 == 1)
          {
            v151 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
            v152 = sub_1E65D76A8();
            (*(*(v152 - 8) + 8))(v147 + v151, v152);
            v150 = v146;
            goto LABEL_35;
          }

          sub_1E5DFE50C(v147, &unk_1ED077CD0, &unk_1E65F42F0);
        }

        v150 = v69 + *(State + 20);
        goto LABEL_35;
      }

      v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v80 = sub_1E65D76A8();
      (*(*(v80 - 8) + 8))(v73 + v79, v80);
    }

    v75 = v77;
    goto LABEL_17;
  }

  v171 = v19;
  v185 = v65;
  v81 = v66;
  if (v67)
  {
    sub_1E65DE488();
    v189 = v191;
    v190 = v192;
    v82 = type metadata accessor for AppState();
    v83 = v82[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v84 = v175;
    sub_1E65E4C98();
    sub_1E5E1F544(v48);
    sub_1E5DFE50C(v84, &qword_1ED071F78, &unk_1E65EA3F0);
    v86 = v176;
    v85 = v177;
    v87 = *(v176 + 48);
    if (v87(v48, 1, v177) == 1)
    {
      sub_1E65D77C8();
      v88 = v87(v48, 1, v85);
      v89 = v171;
      if (v88 != 1)
      {
        sub_1E5DFE50C(v48, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v86 + 32))(v170, v48, v85);
      v89 = v171;
    }

    v100 = v82[73];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
    v101 = v181;
    sub_1E65E4C98();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v101, &qword_1ED0741D8, &unk_1E6606270);
    v102 = v82[22];
    v103 = v185;
    v186 = v185;
    v187 = v81;
    v188 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
    sub_1E65E4D78();
    sub_1E6001C2C(v103, v81, v67);
    v104 = v179;
    sub_1E65E4C98();
    (*(v178 + 8))(v89, v104);
    v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
    v106 = v183;
    *v183 = 0;
    *(v106 + 2) = 256;
    sub_1E65D7688();
    swift_storeEnumTagMultiPayload();
    sub_1E604CB00();
    return sub_1E65DEC08();
  }

  else
  {
    *&v191 = v185;
    *(&v191 + 1) = v66;
    v90 = v66;
    v192 = 0;
    v91 = type metadata accessor for AppState();
    v92 = v91[7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v93 = v175;
    sub_1E65E4C98();
    sub_1E5E1F544(v50);
    sub_1E5DFE50C(v93, &qword_1ED071F78, &unk_1E65EA3F0);
    v95 = v176;
    v94 = v177;
    v96 = *(v176 + 48);
    if (v96(v50, 1, v177) == 1)
    {
      sub_1E65D77C8();
      v97 = v96(v50, 1, v94);
      v99 = v178;
      v98 = v179;
      if (v97 != 1)
      {
        sub_1E5DFE50C(v50, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v95 + 32))(v160, v50, v94);
      v99 = v178;
      v98 = v179;
    }

    v136 = v91[73];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
    v137 = v181;
    sub_1E65E4C98();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v137, &qword_1ED0741D8, &unk_1E6606270);
    v138 = v91[22];
    v139 = v185;
    *&v189 = v185;
    *(&v189 + 1) = v90;
    v190 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
    v140 = v171;
    sub_1E65E4D78();
    sub_1E65E4C98();
    (*(v99 + 8))(v140, v98);
    v141 = v91[29];
    *&v189 = v139;
    *(&v189 + 1) = v90;
    v190 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
    v142 = v163;
    sub_1E65E4D78();
    v143 = v165;
    sub_1E65E4C98();
    (*(v164 + 8))(v142, v143);
    sub_1E604CB00();
    sub_1E65DEC08();
    return sub_1E6001C2C(v139, v90, 0);
  }
}

uint64_t type metadata accessor for DynamicLibraryActionLoadState()
{
  result = qword_1EE2D7ED8;
  if (!qword_1EE2D7ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6185CBC(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for DynamicLibraryActionLoadState();
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t sub_1E6185D20(uint64_t a1)
{
  State = type metadata accessor for DynamicLibraryActionLoadState();
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

void sub_1E6185DC0()
{
  sub_1E5DF232C();
  if (v0 <= 0x3F)
  {
    sub_1E5DF2384();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E6185E48()
{
  result = qword_1EE2D7EE8[0];
  if (!qword_1EE2D7EE8[0])
  {
    type metadata accessor for DynamicLibraryActionLoadState();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D7EE8);
  }

  return result;
}

unint64_t sub_1E6185EA0()
{
  result = qword_1ED075EC0;
  if (!qword_1ED075EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075EC0);
  }

  return result;
}

uint64_t sub_1E6185EF4(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for DynamicLibraryActionLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

unint64_t sub_1E6185F6C()
{
  result = qword_1ED075ED0;
  if (!qword_1ED075ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075ED0);
  }

  return result;
}

unint64_t sub_1E6185FC4()
{
  result = qword_1ED075ED8;
  if (!qword_1ED075ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075ED8);
  }

  return result;
}

unint64_t sub_1E618601C()
{
  result = qword_1ED075EE0;
  if (!qword_1ED075EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075EE0);
  }

  return result;
}

uint64_t type metadata accessor for PageMetricsClick()
{
  result = qword_1EE2DA108;
  if (!qword_1EE2DA108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E61860E4()
{
  sub_1E61863C4(319, &qword_1EE2D7010, MEMORY[0x1E69CC918], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E65D8C68();
    if (v1 <= 0x3F)
    {
      sub_1E61863C4(319, &qword_1EE2D71D8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E61863C4(319, &qword_1EE2D4880, MEMORY[0x1E69CB458], MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1E61863C4(319, &qword_1EE2D6FE0, MEMORY[0x1E69CCB78], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1E5DF0194();
            if (v5 <= 0x3F)
            {
              sub_1E618630C();
              if (v6 <= 0x3F)
              {
                sub_1E65D8F28();
                if (v7 <= 0x3F)
                {
                  sub_1E61863C4(319, &qword_1EE2D7050, MEMORY[0x1E69CC4D0], MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
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
  }
}

void sub_1E618630C()
{
  if (!qword_1EE2D4960)
  {
    sub_1E6186370();
    v0 = sub_1E65E5B28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4960);
    }
  }
}

unint64_t sub_1E6186370()
{
  result = qword_1EE2D70A8;
  if (!qword_1EE2D70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D70A8);
  }

  return result;
}

void sub_1E61863C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E6186428@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v28 - v4;
  v5 = type metadata accessor for CatalogService();
  Description = v5[-1].Description;
  v7 = Description[8];
  MEMORY[0x1EEE9AC00](v5);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v8 = sub_1E65E3B68();
  __swift_project_value_buffer(v8, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v9 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v31 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v10 = v1 + *(type metadata accessor for AppEnvironment() + 48);
  v32 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v30 = Description[2];
  v30(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, v5);
  v29 = v5;
  v12 = *(Description + 80);
  v13 = swift_allocObject();
  v33 = Description[4];
  v33(v13 + ((v12 + 16) & ~v12), &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EE8, &qword_1E65F45C8);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = sub_1E65E4E68();
  v28 = v17;
  v18 = v35;
  v35[3] = v14;
  v18[4] = &off_1F5FAA810;
  *v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E65EA670;
  v20 = sub_1E65E60A8();
  v21 = v34;
  (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  v22 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v29;
  v30(v22, v32 + v31, v29);
  v24 = (v12 + 32) & ~v12;
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v33(v26 + v24, v22, v23);
  *(v26 + v25) = v28;

  result = sub_1E6059EAC(0, 0, v21, &unk_1E65F45D8, v26);
  *(v19 + 32) = result;
  v18[5] = v19;
  return result;
}

uint64_t sub_1E61867F8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E6186820, 0, 0);
}

uint64_t sub_1E6186820()
{
  v1 = v0[3];
  v2 = CatalogService.fetchRemoteCatalogModalityDetail.getter();
  v0[6] = v3;
  v10 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1E60EBD8C;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];

  return v10(v8, v6, v7);
}

uint64_t sub_1E6186920(uint64_t a1, void *a2)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v7 = (Description[80] + 16) & ~Description[80];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E61867F8(a1, a2, v2 + v7);
}

uint64_t sub_1E6186A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6186B38, 0, 0);
}

uint64_t sub_1E6186B38()
{
  v1 = v0[2];
  v2 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6186C34;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6186C34()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1E60EC658;
  }

  else
  {
    v4 = sub_1E6186D64;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6186D64()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6186E40;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v8);
}

uint64_t sub_1E6186E40()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6186F3C, 0, 0);
}

uint64_t sub_1E6186F3C()
{
  if (*(v0 + 120) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 112) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E618703C, v5, v4);
  }
}

uint64_t sub_1E618703C()
{
  v1 = v0[14];
  v2 = v0[3];

  sub_1E65E4E78();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6186E40;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v6);
}

uint64_t sub_1E61870F4(uint64_t a1)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6186A04(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6187214(void *a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v53 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v62 = *(v64 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EF0, &qword_1E65F45E0);
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v51 - v8;
  v9 = sub_1E65DAF78();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppComposer();
  v13 = *(v12 - 8);
  v55 = *(v13 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - v16;
  v51 = &v51 - v16;
  v18 = sub_1E65DB748();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v71 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  v24 = sub_1E65DAF98();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v56 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E65DAFF8();
  v28 = *(v27 - 8);
  v59 = v27;
  v60 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v72 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v58 = *a1;
  v52 = *(v19 + 16);
  v52(v23, a2, v18);
  sub_1E5E1DEAC(a1, v17);
  v31 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v32 = (v20 + *(v13 + 80) + v31) & ~*(v13 + 80);
  v33 = swift_allocObject();
  v34 = *(v19 + 32);
  v34(v33 + v31, v23, v18);
  sub_1E5E1FA80(v51, v33 + v32);
  v52(v71, v53, v18);
  v35 = v57;
  sub_1E5E1DEAC(v54, v57);
  v36 = swift_allocObject();
  v34(v36 + v31, v71, v18);
  sub_1E5E1FA80(v35, v36 + v32);
  sub_1E65DAF88();
  sub_1E65DAFE8();
  sub_1E65DAF68();
  v38 = v61;
  v37 = v62;
  v39 = *(v62 + 16);
  v40 = v64;
  v41 = v65;
  v39(v61, v65, v64);
  v42 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v71 = swift_allocObject();
  v43 = *(v37 + 32);
  v43(&v71[v42], v38, v40);
  v39(v38, v41, v40);
  v44 = swift_allocObject();
  v43((v44 + v42), v38, v40);
  type metadata accessor for AppFeature();
  sub_1E61891DC(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E61891DC(&qword_1ED075EF8, MEMORY[0x1E699CFE8]);
  v45 = v66;
  v46 = v59;
  sub_1E65E4DE8();
  v48 = v72;
  v47 = v73;
  v49 = sub_1E65E4F08();
  (*(v69 + 8))(v45, v70);
  (*(v67 + 8))(v47, v68);
  (*(v60 + 8))(v48, v46);
  return v49;
}

uint64_t sub_1E6187948(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a1;
  v6 = sub_1E65DB748();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v9 = sub_1E65DB288();
  *(v5 + 80) = v9;
  v10 = *(v9 - 8);
  *(v5 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v12 = type metadata accessor for ImageAssetRequest();
  *(v5 + 104) = v12;
  v13 = *(v12 - 8);
  *(v5 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v16 = sub_1E65D74E8();
  *(v5 + 136) = v16;
  v17 = *(v16 - 8);
  *(v5 + 144) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6187B5C, 0, 0);
}

uint64_t sub_1E6187B5C()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  v4 = *(v0 + 2);
  sub_1E65DB008();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(*(v0 + 16), &qword_1ED072340, &qword_1E65EA410);
    v5 = sub_1E65DB0F8();
    sub_1E61891DC(&unk_1ED075F10, MEMORY[0x1E699D058]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E699D050], v5);
    swift_willThrow();
    v7 = *(v0 + 19);
    v9 = *(v0 + 15);
    v8 = *(v0 + 16);
    v10 = *(v0 + 12);
    v11 = *(v0 + 9);

    v12 = *(v0 + 1);

    return v12();
  }

  else
  {
    v15 = *(v0 + 11);
    v14 = *(v0 + 12);
    v16 = *(v0 + 9);
    v17 = *(v0 + 8);
    v39 = *(v0 + 7);
    v40 = *(v0 + 15);
    v41 = *(v0 + 6);
    v37 = *(v0 + 10);
    v38 = *(v0 + 5);
    v19 = v0[3];
    v18 = v0[4];
    v20 = *(v0 + 2);
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v21 = sub_1E65D7428();
    v36 = v22;
    v23 = sub_1E65DB028();
    v25 = v24;
    sub_1E65DB038();
    v26 = sub_1E65DB278();
    v28 = v27;
    (*(v15 + 8))(v14, v37);
    (*(v17 + 16))(v16, v38, v39);
    ImageAssetRequest.init(template:size:cropCode:fileType:priority:expirationPolicy:cacheBehavior:)(v21, v36, v23, v25, v26, v28, 25, 1, v40, v19, v18, 1, v16);
    v29 = v41 + *(type metadata accessor for AppComposer() + 20);
    v30 = v29 + *(type metadata accessor for AppEnvironment() + 36);
    v31 = AssetService.fetchRemoteImage.getter();
    *(v0 + 20) = v32;
    v42 = (v31 + *v31);
    v33 = v31[1];
    v34 = swift_task_alloc();
    *(v0 + 21) = v34;
    *v34 = v0;
    v34[1] = sub_1E6187EEC;
    v35 = *(v0 + 15);

    return v42(v35);
  }
}

uint64_t sub_1E6187EEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  v7 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v8 = sub_1E6188118;
  }

  else
  {
    *(v4 + 184) = a1;
    v8 = sub_1E6188038;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E6188038()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[12];
  v6 = v0[9];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[23];

  return v7(v8);
}

uint64_t sub_1E6188118()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[22];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E61881F0(uint64_t a1, double a2, double a3)
{
  v8 = *(sub_1E65DB748() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for AppComposer() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1E5FE99E8;

  return sub_1E6187948(a1, v3 + v9, v3 + v12, a2, a3);
}

uint64_t sub_1E618833C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a2;
  v61 = a3;
  v64 = a1;
  v51 = a4;
  v4 = sub_1E65DB288();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v55 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v46 - v9;
  v11 = sub_1E65D74E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v59 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DB748();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v54 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v46 - v20;
  v22 = sub_1E65DB048();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E65DB558();
  v49 = *(v27 - 8);
  v50 = v27;
  v28 = *(v49 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v53 = v46 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v48 = v46 - v31;
  v62 = v23;
  v63 = v22;
  v32 = v23;
  v33 = v15;
  (*(v32 + 16))(v26, v64, v22);
  v64 = v16;
  v34 = *(v16 + 16);
  v34(v21, v60, v15);
  v52 = *(v61 + *(type metadata accessor for AppComposer() + 20) + 8);
  sub_1E65DB008();
  v60 = v12;
  v61 = v11;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1E5DFE50C(v10, &qword_1ED072340, &qword_1E65EA410);
    v35 = sub_1E65DB0F8();
    sub_1E61891DC(&unk_1ED075F10, MEMORY[0x1E699D058]);
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E699D050], v35);
    swift_willThrow();
LABEL_5:
    (*(v64 + 8))(v21, v33);
    return (*(v62 + 8))(v26, v63);
  }

  (*(v60 + 32))(v59, v10, v61);
  v47 = v15;
  v34(v54, v21, v15);
  v46[1] = sub_1E65DB028();
  v37 = v55;
  sub_1E65DB038();
  sub_1E65DB278();
  (*(v56 + 8))(v37, v57);
  sub_1E65D7428();
  v38 = v53;
  v39 = v58;
  sub_1E65DB518();
  if (v39)
  {
    v33 = v47;
    (*(v60 + 8))(v59, v61);
    goto LABEL_5;
  }

  (*(v60 + 8))(v59, v61);
  (*(v64 + 8))(v21, v47);
  (*(v62 + 8))(v26, v63);
  v41 = v48;
  v42 = v49;
  v43 = v38;
  v44 = v50;
  (*(v49 + 32))(v48, v43, v50);
  sub_1E65DB4F8();
  v64 = sub_1E65DB528();
  v63 = v45;
  sub_1E65DB4E8();
  sub_1E65DB538();
  sub_1E65DB548();
  sub_1E65DB508();
  sub_1E65DB0D8();
  return (*(v42 + 8))(v41, v44);
}

uint64_t sub_1E6188A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E65DB748() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer() - 8);
  return sub_1E618833C(a1, v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

uint64_t sub_1E6188B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075F08, &unk_1E65F4600);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075F00, &qword_1E65F45F8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v30 - v17;
  v19 = *(a1 + *(type metadata accessor for AppState() + 120));
  if (*(v19 + 16) && (v20 = sub_1E6416E74(a2), (v21 & 1) != 0))
  {
    v22 = v20;
    v23 = *(v19 + 56);
    v24 = sub_1E65DAFD8();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v18, v23 + *(v25 + 72) * v22, v24);
    (*(v25 + 56))(v18, 0, 1, v24);
    return (*(v25 + 32))(a3, v18, v24);
  }

  else
  {
    v27 = sub_1E65DAFD8();
    v28 = *(v27 - 8);
    (*(v28 + 56))(v18, 1, 1, v27);
    (*(v11 + 16))(v14, a2, v10);
    v29 = sub_1E65DB218();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    sub_1E5DFE000(MEMORY[0x1E69E7CC0]);
    sub_1E65DAFC8();
    result = (*(v28 + 48))(v18, 1, v27);
    if (result != 1)
    {
      return sub_1E5DFE50C(v18, &qword_1ED075F00, &qword_1E65F45F8);
    }
  }

  return result;
}

uint64_t sub_1E6188E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E6188B04(a1, v6, a2);
}

uint64_t sub_1E6188F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075F00, &qword_1E65F45F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  (*(v14 + 16))(&v19 - v12, a3);
  v15 = sub_1E65DAFD8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v9, a2, v15);
  (*(v16 + 56))(v9, 0, 1, v15);
  v17 = a1 + *(type metadata accessor for AppState() + 120);
  return sub_1E6407E30(v9, v13);
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E6189150(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E6188F0C(a1, a2, v6);
}

uint64_t sub_1E61891DC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1E6189254()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToastDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ToastDelegate()
{
  result = qword_1ED075F48;
  if (!qword_1ED075F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E618938C()
{
  result = type metadata accessor for AppComposer();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ToastResource();
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

void sub_1E618946C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v88 - v5;
  v94 = type metadata accessor for RouteSource(0);
  v7 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v96 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for RouteDestination();
  v91 = *(v95 - 8);
  v9 = *(v91 + 64);
  v10 = MEMORY[0x1EEE9AC00](v95);
  v93 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v88 - v12;
  v14 = sub_1E65DBB88();
  v101 = *(v14 - 8);
  v15 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ToastResource();
  v18 = *(*(v102 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v102);
  v21 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v88 - v22;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v24 = sub_1E65E3B68();
  v25 = __swift_project_value_buffer(v24, qword_1EE2EA2A0);
  v26 = v1;
  v100 = v25;
  v27 = sub_1E65E3B48();
  v28 = sub_1E65E6338();

  v29 = os_log_type_enabled(v27, v28);
  v97 = v13;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v98 = v6;
    v31 = v30;
    v32 = swift_slowAlloc();
    v99 = v14;
    v33 = v32;
    v113 = v32;
    *v31 = 136315394;
    v103 = a1;
    type metadata accessor for BBBulletinDismissalReason(0);
    v34 = sub_1E65E5CE8();
    v90 = v21;
    v35 = a1;
    v36 = v26;
    v38 = v17;
    v39 = sub_1E5DFD4B0(v34, v37, &v113);

    *(v31 + 4) = v39;
    *(v31 + 12) = 2080;
    sub_1E618A7B8(&v26[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_toastResource], v23, type metadata accessor for ToastResource);
    v40 = sub_1E65E5CE8();
    v42 = sub_1E5DFD4B0(v40, v41, &v113);
    v17 = v38;

    *(v31 + 14) = v42;
    v26 = v36;
    a1 = v35;
    v21 = v90;
    _os_log_impl(&dword_1E5DE9000, v27, v28, "[ToastDelegate] Bulletin dismissed with reason %s for resource %s", v31, 0x16u);
    swift_arrayDestroy();
    v43 = v33;
    v14 = v99;
    MEMORY[0x1E694F1C0](v43, -1, -1);
    v6 = v98;
    MEMORY[0x1E694F1C0](v31, -1, -1);
  }

  if (a1 == 1)
  {
    sub_1E618A7B8(&v26[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_toastResource], v21, type metadata accessor for ToastResource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if ((EnumCaseMultiPayload - 3) >= 2)
      {
        v73 = sub_1E65E60A8();
        (*(*(v73 - 8) + 56))(v6, 1, 1, v73);
        v74 = swift_allocObject();
        v74[2] = 0;
        v74[3] = 0;
        v74[4] = v26;
        v75 = v26;
        sub_1E64B80F8(0, 0, v6, &unk_1E65F4648, v74);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1E618A9F0(v21, type metadata accessor for ToastResource);
        return;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v98 = v6;
        (*(v101 + 32))(v17, v21, v14);
        v102 = v26;
        v45 = &v26[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics];
        v46 = *&v26[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics];
        v47 = *&v26[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics + 24];
        v48 = *&v26[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics + 32];
        v49 = *&v26[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics + 40];
        v50 = *&v26[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics + 48];
        v51 = *&v26[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics + 56];
        v52 = *&v26[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics + 64];
        v53 = *(v45 + 9);
        v112 = *(v45 + 8);
        if (v46)
        {
          v90 = v17;
          v99 = v14;
          v103 = v46;
          v104 = *(v45 + 8);
          v54 = v47;
          v105 = v47;
          v106 = v48;
          v89 = v48;
          v107 = v49;
          v108 = v50;
          v109 = v51;
          v110 = v52;
          v111 = v53;
          sub_1E618A994(&v103, &v113);
          v55 = sub_1E65E3B48();
          v56 = sub_1E65E6338();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&dword_1E5DE9000, v55, v56, "[ToastDelegate] Publishing page metrics for award toast", v57, 2u);
            MEMORY[0x1E694F1C0](v57, -1, -1);
          }

          v88[1] = OBJC_IVAR____TtC10Blackbeard13ToastDelegate_composer;
          v114 = v112;
          v113 = v46;
          v115 = v54;
          v116 = v89;
          v117 = v49;
          v118 = v50;
          v119 = v51;
          v120 = v52;
          v121 = v53;
          swift_unknownObjectRetain();

          v17 = v90;
          v58 = sub_1E65DBB48();
          sub_1E639C7C4(&v113, 0, v58);

          swift_unknownObjectRelease_n();

          v14 = v99;
        }

        v59 = *(sub_1E65DBB48() + 16);

        v60 = v17;
        if (v59 == 1)
        {
          v61 = sub_1E65DBB48();
          if (v61[2])
          {
            v63 = v61[4];
            v62 = v61[5];

            v64 = v96;
            swift_storeEnumTagMultiPayload();
            v65 = v97;
            *v97 = v63;
            *(v65 + 8) = v62;
            type metadata accessor for RouteResource();
            swift_storeEnumTagMultiPayload();
            v66 = v95;
            sub_1E618A820(v64, v65 + *(v95 + 20), type metadata accessor for RouteSource);
            *(v65 + *(v66 + 24)) = MEMORY[0x1E69E7CD0];
            v67 = v102;
            v68 = *(v102 + OBJC_IVAR____TtC10Blackbeard13ToastDelegate_composer);
            swift_getKeyPath();
            sub_1E65E4EC8();

            v69 = v104;
            if (v104 != 6)
            {
              v79 = v103;
              v80 = sub_1E65E60A8();
              v81 = v98;
              (*(*(v80 - 8) + 56))(v98, 1, 1, v80);
              v82 = v67;
              v83 = v93;
              sub_1E618A7B8(v65, v93, type metadata accessor for RouteDestination);
              v84 = v14;
              v85 = (*(v91 + 80) + 56) & ~*(v91 + 80);
              v86 = swift_allocObject();
              v86[2] = 0;
              v86[3] = 0;
              v86[4] = v82;
              v86[5] = v79;
              v86[6] = v69;
              sub_1E618A820(v83, v86 + v85, type metadata accessor for RouteDestination);
              v87 = v82;
              sub_1E6059EAC(0, 0, v81, &unk_1E65F4680, v86);

              sub_1E618A9F0(v65, type metadata accessor for RouteDestination);
              (*(v101 + 8))(v60, v84);
              return;
            }

            v70 = sub_1E65E3B48();
            v71 = sub_1E65E6328();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              *v72 = 0;
              _os_log_impl(&dword_1E5DE9000, v70, v71, "No root item selected for Toast dismissal", v72, 2u);
              MEMORY[0x1E694F1C0](v72, -1, -1);
            }

            sub_1E618A9F0(v65, type metadata accessor for RouteDestination);
            goto LABEL_26;
          }
        }

        v76 = sub_1E65E3B48();
        v77 = sub_1E65E6338();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_1E5DE9000, v76, v77, "[ToastDelegate] Skipping detail page navigation for coalesced toast", v78, 2u);
          MEMORY[0x1E694F1C0](v78, -1, -1);
        }

LABEL_26:
        (*(v101 + 8))(v17, v14);
      }
    }
  }
}

uint64_t sub_1E6189F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E6189F98, 0, 0);
}

uint64_t sub_1E6189F98()
{
  v1 = (*(v0 + 128) + OBJC_IVAR____TtC10Blackbeard13ToastDelegate_itemRoutingContext);
  *(v0 + 160) = *v1;
  *(v0 + 168) = v1[1];
  *(v0 + 96) = *(v0 + 136);
  sub_1E65E6058();
  *(v0 + 176) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E618A054, v3, v2);
}

uint64_t sub_1E618A054()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  v3(v0 + 12);

  return MEMORY[0x1EEE6DFA0](sub_1E618A0D0, 0, 0);
}

uint64_t sub_1E618A0D0()
{
  v20 = v0;
  if (*(v0 + 80))
  {
    sub_1E5DF599C((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    sub_1E600F5B0((v0 + 200));
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = sub_1E618A354;
    v4 = *(v0 + 152);

    return RoutingContext.appendDestination(_:priority:)(v4, (v0 + 200), v2, v1);
  }

  else
  {
    sub_1E601B260(v0 + 56);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = sub_1E65E3B68();
    __swift_project_value_buffer(v8, qword_1EE2EA2A0);
    sub_1E5E05374(v7, v6);
    v9 = sub_1E65E3B48();
    v10 = sub_1E65E6338();
    sub_1E5E0476C(v7, v6);
    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 136);
      v11 = *(v0 + 144);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      *(v0 + 112) = v12;
      *(v0 + 120) = v11;
      sub_1E5E05374(v12, v11);
      v15 = sub_1E65E5CE8();
      v17 = sub_1E5DFD4B0(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1E5DE9000, v9, v10, "[ToastDelegate] No routing context for root item %s, skipping detail page presentation", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E694F1C0](v14, -1, -1);
      MEMORY[0x1E694F1C0](v13, -1, -1);
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1E618A354()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1E618A468;
  }

  else
  {
    v3 = sub_1E6115FB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E618A468()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[24];

  return v1();
}

uint64_t sub_1E618A4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for AppAction();
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E618A560, 0, 0);
}

uint64_t sub_1E618A560()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[5] = *(v0[2] + OBJC_IVAR____TtC10Blackbeard13ToastDelegate_composer);
  *v1 = xmmword_1E65EADF0;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E618A620, v4, v3);
}

uint64_t sub_1E618A620()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  sub_1E65E4EE8();
  sub_1E618A9F0(v3, type metadata accessor for AppAction);

  v4 = v0[1];

  return v4();
}