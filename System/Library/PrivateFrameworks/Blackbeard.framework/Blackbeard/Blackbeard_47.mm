uint64_t sub_1E63B12FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = *a1;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v13[0] = a2;
  v13[1] = a3;
  sub_1E65E4D78();
  return (*(v7 + 8))(v10, v6);
}

BOOL sub_1E63B141C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - v3;
  v5 = swift_projectBox();
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  sub_1E5FED46C(&qword_1ED078CA0, &qword_1ED076DE0, &qword_1E65F84B0);
  v6 = sub_1E65E5B98();
  (*(v1 + 8))(v4, v0);
  return (v6 & 1) == 0;
}

uint64_t sub_1E63B1584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v3 = swift_projectBox();
  swift_beginAccess();
  return (*(*(v2 - 8) + 24))(v3, a1, v2);
}

uint64_t sub_1E63B1620(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v47 = a3;
  v48 = a4;
  v42 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C88, &qword_1E65FF600);
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v40 - v9;
  v10 = type metadata accessor for AppComposer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65E3018();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v46 = sub_1E65E3138();
  v50 = *(v46 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v49 = *a1;
  sub_1E5E1D5BC(a1, v13, type metadata accessor for AppComposer);
  v18 = *(v11 + 80);
  v43 = ((v18 + 16) & ~v18) + v12;
  v44 = (v18 + 16) & ~v18;
  v19 = swift_allocObject();
  v41 = type metadata accessor for AppComposer;
  sub_1E63B8F5C(v13, v19 + ((v18 + 16) & ~v18), type metadata accessor for AppComposer);
  sub_1E5DF650C(v42, v54);
  v20 = swift_allocObject();
  sub_1E5DF599C(v54, v20 + 16);
  sub_1E65E3008();
  sub_1E65E3128();
  v21 = v40;
  sub_1E5E1D5BC(v40, v13, type metadata accessor for AppComposer);
  v22 = swift_allocObject();
  v23 = v48;
  *(v22 + 16) = v47;
  *(v22 + 24) = v23;
  sub_1E63B8F5C(v13, v22 + ((v18 + 32) & ~v18), type metadata accessor for AppComposer);
  type metadata accessor for AppFeature();
  sub_1E63BAB8C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v47 = sub_1E63BAB8C(&qword_1ED078C90, MEMORY[0x1E699EB28]);

  v24 = v46;
  sub_1E65E4DE8();
  sub_1E5E1D5BC(v21, v13, type metadata accessor for AppComposer);
  v25 = *a5;
  v26 = a5[3];
  v27 = a5[5];
  v28 = a5[7];
  v29 = (v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = a5[9];
  v31 = swift_allocObject();
  sub_1E63B8F5C(v13, v31 + v44, v41);
  v32 = (v31 + v29);
  v33 = *(a5 + 3);
  v32[2] = *(a5 + 2);
  v32[3] = v33;
  v32[4] = *(a5 + 4);
  v34 = *(a5 + 1);
  *v32 = *a5;
  v32[1] = v34;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E63BA8FC;
  *(v35 + 24) = v31;

  v36 = v45;
  v37 = v53;
  v38 = sub_1E65E4F08();

  (*(v51 + 8))(v37, v52);
  (*(v50 + 8))(v36, v24);
  return v38;
}

uint64_t sub_1E63B1BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E63B1BEC, 0, 0);
}

uint64_t sub_1E63B1BEC()
{
  v1 = v0[4];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63B1C98, v3, v2);
}

uint64_t sub_1E63B1C98()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];

  sub_1E64D7F80(v4, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E63B1D34()
{
  v0[3] = objc_opt_self();
  v0[4] = sub_1E65E6058();
  v0[5] = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63B1DDC, v2, v1);
}

uint64_t sub_1E63B1DDC()
{
  v1 = v0[5];
  v2 = v0[3];

  v0[6] = [v2 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E63B1E64, 0, 0);
}

uint64_t sub_1E63B1E64()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[7] = sub_1E65D7448();
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E63BAB8C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey);
  v0[8] = sub_1E65E5AF8();

  v0[9] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63B1F7C, v4, v3);
}

uint64_t sub_1E63B1F7C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  [v4 openURL:v3 options:v2 completionHandler:0];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E63B2014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1E65D74E8();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_1E65D70A8();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B730, &qword_1E65FCA88) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = sub_1E65D7158();
  v3[13] = v12;
  v13 = *(v12 - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63B2200, 0, 0);
}

uint64_t sub_1E63B2200()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[4];
  sub_1E65D70E8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[12];
    v6 = &qword_1ED07B730;
    v7 = &qword_1E65FCA88;
LABEL_5:
    sub_1E5DFE50C(v5, v6, v7);
    v22 = v0[15];
    v23 = v0[11];
    v24 = v0[12];
    v25 = v0[8];
    v26 = v0[5];

    v27 = v0[1];

    return v27();
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = v0[7];
  v31 = v0[6];
  v12 = v0[5];
  v14 = v0[2];
  v13 = v0[3];
  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  sub_1E65D7078();
  sub_1E65D70C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C98, &qword_1E65FF640);
  v15 = *(v9 + 72);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E65EA670;
  (*(v9 + 16))(v17 + v16, v8, v10);
  sub_1E5FAA22C(v17);
  sub_1E65D70D8();
  sub_1E65D70F8();
  if ((*(v11 + 48))(v12, 1, v31) == 1)
  {
    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[13];
    v21 = v0[5];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v19 + 8))(v18, v20);
    v6 = &qword_1ED072340;
    v7 = &qword_1E65EA410;
    v5 = v21;
    goto LABEL_5;
  }

  (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
  v0[16] = objc_opt_self();
  v0[17] = sub_1E65E6058();
  v0[18] = sub_1E65E6048();
  v30 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63B2508, v30, v29);
}

uint64_t sub_1E63B2508()
{
  v1 = v0[18];
  v2 = v0[16];

  v0[19] = [v2 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E63B2590, 0, 0);
}

uint64_t sub_1E63B2590()
{
  v1 = v0[17];
  v2 = v0[8];
  v0[20] = sub_1E65D7448();
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E63BAB8C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey);
  v0[21] = sub_1E65E5AF8();

  v0[22] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63B26A8, v4, v3);
}

uint64_t sub_1E63B26A8()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];

  [v4 openURL:v3 options:v2 completionHandler:0];

  return MEMORY[0x1EEE6DFA0](sub_1E63B2744, 0, 0);
}

uint64_t sub_1E63B2744()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[8];
  v11 = v0[5];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E63B2838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for RouteSource(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for RouteDestination();
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63B2900, 0, 0);
}

uint64_t sub_1E63B2900()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v9 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  swift_storeEnumTagMultiPayload();
  *v1 = v7;
  v1[1] = v6;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D5BC(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);

  sub_1E63BAB2C(v3, type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 88));
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_1E63B2A7C;
  v11 = *(v0 + 64);

  return RoutingContext.appendDestination(_:priority:)(v11, (v0 + 88), v9, v8);
}

uint64_t sub_1E63B2A7C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  sub_1E63BAB2C(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6354FAC, 0, 0);
  }

  else
  {
    v5 = v4[8];
    v6 = v4[6];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1E63B2C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a4;
  v71 = a2;
  v72 = a3;
  v70 = a5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  v6 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754F0, &qword_1E65F1B08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v59 - v13;
  v14 = sub_1E65E30F8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  v17 = *(*(v59 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v59);
  v60 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v59 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v59 - v28;
  v30 = sub_1E65D7848();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AppState();
  v36 = v35[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v61 = a1;
  sub_1E65E4C98();
  sub_1E5E1F544(v29);
  sub_1E5DFE50C(v25, &qword_1ED071F78, &unk_1E65EA3F0);
  v37 = *(v31 + 48);
  if (v37(v29, 1, v30) == 1)
  {
    sub_1E65D77C8();
    if (v37(v29, 1, v30) != 1)
    {
      sub_1E5DFE50C(v29, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v31 + 32))(v34, v29, v30);
  }

  v38 = v35[50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v39 = v61;
  sub_1E65E4C98();
  v40 = v21;
  v41 = v60;
  sub_1E5FAB460(v40, v60, &qword_1ED072808, &qword_1E65EBE00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1E5DFE50C(v41, &qword_1ED072808, &qword_1E65EBE00);
        goto LABEL_15;
      }

      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072820, &qword_1E65EBE18) + 48);
      v44 = *v41;
      v45 = sub_1E65D76A8();
      (*(*(v45 - 8) + 8))(&v41[v43], v45);
    }

    else
    {
      v46 = *v41;
    }

    v47 = sub_1E65D8D58();
    v49 = v48;
    if (v47 == sub_1E65D8D58() && v49 == v50)
    {
    }

    else
    {
      sub_1E65E6C18();
    }
  }

LABEL_15:
  v51 = v39 + v35[6];
  sub_1E6079494(v65);
  v52 = v35[77];
  v73 = v71;
  v74 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v53 = v62;
  sub_1E65E4D78();
  v54 = v68;
  v55 = v64;
  sub_1E65E4C98();
  v56 = (*(v63 + 8))(v53, v55);
  MEMORY[0x1EEE9AC00](v56);
  v57 = v67;
  *(&v59 - 2) = v39;
  *(&v59 - 1) = v57;
  sub_1E65E2FB8();
  sub_1E63BAB8C(qword_1EE2D6090, MEMORY[0x1E699EAD0]);
  sub_1E65E4DA8();
  sub_1E5DFE50C(v54, &qword_1ED0753C0, &unk_1E6606290);

  return sub_1E65E30B8();
}

uint64_t sub_1E63B32F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v38 = a3;
  v44[6] = a2;
  v42 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v38 - v10;
  v41 = sub_1E65D9AC8();
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v38 - v20;
  v22 = sub_1E65D7848();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AppState();
  v28 = *(v27 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v21);
  sub_1E5DFE50C(v17, &qword_1ED071F78, &unk_1E65EA3F0);
  v29 = *(v23 + 48);
  if (v29(v21, 1, v22) == 1)
  {
    sub_1E65D77C8();
    if (v29(v21, 1, v22) != 1)
    {
      sub_1E5DFE50C(v21, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v23 + 32))(v26, v21, v22);
  }

  v30 = v38 + *(type metadata accessor for AppComposer() + 20);
  v31 = type metadata accessor for AppEnvironment();
  sub_1E5DF650C(v30 + *(v31 + 136), v44);
  v32 = *(v27 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  sub_1E65E4C98();
  v33 = v40;
  sub_1E60EEE88(v40);
  sub_1E5DFE50C(v7, &qword_1ED072E78, &qword_1E65ECC50);
  v34 = *(v11 + 48);
  v35 = v41;
  if (v34(v33, 1, v41) == 1)
  {
    v36 = v39;
    MEMORY[0x1E6941490]();
    if (v34(v33, 1, v35) != 1)
    {
      sub_1E5DFE50C(v33, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    v36 = v39;
    (*(v11 + 32))(v39, v33, v35);
  }

  sub_1E60E7F48(v26, v44, v42);
  (*(v11 + 8))(v36, v35);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return (*(v23 + 8))(v26, v22);
}

uint64_t sub_1E63B37B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = a1;
  v34 = a2;
  v5 = sub_1E65E30C8();
  v27 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E30D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - v14;
  v16 = sub_1E65E60A8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v11, v33, v8);
  v17 = a4[3];
  v29 = *a4;
  v30 = v17;
  v18 = a4[7];
  v31 = a4[5];
  v32 = v18;
  v33 = a4[9];
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v5);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v6 + 80) + v20 + 80) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v9 + 32))(v22 + v19, v11, v8);
  v23 = (v22 + v20);
  v24 = *(a4 + 3);
  v23[2] = *(a4 + 2);
  v23[3] = v24;
  v23[4] = *(a4 + 4);
  v25 = *(a4 + 1);
  *v23 = *a4;
  v23[1] = v25;
  (*(v6 + 32))(v22 + v21, v28, v27);
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v15, &unk_1E65FF638, v22);
}

uint64_t sub_1E63B3AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  sub_1E631B3D0(a2, a3, a4, a5, v14);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  sub_1E5FEE4C8(v14);
  v17 = *(v10 + 8);
  v17(v14, v9);
  sub_1E5FEE4C8(v16);
  return (v17)(v16, v9);
}

uint64_t sub_1E63B3C74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *, uint64_t)@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v406 = a6;
  v415 = a5;
  v399 = a4;
  v410 = a3;
  v408 = a2;
  v389 = a7;
  v8 = sub_1E65E4258();
  v348 = *(v8 - 8);
  v349 = v8;
  v9 = *(v348 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v347 = &v323 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C20, &qword_1E65FF558);
  v354 = *(v11 - 8);
  v355 = v11;
  v12 = *(v354 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v353 = &v323 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C28, &qword_1E65FF560);
  v356 = *(v14 - 8);
  v357 = v14;
  v15 = *(v356 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v394 = &v323 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v393 = &v323 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C30, &qword_1E65FF568);
  v345 = *(v19 - 8);
  v346 = v19;
  v20 = *(v345 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v344 = &v323 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C38, &qword_1E65FF570);
  v351 = *(v22 - 8);
  v352 = v22;
  v23 = *(v351 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v350 = &v323 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v403 = &v323 - v26;
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077990, &unk_1E65FA680);
  v27 = *(*(v386 - 8) + 64);
  MEMORY[0x1EEE9AC00](v386);
  v404 = (&v323 - v28);
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C40, &qword_1E65FF578);
  v29 = *(*(v387 - 8) + 64);
  MEMORY[0x1EEE9AC00](v387);
  v388 = &v323 - v30;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C48, &qword_1E65FF580);
  v31 = *(*(v382 - 8) + 64);
  MEMORY[0x1EEE9AC00](v382);
  v383 = &v323 - v32;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077980, &qword_1E65F9720);
  v33 = *(*(v384 - 8) + 64);
  MEMORY[0x1EEE9AC00](v384);
  v385 = &v323 - v34;
  v35 = sub_1E65E4018();
  v374 = *(v35 - 8);
  v375 = v35;
  v36 = *(v374 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v373 = &v323 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0779B0, &qword_1E65ED910);
  v377 = *(v379 - 8);
  v38 = *(v377 + 64);
  MEMORY[0x1EEE9AC00](v379);
  v376 = &v323 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0780C0, &qword_1E65FB518);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v341 = &v323 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v329 = &v323 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DD0, &unk_1E65FAB50);
  v371 = *(v45 - 8);
  v372 = v45;
  v46 = *(v371 + 64);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v342 = (&v323 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v47);
  v323 = (&v323 - v49);
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C50, &qword_1E65FF588);
  v380 = *(v395 - 8);
  v50 = *(v380 + 64);
  v51 = MEMORY[0x1EEE9AC00](v395);
  v343 = &v323 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v327 = &v323 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v328 = &v323 - v55;
  v409 = sub_1E65D76F8();
  v411 = *(v409 - 8);
  v56 = v411[8];
  v57 = MEMORY[0x1EEE9AC00](v409);
  v391 = &v323 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = v58;
  MEMORY[0x1EEE9AC00](v57);
  v401 = &v323 - v59;
  v60 = type metadata accessor for AppComposer();
  v61 = *(v60 - 8);
  v361 = v60 - 8;
  v362 = v61;
  v62 = *(v61 + 64);
  v63 = MEMORY[0x1EEE9AC00](v60 - 8);
  v390 = &v323 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v332 = &v323 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v392 = (&v323 - v68);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v365 = &v323 - v70;
  v363 = v71;
  MEMORY[0x1EEE9AC00](v69);
  v364 = &v323 - v72;
  v414 = sub_1E65DEC18();
  v413 = *(v414 - 1);
  v73 = *(v413 + 64);
  v74 = MEMORY[0x1EEE9AC00](v414);
  v402 = &v323 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v331 = &v323 - v77;
  v370 = v78;
  MEMORY[0x1EEE9AC00](v76);
  v407 = &v323 - v79;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v366 = *(v360 - 1);
  v80 = *(v366 + 64);
  v81 = MEMORY[0x1EEE9AC00](v360);
  v400 = (&v323 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = MEMORY[0x1EEE9AC00](v81);
  v330 = &v323 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v397 = &v323 - v86;
  v367 = v87;
  MEMORY[0x1EEE9AC00](v85);
  v398 = (&v323 - v88);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B8, &qword_1E65ED918);
  v339 = *(v325 - 8);
  v89 = v339[8];
  v90 = MEMORY[0x1EEE9AC00](v325);
  v338 = &v323 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v368 = &v323 - v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077168, &unk_1E65FA6A0);
  v94 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93 - 8);
  v337 = (&v323 - v95);
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077158, &unk_1E65FA690);
  v96 = *(*(v340 - 8) + 64);
  MEMORY[0x1EEE9AC00](v340);
  v396 = (&v323 - v97);
  v98 = sub_1E65DE558();
  v334 = *(v98 - 8);
  v335 = v98;
  v99 = *(v334 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v333 = &v323 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0779A0, &qword_1E65F9728);
  v101 = *(*(v378 - 8) + 64);
  MEMORY[0x1EEE9AC00](v378);
  v326 = &v323 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077960, &unk_1E65FA670);
  v104 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103 - 8);
  v381 = &v323 - v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v358 = *(v106 - 8);
  v359 = v106;
  v107 = *(v358 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v323 - v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v111 = *(v110 - 8);
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v114 = &v323 - v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077DC8, &qword_1E65FAB48);
  v116 = *(*(v115 - 8) + 64);
  v117 = MEMORY[0x1EEE9AC00](v115 - 8);
  v336 = &v323 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x1EEE9AC00](v117);
  v324 = &v323 - v120;
  MEMORY[0x1EEE9AC00](v119);
  v122 = (&v323 - v121);
  v123 = *a1;
  swift_getKeyPath();
  sub_1E65E4EC8();
  v124 = v408;

  v419 = v124;
  v125 = v410;
  v420 = v410;

  sub_1E65E4D78();
  v126 = v114;
  v127 = v125;
  (*(v111 + 8))(v126, v110);

  v405 = v122;
  sub_1E64878E4(v122);
  (*(v358 + 8))(v109, v359);
  v128 = *(v361 + 28);
  v412 = a1;
  v129 = *(a1 + v128 + 8);
  if (v129 < 2)
  {
    (*(v413 + 104))(v402, *MEMORY[0x1E699CD30], v414);
    v130 = sub_1E65E3FF8();
    v131 = v404;
    *v404 = v130;
    v131[1] = 0x4024000000000000;
    *(v131 + 16) = 0;
    v132 = v400;
    *v400 = v124;
    v132[1] = v125;
    swift_storeEnumTagMultiPayload();

    if (v129)
    {
      v361 = sub_1E5F9B258(&unk_1F5FA7F58);
    }

    else
    {
      v188 = sub_1E65DE608();
      v361 = sub_1E600A684(v188);
    }

    *(&v430 + 1) = sub_1E65DEAA8();
    v431 = sub_1E63BAB8C(&qword_1EE2D6850, MEMORY[0x1E699CCD8]);
    __swift_allocate_boxed_opaque_existential_1(&v429);
    sub_1E65DEA98();
    v396 = type metadata accessor for AppComposer;
    v189 = v412;
    v190 = v364;
    sub_1E5E1D5BC(v412, v364, type metadata accessor for AppComposer);
    sub_1E5DF650C(v415, v428);
    v191 = v406;
    v192 = v406[3];
    v340 = *v406;
    v341 = v192;
    v193 = v406[7];
    v358 = v406[5];
    v359 = v193;
    v360 = v406[9];
    v194 = *(v362 + 80);
    v339 = (v363 + ((v194 + 16) & ~v194));
    v195 = (v194 + 16) & ~v194;
    v196 = v194 | 7;
    v197 = (v339 + 7) & 0xFFFFFFFFFFFFFFF8;
    v333 = v197;
    v198 = (v197 + 47) & 0xFFFFFFFFFFFFFFF8;
    v199 = swift_allocObject();
    v362 = v199;
    v368 = v195;
    v363 = type metadata accessor for AppComposer;
    sub_1E63B8F5C(v190, v199 + v195, type metadata accessor for AppComposer);
    sub_1E5DF599C(v428, v199 + v197);
    v200 = (v199 + v198);
    v201 = v191[3];
    v200[2] = v191[2];
    v200[3] = v201;
    v200[4] = v191[4];
    v202 = v191[1];
    *v200 = *v191;
    v200[1] = v202;
    v203 = v365;
    v204 = v396;
    sub_1E5E1D5BC(v189, v365, v396);
    sub_1E5DF650C(v415, v427);
    v334 = v196;
    v205 = swift_allocObject();
    v364 = v205;
    sub_1E63B8F5C(v203, v205 + v195, type metadata accessor for AppComposer);
    v206 = v333;
    sub_1E5DF599C(v427, &v333[v205]);
    v207 = (v205 + v198);
    v208 = v191[3];
    v207[2] = v191[2];
    v207[3] = v208;
    v207[4] = v191[4];
    v209 = v191[1];
    *v207 = *v191;
    v207[1] = v209;
    v210 = v189;
    v211 = v392;
    sub_1E5E1D5BC(v210, v392, v204);
    v212 = v411;
    v213 = v411[2];
    v335 = v411 + 2;
    v337 = v213;
    v214 = v409;
    v213(v401, v399, v409);
    sub_1E5DF650C(v415, v425);
    v215 = &v206[*(v212 + 80) + 16] & ~*(v212 + 80);
    v338 = *(v212 + 80);
    v365 = v369 + 7;
    v216 = (v369 + 7 + v215) & 0xFFFFFFFFFFFFFFF8;
    v217 = swift_allocObject();
    v218 = v368;
    v219 = v211;
    v220 = v363;
    sub_1E63B8F5C(v219, &v368[v217], v363);
    v221 = &v206[v217];
    v222 = v410;
    *v221 = v408;
    v221[1] = v222;
    v223 = v411[4];
    v411 += 4;
    v392 = v223;
    v369 = v217;
    (v223)(v217 + v215, v401, v214);
    sub_1E5DF599C(v425, v217 + v216);
    v224 = (v217 + ((v216 + 47) & 0xFFFFFFFFFFFFFFF8));
    v225 = v191[3];
    v224[2] = v191[2];
    v224[3] = v225;
    v224[4] = v191[4];
    v226 = v191[1];
    *v224 = *v191;
    v224[1] = v226;
    v227 = v412;
    v228 = v332;
    sub_1E5E1D5BC(v412, v332, v396);
    v229 = v400;
    v230 = v398;
    sub_1E5DFD1CC(v400, v398, &qword_1ED0736B0, &unk_1E65F8480);
    v231 = *(v366 + 80);
    v232 = (v339 + v231) & ~v231;
    v339 = (v232 + v367);
    v366 = v232;
    v367 = v334 | v231;
    v233 = swift_allocObject();
    v401 = v233;
    sub_1E63B8F5C(v228, &v218[v233], v220);
    sub_1E5FAB460(v230, v233 + v232, &qword_1ED0736B0, &unk_1E65F8480);
    sub_1E5E1D5BC(v227, v390, v396);
    sub_1E5DFD1CC(v229, v397, &qword_1ED0736B0, &unk_1E65F8480);
    v337(v391, v399, v409);
    sub_1E5DF650C(v415, v418);
    v234 = v413;
    (*(v413 + 16))(v407, v402, v414);
    sub_1E5DFD1CC(&v429, v416, &qword_1ED0737D8, &qword_1E65EDA40);
    v235 = (v339 + 7) & 0xFFFFFFFFFFFFFFF8;
    v236 = (v338 + v235 + 8) & ~v338;
    v237 = (v365 + v236) & 0xFFFFFFFFFFFFFFF8;
    v238 = (v237 + 47) & 0xFFFFFFFFFFFFFFF8;
    v239 = (v238 + *(v234 + 80) + 80) & ~*(v234 + 80);
    v240 = (v370 + v239 + 7) & 0xFFFFFFFFFFFFFFF8;
    v241 = swift_allocObject();
    sub_1E63B8F5C(v390, &v368[v241], v363);
    sub_1E5FAB460(v397, v241 + v366, &qword_1ED0736B0, &unk_1E65F8480);
    *(v241 + v235) = v361;
    (v392)(v241 + v236, v391, v409);
    sub_1E5DF599C(v418, v241 + v237);
    v242 = (v241 + v238);
    v243 = v191[3];
    v242[2] = v191[2];
    v242[3] = v243;
    v242[4] = v191[4];
    v245 = *v191;
    v244 = v191[1];
    v246 = v410;
    *v242 = v245;
    v242[1] = v244;
    (*(v234 + 32))(v241 + v239, v407, v414);
    v247 = v241 + v240;
    v248 = v416[1];
    *v247 = v416[0];
    *(v247 + 16) = v248;
    *(v247 + 32) = v417;
    v249 = swift_allocObject();
    v250 = v369;
    *(v249 + 16) = sub_1E63B93D4;
    *(v249 + 24) = v250;
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
    v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737E0, &qword_1E65EDA48);
    v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C60, &qword_1E65FF5E8);
    sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00);
    v251 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737E8, &qword_1E65EDA50);
    v252 = sub_1E65DE748();
    v253 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737F0, &qword_1E65EDA58);
    v254 = sub_1E63BAB8C(&qword_1EE2D6890, MEMORY[0x1E699CC00]);
    v255 = sub_1E6048B5C();
    v419 = v252;
    v420 = MEMORY[0x1E6981CD8];
    v421 = v253;
    v422 = v254;
    v423 = MEMORY[0x1E6981CD0];
    v424 = v255;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v419 = v251;
    v420 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v257 = sub_1E65DEB48();
    v258 = sub_1E63BAB8C(&qword_1ED078050, MEMORY[0x1E699CCF0]);
    v419 = v257;
    v420 = v258;
    swift_getOpaqueTypeConformance2();
    v259 = v344;
    sub_1E65DE9A8();
    sub_1E5DFE50C(v400, &qword_1ED0736B0, &unk_1E65F8480);
    sub_1E5DFE50C(&v429, &qword_1ED0737D8, &qword_1E65EDA40);
    v260 = v373;
    sub_1E65E4008();
    sub_1E63BAB8C(&qword_1EE2D4D98, MEMORY[0x1E697C5D0]);
    v261 = v375;
    v262 = v376;
    sub_1E65E3C08();
    (*(v374 + 8))(v260, v261);
    sub_1E5FED46C(&qword_1ED078C68, &qword_1ED078C30, &qword_1E65FF568);
    sub_1E5FED46C(&qword_1EE2D6870, &unk_1ED0779B0, &qword_1E65ED910);
    v263 = v346;
    v264 = v379;
    sub_1E65E47D8();
    (*(v377 + 8))(v262, v264);
    (*(v345 + 8))(v259, v263);
    v265 = v336;
    sub_1E5DFD1CC(v405, v336, &qword_1ED077DC8, &qword_1E65FAB48);
    v266 = v372;
    v267 = *(v371 + 48);
    if (v267(v265, 1, v372) == 1)
    {
      v268 = v342;
      *v342 = v408;
      v268[1] = v246;
      swift_storeEnumTagMultiPayload();
      v269 = v267(v265, 1, v266);

      if (v269 != 1)
      {
        sub_1E5DFE50C(v265, &qword_1ED077DC8, &qword_1E65FAB48);
      }
    }

    else
    {
      v268 = v342;
      sub_1E5FAB460(v265, v342, &unk_1ED077DD0, &unk_1E65FAB50);
    }

    v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C70, &qword_1E65FF5F0);
    v411 = (v404 + *(v270 + 44));
    v271 = v343;
    sub_1E63A7ED8(v268, v415, v406, v343);
    sub_1E5DFE50C(v268, &unk_1ED077DD0, &unk_1E65FAB50);
    v272 = v347;
    sub_1E65E4248();
    sub_1E63BAB8C(&qword_1ED073B40, MEMORY[0x1E697C848]);
    v273 = v353;
    v274 = v349;
    sub_1E65E3C08();
    (*(v348 + 8))(v272, v274);
    v275 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078AC0, &qword_1E65FF018);
    v276 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078AB8, &qword_1E65FF010);
    v277 = sub_1E5FED46C(&qword_1ED078AC8, &qword_1ED078AB8, &qword_1E65FF010);
    v278 = sub_1E62F877C();
    v419 = v276;
    v420 = &type metadata for WorkoutDetailActionStyle;
    v421 = v277;
    v422 = v278;
    v279 = swift_getOpaqueTypeConformance2();
    v419 = v275;
    v420 = v279;
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1ED078C78, &qword_1ED078C20, &qword_1E65FF558);
    v280 = v393;
    v281 = v395;
    v282 = v355;
    sub_1E65E47D8();
    (*(v354 + 8))(v273, v282);
    (*(v380 + 8))(v271, v281);
    v284 = v350;
    v283 = v351;
    v285 = *(v351 + 16);
    v286 = v352;
    v285(v350, v403, v352);
    v287 = v356;
    v415 = *(v356 + 16);
    v288 = v280;
    v289 = v357;
    v415(v394, v288, v357);
    v290 = v411;
    v285(v411, v284, v286);
    v291 = v290 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C80, &qword_1E65FF5F8) + 48);
    v292 = v394;
    v415(v291, v394, v289);
    v293 = *(v287 + 8);
    v293(v393, v289);
    v294 = *(v283 + 8);
    v294(v403, v286);
    v293(v292, v289);
    v294(v284, v286);
    v295 = v404;
    sub_1E5DFD1CC(v404, v383, &unk_1ED077990, &unk_1E65FA680);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1ED077148, &unk_1ED077990, &unk_1E65FA680);
    sub_1E626F7A8();
    v296 = v385;
    sub_1E65E4138();
    sub_1E5DFD1CC(v296, v388, &unk_1ED077980, &qword_1E65F9720);
    swift_storeEnumTagMultiPayload();
    sub_1E626F6F0();
    v297 = v381;
    sub_1E65E4138();
    sub_1E5DFE50C(v296, &unk_1ED077980, &qword_1E65F9720);
    sub_1E5DFE50C(v295, &unk_1ED077990, &unk_1E65FA680);
    (*(v413 + 8))(v402, v414);
LABEL_16:
    v321 = v405;
    sub_1E5F38D14(v297, v389);
    return sub_1E5DFE50C(v321, &qword_1ED077DC8, &qword_1E65FAB48);
  }

  if (v129 == 3)
  {
    v133 = v124;
    v134 = v333;
    sub_1E65DE548();
    v135 = v337;
    (*(v334 + 16))(v337, v134, v335);
    sub_1E5DFD1CC(v135, v396, &qword_1ED077168, &unk_1E65FA6A0);
    v136 = v398;
    *v398 = v133;
    v136[1] = v127;
    swift_storeEnumTagMultiPayload();

    v361 = sub_1E5F9B258(&unk_1F5FA7F58);
    (*(v413 + 104))(v407, *MEMORY[0x1E699CD30], v414);
    v431 = 0;
    v429 = 0u;
    v430 = 0u;
    v360 = type metadata accessor for AppComposer;
    v137 = v364;
    sub_1E5E1D5BC(v412, v364, type metadata accessor for AppComposer);
    sub_1E5DF650C(v415, v428);
    v138 = v406;
    v390 = *v406;
    v391 = v406[3];
    v393 = v406[5];
    v394 = v406[7];
    v400 = v406[9];
    v139 = *(v362 + 80);
    v140 = ((v139 + 16) & ~v139);
    v141 = v363 + v140;
    v404 = v140;
    v402 = v139 | 7;
    v142 = (v363 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
    v143 = swift_allocObject();
    v403 = v143;
    v363 = type metadata accessor for AppComposer;
    sub_1E63B8F5C(v137, v140 + v143, type metadata accessor for AppComposer);
    sub_1E5DF599C(v428, v143 + v142);
    v144 = (v143 + ((v142 + 47) & 0xFFFFFFFFFFFFFFF8));
    v145 = v138[3];
    v144[2] = v138[2];
    v144[3] = v145;
    v144[4] = v138[4];
    v146 = v138[1];
    *v144 = *v138;
    v144[1] = v146;
    v147 = v412;
    v148 = v365;
    v149 = v360;
    sub_1E5E1D5BC(v412, v365, v360);
    v150 = v398;
    v151 = v397;
    sub_1E5DFD1CC(v398, v397, &qword_1ED0736B0, &unk_1E65F8480);
    v152 = *(v366 + 80);
    v153 = &v141[v152] & ~v152;
    v364 = v153 + v367;
    v366 = v153;
    v367 = v402 | v152;
    v154 = swift_allocObject();
    v402 = v154;
    sub_1E63B8F5C(v148, v404 + v154, type metadata accessor for AppComposer);
    sub_1E5FAB460(v151, v154 + v153, &qword_1ED0736B0, &unk_1E65F8480);
    sub_1E5E1D5BC(v147, v392, v149);
    sub_1E5DFD1CC(v150, v330, &qword_1ED0736B0, &unk_1E65F8480);
    v155 = v411;
    (v411[2])(v401, v399, v409);
    sub_1E5DF650C(v415, v427);
    v156 = v413;
    (*(v413 + 16))(v331, v407, v414);
    sub_1E5DFD1CC(&v429, v425, &qword_1ED0737D8, &qword_1E65EDA40);
    v157 = (v364 + 7) & 0xFFFFFFFFFFFFFFF8;
    v158 = (v157 + *(v155 + 80) + 8) & ~*(v155 + 80);
    v159 = (v369 + v158 + 7) & 0xFFFFFFFFFFFFFFF8;
    v160 = (v159 + 47) & 0xFFFFFFFFFFFFFFF8;
    v161 = (*(v156 + 80) + v160 + 80) & ~*(v156 + 80);
    v162 = (v370 + v161 + 7) & 0xFFFFFFFFFFFFFFF8;
    v163 = swift_allocObject();
    sub_1E63B8F5C(v392, v404 + v163, v363);
    sub_1E5FAB460(v330, v163 + v366, &qword_1ED0736B0, &unk_1E65F8480);
    *(v163 + v157) = v361;
    (v155[4])(v163 + v158, v401, v409);
    sub_1E5DF599C(v427, v163 + v159);
    v164 = (v163 + v160);
    v165 = v138[3];
    v164[2] = v138[2];
    v164[3] = v165;
    v164[4] = v138[4];
    v166 = v138[1];
    *v164 = *v138;
    v164[1] = v166;
    v167 = v414;
    (*(v413 + 32))(v163 + v161, v331, v414);
    v168 = v163 + v162;
    v169 = v425[1];
    *v168 = v425[0];
    *(v168 + 16) = v169;
    *(v168 + 32) = v426;
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737E0, &qword_1E65EDA48);
    sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00);
    v170 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737E8, &qword_1E65EDA50);
    v171 = sub_1E65DE748();
    v172 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737F0, &qword_1E65EDA58);
    v173 = sub_1E63BAB8C(&qword_1EE2D6890, MEMORY[0x1E699CC00]);
    v174 = sub_1E6048B5C();
    v419 = v171;
    v420 = MEMORY[0x1E6981CD8];
    v421 = v172;
    v422 = v173;
    v423 = MEMORY[0x1E6981CD0];
    v424 = v174;
    v175 = swift_getOpaqueTypeConformance2();
    v419 = v170;
    v420 = v175;
    swift_getOpaqueTypeConformance2();
    sub_1E65DE9A8();
    sub_1E5DFE50C(&v429, &qword_1ED0737D8, &qword_1E65EDA40);
    (*(v413 + 8))(v407, v167);
    sub_1E5DFE50C(v398, &qword_1ED0736B0, &unk_1E65F8480);
    v176 = v324;
    sub_1E5DFD1CC(v405, v324, &qword_1ED077DC8, &qword_1E65FAB48);
    v177 = v372;
    v178 = *(v371 + 48);
    if (v178(v176, 1, v372) == 1)
    {
      v179 = v323;
      v180 = v408;
      v181 = v410;
      *v323 = v408;
      v179[1] = v181;
      swift_storeEnumTagMultiPayload();
      v182 = v178(v176, 1, v177);

      v183 = v176;
      v184 = v181;
      v185 = v180;
      v187 = v328;
      v186 = v329;
      if (v182 != 1)
      {
        sub_1E5DFE50C(v183, &qword_1ED077DC8, &qword_1E65FAB48);
      }
    }

    else
    {
      v179 = v323;
      sub_1E5FAB460(v176, v323, &unk_1ED077DD0, &unk_1E65FAB50);
      v184 = v410;
      v185 = v408;
      v187 = v328;
      v186 = v329;
    }

    v414 = v396 + *(v340 + 44);
    v298 = v406;
    sub_1E63A7ED8(v179, v415, v406, v187);
    sub_1E5DFE50C(v179, &unk_1ED077DD0, &unk_1E65FAB50);
    sub_1E62E9C34(v185, v184, v298, v186);
    v299 = v338;
    v300 = v339[2];
    v301 = v325;
    v300(v338, v368, v325);
    v302 = v380;
    v303 = *(v380 + 16);
    v304 = v327;
    v303();
    sub_1E5DFD1CC(v186, v341, &qword_1ED0780C0, &qword_1E65FB518);
    v305 = v414;
    v300(v414, v299, v301);
    v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C58, &qword_1E65FF5B0);
    v307 = v395;
    (v303)(&v305[*(v306 + 48)], v304, v395);
    v308 = v341;
    sub_1E5DFD1CC(v341, &v305[*(v306 + 64)], &qword_1ED0780C0, &qword_1E65FB518);
    sub_1E5DFE50C(v329, &qword_1ED0780C0, &qword_1E65FB518);
    v309 = *(v302 + 8);
    v309(v328, v307);
    v310 = v339[1];
    v310(v368, v301);
    sub_1E5DFE50C(v308, &qword_1ED0780C0, &qword_1E65FB518);
    v309(v304, v307);
    v310(v338, v301);
    sub_1E5DFE50C(v337, &qword_1ED077168, &unk_1E65FA6A0);
    (*(v334 + 8))(v333, v335);
    v311 = v373;
    sub_1E65E4008();
    sub_1E63BAB8C(&qword_1EE2D4D98, MEMORY[0x1E697C5D0]);
    v312 = v375;
    v313 = v376;
    sub_1E65E3C08();
    (*(v374 + 8))(v311, v312);
    sub_1E626F8FC();
    sub_1E5FED46C(&qword_1EE2D6870, &unk_1ED0779B0, &qword_1E65ED910);
    v314 = v326;
    v315 = v379;
    v316 = v396;
    sub_1E65E47D8();
    (*(v377 + 8))(v313, v315);
    sub_1E5DFE50C(v316, &qword_1ED077158, &unk_1E65FA690);
    sub_1E65E44A8();
    v317 = sub_1E65E44B8();

    KeyPath = swift_getKeyPath();
    v319 = (v314 + *(v378 + 36));
    *v319 = KeyPath;
    v319[1] = v317;
    sub_1E5DFD1CC(v314, v383, &unk_1ED0779A0, &qword_1E65F9728);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1ED077148, &unk_1ED077990, &unk_1E65FA680);
    sub_1E626F7A8();
    v320 = v385;
    sub_1E65E4138();
    sub_1E5DFD1CC(v320, v388, &unk_1ED077980, &qword_1E65F9720);
    swift_storeEnumTagMultiPayload();
    sub_1E626F6F0();
    v297 = v381;
    sub_1E65E4138();
    sub_1E5DFE50C(v320, &unk_1ED077980, &qword_1E65F9720);
    sub_1E5DFE50C(v314, &unk_1ED0779A0, &qword_1E65F9728);
    goto LABEL_16;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E63B6820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppComposer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5E1D5BC(a1, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_1E63B8F5C(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for AppComposer);
  v11 = (v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = a2;
  v11[1] = a3;

  return sub_1E65E3358();
}

uint64_t sub_1E63B6990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a3;
  v46 = a2;
  v47 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v45 - v15;
  v17 = type metadata accessor for ArtworkContent();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ArtworkDescriptor();
  v22 = (v21 - 8);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_1E63B0B0C(a4);
  v27 = sub_1E600ACF0(v26);

  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E5DFD1CC(a1, v16, &qword_1ED0734E8, &qword_1E65ED470);
  sub_1E5DFD1CC(v45, v12, &qword_1ED072340, &qword_1E65EA410);
  sub_1E65DB248();
  sub_1E5DFD1CC(v46, &v20[v28], &qword_1ED073548, &qword_1E65ED508);
  swift_storeEnumTagMultiPayload();
  v29 = *(a5 + *(type metadata accessor for AppComposer() + 20) + 8);
  v30 = sub_1E65DAE38();
  v31 = sub_1E65DAE38();
  v32 = sub_1E65E4B48();
  v33 = 16.0;
  if (v32)
  {
    v33 = 18.0;
  }

  if (v30 == v31)
  {
    v34 = v33;
  }

  else
  {
    v34 = 12.0;
  }

  if (v30 == v31)
  {
    v35 = 12.0;
  }

  else
  {
    v35 = 8.0;
  }

  sub_1E63B8F5C(v20, v25, type metadata accessor for ArtworkContent);
  *(v25 + v22[7]) = v27;
  v36 = (v25 + v22[8]);
  *v36 = 0.0;
  v36[1] = v34;
  v36[2] = v34;
  v36[3] = v35;
  *(v25 + v22[9]) = 1;
  v37 = (v25 + v22[10]);
  *v37 = 0;
  v37[1] = 0;
  v38 = v47;
  sub_1E64D2DD0(v25, a5, v47);
  v39 = sub_1E65E4B98();
  v41 = v40;
  v42 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v25, a5, v42);
  sub_1E63BAB2C(v25, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v44 = (v42 + *(result + 36));
  *v44 = v39;
  v44[1] = v41;
  return result;
}

uint64_t sub_1E63B6CF4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *a1;
  v8 = a1[3];
  v9 = a1[5];
  v10 = a1[7];
  v11 = a1[9];
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = *(a1 + 3);
  *(v12 + 64) = *(a1 + 2);
  *(v12 + 80) = v13;
  *(v12 + 96) = *(a1 + 4);
  v14 = *(a1 + 1);
  *(v12 + 32) = *a1;
  *(v12 + 48) = v14;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v5, &unk_1E65FF510, v12);
}

uint64_t sub_1E63B6E58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E62E234C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E63B6F08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078BF8, &qword_1E65FF518);
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v26 - v6;
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = sub_1E65E3458();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v27 = sub_1E65E33D8();
  v30 = *(v27 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  sub_1E5E1D5BC(a1, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_1E63B8F5C(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AppComposer);
  sub_1E5E1D5BC(a1, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v17 = swift_allocObject();
  sub_1E63B8F5C(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15, type metadata accessor for AppComposer);
  sub_1E65E3448();
  sub_1E65E33C8();
  v18 = swift_allocObject();
  v20 = v28;
  v19 = v29;
  *(v18 + 16) = v28;
  *(v18 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  type metadata accessor for AppFeature();
  sub_1E63BAB8C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E63BAB8C(&qword_1ED078C00, MEMORY[0x1E699EC30]);
  swift_bridgeObjectRetain_n();
  v22 = v31;
  v23 = v27;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v24 = sub_1E65E4F08();
  (*(v32 + 8))(v22, v33);
  (*(v30 + 8))(v14, v23);
  return v24;
}

uint64_t sub_1E63B7364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E63B7418(a1, a2, a3);
}

uint64_t sub_1E63B7418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D8EF8();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(sub_1E65D76A8() - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v10 = sub_1E65D96F8();
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();
  v13 = sub_1E65D76F8();
  v4[15] = v13;
  v14 = *(v13 - 8);
  v4[16] = v14;
  v15 = *(v14 + 64) + 15;
  v4[17] = swift_task_alloc();
  v16 = sub_1E65D7EB8();
  v4[18] = v16;
  v17 = *(v16 - 8);
  v4[19] = v17;
  v18 = *(v17 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63B7660, 0, 0);
}

uint64_t sub_1E63B7660()
{
  v1 = *(v0 + 40);
  *(v0 + 224) = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 228) = *(type metadata accessor for AppEnvironment() + 144);
  active = WorkoutPlanService.queryActiveWorkoutPlan.getter();
  *(v0 + 168) = v3;
  v8 = (active + *active);
  v4 = active[1];
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_1E63B7784;
  v6 = *(v0 + 160);

  return v8(v6);
}

uint64_t sub_1E63B7784()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1E63B7F38;
  }

  else
  {
    v3 = sub_1E63B7898;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63B7898()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 228);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 136);
  v6 = *(v0 + 40);

  v7 = WorkoutPlanService.queryIncompleteMatchingWorkoutReferences.getter();
  *(v0 + 192) = v8;
  sub_1E65D7DC8();
  v15 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 200) = v10;
  *v10 = v0;
  v10[1] = sub_1E63B79D4;
  v11 = *(v0 + 136);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);

  return v15(v11, v12, v13);
}

uint64_t sub_1E63B79D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 136);
  v7 = *(*v2 + 128);
  v8 = *(*v2 + 120);
  v11 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  (*(v7 + 8))(v6, v8);

  if (v1)
  {
    v9 = sub_1E63B7FFC;
  }

  else
  {
    v9 = sub_1E63B7B6C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E63B7B6C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 160);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;

  v8 = sub_1E63B8B10(sub_1E63B92A8, v7, v1, MEMORY[0x1E69CC278], sub_1E60896C8, sub_1E6065558);

  sub_1E64E07B8(v8, v6);

  v9 = *(v5 + 48);
  v10 = v9(v6, 1, v4);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 80);
  if (v10 == 1)
  {
    sub_1E64E07B8(*(v0 + 208), *(v0 + 88));
    if (v9(v13, 1, v12) != 1)
    {
      sub_1E5DFE50C(*(v0 + 80), &unk_1ED077780, &unk_1E66097F0);
    }
  }

  else
  {
    v14 = *(v0 + 104);
    (*(v14 + 32))(*(v0 + 88), *(v0 + 80), *(v0 + 96));
    (*(v14 + 56))(v11, 0, 1, v12);
  }

  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  v17 = v9(v15, 1, v16);
  v18 = *(v0 + 208);
  v20 = *(v0 + 152);
  v19 = *(v0 + 160);
  if (v17 == 1)
  {
    (*(v20 + 8))(*(v0 + 160), *(v0 + 144));

    sub_1E5DFE50C(v15, &unk_1ED077780, &unk_1E66097F0);
    v21 = 1;
  }

  else
  {
    v22 = *(v0 + 104);
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);
    v25 = *(v0 + 56);
    v42 = *(v0 + 48);
    v43 = *(v0 + 16);
    v44 = v16;
    v26 = *(v0 + 112);
    v45 = *(v0 + 144);
    (*(v22 + 32))();
    v27 = v26;
    sub_1E65D96B8();
    sub_1E65D7E28();
    (*(v25 + 8))(v24, v42);
    v28 = sub_1E63B0F44(v18);

    v29 = sub_1E600DE30(v28);

    v30 = *(v29 + 16);

    sub_1E65E32F8();
    (*(v22 + 8))(v27, v44);
    (*(v20 + 8))(v19, v45);
    v21 = 0;
  }

  v31 = *(v0 + 160);
  v32 = *(v0 + 136);
  v33 = *(v0 + 112);
  v35 = *(v0 + 80);
  v34 = *(v0 + 88);
  v37 = *(v0 + 64);
  v36 = *(v0 + 72);
  v38 = *(v0 + 16);
  v39 = sub_1E65E3308();
  (*(*(v39 - 8) + 56))(v38, v21, 1, v39);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1E63B7F38()
{
  v1 = v0[21];

  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[8];
  v8 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E63B7FFC()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[27];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E63B80D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v68 = &v58 - v12;
  v67 = sub_1E65D7848();
  v65 = *(v67 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  v15 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v58 = *(v17 - 8);
  v59 = v17;
  v18 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE8, &qword_1E65F84B8);
  v21 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C10, &qword_1E65FF548);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v64 = &v58 - v26;
  v27 = sub_1E65E3468();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v71 = &v58 - v33;
  v34 = sub_1E65D7908();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v63 = &v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D7858();
  v37 = type metadata accessor for AppState();
  v38 = a1;
  v39 = *(a1 + v37[79] + 8);
  if (*(v39 + 16) && (v40 = sub_1E6215038(a2, a3), (v41 & 1) != 0))
  {
    v42 = a3;
    v43 = a2;
    v44 = v42;
    (*(v28 + 16))(v32, *(v39 + 56) + *(v28 + 72) * v40, v27);
    (*(v28 + 32))(v71, v32, v27);
  }

  else
  {
    v45 = a3;
    v43 = a2;
    v44 = v45;
    (*(v28 + 104))(v71, *MEMORY[0x1E699EC60], v27);
  }

  v46 = v37[77];
  v72 = v43;
  v73 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v47 = v38;
  sub_1E65E4D78();
  v48 = v61;
  v49 = v59;
  sub_1E65E4C98();
  (*(v58 + 8))(v20, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E6237A2C();
  sub_1E65E4DA8();
  v50 = sub_1E5DFE50C(v48, &qword_1ED0753C0, &unk_1E6606290);
  MEMORY[0x1EEE9AC00](v50);
  *(&v58 - 2) = v47;
  sub_1E63B9254();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v23, &qword_1ED076DE8, &qword_1E65F84B8);
  v51 = v37[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v52 = v66;
  sub_1E65E4C98();
  v53 = v68;
  sub_1E5E1F544(v68);
  sub_1E5DFE50C(v52, &qword_1ED071F78, &unk_1E65EA3F0);
  v54 = v65;
  v55 = *(v65 + 48);
  v56 = v67;
  if (v55(v53, 1, v67) == 1)
  {
    sub_1E65D77C8();
    if (v55(v53, 1, v56) != 1)
    {
      sub_1E5DFE50C(v53, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v54 + 32))(v69, v53, v56);
  }

  sub_1E6237610(v43, v44);
  return sub_1E65E3398();
}

uint64_t sub_1E63B87C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C08, &qword_1E65FF540);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;

  sub_1E65E3388();
  v11 = sub_1E65E3468();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = a1 + *(type metadata accessor for AppState() + 316) + 8;
  return sub_1E6408AC8(v10, a3, a4);
}

uint64_t sub_1E63B88C8()
{
  v0 = [objc_opt_self() lightTextColor];
  sub_1E65E4968();
  sub_1E65E44A8();
  sub_1E65E49A8();
  sub_1E65E44A8();
  v1 = sub_1E65D7278();

  return v1;
}

uint64_t sub_1E63B899C()
{
  v0 = sub_1E65D8EF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D96B8();
  v5 = sub_1E65D7E68();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_1E63B8A88(uint64_t (*a1)(uint64_t (*)(char *, unint64_t, uint64_t, uint64_t)), uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1E63B8B10(a1, a2, a3, MEMORY[0x1E69CC8D0], sub_1E60899F0, sub_1E6065598);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E63B8B10(uint64_t (*a1)(uint64_t (*)(char *, unint64_t, uint64_t, uint64_t)), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  v49 = a1;
  v53 = *MEMORY[0x1E69E9840];
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v40 - v14);
  LOBYTE(v14) = *(a3 + 32);
  v41 = ((1 << v14) + 63) >> 6;
  if ((v14 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v47 = v15;
    v48 = v13;
    v40 = a5;
    v43 = &v40;
    MEMORY[0x1EEE9AC00](v13);
    v42 = &v40 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v16);
    a6 = 0;
    v50 = a3;
    v18 = *(a3 + 56);
    a3 += 56;
    v17 = v18;
    v19 = 1 << *(a3 - 24);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v17;
    v22 = (v19 + 63) >> 6;
    v44 = 0;
    v45 = (v11 + 16);
    v46 = (v11 + 8);
    while (v21)
    {
      v23 = __clz(__rbit64(v21));
      v51 = (v21 - 1) & v21;
LABEL_12:
      v26 = v23 | (a6 << 6);
      v27 = *(v50 + 48) + *(v11 + 9) * v26;
      v15 = v11;
      v28 = *(v11 + 2);
      a5 = v47;
      v29 = v48;
      v28(v47, v27, v48);
      v30 = v52;
      v31 = v49(a5);
      v52 = v30;
      if (v30)
      {
        (*v46)(a5, v29);

        result = swift_willThrow();
        goto LABEL_18;
      }

      v32 = v31;
      v13 = (*v46)(a5, v29);
      v11 = v15;
      v21 = v51;
      if (v32)
      {
        *&v42[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_17:
          result = v40(v42, v41, v44, v50);
          goto LABEL_18;
        }
      }
    }

    v24 = a6;
    while (1)
    {
      a6 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (a6 >= v22)
      {
        goto LABEL_17;
      }

      v25 = *(a3 + 8 * a6);
      v24 = (v24 + 1);
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v51 = (v25 - 1) & v25;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v36 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v13 = v36;
  }

  v37 = swift_slowAlloc();
  v38 = v52;
  v39 = sub_1E63B8EBC(v37, v41, a3, v49, a2, a6);

  result = MEMORY[0x1E694F1C0](v37, -1, -1);
  if (!v38)
  {
    result = v39;
  }

LABEL_18:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1E63B8EBC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_1E63B8F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63B8FC4()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1E63B6F08((v0 + v2), v4, v5);
}

uint64_t sub_1E63B9054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E63B7364(a1, a2, a3);
}

uint64_t sub_1E63B9148(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E62D3F40(a1, a2, v2 + v7);
}

unint64_t sub_1E63B9254()
{
  result = qword_1ED078C18;
  if (!qword_1ED078C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078C18);
  }

  return result;
}

uint64_t sub_1E63B9318(uint64_t (*a1)(unint64_t, unint64_t, unint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return a1(v1 + v3, v1 + v4, v1 + ((v4 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E63B93D4@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AppComposer() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1E65D76F8() - 8);
  v11 = (v9 + *(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v9);
  v14 = *(v3 + v9 + 8);

  return sub_1E62F0A54(a1, a2, (v3 + v8), v13, v14, v3 + v11, v3 + v12, (v3 + ((v12 + 47) & 0xFFFFFFFFFFFFFFF8)), a3);
}

uint64_t sub_1E63B950C()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E62D933C(v0 + v2, v5);
}

uint64_t objectdestroy_33Tm_1()
{
  v151 = type metadata accessor for AppComposer();
  v149 = *(*(v151 - 1) + 80);
  v1 = (v149 + 16) & ~v149;
  v2 = v1 + *(*(v151 - 1) + 64);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480) - 8);
  v138 = (v2 + *(v3 + 80)) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v138 + 7) & 0xFFFFFFFFFFFFFFF8;
  v145 = sub_1E65D76F8();
  v142 = *(v145 - 8);
  v143 = v4;
  v148 = *(v142 + 80);
  v139 = (*(v142 + 64) + ((v4 + v148 + 8) & ~v148) + 7) & 0xFFFFFFFFFFFFFFF8;
  v140 = (v4 + v148 + 8) & ~v148;
  v5 = sub_1E65DEC18();
  v146 = *(v5 - 8);
  v147 = v5;
  v141 = (v139 + 47) & 0xFFFFFFFFFFFFFFF8;
  v144 = (v141 + *(v146 + 80) + 80) & ~*(v146 + 80);
  v137 = *(v146 + 64) + v144;
  v150 = v0;
  v134 = v0 + v1;
  v6 = *(v0 + v1);

  v7 = (v0 + v1 + v151[5]);
  v8 = *v7;
  swift_unknownObjectRelease();
  v9 = type metadata accessor for AppEnvironment();
  v10 = v9[6];
  v136 = type metadata accessor for AccountService();
  v135 = *(v136[-1].Description + 1);
  v135(v7 + v10, v136);
  v11 = v9[7];
  v133 = type metadata accessor for AppStateService();
  v132 = *(v133[-1].Description + 1);
  v132(v7 + v11, v133);
  v12 = v9[8];
  v131 = type metadata accessor for ArchivedSessionService();
  v130 = *(v131[-1].Description + 1);
  v130(v7 + v12, v131);
  v13 = v9[9];
  v129 = type metadata accessor for AssetService();
  v128 = *(v129[-1].Description + 1);
  v128(v7 + v13, v129);
  v14 = v9[10];
  v127 = type metadata accessor for AwardsService();
  v126 = *(v127[-1].Description + 1);
  v126(v7 + v14, v127);
  v15 = v9[11];
  v125 = type metadata accessor for BookmarkService();
  v124 = *(v125[-1].Description + 1);
  v124(v7 + v15, v125);
  v16 = v9[12];
  v123 = type metadata accessor for CatalogService();
  v122 = *(v123[-1].Description + 1);
  v122(v7 + v16, v123);
  v17 = v9[13];
  v121 = type metadata accessor for ConfigurationService();
  v120 = *(v121[-1].Description + 1);
  v120(v7 + v17, v121);
  v18 = v9[14];
  v119 = type metadata accessor for ContentAvailabilityService();
  v118 = *(v119[-1].Description + 1);
  v118(v7 + v18, v119);
  v19 = v9[15];
  v117 = type metadata accessor for EngagementService();
  v116 = *(v117[-1].Description + 1);
  v116(v7 + v19, v117);
  v20 = v9[16];
  v115 = type metadata accessor for HealthDataService();
  v114 = *(v115[-1].Description + 1);
  v114(v7 + v20, v115);
  v21 = v9[17];
  v113 = type metadata accessor for InteropService();
  v112 = *(v113[-1].Description + 1);
  v112(v7 + v21, v113);
  v22 = v9[18];
  v111 = type metadata accessor for LocalizationService();
  v110 = *(v111[-1].Description + 1);
  v110(v7 + v22, v111);
  v23 = v9[19];
  v109 = type metadata accessor for MarketingService();
  v108 = *(v109[-1].Description + 1);
  v108(v7 + v23, v109);
  v24 = v9[20];
  v107 = type metadata accessor for MetricService();
  v106 = *(v107[-1].Description + 1);
  v106(v7 + v24, v107);
  v25 = v9[21];
  v105 = type metadata accessor for PersonalizationService();
  v104 = *(v105[-1].Description + 1);
  v104(v7 + v25, v105);
  v26 = v9[22];
  v103 = type metadata accessor for PlayerService();
  v102 = *(v103[-1].Description + 1);
  v102(v7 + v26, v103);
  v27 = v9[23];
  v101 = type metadata accessor for PrivacyPreferenceService();
  v100 = *(v101[-1].Description + 1);
  v100(v7 + v27, v101);
  v28 = v9[24];
  v99 = type metadata accessor for RecommendationService();
  v98 = *(v99[-1].Description + 1);
  v98(v7 + v28, v99);
  v29 = v9[25];
  v97 = type metadata accessor for RemoteBrowsingService();
  v96 = *(v97[-1].Description + 1);
  v96(v7 + v29, v97);
  v30 = v9[26];
  v95 = type metadata accessor for SearchService();
  v94 = *(v95[-1].Description + 1);
  v94(v7 + v30, v95);
  v31 = v9[27];
  v88 = type metadata accessor for ServiceSubscriptionService();
  v93 = *(v88[-1].Description + 1);
  v93(v7 + v31, v88);
  v32 = v9[28];
  v86 = type metadata accessor for SessionService();
  v92 = *(v86[-1].Description + 1);
  v92(v7 + v32, v86);
  v33 = v9[29];
  v34 = type metadata accessor for SharePlayService();
  v91 = *(v34[-1].Description + 1);
  v91(v7 + v33, v34);
  v35 = v9[30];
  v36 = type metadata accessor for SiriService();
  v90 = *(v36[-1].Description + 1);
  v90(v7 + v35, v36);
  v37 = v9[31];
  v38 = type metadata accessor for SyncService();
  v89 = *(v38[-1].Description + 1);
  v89(v7 + v37, v38);
  v39 = (v7 + v9[32]);
  v40 = v39[1];

  v41 = v39[3];

  v42 = v39[5];

  v43 = v9[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v87 = *(QueueService[-1].Description + 1);
  v87(v7 + v43, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v7 + v9[34]));
  v45 = *(v7 + v9[35]);

  v46 = v9[36];
  v47 = type metadata accessor for WorkoutPlanService();
  v85 = *(v47[-1].Description + 1);
  v85(v7 + v46, v47);
  v48 = *(v134 + v151[6]);

  v49 = (v134 + v151[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = (v49 + *(type metadata accessor for AppDataItemResolver() + 24));
  v53 = *v52;
  swift_unknownObjectRelease();
  v135(v52 + v9[6], v136);
  v132(v52 + v9[7], v133);
  v130(v52 + v9[8], v131);
  v128(v52 + v9[9], v129);
  v126(v52 + v9[10], v127);
  v124(v52 + v9[11], v125);
  v122(v52 + v9[12], v123);
  v120(v52 + v9[13], v121);
  v118(v52 + v9[14], v119);
  v116(v52 + v9[15], v117);
  v114(v52 + v9[16], v115);
  v112(v52 + v9[17], v113);
  v110(v52 + v9[18], v111);
  v108(v52 + v9[19], v109);
  v106(v52 + v9[20], v107);
  v104(v52 + v9[21], v105);
  v102(v52 + v9[22], v103);
  v100(v52 + v9[23], v101);
  v98(v52 + v9[24], v99);
  v96(v52 + v9[25], v97);
  v94(v52 + v9[26], v95);
  v93(v52 + v9[27], v88);
  v92(v52 + v9[28], v86);
  v91(v52 + v9[29], v34);
  v90(v52 + v9[30], v36);
  v89(v52 + v9[31], v38);
  v54 = (v52 + v9[32]);
  v55 = v54[1];

  v56 = v54[3];

  v57 = v54[5];

  v87(v52 + v9[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v52 + v9[34]));
  v58 = *(v52 + v9[35]);

  v85(v52 + v9[36], v47);
  v59 = *(v134 + v151[8]);
  swift_unknownObjectRelease();
  if (*(v134 + v151[9] + 8) >= 0xCuLL)
  {
  }

  v60 = (v134 + v151[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = (v137 + 7) & 0xFFFFFFFFFFFFFFF8;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v63 = *(v150 + v138 + 8);

  if (EnumCaseMultiPayload == 1)
  {
    v64 = v150 + v138 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v65 = swift_getEnumCaseMultiPayload();
    switch(v65)
    {
      case 2:
        v70 = *(v64 + 8);

        v71 = *(v64 + 32);

        break;
      case 1:
        v67 = sub_1E65DE788();
        (*(*(v67 - 8) + 8))(v64, v67);
        v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v69 = sub_1E65D76A8();
        (*(*(v69 - 8) + 8))(v64 + v68, v69);
        break;
      case 0:
        v66 = sub_1E65DE788();
        (*(*(v66 - 8) + 8))(v64, v66);
        break;
    }

    v72 = v64 + *(type metadata accessor for DynamicStartWorkoutButtonLoadState() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v73 = swift_getEnumCaseMultiPayload();
    if (v73 == 2)
    {
      v76 = *(v72 + 8);

      v77 = *(v72 + 32);
    }

    else if (v73 == 1)
    {
      v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v75 = sub_1E65D76A8();
      (*(*(v75 - 8) + 8))(v72 + v74, v75);
    }
  }

  v78 = *(v150 + v143);

  (*(v142 + 8))(v150 + v140, v145);
  __swift_destroy_boxed_opaque_existential_1((v150 + v139));
  v79 = *(v150 + v141);
  swift_unknownObjectRelease();
  v80 = *(v150 + v141 + 24);

  v81 = *(v150 + v141 + 40);

  v82 = *(v150 + v141 + 56);

  v83 = *(v150 + v141 + 72);

  (*(v146 + 8))(v150 + v144, v147);
  if (*(v150 + v61 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v150 + v61));
  }

  return swift_deallocObject();
}

uint64_t sub_1E63BA6C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E63BA6F0(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63B1BC8(a1, a2, v2 + v7);
}

uint64_t sub_1E63BA7D0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63B2838(a1, a2, v2 + 16);
}

uint64_t sub_1E63BA878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1E63B2C04(a1, v6, v7, v8, a2);
}

uint64_t sub_1E63BA8FC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E63B37B8(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E63BA9A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E30D8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1E65E30C8() - 8);
  v9 = (v7 + *(v8 + 80) + 80) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFA78C;

  return sub_1E6323BA8(a1, v10, v11, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_1E63BAB2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E63BAB8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E63BABDC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v24 = sub_1E65D8E78();
  v7 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v11 = a4 + 56;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 56);
  v15 = (v12 + 63) >> 6;
  v20[1] = v8 + 16;
  v21 = v8;
  v23 = (v8 + 8);

  v25 = a4;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
      v19 = v24;
LABEL_9:
      (*(v21 + 16))(v10, *(v25 + 48) + *(v21 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v19);
      v22(&v26, &v27, v10);
      if (v4)
      {
        break;
      }

      v14 &= v14 - 1;
      (*v23)(v10, v19);

      a1 = v26;
      v27 = v26;
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    (*v23)(v10, v19);

LABEL_13:

    return a1;
  }

  else
  {
LABEL_5:
    v19 = v24;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_13;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E63BAE10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v157 = a1;
  v149 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v127 = &v121 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v136 = &v121 - v11;
  v129 = sub_1E65DAC98();
  v135 = *(v129 - 8);
  v12 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v131 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1E65E3418();
  v14 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v130 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1E65DA0B8();
  v132 = *(v133 - 8);
  v16 = *(v132 + 64);
  v17 = MEMORY[0x1EEE9AC00](v133);
  v128 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v126 = &v121 - v19;
  v125 = sub_1E65D9D58();
  v124 = *(v125 - 8);
  v20 = *(v124 + 64);
  v21 = MEMORY[0x1EEE9AC00](v125);
  v123 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v121 - v23;
  v139 = sub_1E65D8BB8();
  v24 = *(*(v139 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v139);
  v141 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v158 = &v121 - v27;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CA8, &qword_1E65FF648);
  v28 = *(*(v146 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v146);
  v145 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v160 = &v121 - v31;
  v32 = sub_1E65D74E8();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v162 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D0, &qword_1E65F1598);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v121 - v37;
  v159 = sub_1E65D8518();
  v165 = *(v159 - 8);
  v39 = *(v165 + 64);
  v40 = MEMORY[0x1EEE9AC00](v159);
  v147 = &v121 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v144 = &v121 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v143 = &v121 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v121 - v46;
  v137 = sub_1E65D8478();
  v48 = *(v137 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v51 = &v121 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CB0, &qword_1E65FF650);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v156 = &v121 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v161 = &v121 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x1EEE9AC00](v57 - 8);
  v153 = &v121 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v121 - v61;
  v155 = sub_1E65D72D8();
  v164 = *(v155 - 8);
  v63 = v164[8];
  v64 = MEMORY[0x1EEE9AC00](v155);
  v142 = &v121 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v140 = &v121 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v150 = &v121 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v163 = &v121 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v74 = &v121 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v121 - v75;
  v77 = sub_1E65D94C8();
  v151 = v76;
  v78 = v76;
  v79 = a2;
  v80 = v157;
  sub_1E63C4134(v157, v79, v77, v78);

  v81 = sub_1E65D9468();
  v152 = v74;
  sub_1E63C4134(v80, v79, v81, v74);

  v82 = *(sub_1E65D9478() + 16);

  if (v82)
  {
    v83 = sub_1E65D9478();
    v84 = v80;
    v85 = v79;
    sub_1E63C4134(v84, v79, v83, v62);

    v86 = 0;
  }

  else
  {
    v85 = v79;
    v86 = 1;
  }

  v87 = v164[7];
  v154 = v62;
  v87(v62, v86, 1, v155);
  sub_1E65D9498();
  sub_1E65D84C8();
  v88 = *(v165 + 8);
  v165 += 8;
  v138 = v88;
  v88(v47, v159);
  v89 = v137;
  if ((*(v48 + 48))(v38, 1, v137) == 1)
  {
    sub_1E5DFE50C(v38, &qword_1ED0752D0, &qword_1E65F1598);
    v90 = 1;
    v91 = v161;
  }

  else
  {
    (*(v48 + 32))(v51, v38, v89);
    sub_1E65D8468();
    sub_1E65D8448();
    v91 = v161;
    sub_1E65E3428();
    (*(v48 + 8))(v51, v89);
    v90 = 0;
  }

  v92 = sub_1E65E3438();
  (*(*(v92 - 8) + 56))(v91, v90, 1, v92);
  v137 = sub_1E63BBCF4();
  sub_1E63BBF70(v157, v85, v163);
  v93 = v158;
  sub_1E65D9488();
  v94 = v93;
  v95 = v141;
  sub_1E63BFE70(v94, v141, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v148 = v4;
  if (EnumCaseMultiPayload == 1)
  {
    v97 = v132;
    v98 = v126;
    v99 = v133;
    (*(v132 + 32))(v126, v95, v133);
    v100 = v128;
    (*(v97 + 16))(v128, v98, v99);
    v101 = v131;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DAC88();
    sub_1E65E3408();
    (*(v135 + 8))(v101, v129);
    sub_1E65DA0A8();
    sub_1E63BCC3C();
    v102 = v145;
    sub_1E65DC438();
    v103 = *(v97 + 8);
    v104 = v100;
    v91 = v161;
    v103(v104, v99);
    v103(v98, v99);
  }

  else
  {
    v105 = v124;
    v106 = v122;
    v107 = v95;
    v108 = v125;
    (*(v124 + 32))(v122, v107, v125);
    v109 = v123;
    (*(v105 + 16))(v123, v106, v108);
    v102 = v145;
    sub_1E6133E30(v109, v145);
    (*(v105 + 8))(v106, v108);
  }

  sub_1E63BFE10(v158, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E63BCC94(v102, v160);
  v110 = v164[2];
  v111 = v155;
  v110(v150, v152, v155);
  v112 = v143;
  sub_1E65D9498();
  v113 = sub_1E65D8488();
  v157 = v114;
  v158 = v113;
  v115 = v159;
  v116 = v138;
  v138(v112, v159);
  sub_1E5DFD1CC(v91, v156, &qword_1ED078CB0, &qword_1E65FF650);
  v117 = v144;
  sub_1E65D9498();
  sub_1E65D8498();
  v116(v117, v115);
  sub_1E5DFD1CC(v154, v153, &qword_1ED072D90, &qword_1E66040F0);
  v110(v140, v163, v111);
  v110(v142, v151, v111);
  v118 = v147;
  sub_1E65D9498();
  sub_1E65D84B8();
  v116(v118, v115);
  sub_1E65E32B8();
  v119 = v164[1];
  v119(v163, v111);
  sub_1E5DFE50C(v161, &qword_1ED078CB0, &qword_1E65FF650);
  sub_1E5DFE50C(v154, &qword_1ED072D90, &qword_1E66040F0);
  v119(v152, v111);
  return (v119)(v151, v111);
}

uint64_t sub_1E63BBCF4()
{
  v0 = sub_1E65DAD48();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D8518();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D9498();
  v10 = sub_1E65D84F8();
  (*(v6 + 8))(v9, v5);
  v21 = MEMORY[0x1E69E7CC0];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v1 + 16);
    v13 = *(v1 + 80);
    v18[1] = v10;
    v14 = v10 + ((v13 + 32) & ~v13);
    v19 = *(v1 + 72);
    v20 = v12;
    do
    {
      v20(v4, v14, v0);
      v15 = sub_1E65DAD08();
      MEMORY[0x1EEE9AC00](v15);
      v18[-2] = v4;
      v16 = sub_1E63BABDC(MEMORY[0x1E69E7CC0], sub_1E63BFED8, &v18[-4], v15);

      (*(v1 + 8))(v4, v0);
      sub_1E5FAA258(v16);
      v14 += v19;
      --v11;
    }

    while (v11);

    return v21;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1E63BBF70@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v117 = a2;
  v116 = a1;
  v115 = a3;
  v122 = sub_1E65DAD48();
  v127 = *(v122 - 8);
  v4 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1E65D7D58();
  v128 = *(v123 - 8);
  v7 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v140 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D8518();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v114 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v112 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v112 - v17;
  v19 = sub_1E65DADF8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v138 = (&v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v22);
  v137 = &v112 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v136 = (&v112 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v135 = &v112 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v134 = &v112 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v133 = &v112 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v132 = (&v112 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v131 = (&v112 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v130 = &v112 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v129 = &v112 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = (&v112 - v43);
  MEMORY[0x1EEE9AC00](v42);
  *(&v112 - v45) = 2;
  v142 = &v112 - v45;
  swift_storeEnumTagMultiPayload();
  v121 = v3;
  sub_1E65D9498();
  v46 = sub_1E65D84D8();
  v48 = v47;
  v49 = *(v10 + 8);
  v120 = v9;
  v119 = v10 + 8;
  v118 = v49;
  v49(v18, v9);
  *v44 = v46;
  v44[1] = v48;
  v141 = v19;
  swift_storeEnumTagMultiPayload();
  v50 = sub_1E64F6308(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v52 = v50[2];
  v51 = v50[3];
  if (v52 >= v51 >> 1)
  {
    v50 = sub_1E64F6308(v51 > 1, v52 + 1, 1, v50);
  }

  v50[2] = v52 + 1;
  v53 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v54 = *(v20 + 72);
  sub_1E60EB82C(v44, v50 + v53 + v54 * v52);
  sub_1E65D9498();
  v55 = sub_1E65D84A8();
  v118(v16, v120);
  v56 = *(v55 + 16);
  v57 = v123;
  if (v56)
  {
    v58 = sub_1E64F727C(*(v55 + 16), 0);
    v139 = sub_1E6259488(v143, &v58[(*(v128 + 80) + 32) & ~*(v128 + 80)], v56, v55);
    v126 = v143[2];
    v125 = v143[3];
    v124 = v143[4];

    sub_1E5E24EE4();
    if (v139 == v56)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v58 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v139 = v6;
  v143[0] = v58;

  sub_1E63BD048(v143);
  v59 = v140;
  v113 = 0;

  v60 = v143[0][2];
  if (v60)
  {
    v126 = *(v128 + 16);
    v61 = (*(v128 + 80) + 32) & ~*(v128 + 80);
    v112 = v143[0];
    v62 = v143[0] + v61;
    v125 = *(v128 + 72);
    v128 += 16;
    v124 = (v128 - 8);
    v126(v59, v143[0] + v61, v57);
    while (1)
    {
      v63 = sub_1E65D7D38();
      if (v64)
      {
        v65 = v63;
        v66 = v64;
        sub_1E63BFE70(v142, v129, MEMORY[0x1E69CD300]);
        v68 = v50[2];
        v67 = v50[3];
        v69 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          v50 = sub_1E64F6308(v67 > 1, v68 + 1, 1, v50);
        }

        v50[2] = v69;
        sub_1E60EB82C(v129, v50 + v53 + v68 * v54);
        sub_1E63BFE70(v142, v130, MEMORY[0x1E69CD300]);
        v70 = v50[3];
        v71 = v68 + 2;
        if (v71 > (v70 >> 1))
        {
          v50 = sub_1E64F6308(v70 > 1, v71, 1, v50);
        }

        v50[2] = v71;
        sub_1E60EB82C(v130, v50 + v53 + v69 * v54);
        v72 = sub_1E65D7D48();
        v73 = v131;
        *v131 = v72;
        v73[1] = v74;
        v73[2] = 0;
        v73[3] = 0;
        swift_storeEnumTagMultiPayload();
        v76 = v50[2];
        v75 = v50[3];
        v77 = v76 + 1;
        if (v76 >= v75 >> 1)
        {
          v50 = sub_1E64F6308(v75 > 1, v76 + 1, 1, v50);
        }

        v50[2] = v77;
        sub_1E60EB82C(v131, v50 + v53 + v76 * v54);
        sub_1E63BFE70(v142, v132, MEMORY[0x1E69CD300]);
        v78 = v50[3];
        v79 = v76 + 2;
        if ((v76 + 2) > (v78 >> 1))
        {
          v50 = sub_1E64F6308(v78 > 1, v76 + 2, 1, v50);
        }

        v50[2] = v79;
        sub_1E60EB82C(v132, v50 + v53 + v77 * v54);
        v80 = v133;
        *v133 = v65;
        *(v80 + 8) = v66;
        swift_storeEnumTagMultiPayload();
        v81 = v50[3];
        v82 = v76 + 3;
        if ((v76 + 3) > (v81 >> 1))
        {
          v50 = sub_1E64F6308(v81 > 1, v76 + 3, 1, v50);
        }

        v57 = v123;
        v59 = v140;
        (*v124)(v140, v123);
        v50[2] = v82;
        sub_1E60EB82C(v133, v50 + v53 + v79 * v54);
      }

      else
      {
        (*v124)(v59, v57);
      }

      v62 = v125 + v62;
      if (!--v60)
      {
        break;
      }

      v126(v59, v62, v57);
    }
  }

  v83 = v114;
  sub_1E65D9498();
  v84 = sub_1E65D84F8();
  v118(v83, v120);
  v143[0] = v84;

  v85 = v113;
  sub_1E63BD12C(v143);
  v86 = v139;
  if (v85)
  {

    __break(1u);
  }

  else
  {

    v87 = v143[0][2];
    if (v87)
    {
      v140 = *(v127 + 16);
      v88 = *(v127 + 80);
      v131 = v143[0];
      v89 = v143[0] + ((v88 + 32) & ~v88);
      v133 = *(v127 + 72);
      v127 += 16;
      v132 = (v127 - 8);
      v90 = v122;
      (v140)(v86, v89, v122);
      while (1)
      {
        v91 = sub_1E65DAD18();
        if (v92)
        {
          v93 = v91;
          v94 = v92;
          sub_1E63BFE70(v142, v134, MEMORY[0x1E69CD300]);
          v96 = v50[2];
          v95 = v50[3];
          v97 = v96 + 1;
          if (v96 >= v95 >> 1)
          {
            v50 = sub_1E64F6308(v95 > 1, v96 + 1, 1, v50);
          }

          v50[2] = v97;
          sub_1E60EB82C(v134, v50 + v53 + v96 * v54);
          sub_1E63BFE70(v142, v135, MEMORY[0x1E69CD300]);
          v98 = v50[3];
          v99 = v96 + 2;
          if (v99 > (v98 >> 1))
          {
            v50 = sub_1E64F6308(v98 > 1, v99, 1, v50);
          }

          v50[2] = v99;
          sub_1E60EB82C(v135, v50 + v53 + v97 * v54);
          v100 = sub_1E65DAD28();
          v101 = v136;
          *v136 = v100;
          v101[1] = v102;
          v101[2] = 0;
          v101[3] = 0;
          swift_storeEnumTagMultiPayload();
          v104 = v50[2];
          v103 = v50[3];
          v105 = v104 + 1;
          if (v104 >= v103 >> 1)
          {
            v50 = sub_1E64F6308(v103 > 1, v104 + 1, 1, v50);
          }

          v50[2] = v105;
          sub_1E60EB82C(v136, v50 + v53 + v104 * v54);
          sub_1E63BFE70(v142, v137, MEMORY[0x1E69CD300]);
          v106 = v50[3];
          v107 = v104 + 2;
          if ((v104 + 2) > (v106 >> 1))
          {
            v50 = sub_1E64F6308(v106 > 1, v104 + 2, 1, v50);
          }

          v50[2] = v107;
          sub_1E60EB82C(v137, v50 + v53 + v105 * v54);
          v108 = v138;
          *v138 = v93;
          v108[1] = v94;
          swift_storeEnumTagMultiPayload();
          v109 = v50[3];
          v110 = v104 + 3;
          if ((v104 + 3) > (v109 >> 1))
          {
            v50 = sub_1E64F6308(v109 > 1, v104 + 3, 1, v50);
          }

          v90 = v122;
          v86 = v139;
          (*v132)(v139, v122);
          v50[2] = v110;
          sub_1E60EB82C(v138, v50 + v53 + v107 * v54);
        }

        else
        {
          (*v132)(v86, v90);
        }

        v89 += v133;
        if (!--v87)
        {
          break;
        }

        (v140)(v86, v89, v90);
      }
    }

    sub_1E63C4134(v116, v117, v50, v115);

    return sub_1E63BFE10(v142, MEMORY[0x1E69CD300]);
  }

  return result;
}

unint64_t sub_1E63BCC3C()
{
  result = qword_1ED075928;
  if (!qword_1ED075928)
  {
    sub_1E65E3418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075928);
  }

  return result;
}

uint64_t sub_1E63BCC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CA8, &qword_1E65FF648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E63BCD04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v40 = a3;
  v7 = sub_1E65D74E8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E34A8();
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v38 - v15;
  v17 = *a1;
  v42 = a2;
  v18 = sub_1E65D8E68();
  v20 = v19;
  v43 = v18;
  v44 = v19;
  v22 = v21 & 1;
  v45 = v21 & 1;
  v46 = 0;
  sub_1E63BFEF4();
  sub_1E63BFF48();
  v23 = sub_1E65D7FE8();
  sub_1E5F87058(v18, v20, v22);
  if ((v23 & 1) == 0)
  {
    goto LABEL_3;
  }

  v24 = sub_1E65D8E68();
  v26 = v25;
  v43 = v24;
  v44 = v25;
  v28 = v27 & 1;
  v45 = v27 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782A8, &qword_1E65FBB38);
  sub_1E65D7FB8();
  sub_1E5F87058(v24, v26, v28);
  v29 = v46;
  if (v46 != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CC8, &qword_1E65FF658);
    v31 = *(sub_1E65E34C8() - 8);
    v32 = *(v31 + 72);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1E65EA670;
    v40 = sub_1E65DAD28();
    v38[1] = v35;
    v36 = v39;
    v37 = MEMORY[0x1E699ECB0];
    if ((v29 & 1) == 0)
    {
      v37 = MEMORY[0x1E699ECB8];
    }

    (*(v39 + 104))(v14, *v37, v10);
    (*(v36 + 32))(v16, v14, v10);
    sub_1E65D8E58();
    sub_1E65E34B8();
    v43 = v17;

    result = sub_1E5FAA258(v34);
    *a4 = v43;
  }

  else
  {
LABEL_3:
    *a4 = v17;
  }

  return result;
}

uint64_t sub_1E63BD048(void **a1)
{
  v2 = *(sub_1E65D7D58() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B21C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E63BD210(v6, MEMORY[0x1E69CB058], sub_1E63BD974, sub_1E63BD360);
  *a1 = v3;
  return result;
}

uint64_t sub_1E63BD12C(void **a1)
{
  v2 = *(sub_1E65DAD48() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B2A8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E63BD210(v6, MEMORY[0x1E69CD280], sub_1E63BE530, sub_1E63BD66C);
  *a1 = v3;
  return result;
}

uint64_t sub_1E63BD210(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1E65E6BA8();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1E65E5F98();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1E63BD360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E65D7D58();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_1E65D7D48();
      v28 = v27;
      if (v26 == sub_1E65D7D48() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_1E65E6C18();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E63BD66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E65DAD48();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_1E65DAD28();
      v28 = v27;
      if (sub_1E65DAD28() == v26 && v29 == v28)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_1E65E6C18();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E63BD974(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_1E65D7D58();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x1EEE9AC00](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_1E63BF0E0(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1E636AC44(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_1E636ABB8(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_1E636AC44(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x1E69E7CC0];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_1E65D7D48();
      v38 = v37;
      v39 = sub_1E65D7D48();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_1E65E6C18();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_1E65D7D48();
        v53 = v52;
        if (v51 == sub_1E65D7D48() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_1E65E6C18();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_1E636ADD0((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
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

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_1E63BF0E0(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1E636AC44(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_1E636ABB8(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_1E65D7D48();
    v70 = v69;
    if (v5 == sub_1E65D7D48() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_1E65E6C18();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
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
  return result;
}

uint64_t sub_1E63BE530(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_1E65DAD48();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x1EEE9AC00](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_1E63BF77C(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1E636AC44(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_1E636ABB8(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_1E636AC44(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x1E69E7CC0];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_1E65DAD28();
      v38 = v37;
      v39 = sub_1E65DAD28();
      v132 = v6;
      if (v39 == v32 && v40 == v38)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_1E65E6C18();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_1E65DAD28();
        v53 = v52;
        if (sub_1E65DAD28() == v51 && v54 == v53)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_1E65E6C18();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_1E636ADD0((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
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

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_1E63BF77C(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1E636AC44(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_1E636ABB8(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_1E65DAD28();
    v70 = v69;
    if (sub_1E65DAD28() == v5 && v71 == v70)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_1E65E6C18();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
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
  return result;
}

uint64_t sub_1E63BF0E0(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_1E65D7D58();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_1E65D7D48();
            v53 = v52;
            if (v51 != sub_1E65D7D48())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_1E65E6C18();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_1E65D7D48();
        v33 = v32;
        if (v31 == sub_1E65D7D48() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_1E65E6C18();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_1E636AC58(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_1E63BF77C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_1E65DAD48();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_1E65DAD28();
            v53 = v52;
            if (sub_1E65DAD28() != v51)
            {
              goto LABEL_51;
            }

            if (v54 == v53)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_1E65E6C18();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_1E65DAD28();
        v33 = v32;
        if (sub_1E65DAD28() == v31 && v34 == v33)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_1E65E6C18();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_1E636ACD0(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_1E63BFE10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E63BFE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E63BFEF4()
{
  result = qword_1ED078CB8;
  if (!qword_1ED078CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078CB8);
  }

  return result;
}

unint64_t sub_1E63BFF48()
{
  result = qword_1ED078CC0;
  if (!qword_1ED078CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078CC0);
  }

  return result;
}

uint64_t sub_1E63BFFC8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1E65E4548();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CD0, &qword_1E6600110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CD8, &qword_1E65FF6C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  sub_1E65E42A8();
  sub_1E65E4BA8();
  sub_1E65E3CF8();
  v14 = &v13[*(v10 + 36)];
  v15 = v36;
  *v14 = v35;
  *(v14 + 1) = v15;
  *(v14 + 2) = v37;
  sub_1E65E4B58();
  v16 = MEMORY[0x1E6981CD0];
  v17 = MEMORY[0x1E6981CD8];
  sub_1E65E3FB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CE0, &qword_1E65FF6C8);
  sub_1E63C0404();
  v33 = v17;
  v34 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1E63C04E8();
  v18 = v30;
  sub_1E65E4938();
  (*(v6 + 8))(v9, v5);
  sub_1E63C05A0(v13);
  sub_1E65E4498();
  sub_1E65E44B8();

  v20 = v31;
  v19 = v32;
  (*(v31 + 104))(v4, *MEMORY[0x1E6980EA8], v32);
  v21 = sub_1E65E4578();

  (*(v20 + 8))(v4, v19);
  KeyPath = swift_getKeyPath();
  v23 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078D10, &qword_1E65FF708) + 36));
  *v23 = KeyPath;
  v23[1] = v21;
  v24 = sub_1E65E49C8();
  v25 = swift_getKeyPath();
  v33 = v24;
  v26 = sub_1E65E3D08();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078D18, &qword_1E65FF740);
  v28 = (v18 + *(result + 36));
  *v28 = v25;
  v28[1] = v26;
  return result;
}

uint64_t sub_1E63C0378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CE0, &qword_1E65FF6C8) + 36);
  sub_1E65E4B18();
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078D08, &qword_1E65FF6D0) + 56)) = 256;

  return sub_1E63C0608(a1, a2);
}

unint64_t sub_1E63C0404()
{
  result = qword_1ED078CE8;
  if (!qword_1ED078CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078CD8, &qword_1E65FF6C0);
    sub_1E63C0490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078CE8);
  }

  return result;
}

unint64_t sub_1E63C0490()
{
  result = qword_1ED078CF0;
  if (!qword_1ED078CF0)
  {
    sub_1E65E4298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078CF0);
  }

  return result;
}

unint64_t sub_1E63C04E8()
{
  result = qword_1ED078CF8;
  if (!qword_1ED078CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078CE0, &qword_1E65FF6C8);
    sub_1E63C0404();
    sub_1E5FED46C(&qword_1ED078D00, &qword_1ED078D08, &qword_1E65FF6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078CF8);
  }

  return result;
}

uint64_t sub_1E63C05A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CD8, &qword_1E65FF6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E63C0608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CD8, &qword_1E65FF6C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E63C0678()
{
  result = qword_1ED078D20;
  if (!qword_1ED078D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078D18, &qword_1E65FF740);
    sub_1E63C0730();
    sub_1E5FED46C(&qword_1EE2D4C00, &unk_1ED07A430, &qword_1E65EC470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078D20);
  }

  return result;
}

unint64_t sub_1E63C0730()
{
  result = qword_1ED078D28;
  if (!qword_1ED078D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078D10, &qword_1E65FF708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078CD8, &qword_1E65FF6C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078CD0, &qword_1E6600110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078CE0, &qword_1E65FF6C8);
    sub_1E63C0404();
    swift_getOpaqueTypeConformance2();
    sub_1E63C04E8();
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4BE8, &unk_1ED0779E0, &qword_1E65EC400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078D28);
  }

  return result;
}

uint64_t sub_1E63C08AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v36 - v20;
  sub_1E65DECB8();
  if (v22)
  {

    v23 = sub_1E65D7A38();
    v24 = *(*(v23 - 8) + 56);

    return v24(a3, 1, 1, v23);
  }

  else
  {
    v26 = *MEMORY[0x1E69CBDC0];
    v27 = sub_1E65D8F38();
    v36 = a2;
    v37 = a3;
    v28 = v27;
    v29 = a1;
    v30 = *(v27 - 8);
    (*(v30 + 104))(v21, v26, v27);
    (*(v30 + 56))(v21, 0, 1, v28);
    sub_1E65DEC88();
    v31 = sub_1E65D74E8();
    (*(*(v31 - 8) + 56))(v17, 0, 1, v31);
    v32 = sub_1E65D9908();
    (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
    v33 = sub_1E65D9F88();
    (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
    sub_1E5FA9D34(v29, v36);
    v34 = v37;
    sub_1E65D7A28();
    v35 = sub_1E65D7A38();
    return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  }
}

uint64_t NavigationBarButtonProgressViewStyle.init(lineWidth:backgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

double NavigationBarButtonProgressViewStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1E65E4388();
  if (v5)
  {

    sub_1E65E4A68();
    sub_1E63C0DC0();
    sub_1E63C0E14();
  }

  else
  {
    sub_1E63C0DC0();
    sub_1E63C0E14();
  }

  sub_1E65E4138();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

unint64_t sub_1E63C0DC0()
{
  result = qword_1ED078D30;
  if (!qword_1ED078D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078D30);
  }

  return result;
}

unint64_t sub_1E63C0E14()
{
  result = qword_1ED078D38;
  if (!qword_1ED078D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078D38);
  }

  return result;
}

unint64_t sub_1E63C0E98()
{
  result = qword_1ED078D40;
  if (!qword_1ED078D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078D48, &qword_1E65FF7E8);
    sub_1E63C0DC0();
    sub_1E63C0E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078D40);
  }

  return result;
}

uint64_t sub_1E63C0F24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E63C0F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E63C0FD0(uint64_t a1, int a2)
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

uint64_t sub_1E63C1018(uint64_t result, int a2, int a3)
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

uint64_t sub_1E63C1084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  sub_1E63C1A48(a1, v52);

  sub_1E65E4C18();
  v15 = v14;
  v17 = v16;
  v18 = *(a1 + 16);
  v42 = *a1;
  v43 = v18;
  v44 = *(a1 + 32);

  v19 = sub_1E65E41D8();
  *(&v49 + 1) = a4;
  *&v50 = 0xBFF921FB54442D18;
  *(&v50 + 1) = v15;
  *v51 = v17;
  v20 = v44;
  *&v51[40] = v44;
  *&v51[48] = v19;
  *&v51[52] = 256;
  *(&v41[5] + 6) = *&v51[46];
  *&v45 = v8;
  *(&v45 + 1) = __PAIR64__(v10, v9);
  *&v46 = v11;
  *(&v46 + 1) = v12;
  *&v47 = v13;
  *(&v47 + 1) = a2;
  v48 = 256;
  LOWORD(v41[0]) = 256;
  v38 = v45;
  v39 = v46;
  v40 = v47;
  *&v49 = 0;
  v21 = v42;
  *&v51[24] = v43;
  *&v51[8] = v42;
  *(&v41[1] + 8) = v50;
  *(v41 + 8) = v49;
  *(&v41[4] + 8) = *&v51[32];
  *(&v41[3] + 8) = *&v51[16];
  *(&v41[2] + 8) = *v51;
  v22 = v45;
  v23 = v46;
  v24 = v41[0];
  v25 = v41[1];
  a3[2] = v47;
  a3[3] = v24;
  *a3 = v22;
  a3[1] = v23;
  v26 = v41[2];
  v27 = v41[3];
  *(a3 + 126) = *(&v41[4] + 14);
  v28 = v41[4];
  a3[6] = v27;
  a3[7] = v28;
  a3[4] = v25;
  a3[5] = v26;
  v52[0] = 0;
  *&v52[1] = a4;
  v52[2] = 0xBFF921FB54442D18;
  v52[3] = v15;
  v52[4] = v17;
  v53 = v21;
  v54 = v43;
  v55 = v20;
  v56 = v19;
  v57 = 256;
  sub_1E5DFD1CC(&v45, &v30, &qword_1ED078D58, &qword_1E65FF920);
  sub_1E5DFD1CC(&v49, &v30, &qword_1ED078D60, &qword_1E65FF928);
  sub_1E5DFE50C(v52, &qword_1ED078D60, &qword_1E65FF928);
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v36 = a2;
  v37 = 256;
  return sub_1E5DFE50C(&v30, &qword_1ED078D58, &qword_1E65FF920);
}

__n128 sub_1E63C12CC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  sub_1E65E3C98();
  v6 = sub_1E65E4BA8();
  v8 = v7;
  sub_1E63C1084(v22, v5, &v14, v3);
  v29 = v20;
  v30[0] = v21[0];
  *(v30 + 14) = *(v21 + 14);
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v23 = v14;
  v24 = v15;
  v31[5] = v19;
  v31[6] = v20;
  v32[0] = v21[0];
  *(v32 + 14) = *(v21 + 14);
  v31[2] = v16;
  v31[3] = v17;
  v31[4] = v18;
  v31[0] = v14;
  v31[1] = v15;
  sub_1E5DFD1CC(&v23, &v13, &qword_1ED078D50, &qword_1E65FF918);
  sub_1E5DFE50C(v31, &qword_1ED078D50, &qword_1E65FF918);
  sub_1E63C19F4(v22);
  *a1 = v6;
  *(a1 + 8) = v8;
  v9 = v30[0];
  *(a1 + 112) = v29;
  *(a1 + 128) = v9;
  *(a1 + 142) = *(v30 + 14);
  v10 = v26;
  *(a1 + 48) = v25;
  *(a1 + 64) = v10;
  v11 = v28;
  *(a1 + 80) = v27;
  *(a1 + 96) = v11;
  result = v24;
  *(a1 + 16) = v23;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1E63C1454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v13 = *(a1 + 8);
  v14 = *(a1 + 12);
  v15 = *(a1 + 16);
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  v18 = v16;
  v19 = *(a1 + 16);
  v47 = *a1;
  v12 = v47;
  v48 = v19;
  v49 = v16;

  sub_1E63C1A48(a1, v61);

  v20 = sub_1E65E41D8();
  *v61 = a6;
  *(&v61[0] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078D70, &qword_1E65FF938);
  sub_1E65E4A78();
  v21 = *v54 * 0.0174532925;
  sub_1E65E4C18();
  v23 = v22;
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a2;
  *(v26 + 32) = a6;
  *(v26 + 40) = a3;
  *&v50 = v12;
  *(&v50 + 1) = __PAIR64__(v14, v13);
  *&v51 = v15;
  *(&v51 + 1) = v17;
  *&v52 = v18;
  *(&v52 + 1) = a2;
  v53 = 256;
  *v46 = 256;
  v43 = v50;
  v44 = v51;
  v45 = v52;
  *&v55 = v49;
  v54[1] = v47;
  v54[2] = v48;
  v54[0] = xmmword_1E65FF750;
  DWORD2(v55) = v20;
  WORD6(v55) = 256;
  *&v56 = v21;
  *(&v56 + 1) = v23;
  *&v57 = v25;
  *(&v57 + 1) = sub_1E63C1AA4;
  v58 = v26;
  v59 = 0;
  v60 = 0;
  *&v46[56] = v55;
  *&v46[40] = v48;
  *&v46[24] = v47;
  *&v46[8] = xmmword_1E65FF750;
  *&v46[120] = 0;
  *&v46[104] = v26;
  *&v46[88] = v57;
  *&v46[72] = v56;
  v27 = v51;
  v28 = v52;
  *a4 = v50;
  a4[1] = v27;
  v29 = *v46;
  v30 = *&v46[32];
  v31 = *&v46[48];
  a4[4] = *&v46[16];
  a4[5] = v30;
  a4[2] = v28;
  a4[3] = v29;
  v32 = *&v46[112];
  a4[9] = *&v46[96];
  a4[10] = v32;
  v33 = *&v46[80];
  a4[7] = *&v46[64];
  a4[8] = v33;
  a4[6] = v31;
  v61[0] = xmmword_1E65FF750;
  v61[1] = v47;
  v61[2] = v48;
  v62 = v49;
  v63 = v20;
  v64 = 256;
  v65 = v21;
  v66 = v23;
  v67 = v25;
  v68 = sub_1E63C1AA4;
  v69 = v26;
  v71 = 0;
  v70 = 0;

  sub_1E5DFD1CC(&v50, &v35, &qword_1ED078D58, &qword_1E65FF920);
  sub_1E5DFD1CC(v54, &v35, &qword_1ED078D78, &qword_1E65FF940);
  sub_1E5DFE50C(v61, &qword_1ED078D78, &qword_1E65FF940);
  v35 = v12;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v39 = v17;
  v40 = v18;
  v41 = a2;
  v42 = 256;
  return sub_1E5DFE50C(&v35, &qword_1ED078D58, &qword_1E65FF920);
}

uint64_t sub_1E63C173C()
{
  sub_1E65E4BE8();
  sub_1E65E4BD8();

  sub_1E65E4BC8();

  sub_1E65E3D58();
}

__n128 sub_1E63C180C@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[2];
  v6 = *(v1 + 3);
  sub_1E65E3C98();
  v7 = sub_1E65E4BA8();
  v9 = v8;
  sub_1E63C1454(v27, v4, v6, &v16, v3, v5);
  v36 = v24;
  v37 = v25;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v39[7] = v23;
  v39[8] = v24;
  v39[9] = v25;
  v39[10] = v26;
  v39[3] = v19;
  v39[4] = v20;
  v39[5] = v21;
  v39[6] = v22;
  v38 = v26;
  v39[0] = v16;
  v39[1] = v17;
  v39[2] = v18;
  sub_1E5DFD1CC(&v28, &v15, &qword_1ED078D68, &qword_1E65FF930);
  sub_1E5DFE50C(v39, &qword_1ED078D68, &qword_1E65FF930);
  sub_1E63C19F4(v27);
  a1->n128_u64[0] = v7;
  a1->n128_u64[1] = v9;
  v10 = v37;
  a1[9] = v36;
  a1[10] = v10;
  a1[11] = v38;
  v11 = v33;
  a1[5] = v32;
  a1[6] = v11;
  v12 = v35;
  a1[7] = v34;
  a1[8] = v12;
  v13 = v29;
  a1[1] = v28;
  a1[2] = v13;
  result = v31;
  a1[3] = v30;
  a1[4] = result;
  return result;
}

uint64_t sub_1E63C1AA4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1E63C173C();
}

uint64_t sub_1E63C1AB8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078D70, &qword_1E65FF938);
  return sub_1E65E4A88();
}

uint64_t sub_1E63C1B24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E63C1B98(uint64_t a1)
{
  v2 = sub_1E63C26B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1BD4(uint64_t a1)
{
  v2 = sub_1E63C26B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E63C1C10()
{
  v1 = *v0;
  v2 = 0x6D6574496F6ELL;
  v3 = 0xD000000000000012;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0x6C6572726F436F6ELL;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1E63C1CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E63C3660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E63C1D0C(uint64_t a1)
{
  v2 = sub_1E63C25BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1D48(uint64_t a1)
{
  v2 = sub_1E63C25BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63C1D84(uint64_t a1)
{
  v2 = sub_1E63C2664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1DC0(uint64_t a1)
{
  v2 = sub_1E63C2664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63C1DFC(uint64_t a1)
{
  v2 = sub_1E63C2610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1E38(uint64_t a1)
{
  v2 = sub_1E63C2610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63C1E74(uint64_t a1)
{
  v2 = sub_1E63C270C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1EB0(uint64_t a1)
{
  v2 = sub_1E63C270C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63C1EEC(uint64_t a1)
{
  v2 = sub_1E63C27B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1F28(uint64_t a1)
{
  v2 = sub_1E63C27B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63C1F64(uint64_t a1)
{
  v2 = sub_1E63C2760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63C1FA0(uint64_t a1)
{
  v2 = sub_1E63C2760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MarketingItemError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DA0, &qword_1E65FF960);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DA8, &qword_1E65FF968);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DB0, &qword_1E65FF970);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DB8, &qword_1E65FF978);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DC0, &qword_1E65FF980);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DC8, &qword_1E65FF988);
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078DD0, &qword_1E65FF990);
  v22 = *(v50 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v25 = &v34 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E63C25BC();
  sub_1E65E6DA8();
  v28 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v54 = 3;
      sub_1E63C26B8();
      v29 = v41;
      v30 = v50;
      sub_1E65E6B18();
      v32 = v42;
      v31 = v43;
    }

    else if (v26 == 4)
    {
      v55 = 4;
      sub_1E63C2664();
      v29 = v44;
      v30 = v50;
      sub_1E65E6B18();
      v32 = v45;
      v31 = v46;
    }

    else
    {
      v56 = 5;
      sub_1E63C2610();
      v29 = v47;
      v30 = v50;
      sub_1E65E6B18();
      v32 = v48;
      v31 = v49;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v52 = 1;
      sub_1E63C2760();
      v29 = v35;
      v30 = v50;
      sub_1E65E6B18();
      v32 = v36;
      v31 = v37;
    }

    else
    {
      v53 = 2;
      sub_1E63C270C();
      v29 = v38;
      v30 = v50;
      sub_1E65E6B18();
      v32 = v39;
      v31 = v40;
    }

LABEL_12:
    (*(v32 + 8))(v29, v31);
    return (*v28)(v25, v30);
  }

  v51 = 0;
  sub_1E63C27B4();
  v30 = v50;
  sub_1E65E6B18();
  (*(v34 + 8))(v21, v18);
  return (*v28)(v25, v30);
}

unint64_t sub_1E63C25BC()
{
  result = qword_1ED078DD8;
  if (!qword_1ED078DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078DD8);
  }

  return result;
}

unint64_t sub_1E63C2610()
{
  result = qword_1ED078DE0;
  if (!qword_1ED078DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078DE0);
  }

  return result;
}

unint64_t sub_1E63C2664()
{
  result = qword_1ED078DE8;
  if (!qword_1ED078DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078DE8);
  }

  return result;
}

unint64_t sub_1E63C26B8()
{
  result = qword_1ED078DF0;
  if (!qword_1ED078DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078DF0);
  }

  return result;
}

unint64_t sub_1E63C270C()
{
  result = qword_1ED078DF8;
  if (!qword_1ED078DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078DF8);
  }

  return result;
}

unint64_t sub_1E63C2760()
{
  result = qword_1ED078E00;
  if (!qword_1ED078E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E00);
  }

  return result;
}

unint64_t sub_1E63C27B4()
{
  result = qword_1ED078E08;
  if (!qword_1ED078E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E08);
  }

  return result;
}

uint64_t MarketingItemError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E10, &qword_1E65FF998);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E18, &qword_1E65FF9A0);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v48 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E20, &qword_1E65FF9A8);
  v55 = *(v50 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v62 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E28, &qword_1E65FF9B0);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E30, &qword_1E65FF9B8);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E38, &qword_1E65FF9C0);
  v49 = *(v19 - 8);
  v20 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078E40, &unk_1E65FF9C8);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1E63C25BC();
  v30 = v65;
  sub_1E65E6D98();
  if (!v30)
  {
    v31 = v22;
    v48 = v19;
    v65 = v18;
    v33 = v62;
    v32 = v63;
    v34 = v64;
    v35 = sub_1E65E6AF8();
    v36 = (2 * *(v35 + 16)) | 1;
    v67 = v35;
    v68 = v35 + 32;
    v69 = 0;
    v70 = v36;
    v37 = sub_1E5FBE3E8();
    v38 = v27;
    if (v37 == 6 || v69 != v70 >> 1)
    {
      v42 = sub_1E65E68F8();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
      *v44 = &type metadata for MarketingItemError;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v24 + 8))(v27, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = v37;
      if (v37 > 2u)
      {
        v47 = v61;
        if (v37 == 3)
        {
          v72 = 3;
          sub_1E63C26B8();
          sub_1E65E6A68();
          (*(v55 + 8))(v33, v50);
        }

        else if (v37 == 4)
        {
          v72 = 4;
          sub_1E63C2664();
          sub_1E65E6A68();
          (*(v57 + 8))(v32, v56);
        }

        else
        {
          v72 = 5;
          sub_1E63C2610();
          sub_1E65E6A68();
          (*(v58 + 8))(v34, v59);
        }

        (*(v24 + 8))(v38, v23);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v37)
        {
          if (v37 == 1)
          {
            v72 = 1;
            sub_1E63C2760();
            v39 = v65;
            sub_1E65E6A68();
            v41 = v51;
            v40 = v52;
          }

          else
          {
            v72 = 2;
            sub_1E63C270C();
            v39 = v60;
            sub_1E65E6A68();
            v41 = v53;
            v40 = v54;
          }

          (*(v41 + 8))(v39, v40);
        }

        else
        {
          v72 = 0;
          sub_1E63C27B4();
          sub_1E65E6A68();
          (*(v49 + 8))(v31, v48);
        }

        (*(v24 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v47 = v61;
      }

      *v47 = v71;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t MarketingItemError.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E63C3064()
{
  result = qword_1ED078E48;
  if (!qword_1ED078E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E48);
  }

  return result;
}

unint64_t sub_1E63C313C()
{
  result = qword_1ED078E50;
  if (!qword_1ED078E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E50);
  }

  return result;
}

unint64_t sub_1E63C3194()
{
  result = qword_1ED078E58;
  if (!qword_1ED078E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E58);
  }

  return result;
}

unint64_t sub_1E63C31EC()
{
  result = qword_1ED078E60;
  if (!qword_1ED078E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E60);
  }

  return result;
}

unint64_t sub_1E63C3244()
{
  result = qword_1ED078E68;
  if (!qword_1ED078E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E68);
  }

  return result;
}

unint64_t sub_1E63C329C()
{
  result = qword_1ED078E70;
  if (!qword_1ED078E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E70);
  }

  return result;
}

unint64_t sub_1E63C32F4()
{
  result = qword_1ED078E78;
  if (!qword_1ED078E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E78);
  }

  return result;
}

unint64_t sub_1E63C334C()
{
  result = qword_1ED078E80;
  if (!qword_1ED078E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E80);
  }

  return result;
}

unint64_t sub_1E63C33A4()
{
  result = qword_1ED078E88;
  if (!qword_1ED078E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E88);
  }

  return result;
}

unint64_t sub_1E63C33FC()
{
  result = qword_1ED078E90;
  if (!qword_1ED078E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E90);
  }

  return result;
}

unint64_t sub_1E63C3454()
{
  result = qword_1ED078E98;
  if (!qword_1ED078E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078E98);
  }

  return result;
}

unint64_t sub_1E63C34AC()
{
  result = qword_1ED078EA0;
  if (!qword_1ED078EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078EA0);
  }

  return result;
}

unint64_t sub_1E63C3504()
{
  result = qword_1ED078EA8;
  if (!qword_1ED078EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078EA8);
  }

  return result;
}

unint64_t sub_1E63C355C()
{
  result = qword_1ED078EB0;
  if (!qword_1ED078EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078EB0);
  }

  return result;
}

unint64_t sub_1E63C35B4()
{
  result = qword_1ED078EB8;
  if (!qword_1ED078EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078EB8);
  }

  return result;
}

unint64_t sub_1E63C360C()
{
  result = qword_1ED078EC0;
  if (!qword_1ED078EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078EC0);
  }

  return result;
}

uint64_t sub_1E63C3660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6574496F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6616AE0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6572726F436F6ELL && a2 == 0xEF44496E6F697461 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E6616B00 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E6616B20 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E6616B40 == a2)
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

uint64_t sub_1E63C389C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1E65E4BA8();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078EE0, &qword_1E6600108);
  return sub_1E63C38EC(a1, a2 + *(v5 + 44));
}

uint64_t sub_1E63C38EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a1;
  v38 = a2;
  v37 = sub_1E65E4208();
  v30 = *(v37 - 8);
  v2 = v30;
  v3 = *(v30 + 64);
  v4 = MEMORY[0x1EEE9AC00](v37);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CD0, &qword_1E6600110);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078EE8, &qword_1E6600118);
  v33 = *(v9 - 8);
  v10 = v33;
  v11 = *(v33 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v32 = &v29 - v15;
  sub_1E65E4B58();
  v17 = MEMORY[0x1E6981CD0];
  v18 = MEMORY[0x1E6981CD8];
  sub_1E65E3FB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078EF0, &qword_1E6600120);
  v39 = v18;
  v40 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1E63C3EE4();
  sub_1E65E4B78();
  v19 = v34;
  sub_1E65E4218();
  v20 = *(v10 + 16);
  v31 = v14;
  v20(v14, v16, v9);
  v21 = *(v2 + 16);
  v22 = v35;
  v23 = v37;
  v21(v35, v19, v37);
  v24 = v38;
  v20(v38, v14, v9);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F28, &qword_1E6600138);
  v21(&v24[*(v25 + 48)], v22, v23);
  v26 = *(v30 + 8);
  v26(v19, v23);
  v27 = *(v33 + 8);
  v27(v32, v9);
  v26(v22, v23);
  return (v27)(v31, v9);
}

uint64_t sub_1E63C3C80@<X0>(uint64_t a1@<X8>)
{
  sub_1E65E4BA8();
  sub_1E65E3CF8();
  v2 = sub_1E65E4998();
  KeyPath = swift_getKeyPath();
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078EF0, &qword_1E6600120) + 36);
  sub_1E65E4B18();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078D08, &qword_1E65FF6D0);
  *(v4 + *(result + 56)) = 256;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = v2;
  return result;
}

uint64_t sub_1E63C3D7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078EC8, &qword_1E6600100);
  sub_1E65E4228();
  sub_1E5FED46C(&qword_1ED078ED0, &qword_1ED078EC8, &qword_1E6600100);
  sub_1E63C3E8C();
  return sub_1E65E45C8();
}

unint64_t sub_1E63C3E8C()
{
  result = qword_1ED078ED8;
  if (!qword_1ED078ED8)
  {
    sub_1E65E4228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078ED8);
  }

  return result;
}

unint64_t sub_1E63C3EE4()
{
  result = qword_1ED078EF8;
  if (!qword_1ED078EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078EF0, &qword_1E6600120);
    sub_1E63C3F9C();
    sub_1E5FED46C(&qword_1ED078D00, &qword_1ED078D08, &qword_1E65FF6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078EF8);
  }

  return result;
}

unint64_t sub_1E63C3F9C()
{
  result = qword_1ED078F00;
  if (!qword_1ED078F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078F08, &qword_1E6600128);
    sub_1E63C4054();
    sub_1E5FED46C(&qword_1EE2D4BE0, &qword_1ED0738C8, &qword_1E65EDF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078F00);
  }

  return result;
}

unint64_t sub_1E63C4054()
{
  result = qword_1ED078F10;
  if (!qword_1ED078F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078F18, &qword_1E6600130);
    sub_1E63C40E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078F10);
  }

  return result;
}

unint64_t sub_1E63C40E0()
{
  result = qword_1ED078F20;
  if (!qword_1ED078F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078F20);
  }

  return result;
}

uint64_t sub_1E63C4134@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v27 = a1;
  v28 = a2;
  v6 = sub_1E65D72D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = sub_1E65DADF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E65D72C8();
  v20 = *(a3 + 16);
  if (v20)
  {
    v21 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v26 = *(v15 + 72);
    v22 = (v7 + 8);
    v23 = (v7 + 32);
    do
    {
      sub_1E6277CFC(v21, v18);
      sub_1E63C4554(v27, v28, v11);
      sub_1E65D7258();
      v24 = *v22;
      (*v22)(v11, v6);
      v24(a4, v6);
      sub_1E6277D60(v18);
      result = (*v23)(a4, v13, v6);
      v21 += v26;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_1E63C4344(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1E601CFC8(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 32);
    v5 = MEMORY[0x1E69E63B0];
    v6 = MEMORY[0x1E69E6438];
    do
    {
      v7 = *v4;
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1E601CFC8((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = v6;
      *&v11 = v7;
      *(v2 + 16) = v9 + 1;
      sub_1E5DF599C(&v11, v2 + 40 * v9 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1E63C4438@<X0>(uint64_t *a1@<X8>)
{
  sub_1E65D71E8();
  result = sub_1E65D71D8();
  *a1 = result;
  return result;
}

uint64_t sub_1E63C448C(uint64_t a1)
{
  v2 = sub_1E65E0808();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E65D71C8();
}

uint64_t sub_1E63C4554@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v251 = a2;
  v269 = a1;
  v271 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F40, &qword_1E6600178);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v256 = &v232 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v260 = &v232 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v259 = &v232 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F48, &qword_1E6600180);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v258 = &v232 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v254 = &v232 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v249 = &v232 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v255 = &v232 - v19;
  v261 = sub_1E65D7908();
  v264 = *(v261 - 8);
  v20 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v261);
  v22 = &v232 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v232 - v25;
  v253 = sub_1E65D76A8();
  v252 = *(v253 - 8);
  v27 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v253);
  v236 = &v232 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = sub_1E65D71A8();
  v262 = *(KeyPath - 8);
  v29 = *(v262 + 64);
  v30 = MEMORY[0x1EEE9AC00](KeyPath);
  v257 = &v232 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v250 = &v232 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BD8, &qword_1E65F7920);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v235 = &v232 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v234 = &v232 - v37;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BE0, &qword_1E65F7928);
  v38 = *(*(v238 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v238);
  v239 = &v232 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v237 = &v232 - v41;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BE8, &qword_1E65F7930);
  v42 = *(*(v240 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v240);
  v233 = &v232 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v232 = &v232 - v45;
  v248 = sub_1E65D72A8();
  v241 = *(v248 - 8);
  v46 = *(v241 + 64);
  v47 = MEMORY[0x1EEE9AC00](v248);
  v247 = &v232 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v246 = &v232 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v245 = &v232 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v244 = &v232 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v58 = &v232 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v232 - v59;
  v265 = sub_1E65D72D8();
  v268 = *(v265 - 8);
  v61 = *(v268 + 64);
  v62 = MEMORY[0x1EEE9AC00](v265);
  v243 = &v232 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  MEMORY[0x1EEE9AC00](v64);
  v242 = &v232 - v65;
  v66 = sub_1E65D7348();
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66 - 8);
  v270 = &v232 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1E65D7848();
  v266 = *(v69 - 8);
  v267 = v69;
  v70 = v266[8];
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v232 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1E65E5C28();
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73 - 8);
  v75 = sub_1E65E5C08();
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75 - 8);
  v77 = sub_1E65DADF8();
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v80 = (&v232 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E6277CFC(v272, v80);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v119 = *v80;
      sub_1E65E5BF8();
      sub_1E65E5BE8();
      *&v273 = v119;
      sub_1E65E5BC8();
      sub_1E65E5BE8();
      sub_1E65E5C18();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v121 = [objc_opt_self() bundleForClass_];
      (v266[2])(v72, v269, v267);
      sub_1E65E5D48();
      goto LABEL_17;
    case 2u:
      v102 = v262;
      v103 = v250;
      v104 = KeyPath;
      (*(v262 + 32))(v250, v80, KeyPath);
      sub_1E65D78E8();
      sub_1E65D78B8();
      (*(v264 + 8))(v22, v261);
      v105 = v252;
      v106 = v253;
      if ((*(v252 + 48))(v26, 1, v253) == 1)
      {
        sub_1E5DFE50C(v26, &qword_1ED0752D8, &qword_1E660CC30);
        sub_1E65D72C8();
      }

      else
      {
        v159 = v236;
        (*(v105 + 32))(v236, v26, v106);
        v160 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        v161 = sub_1E65D7798();
        [v160 setLocale_];

        v162 = objc_opt_self();
        v163 = sub_1E65E5C48();
        v164 = sub_1E65D7798();
        v165 = [v162 dateFormatFromTemplate:v163 options:0 locale:v164];

        [v160 setDateFormat_];
        v166 = sub_1E65D7648();
        v167 = [v160 stringFromDate_];

        sub_1E65E5C78();
        sub_1E65D7338();
        sub_1E65D72E8();

        (*(v105 + 8))(v159, v106);
      }

      return (*(v102 + 8))(v103, v104);
    case 3u:
      v107 = *v80;
      v108 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
      v109 = [v108 calendar];
      if (v109)
      {
        v110 = v249;
        v111 = v109;
        sub_1E65D78A8();

        v112 = 0;
        v113 = v258;
        v114 = v257;
        v115 = v261;
        v116 = v255;
        v117 = v254;
      }

      else
      {
        v112 = 1;
        v113 = v258;
        v114 = v257;
        v115 = v261;
        v116 = v255;
        v117 = v254;
        v110 = v249;
      }

      v192 = v264;
      v193 = *(v264 + 56);
      v193(v110, v112, 1, v115);
      sub_1E5FAB460(v110, v116, &qword_1ED078F48, &qword_1E6600180);
      v194 = *(v192 + 48);
      if (v194(v116, 1, v115))
      {
        sub_1E5DFD1CC(v116, v117, &qword_1ED078F48, &qword_1E6600180);
        if (v194(v117, 1, v115) == 1)
        {
          v195 = 0;
        }

        else
        {
          v222 = v117;
          v195 = sub_1E65D7888();
          (*(v264 + 8))(v222, v115);
        }

        v223 = KeyPath;
        v224 = v262;
        [v108 setCalendar_];

        sub_1E5DFE50C(v116, &qword_1ED078F48, &qword_1E6600180);
      }

      else
      {
        v197 = v266;
        v196 = v267;
        v198 = v259;
        (v266[2])(v259, v269, v267);
        (v197[7])(v198, 0, 1, v196);
        sub_1E65D78D8();
        if (v194(v116, 1, v115) == 1)
        {
          v199 = 0;
        }

        else
        {
          v199 = sub_1E65D7888();
          (*(v264 + 8))(v116, v115);
        }

        v223 = KeyPath;
        v224 = v262;
        v113 = v258;
        [v108 setCalendar_];

        v114 = v257;
      }

      [v108 setUnitsStyle_];
      v193(v113, 1, 1, v115);
      v225 = sub_1E65D7918();
      result = (*(*(v225 - 8) + 56))(v256, 1, 1, v225);
      v226 = ceil(v107);
      if ((*&v226 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_69;
      }

      if (v226 <= -9.22337204e18)
      {
        goto LABEL_70;
      }

      if (v226 >= 9.22337204e18)
      {
        goto LABEL_71;
      }

      sub_1E65D7198();
      v227 = sub_1E65D7188() > 5400;
      if ((v228 | v227))
      {
        v229 = 112;
      }

      else
      {
        v229 = 64;
      }

      [v108 setAllowedUnits_];
      v230 = sub_1E65D7168();
      v231 = [v108 stringFromDateComponents_];

      if (v231)
      {
        sub_1E65E5C78();

        sub_1E65D7338();
        sub_1E65D72E8();
      }

      else
      {
        sub_1E65D72C8();
      }

      return (*(v224 + 8))(v114, v223);
    case 4u:
      v87 = *v80;
      v88 = v80[1];
      v89 = v80[3];
      v272 = v80[2];
      v90 = v80[4];
      sub_1E5DEF738(0, &qword_1EE2D4510, 0x1E69DC888);
      v91 = sub_1E63E9F24(v89, v90);
      if (!v91)
      {
        v92 = [objc_opt_self() whiteColor];
        v91 = [v92 colorWithAlphaComponent_];
      }

      sub_1E65E5C38();
      type metadata accessor for LocalizationBundle();
      v93 = swift_getObjCClassFromMetadata();
      v94 = [objc_opt_self() bundleForClass_];
      v95 = v266;
      v96 = v267;
      v97 = v266[2];
      v98 = v269;
      v97(v72, v269, v267);
      sub_1E65E5D48();
      v99 = v259;
      v97(v259, v98, v96);
      (v95[7])(v99, 0, 1, v96);
      sub_1E63C4344(v272);

      sub_1E65E5C98();

      sub_1E5DFE50C(v99, &qword_1ED071F80, &unk_1E65F4310);
      goto LABEL_21;
    case 5u:
      v122 = *v80;
      v123 = v80[1];
      v124 = v80[2];
      v125 = v80[3];
      sub_1E5DEF738(0, &qword_1EE2D4510, 0x1E69DC888);
      v91 = sub_1E63E9F24(v124, v125);
      if (!v91)
      {
        v126 = [objc_opt_self() whiteColor];
        v91 = [v126 colorWithAlphaComponent_];
      }

LABEL_21:
      sub_1E65D7338();
      sub_1E65D72E8();
      *&v273 = v91;
      sub_1E608F990();
      return sub_1E65D7308();
    case 6u:
      v127 = *v80;
      v128 = v80[1];
      v129 = v80[2];
      sub_1E65E5C38();
      type metadata accessor for LocalizationBundle();
      v130 = swift_getObjCClassFromMetadata();
      v131 = [objc_opt_self() bundleForClass_];
      v133 = v266;
      v132 = v267;
      v134 = v266[2];
      v135 = v269;
      v134(v72, v269, v267);
      v136 = sub_1E65E5CD8();
      v138 = v137;
      v139 = v260;
      v134(v260, v135, v132);
      (v133[7])(v139, 0, 1, v132);
      v140 = *(v129 + 16);
      if (!v140)
      {
        goto LABEL_46;
      }

      v269 = v136;
      v272 = v138;
      v276 = MEMORY[0x1E69E7CC0];
      result = sub_1E601CFC8(0, v140, 0);
      v141 = 32;
      v142 = v276;
      v143 = MEMORY[0x1E69E6530];
      v144 = MEMORY[0x1E69E65A8];
      break;
    case 7u:
      v118 = *v80;
      sub_1E65D8C38();
      return sub_1E65D7328();
    case 8u:
      v154 = *v80;
      v153 = v80[1];
      v155 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v156 = sub_1E65E5C48();
      [v155 initWithString_];

      swift_getKeyPath();
      v157 = sub_1E65D71D8();
      v158 = sub_1E63C7478(&qword_1ED076BF0, MEMORY[0x1E699D770]);
      sub_1E65D72F8();
      v266 = v158;
      v267 = v154;
      v269 = v157;
      v270 = v153;
      v201 = v268;
      v202 = v265;
      (*(v268 + 56))(v58, 0, 1, v265);
      v203 = *(v201 + 32);
      v268 = v201 + 32;
      v272 = v203;
      v203(v243, v58, v202);
      v204 = v246;
      sub_1E65D7208();
      v205 = v247;
      sub_1E65D72B8();
      sub_1E63C7478(&qword_1ED076BF8, MEMORY[0x1E69687E8]);
      v206 = v248;
      result = sub_1E65E5B88();
      if ((result & 1) == 0)
      {
        goto LABEL_73;
      }

      v207 = v241;
      v208 = *(v241 + 16);
      v209 = v237;
      v208(v237, v204, v206);
      v210 = v238;
      v208((v209 + *(v238 + 48)), v205, v206);
      v211 = v239;
      sub_1E5DFD1CC(v209, v239, &qword_1ED076BE0, &qword_1E65F7928);
      v212 = *(v210 + 48);
      v213 = *(v207 + 32);
      v214 = v233;
      v213(v233, v211, v206);
      v215 = *(v207 + 8);
      v215(v211 + v212, v206);
      v264 = v215;
      sub_1E5FAB460(v209, v211, &qword_1ED076BE0, &qword_1E65F7928);
      v213((v214 + *(v240 + 36)), v211 + *(v210 + 48), v206);
      v215(v211, v206);
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v216 = v235;
      sub_1E65E0AE8();
      v217 = sub_1E65E0AF8();
      (*(*(v217 - 8) + 56))(v216, 0, 1, v217);
      sub_1E63C7414();
      v218 = v243;
      v219 = sub_1E65D7318();
      v220 = sub_1E65D7368();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C08, &qword_1E65F7998);
      sub_1E63C7478(&qword_1ED076C10, MEMORY[0x1E699D9A0]);
      sub_1E65D73D8();
      v220(&v276, 0);

      v219(&v273, 0);
      sub_1E5DFE50C(v214, &qword_1ED076BE8, &qword_1E65F7930);
      v221 = v264;
      (v264)(v247, v206);
      v221(v246, v206);
      v190 = v271;
      v191 = v218;
      return v272(v190, v191, v265);
    case 9u:
      v100 = *v80;
      v101 = v80[1];
LABEL_17:
      sub_1E65D7338();
      return sub_1E65D72E8();
    case 0xAu:
      v149 = *v80;
      v148 = v80[1];
      v151 = v80[2];
      v150 = v80[3];
      v152 = v251[4];
      __swift_project_boxed_opaque_existential_1(v251, v251[3]);
      if (sub_1E65DB448())
      {

        sub_1E65D7338();
        return sub_1E65D72E8();
      }

      sub_1E65D7338();
      return sub_1E65D72E8();
    case 0xBu:
      v85 = *v80;
      v86 = v80[1];
      sub_1E63C679C();

    case 0xCu:
    case 0xDu:
    case 0x13u:
      return sub_1E63C679C();
    case 0xEu:
      sub_1E5DEF738(0, &qword_1ED078F50, 0x1E696AAB0);
      sub_1E65D7228();
      sub_1E65E63F8();
      swift_getKeyPath();
      v83 = sub_1E65D71D8();
      v84 = sub_1E63C7478(&qword_1ED076BF0, MEMORY[0x1E699D770]);
      sub_1E65D72F8();
      v267 = 0x80000001E6616B80;
      v269 = v84;
      v270 = v83;
      v168 = v268;
      v169 = v265;
      (*(v268 + 56))(v60, 0, 1, v265);
      v170 = *(v168 + 32);
      v268 = v168 + 32;
      v272 = v170;
      v170(v242, v60, v169);
      v171 = v244;
      sub_1E65D7208();
      v172 = v245;
      sub_1E65D72B8();
      sub_1E63C7478(&qword_1ED076BF8, MEMORY[0x1E69687E8]);
      v173 = v248;
      result = sub_1E65E5B88();
      if ((result & 1) == 0)
      {
        goto LABEL_72;
      }

      v175 = v241;
      v176 = *(v241 + 16);
      v177 = v237;
      v176(v237, v171, v173);
      v178 = v238;
      v176((v177 + *(v238 + 48)), v172, v173);
      v179 = v239;
      sub_1E5DFD1CC(v177, v239, &qword_1ED076BE0, &qword_1E65F7928);
      v180 = *(v178 + 48);
      v181 = *(v175 + 32);
      v182 = v232;
      v181(v232, v179, v173);
      v183 = *(v175 + 8);
      v183(v179 + v180, v173);
      v266 = v183;
      sub_1E5FAB460(v177, v179, &qword_1ED076BE0, &qword_1E65F7928);
      v181((v182 + *(v240 + 36)), v179 + *(v178 + 48), v173);
      v183(v179, v173);
      swift_getKeyPath();
      v264 = swift_getKeyPath();
      sub_1E65E4B48();
      v184 = v234;
      sub_1E65E0AE8();
      v185 = sub_1E65E0AF8();
      (*(*(v185 - 8) + 56))(v184, 0, 1, v185);
      sub_1E63C7414();
      v186 = v242;
      v187 = sub_1E65D7318();
      v188 = sub_1E65D7368();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C08, &qword_1E65F7998);
      sub_1E63C7478(&qword_1ED076C10, MEMORY[0x1E699D9A0]);
      sub_1E65D73D8();
      v188(&v276, 0);

      v187(&v273, 0);
      sub_1E5DFE50C(v182, &qword_1ED076BE8, &qword_1E65F7930);
      v189 = v266;
      (v266)(v245, v173);
      v189(v244, v173);
      v190 = v271;
      v191 = v186;
      return v272(v190, v191, v265);
    case 0xFu:
      return sub_1E63C6BB4();
    case 0x10u:
    case 0x11u:
    case 0x12u:
      return sub_1E63C6FD4();
    default:
      v81 = *v80;
      v82 = v80[1];
      sub_1E65E5CF8();

      sub_1E63C679C();
  }

  do
  {
    v145 = *(v129 + v141);
    if ((*&v145 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      return result;
    }

    if (v145 <= -9.22337204e18)
    {
      goto LABEL_67;
    }

    if (v145 >= 9.22337204e18)
    {
      goto LABEL_68;
    }

    v276 = v142;
    v147 = *(v142 + 16);
    v146 = *(v142 + 24);
    if (v147 >= v146 >> 1)
    {
      sub_1E601CFC8((v146 > 1), v147 + 1, 1);
      v142 = v276;
    }

    v274 = v143;
    v275 = v144;
    *&v273 = v145;
    *(v142 + 16) = v147 + 1;
    result = sub_1E5DF599C(&v273, v142 + 40 * v147 + 32);
    v141 += 8;
    --v140;
  }

  while (v140);
LABEL_46:

  v200 = v260;
  sub_1E65E5C98();

  sub_1E5DFE50C(v200, &qword_1ED071F80, &unk_1E65F4310);
  sub_1E65D7338();
  return sub_1E65D72E8();
}

uint64_t sub_1E63C679C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F58, &qword_1E66001E8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v31 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F60, &qword_1E66001F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F68, &qword_1E66001F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F70, &qword_1E6600200);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F78, &qword_1E6600208);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v31 - v21;
  v23 = sub_1E65D7348();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);

  sub_1E65D7338();
  sub_1E65D72E8();
  v25 = sub_1E65E45E8();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  v26 = sub_1E65E45F8();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  v27 = sub_1E65E4618();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  v28 = sub_1E65E45D8();
  (*(*(v28 - 8) + 56))(v3, 1, 1, v28);
  sub_1E65E4628();
  v29 = sub_1E65E4638();
  (*(*(v29 - 8) + 56))(v22, 0, 1, v29);
  sub_1E5DFD1CC(v22, v20, &qword_1ED078F78, &qword_1E6600208);
  sub_1E63C74C0();
  sub_1E65D7308();
  return sub_1E5DFE50C(v22, &qword_1ED078F78, &qword_1E6600208);
}

uint64_t sub_1E63C6BB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F58, &qword_1E66001E8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v31 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F60, &qword_1E66001F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F68, &qword_1E66001F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F70, &qword_1E6600200);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F78, &qword_1E6600208);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v31 - v21;
  v23 = sub_1E65D7348();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);

  sub_1E65D7338();
  sub_1E65D72E8();
  v25 = sub_1E65E45E8();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  v26 = sub_1E65E45F8();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  sub_1E65E4608();
  v27 = sub_1E65E4618();
  (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
  v28 = sub_1E65E45D8();
  (*(*(v28 - 8) + 56))(v3, 1, 1, v28);
  sub_1E65E4628();
  v29 = sub_1E65E4638();
  (*(*(v29 - 8) + 56))(v22, 0, 1, v29);
  sub_1E5DFD1CC(v22, v20, &qword_1ED078F78, &qword_1E6600208);
  sub_1E63C74C0();
  sub_1E65D7308();
  return sub_1E5DFE50C(v22, &qword_1ED078F78, &qword_1E6600208);
}

uint64_t sub_1E63C6FD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F58, &qword_1E66001E8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v31 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F60, &qword_1E66001F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F68, &qword_1E66001F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F70, &qword_1E6600200);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F78, &qword_1E6600208);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v31 - v21;
  v23 = sub_1E65D7348();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);

  sub_1E65D7338();
  sub_1E65D72E8();
  v25 = sub_1E65E45E8();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  v26 = sub_1E65E45F8();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  v27 = sub_1E65E4618();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  v28 = sub_1E65E45D8();
  (*(*(v28 - 8) + 56))(v3, 1, 1, v28);
  sub_1E65E4628();
  v29 = sub_1E65E4638();
  (*(*(v29 - 8) + 56))(v22, 0, 1, v29);
  sub_1E5DFD1CC(v22, v20, &qword_1ED078F78, &qword_1E6600208);
  sub_1E63C74C0();
  sub_1E65D7308();
  sub_1E5DFE50C(v22, &qword_1ED078F78, &qword_1E6600208);
  v31[1] = sub_1E65E49A8();
  sub_1E62F8EA0();
  return sub_1E65D7308();
}

unint64_t sub_1E63C7414()
{
  result = qword_1ED076C00;
  if (!qword_1ED076C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076BE8, &qword_1E65F7930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076C00);
  }

  return result;
}

uint64_t sub_1E63C7478(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E63C74C0()
{
  result = qword_1ED078F80;
  if (!qword_1ED078F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078F80);
  }

  return result;
}

uint64_t sub_1E63C7514(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1E601BD5C(0, v1, 0);
  v2 = v27;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v7 = v26;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + result);
    v13 = *(a1 + 36);
    v15 = *(v27 + 16);
    v14 = *(v27 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_1E601BD5C((v14 > 1), v15 + 1, 1);
      v7 = v26;
      v13 = v24;
      result = v25;
    }

    *(v27 + 16) = v15 + 1;
    v16 = v27 + 24 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = 0;
    *(v16 + 48) = 1;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v17 = *(v4 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1E60C349C(result, v13, 0);
          v7 = v26;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1E60C349C(result, v13, 0);
      v7 = v26;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E63C7744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8668();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1E65D9658();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_1E65D9EA8();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_1E65D9C48();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_1E65D8768();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();
  v19 = type metadata accessor for RouteResource();
  v3[20] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v21 = sub_1E65DB718();
  v3[22] = v21;
  v22 = *(v21 - 8);
  v3[23] = v22;
  v23 = *(v22 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63C7A04, 0, 0);
}

uint64_t sub_1E63C7A04()
{
  v1 = *(v0 + 160);
  sub_1E62796F0(*(v0 + 24), *(v0 + 168), type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 14)
  {
    v2 = *(v0 + 32);
    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    v3 = *(type metadata accessor for AppComposer() + 20);
    *(v0 + 360) = v3;
    v4 = v2 + v3;
    v5 = type metadata accessor for AppEnvironment();
    *(v0 + 200) = v5;
    v6 = v4 + *(v5 + 84);
    v7 = PersonalizationService.queryAllRecommendations.getter();
    *(v0 + 208) = v8;
    v22 = (v7 + *v7);
    v9 = v7[1];
    v10 = swift_task_alloc();
    *(v0 + 216) = v10;
    *v10 = v0;
    v10[1] = sub_1E63C7C40;

    return v22();
  }

  else
  {
    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    sub_1E62386D4(*(v0 + 168));
    sub_1E62796F0(v13, v12, type metadata accessor for RouteDestination);
    v14 = *(v0 + 192);
    v15 = *(v0 + 168);
    v16 = *(v0 + 152);
    v17 = *(v0 + 128);
    v18 = *(v0 + 104);
    v19 = *(v0 + 80);
    v20 = *(v0 + 56);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1E63C7C40(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v8 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {
    v5 = v3[26];

    v6 = sub_1E63C8CA8;
  }

  else
  {
    v6 = sub_1E63C7D5C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E63C7D5C()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 360);
  v4 = *(v0 + 32);

  v5 = v4 + v3 + *(v2 + 56);
  v6 = ContentAvailabilityService.queryAllowedContentRatings.getter();
  *(v0 + 240) = v7;
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v0 + 248) = v9;
  *v9 = v0;
  v9[1] = sub_1E63C7E70;

  return v11();
}

uint64_t sub_1E63C7E70(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v9 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  if (v1)
  {
    v5 = v3[30];
    v6 = v3[28];

    v7 = sub_1E63C8D84;
  }

  else
  {
    v7 = sub_1E63C7F98;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E63C7F98()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v3 = *(v0 + 360);
  v4 = *(v0 + 32);

  v5 = v4 + v3 + *(v2 + 32);
  v6 = ArchivedSessionService.queryAllArchivedSessions.getter();
  *(v0 + 272) = v7;
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = sub_1E63C80B0;

  return v11();
}

uint64_t sub_1E63C80B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v10 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v5 = v3[34];
    v6 = v3[32];
    v7 = v3[28];

    v8 = sub_1E63C8E60;
  }

  else
  {
    v8 = sub_1E63C81E4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E63C81E4()
{
  v39 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 144);

  v4 = sub_1E6427114(MEMORY[0x1E69E7CC0]);
  v37 = v4;
  v5 = v1 + 56;
  v6 = -1;
  v7 = -1 << *(v1 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v1 + 56);
  v9 = (63 - v7) >> 6;
  v10 = (v3 + 8);
  v11 = *(v0 + 296);

  v34 = v1;

  v13 = 0;
  if (v8)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(v0 + 152);
      (*(v3 + 16))(v15, *(v34 + 48) + *(v3 + 72) * (__clz(__rbit64(v8)) | (v14 << 6)), *(v0 + 136));
      sub_1E63C9150(&v37, v15, &v38);
      if (v11)
      {
        break;
      }

      v8 &= v8 - 1;
      (*v10)(*(v0 + 152), *(v0 + 136));

      v4 = v38;
      v37 = v38;
      v13 = v14;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v31 = *(v0 + 288);
    v32 = *(v0 + 152);
    v33 = *(v0 + 136);

    (*v10)(v32, v33);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v14 >= v9)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 288);
    v17 = *(v0 + 256);
    v18 = *(v0 + 224);
    v19 = *(v0 + 360);
    v20 = *(v0 + 192);
    v35 = *(v0 + 200);
    v21 = *(v0 + 128);
    v22 = *(v0 + 32);

    v23 = sub_1E63C7514(v17);

    sub_1E600A428(v23);

    sub_1E65DB6C8();
    sub_1E6005A68(v4);
    sub_1E65DB6E8();
    sub_1E65DB6F8();
    sub_1E65D9C38();
    v24 = v22 + v19 + *(v35 + 120);
    started = SiriService.evaluateStartWorkoutRequest.getter();
    *(v0 + 304) = v26;
    v36 = (started + *started);
    v27 = started[1];
    v28 = swift_task_alloc();
    *(v0 + 312) = v28;
    *v28 = v0;
    v28[1] = sub_1E63C8560;
    v29 = *(v0 + 128);
    v30 = *(v0 + 104);

    return v36(v30, v29);
  }
}

uint64_t sub_1E63C8560()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = *(v2 + 304);

    v5 = sub_1E63C8F3C;
  }

  else
  {
    v5 = sub_1E63C867C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63C867C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 200);
  v3 = *(v0 + 360);
  v4 = *(v0 + 104);
  v5 = *(v0 + 32);

  v6 = v5 + v3 + *(v2 + 48);
  v7 = CatalogService.fetchRemoteCatalogWorkoutDetail.getter();
  *(v0 + 328) = v8;
  v9 = sub_1E65D9E88();
  v11 = v10;
  *(v0 + 336) = v10;
  v16 = (v7 + *v7);
  v12 = v7[1];
  v13 = swift_task_alloc();
  *(v0 + 344) = v13;
  *v13 = v0;
  v13[1] = sub_1E63C87C8;
  v14 = *(v0 + 80);

  return v16(v14, v9, v11);
}

uint64_t sub_1E63C87C8()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 336);
  v6 = *(v2 + 328);
  if (v0)
  {

    v7 = sub_1E63C9038;
  }

  else
  {

    v7 = sub_1E63C892C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E63C892C()
{
  v1 = v0[13];
  v2 = sub_1E65D9E98();
  if ((v3 & 1) == 0)
  {
    v4 = v2;
    v5 = v0[10];
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    sub_1E65D9618();
    v9 = sub_1E65D8658();
    v11 = v10;
    v13 = v12;
    (*(v7 + 8))(v6, v8);
    if (v13)
    {
      v14 = v0[23];
      v59 = v0[22];
      v61 = v0[24];
      v15 = v0[15];
      v16 = v0[13];
      v55 = v0[14];
      v57 = v0[16];
      v17 = v0[12];
      v18 = v0[9];
      v52 = v0[10];
      v53 = v0[11];
      v50 = v0[20];
      v51 = v0[8];
      v19 = v0[2];
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = sub_1E65D9E88();
      *(v19 + 24) = v21;
      *(v19 + 32) = v4;
      *(v19 + 40) = v9;
      v22 = sub_1E65D96F8();
      (*(*(v22 - 8) + 56))(v19 + v20, 1, 1, v22);
      *(v19 + 48) = 0;
      swift_storeEnumTagMultiPayload();
      v23 = type metadata accessor for RouteDestination();
      v24 = *(v23 + 20);
      type metadata accessor for RouteSource(0);
      swift_storeEnumTagMultiPayload();
      (*(v18 + 8))(v52, v51);
      (*(v17 + 8))(v16, v53);
      (*(v15 + 8))(v57, v55);
      (*(v14 + 8))(v61, v59);
      *(v19 + *(v23 + 24)) = MEMORY[0x1E69E7CD0];
      v25 = v0[24];
      v26 = v0[21];
      v27 = v0[19];
      v28 = v0[16];
      v29 = v0[13];
      v30 = v0[10];
      v31 = v0[7];

      v32 = v0[1];
      goto LABEL_6;
    }

    sub_1E5F87058(v9, v11, 0);
  }

  v33 = v0[23];
  v58 = v0[22];
  v60 = v0[24];
  v34 = v0[15];
  v35 = v0[13];
  v54 = v0[14];
  v56 = v0[16];
  v37 = v0[11];
  v36 = v0[12];
  v38 = v0[9];
  v39 = v0[10];
  v40 = v0[8];
  sub_1E63C9894();
  swift_allocError();
  *v41 = 1;
  swift_willThrow();
  (*(v38 + 8))(v39, v40);
  (*(v36 + 8))(v35, v37);
  (*(v34 + 8))(v56, v54);
  (*(v33 + 8))(v60, v58);
  v42 = v0[24];
  v43 = v0[21];
  v44 = v0[19];
  v45 = v0[16];
  v46 = v0[13];
  v47 = v0[10];
  v48 = v0[7];

  v32 = v0[1];
LABEL_6:

  return v32();
}

uint64_t sub_1E63C8CA8()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E63C8D84()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v1 = v0[33];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E63C8E60()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v1 = v0[37];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E63C8F3C()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[40];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E63C9038()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[44];
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[13];
  v13 = v0[10];
  v14 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1E63C9150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a3;
  v5 = sub_1E65DA2D8();
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v59 - v13;
  v15 = sub_1E65D76A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v69 = &v59 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v68 = &v59 - v23;
  v24 = *a1;
  v62 = a2;
  v25 = sub_1E65D8748();
  v27 = v24;
  v70 = v24;
  v28 = v26;
  v29 = *(v27 + 16);
  v64 = v5;
  v66 = v15;
  v61 = v25;
  if (v29 && (v30 = sub_1E6215038(v25, v26), (v31 & 1) != 0))
  {
    v32 = v67;
    (*(v67 + 16))(v10, *(v70 + 56) + *(v67 + 72) * v30, v5);
    sub_1E65DA2B8();
    v33 = v32;
    v34 = v60;
    v15 = v66;
    (*(v33 + 8))(v10, v5);
    (*(v16 + 56))(v14, 0, 1, v15);
    v35 = v68;
    (*(v16 + 32))(v68, v14, v15);
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    v35 = v68;
    sub_1E65D7618();
    v36 = (*(v16 + 48))(v14, 1, v15);
    v34 = v60;
    if (v36 != 1)
    {
      sub_1E5DFE50C(v14, &qword_1ED0752D8, &qword_1E660CC30);
    }
  }

  sub_1E65D8758();
  v37 = sub_1E65D7658();
  v60 = *(v16 + 8);
  (v60)(v20, v15);
  v38 = v35;
  v39 = v69;
  if (v37)
  {
    sub_1E65D8758();
    (*(v16 + 16))(v20, v39, v15);
  }

  else
  {
    v40 = *(v16 + 16);
    v40(v69, v38, v15);
    v40(v20, v39, v15);
  }

  v41 = v61;
  sub_1E65DA2C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F90, &unk_1E6600230);
  v42 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075890, &qword_1E65F1E88) - 8);
  v43 = *(*v42 + 72);
  v44 = (*(*v42 + 80) + 32) & ~*(*v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1E65EA670;
  v46 = (v45 + v44);
  v47 = v42[14];
  *v46 = v41;
  *(v46 + 1) = v28;
  v48 = v34;
  v49 = v67;
  v50 = v64;
  (*(v67 + 16))(&v46[v47], v48, v64);
  v51 = v70;

  v52 = sub_1E6427114(v45);
  swift_setDeallocating();
  sub_1E5DFE50C(v46, &qword_1ED075890, &qword_1E65F1E88);
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v51;
  v54 = v63;
  sub_1E63C98E8(v52, sub_1E63C97D8, 0, isUniquelyReferenced_nonNull_native, &v71);

  if (v54)
  {

    __break(1u);
  }

  else
  {
    v55 = v71;
    (*(v49 + 8))(v48, v50);
    v56 = v66;
    v57 = v60;
    (v60)(v69, v66);
    result = v57(v68, v56);
    *v65 = v55;
  }

  return result;
}

uint64_t sub_1E63C9728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E63C7744(a1, a2, a3);
}

uint64_t sub_1E63C97D8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075880, &qword_1E65F1E78) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075890, &qword_1E65F1E88) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = sub_1E65DA2D8();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;
}

unint64_t sub_1E63C9894()
{
  result = qword_1ED078F88;
  if (!qword_1ED078F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078F88);
  }

  return result;
}

uint64_t sub_1E63C98E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v9 = sub_1E65DA2D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F98, &unk_1E6600240);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (v50 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v54 = a1;
  v55 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v56 = v19;
  v57 = 0;
  v58 = v22 & v20;
  v59 = a2;
  v60 = a3;
  v52 = v10;
  v53 = (v10 + 32);
  v50[3] = v10 + 40;

  v50[1] = a3;

  for (i = v17; ; v17 = i)
  {
    sub_1E6121760(v17);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075890, &qword_1E65F1E88);
    if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
    {
      sub_1E5E24EE4();
    }

    v25 = *(v24 + 48);
    v27 = *v17;
    v26 = v17[1];
    v28 = *v53;
    v29 = v17 + v25;
    v30 = v13;
    v31 = v9;
    (*v53)(v13, v29, v9);
    v32 = *v61;
    v34 = sub_1E6215038(v27, v26);
    v35 = *(v32 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    if (*(v32 + 24) >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_1E6425C98();
      }
    }

    else
    {
      v39 = v61;
      sub_1E641DC0C(v37, a4 & 1);
      v40 = *v39;
      v41 = sub_1E6215038(v27, v26);
      if ((v38 & 1) != (v42 & 1))
      {
        goto LABEL_20;
      }

      v34 = v41;
    }

    v43 = *v61;
    if (v38)
    {

      v23 = v43[7] + *(v52 + 72) * v34;
      v13 = v30;
      v9 = v31;
      (*(v52 + 40))(v23, v30, v31);
    }

    else
    {
      v43[(v34 >> 6) + 8] |= 1 << v34;
      v44 = (v43[6] + 16 * v34);
      *v44 = v27;
      v44[1] = v26;
      v45 = v43[7] + *(v52 + 72) * v34;
      v13 = v30;
      v9 = v31;
      v28(v45, v30, v31);
      v46 = v43[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_19;
      }

      v43[2] = v48;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

unint64_t sub_1E63C9C94()
{
  result = qword_1ED078FA0;
  if (!qword_1ED078FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078FA0);
  }

  return result;
}

uint64_t sub_1E63C9CE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1E65E6D28();
  sub_1E5E05374(a2, a3);
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

uint64_t MetricPlayContext.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x736E616C70 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x65726F6C707865 && v3 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0x756F59726F66 && v3 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0x7972617262696CLL && v3 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v4 = 0;
    v3 = 3;
  }

  else if (v4 == 0x686372616573 && v3 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v4 = 0;
    v3 = 4;
  }

  else if (v4 == 0x7478654E7075 && v3 == 0xE600000000000000 || (result = sub_1E65E6C18(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 5;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t MetricPlayContext.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 0x7972617262696CLL;
        goto LABEL_15;
      case 4:
        v3 = 0x686372616573;
        goto LABEL_15;
      case 5:
        v3 = 0x7478654E7075;
        goto LABEL_15;
    }

LABEL_12:
    v3 = *v0;
    goto LABEL_15;
  }

  if (!v2)
  {
    v3 = 0x736E616C70;
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v3 = 0x65726F6C707865;
    goto LABEL_15;
  }

  if (v2 != 2)
  {
    goto LABEL_12;
  }

  v3 = 0x756F59726F66;
LABEL_15:
  sub_1E5E05374(v1, v2);
  return v3;
}

uint64_t sub_1E63CA0FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        *a1 = 0x7972617262696CLL;
        a1[1] = 0xE700000000000000;
        return sub_1E5E05374(v2, v3);
      case 4:
        *a1 = 0x686372616573;
        a1[1] = 0xE600000000000000;
        return sub_1E5E05374(v2, v3);
      case 5:
        *a1 = 0x7478654E7075;
        a1[1] = 0xE600000000000000;
        return sub_1E5E05374(v2, v3);
    }

LABEL_13:
    v5 = *v1;
    v6 = v1[1];
    *a1 = v2;
    a1[1] = v3;
    return sub_1E5E05374(v2, v3);
  }

  if (!v3)
  {
    *a1 = 0x736E616C70;
    a1[1] = 0xE500000000000000;
    return sub_1E5E05374(v2, v3);
  }

  if (v3 == 1)
  {
    *a1 = 0x65726F6C707865;
    a1[1] = 0xE700000000000000;
    return sub_1E5E05374(v2, v3);
  }

  if (v3 != 2)
  {
    goto LABEL_13;
  }

  *a1 = 0x756F59726F66;
  a1[1] = 0xE600000000000000;
  return sub_1E5E05374(v2, v3);
}

unint64_t sub_1E63CA1E0()
{
  result = qword_1ED078FA8;
  if (!qword_1ED078FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078FA8);
  }

  return result;
}

uint64_t sub_1E63CA240()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 <= 2)
  {
    if (v2 <= 2)
    {
      goto LABEL_10;
    }

LABEL_9:
    v3 = *v0;
    v4 = v0[1];
    goto LABEL_10;
  }

  if (v2 != 3 && v2 != 4 && v2 != 5)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1E5E05374(v1, v2);
  sub_1E65E5D78();
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard17MetricPlayContextO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E63CA394@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = type metadata accessor for RemoteBrowsingService();
  Description = v3[-1].Description;
  v62 = v3;
  v4 = Description[8];
  MEMORY[0x1EEE9AC00](v3);
  v59 = v5;
  v60 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = &v48 - v8;
  v9 = type metadata accessor for AwardsService();
  v10 = v9[-1].Description;
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v12 = sub_1E65E3B68();
  __swift_project_value_buffer(v12, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v13 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v52 = v2 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v14 = type metadata accessor for AppEnvironment();
  v15 = *(v14 + 40);
  v55 = v15;
  v57 = *(v14 + 100);
  v16 = *(v2 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v10;
  v53 = v10[2];
  v19 = v13 + v15;
  v20 = v65;
  v53(v65, v19, v9);
  v51 = v9;
  v21 = *(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  v23 = v18[4];
  v54 = v18 + 4;
  v56 = v23;
  v23(v22 + ((v21 + 24) & ~v21), v20, v9);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A58, &qword_1E65F76B8);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = sub_1E65E4E68();
  v50 = v27;
  v28 = v64;
  v64[3] = v24;
  v28[4] = &off_1F5FAA810;
  *v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  KeyPath = swift_allocObject();
  *(KeyPath + 16) = xmmword_1E65EB9E0;
  v29 = sub_1E65E60A8();
  v49 = *(*(v29 - 8) + 56);
  v30 = v58;
  v49(v58, 1, 1, v29);
  v31 = v51;
  v32 = v52;
  v33 = v65;
  v53(v65, v52 + v55, v51);
  v34 = (v21 + 32) & ~v21;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v56(v35 + v34, v33, v31);
  v36 = v50;
  *(v35 + ((v11 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;
  v37 = v36;
  swift_retain_n();
  v38 = sub_1E6059EAC(0, 0, v30, &unk_1E6600478, v35);
  *(KeyPath + 32) = v38;
  v49(v30, 1, 1, v29);
  v40 = v60;
  v39 = Description;
  v41 = v62;
  (Description[2])(v60, v32 + v57, v62);
  v42 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v43 = (v59 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  (v39[4])(v44 + v42, v40, v41);
  *(v44 + v43) = v37;
  result = sub_1E6059EAC(0, 0, v30, &unk_1E6600488, v44);
  v46 = KeyPath;
  v47 = v64;
  *(KeyPath + 40) = result;
  v47[5] = v46;
  return result;
}

uint64_t sub_1E63CA908(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[19] = a1;
  v6 = sub_1E65E3B68();
  v4[22] = v6;
  v7 = *(v6 - 8);
  v4[23] = v7;
  v8 = *(v7 + 64) + 15;
  v4[24] = swift_task_alloc();
  v9 = sub_1E65D79C8();
  v4[25] = v9;
  v10 = *(v9 - 8);
  v4[26] = v10;
  v11 = *(v10 + 64) + 15;
  v4[27] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v13 = sub_1E65D7848();
  v4[29] = v13;
  v14 = *(v13 - 8);
  v4[30] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v17 = *a2;
  v18 = a2[1];
  v4[31] = v16;
  v4[32] = v17;
  v4[33] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1E63CAAC8, 0, 0);
}

uint64_t sub_1E63CAAC8()
{
  v1 = v0[20];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);

    swift_getKeyPath();
    sub_1E65E4EC8();

    (*(v4 + 56))(v6, 0, 1, v5);
    (*(v4 + 32))(v3, v6, v5);
  }

  else
  {
    (*(v4 + 56))(v0[28], 1, 1, v0[29]);
    sub_1E65D77C8();
    if ((*(v4 + 48))(v6, 1, v5) != 1)
    {
      sub_1E5DFE50C(v0[28], &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  v8 = v0[21];
  v9 = AwardsService.fetchSeymourAchievement.getter();
  v0[34] = v10;
  v17 = (v9 + *v9);
  v11 = v9[1];
  v12 = swift_task_alloc();
  v0[35] = v12;
  *v12 = v0;
  v12[1] = sub_1E63CAD00;
  v13 = v0[32];
  v14 = v0[33];
  v15 = v0[27];

  return v17(v15, v13, v14);
}

uint64_t sub_1E63CAD00()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 272);

    v5 = sub_1E63CB6B4;
  }

  else
  {
    v5 = sub_1E63CAE1C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63CAE1C()
{
  v48 = v0;
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);

  if (v3 == sub_1E65DB988() && v2 == v4)
  {
  }

  else
  {
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v8 = sub_1E65E6C18();

    if ((v8 & 1) == 0)
    {
      v9 = *(v0 + 288);
      v10 = *(v0 + 248);
      v11 = *(v0 + 216);
      v12 = *(v0 + 152);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = -1;
      sub_1E634B514(v0 + 16, v10);
      if (v9)
      {
        (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
        v13 = *(v0 + 192);
        (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
        sub_1E65DB958();
        v14 = v9;
        v15 = sub_1E65E3B48();
        v16 = sub_1E65E6338();

        v17 = os_log_type_enabled(v15, v16);
        v19 = *(v0 + 184);
        v18 = *(v0 + 192);
        v20 = *(v0 + 176);
        if (v17)
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v47 = v22;
          *v21 = 136315138;
          swift_getErrorValue();
          v45 = v18;
          v23 = *(v0 + 120);
          v24 = MEMORY[0x1E694E6D0](*(v0 + 128), *(v0 + 136));
          v26 = sub_1E5DFD4B0(v24, v25, &v47);

          *(v21 + 4) = v26;
          _os_log_impl(&dword_1E5DE9000, v15, v16, "Failed to fetch award description with error %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v22);
          MEMORY[0x1E694F1C0](v22, -1, -1);
          MEMORY[0x1E694F1C0](v21, -1, -1);

          (*(v19 + 8))(v45, v20);
        }

        else
        {

          (*(v19 + 8))(v18, v20);
        }

        v41 = *(v0 + 248);
        v43 = *(v0 + 216);
        v42 = *(v0 + 224);
        v44 = *(v0 + 192);
        swift_willThrow();

        v40 = *(v0 + 8);
      }

      else
      {
        v36 = *(v0 + 240);
        v35 = *(v0 + 248);
        v38 = *(v0 + 224);
        v37 = *(v0 + 232);
        v39 = *(v0 + 192);
        (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
        (*(v36 + 8))(v35, v37);

        v40 = *(v0 + 8);
      }

      return v40();
    }
  }

  v27 = *(v0 + 168);
  v28 = AwardsService.fetchSeymourAchievementProgress.getter();
  *(v0 + 296) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v30 = swift_allocObject();
  *(v0 + 304) = v30;
  *(v30 + 16) = xmmword_1E65EA670;
  *(v30 + 32) = sub_1E65DB998();
  *(v30 + 40) = v31;
  v46 = (v28 + *v28);
  v32 = v28[1];
  v33 = swift_task_alloc();
  *(v0 + 312) = v33;
  *v33 = v0;
  v33[1] = sub_1E63CB224;

  return v46(v30);
}

uint64_t sub_1E63CB224(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  v4[40] = v1;

  v7 = v4[38];
  v8 = v4[37];
  if (v1)
  {

    v9 = sub_1E63CB8C0;
  }

  else
  {

    v4[41] = a1;
    v9 = sub_1E63CB398;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E63CB398()
{
  v35 = v0;
  sub_1E6059D88(*(v0 + 328), v0 + 56);

  v1 = *(v0 + 320);
  v2 = *(v0 + 248);
  v3 = *(v0 + 216);
  v4 = *(v0 + 152);
  if (*(v0 + 88) == 255)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = -1;
    sub_1E634B514(v0 + 16, v2);
    if (v1)
    {
      (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E634B514(v0 + 56, v2);
    if (v1)
    {
      v6 = *(v0 + 208);
      v5 = *(v0 + 216);
      v7 = *(v0 + 200);
      sub_1E5DFE50C(v0 + 56, &qword_1ED078818, &qword_1E65FDA30);
      (*(v6 + 8))(v5, v7);
LABEL_6:
      v8 = *(v0 + 192);
      (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
      sub_1E65DB958();
      v9 = v1;
      v10 = sub_1E65E3B48();
      v11 = sub_1E65E6338();

      v12 = os_log_type_enabled(v10, v11);
      v14 = *(v0 + 184);
      v13 = *(v0 + 192);
      v15 = *(v0 + 176);
      if (v12)
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v34 = v17;
        *v16 = 136315138;
        swift_getErrorValue();
        v33 = v13;
        v18 = *(v0 + 120);
        v19 = MEMORY[0x1E694E6D0](*(v0 + 128), *(v0 + 136));
        v21 = sub_1E5DFD4B0(v19, v20, &v34);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_1E5DE9000, v10, v11, "Failed to fetch award description with error %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x1E694F1C0](v17, -1, -1);
        MEMORY[0x1E694F1C0](v16, -1, -1);

        (*(v14 + 8))(v33, v15);
      }

      else
      {

        (*(v14 + 8))(v13, v15);
      }

      v22 = *(v0 + 248);
      v24 = *(v0 + 216);
      v23 = *(v0 + 224);
      v25 = *(v0 + 192);
      swift_willThrow();

      v26 = *(v0 + 8);
      goto LABEL_12;
    }

    sub_1E5DFE50C(v0 + 56, &qword_1ED078818, &qword_1E65FDA30);
  }

  v28 = *(v0 + 240);
  v27 = *(v0 + 248);
  v30 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 192);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  (*(v28 + 8))(v27, v29);

  v26 = *(v0 + 8);
LABEL_12:

  return v26();
}