uint64_t sub_24EC5DF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C428);
  sub_24EC5DFF0(a1, (a2 + *(v4 + 44)));
  v5 = sub_24F925838();
  type metadata accessor for AchievementDetailsSideBySideView();
  sub_24F923318();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C3A8);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_24EC5DFF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C430);
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  v80 = &v74 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C438);
  MEMORY[0x28223BE20](v77);
  v79 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v78 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C440);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  v13 = type metadata accessor for AchievementDetails();
  v14 = v13;
  v15 = (a1 + v13[13]);
  v17 = *v15;
  v16 = v15[1];
  v19 = v15[2];
  v18 = v15[3];
  v21 = v15[4];
  v20 = v15[5];
  v85 = v12;
  if (v16)
  {
    v88 = v18;
    v89 = v17;
    v92 = v19;
    v86 = v20;
    v87 = v21;
  }

  else
  {
    v88 = 0;
    v89 = 0;
    v92 = 0;
    v86 = 0;
    v87 = 0;
  }

  v22 = *(a1 + v13[7]);
  v90 = v16;
  v84 = a1;
  if (v22 && *(v22 + 16))
  {
    v23 = (a1 + v13[8]);
    v25 = *v23;
    v24 = v23[1];
    v76 = v25;
    v26 = v17;
    v27 = v24;
    sub_24E68FE2C(v26, v16);
    v28 = qword_27F210E90;

    if (v28 != -1)
    {
      swift_once();
    }

    memcpy(v94, &xmmword_27F237800, sizeof(v94));
    memcpy(v93, &xmmword_27F237800, sizeof(v93));
    LOBYTE(v95[0]) = 0;
    sub_24E76A93C(v94, &v96);
    sub_24F926F28();
    v29 = v96;
    v75 = v96;
    v30 = v97;
    v74 = v97;
    v31 = v78;
    sub_24F9271E8();
    v32 = sub_24F9251C8();
    v33 = sub_24F925808();
    v34 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C450) + 36);
    *v34 = v32;
    *(v34 + 4) = v33;
    LOBYTE(v32) = sub_24F925868();
    type metadata accessor for AchievementDetailsSideBySideView();
    sub_24F923318();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C458) + 36);
    *v43 = v32;
    *(v43 + 8) = v36;
    *(v43 + 16) = v38;
    *(v43 + 24) = v40;
    *(v43 + 32) = v42;
    *(v43 + 40) = 0;
    KeyPath = swift_getKeyPath();
    v45 = v31 + *(v77 + 36);
    *v45 = KeyPath;
    *(v45 + 8) = 0;
    v46 = v79;
    sub_24E60169C(v31, v79, &qword_27F22C438);
    v95[0] = v22;
    v47 = v76;
    v95[1] = v76;
    v95[2] = v27;
    memcpy(&v95[3], v93, 0x178uLL);
    LOBYTE(v95[50]) = v29;
    v95[51] = v30;
    v48 = v27;
    v49 = v80;
    memcpy(v80, v95, 0x1A0uLL);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C460);
    sub_24E60169C(v46, v49 + *(v50 + 48), &qword_27F22C438);
    sub_24E645724(v95, &v96);
    sub_24E601704(v31, &qword_27F22C438);
    sub_24E601704(v46, &qword_27F22C438);
    v96 = v22;
    v97 = v47;
    v98 = v48;
    memcpy(v99, v93, 0x178uLL);
    LOBYTE(v99[47]) = v75;
    v100 = v74;
    sub_24EC5F494(&v96);
    v51 = v85;
    sub_24E6009C8(v49, v85, &qword_27F22C430);
    v82[7](v51, 0, 1, v83);
    a1 = v84;
  }

  else
  {
    v51 = v85;
    v82[7](v85, 1, 1, v83);
    sub_24E68FE2C(v17, v16);
  }

  v52 = (a1 + v14[6]);
  v54 = *v52;
  v53 = v52[1];
  v55 = (a1 + v14[9]);
  v57 = *v55;
  v56 = v55[1];
  v82 = v57;
  v83 = v54;
  v77 = v53;
  v78 = v56;
  v58 = *(type metadata accessor for AchievementDetailsSideBySideView() + 20);
  v80 = v58;
  memcpy(v94, &v58[a1], sizeof(v94));
  v79 = 0x800000024FA58410;
  v76 = *MEMORY[0x277CDA710];
  v59 = v91;
  sub_24E60169C(v51, v91, &qword_27F22C440);
  v60 = v81;
  v61 = v90;
  *v81 = v89;
  v60[1] = v61;
  v63 = v87;
  v62 = v88;
  v60[2] = v92;
  v60[3] = v62;
  v64 = v86;
  v60[4] = v63;
  v60[5] = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C448);
  sub_24E60169C(v59, v60 + *(v65 + 48), &qword_27F22C440);
  v66 = *(v65 + 64);
  v95[0] = v54;
  v67 = v77;
  v95[1] = v77;
  v95[2] = v57;
  v68 = v78;
  v95[3] = v78;
  memcpy(&v95[4], &v58[a1], 0x178uLL);
  v95[51] = 0xD000000000000013;
  v95[52] = 0x800000024FA58410;
  v69 = v76;
  v95[53] = v76;
  LOBYTE(v95[54]) = 1;
  v95[55] = 0x3FF0000000000000;
  memcpy(v60 + v66, v95, 0x1C0uLL);

  sub_24E76A93C(v94, &v96);
  v70 = v69;
  v72 = v89;
  v71 = v90;
  sub_24E68FE2C(v89, v90);
  sub_24E845D18(v95, &v96);
  sub_24E601704(v85, &qword_27F22C440);
  v96 = v83;
  v97 = v67;
  v98 = v82;
  v99[0] = v68;
  memcpy(&v99[1], &v80[v84], 0x178uLL);
  v100 = 0xD000000000000013;
  v101 = v79;
  v102 = v70;
  v103 = 1;
  v104 = 0x3FF0000000000000;
  sub_24EC5F438(&v96);
  sub_24E601704(v91, &qword_27F22C440);
  return sub_24E687F7C(v72, v71);
}

uint64_t sub_24EC5E784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F924C88();
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C3C8) + 36);
  sub_24EC5E85C(a2, v7);
  v8 = sub_24F923868();
  LOBYTE(a2) = MEMORY[0x25304B200]((2 * v8));
  v9 = sub_24F924068();
  v10 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C3F8) + 36);
  *v10 = v9;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v10 + 17) = a2;
  *(v10 + 24) = v6;
  return sub_24E60169C(a1, a3, &qword_27F22C378);
}

uint64_t sub_24EC5E85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C408);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221FC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for GameLockup(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AchievementDetails();
  sub_24E60169C(a1 + *(v14 + 20), v9, &qword_27F221FC0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(v9, &qword_27F221FC0);
    v15 = 1;
    v16 = v46;
  }

  else
  {
    sub_24E7A3ED0(v9, v13);
    *(v6 + 5) = v10;
    *(v6 + 6) = sub_24EC5F38C(&qword_27F216AD0, type metadata accessor for GameLockup);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6 + 2);
    sub_24EC5F328(v13, boxed_opaque_existential_1);
    type metadata accessor for GSKComponentContentBuilder();
    sub_24EC5F38C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
    *v6 = sub_24F923598();
    v6[8] = v18 & 1;
    *(v6 + 28) = 256;
    v19 = *(a1 + *(type metadata accessor for AchievementDetailsSideBySideView() + 20) + 8);
    v20 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C410) + 36)];
    v21 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
    v22 = type metadata accessor for GradientBackground(0);
    (*(*(v22 - 8) + 56))(&v20[v21], 1, 1, v22);
    *v20 = swift_getKeyPath();
    v20[8] = 0;
    *(v20 + 2) = v19;
    *(v20 + 24) = xmmword_24F958350;
    *(v20 + 20) = 257;
    sub_24F926C88();
    v23 = sub_24F926D08();

    v24 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C418) + 36)];
    *v24 = v23;
    *(v24 + 8) = xmmword_24F94D5F0;
    *(v24 + 3) = 0x4020000000000000;
    LOBYTE(v21) = sub_24F925838();
    sub_24F923318();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C420) + 36)];
    *v33 = v21;
    *(v33 + 1) = v26;
    *(v33 + 2) = v28;
    *(v33 + 3) = v30;
    *(v33 + 4) = v32;
    v33[40] = 0;
    LOBYTE(v21) = sub_24F925828();
    sub_24F923318();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_24EC5F3DC(v13);
    v42 = &v6[*(v3 + 36)];
    *v42 = v21;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    v43 = v46;
    sub_24E6009C8(v6, v46, &qword_27F22C408);
    v15 = 0;
    v16 = v43;
  }

  return (*(v4 + 56))(v16, v15, 1, v3);
}

uint64_t sub_24EC5ED00@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C340);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C348);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C350);
  sub_24EC5D484(v1, &v8[*(v9 + 44)]);
  v10 = sub_24E602068(&qword_27F22C358, &qword_27F22C348);
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C360);
  v17 = v6;
  v18 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = sub_24E8F20E4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C368);
  v14 = sub_24EC5EF9C();
  v17 = v2;
  v18 = &type metadata for IsDebugFocusOverlayEnabled;
  v19 = v13;
  v20 = OpaqueTypeConformance2;
  v21 = v12;
  v22 = v14;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v8, &qword_27F22C348);
}

unint64_t sub_24EC5EF9C()
{
  result = qword_27F22C370;
  if (!qword_27F22C370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C348);
    sub_24E602068(&qword_27F22C358, &qword_27F22C348);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C370);
  }

  return result;
}

unint64_t sub_24EC5F0CC()
{
  result = qword_27F22C3B0;
  if (!qword_27F22C3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C3A8);
    sub_24E602068(&qword_27F22C3B8, &qword_27F22C3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C3B0);
  }

  return result;
}

unint64_t sub_24EC5F18C()
{
  result = qword_27F22C3D0;
  if (!qword_27F22C3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C378);
    sub_24E602068(&qword_27F22C3D8, &qword_27F22C3E0);
    sub_24E602068(&qword_27F217658, &qword_27F217660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C3D0);
  }

  return result;
}

unint64_t sub_24EC5F270()
{
  result = qword_27F22C3E8;
  if (!qword_27F22C3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C3C8);
    sub_24EC5F18C();
    sub_24E602068(&qword_27F22C3F0, &qword_27F22C3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C3E8);
  }

  return result;
}

uint64_t sub_24EC5F328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC5F38C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC5F3DC(uint64_t a1)
{
  v2 = type metadata accessor for GameLockup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EC5F4E8()
{
  result = qword_27F22C478;
  if (!qword_27F22C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C478);
  }

  return result;
}

uint64_t sub_24EC5F53C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C340);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C360);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C348);
  sub_24E602068(&qword_27F22C358, &qword_27F22C348);
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C368);
  sub_24EC5EF9C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PrivacyFooter.__allocating_init(id:bodyText:actions:privacyTypesCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E65E064(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_24E601704(a1, &qword_27F235830);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830);
    sub_24E601704(&v17, &qword_27F235830);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t PrivacyFooter.init(id:bodyText:actions:privacyTypesCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_24E601704(a1, &qword_27F235830);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830);
    sub_24E601704(&v18, &qword_27F235830);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t PrivacyFooter.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v77 = a2;
  v60 = sub_24F91F6B8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v62 = sub_24F92AC28();
  v64 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9285B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_24F928388();
  v12 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  type metadata accessor for LinkableText();
  v67 = a1;
  sub_24F928398();
  (*(v9 + 16))(v11, v77, v8);
  sub_24EC60360(&qword_27F21C360, 255, type metadata accessor for LinkableText);
  sub_24F929548();
  if (v76[0])
  {
    v56 = v76[0];
    v61 = v9;
    v55 = v8;
    v20 = v77;
    sub_24F928398();
    sub_24F9282B8();
    v21 = *(v12 + 8);
    v22 = v16;
    v23 = v12 + 8;
    v21(v22, v66);
    v24 = v62;
    if ((*(v64 + 48))(v6, 1, v62) == 1)
    {
      sub_24E601704(v6, &qword_27F2213B0);
      v54 = MEMORY[0x277D84F90];
    }

    else
    {
      v28 = v64;
      v29 = v57;
      (*(v64 + 32))(v57, v6, v24);
      v30 = type metadata accessor for Action();
      MEMORY[0x28223BE20](v30);
      *(&v54 - 2) = v31;
      *(&v54 - 1) = v20;
      v54 = sub_24F92ABB8();
      (*(v28 + 8))(v29, v24);
    }

    v32 = v67;
    sub_24F928398();
    sub_24F928258();
    v33 = v19;
    v34 = v66;
    v35 = v23;
    v21(v33, v66);
    v36 = v63;
    sub_24F928398();
    v37 = sub_24F928348();
    if (v38)
    {
      *&v70 = v37;
      *(&v70 + 1) = v38;
    }

    else
    {
      v39 = v58;
      sub_24F91F6A8();
      v40 = sub_24F91F668();
      v42 = v41;
      (*(v59 + 8))(v39, v60);
      *&v70 = v40;
      *(&v70 + 1) = v42;
    }

    sub_24F92C7F8();
    v21(v36, v34);
    v25 = swift_allocObject();
    sub_24E65E064(v76, &v70);
    v43 = v55;
    v44 = v61;
    if (*(&v71 + 1))
    {
      v21(v32, v34);
      sub_24E601704(v76, &qword_27F235830);
      v73 = v70;
      v74 = v71;
      v75 = v72;
    }

    else
    {
      v45 = v58;
      sub_24F91F6A8();
      v46 = sub_24F91F668();
      v65 = v35;
      v47 = v34;
      v48 = v32;
      v50 = v49;
      (*(v59 + 8))(v45, v60);
      v68 = v46;
      v69 = v50;
      sub_24F92C7F8();
      v21(v48, v47);
      sub_24E601704(v76, &qword_27F235830);
      v44 = v61;
      sub_24E601704(&v70, &qword_27F235830);
    }

    v51 = v74;
    *(v25 + 32) = v73;
    *(v25 + 48) = v51;
    *(v25 + 64) = v75;
    v52 = v54;
    *(v25 + 16) = v56;
    *(v25 + 24) = v52;
    (*(v44 + 8))(v77, v43);
  }

  else
  {
    v25 = sub_24F92AC38();
    sub_24EC60360(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v26 = 0x7478655479646F62;
    v27 = v65;
    v26[1] = 0xE800000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    (*(v12 + 8))(v67, v66);
    (*(v9 + 8))(v77, v8);
  }

  return v25;
}

uint64_t PrivacyFooter.deinit()
{

  sub_24E6585F8(v0 + 32);
  return v0;
}

uint64_t PrivacyFooter.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC602EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyFooter.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EC60360(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24EC60428()
{
  v0 = sub_24F928CE8();
  __swift_allocate_value_buffer(v0, qword_27F22C490);
  __swift_project_value_buffer(v0, qword_27F22C490);
  return sub_24F928CC8();
}

uint64_t AppIconProtocol.match(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244EB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_24F928CB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  if (qword_27F2104E0 != -1)
  {
    swift_once();
  }

  v12 = sub_24F928CE8();
  __swift_project_value_buffer(v12, qword_27F22C490);
  sub_24F928CD8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_24EC61CB0(v4);
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    sub_24EC606EC(v8, a1);
    return (*(v6 + 8))(v11, v5);
  }

  return result;
}

uint64_t sub_24EC606EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F928C98();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = sub_24F928C98();
    v10 = v9;
    sub_24E600AEC();
    v11 = sub_24F92C588();
    v13 = v12;
    v14 = sub_24F928CB8();
    result = (*(*(v14 - 8) + 8))(a1, v14);
    if (v13)
    {

      v8 = v11;
      v10 = v13;
    }

    *a2 = v8;
    a2[1] = v10;
  }

  else
  {
    v16 = sub_24F928CB8();
    result = (*(*(v16 - 8) + 8))(a1, v16);
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void sub_24EC60818()
{
  v0 = *MEMORY[0x277D1B220];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 imageDescriptorNamed_];

  qword_27F22C4A8 = v3;
}

uint64_t AppIconProtocol.fetch(contentsOf:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4B0);
  v3 = MEMORY[0x28223BE20](v2);
  v8 = a1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D85778], v3);
  return sub_24F92B928();
}

uint64_t sub_24EC6098C(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v3 = sub_24F927D88();
  v80 = *(v3 - 8);
  v81 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = sub_24F927DC8();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0);
  v6 = *(v69 - 8);
  v74 = *(v6 + 64);
  MEMORY[0x28223BE20](v69);
  v75 = &v60[-v7];
  v8 = sub_24F927D98();
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  v71 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v82 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v60[-v14];
  v68 = sub_24F922028();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v60[-v18];
  sub_24F9288F8();
  v20 = v85;
  v65 = aBlock;
  if (qword_27F211068 != -1)
  {
    swift_once();
  }

  v21 = sub_24F922058();
  __swift_project_value_buffer(v21, qword_27F23DAD8);
  sub_24F922038();
  sub_24F921FF8();
  v64 = v19;
  v22 = *(v11 + 16);
  v22(v15, a2, v10);
  v22(v82, a2, v10);

  v23 = sub_24F922038();
  v24 = sub_24F92C058();

  if (sub_24F92C478())
  {
    v25 = swift_slowAlloc();
    v61 = v24;
    v26 = v25;
    v62 = swift_slowAlloc();
    v83 = v62;
    *v26 = 136315650;
    v27 = v65;
    *(v26 + 4) = sub_24E7620D4(v65, v20, &v83);
    *(v26 + 12) = 2080;
    sub_24F928908();
    aBlock = v28;
    v85 = v29;
    type metadata accessor for CGSize(0);
    v30 = sub_24F92B188();
    v32 = v31;
    v63 = v6;
    v33 = *(v11 + 8);
    v34 = v15;
    v35 = v20;
    v33(v34, v10);
    v36 = sub_24E7620D4(v30, v32, &v83);

    *(v26 + 14) = v36;
    *(v26 + 22) = 2048;
    v37 = v82;
    sub_24F928918();
    v39 = v38;
    v33(v37, v10);
    v6 = v63;
    *(v26 + 24) = v39;
    v40 = v64;
    v41 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v23, v61, v41, "AppIconProtocol", "%s-size:%s-scale:%f", v26, 0x20u);
    v42 = v62;
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v42, -1, -1);
    MEMORY[0x2530542D0](v26, -1, -1);
  }

  else
  {

    v43 = *(v11 + 8);
    v43(v82, v10);
    v43(v15, v10);
    v27 = v65;
    v35 = v20;
    v40 = v64;
  }

  v44 = v67;
  v45 = v68;
  (*(v67 + 16))(v66, v40, v68);
  sub_24F922098();
  swift_allocObject();
  v46 = sub_24F922088();
  (*(v44 + 8))(v40, v45);
  sub_24E74EC40();
  v48 = v71;
  v47 = v72;
  v49 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x277D851C8], v73);
  v50 = sub_24F92BF48();
  (*(v47 + 8))(v48, v49);
  v51 = v75;
  v52 = v69;
  (*(v6 + 16))(v75, v70, v69);
  v53 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v54 = swift_allocObject();
  *(v54 + 2) = v46;
  *(v54 + 3) = v27;
  *(v54 + 4) = v35;
  (*(v6 + 32))(&v54[v53], v51, v52);
  v88 = sub_24EC61E74;
  v89 = v54;
  aBlock = MEMORY[0x277D85DD0];
  v85 = 1107296256;
  v86 = sub_24EAF8248;
  v87 = &block_descriptor_64;
  v55 = _Block_copy(&aBlock);

  v56 = v76;
  sub_24F927DA8();
  v83 = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  v57 = v78;
  v58 = v81;
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v56, v57, v55);
  _Block_release(v55);

  (*(v80 + 8))(v57, v58);
  (*(v77 + 8))(v56, v79);
}

uint64_t sub_24EC612A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v10 = sub_24F92B098();
  v11 = [v9 initWithBundleIdentifier_];

  if (qword_27F2104E8 != -1)
  {
    swift_once();
  }

  v12 = qword_27F22C4A8;
  v13 = [v11 imageForDescriptor_];
  if (v13)
  {
    v14 = v13;
    if (![v13 placeholder] || (v15 = objc_msgSend(v11, sel_prepareImageForDescriptor_, v12), v14, (v14 = v15) != 0))
    {
      v15 = v14;
      v16 = [v15 CGImage];
      if (v16)
      {
        v17 = v16;
        [v15 scale];
        v30 = sub_24F926DE8();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0);
        sub_24F92B8C8();
        (*(v6 + 8))(v8, v5);
        sub_24F92B8D8();

        return sub_24EC617A4();
      }
    }

    if (qword_27F211408 != -1)
    {
      swift_once();
    }

    v24 = sub_24F9220D8();
    __swift_project_value_buffer(v24, qword_27F39E868);

    v25 = sub_24F9220B8();
    v26 = sub_24F92BDB8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_24E7620D4(a2, a3, &v30);
      _os_log_impl(&dword_24E5DD000, v25, v26, "AppIconProtocol: Unable to get icon for %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x2530542D0](v28, -1, -1);
      MEMORY[0x2530542D0](v27, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0);
    sub_24F92B8D8();
  }

  else
  {
    if (qword_27F211408 != -1)
    {
      swift_once();
    }

    v19 = sub_24F9220D8();
    __swift_project_value_buffer(v19, qword_27F39E868);

    v20 = sub_24F9220B8();
    v21 = sub_24F92BDB8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_24E7620D4(a2, a3, &v30);
      _os_log_impl(&dword_24E5DD000, v20, v21, "AppIconProtocol: Unable to get icon for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x2530542D0](v23, -1, -1);
      MEMORY[0x2530542D0](v22, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0);
    sub_24F92B8D8();
  }

  return sub_24EC617A4();
}

uint64_t sub_24EC617A4()
{
  v0 = sub_24F922068();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211068 != -1)
  {
    swift_once();
  }

  v8 = sub_24F922058();
  __swift_project_value_buffer(v8, qword_27F23DAD8);
  v9 = sub_24F922038();
  sub_24F922078();
  v10 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v9, v10, v13, "AppIconProtocol", v11, v12, 2u);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24EC61A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4B0);
  v3 = MEMORY[0x28223BE20](v2);
  v8 = a1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D85778], v3);
  return sub_24F92B928();
}

uint64_t _s12GameStoreKit15AppIconProtocolV12iconTemplate3forS2S_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_24F91EAA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  v14 = a1;
  v15 = a2;
  sub_24F91EA28();
  sub_24E600AEC();
  v9 = sub_24F92C578();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  if (v11)
  {
    v12 = v9;
    a2 = v11;
  }

  else
  {

    v12 = v8;
  }

  v14 = 0x3A6E6F6369707061;
  v15 = 0xEA00000000002F2FLL;
  MEMORY[0x253050C20](v12, a2);

  return v14;
}

uint64_t sub_24EC61CB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC61D9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EC61E74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_24EC612A0(v1, v2, v3);
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EC61F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = sub_24F929638();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a3;
  memset(v43, 0, 32);
  sub_24F929628();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = objc_opt_self();

  v16 = [v15 defaultCenter];
  v17 = type metadata accessor for WeakNotificationObserver();
  v18 = objc_allocWithZone(v17);
  v42[3] = v10;
  v42[4] = MEMORY[0x277D21FB0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  v20 = *(v11 + 16);
  v38 = v10;
  v20(boxed_opaque_existential_1, v13, v10);
  swift_unknownObjectWeakInit();
  sub_24E615E00(v42, &v18[OBJC_IVAR____TtC12GameStoreKit24WeakNotificationObserver_scheduler]);
  v21 = &v18[OBJC_IVAR____TtC12GameStoreKit24WeakNotificationObserver_block];
  *v21 = a4;
  *(v21 + 1) = v14;
  swift_unknownObjectWeakAssign();
  v41.receiver = v18;
  v41.super_class = v17;

  v22 = objc_msgSendSuper2(&v41, sel_init);
  sub_24E94E17C(v43, v39);
  v23 = v40;
  if (v40)
  {
    v24 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v35[1] = v35;
    v36 = v11;
    v25 = v17;
    v26 = a5;
    v27 = *(v23 - 8);
    v28 = MEMORY[0x28223BE20](v24);
    v30 = v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v30, v28);
    v31 = v22;
    v32 = sub_24F92CDE8();
    (*(v27 + 8))(v30, v23);
    a5 = v26;
    v17 = v25;
    v11 = v36;
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    v33 = v22;
    v32 = 0;
  }

  [v16 addObserver:v22 selector:sel_didReceiveWithNotification_ name:v37 object:v32];

  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v38);
  sub_24E857CC8(v43);
  result = __swift_destroy_boxed_opaque_existential_1(v42);
  a5[3] = v17;
  *a5 = v22;
  return result;
}

uint64_t sub_24EC622C0()
{

  return swift_deallocObject();
}

uint64_t DirectionalTextAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EC62388()
{
  result = qword_27F22C4D0;
  if (!qword_27F22C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C4D0);
  }

  return result;
}

uint64_t InlineTodayCards.__allocating_init(id:cards:impressionMetrics:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_24EC6307C(a1, a2, a3);

  return v6;
}

uint64_t InlineTodayCards.init(id:cards:impressionMetrics:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = sub_24EC6307C(a1, a2, a3);

  return v3;
}

uint64_t InlineTodayCards.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v87 = a2;
  v68 = sub_24F91F6B8();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v66 - v5;
  v6 = sub_24F92AC28();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v66 - v9;
  v10 = sub_24F9285B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v72 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v66 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  v18 = sub_24F928388();
  v19 = *(v18 - 8);
  v85 = v18;
  v86 = v19;
  MEMORY[0x28223BE20](v18);
  v69 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v77 = &v66 - v22;
  MEMORY[0x28223BE20](v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v24 - 8);
  v70 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v66 - v27;
  sub_24F929608();
  sub_24F928398();
  v81 = v11;
  v29 = *(v11 + 16);
  v30 = v17;
  v31 = v87;
  v29(v30, v87, v10);
  v80 = v28;
  v32 = v83;
  sub_24F929548();
  v79 = v10;
  v71 = v29;
  v29(v91, v31, v10);
  v33 = v77;
  v82 = a1;
  sub_24F928398();
  v34 = v78;
  sub_24F9282B8();
  v35 = v86 + 8;
  v36 = *(v86 + 8);
  v37 = v33;
  v38 = v84;
  v39 = v85;
  v36(v37, v85);
  if ((*(v32 + 48))(v34, 1, v38) == 1)
  {
    sub_24E601704(v34, &qword_27F2213B0);
    v40 = sub_24F92AC38();
    sub_24EC63400(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v41 = 0x7364726163;
    v41[1] = 0xE500000000000000;
    v41[2] = v74;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    v42 = *(v81 + 8);
    v43 = v79;
    v42(v87, v79);
    v36(v82, v39);
    v42(v91, v43);
LABEL_5:
    sub_24E601704(v80, &qword_27F213E68);
    return v38;
  }

  v77 = v36;
  v86 = v35;
  v44 = v76;
  (*(v32 + 32))(v76, v34, v38);
  (*(v32 + 16))(v73, v44, v38);
  v45 = v91;
  v46 = v79;
  v71(v72, v91, v79);
  type metadata accessor for TodayCard();
  v47 = v38;
  sub_24EC63400(&qword_27F2294D0, type metadata accessor for TodayCard);
  v48 = v75;
  v49 = sub_24F92B688();
  v38 = v45;
  v50 = v46;
  if (v48)
  {
    v51 = *(v81 + 8);
    v51(v87, v50);
    (v77)(v82, v85);
    (*(v32 + 8))(v44, v47);
    v51(v45, v50);
    goto LABEL_5;
  }

  v78 = v49;
  v53 = v69;
  sub_24F928398();
  v54 = sub_24F928348();
  v56 = v77;
  v57 = v46;
  if (v55)
  {
    v88 = v54;
    v89 = v55;
  }

  else
  {
    v58 = v66;
    sub_24F91F6A8();
    v59 = sub_24F91F668();
    v61 = v60;
    (*(v67 + 8))(v58, v68);
    v88 = v59;
    v89 = v61;
  }

  sub_24F92C7F8();
  v62 = v85;
  v56(v53, v85);
  v63 = v80;
  v64 = v70;
  sub_24E60169C(v80, v70, &qword_27F213E68);
  type metadata accessor for InlineTodayCards();
  swift_allocObject();
  v38 = sub_24EC6307C(v90, v78, v64);

  v65 = *(v81 + 8);
  v65(v87, v57);
  v56(v82, v62);
  (*(v83 + 8))(v76, v84);
  v65(v91, v57);
  sub_24E601704(v63, &qword_27F213E68);
  return v38;
}

uint64_t sub_24EC62DDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      goto LABEL_3;
    }

LABEL_15:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v7 = result;
  v8 = sub_24F92C738();
  result = v7;
  if (v8 <= v7)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      v5 = *(v4 + 8 * result + 32);

      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  v5 = MEMORY[0x253052270]();
LABEL_7:
  v6 = *(v5 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_clickAction);
  if (v6)
  {
    *a2 = v6;
    *(a2 + 32) = type metadata accessor for TodayCard();
    *(a2 + 8) = v5;
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t InlineTodayCards.deinit()
{

  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16InlineTodayCards_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t InlineTodayCards.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16InlineTodayCards_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC62FF0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = InlineTodayCards.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EC6307C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v30, &qword_27F235830);
  if (*(&v31 + 1))
  {
    v33 = v30;
    v34 = v31;
    v35 = v32;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v28 = v12;
    v29 = v14;
    sub_24F92C7F8();
    sub_24E601704(&v30, &qword_27F235830);
  }

  v15 = v34;
  *(v4 + 24) = v33;
  *(v4 + 40) = v15;
  *(v4 + 56) = v35;
  sub_24E60169C(a3, v4 + OBJC_IVAR____TtC12GameStoreKit16InlineTodayCards_impressionMetrics, &qword_27F213E68);
  *&v33 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
LABEL_22:
    v16 = sub_24F92C738();
    if (v16)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_6:
      v25 = a3;
      v26 = a1;
      v27 = v4;
      v17 = 0;
      v4 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x253052270](v17, a2);
          a1 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v23 = v33;
            a1 = v26;
            v4 = v27;
            a3 = v25;
            goto LABEL_24;
          }
        }

        else
        {
          if (v17 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_22;
          }

          v18 = *(a2 + 8 * v17 + 32);

          a1 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_19;
          }
        }

        v19 = *(*(v18 + 64) + 16);
        v20 = v19 > 8;
        v21 = (1 << v19) & 0x183;
        if (v20 || v21 == 0)
        {
        }

        else
        {
          sub_24F92C948();
          a3 = *(v33 + 16);
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
        }

        ++v17;
        if (a1 == v16)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_24:
  sub_24E601704(a3, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  *(v4 + 16) = v23;
  return v4;
}

uint64_t type metadata accessor for InlineTodayCards()
{
  result = qword_27F22C4E0;
  if (!qword_27F22C4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC63400(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24EC63450()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EC63594()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_allocate_value_buffer(v0, qword_27F39C1B0);
  __swift_project_value_buffer(v0, qword_27F39C1B0);
  return sub_24F928C68();
}

void sub_24EC6360C()
{
  v0 = *MEMORY[0x277CBED28];
  v1 = objc_allocWithZone(ASKAtomicBox);
  v2 = v0;
  v3 = [v1 initWithValue_];

  qword_27F22C4F0 = v3;
}

uint64_t sub_24EC63670()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  __swift_allocate_value_buffer(v0, qword_27F22C4F8);
  __swift_project_value_buffer(v0, qword_27F22C4F8);
  return sub_24F928C68();
}

uint64_t sub_24EC636E8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_24F91F4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210500 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  __swift_project_value_buffer(v9, qword_27F22C4F8);
  sub_24F928868();

  if (v12[1])
  {
    sub_24F91F488();

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v8, v4, v5);
      LOBYTE(v12[0]) = 0;
      sub_24EC63950(v8, v12, a1);
      (*(v6 + 8))(v8, v5);
      v10 = 0;
      return (*(v6 + 56))(a1, v10, 1, v5);
    }

    sub_24E601704(v4, &qword_27F228530);
  }

  v10 = 1;
  return (*(v6 + 56))(a1, v10, 1, v5);
}

uint64_t sub_24EC63950@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F928418();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = *a2;
  if (sub_24F91F388() == 0x6B63617074656ALL && v8 == 0xE700000000000000)
  {

LABEL_5:
    v10 = sub_24F91F4A8();
    v11 = *(*(v10 - 8) + 16);

    return v11(a3, a1, v10);
  }

  v9 = sub_24F92CE08();

  if (v9)
  {
    goto LABEL_5;
  }

  v13 = sub_24F91F4A8();
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  LOBYTE(v19[0]) = v7;
  v14 = sub_24EC65D88();
  v15 = sub_24EC65F10(7565161, 0xE300000000000000, v19, v14 & 1, 1);
  v17 = v16;
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v18 = sub_24F92AAE8();
  __swift_project_value_buffer(v18, qword_27F39C3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v19[3] = MEMORY[0x277D837D0];
  v19[0] = v15;
  v19[1] = v17;

  sub_24F9283D8();
  sub_24E601704(v19, &qword_27F2129B0);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  sub_24F91F3C8();
}

uint64_t sub_24EC63CA0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v82 = a4;
  v83 = a3;
  v73 = a2;
  v5 = sub_24F928048();
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x28223BE20](v5);
  v75 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v73 - v13;
  v15 = sub_24F91F4A8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v80 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v74 = &v73 - v19;
  MEMORY[0x28223BE20](v20);
  v84 = &v73 - v21;
  MEMORY[0x28223BE20](v22);
  v79 = &v73 - v23;
  v81 = *a1;
  v24 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_24F9479A0;
  *(v25 + 32) = @"debug";
  *(v25 + 40) = @"convergence";
  *(v25 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v26 = @"debug";
  v27 = @"convergence";
  v28 = @"internal";
  v29 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v24, v29);

  if (IsAnyOf)
  {
    sub_24EC636E8(v14);
    v31 = v16;
    v32 = v15;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v49 = v79;
      (*(v16 + 32))(v79, v14, v15);
      v50 = [objc_opt_self() sharedInstance];
      v85[0] = 0;
      v85[1] = 0xE000000000000000;
      sub_24F92C888();
      MEMORY[0x253050C20](0xD000000000000034, 0x800000024FA58650);
      sub_24EC6614C(&qword_27F21B620, MEMORY[0x277CC9260]);
      v51 = sub_24F92CD88();
      MEMORY[0x253050C20](v51);

      v52 = objc_allocWithZone(GSKDebugNotification);
      v53 = sub_24F92B098();

      v54 = [v52 initWithText_];

      [v50 notify_];
      if (qword_27F210570 != -1)
      {
        swift_once();
      }

      v55 = sub_24F92AAE8();
      __swift_project_value_buffer(v55, qword_27F39C3B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      LOBYTE(v85[0]) = v81;
      v56 = v84;
      sub_24EC63950(v49, v85, v84);
      v58 = v76;
      v57 = v77;
      v59 = v78;
      (*(v77 + 104))(v76, *MEMORY[0x277D21A70], v78);
      v60 = swift_allocObject();
      v61 = v83;
      *(v60 + 16) = v83;
      v62 = sub_24F927F18();
      v63 = v82;
      v82[3] = v62;
      v63[4] = sub_24EC6614C(&qword_27F22C518, MEMORY[0x277D219B0]);
      __swift_allocate_boxed_opaque_existential_1(v63);
      (*(v31 + 16))(v74, v56, v32);
      (*(v57 + 16))(v75, v58, v59);
      v64 = v61;
      sub_24F927F28();
      (*(v57 + 8))(v58, v59);
      v65 = *(v31 + 8);
      v65(v84, v32);
      return (v65)(v79, v32);
    }

    sub_24E601704(v14, &qword_27F228530);
  }

  v33 = ASKBuildTypeGetCurrent();
  v34 = sub_24F92B0D8();
  v36 = v35;
  if (v34 == sub_24F92B0D8() && v36 == v37)
  {

    v38 = v15;
LABEL_8:
    if (qword_27F210570 != -1)
    {
      swift_once();
    }

    v40 = sub_24F92AAE8();
    __swift_project_value_buffer(v40, qword_27F39C3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    sub_24F91F488();
    result = (*(v16 + 48))(v11, 1, v38);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v85[0]) = v81;
      v42 = v80;
      sub_24EC63950(v11, v85, v80);
      v43 = *(v16 + 8);
      v43(v11, v38);
      v44 = swift_allocObject();
      v45 = v83;
      *(v44 + 16) = v83;
      v46 = sub_24F927F18();
      v47 = v82;
      v82[3] = v46;
      v47[4] = sub_24EC6614C(&qword_27F22C518, MEMORY[0x277D219B0]);
      __swift_allocate_boxed_opaque_existential_1(v47);
      (*(v16 + 16))(v84, v42, v38);
      v48 = v45;
      sub_24F927F38();
      return (v43)(v42, v38);
    }

    return result;
  }

  v39 = sub_24F92CE08();

  v38 = v15;
  if (v39)
  {
    goto LABEL_8;
  }

  if (qword_27F210828 != -1)
  {
    swift_once();
  }

  v66 = qword_27F233788;
  sub_24F92A328();
  *(swift_allocObject() + 16) = v81;
  v67 = swift_allocObject();
  v68 = v83;
  *(v67 + 16) = v83;
  v69 = sub_24F927F58();
  v70 = v82;
  v82[3] = v69;
  v70[4] = sub_24EC6614C(&qword_27F22C520, MEMORY[0x277D219C8]);
  __swift_allocate_boxed_opaque_existential_1(v70);
  v71 = v68;
  v72 = v66;
  return sub_24F927F68();
}

uint64_t sub_24EC647DC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v5 + 296) = a3;
  *(v5 + 304) = a5;
  *(v5 + 280) = a1;
  *(v5 + 288) = a2;
  v7 = sub_24F92A498();
  *(v5 + 312) = v7;
  *(v5 + 320) = *(v7 - 8);
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  sub_24F928418();
  *(v5 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  *(v5 + 352) = swift_task_alloc();
  v8 = sub_24F91F4A8();
  *(v5 + 360) = v8;
  *(v5 + 368) = *(v8 - 8);
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = *a4;

  return MEMORY[0x2822009F8](sub_24EC64990, 0, 0);
}

uint64_t sub_24EC64990()
{
  v48 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  sub_24E99091C(*(v0 + 304), v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 400);
  if (v4 == 1)
  {
    v6 = *(v0 + 288);
    v7 = *(v0 + 296);
    sub_24E601704(*(v0 + 352), &qword_27F228530);
    v46 = v5;
    sub_24EC63CA0(&v46, v6, v7, (v0 + 56));
    if (!*(v0 + 80))
    {
      sub_24E601704(v0 + 56, &qword_27F22C510);
      sub_24F92A868();
      sub_24EC6614C(&qword_27F222F70, MEMORY[0x277D22430]);
      swift_allocError();
      sub_24F92A808();
      swift_willThrow();

      v33 = *(v0 + 8);
      goto LABEL_11;
    }

    v8 = v0 + 16;
    sub_24E612C80((v0 + 56), v0 + 16);
    if (qword_27F210570 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 320);
    v10 = *(v0 + 328);
    v42 = *(v0 + 312);
    v44 = *(v0 + 296);
    v40 = *(v0 + 288);
    v11 = sub_24F92AAE8();
    __swift_project_value_buffer(v11, qword_27F39C3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v12 = *(v0 + 40);
    v13 = __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
    *(v0 + 240) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    sub_24F9283D8();
    sub_24E601704(v0 + 216, &qword_27F2129B0);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    sub_24E615E00(v0 + 16, v0 + 96);
    (*(v9 + 16))(v10, v40, v42);
    v15 = type metadata accessor for JSJetpackFetcher();
    swift_allocObject();
    v16 = sub_24ECF4174(v0 + 96, v44, v10);
    v35 = *(v0 + 280);
    v35[3] = v15;
    v35[4] = &off_2861EE928;
    *v35 = v16;
  }

  else
  {
    v17 = *(v0 + 384);
    v18 = *(v0 + 392);
    v19 = *(v0 + 368);
    v20 = *(v0 + 376);
    v21 = *(v0 + 360);
    v22 = *(v0 + 296);
    (*(v19 + 32))(v18, *(v0 + 352), v21);
    v47[0] = v5;
    sub_24EC63950(v18, v47, v17);
    *(swift_allocObject() + 16) = v22;
    *(v0 + 160) = sub_24F927F18();
    *(v0 + 168) = sub_24EC6614C(&qword_27F22C518, MEMORY[0x277D219B0]);
    v45 = (v0 + 136);
    __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    (*(v19 + 16))(v20, v17, v21);
    v23 = v22;
    sub_24F927F38();
    v43 = *(v19 + 8);
    v43(v17, v21);
    if (qword_27F210570 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 320);
    v38 = *(v0 + 336);
    v39 = *(v0 + 312);
    v41 = *(v0 + 296);
    v37 = *(v0 + 288);
    v25 = sub_24F92AAE8();
    __swift_project_value_buffer(v25, qword_27F39C3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v26 = *(v0 + 160);
    v8 = v0 + 136;
    v27 = __swift_project_boxed_opaque_existential_1(v45, v26);
    *(v0 + 272) = v26;
    v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 248));
    (*(*(v26 - 8) + 16))(v28, v27, v26);
    sub_24F9283D8();
    sub_24E601704(v0 + 248, &qword_27F2129B0);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    sub_24E615E00(v45, v0 + 176);
    (*(v24 + 16))(v38, v37, v39);
    v29 = type metadata accessor for JSJetpackFetcher();
    swift_allocObject();
    v30 = sub_24ECF4174(v0 + 176, v41, v38);
    v31 = *(v0 + 392);
    v32 = *(v0 + 360);
    v34 = *(v0 + 280);
    v34[3] = v29;
    v34[4] = &off_2861EE928;
    *v34 = v30;
    v43(v31, v32);
  }

  __swift_destroy_boxed_opaque_existential_1(v8);

  v33 = *(v0 + 8);
LABEL_11:

  return v33();
}

id sub_24EC651C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = [objc_opt_self() ams:a3 configurationWithProcessInfo:a1 bag:?];
  swift_unknownObjectRetain();
  sub_24F92A3C8();
  v9 = sub_24F92A498();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_24F928038();
  sub_24E601704(v7, &qword_27F2384D0);
  return v8;
}

uint64_t sub_24EC65300@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v93 = a4;
  v94 = a5;
  v100 = a1;
  v8 = sub_24F92B138();
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  v16 = sub_24F91F4A8();
  v96 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v79 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v79 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v25)
    {
      goto LABEL_18;
    }

    LODWORD(v26) = HIDWORD(v100) - v100;
    if (!__OFSUB__(HIDWORD(v100), v100))
    {
      v26 = v26;
      goto LABEL_7;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  if (v25 != 2)
  {
    goto LABEL_18;
  }

  v28 = *(v100 + 16);
  v27 = *(v100 + 24);
  v29 = __OFSUB__(v27, v28);
  v26 = v27 - v28;
  if (v29)
  {
    goto LABEL_23;
  }

LABEL_7:
  if (v26 < 460801)
  {
    goto LABEL_18;
  }

  v80 = v24;
  v81 = v15;
  v90 = v22;
  v91 = v16;
  v87 = v12;
  if (qword_27F210570 != -1)
  {
    goto LABEL_24;
  }

LABEL_9:
  v30 = sub_24F92AAE8();
  v31 = __swift_project_value_buffer(v30, qword_27F39C3B0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  v33 = *(sub_24F928468() - 8);
  v34 = *(v33 + 72);
  v35 = *(v33 + 80);
  v36 = (v35 + 32) & ~v35;
  v83 = v32;
  v84 = v34;
  v88 = v35;
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v82 = v36;
  sub_24F9283A8();
  v89 = v30;
  v85 = v31;
  sub_24F92A5B8();

  v37 = a3[3];
  v38 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v37);
  v39 = (*(v38 + 8))(v37, v38);
  v41 = v40;
  sub_24F929388();
  v42 = _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v43 = sub_24EF9A690(v39, v41, v42, MEMORY[0x277D21E70], 7368801);
  v86 = a2;
  v92 = v42;
  if ((v43 & 1) != 0 || (sub_24EF9AAE0(v100, a2, v39, v41, v42, MEMORY[0x277D21E70], 7368801, 0xE300000000000000), !v5))
  {
    v44 = v91;

    v45 = [objc_opt_self() defaultManager];
    v46 = v90;
    sub_24EF9B868(v45);

    sub_24F91F3D8();
    sub_24F91F3F8();
    v47 = v96;
    v48 = *(v96 + 8);
    v48(v19, v44);
    v48(v46, v44);
    v49 = a3[3];
    v50 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v49);
    (*(v50 + 16))(v49, v50);
    (*(v47 + 56))(v81, 1, 1, v44);
    v51 = sub_24F929348();
    v52 = MEMORY[0x277D21E58];
    v53 = v94;
    v94[3] = v51;
    v53[4] = v52;
    __swift_allocate_boxed_opaque_existential_1(v53);
    v54 = v93;
    sub_24F929338();
    if (!v5)
    {
    }

    __swift_deallocate_boxed_opaque_existential_2(v53);
  }

  else
  {
  }

  v93 = v5;
  v80 = v82 + 2 * v84;
  v81 = 0;
  v55 = swift_allocObject();
  v79 = xmmword_24F93A400;
  *(v55 + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v56 = sub_24F91F268();
  v57 = AMSLogableError();

  v58 = sub_24F92B0D8();
  v60 = v59;

  v99 = MEMORY[0x277D837D0];
  v97 = v58;
  v98 = v60;
  sub_24F928438();
  sub_24E601704(&v97, &qword_27F2129B0);
  sub_24F92A5A8();

  v61 = v81;
  sub_24EF9B244(v92, MEMORY[0x277D21E70], 7368801);
  if (v61)
  {
    *(swift_allocObject() + 16) = v79;
    sub_24F9283A8();
    v62 = sub_24F91F268();
    v63 = AMSLogableError();

    v64 = sub_24F92B0D8();
    v66 = v65;

    v99 = MEMORY[0x277D837D0];
    v97 = v64;
    v98 = v66;
    sub_24F928438();
    sub_24E601704(&v97, &qword_27F2129B0);
    sub_24F92A5A8();

    v67 = v61;
    v12 = v87;
    v22 = v90;
  }

  else
  {

    v12 = v87;
    v22 = v90;
    v67 = v93;
  }

  v16 = v91;
LABEL_18:
  sub_24F92B128();
  sub_24F92B0F8();
  if (v68)
  {
    v69 = a3[3];
    v70 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v69);
    (*(v70 + 16))(v69, v70);
    (*(v96 + 56))(v12, 0, 1, v16);
    v71 = sub_24F92AAA8();
    v72 = MEMORY[0x277D224E8];
    v73 = v94;
    v94[3] = v71;
    v73[4] = v72;
    __swift_allocate_boxed_opaque_existential_1(v73);
    return sub_24F92AA98();
  }

  else
  {
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_24F92C888();

    v97 = 0xD000000000000012;
    v98 = 0x800000024FA584C0;
    v75 = v22;
    v76 = a3[3];
    v77 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v76);
    (*(v77 + 16))(v76, v77);
    sub_24EC6614C(&qword_27F21B620, MEMORY[0x277CC9260]);
    v78 = sub_24F92CD88();
    MEMORY[0x253050C20](v78);

    (*(v96 + 8))(v75, v16);
    MEMORY[0x253050C20](0x746F6E207369203ELL, 0xED00003846545520);
    sub_24F92A868();
    sub_24EC6614C(&qword_27F222F70, MEMORY[0x277D22430]);
    swift_allocError();
    sub_24F92A808();
    return swift_willThrow();
  }
}

uint64_t sub_24EC65D48()
{

  return swift_deallocObject();
}

uint64_t sub_24EC65D88()
{
  v0 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F9479A0;
  *(v1 + 32) = @"debug";
  *(v1 + 40) = @"convergence";
  *(v1 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v2 = @"debug";
  v3 = @"convergence";
  v4 = @"internal";
  v5 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v0, v5);

  if (IsAnyOf)
  {
    sub_24F929388();
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    if (qword_27F2104F0 != -1)
    {
      swift_once();
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
    __swift_project_value_buffer(v7, qword_27F39C1B0);
    sub_24F928868();

    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_24EC65F10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v22 = xmmword_24F990640;
  v23 = a1;
  v24 = a2;
  v25 = xmmword_24F990650;
  v6 = 0x6C616E7265746E69;
  if ((a4 & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0xE800000000000000;
  if ((a4 & 1) == 0)
  {
    v7 = 0;
  }

  v26 = v6;
  v27 = v7;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
LABEL_6:
  if (v9 <= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 + 1;
  v13 = 16 * v9 + 40;
  while (v9 != 4)
  {
    if (v12 == ++v9)
    {
      __break(1u);
      return result;
    }

    v14 = v13 + 16;
    v15 = *&v21[v13];
    v13 += 16;
    if (v15)
    {
      v16 = *&v21[v14 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E615CF4(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_24E615CF4((v17 > 1), v18 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E907170();
  v20 = sub_24F92AF68();

  if (a5)
  {
    MEMORY[0x253050C20](0x6B63617074656A2ELL, 0xE800000000000000);
  }

  return v20;
}

uint64_t sub_24EC6614C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC661DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 8) != 1)
  {

    sub_24F92BDC8();
    v9 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E83C01C(v7, 0);
    (*(v4 + 8))(v6, v3);
    if (v14 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = MEMORY[0x277CE13D8];
    goto LABEL_6;
  }

  v14 = v7 & 1;
  if (v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = MEMORY[0x277CE13B8];
LABEL_6:
  v10 = *v8;
  v11 = sub_24F927748();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

uint64_t sub_24EC66394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C528);
  sub_24EC661DC(a2 + *(v4 + 36));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C530);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

unint64_t sub_24EC66454()
{
  result = qword_27F22C538;
  if (!qword_27F22C538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C528);
    sub_24EC664E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C538);
  }

  return result;
}

unint64_t sub_24EC664E0()
{
  result = qword_27F22C540;
  if (!qword_27F22C540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C540);
  }

  return result;
}

uint64_t LoadingPagePresenter.pageUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24EC6660C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EC66678(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t LoadingPagePresenter.__allocating_init(objectGraph:pageUrl:isIncomingURL:referrerData:)(uint64_t a1, uint64_t a2, char a3, __int128 *a4)
{
  v7 = swift_allocObject();
  v8 = *(a4 + 4);
  v9 = *(a4 + 40);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageAction) = 0;
  v10 = v7 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData;
  *v10 = xmmword_24F9406F0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  *(v10 + 40) = 0;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  v22 = *a4;
  v23 = a4[1];
  (*(v13 + 16))(v7 + v11, a2, v12);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_isIncomingURL) = a3;
  v14 = *v10;
  v15 = *(v10 + 8);
  v16 = *(v10 + 16);
  v17 = *(v10 + 24);
  v18 = *(v10 + 32);
  *v10 = v22;
  *(v10 + 16) = v23;
  *(v10 + 32) = v8;
  v19 = *(v10 + 40);
  *(v10 + 40) = v9;
  sub_24EA14B54(v14, v15, v16, v17, v18, v19);
  v20 = sub_24EC8415C(a1, 0, 0, 0);

  (*(v13 + 8))(a2, v12);
  return v20;
}

uint64_t LoadingPagePresenter.init(objectGraph:pageUrl:isIncomingURL:referrerData:)(uint64_t a1, uint64_t a2, char a3, __int128 *a4)
{
  v9 = *(a4 + 4);
  v24 = *(a4 + 40);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageAction) = 0;
  v10 = v4 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData;
  *v10 = xmmword_24F9406F0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  *(v10 + 40) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  v22 = *a4;
  v23 = a4[1];
  (*(v13 + 16))(v4 + v11, a2, v12);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_isIncomingURL) = a3;
  v14 = *v10;
  v15 = *(v10 + 8);
  v16 = *(v10 + 16);
  v17 = *(v10 + 24);
  v18 = *(v10 + 32);
  *v10 = v22;
  *(v10 + 16) = v23;
  *(v10 + 32) = v9;
  v19 = *(v10 + 40);
  *(v10 + 40) = v24;
  sub_24EA14B54(v14, v15, v16, v17, v18, v19);
  v20 = sub_24EC8415C(a1, 0, 0, 0);

  (*(v13 + 8))(a2, v12);
  return v20;
}

uint64_t sub_24EC66A80()
{
  v1 = v0;
  v2 = type metadata accessor for ActionIntent();
  MEMORY[0x28223BE20](v2);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A088();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if ((*(v0 + 32) & 1) == 0)
  {
    *(v0 + 32) = 1;
    v10 = v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v11 + 16) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (*(v0 + 24))
    {
      *v8 = 1;
      (*(v6 + 104))(v8, *MEMORY[0x277D222A0], v5);

      sub_24F92A0D8();

      (*(v6 + 8))(v8, v5);
    }

    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    v29[1] = v30[0];
    v13 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
    v14 = v2[5];
    v15 = sub_24F91F4A8();
    (*(*(v15 - 8) + 16))(&v4[v14], v1 + v13, v15);
    v16 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_isIncomingURL);
    v17 = v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData;
    v18 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData);
    v19 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 8);
    v20 = v4;
    v21 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 16);
    v22 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 24);
    v23 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 32);
    strcpy(v20, "ActionIntent");
    *(v20 + 13) = 0;
    *(v20 + 14) = -5120;
    *(v20 + v2[6]) = v16;
    v24 = v20 + v2[7];
    *v24 = v18;
    *(v24 + 8) = v19;
    *(v24 + 16) = v21;
    *(v24 + 24) = v22;
    *(v24 + 32) = v23;
    v25 = *(v17 + 40);
    *(v24 + 40) = v25;
    sub_24F929C28();
    sub_24EA145F0(v18, v19, v21, v22, v23, v25);

    sub_24F928FE8();

    sub_24F929BF8();

    v26 = sub_24F929C08();

    sub_24EB47578(v20, v26, "GameStoreKit/LoadingPagePresenter.swift", 39, 2);
    v27 = sub_24E74EC40();
    swift_retain_n();
    v28 = sub_24F92BEF8();
    v30[3] = v27;
    v30[4] = MEMORY[0x277D225C0];
    v30[0] = v28;
    sub_24F92A958();

    sub_24EC67894(v20);
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t sub_24EC66EB0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_24F92A078();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  type metadata accessor for FlowAction();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v31 = v7;
    v32 = v5;
    v33 = v4;
    v11 = (v9 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData);
    swift_beginAccess();
    v12 = v11[3];
    if (v12)
    {
      v13 = v11[4];
      v14 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      v15 = *(v12 - 8);
      v16 = MEMORY[0x28223BE20](v14);
      v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18, v16);
      v19 = *(v13 + 8);

      v19(&v36, v12, v13);
      (*(v15 + 8))(v18, v12);
    }

    else
    {
      v37 = 0u;
      v36 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C570);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v39 = 0;
      memset(v38, 0, sizeof(v38));
    }

    sub_24EC67B6C(v38, &v34);
    if (v35)
    {
      sub_24E612C80(&v34, &v36);
      sub_24E612C80(&v36, &v40);
    }

    else
    {
      sub_24E601704(&v34, &qword_27F22C578);
      *(&v37 + 1) = MEMORY[0x277D84F78] + 8;
      if ((swift_dynamicCast() & 1) == 0)
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
      }
    }

    sub_24E601704(v38, &qword_27F22C578);
    if (*(&v41 + 1))
    {
      sub_24E612C80(&v40, &v43);
      swift_beginAccess();
      if (*(a2 + 24))
      {
        __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));

        v20 = v31;
        sub_24F92AD48();
        v21 = v32;
        v22 = v33;
        (*(v32 + 104))(v20, *MEMORY[0x277D22290], v33);
        sub_24F92A0C8();

        (*(v21 + 8))(v20, v22);
        v23 = *(a2 + 24);
      }

      else
      {
        v23 = 0;
      }

      v24 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics;
      swift_beginAccess();
      *(v10 + v24) = v23;

      __swift_destroy_boxed_opaque_existential_1(&v43);
    }

    else
    {

      sub_24E601704(&v40, &qword_27F22C578);
    }
  }

  *(a2 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageAction) = v8;

  v25 = a2 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v25 + 8);
    ObjectType = swift_getObjectType();
    v43 = 0u;
    v44 = 0u;
    (*(*(v26 + 8) + 8))(v8, &v43, ObjectType);
    swift_unknownObjectRelease();
    sub_24E601704(&v43, &qword_27F2129B0);
  }

  swift_beginAccess();
  *(a2 + 32) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v25 + 8);
    v30 = swift_getObjectType();
    (*(*(v29 + 16) + 16))(v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EC67410(void *a1, uint64_t a2)
{
  v4 = sub_24F92A078();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  *(a2 + 32) = 0;
  v8 = a2 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v9 + 16) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v8 + 8);
    v12 = swift_getObjectType();
    (*(*(v11 + 16) + 24))(a1, v12);
    swift_unknownObjectRelease();
  }

  result = swift_beginAccess();
  if (*(a2 + 24))
  {
    *v7 = a1;
    (*(v5 + 104))(v7, *MEMORY[0x277D22280], v4);

    v14 = a1;
    sub_24F92A0C8();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_24EC6762C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 40));
  v3 = v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;

  return sub_24E883630(v3);
}

uint64_t LoadingPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  v1 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 40));
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view);
  return v0;
}

uint64_t LoadingPagePresenter.__deallocating_deinit()
{
  v0 = BasePresenter.deinit();
  v1 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 40));
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC67894(uint64_t a1)
{
  v2 = type metadata accessor for ActionIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC678F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EC6794C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for LoadingPagePresenter()
{
  result = qword_27F22C560;
  if (!qword_27F22C560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC67A04()
{
  result = sub_24F91F4A8();
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

uint64_t sub_24EC67B6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

GameStoreKit::ProductMedia::DescriptionPlacement __swiftcall ProductMedia.descriptionPlacement(when:)(GameStoreKit::ProductMedia::DescriptionPlacement when)
{
  if (when)
  {
    *v1 = 1;
  }

  else
  {
    *v1 = *(v2 + 72);
  }

  return when;
}

GameStoreKit::ProductMedia::DescriptionPlacement __swiftcall ProductMediaMetadata.descriptionPlacement(when:)(GameStoreKit::ProductMedia::DescriptionPlacement when)
{
  if (when)
  {
    *v1 = 1;
  }

  else
  {
    *v1 = *(v2 + 48);
  }

  return when;
}

double sub_24EC67C24@<D0>(_OWORD *a1@<X8>)
{
  sub_24EC6BAC0();
  sub_24F924868();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_24EC67C74()
{
  sub_24EC6BAC0();

  return sub_24F924878();
}

uint64_t static DestinationViewFactory.makeView(for:objectGraph:)@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a2;
  v135 = a3;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C580);
  v113 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v110 = &v100 - v4;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C588);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v100 - v5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C590);
  MEMORY[0x28223BE20](v122);
  v114 = &v100 - v6;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C598);
  MEMORY[0x28223BE20](v118);
  v120 = &v100 - v7;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5A0);
  MEMORY[0x28223BE20](v129);
  v123 = &v100 - v8;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5A8);
  v112 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v109 = &v100 - v9;
  v104 = sub_24F921B98();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5B0);
  v111 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v108 = &v100 - v11;
  v12 = type metadata accessor for ArticlePageIntent();
  v101 = *(v12 - 8);
  v13 = *(v101 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v115 = &v100 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5B8);
  MEMORY[0x28223BE20](v132);
  v134 = &v100 - v17;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5C0);
  MEMORY[0x28223BE20](v126);
  v128 = &v100 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5C8);
  MEMORY[0x28223BE20](v116);
  v119 = &v100 - v19;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5D0);
  MEMORY[0x28223BE20](v127);
  v121 = &v100 - v20;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5D8);
  MEMORY[0x28223BE20](v133);
  v130 = &v100 - v21;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5E0);
  MEMORY[0x28223BE20](v117);
  v23 = &v100 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140);
  v100 = *(v24 - 8);
  v25 = *(v100 + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v100 - v28;
  v30 = type metadata accessor for FlowAction.Destination();
  MEMORY[0x28223BE20](v30);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_24EC6A254(a1, v32, type metadata accessor for FlowAction.Destination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v71 = v115;
      sub_24EC6A1F0(v32, v115);
      sub_24EC6A254(v71, v14, type metadata accessor for ArticlePageIntent);
      v72 = (*(v101 + 80) + 16) & ~*(v101 + 80);
      v73 = swift_allocObject();
      sub_24EC6A1F0(v14, v73 + v72);
      *(v73 + ((v13 + v72 + 7) & 0xFFFFFFFFFFFFFFF8)) = v131;
      v74 = swift_allocObject();
      *(v74 + 16) = sub_24EC6A3B8;
      *(v74 + 24) = v73;
      *&v146 = sub_24EC6A444;
      *(&v146 + 1) = v74;
      LOBYTE(v147) = 0;
      v75 = v103;
      v76 = v102;
      v77 = v104;
      (*(v103 + 104))(v102, *MEMORY[0x277D7EC30], v104);
      v78 = sub_24EC696CC();

      v79 = v108;
      sub_24F925F78();
      (*(v75 + 8))(v76, v77);

      v80 = v111;
      v81 = v125;
      (*(v111 + 16))(v119, v79, v125);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F22C600, &qword_27F22C5E0);
      *&v146 = &type metadata for GamesArticlePageView;
      *(&v146 + 1) = v78;
      swift_getOpaqueTypeConformance2();
      v82 = v121;
      sub_24F924E28();
      sub_24E60169C(v82, v128, &qword_27F22C5D0);
      swift_storeEnumTagMultiPayload();
      sub_24EC695E8();
      sub_24EC69720();
      v83 = v130;
      sub_24F924E28();
      sub_24E601704(v82, &qword_27F22C5D0);
      sub_24E60169C(v83, v134, &qword_27F22C5D8);
      swift_storeEnumTagMultiPayload();
      sub_24EC6955C();
      sub_24E602068(&qword_27F22C630, &qword_27F22C580);
      sub_24F924E28();

      sub_24E601704(v83, &qword_27F22C5D8);
      (*(v80 + 8))(v79, v81);
      v69 = type metadata accessor for ArticlePageIntent;
      v70 = v115;
      return sub_24EC6AEB8(v70, v69);
    }

    v35 = v131;
    if (EnumCaseMultiPayload == 12)
    {
      v124 = *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148) + 48)];
      sub_24EAB9588(v32, v29);
      type metadata accessor for ASKBagContract();
      sub_24F928F28();
      v122 = v141;
      type metadata accessor for LocalPlayerProvider();
      sub_24F928F28();
      v120 = v140;
      type metadata accessor for ArcadeSubscription();
      sub_24F928F28();
      v118 = v139;
      type metadata accessor for NetworkConnectionMonitor();
      sub_24F928F28();
      v115 = v138;
      v36 = v35;
      if (qword_27F20FF08 != -1)
      {
        swift_once();
      }

      v37 = xmmword_27F39ACF8;
      v38 = *(&xmmword_27F39AD08 + 1);
      v113 = xmmword_27F39AD08;
      LODWORD(v114) = byte_27F39AD18;
      sub_24E60169C(v29, v26, &qword_27F227140);
      v39 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v40 = swift_allocObject();
      v123 = v29;
      v41 = v40;
      v42 = v124;
      *(v40 + 16) = v36;
      *(v40 + 24) = v42;
      sub_24EAB9588(v26, v40 + v39);
      v43 = v117;
      v44 = *(v117 + 64);
      *&v23[v44] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
      swift_storeEnumTagMultiPayload();
      *&v23[*(v43 + 68)] = 0;
      v45 = &v23[*(v43 + 72)];
      v137 = 0;

      v46 = v113;

      sub_24F926F28();
      v47 = *(&v146 + 1);
      *v45 = v146;
      *(v45 + 1) = v47;
      v48 = v120;
      *v23 = v122;
      *(v23 + 1) = v48;
      v49 = v115;
      *(v23 + 2) = v118;
      *(v23 + 3) = v49;
      *(v23 + 56) = v37;
      *(v23 + 9) = v46;
      *(v23 + 10) = v38;
      v23[88] = v114;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_24EC6A580;
      *(v50 + 24) = v41;
      *(v23 + 4) = sub_24EC6A630;
      *(v23 + 5) = v50;
      v23[48] = 0;
      sub_24E60169C(v23, v119, &qword_27F22C5E0);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F22C600, &qword_27F22C5E0);
      v51 = sub_24EC696CC();
      *&v146 = &type metadata for GamesArticlePageView;
      *(&v146 + 1) = v51;
      swift_getOpaqueTypeConformance2();
      v52 = v121;
      sub_24F924E28();
      sub_24E60169C(v52, v128, &qword_27F22C5D0);
      swift_storeEnumTagMultiPayload();
      sub_24EC695E8();
      sub_24EC69720();
      v53 = v130;
      sub_24F924E28();
      sub_24E601704(v52, &qword_27F22C5D0);
      sub_24E60169C(v53, v134, &qword_27F22C5D8);
      swift_storeEnumTagMultiPayload();
      sub_24EC6955C();
      sub_24E602068(&qword_27F22C630, &qword_27F22C580);
      sub_24F924E28();

      sub_24E601704(v53, &qword_27F22C5D8);
      sub_24E601704(v23, &qword_27F22C5E0);
      return sub_24E601704(v123, &qword_27F227140);
    }

LABEL_10:
    type metadata accessor for DestinationViewFactory.DestinationError();
    sub_24EC69504();
    swift_allocError();
    sub_24EC6A254(v33, v65, type metadata accessor for FlowAction.Destination);
    v66 = v110;
    sub_24F921A28();
    v67 = v113;
    v68 = v136;
    (*(v113 + 16))(v134, v66, v136);
    swift_storeEnumTagMultiPayload();
    sub_24EC6955C();
    sub_24E602068(&qword_27F22C630, &qword_27F22C580);
    sub_24F924E28();
    (*(v67 + 8))(v66, v68);
    v69 = type metadata accessor for FlowAction.Destination;
    v70 = v32;
    return sub_24EC6AEB8(v70, v69);
  }

  if (EnumCaseMultiPayload != 13)
  {
    v55 = v131;
    if (EnumCaseMultiPayload == 23)
    {
      v56 = *v32;
      v121 = *(v32 + 1);
      v57 = v121;
      v58 = v32[16];
      type metadata accessor for ArtworkLoader();
      sub_24F928FD8();
      v125 = v56;

      sub_24F92A758();
      v119 = v146;
      *&v146 = v56;
      *(&v146 + 1) = v57;
      *&v147 = v58;
      *(&v147 + 1) = v55;
      *&v148 = v119;
      v59 = sub_24E7DD0B4();

      v60 = v109;
      sub_24F926628();
      v61 = v112;
      v62 = v124;
      (*(v112 + 16))(v120, v60, v124);
      swift_storeEnumTagMultiPayload();
      *&v146 = &type metadata for ShareSheetView;
      *(&v146 + 1) = v59;
      swift_getOpaqueTypeConformance2();
      sub_24EC697D8();
      v63 = v123;
      sub_24F924E28();
      sub_24E60169C(v63, v128, &qword_27F22C5A0);
      swift_storeEnumTagMultiPayload();
      sub_24EC695E8();
      sub_24EC69720();
      v64 = v130;
      sub_24F924E28();
      sub_24E601704(v63, &qword_27F22C5A0);
      sub_24E60169C(v64, v134, &qword_27F22C5D8);
      swift_storeEnumTagMultiPayload();
      sub_24EC6955C();
      sub_24E602068(&qword_27F22C630, &qword_27F22C580);
      sub_24F924E28();

      sub_24E601704(v64, &qword_27F22C5D8);
      return (*(v61 + 8))(v60, v62);
    }

    goto LABEL_10;
  }

  v84 = *(v32 + 2);
  v147 = *(v32 + 1);
  v148 = v84;
  v146 = *v32;
  v85 = *(&v84 + 1);
  KeyPath = swift_getKeyPath();
  v141 = v131;
  v142 = v85;
  v143 = KeyPath;
  v144 = 0;
  v145 = 0;
  v87 = sub_24E9D4174();
  v88 = v105;
  sub_24F925F48();

  v141 = &type metadata for MarketingItemView;
  v142 = v87;
  swift_getOpaqueTypeConformance2();
  v89 = v114;
  v90 = v107;
  sub_24F926628();
  (*(v106 + 8))(v88, v90);
  v91 = sub_24F924058();
  LOBYTE(v85) = sub_24F925808();
  v92 = v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C628) + 36);
  *v92 = v91;
  *(v92 + 8) = v85;
  if (qword_27F211278 != -1)
  {
    swift_once();
  }

  v93 = qword_27F2431D0;
  v94 = swift_getKeyPath();
  v141 = v93;

  v95 = sub_24F9238D8();
  v96 = (v89 + *(v122 + 36));
  *v96 = v94;
  v96[1] = v95;
  sub_24E60169C(v89, v120, &qword_27F22C590);
  swift_storeEnumTagMultiPayload();
  v97 = sub_24E7DD0B4();
  v141 = &type metadata for ShareSheetView;
  v142 = v97;
  swift_getOpaqueTypeConformance2();
  sub_24EC697D8();
  v98 = v123;
  sub_24F924E28();
  sub_24E60169C(v98, v128, &qword_27F22C5A0);
  swift_storeEnumTagMultiPayload();
  sub_24EC695E8();
  sub_24EC69720();
  v99 = v130;
  sub_24F924E28();
  sub_24E601704(v98, &qword_27F22C5A0);
  sub_24E60169C(v99, v134, &qword_27F22C5D8);
  swift_storeEnumTagMultiPayload();
  sub_24EC6955C();
  sub_24E602068(&qword_27F22C630, &qword_27F22C580);
  sub_24F924E28();
  sub_24E601704(v99, &qword_27F22C5D8);
  sub_24E601704(v89, &qword_27F22C590);
  return sub_24EC6A19C(&v146);
}

uint64_t type metadata accessor for DestinationViewFactory.DestinationError()
{
  result = qword_27F22C648;
  if (!qword_27F22C648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EC69504()
{
  result = qword_27F22C5E8;
  if (!qword_27F22C5E8)
  {
    type metadata accessor for DestinationViewFactory.DestinationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C5E8);
  }

  return result;
}

unint64_t sub_24EC6955C()
{
  result = qword_27F22C5F0;
  if (!qword_27F22C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C5D8);
    sub_24EC695E8();
    sub_24EC69720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C5F0);
  }

  return result;
}

unint64_t sub_24EC695E8()
{
  result = qword_27F22C5F8;
  if (!qword_27F22C5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C5D0);
    sub_24E602068(&qword_27F22C600, &qword_27F22C5E0);
    sub_24EC696CC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C5F8);
  }

  return result;
}

unint64_t sub_24EC696CC()
{
  result = qword_27F22C608;
  if (!qword_27F22C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C608);
  }

  return result;
}

unint64_t sub_24EC69720()
{
  result = qword_27F22C610;
  if (!qword_27F22C610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C5A0);
    sub_24E7DD0B4();
    swift_getOpaqueTypeConformance2();
    sub_24EC697D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C610);
  }

  return result;
}

unint64_t sub_24EC697D8()
{
  result = qword_27F22C618;
  if (!qword_27F22C618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C590);
    sub_24EC69890();
    sub_24E602068(&unk_27F236270, &qword_27F219DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C618);
  }

  return result;
}

unint64_t sub_24EC69890()
{
  result = qword_27F22C620;
  if (!qword_27F22C620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C588);
    sub_24E9D4174();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C620);
  }

  return result;
}

double sub_24EC69984@<D0>(_OWORD *a1@<X8>)
{
  sub_24EC6BAC0();
  sub_24F924868();
  result = *&v3;
  *a1 = v3;
  return result;
}

char *sub_24EC699D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C658);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C660);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - v8;
  v10 = type metadata accessor for ClosedGenericPageIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v16 - 8);
  v52 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  sub_24E60169C(a3, v15, &qword_27F227140);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v15, 1, v21);
  v50 = v20;
  if (v23 == 1)
  {
    sub_24E601704(v15, &qword_27F227140);
    v24 = sub_24F91F4A8();
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  }

  else
  {
    sub_24F929168();
    v25 = v9;
    v26 = *(v10 + 20);
    v27 = sub_24F91F4A8();
    v28 = *(v27 - 8);
    v49 = v7;
    v29 = v6;
    v30 = v28;
    v31 = &v12[v26];
    v9 = v25;
    (*(v28 + 16))(v20, v31, v27);
    sub_24EC6AEB8(v12, type metadata accessor for ClosedGenericPageIntent);
    (*(v22 + 8))(v15, v21);
    (*(v30 + 56))(v20, 0, 1, v27);
    v6 = v29;
    v7 = v49;
  }

  type metadata accessor for GenericPageViewModel();
  memset(v63, 0, sizeof(v63));
  v64 = 0;
  v32 = swift_allocObject();
  v33 = qword_27F23DBC0;
  v59 = 0;
  v34 = v55;

  v35 = v56;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C668);
  sub_24F923058();
  v36 = *(v7 + 32);
  v36(&v32[v33], v9, v6);
  v37 = qword_27F23DBC8;
  v59 = 0;
  sub_24F923058();
  v36(&v32[v37], v9, v6);
  v38 = qword_27F23DBD0;
  v59 = 0;
  v60 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
  v39 = v51;
  sub_24F923058();
  v40 = v54;
  v41 = *(v53 + 32);
  v41(&v32[v38], v39, v54);
  v42 = qword_27F23DBD8;
  v59 = 0;
  v60 = 1;
  sub_24F923058();
  v41(&v32[v42], v39, v40);
  *&v32[qword_27F39E160] = 0;
  *&v32[qword_27F39E168] = 0;
  type metadata accessor for PersonalizationDataProvider();

  sub_24F928EF8();
  v43 = v59;
  v44 = v50;
  v45 = v52;
  sub_24E60169C(v50, v52, &qword_27F228530);
  type metadata accessor for GenericDiffablePagePresenter();
  swift_allocObject();

  v46 = GenericDiffablePagePresenter.init(objectGraph:personalizationProvider:sidePackedPage:sidePackedPageRenderMetrics:pageUrl:)(v35, v43, v34, 0, v45);
  sub_24E60169C(v63, &v57, &qword_27F22C670);
  if (v58)
  {
    sub_24E612E28(&v57, &v59);
  }

  else
  {
    v61 = &type metadata for EditorialPageGridProvider;
    v62 = &off_2861EDD58;
  }

  v47 = sub_24EC6A8B4(v46, &v59, v35, v32);

  sub_24E601704(v63, &qword_27F22C670);
  sub_24E601704(v44, &qword_27F228530);
  return v47;
}

char *sub_24EC6A0A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticlePageIntent();
  (*(v5 + 16))(v7, a1 + *(v8 + 20), v4);

  return sub_24EC6B550(v7, a2);
}

uint64_t sub_24EC6A1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticlePageIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC6A254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC6A2BC()
{
  v1 = (type metadata accessor for ArticlePageIntent() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);
  v3 = v1[7];
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

char *sub_24EC6A3B8()
{
  v1 = *(type metadata accessor for ArticlePageIntent() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EC6A0A8(v0 + v2, v3);
}

uint64_t sub_24EC6A44C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

char *sub_24EC6A580()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_24EC699D8(v2, v3, v4);
}

uint64_t sub_24EC6A5F8()
{

  return swift_deallocObject();
}

unint64_t sub_24EC6A66C()
{
  result = qword_27F22C638;
  if (!qword_27F22C638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C640);
    sub_24EC6955C();
    sub_24E602068(&qword_27F22C630, &qword_27F22C580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C638);
  }

  return result;
}

uint64_t sub_24EC6A724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction.Destination();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EC6A790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FlowAction.Destination();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_24EC6A80C(uint64_t a1)
{
  result = type metadata accessor for FlowAction.Destination();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

char *sub_24EC6A8B4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v46 = a3;
  v41 = a1;
  v42 = a2;
  v47 = sub_24F928188();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v38 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C678);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v38 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C680);
  v10 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v51 = &type metadata for GenericPageGridMapper;
  v52 = &protocol witness table for GenericPageGridMapper;
  v19 = qword_27F239B60;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  sub_24E60169C(v18, v16, &qword_27F22C688);
  v22 = v41;
  v21 = v42;
  sub_24F923058();
  sub_24E601704(v18, &qword_27F22C688);
  (*(v10 + 32))(&a4[v19], v12, v38);
  v23 = *(*a4 + 168);
  v48 = 0;
  v49 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C690);
  sub_24F923058();
  (*(v39 + 32))(&a4[v23], v9, v40);
  v24 = &a4[*(*a4 + 176)];
  *(v24 + 25) = 0u;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = &a4[*(*a4 + 184)];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&a4[*(*a4 + 200)] = 0;
  *(a4 + 2) = v22;
  sub_24E615E00(v21, (a4 + 24));
  sub_24E615E00(v50, (a4 + 64));
  v26 = qword_27F2110D0;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_24F2DAE78();
  v28 = qword_27F39B498;
  swift_beginAccess();
  v29 = sub_24F929158();
  v30 = *(v29 - 8);
  v31 = v22 + v28;
  v32 = v43;
  (*(v30 + 16))(v43, v31, v29);
  (*(v30 + 56))(v32, 0, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90);
  sub_24F928FD8();
  sub_24F92A758();
  v33 = objc_allocWithZone(type metadata accessor for VideoPlaybackCoordinator());
  v34 = sub_24EEC35E0(v27 & 1, v32, &v48);
  *&a4[*(*a4 + 192)] = v34;
  v48 = v34;
  v35 = v44;
  sub_24F928178();
  v36 = sub_24F928F88();
  (*(v45 + 8))(v35, v47);
  *(a4 + 13) = v36;
  sub_24F11A1F0();
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return a4;
}

uint64_t sub_24EC6AEB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_24EC6AF18(uint64_t a1, uint64_t a2, char *a3)
{
  v43 = a2;
  v39 = a1;
  v44 = sub_24F928188();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v36 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6A8);
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = &v36 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C680);
  v9 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v51 = &type metadata for GenericPageGridMapper;
  v52 = &protocol witness table for GenericPageGridMapper;
  v48 = &type metadata for ArticlePageGridProvider;
  v49 = &off_2861F2918;
  v18 = qword_27F239B60;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  sub_24E60169C(v17, v14, &qword_27F22C688);
  v20 = v39;
  sub_24F923058();
  sub_24E601704(v17, &qword_27F22C688);
  (*(v9 + 32))(&a3[v18], v11, v36);
  v21 = *(*a3 + 168);
  v45 = 0;
  v46 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6B0);
  sub_24F923058();
  (*(v37 + 32))(&a3[v21], v8, v38);
  v22 = &a3[*(*a3 + 176)];
  *(v22 + 25) = 0u;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = &a3[*(*a3 + 184)];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&a3[*(*a3 + 200)] = 0;
  *(a3 + 2) = v20;
  sub_24E615E00(v47, (a3 + 24));
  sub_24E615E00(v50, (a3 + 64));
  v24 = qword_27F2110D0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_24F2DAE78();
  v26 = qword_27F39B498;
  swift_beginAccess();
  v27 = sub_24F929158();
  v28 = *(v27 - 8);
  v29 = v20 + v26;
  v30 = v40;
  (*(v28 + 16))(v40, v29, v27);
  (*(v28 + 56))(v30, 0, 1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90);
  sub_24F928FD8();
  sub_24F92A758();
  v31 = objc_allocWithZone(type metadata accessor for VideoPlaybackCoordinator());
  v32 = sub_24EEC35E0(v25 & 1, v30, &v45);
  *&a3[*(*a3 + 192)] = v32;
  v45 = v32;
  v33 = v41;
  sub_24F928178();
  v34 = sub_24F928F88();
  (*(v42 + 8))(v33, v44);
  *(a3 + 13) = v34;
  sub_24F11A658();
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return a3;
}

char *sub_24EC6B550(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C698);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v34 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = sub_24F9288E8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  v17 = v44;
  v33 = sub_24F929EB8();
  v18 = qword_27F2108F0;
  v42 = a2;

  if (v18 != -1)
  {
    swift_once();
  }

  (*(v14 + 104))(v16, *MEMORY[0x277D21C38], v13);
  v35 = v17;
  sub_24F92A368();
  (*(v14 + 8))(v16, v13);
  sub_24F92A408();
  (*(v10 + 8))(v12, v9);
  v19 = sub_24F929EA8();
  v20 = sub_24F91F4A8();
  v21 = *(v20 - 8);
  v22 = v34;
  v23 = v43;
  (*(v21 + 16))(v34, v43, v20);
  (*(v21 + 56))(v22, 0, 1, v20);
  type metadata accessor for ArticleDiffablePagePresenter();
  swift_allocObject();
  v24 = v42;
  v25 = ArticleDiffablePagePresenter.init(objectGraph:impressionsTracker:pageUrl:sidePackedPage:)(v42, v19, MEMORY[0x277D221C0], v22, 0);
  type metadata accessor for ArticlePageViewModel();
  v26 = swift_allocObject();
  v27 = qword_27F2429E0;
  v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6A0);
  v28 = v36;
  sub_24F923058();
  (*(v37 + 32))(&v26[v27], v28, v38);
  v29 = qword_27F2429E8;
  LOBYTE(v44) = 0;
  v30 = v39;
  sub_24F923058();
  (*(v40 + 32))(&v26[v29], v30, v41);
  v31 = sub_24EC6AF18(v25, v24, v26);

  (*(v21 + 8))(v23, v20);
  return v31;
}

unint64_t sub_24EC6BAC0()
{
  result = qword_27F22C6B8;
  if (!qword_27F22C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C6B8);
  }

  return result;
}

uint64_t sub_24EC6BB2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for Page(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[10]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_24EC6BD00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for Page(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[10]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[9];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for TwoColumnPageShelvesContentView()
{
  result = qword_27F22C6C0;
  if (!qword_27F22C6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC6BF08()
{
  sub_24EC6C05C(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
  if (v0 <= 0x3F)
  {
    sub_24EC6C05C(319, &qword_27F222B10, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_24E684120();
      if (v2 <= 0x3F)
      {
        sub_24E746BEC(319, &qword_27F215590);
        if (v3 <= 0x3F)
        {
          sub_24E746BEC(319, &qword_27F254DF0);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Page(319);
            if (v5 <= 0x3F)
            {
              sub_24F928FD8();
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

void sub_24EC6C05C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24EC6C0CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24E60169C(v2, &v14 - v9, &qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24EC6C2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v37 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C770);
  MEMORY[0x28223BE20](v39);
  v41 = v36 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDC0);
  MEMORY[0x28223BE20](v38);
  v40 = type metadata accessor for PaginatedShelfIntentView(0);
  MEMORY[0x28223BE20](v40);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229248);
  MEMORY[0x28223BE20](v15);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v36 - v19;
  sub_24E615E00(a1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213818);
  if (swift_dynamicCast())
  {
    v47[0] = v43;
    v47[1] = v44;
    v48 = v45;
    sub_24EB3BA60(v47, v46);
    if (a3 == 7)
    {
      v21 = a4 + *(type metadata accessor for TwoColumnPageShelvesContentView() + 36);
      a3 = *(v21 + *(type metadata accessor for Page(0) + 84));
    }

    v22 = *(a4 + *(type metadata accessor for TwoColumnPageShelvesContentView() + 40));
    sub_24EB3BA60(v46, v11);
    v11[40] = a3;
    *(v11 + 6) = v37;
    *(v11 + 7) = sub_24EC7017C;
    *(v11 + 8) = v22;
    v11[72] = 0;
    sub_24EB3BA60(v46, &v43);
    type metadata accessor for GSKShelf();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
    sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
    sub_24E7C5EC0();
    sub_24F9217C8();
    sub_24F926F28();
    sub_24EB3BE00(v46);
    sub_24EC70184(v11, v14, type metadata accessor for PaginatedShelfIntentView);
    sub_24EC701EC(v14, v41, type metadata accessor for PaginatedShelfIntentView);
    swift_storeEnumTagMultiPayload();
    sub_24EC720C8(&qword_27F22C758, type metadata accessor for PaginatedShelfIntentView);
    sub_24E602068(&qword_27F229270, &qword_27F229248);
    sub_24F924E28();
    sub_24EC70254(v14);
    return sub_24EB3BE00(v47);
  }

  else
  {
    v36[1] = a5;
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_24E601704(&v43, &qword_27F229260);
    sub_24E615E00(a1, v47);
    if (a3 == 7)
    {
      v24 = a4 + *(type metadata accessor for TwoColumnPageShelvesContentView() + 36);
      a3 = *(v24 + *(type metadata accessor for Page(0) + 84));
    }

    type metadata accessor for TwoColumnPageShelvesContentView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720);
    sub_24F928F28();
    sub_24E615E00(v47, &v43);
    sub_24E615E00(v46, v42);
    v25 = v15[17];
    *&v17[v25] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDD8);
    swift_storeEnumTagMultiPayload();
    v17[v15[13]] = a3;
    v26 = __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
    v27 = MEMORY[0x28223BE20](v26);
    (*(v29 + 16))(v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
    sub_24F928D38();
    v30 = &v17[v15[14]];
    *v30 = v37;
    v30[8] = 0;
    sub_24E615E00(v42, &v17[v15[15]]);
    v31 = &v17[v15[16]];
    *v31 = sub_24F78343C;
    v31[1] = 0;
    v32 = __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
    v33 = MEMORY[0x28223BE20](v32);
    (*(v35 + 16))(v36 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v33);
    type metadata accessor for GSKShelf();
    sub_24E602068(&qword_27F21EDE0, &qword_27F213768);
    sub_24F9217C8();
    sub_24F926F28();
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    sub_24EC7010C(v17, v20);
    sub_24E60169C(v20, v41, &qword_27F229248);
    swift_storeEnumTagMultiPayload();
    sub_24EC720C8(&qword_27F22C758, type metadata accessor for PaginatedShelfIntentView);
    sub_24E602068(&qword_27F229270, &qword_27F229248);
    sub_24F924E28();
    return sub_24E601704(v20, &qword_27F229248);
  }
}

uint64_t sub_24EC6CB40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6D0);
  v72 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v70 = &v64 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6D8);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = &v64 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6E0);
  MEMORY[0x28223BE20](v76);
  v75 = (&v64 - v6);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6E8);
  v71 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v69 = &v64 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6F0);
  MEMORY[0x28223BE20](v77);
  v79 = &v64 - v8;
  v9 = type metadata accessor for TwoColumnPageShelvesContentView();
  v65 = *(v9 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6F8);
  v68 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v67 = &v64 - v12;
  v13 = sub_24F923E98();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v64 - v18;
  sub_24F769764(&v64 - v18);
  sub_24EC6C0CC(v16);
  v20 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v14 + 8))(v16, v13);
  sub_24EC6D73C(v19, v20 & 1, &v89);
  sub_24E601704(v19, &qword_27F215598);
  v21 = v89;
  v73 = *(&v89 + 1);
  v74 = v89;
  if (v90)
  {
    v22 = sub_24F924988();
    v23 = v75;
    *v75 = v22;
    v23[1] = 0;
    *(v23 + 16) = 0;
    v24 = v23;
    v25 = v66;
    sub_24EC6ECB0(v2, v21, *(&v21 + 1), v66);
    sub_24F927618();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C700);
    v26 = v24 + *(v68 + 44);
    sub_24F9242E8();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C708);
    v28 = *(v27 - 8);
    v29 = *(v28 + 32);
    v29(v26, v25, v27);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C710);
    v29(v26 + *(v67 + 12), &v25[*(v67 + 12)], v27);
    v30 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C718) + 36));
    v31 = v94;
    v30[4] = v93;
    v30[5] = v31;
    v30[6] = v95;
    v32 = v90;
    *v30 = v89;
    v30[1] = v32;
    v33 = v92;
    v30[2] = v91;
    v30[3] = v33;
    v34 = sub_24E602068(&qword_27F22C720, &qword_27F22C6E0);
    v35 = v70;
    v36 = v76;
    sub_24F9262E8();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C728);
    v83 = v36;
    v84 = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = sub_24E8F20E4();
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C730);
    v40 = sub_24EC6FE14();
    v41 = v81;
    v83 = v81;
    v84 = &type metadata for IsDebugFocusOverlayEnabled;
    v85 = v39;
    v86 = OpaqueTypeConformance2;
    v87 = v38;
    v88 = v40;
    v76 = MEMORY[0x277CE0E68];
    v63 = swift_getOpaqueTypeConformance2();
    v42 = v69;
    v43 = v66;
    sub_24F926B08();
    (*(v72 + 8))(v35, v41);
    v44 = v75 + *(v68 + 44);
    v45 = *(v28 + 8);
    v45(v44, v27);
    v45(&v44[*(v67 + 12)], v27);
    v46 = v71;
    v47 = v80;
    (*(v71 + 16))(v79, v42, v80);
    swift_storeEnumTagMultiPayload();
    sub_24EC6FF3C();
    v83 = v41;
    v84 = &type metadata for IsDebugFocusOverlayEnabled;
    v85 = v43;
    v86 = OpaqueTypeConformance2;
    v87 = v38;
    v88 = v63;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    sub_24EC700A8(v74, v73, 1);
    return (*(v46 + 8))(v42, v47);
  }

  else
  {
    swift_getKeyPath();
    sub_24EC701EC(v2, &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TwoColumnPageShelvesContentView);
    v49 = (*(v65 + 80) + 17) & ~*(v65 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = BYTE8(v21);
    sub_24EC70184(v11, v50 + v49, type metadata accessor for TwoColumnPageShelvesContentView);
    v51 = swift_allocObject();
    *(v51 + 16) = sub_24EC700F8;
    *(v51 + 24) = v50;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C750);
    sub_24E602068(&qword_27F22C768, &qword_27F22C760);
    sub_24EC6FFC0();
    v52 = v67;
    sub_24F927228();
    v53 = v68;
    v54 = v78;
    (*(v68 + 16))(v79, v52, v78);
    swift_storeEnumTagMultiPayload();
    v77 = sub_24EC6FF3C();
    v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C728);
    v56 = sub_24E602068(&qword_27F22C720, &qword_27F22C6E0);
    *&v89 = v76;
    *(&v89 + 1) = v56;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = sub_24E8F20E4();
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C730);
    v60 = sub_24EC6FE14();
    v61 = v81;
    *&v89 = v81;
    *(&v89 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
    *&v90 = v59;
    *(&v90 + 1) = v57;
    *&v91 = v58;
    *(&v91 + 1) = v60;
    v62 = swift_getOpaqueTypeConformance2();
    *&v89 = v61;
    *(&v89 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
    *&v90 = v55;
    *(&v90 + 1) = v57;
    *&v91 = v58;
    *(&v91 + 1) = v62;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    sub_24EC700A8(v74, v73, 0);
    return (*(v53 + 8))(v52, v54);
  }
}

uint64_t sub_24EC6D73C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v142 = a2;
  v147 = a1;
  v151 = a3;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED68);
  v144 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v5 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v154 = &v137 - v7;
  MEMORY[0x28223BE20](v8);
  v140 = &v137 - v9;
  v146 = sub_24F925218();
  v150 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v141 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v145);
  v12 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v137 - v14;
  MEMORY[0x28223BE20](v16);
  v139 = &v137 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v18 - 8);
  v143 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v137 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v137 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v137 - v27;
  MEMORY[0x28223BE20](v29);
  v137 = &v137 - v30;
  MEMORY[0x28223BE20](v31);
  v138 = &v137 - v32;
  v33 = v3 + *(type metadata accessor for TwoColumnPageShelvesContentView() + 36);
  v34 = type metadata accessor for Page(0);
  v35 = v34[17];
  v36 = *(v33 + v34[16]);
  v148 = v34;
  v37 = v34[18];
  v38 = v34[19];
  v39 = *(v33 + v37);
  v40 = *(v33 + v35);
  v149 = v33;
  v41 = *(v33 + v38);
  *&v162 = v36;
  v153 = v36;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v152 = v39;
  sub_24EA0B788(v39);
  v42 = v162;
  *&v162 = v40;

  sub_24EA0B788(v43);
  v44 = v162;
  v45 = *(v162 + 16);
  if (!*(v42 + 16))
  {
    if (!v45)
    {

      result = sub_24EC6FA8C(*(v149 + v148[12]));
      v53 = result;
LABEL_34:
      v63 = 0;
      v64 = 7;
      goto LABEL_35;
    }

    v52 = v15;

    v53 = sub_24EC6FA8C(v44);

    v55 = *(v149 + v148[14]);
    if (v55 == 2 || (v55 & 1) == 0)
    {
      goto LABEL_34;
    }

    v56 = v150;
    v57 = v146;
    (*(v150 + 104))(v28, *MEMORY[0x277CE0558], v146);
    (*(v56 + 56))(v28, 0, 1, v57);
    v58 = *(v145 + 48);
    sub_24E60169C(v147, v52, &qword_27F215598);
    sub_24E60169C(v28, v52 + v58, &qword_27F215598);
    v59 = *(v56 + 48);
    if (v59(v52, 1, v57) == 1)
    {
LABEL_15:
      sub_24E601704(v28, &qword_27F215598);
      if (v59(v52 + v58, 1, v57) == 1)
      {
        result = sub_24E601704(v52, &qword_27F215598);
        goto LABEL_17;
      }

LABEL_44:
      result = sub_24E601704(v52, &unk_27F254F20);
      goto LABEL_34;
    }

    v60 = v25;
    sub_24E60169C(v52, v25, &qword_27F215598);
    if (v59(v52 + v58, 1, v57) == 1)
    {
LABEL_43:
      sub_24E601704(v28, &qword_27F215598);
      (*(v150 + 8))(v25, v57);
      goto LABEL_44;
    }

    v126 = v28;
    v127 = v150;
    v128 = v52 + v58;
    v129 = v141;
    (*(v150 + 32))(v141, v128, v57);
    sub_24EC720C8(&qword_27F215650, MEMORY[0x277CE0570]);
    v130 = sub_24F92AFF8();
    v131 = *(v127 + 8);
    v131(v129, v57);
    sub_24E601704(v126, &qword_27F215598);
    v131(v60, v57);
    result = sub_24E601704(v52, &qword_27F215598);
    if ((v130 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_17:
    v63 = 0;
    v64 = *(v149 + v148[15]);
LABEL_35:
    v86 = v151;
    *v151 = v53;
    v86[1] = v64;
    *(v86 + 16) = v63;
    return result;
  }

  if (!v45)
  {

    v53 = sub_24EC6FA8C(v42);

    v61 = *(v149 + v148[14]);
    if (v61 == 2 || (v61 & 1) == 0)
    {
      goto LABEL_34;
    }

    v62 = v150;
    v28 = v138;
    v57 = v146;
    (*(v150 + 104))(v138, *MEMORY[0x277CE0558], v146);
    (*(v62 + 56))(v28, 0, 1, v57);
    v58 = *(v145 + 48);
    v52 = v139;
    sub_24E60169C(v147, v139, &qword_27F215598);
    sub_24E60169C(v28, v52 + v58, &qword_27F215598);
    v59 = *(v62 + 48);
    if (v59(v52, 1, v57) == 1)
    {
      goto LABEL_15;
    }

    v25 = v137;
    sub_24E60169C(v52, v137, &qword_27F215598);
    if (v59(v52 + v58, 1, v57) == 1)
    {
      goto LABEL_43;
    }

    v132 = v150;
    v133 = v52 + v58;
    v134 = v141;
    (*(v150 + 32))(v141, v133, v57);
    sub_24EC720C8(&qword_27F215650, MEMORY[0x277CE0570]);
    v135 = sub_24F92AFF8();
    v136 = *(v132 + 8);
    v136(v134, v57);
    sub_24E601704(v28, &qword_27F215598);
    v136(v25, v57);
    result = sub_24E601704(v52, &qword_27F215598);
    if ((v135 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_17;
  }

  v149 = v42;
  v148 = v162;
  v46 = v150;
  v47 = v146;
  (*(v150 + 104))(v22, *MEMORY[0x277CE0558], v146);
  (*(v46 + 56))(v22, 0, 1, v47);
  v48 = *(v145 + 48);
  sub_24E60169C(v147, v12, &qword_27F215598);
  sub_24E60169C(v22, &v12[v48], &qword_27F215598);
  v49 = *(v46 + 48);
  if (v49(v12, 1, v47) == 1)
  {
    sub_24E601704(v22, &qword_27F215598);
    if (v49(&v12[v48], 1, v47) == 1)
    {
      sub_24E601704(v12, &qword_27F215598);
      v50 = v155;
      v51 = v152;
      goto LABEL_24;
    }

LABEL_22:
    v50 = v155;
    v66 = v153;
    v51 = v152;
    sub_24E601704(v12, &unk_27F254F20);
LABEL_26:
    v167 = v66;
    sub_24EA0B788(v40);
    sub_24EA0B788(v51);
    sub_24EA0B788(v41);
    *&v162 = v167;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70);
    sub_24E602068(&qword_27F21ED78, &qword_27F21ED70);
    sub_24F921BA8();
    sub_24E602068(&qword_27F22C7A8, &qword_27F21ED68);
    v71 = sub_24F92BBC8();
    if (!v71)
    {
      (*(v144 + 8))(v5, v50);
      v73 = MEMORY[0x277D84F90];
LABEL_33:
      v53 = sub_24E8E8AB4(v73);

      goto LABEL_34;
    }

    v72 = v71;
    v166 = MEMORY[0x277D84F90];
    sub_24F4588A0(0, v71 & ~(v71 >> 63), 0);
    v73 = v166;
    result = sub_24F92BB88();
    if ((v72 & 0x8000000000000000) == 0)
    {
      do
      {
        v74 = sub_24F92BC88();
        v159 = *v75;
        sub_24E615E00((v75 + 1), v160);
        v74(&v162, 0);
        v76 = v50;
        v77 = v159;
        sub_24E615E00(v160, &v162);
        __swift_project_boxed_opaque_existential_1(v160, v161);
        swift_getDynamicType();
        v157 = sub_24F92D1E8();
        v158 = v78;
        v156 = v77;
        v79 = sub_24F92CD88();
        MEMORY[0x253050C20](v79);

        *(&v164 + 1) = v157;
        *&v165 = v158;
        *(&v165 + 1) = v77;
        __swift_destroy_boxed_opaque_existential_1(v160);
        v166 = v73;
        v81 = *(v73 + 16);
        v80 = *(v73 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_24F4588A0((v80 > 1), v81 + 1, 1);
          v73 = v166;
        }

        *(v73 + 16) = v81 + 1;
        v82 = (v73 + (v81 << 6));
        v83 = v162;
        v84 = v163;
        v85 = v165;
        v82[4] = v164;
        v82[5] = v85;
        v82[2] = v83;
        v82[3] = v84;
        sub_24F92BC18();
        --v72;
        v50 = v76;
      }

      while (v72);
      (*(v144 + 8))(v5, v76);
      goto LABEL_33;
    }

    goto LABEL_60;
  }

  v65 = v143;
  sub_24E60169C(v12, v143, &qword_27F215598);
  if (v49(&v12[v48], 1, v47) == 1)
  {

    sub_24E601704(v22, &qword_27F215598);
    (*(v150 + 8))(v65, v47);
    goto LABEL_22;
  }

  v67 = v150;
  v68 = v141;
  (*(v150 + 32))(v141, &v12[v48], v47);
  sub_24EC720C8(&qword_27F215650, MEMORY[0x277CE0570]);
  v69 = sub_24F92AFF8();
  v70 = *(v67 + 8);
  v70(v68, v47);
  sub_24E601704(v22, &qword_27F215598);
  v70(v143, v47);
  sub_24E601704(v12, &qword_27F215598);
  v50 = v155;
  v51 = v152;
  if ((v69 & 1) == 0)
  {
LABEL_25:

    v66 = v153;
    goto LABEL_26;
  }

LABEL_24:
  if (v142)
  {
    goto LABEL_25;
  }

  *&v162 = v149;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70);
  v88 = sub_24E602068(&qword_27F21ED78, &qword_27F21ED70);
  v89 = v140;
  sub_24F921BA8();
  sub_24E602068(&qword_27F22C7A8, &qword_27F21ED68);
  v90 = sub_24F92BBC8();
  if (v90)
  {
    v91 = v90;
    v152 = v88;
    v153 = v87;
    v166 = MEMORY[0x277D84F90];
    sub_24F4588A0(0, v90 & ~(v90 >> 63), 0);
    v92 = v166;
    result = sub_24F92BB88();
    if (v91 < 0)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    do
    {
      v93 = sub_24F92BC88();
      v159 = *v94;
      sub_24E615E00((v94 + 1), v160);
      v93(&v162, 0);
      v95 = v50;
      v96 = v159;
      sub_24E615E00(v160, &v162);
      __swift_project_boxed_opaque_existential_1(v160, v161);
      swift_getDynamicType();
      v157 = sub_24F92D1E8();
      v158 = v97;
      v156 = v96;
      v98 = sub_24F92CD88();
      MEMORY[0x253050C20](v98);

      *(&v164 + 1) = v157;
      *&v165 = v158;
      *(&v165 + 1) = v96;
      __swift_destroy_boxed_opaque_existential_1(v160);
      v166 = v92;
      v100 = *(v92 + 16);
      v99 = *(v92 + 24);
      if (v100 >= v99 >> 1)
      {
        sub_24F4588A0((v99 > 1), v100 + 1, 1);
        v92 = v166;
      }

      *(v92 + 16) = v100 + 1;
      v101 = (v92 + (v100 << 6));
      v102 = v162;
      v103 = v163;
      v104 = v165;
      v101[4] = v164;
      v101[5] = v104;
      v101[2] = v102;
      v101[3] = v103;
      sub_24F92BC18();
      --v91;
      v50 = v95;
    }

    while (v91);
    v105 = *(v144 + 8);
    v105(v89, v95);
  }

  else
  {
    v105 = *(v144 + 8);
    v105(v89, v50);
    v92 = MEMORY[0x277D84F90];
  }

  v106 = *(v92 + 16);
  *&v162 = v148;
  v107 = v154;
  sub_24F921BA8();
  v108 = sub_24F92BBC8();
  if (!v108)
  {
    v105(v107, v50);
    v110 = MEMORY[0x277D84F90];
LABEL_54:
    v53 = sub_24E8E8AB4(v92);

    v64 = sub_24E8E8AB4(v110);

    v63 = 1;
    goto LABEL_35;
  }

  v109 = v108;
  v153 = v105;
  v166 = MEMORY[0x277D84F90];
  sub_24F4588A0(0, v108 & ~(v108 >> 63), 0);
  v110 = v166;
  result = sub_24F92BB88();
  if ((v109 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v111 = sub_24F92BC88();
      v159 = *v112;
      sub_24E615E00((v112 + 1), v160);
      v111(&v162, 0);
      v113 = v159;
      sub_24E615E00(v160, &v162);
      __swift_project_boxed_opaque_existential_1(v160, v161);
      swift_getDynamicType();
      result = sub_24F92D1E8();
      v157 = result;
      v158 = v114;
      v115 = __OFADD__(v113, v106);
      v116 = v113 + v106;
      if (v115)
      {
        break;
      }

      v156 = v116;
      v117 = sub_24F92CD88();
      MEMORY[0x253050C20](v117);

      *(&v164 + 1) = v157;
      *&v165 = v158;
      *(&v165 + 1) = v116;
      __swift_destroy_boxed_opaque_existential_1(v160);
      v166 = v110;
      v119 = *(v110 + 16);
      v118 = *(v110 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_24F4588A0((v118 > 1), v119 + 1, 1);
        v110 = v166;
      }

      *(v110 + 16) = v119 + 1;
      v120 = (v110 + (v119 << 6));
      v121 = v162;
      v122 = v163;
      v123 = v165;
      v120[4] = v164;
      v120[5] = v123;
      v120[2] = v121;
      v120[3] = v122;
      v124 = v154;
      v125 = v155;
      sub_24F92BC18();
      if (!--v109)
      {
        v153(v124, v125);
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_24EC6ECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v30 = a3;
  v35 = a4;
  v6 = sub_24F925068();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C708);
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v34 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v33 = v28 - v10;
  MEMORY[0x28223BE20](v11);
  v32 = v28 - v12;
  MEMORY[0x28223BE20](v13);
  v16 = v28 - v15;
  if (qword_27F210D60 != -1)
  {
    v14 = swift_once();
  }

  v29 = v28;
  v28[1] = qword_27F39D300;
  MEMORY[0x28223BE20](v14);
  v28[-2] = a1;
  v28[-1] = a2;
  sub_24F924C88();
  v37 = 0;
  sub_24EC720C8(&qword_27F2150C0, MEMORY[0x277CE0428]);
  sub_24F92D1D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C778);
  sub_24EC702B8();
  v17 = sub_24F9233F8();
  v29 = v28;
  MEMORY[0x28223BE20](v17);
  v18 = v30;
  v28[-2] = a1;
  v28[-1] = v18;
  sub_24F924C88();
  v36 = 0;
  sub_24F92D1D8();
  v19 = v32;
  sub_24F9233F8();
  v20 = v31;
  v21 = *(v31 + 16);
  v22 = v33;
  v21(v33, v16, v7);
  v23 = v34;
  v21(v34, v19, v7);
  v24 = v35;
  v21(v35, v22, v7);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C710);
  v21(&v24[*(v25 + 48)], v23, v7);
  v26 = *(v20 + 8);
  v26(v19, v7);
  v26(v16, v7);
  v26(v23, v7);
  return (v26)(v22, v7);
}

uint64_t sub_24EC6F0E4@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F924848();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TwoColumnPageShelvesContentView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = a2;
  KeyPath = swift_getKeyPath();
  sub_24EC701EC(a1, &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TwoColumnPageShelvesContentView);
  v12 = (*(v10 + 80) + 17) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 7;
  sub_24EC70184(&KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for TwoColumnPageShelvesContentView);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24EC722D8;
  *(v14 + 24) = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C750);
  sub_24E602068(&qword_27F22C768, &qword_27F22C760);
  sub_24EC6FFC0();
  v47 = a3;
  v15 = v9;
  sub_24F927228();
  v16 = swift_getKeyPath();
  v17 = a1 + *(v9 + 28);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v19 = *v17;
    v20 = v45;
    v21 = v46;
  }

  else
  {

    sub_24F92BDC8();
    v22 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v18, 0);
    v20 = v45;
    v21 = v46;
    (*(v45 + 8))(v8, v46);
    v19 = v48;
  }

  v23 = v8;
  v24 = v19 * 0.5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C790);
  v26 = v47 + *(v25 + 36);
  *v26 = v16;
  *(v26 + 8) = v24;
  v27 = swift_getKeyPath();
  v28 = a1 + *(v15 + 32);
  v30 = *v28;
  v29 = *(v28 + 8);
  v32 = *(v28 + 16);
  v31 = *(v28 + 24);
  if (*(v28 + 32) == 1)
  {
    v33 = *v28;
  }

  else
  {

    sub_24F92BDC8();
    v34 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v30, v29, v32, v31, 0);
    (*(v20 + 8))(v23, v21);
    v33 = v48;
  }

  sub_24F925858();
  v35 = sub_24EA91914(v33);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C778);
  v43 = (v47 + *(result + 36));
  *v43 = v27;
  *(v43 + 1) = v35;
  v43[2] = v37;
  v43[3] = v39;
  v43[4] = v41;
  return result;
}

uint64_t sub_24EC6F5B8@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F924848();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TwoColumnPageShelvesContentView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = a2;
  KeyPath = swift_getKeyPath();
  sub_24EC701EC(a1, &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TwoColumnPageShelvesContentView);
  v12 = (*(v10 + 80) + 17) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 7;
  sub_24EC70184(&KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for TwoColumnPageShelvesContentView);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24EC722D8;
  *(v14 + 24) = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C750);
  sub_24E602068(&qword_27F22C768, &qword_27F22C760);
  sub_24EC6FFC0();
  v47 = a3;
  v15 = v9;
  sub_24F927228();
  v16 = swift_getKeyPath();
  v17 = a1 + *(v9 + 28);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v19 = *v17;
    v20 = v45;
    v21 = v46;
  }

  else
  {

    sub_24F92BDC8();
    v22 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v18, 0);
    v20 = v45;
    v21 = v46;
    (*(v45 + 8))(v8, v46);
    v19 = v48;
  }

  v23 = v8;
  v24 = v19 * 0.5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C790);
  v26 = v47 + *(v25 + 36);
  *v26 = v16;
  *(v26 + 8) = v24;
  v27 = swift_getKeyPath();
  v28 = a1 + *(v15 + 32);
  v30 = *v28;
  v29 = *(v28 + 8);
  v32 = *(v28 + 16);
  v31 = *(v28 + 24);
  if (*(v28 + 32) == 1)
  {
    v33 = *v28;
  }

  else
  {

    sub_24F92BDC8();
    v34 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v30, v29, v32, v31, 0);
    (*(v20 + 8))(v23, v21);
    v33 = v48;
  }

  sub_24F925838();
  v35 = sub_24EA91914(v33);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C778);
  v43 = (v47 + *(result + 36));
  *v43 = v27;
  *(v43 + 1) = v35;
  v43[2] = v37;
  v43[3] = v39;
  v43[4] = v41;
  return result;
}

uint64_t sub_24EC6FA8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - v4;
  *&v26[0] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70);
  sub_24E602068(&qword_27F21ED78, &qword_27F21ED70);
  sub_24F921BA8();
  sub_24E602068(&qword_27F22C7A8, &qword_27F21ED68);
  v6 = sub_24F92BBC8();
  if (!v6)
  {
    (*(v3 + 8))(v5, v2);
    return MEMORY[0x277D84F90];
  }

  v7 = v6;
  v28 = MEMORY[0x277D84F90];
  sub_24F458880(0, v6 & ~(v6 >> 63), 0);
  v8 = v28;
  result = sub_24F92BB88();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v22[0] = v3;
    do
    {
      v10 = sub_24F92BC88();
      v23 = *v11;
      sub_24E615E00((v11 + 1), v24);
      v10(v25, 0);
      v12 = v23;
      sub_24E615E00(v24, v26);
      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      swift_getDynamicType();
      v25[0] = sub_24F92D1E8();
      v25[1] = v13;
      v22[1] = v12;
      v14 = sub_24F92CD88();
      MEMORY[0x253050C20](v14);

      sub_24F92C7F8();
      v27 = v12;
      __swift_destroy_boxed_opaque_existential_1(v24);
      v28 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_24F458880((v15 > 1), v16 + 1, 1);
        v8 = v28;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 88 * v16;
      v18 = v26[1];
      *(v17 + 32) = v26[0];
      *(v17 + 48) = v18;
      v19 = v26[2];
      v20 = v26[3];
      v21 = v26[4];
      *(v17 + 112) = v27;
      *(v17 + 80) = v20;
      *(v17 + 96) = v21;
      *(v17 + 64) = v19;
      sub_24F92BC18();
      --v7;
    }

    while (v7);
    (*(v22[0] + 8))(v5, v2);
    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_24EC6FE14()
{
  result = qword_27F22C738;
  if (!qword_27F22C738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C6E0);
    sub_24E602068(&qword_27F22C720, &qword_27F22C6E0);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C738);
  }

  return result;
}

unint64_t sub_24EC6FF3C()
{
  result = qword_27F22C740;
  if (!qword_27F22C740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C6F8);
    sub_24EC6FFC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C740);
  }

  return result;
}

unint64_t sub_24EC6FFC0()
{
  result = qword_27F22C748;
  if (!qword_27F22C748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C750);
    sub_24EC720C8(&qword_27F22C758, type metadata accessor for PaginatedShelfIntentView);
    sub_24E602068(&qword_27F229270, &qword_27F229248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C748);
  }

  return result;
}

uint64_t sub_24EC700A8(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

uint64_t sub_24EC7010C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229248);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC70184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC701EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC70254(uint64_t a1)
{
  v2 = type metadata accessor for PaginatedShelfIntentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EC702B8()
{
  result = qword_27F22C780;
  if (!qword_27F22C780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C778);
    sub_24EC70370();
    sub_24E602068(&qword_27F22C798, &qword_27F22C7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C780);
  }

  return result;
}

unint64_t sub_24EC70370()
{
  result = qword_27F22C788;
  if (!qword_27F22C788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C790);
    sub_24EC6FF3C();
    sub_24E602068(&qword_27F215A40, &qword_27F215A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C788);
  }

  return result;
}

uint64_t sub_24EC70430()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_30()
{
  v1 = type metadata accessor for TwoColumnPageShelvesContentView();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 17) & ~v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923E98();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  else
  {
  }

  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F9234D8();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F925218();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v3 + v7, 1, v8))
    {
      (*(v9 + 8))(v3 + v7, v8);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v10 = v3 + v1[8];
  sub_24E669FC4(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));
  v11 = v3 + v1[9];
  v12 = sub_24F92A708();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = type metadata accessor for Page(0);

  v14 = v13[6];
  v15 = sub_24F928818();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);

  v16 = v11 + v13[20];
  v17 = type metadata accessor for HeaderPresentation(0);
  if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
  {
    v18 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    v19 = *(*(v18 - 1) + 48);
    if (v19(v16, 1, v18))
    {
      goto LABEL_25;
    }

    v117 = v19;

    v20 = v16 + v18[5];
    v21 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      goto LABEL_14;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v96 = sub_24F9289E8();
          (*(*(v96 - 8) + 8))(v20, v96);
          goto LABEL_14;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_14:
          v22 = v16 + v18[7];
          v23 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          v19 = v117;
          if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v25 = sub_24F928388();
              (*(*(v25 - 8) + 8))(v22, v25);

              v19 = v117;
            }
          }

          v26 = v16 + v18[10];
          if (*(v26 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v26);
          }

LABEL_25:
          v27 = v16 + v17[5];
          if (v19(v27, 1, v18))
          {
            goto LABEL_42;
          }

          v118 = v19;

          v28 = v27 + v18[5];
          v29 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
          if ((*(*(v29 - 8) + 48))(v28, 1, v29))
          {
            goto LABEL_27;
          }

          v32 = swift_getEnumCaseMultiPayload();
          if (v32 > 2)
          {
            if (v32 != 3)
            {
              if (v32 == 4)
              {
                v99 = sub_24F9289E8();
                (*(*(v99 - 8) + 8))(v28, v99);
                goto LABEL_27;
              }

              if (v32 != 5)
              {
LABEL_27:
                v30 = v27 + v18[7];
                v31 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
                if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
                {
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                  }

                  else
                  {
                    v33 = sub_24F928388();
                    (*(*(v33 - 8) + 8))(v30, v33);
                  }
                }

                v34 = v27 + v18[10];
                v19 = v118;
                if (*(v34 + 24))
                {
                  __swift_destroy_boxed_opaque_existential_1(v34);
                }

LABEL_42:
                v35 = v16 + v17[6];
                if (v19(v35, 1, v18))
                {
                  goto LABEL_59;
                }

                v36 = v35 + v18[5];
                v37 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                if ((*(*(v37 - 8) + 48))(v36, 1, v37))
                {
                  goto LABEL_44;
                }

                v40 = swift_getEnumCaseMultiPayload();
                if (v40 > 2)
                {
                  if (v40 != 3)
                  {
                    if (v40 == 4)
                    {
                      v100 = sub_24F9289E8();
                      (*(*(v100 - 8) + 8))(v36, v100);
                      goto LABEL_44;
                    }

                    if (v40 != 5)
                    {
LABEL_44:
                      v38 = v35 + v18[7];
                      v39 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
                      if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
                      {
                        if (swift_getEnumCaseMultiPayload() == 1)
                        {
                        }

                        else
                        {
                          v41 = sub_24F928388();
                          (*(*(v41 - 8) + 8))(v38, v41);
                        }
                      }

                      v42 = v35 + v18[10];
                      if (*(v42 + 24))
                      {
                        __swift_destroy_boxed_opaque_existential_1(v42);
                      }

LABEL_59:
                      v43 = v16 + v17[7];
                      if (*(v43 + 56) == 1)
                      {
                      }

                      else if (!*(v43 + 56))
                      {

                        if (*(v43 + 40))
                        {
                          __swift_destroy_boxed_opaque_existential_1(v43 + 16);
                        }
                      }

                      v44 = v16 + v17[8];
                      v45 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
                      if ((*(*(v45 - 8) + 48))(v44, 1, v45))
                      {
                        goto LABEL_65;
                      }

                      v59 = swift_getEnumCaseMultiPayload();
                      if (v59 == 2)
                      {
LABEL_159:

                        goto LABEL_65;
                      }

                      if (v59 != 1)
                      {
                        if (v59)
                        {
                          goto LABEL_65;
                        }

                        v60 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                        if ((*(*(v60 - 8) + 48))(v44, 1, v60))
                        {
                          goto LABEL_65;
                        }

                        v61 = swift_getEnumCaseMultiPayload();
                        if (v61 > 2)
                        {
                          if (v61 != 3)
                          {
                            if (v61 == 4)
                            {
                              v115 = sub_24F9289E8();
                              (*(*(v115 - 8) + 8))(v44, v115);
                              goto LABEL_65;
                            }

                            if (v61 != 5)
                            {
                              goto LABEL_65;
                            }
                          }

                          goto LABEL_159;
                        }

                        if (v61)
                        {
                          if (v61 == 1)
                          {
                            v113 = sub_24F9289E8();
                            v114 = *(v113 - 8);
                            if (!(*(v114 + 48))(v44, 1, v113))
                            {
                              (*(v114 + 8))(v44, v113);
                            }

                            if (!*(v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
                            {
                              goto LABEL_65;
                            }
                          }

                          else if (v61 != 2)
                          {
                            goto LABEL_65;
                          }

                          goto LABEL_159;
                        }

                        v78 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
                        v79 = type metadata accessor for JSColor();
                        if ((*(*(v79 - 8) + 48))(v78, 1, v79))
                        {
                          goto LABEL_65;
                        }

LABEL_109:
                        v80 = sub_24F928388();
                        (*(*(v80 - 8) + 8))(v78, v80);

                        goto LABEL_65;
                      }

                      v74 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                      v75 = *(*(v74 - 8) + 48);
                      if (v75(v44, 1, v74))
                      {
LABEL_107:
                        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
                        v77 = v44 + *(v76 + 48);
                        if (v75(v77, 1, v74))
                        {
                          goto LABEL_108;
                        }

                        v82 = swift_getEnumCaseMultiPayload();
                        if (v82 <= 2)
                        {
                          if (v82)
                          {
                            if (v82 != 1)
                            {
                              if (v82 != 2)
                              {
                                goto LABEL_108;
                              }

LABEL_155:

                              goto LABEL_108;
                            }

                            v109 = sub_24F9289E8();
                            v110 = *(v109 - 8);
                            if (!(*(v110 + 48))(v77, 1, v109))
                            {
                              (*(v110 + 8))(v77, v109);
                            }

                            if (*(v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
                            {
                            }
                          }

                          else
                          {

                            v104 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
                            v105 = type metadata accessor for JSColor();
                            if (!(*(*(v105 - 8) + 48))(v104, 1, v105))
                            {
                              v106 = sub_24F928388();
                              (*(*(v106 - 8) + 8))(v104, v106);
                            }
                          }

LABEL_108:
                          v78 = v44 + *(v76 + 80);
                          v79 = type metadata accessor for JSColor();
                          if ((*(*(v79 - 8) + 48))(v78, 1, v79))
                          {
                            goto LABEL_65;
                          }

                          goto LABEL_109;
                        }

                        if (v82 != 3)
                        {
                          if (v82 == 4)
                          {
                            v112 = sub_24F9289E8();
                            (*(*(v112 - 8) + 8))(v77, v112);
                            goto LABEL_108;
                          }

                          if (v82 != 5)
                          {
                            goto LABEL_108;
                          }
                        }

                        goto LABEL_155;
                      }

                      v81 = swift_getEnumCaseMultiPayload();
                      if (v81 > 2)
                      {
                        if (v81 != 3)
                        {
                          if (v81 == 4)
                          {
                            v111 = sub_24F9289E8();
                            (*(*(v111 - 8) + 8))(v44, v111);
                            goto LABEL_107;
                          }

                          if (v81 != 5)
                          {
                            goto LABEL_107;
                          }
                        }
                      }

                      else
                      {
                        if (!v81)
                        {

                          v101 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
                          v102 = type metadata accessor for JSColor();
                          if (!(*(*(v102 - 8) + 48))(v101, 1, v102))
                          {
                            v103 = sub_24F928388();
                            (*(*(v103 - 8) + 8))(v101, v103);
                          }

                          goto LABEL_107;
                        }

                        if (v81 == 1)
                        {
                          v107 = sub_24F9289E8();
                          v108 = *(v107 - 8);
                          if (!(*(v108 + 48))(v44, 1, v107))
                          {
                            (*(v108 + 8))(v44, v107);
                          }

                          if (*(v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
                          {
                          }

                          goto LABEL_107;
                        }

                        if (v81 != 2)
                        {
                          goto LABEL_107;
                        }
                      }

                      goto LABEL_107;
                    }
                  }
                }

                else
                {
                  if (!v40)
                  {

                    v89 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
                    v90 = type metadata accessor for JSColor();
                    if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
                    {
                      v91 = sub_24F928388();
                      (*(*(v91 - 8) + 8))(v89, v91);
                    }

                    goto LABEL_44;
                  }

                  if (v40 == 1)
                  {
                    v97 = sub_24F9289E8();
                    v98 = *(v97 - 8);
                    v121 = v97;
                    if (!(*(v98 + 48))(v36, 1))
                    {
                      (*(v98 + 8))(v36, v121);
                    }

                    if (*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
                    {
                    }

                    goto LABEL_44;
                  }

                  if (v40 != 2)
                  {
                    goto LABEL_44;
                  }
                }

                goto LABEL_44;
              }
            }
          }

          else
          {
            if (!v32)
            {

              v86 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v87 = type metadata accessor for JSColor();
              if (!(*(*(v87 - 8) + 48))(v86, 1, v87))
              {
                v88 = sub_24F928388();
                (*(*(v88 - 8) + 8))(v86, v88);
              }

              goto LABEL_27;
            }

            if (v32 == 1)
            {
              v94 = sub_24F9289E8();
              v95 = *(v94 - 8);
              v116 = v94;
              if (!(*(v95 + 48))(v28, 1))
              {
                (*(v95 + 8))(v28, v116);
              }

              if (*(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
              }

              goto LABEL_27;
            }

            if (v32 != 2)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v83 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v84 = type metadata accessor for JSColor();
        if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
        {
          v85 = sub_24F928388();
          (*(*(v85 - 8) + 8))(v83, v85);
        }

        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v92 = sub_24F9289E8();
        v93 = *(v92 - 8);
        if (!(*(v93 + 48))(v20, 1, v92))
        {
          (*(v93 + 8))(v20, v92);
        }

        if (*(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_14;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_14;
  }

LABEL_65:
  if (*(v11 + v13[23]))
  {
  }

  v46 = v11 + v13[24];
  v47 = type metadata accessor for Page.Background(0);
  if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
  {
    v53 = swift_getEnumCaseMultiPayload();
    if (v53 <= 1)
    {
      if (v53)
      {
        if (v53 == 1)
        {
          v55 = sub_24F9289E8();
          (*(*(v55 - 8) + 8))(v46, v55);
          v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v57 = sub_24F922348();
          v58 = *(v57 - 8);
          if (!(*(v58 + 48))(v46 + v56, 1, v57))
          {
            (*(v58 + 8))(v46 + v56, v57);
          }
        }
      }

      else
      {
        v73 = sub_24F9289E8();
        (*(*(v73 - 8) + 8))(v46, v73);
      }
    }

    else if (v53 == 2)
    {
      v62 = sub_24F9289E8();
      v63 = *(v62 - 8);
      if (!(*(v63 + 48))(v46, 1, v62))
      {
        (*(v63 + 8))(v46, v62);
      }

      v64 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v65 = type metadata accessor for GSKVideo();
      if (!(*(*(v65 - 1) + 48))(v64, 1, v65))
      {
        v66 = sub_24F91F4A8();
        (*(*(v66 - 8) + 8))(v64, v66);
        (*(v63 + 8))(v64 + v65[5], v62);
        v67 = v65[9];
        v68 = sub_24F928698();
        v69 = *(v68 - 8);
        v119 = v67;
        v70 = v64 + v67;
        v71 = *(v69 + 48);
        if (!v71(v70, 1, v68))
        {
          (*(v69 + 8))(v64 + v119, v68);
        }

        v120 = v69;
        v72 = v65[10];
        if (!v71(v64 + v72, 1, v68))
        {
          (*(v120 + 8))(v64 + v72, v68);
        }
      }
    }

    else if (v53 == 3 || v53 == 4)
    {
      v54 = sub_24F928388();
      (*(*(v54 - 8) + 8))(v46, v54);
    }
  }

  v48 = v11 + v13[27];
  if (*(v48 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v49 = v11 + v13[28];
  if (*(v49 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v50 = v11 + v13[29];
  if (*(v50 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v51 = v11 + v13[30];
  if (*(v51 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  return swift_deallocObject();
}

uint64_t sub_24EC7202C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for TwoColumnPageShelvesContentView() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 17) & ~*(v7 + 80));

  return sub_24EC6C2CC(a1, a2, v8, v9, a3);
}

uint64_t sub_24EC720C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EC72114()
{
  result = qword_27F22C7B0;
  if (!qword_27F22C7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C7B8);
    sub_24EC6FF3C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C6D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C6E0);
    sub_24E602068(&qword_27F22C720, &qword_27F22C6E0);
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C730);
    sub_24EC6FE14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C7B0);
  }

  return result;
}

uint64_t LeaderboardSetSource.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v20 = *(v1 + 40);
  v21 = *(v1 + 48);
  if (*(v1 + 56))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x646E696B24;
    v8 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v8;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0xD000000000000010;
    *(inited + 56) = 0x800000024FA4D4E0;
    *(inited + 88) = 0xD000000000000010;
    *(inited + 96) = 0x800000024FA4D4E0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_24F93DE60;
    *(v9 + 32) = 25705;
    *(v9 + 40) = 0xE200000000000000;
    *(v9 + 48) = v3;
    *(v9 + 56) = v2;
    sub_24EC73400(v3, v2, v5, v4, v6, v20, v21, 1);
    v10 = sub_24E6086DC(v9);
    swift_setDeallocating();
    sub_24E601704(v9 + 32, &qword_27F219F90);
    *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
    *(inited + 136) = sub_24EC73450(&qword_27F21BD70, &qword_27F227A20);
    *(inited + 104) = v10;
    v11 = sub_24E607E40(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
    swift_arrayDestroy();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
    result = sub_24EC73450(&qword_27F212F28, &qword_27F212F20);
    v14 = result;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_24F93A400;
    *(v15 + 32) = 0x646E696B24;
    v16 = MEMORY[0x277D22580];
    *(v15 + 72) = MEMORY[0x277D837D0];
    *(v15 + 80) = v16;
    *(v15 + 40) = 0xE500000000000000;
    strcpy((v15 + 48), "leaderboardSet");
    *(v15 + 63) = -18;
    strcpy((v15 + 88), "leaderboardSet");
    *(v15 + 103) = -18;
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_24F93DE60;
    *(v17 + 32) = 0xD000000000000012;
    *(v17 + 40) = 0x800000024FA58760;
    *(v17 + 72) = &type metadata for LeaderboardSet;
    *(v17 + 80) = sub_24E7EDB14();
    v18 = swift_allocObject();
    *(v17 + 48) = v18;
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v5;
    v18[5] = v4;
    v18[6] = v6;
    v18[7] = v20;
    v18[8] = v21;
    sub_24EC73400(v3, v2, v5, v4, v6, v20, v21, 0);
    v19 = sub_24E607E40(v17);
    swift_setDeallocating();
    sub_24E601704(v17 + 32, &qword_27F212FB0);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
    *(v15 + 128) = v12;
    v14 = sub_24EC73450(&qword_27F212F28, &qword_27F212F20);
    *(v15 + 136) = v14;
    *(v15 + 104) = v19;
    v11 = sub_24E607E40(v15);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
    result = swift_arrayDestroy();
  }

  a1[3] = v12;
  a1[4] = v14;
  *a1 = v11;
  return result;
}

uint64_t sub_24EC726F0()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6F6272656461656CLL;
  }
}

uint64_t sub_24EC7273C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6272656461656CLL && a2 == 0xEE00746553647261;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4D4E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EC72828(uint64_t a1)
{
  v2 = sub_24EC73500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC72864(uint64_t a1)
{
  v2 = sub_24EC73500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EC728BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA58760 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24EC72950(uint64_t a1)
{
  v2 = sub_24EC735A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC7298C(uint64_t a1)
{
  v2 = sub_24EC735A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EC729D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EC72A54(uint64_t a1)
{
  v2 = sub_24EC73554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC72A90(uint64_t a1)
{
  v2 = sub_24EC73554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LeaderboardSetSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C7C0);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C7C8);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C7D0);
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v20 - v10;
  v12 = v1[1];
  v30 = *v1;
  v31 = v12;
  v13 = v1[2];
  v24 = v1[3];
  v25 = v13;
  v14 = v1[4];
  v22 = v1[5];
  v23 = v14;
  v21 = v1[6];
  v15 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC73500();
  sub_24F92D128();
  if (v15)
  {
    LOBYTE(v33) = 1;
    sub_24EC73554();
    v16 = v32;
    sub_24F92CC98();
    v17 = v29;
    sub_24F92CD08();
    (*(v28 + 8))(v5, v17);
  }

  else
  {
    LOBYTE(v33) = 0;
    sub_24EC735A8();
    v16 = v32;
    sub_24F92CC98();
    v33 = v30;
    v34 = v31;
    v35 = v25;
    v36 = v24;
    v37 = v23;
    v38 = v22;
    v39 = v21;
    sub_24E7ED9D4();
    v18 = v27;
    sub_24F92CD48();
    (*(v26 + 8))(v8, v18);
  }

  return (*(v9 + 8))(v11, v16);
}

uint64_t LeaderboardSetSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C7F0);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C7F8);
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C800);
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24EC73500();
  sub_24F92D108();
  if (!v2)
  {
    v41 = v7;
    v15 = v44;
    v14 = v45;
    v16 = sub_24F92CC78();
    v17 = (2 * *(v16 + 16)) | 1;
    v55 = v16;
    v56 = v16 + 32;
    v57 = 0;
    v58 = v17;
    v18 = sub_24E643430();
    v19 = v10;
    if (v18 == 2 || v57 != v58 >> 1)
    {
      v23 = sub_24F92C918();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v25 = &type metadata for LeaderboardSetSource;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
      (*(v46 + 8))(v12, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v18)
      {
        LOBYTE(v49) = 1;
        sub_24EC73554();
        v20 = v12;
        v21 = v6;
        sub_24F92CBA8();
        v22 = v46;
        v29 = v20;
        v30 = v21;
        v31 = v15;
        v42 = sub_24F92CC28();
        v34 = v33;
        (*(v43 + 8))(v30, v31);
        (*(v22 + 8))(v29, v19);
        swift_unknownObjectRelease();
        v39 = 1;
      }

      else
      {
        LOBYTE(v49) = 0;
        sub_24EC735A8();
        v27 = v9;
        sub_24F92CBA8();
        v28 = v46;
        sub_24E7ED8D0();
        v32 = v41;
        sub_24F92CC68();
        (*(v42 + 8))(v27, v32);
        (*(v28 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v39 = 0;
        v34 = v50;
        v42 = v49;
        v35 = v51;
        v36 = v52;
        v38 = v53;
        v37 = v54;
        v48 = 0;
      }

      *v14 = v42;
      *(v14 + 8) = v34;
      *(v14 + 16) = v35;
      *(v14 + 24) = v36;
      *(v14 + 32) = v38;
      *(v14 + 48) = v37;
      *(v14 + 56) = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_24EC73400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a8 & 1) == 0)
  {

    v8 = vars8;
  }
}

uint64_t sub_24EC73450(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EC734B8()
{

  return swift_deallocObject();
}

unint64_t sub_24EC73500()
{
  result = qword_27F22C7D8;
  if (!qword_27F22C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C7D8);
  }

  return result;
}

unint64_t sub_24EC73554()
{
  result = qword_27F22C7E0;
  if (!qword_27F22C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C7E0);
  }

  return result;
}

unint64_t sub_24EC735A8()
{
  result = qword_27F22C7E8;
  if (!qword_27F22C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C7E8);
  }

  return result;
}

uint64_t sub_24EC73608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_24EC73650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

unint64_t sub_24EC736F4()
{
  result = qword_27F22C808;
  if (!qword_27F22C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C808);
  }

  return result;
}

unint64_t sub_24EC7374C()
{
  result = qword_27F22C810;
  if (!qword_27F22C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C810);
  }

  return result;
}

unint64_t sub_24EC737A4()
{
  result = qword_27F22C818;
  if (!qword_27F22C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C818);
  }

  return result;
}

unint64_t sub_24EC737FC()
{
  result = qword_27F22C820;
  if (!qword_27F22C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C820);
  }

  return result;
}

unint64_t sub_24EC73854()
{
  result = qword_27F22C828;
  if (!qword_27F22C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C828);
  }

  return result;
}

unint64_t sub_24EC738AC()
{
  result = qword_27F22C830;
  if (!qword_27F22C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C830);
  }

  return result;
}

unint64_t sub_24EC73904()
{
  result = qword_27F22C838;
  if (!qword_27F22C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C838);
  }

  return result;
}

unint64_t sub_24EC7395C()
{
  result = qword_27F22C840;
  if (!qword_27F22C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C840);
  }

  return result;
}

unint64_t sub_24EC739B4()
{
  result = qword_27F22C848;
  if (!qword_27F22C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C848);
  }

  return result;
}

uint64_t sub_24EC73A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v474 = a6;
  v498 = a5;
  v499 = a4;
  v496 = a3;
  v495 = a2;
  v497 = a1;
  v494 = a7;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C850);
  v376 = *(v426 - 8);
  MEMORY[0x28223BE20](v426);
  v423 = &v356 - v7;
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C858);
  MEMORY[0x28223BE20](v480);
  v482 = &v356 - v8;
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C860);
  MEMORY[0x28223BE20](v416);
  v420 = &v356 - v9;
  v481 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D58);
  MEMORY[0x28223BE20](v481);
  v424 = &v356 - v10;
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D48);
  MEMORY[0x28223BE20](v487);
  v483 = &v356 - v11;
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C868);
  v375 = *(v425 - 8);
  MEMORY[0x28223BE20](v425);
  v418 = &v356 - v12;
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C870);
  v374 = *(v422 - 8);
  MEMORY[0x28223BE20](v422);
  v373 = &v356 - v13;
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C878);
  MEMORY[0x28223BE20](v411);
  v415 = &v356 - v14;
  v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D28);
  MEMORY[0x28223BE20](v460);
  v417 = &v356 - v15;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C880);
  v372 = *(v419 - 8);
  MEMORY[0x28223BE20](v419);
  v371 = &v356 - v16;
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C888);
  v370 = *(v421 - 8);
  MEMORY[0x28223BE20](v421);
  v369 = &v356 - v17;
  v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C890);
  MEMORY[0x28223BE20](v484);
  v486 = &v356 - v18;
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C898);
  MEMORY[0x28223BE20](v454);
  v459 = &v356 - v19;
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8A0);
  MEMORY[0x28223BE20](v408);
  v410 = &v356 - v20;
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D08);
  MEMORY[0x28223BE20](v457);
  v414 = &v356 - v21;
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215CF8);
  MEMORY[0x28223BE20](v485);
  v461 = &v356 - v22;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215CE8);
  MEMORY[0x28223BE20](v493);
  v488 = &v356 - v23;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8A8);
  v367 = *(v413 - 8);
  MEMORY[0x28223BE20](v413);
  v406 = &v356 - v24;
  v363 = type metadata accessor for GamesArcadeFooterView();
  MEMORY[0x28223BE20](v363);
  v362 = (&v356 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215CD0);
  MEMORY[0x28223BE20](v403);
  v368 = &v356 - v26;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8B0);
  MEMORY[0x28223BE20](v398);
  v401 = &v356 - v27;
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215CB8);
  MEMORY[0x28223BE20](v452);
  v404 = &v356 - v28;
  v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2223D8);
  v365 = *(v409 - 8);
  MEMORY[0x28223BE20](v409);
  v396 = &v356 - v29;
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8B8);
  v366 = *(v412 - 8);
  MEMORY[0x28223BE20](v412);
  v399 = &v356 - v30;
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8C0);
  MEMORY[0x28223BE20](v445);
  v450 = &v356 - v31;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8C8);
  MEMORY[0x28223BE20](v394);
  v400 = &v356 - v32;
  v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C98);
  MEMORY[0x28223BE20](v447);
  v402 = &v356 - v33;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C88);
  MEMORY[0x28223BE20](v472);
  v455 = &v356 - v34;
  v390 = type metadata accessor for LargeBreakoutView(0);
  MEMORY[0x28223BE20](v390);
  v361 = (&v356 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8D0);
  v364 = *(v405 - 8);
  MEMORY[0x28223BE20](v405);
  v395 = &v356 - v36;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8D8);
  MEMORY[0x28223BE20](v391);
  v392 = &v356 - v37;
  v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C78);
  MEMORY[0x28223BE20](v451);
  v397 = &v356 - v38;
  v443 = type metadata accessor for StoryCardView(0);
  MEMORY[0x28223BE20](v443);
  v428 = (&v356 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8E0);
  v430 = *(v462 - 8);
  MEMORY[0x28223BE20](v462);
  v458 = &v356 - v40;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8E8);
  MEMORY[0x28223BE20](v469);
  v471 = &v356 - v41;
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8F0);
  MEMORY[0x28223BE20](v444);
  v448 = &v356 - v42;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C8F8);
  MEMORY[0x28223BE20](v388);
  v389 = &v356 - v43;
  v446 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C60);
  MEMORY[0x28223BE20](v446);
  v393 = &v356 - v44;
  v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C50);
  MEMORY[0x28223BE20](v470);
  v453 = &v356 - v45;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C40);
  MEMORY[0x28223BE20](v478);
  v473 = &v356 - v46;
  v440 = type metadata accessor for ImageLockupView();
  MEMORY[0x28223BE20](v440);
  v385 = (&v356 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C900);
  v407 = *(v456 - 8);
  MEMORY[0x28223BE20](v456);
  v438 = &v356 - v48;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C908);
  MEMORY[0x28223BE20](v384);
  v386 = &v356 - v49;
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C28);
  MEMORY[0x28223BE20](v441);
  v387 = &v356 - v50;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C910);
  MEMORY[0x28223BE20](v436);
  v439 = &v356 - v51;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C918);
  MEMORY[0x28223BE20](v381);
  v382 = &v356 - v52;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C10);
  MEMORY[0x28223BE20](v437);
  v383 = &v356 - v53;
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215C00);
  MEMORY[0x28223BE20](v467);
  v442 = &v356 - v54;
  v435 = type metadata accessor for BrickView(0);
  MEMORY[0x28223BE20](v435);
  v427 = (&v356 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C920);
  v429 = *(v449 - 8);
  MEMORY[0x28223BE20](v449);
  v463 = &v356 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C928);
  MEMORY[0x28223BE20](v57);
  v358 = &v356 - v58;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C930);
  v357 = *(v359 - 8);
  MEMORY[0x28223BE20](v359);
  v60 = &v356 - v59;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BE8);
  MEMORY[0x28223BE20](v379);
  v62 = &v356 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v360 = &v356 - v64;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C938);
  MEMORY[0x28223BE20](v377);
  v378 = (&v356 - v65);
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BD8);
  MEMORY[0x28223BE20](v433);
  v380 = &v356 - v66;
  v67 = type metadata accessor for GamesPageHeader();
  MEMORY[0x28223BE20](v67);
  v69 = &v356 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C940);
  MEMORY[0x28223BE20](v489);
  v491 = &v356 - v70;
  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C948);
  MEMORY[0x28223BE20](v475);
  v477 = &v356 - v71;
  v464 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C950);
  MEMORY[0x28223BE20](v464);
  v466 = &v356 - v72;
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C958);
  MEMORY[0x28223BE20](v431);
  v432 = (&v356 - v73);
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BB8);
  MEMORY[0x28223BE20](v465);
  v434 = &v356 - v74;
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BA8);
  MEMORY[0x28223BE20](v476);
  v468 = &v356 - v75;
  v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B98);
  MEMORY[0x28223BE20](v490);
  v479 = &v356 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B88);
  MEMORY[0x28223BE20](v77 - 8);
  v492 = &v356 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v80 = v79 - 8;
  MEMORY[0x28223BE20](v79);
  v82 = &v356 - v81;
  sub_24E60169C(v495, &v356 - v81, &unk_27F23A690);
  v83 = *(v80 + 56);
  v495 = v82;
  v84 = &v82[v83];
  v85 = v498;
  v86 = v497;
  sub_24E60169C(v496, v84, &unk_27F23A690);
  memcpy(v506, v499, 0x188uLL);
  v504[0] = *(v86 + 16);
  sub_24E615E00(v85, v505);
  switch(v504[0])
  {
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for Lockup();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v87 = *&v500[0];
      type metadata accessor for LockupViewModel();
      swift_allocObject();

      v88 = v474;

      v499 = v87;
      v89 = sub_24F41AF18(v87, 3, 0, 0, 1, 5, v88);
      LOBYTE(v501) = 0;
      if (v89)
      {
        v503 = v89;
        v90 = sub_24E66C990();
        sub_24F921D38();
        v91 = v357;
        v92 = v359;
        (*(v357 + 16))(v358, v60, v359);
        swift_storeEnumTagMultiPayload();
        *v502 = &type metadata for LockupButtonView;
        *&v502[8] = v90;
        swift_getOpaqueTypeConformance2();
        sub_24F924E28();
        (*(v91 + 8))(v60, v92);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v348 = sub_24E66C990();
        *v502 = &type metadata for LockupButtonView;
        *&v502[8] = v348;
        swift_getOpaqueTypeConformance2();
        sub_24F924E28();
      }

      v349 = v360;
      sub_24E6009C8(v62, v360, &qword_27F215BE8);

      sub_24E60169C(v349, v378, &qword_27F215BE8);
      swift_storeEnumTagMultiPayload();
      sub_24E66C8D8();
      v350 = v380;
      sub_24F924E28();
      sub_24E60169C(v350, v432, &qword_27F215BD8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BC8);
      sub_24E66C7C8();
      sub_24E66C84C();
      v351 = v434;
      sub_24F924E28();
      sub_24E601704(v350, &qword_27F215BD8);
      sub_24E60169C(v351, v466, &qword_27F215BB8);
      swift_storeEnumTagMultiPayload();
      sub_24E66C73C();
      sub_24E66C9E4();
      v352 = v468;
      sub_24F924E28();
      sub_24E601704(v351, &qword_27F215BB8);
      sub_24E60169C(v352, v477, &qword_27F215BA8);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v353 = v479;
      sub_24F924E28();
      sub_24E601704(v352, &qword_27F215BA8);
      sub_24E60169C(v353, v491, &qword_27F215B98);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v354 = v492;
      sub_24F924E28();

      sub_24E601704(v353, &qword_27F215B98);
      v265 = v349;
      v266 = &qword_27F215BE8;
      v141 = v354;
      goto LABEL_58;
    case 0xF:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for Paragraph();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v201 = v503;
      memcpy(v502, v506, sizeof(v502));
      CGSizeMake(v502, v202, v203);
      type metadata accessor for ParagraphViewModel();
      v204 = swift_allocObject();
      v205 = qword_27F226130;
      v206 = sub_24F91F008();
      (*(*(v206 - 8) + 56))(v204 + v205, 1, 1, v206);
      memcpy((v204 + 24), v502, 0x188uLL);
      v499 = v201;
      *(v204 + 16) = v201;
      v501 = v204;

      sub_24E8B9768(v506, v500);
      v207 = sub_24E66D5C4();
      v208 = v406;
      sub_24F921D38();
      v209 = v367;
      v210 = v208;
      v211 = v413;
      (*(v367 + 16))(v410, v210, v413);
      swift_storeEnumTagMultiPayload();
      *&v500[0] = &type metadata for ParagraphView;
      *(&v500[0] + 1) = v207;
      swift_getOpaqueTypeConformance2();
      v212 = sub_24E66D618();
      *&v500[0] = &type metadata for EditorialLinkView;
      *(&v500[0] + 1) = v212;
      swift_getOpaqueTypeConformance2();
      v213 = v414;
      sub_24F924E28();
      sub_24E60169C(v213, v459, &qword_27F215D08);
      swift_storeEnumTagMultiPayload();
      sub_24E66D4E4();
      sub_24E66D66C();
      v214 = v461;
      sub_24F924E28();
      sub_24E601704(v213, &qword_27F215D08);
      sub_24E60169C(v214, v486, &qword_27F215CF8);
      swift_storeEnumTagMultiPayload();
      sub_24E66D458();
      sub_24E66D7F4();
      v215 = v488;
      sub_24F924E28();
      sub_24E601704(v214, &qword_27F215CF8);
      sub_24E60169C(v215, v491, &qword_27F215CE8);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v216 = v492;
      sub_24F924E28();

      v141 = v216;

      sub_24E601704(v215, &qword_27F215CE8);
      (*(v209 + 8))(v406, v211);
      goto LABEL_59;
    case 0x11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for Footnote();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v499 = *&v500[0];
      *v502 = *&v500[0];
      v161 = sub_24E66D28C();
      v162 = v396;
      sub_24F921D38();
      v163 = v365;
      v164 = v409;
      (*(v365 + 16))(v401, v162, v409);
      swift_storeEnumTagMultiPayload();
      *v502 = &type metadata for FootnoteView;
      *&v502[8] = v161;
      swift_getOpaqueTypeConformance2();
      sub_24E66D2E0();
      v165 = v404;
      sub_24F924E28();
      sub_24E60169C(v165, v450, &qword_27F215CB8);
      swift_storeEnumTagMultiPayload();
      sub_24E66D06C();
      sub_24E66D1D4();
      v166 = v455;
      sub_24F924E28();
      sub_24E601704(v165, &qword_27F215CB8);
      sub_24E60169C(v166, v471, &qword_27F215C88);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v167 = v473;
      sub_24F924E28();
      sub_24E601704(v166, &qword_27F215C88);
      sub_24E60169C(v167, v477, &qword_27F215C40);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v168 = v479;
      sub_24F924E28();
      sub_24E601704(v167, &qword_27F215C40);
      sub_24E60169C(v168, v491, &qword_27F215B98);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v169 = v492;
      sub_24F924E28();

      v141 = v169;
      sub_24E601704(v168, &qword_27F215B98);
      (*(v163 + 8))(v396, v164);
      goto LABEL_59;
    case 0x15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for Brick();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v267 = *&v500[0];
      KeyPath = swift_getKeyPath();
      v269 = v427;
      *v427 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      v270 = v435;
      v271 = *(v435 + 20);
      *(v269 + v271) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for BrickViewModel();
      v272 = swift_allocObject();
      *(v272 + 24) = 513;
      v499 = v267;
      *(v272 + 16) = v267;
      *v502 = v272;
      v273 = sub_24EC79CFC(&qword_27F215C18, type metadata accessor for BrickView);

      v274 = v463;
      sub_24F921D38();

      sub_24EC7A180(v269, type metadata accessor for BrickView);
      v178 = v429;
      v179 = v449;
      (*(v429 + 16))(v382, v274, v449);
      goto LABEL_37;
    case 0x17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for Brick();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v275 = *&v500[0];
      v276 = swift_getKeyPath();
      v277 = v427;
      *v427 = v276;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      v270 = v435;
      v278 = *(v435 + 20);
      *(v277 + v278) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for BrickViewModel();
      v279 = swift_allocObject();
      *(v279 + 24) = 512;
      v499 = v275;
      *(v279 + 16) = v275;
      *v502 = v279;
      v273 = sub_24EC79CFC(&qword_27F215C18, type metadata accessor for BrickView);

      v280 = v463;
      sub_24F921D38();

      sub_24EC7A180(v277, type metadata accessor for BrickView);
      v178 = v429;
      v179 = v449;
      (*(v429 + 16))(v382, v280, v449);
LABEL_37:
      swift_storeEnumTagMultiPayload();
      *v502 = v270;
      *&v502[8] = v273;
      swift_getOpaqueTypeConformance2();
      v181 = v383;
      sub_24F924E28();
      v182 = &qword_27F215C10;
      sub_24E60169C(v181, v439, &qword_27F215C10);
      goto LABEL_38;
    case 0x18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for Brick();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v170 = *&v500[0];
      v171 = swift_getKeyPath();
      v172 = v427;
      *v427 = v171;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      v173 = v435;
      v174 = *(v435 + 20);
      *(v172 + v174) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for BrickViewModel();
      v175 = swift_allocObject();
      *(v175 + 24) = 514;
      v499 = v170;
      *(v175 + 16) = v170;
      *v502 = v175;
      v176 = sub_24EC79CFC(&qword_27F215C18, type metadata accessor for BrickView);

      v177 = v463;
      sub_24F921D38();

      sub_24EC7A180(v172, type metadata accessor for BrickView);
      v178 = v429;
      v179 = v449;
      (*(v429 + 16))(v386, v177, v449);
      swift_storeEnumTagMultiPayload();
      *v502 = v173;
      *&v502[8] = v176;
      swift_getOpaqueTypeConformance2();
      v180 = sub_24EC79CFC(&qword_27F215C30, type metadata accessor for ImageLockupView);
      *v502 = v440;
      *&v502[8] = v180;
      swift_getOpaqueTypeConformance2();
      v181 = v387;
      sub_24F924E28();
      v182 = &qword_27F215C28;
      sub_24E60169C(v181, v439, &qword_27F215C28);
LABEL_38:
      swift_storeEnumTagMultiPayload();
      sub_24E66CA70();
      sub_24E66CB54();
      v281 = v442;
      sub_24F924E28();
      sub_24E601704(v181, v182);
      sub_24E60169C(v281, v466, &qword_27F215C00);
      swift_storeEnumTagMultiPayload();
      sub_24E66C73C();
      sub_24E66C9E4();
      v282 = v468;
      sub_24F924E28();
      sub_24E601704(v281, &qword_27F215C00);
      sub_24E60169C(v282, v477, &qword_27F215BA8);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v283 = v479;
      sub_24F924E28();
      sub_24E601704(v282, &qword_27F215BA8);
      sub_24E60169C(v283, v491, &qword_27F215B98);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v160 = v492;
      sub_24F924E28();

      sub_24E601704(v283, &qword_27F215B98);
      (*(v178 + 8))(v463, v179);
      goto LABEL_39;
    case 0x1F:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for EditorialLink();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v217 = *&v500[0];
      v498 = *&v500[0];
      type metadata accessor for EditorialLinkViewModel();
      v218 = swift_allocObject();
      v499 = v218;
      v218[2] = v217;
      *v502 = v218;
      v219 = sub_24E66D618();

      v117 = v369;
      sub_24F921D38();
      v118 = v370;
      v119 = v421;
      (*(v370 + 16))(v410, v117, v421);
      swift_storeEnumTagMultiPayload();
      v220 = sub_24E66D5C4();
      *v502 = &type metadata for ParagraphView;
      *&v502[8] = v220;
      swift_getOpaqueTypeConformance2();
      *v502 = &type metadata for EditorialLinkView;
      *&v502[8] = v219;
      swift_getOpaqueTypeConformance2();
      v121 = v414;
      sub_24F924E28();
      v122 = &qword_27F215D08;
      sub_24E60169C(v121, v459, &qword_27F215D08);
      goto LABEL_26;
    case 0x21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for Quote();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v225 = *&v500[0];
      v498 = *&v500[0];
      type metadata accessor for QuoteViewModel();
      v226 = swift_allocObject();
      v499 = v226;
      v226[2] = v225;
      *v502 = v226;
      v227 = sub_24E66D9B4();

      v228 = v423;
      sub_24F921D38();
      v229 = v376;
      v230 = v426;
      (*(v376 + 16))(v420, v228, v426);
      swift_storeEnumTagMultiPayload();
      v231 = sub_24E66D960();
      *v502 = &type metadata for ArticleHorizontalRuleView;
      *&v502[8] = v231;
      swift_getOpaqueTypeConformance2();
      *v502 = &type metadata for QuoteView;
      *&v502[8] = v227;
      swift_getOpaqueTypeConformance2();
      v232 = v424;
      sub_24F924E28();
      sub_24E60169C(v232, v482, &qword_27F215D58);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D78);
      sub_24E66D880();
      sub_24E66DA08();
      v233 = v483;
      sub_24F924E28();
      sub_24E601704(v232, &qword_27F215D58);
      sub_24E60169C(v233, v486, &qword_27F215D48);
      swift_storeEnumTagMultiPayload();
      sub_24E66D458();
      sub_24E66D7F4();
      v234 = v488;
      sub_24F924E28();
      sub_24E601704(v233, &qword_27F215D48);
      sub_24E60169C(v234, v491, &qword_27F215CE8);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v141 = v492;
      sub_24F924E28();

      sub_24E601704(v234, &qword_27F215CE8);
      (*(v229 + 8))(v423, v230);
      goto LABEL_59;
    case 0x22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for HorizontalRule();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v296 = *&v500[0];
      v498 = *&v500[0];
      type metadata accessor for ArticleHorizontalRuleViewModel();
      v297 = swift_allocObject();
      v499 = v297;
      v297[2] = v296;
      *v502 = v297;
      v298 = sub_24E66D960();

      v299 = v418;
      sub_24F921D38();
      v300 = v375;
      v301 = v425;
      (*(v375 + 16))(v420, v299, v425);
      swift_storeEnumTagMultiPayload();
      *v502 = &type metadata for ArticleHorizontalRuleView;
      *&v502[8] = v298;
      swift_getOpaqueTypeConformance2();
      v302 = sub_24E66D9B4();
      *v502 = &type metadata for QuoteView;
      *&v502[8] = v302;
      swift_getOpaqueTypeConformance2();
      v303 = v424;
      sub_24F924E28();
      sub_24E60169C(v303, v482, &qword_27F215D58);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D78);
      sub_24E66D880();
      sub_24E66DA08();
      v304 = v483;
      sub_24F924E28();
      sub_24E601704(v303, &qword_27F215D58);
      sub_24E60169C(v304, v486, &qword_27F215D48);
      swift_storeEnumTagMultiPayload();
      sub_24E66D458();
      sub_24E66D7F4();
      v305 = v488;
      sub_24F924E28();
      sub_24E601704(v304, &qword_27F215D48);
      sub_24E60169C(v305, v491, &qword_27F215CE8);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v306 = v492;
      sub_24F924E28();

      sub_24E601704(v305, &qword_27F215CE8);
      (*(v300 + 8))(v418, v301);
      v141 = v306;
      goto LABEL_59;
    case 0x23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for FramedArtwork();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v284 = *&v500[0];
      v498 = *&v500[0];
      type metadata accessor for FramedArtworkViewModel();
      v285 = swift_allocObject();
      v499 = v285;
      v285[2] = v284;
      *v502 = v285;
      v286 = sub_24E66D74C();

      v287 = v371;
      sub_24F921D38();
      v288 = v372;
      v289 = v419;
      (*(v372 + 16))(v415, v287, v419);
      swift_storeEnumTagMultiPayload();
      *v502 = &type metadata for FramedArtworkView;
      *&v502[8] = v286;
      swift_getOpaqueTypeConformance2();
      v290 = sub_24E66D7A0();
      *v502 = &type metadata for FramedVideoView;
      *&v502[8] = v290;
      swift_getOpaqueTypeConformance2();
      v291 = v417;
      sub_24F924E28();
      sub_24E60169C(v291, v459, &qword_27F215D28);
      swift_storeEnumTagMultiPayload();
      sub_24E66D4E4();
      sub_24E66D66C();
      v292 = v461;
      sub_24F924E28();
      sub_24E601704(v291, &qword_27F215D28);
      sub_24E60169C(v292, v486, &qword_27F215CF8);
      swift_storeEnumTagMultiPayload();
      sub_24E66D458();
      sub_24E66D7F4();
      v293 = v488;
      sub_24F924E28();
      sub_24E601704(v292, &qword_27F215CF8);
      sub_24E60169C(v293, v491, &qword_27F215CE8);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v294 = v492;
      sub_24F924E28();

      sub_24E601704(v293, &qword_27F215CE8);
      v295 = v287;
      v141 = v294;
      (*(v288 + 8))(v295, v289);
      goto LABEL_59;
    case 0x2F:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for FramedVideo();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v114 = *&v500[0];
      v498 = *&v500[0];
      type metadata accessor for FramedVideoViewModel();
      v115 = swift_allocObject();
      v499 = v115;
      v115[2] = v114;
      *v502 = v115;
      v116 = sub_24E66D7A0();

      v117 = v373;
      sub_24F921D38();
      v118 = v374;
      v119 = v422;
      (*(v374 + 16))(v415, v117, v422);
      swift_storeEnumTagMultiPayload();
      v120 = sub_24E66D74C();
      *v502 = &type metadata for FramedArtworkView;
      *&v502[8] = v120;
      swift_getOpaqueTypeConformance2();
      *v502 = &type metadata for FramedVideoView;
      *&v502[8] = v116;
      swift_getOpaqueTypeConformance2();
      v121 = v417;
      sub_24F924E28();
      v122 = &qword_27F215D28;
      sub_24E60169C(v121, v459, &qword_27F215D28);
LABEL_26:
      swift_storeEnumTagMultiPayload();
      sub_24E66D4E4();
      sub_24E66D66C();
      v221 = v461;
      sub_24F924E28();
      sub_24E601704(v121, v122);
      sub_24E60169C(v221, v486, &qword_27F215CF8);
      swift_storeEnumTagMultiPayload();
      sub_24E66D458();
      sub_24E66D7F4();
      v222 = v488;
      sub_24F924E28();
      sub_24E601704(v221, &qword_27F215CF8);
      sub_24E60169C(v222, v491, &qword_27F215CE8);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v223 = v492;
      sub_24F924E28();

      sub_24E601704(v222, &qword_27F215CE8);
      v224 = v117;
      v141 = v223;
      (*(v118 + 8))(v224, v119);
      goto LABEL_59;
    case 0x36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for EditorialStoryCard(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v183 = *&v500[0];
      v184 = swift_getKeyPath();
      v185 = v428;
      *v428 = v184;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      v186 = v443;
      v187 = (v185 + *(v443 + 20));
      v503 = 0x4024000000000000;
      sub_24F926F28();
      v188 = *&v502[8];
      *v187 = *v502;
      v187[1] = v188;
      v189 = *(v186 + 24);
      *(v185 + v189) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for StoryCardViewModel();
      swift_allocObject();
      v190 = v474;

      v499 = v183;

      *v502 = sub_24E6EC080(v191, 0, v190);
      v192 = sub_24EC79CFC(&qword_27F215C68, type metadata accessor for StoryCardView);
      v193 = v458;
      sub_24F921D38();

      sub_24EC7A180(v185, type metadata accessor for StoryCardView);
      v194 = v430;
      v195 = v462;
      (*(v430 + 16))(v389, v193, v462);
      swift_storeEnumTagMultiPayload();
      v196 = sub_24EC79CFC(&qword_27F215C30, type metadata accessor for ImageLockupView);
      *v502 = v440;
      *&v502[8] = v196;
      swift_getOpaqueTypeConformance2();
      *v502 = v186;
      *&v502[8] = v192;
      swift_getOpaqueTypeConformance2();
      v197 = v393;
      sub_24F924E28();
      sub_24E60169C(v197, v448, &qword_27F215C60);
      swift_storeEnumTagMultiPayload();
      sub_24E66CDB4();
      sub_24E66CEFC();
      v198 = v453;
      sub_24F924E28();
      sub_24E601704(v197, &qword_27F215C60);
      sub_24E60169C(v198, v471, &qword_27F215C50);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v199 = v473;
      sub_24F924E28();
      sub_24E601704(v198, &qword_27F215C50);
      sub_24E60169C(v199, v477, &qword_27F215C40);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v200 = v479;
      sub_24F924E28();
      sub_24E601704(v199, &qword_27F215C40);
      sub_24E60169C(v200, v491, &qword_27F215B98);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v160 = v492;
      sub_24F924E28();

      sub_24E601704(v200, &qword_27F215B98);
      (*(v194 + 8))(v458, v195);
      goto LABEL_39;
    case 0x37:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for EditorialStoryCard(0);
      if (swift_dynamicCast())
      {
        goto LABEL_12;
      }

      goto LABEL_50;
    case 0x38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for EditorialStoryCard(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

LABEL_12:
      v123 = *&v500[0];
      v124 = swift_getKeyPath();
      v125 = v428;
      *v428 = v124;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      v126 = v443;
      v127 = (v125 + *(v443 + 20));
      v503 = 0x4024000000000000;
      sub_24F926F28();
      v128 = *&v502[8];
      *v127 = *v502;
      v127[1] = v128;
      v129 = *(v126 + 24);
      *(v125 + v129) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for StoryCardViewModel();
      swift_allocObject();
      v130 = v474;

      v499 = v123;

      *v502 = sub_24E6EC080(v131, 1, v130);
      v132 = sub_24EC79CFC(&qword_27F215C68, type metadata accessor for StoryCardView);
      v133 = v458;
      sub_24F921D38();

      sub_24EC7A180(v125, type metadata accessor for StoryCardView);
      v134 = v430;
      v135 = v462;
      (*(v430 + 16))(v392, v133, v462);
      swift_storeEnumTagMultiPayload();
      *v502 = v126;
      *&v502[8] = v132;
      swift_getOpaqueTypeConformance2();
      v136 = v397;
      sub_24F924E28();
      sub_24E60169C(v136, v448, &qword_27F215C78);
      swift_storeEnumTagMultiPayload();
      sub_24E66CDB4();
      sub_24E66CEFC();
      v137 = v453;
      sub_24F924E28();
      sub_24E601704(v136, &qword_27F215C78);
      sub_24E60169C(v137, v471, &qword_27F215C50);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v138 = v473;
      sub_24F924E28();
      sub_24E601704(v137, &qword_27F215C50);
      sub_24E60169C(v138, v477, &qword_27F215C40);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v139 = v479;
      sub_24F924E28();
      sub_24E601704(v138, &qword_27F215C40);
      sub_24E60169C(v139, v491, &qword_27F215B98);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v140 = v492;
      sub_24F924E28();

      sub_24E601704(v139, &qword_27F215B98);
      (*(v134 + 8))(v133, v135);
      v141 = v140;
      goto LABEL_59;
    case 0x3A:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for LargeHeroBreakout();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v235 = *&v500[0];
      v236 = swift_getKeyPath();
      v237 = v361;
      *v361 = v236;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      v238 = v390;
      v239 = *(v390 + 20);
      *(v237 + v239) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for LargeBreakoutViewModel();
      v240 = swift_allocObject();
      v241 = qword_27F2251B8;
      v242 = type metadata accessor for LargeBreakoutOverlayViewModel();
      v243 = *(*(v242 - 8) + 56);
      v243(v240 + v241, 1, 1, v242);
      v243(v240 + qword_27F2251C0, 1, 1, v242);
      *(v240 + qword_27F39B4B0) = 1;
      *(v240 + qword_27F39B4B8) = 2;
      v244 = v474;
      *(v240 + 16) = v235;
      *(v240 + 24) = v244;
      v499 = v235;
      *v502 = v240;
      v245 = sub_24EC79CFC(&qword_27F215CA0, type metadata accessor for LargeBreakoutView);

      v246 = v395;
      sub_24F921D38();

      sub_24EC7A180(v237, type metadata accessor for LargeBreakoutView);
      v247 = v364;
      v248 = v405;
      (*(v364 + 16))(v400, v246, v405);
      swift_storeEnumTagMultiPayload();
      *v502 = v238;
      *&v502[8] = v245;
      swift_getOpaqueTypeConformance2();
      v249 = sub_24E66D180();
      *v502 = &type metadata for PosterLockupView;
      *&v502[8] = v249;
      swift_getOpaqueTypeConformance2();
      v250 = v402;
      sub_24F924E28();
      sub_24E60169C(v250, v450, &qword_27F215C98);
      swift_storeEnumTagMultiPayload();
      sub_24E66D06C();
      sub_24E66D1D4();
      v251 = v455;
      sub_24F924E28();
      sub_24E601704(v250, &qword_27F215C98);
      sub_24E60169C(v251, v471, &qword_27F215C88);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v252 = v473;
      sub_24F924E28();
      sub_24E601704(v251, &qword_27F215C88);
      sub_24E60169C(v252, v477, &qword_27F215C40);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v253 = v479;
      sub_24F924E28();
      sub_24E601704(v252, &qword_27F215C40);
      sub_24E60169C(v253, v491, &qword_27F215B98);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v141 = v492;
      sub_24F924E28();

      sub_24E601704(v253, &qword_27F215B98);
      (*(v247 + 8))(v395, v248);
      goto LABEL_59;
    case 0x3F:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for ArcadeFooter();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v254 = *&v500[0];
      type metadata accessor for ArcadeFooterViewModel();
      v255 = swift_allocObject();
      v255[3] = v474;
      type metadata accessor for ArtworkLoader();
      sub_24F928FD8();

      sub_24F92A758();
      v255[4] = *v502;
      v255[2] = v254;
      v256 = swift_getKeyPath();
      v257 = v362;
      *v362 = v256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      *v502 = v255;
      sub_24EC79CFC(&qword_27F215CD8, type metadata accessor for GamesArcadeFooterView);
      v258 = v368;
      sub_24F921D38();
      sub_24EC7A180(v257, type metadata accessor for GamesArcadeFooterView);
      *(v258 + *(v403 + 36)) = sub_24F925808();
      sub_24E60169C(v258, v401, &qword_27F215CD0);
      swift_storeEnumTagMultiPayload();
      v259 = sub_24E66D28C();
      *v502 = &type metadata for FootnoteView;
      *&v502[8] = v259;
      swift_getOpaqueTypeConformance2();
      sub_24E66D2E0();
      v260 = v404;
      sub_24F924E28();
      sub_24E60169C(v260, v450, &qword_27F215CB8);
      swift_storeEnumTagMultiPayload();
      sub_24E66D06C();
      sub_24E66D1D4();
      v261 = v455;
      sub_24F924E28();
      sub_24E601704(v260, &qword_27F215CB8);
      sub_24E60169C(v261, v471, &qword_27F215C88);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v262 = v473;
      sub_24F924E28();
      sub_24E601704(v261, &qword_27F215C88);
      sub_24E60169C(v262, v477, &qword_27F215C40);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v263 = v479;
      sub_24F924E28();
      sub_24E601704(v262, &qword_27F215C40);
      sub_24E60169C(v263, v491, &qword_27F215B98);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v264 = v492;
      sub_24F924E28();
      v141 = v264;

      sub_24E601704(v263, &qword_27F215B98);
      v265 = v258;
      v266 = &qword_27F215CD0;
LABEL_58:
      sub_24E601704(v265, v266);
      goto LABEL_59;
    case 0x4A:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for PosterLockup();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v316 = *&v500[0];
      v499 = *&v500[0];
      type metadata accessor for PosterLockupViewModel();
      v317 = swift_allocObject();
      v318 = v474;
      *(v317 + 16) = v316;
      *(v317 + 24) = v318;
      *v502 = v317;
      v319 = sub_24E66D180();

      v320 = v399;
      sub_24F921D38();
      v321 = v366;
      v322 = v412;
      (*(v366 + 16))(v400, v320, v412);
      swift_storeEnumTagMultiPayload();
      v323 = sub_24EC79CFC(&qword_27F215CA0, type metadata accessor for LargeBreakoutView);
      *v502 = v390;
      *&v502[8] = v323;
      swift_getOpaqueTypeConformance2();
      *v502 = &type metadata for PosterLockupView;
      *&v502[8] = v319;
      swift_getOpaqueTypeConformance2();
      v324 = v402;
      sub_24F924E28();
      sub_24E60169C(v324, v450, &qword_27F215C98);
      swift_storeEnumTagMultiPayload();
      sub_24E66D06C();
      sub_24E66D1D4();
      v325 = v455;
      sub_24F924E28();
      sub_24E601704(v324, &qword_27F215C98);
      sub_24E60169C(v325, v471, &qword_27F215C88);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v326 = v473;
      sub_24F924E28();
      sub_24E601704(v325, &qword_27F215C88);
      sub_24E60169C(v326, v477, &qword_27F215C40);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v327 = v479;
      sub_24F924E28();
      sub_24E601704(v326, &qword_27F215C40);
      sub_24E60169C(v327, v491, &qword_27F215B98);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v328 = v492;
      sub_24F924E28();

      v141 = v328;

      sub_24E601704(v327, &qword_27F215B98);
      (*(v321 + 8))(v399, v322);
      goto LABEL_59;
    case 0x57:
      v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
      v308 = v495;
      if ((*(*(v307 - 8) + 48))(v495, 1, v307) == 1)
      {
        *&v500[0] = sub_24F926C98();
        BYTE8(v500[0]) = 1;

        sub_24F924E28();
        v309 = v502[8];
        v310 = v432;
        *v432 = *v502;
        *(v310 + 8) = v309;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BC8);
        sub_24E66C7C8();
        sub_24E66C84C();
        v311 = v434;
        sub_24F924E28();
        sub_24E60169C(v311, v466, &qword_27F215BB8);
        swift_storeEnumTagMultiPayload();
        sub_24E66C73C();
        sub_24E66C9E4();
        v312 = v468;
        sub_24F924E28();
        sub_24E601704(v311, &qword_27F215BB8);
        sub_24E60169C(v312, v477, &qword_27F215BA8);
        swift_storeEnumTagMultiPayload();
        sub_24E66C6B0();
        sub_24E66CC9C();
        v313 = v479;
        sub_24F924E28();
        sub_24E601704(v312, &qword_27F215BA8);
        sub_24E60169C(v313, v491, &qword_27F215B98);
        swift_storeEnumTagMultiPayload();
        sub_24E66C624();
        sub_24E66D3CC();
        v314 = v492;
        sub_24F924E28();

        v315 = v313;
        v141 = v314;
      }

      else
      {
        *&v500[0] = 0;
        BYTE8(v500[0]) = 0;
        sub_24F924E28();
        v342 = v502[8];
        v343 = v432;
        *v432 = *v502;
        *(v343 + 8) = v342;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BC8);
        sub_24E66C7C8();
        sub_24E66C84C();
        v344 = v434;
        sub_24F924E28();
        sub_24E60169C(v344, v466, &qword_27F215BB8);
        swift_storeEnumTagMultiPayload();
        sub_24E66C73C();
        sub_24E66C9E4();
        v345 = v468;
        sub_24F924E28();
        sub_24E601704(v344, &qword_27F215BB8);
        sub_24E60169C(v345, v477, &qword_27F215BA8);
        swift_storeEnumTagMultiPayload();
        sub_24E66C6B0();
        sub_24E66CC9C();
        v346 = v479;
        sub_24F924E28();
        sub_24E601704(v345, &qword_27F215BA8);
        sub_24E60169C(v346, v491, &qword_27F215B98);
        swift_storeEnumTagMultiPayload();
        sub_24E66C624();
        sub_24E66D3CC();
        v347 = v492;
        sub_24F924E28();
        v315 = v346;
        v141 = v347;
      }

      sub_24E601704(v315, &qword_27F215B98);
      __swift_destroy_boxed_opaque_existential_1(v505);
      v338 = v494;
      goto LABEL_61;
    case 0x63:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for ImageLockup();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v93 = *&v500[0];
      v94 = swift_getKeyPath();
      v95 = v385;
      *v385 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      v96 = v440;
      v97 = (v95 + *(v440 + 20));
      v503 = 0;
      sub_24F926F28();
      v98 = *&v502[8];
      *v97 = *v502;
      v97[1] = v98;
      v99 = (v95 + *(v96 + 24));
      v503 = 0;
      sub_24F926F28();
      v100 = *&v502[8];
      *v99 = *v502;
      v99[1] = v100;
      v101 = *(v86 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
      type metadata accessor for ImageLockupViewModel();
      v102 = swift_allocObject();
      *(v102 + 24) = 0;
      type metadata accessor for LockupViewModel();
      swift_allocObject();
      v103 = v474;

      v499 = v93;

      *(v102 + 32) = sub_24F41AF18(v104, 1, 0, 0, 1, 2, v103);
      *(v102 + 40) = (v101 & 2) != 0;
      *(v102 + 16) = v93;
      *v502 = v102;
      v105 = sub_24EC79CFC(&qword_27F215C30, type metadata accessor for ImageLockupView);
      v106 = v438;
      sub_24F921D38();

      sub_24EC7A180(v95, type metadata accessor for ImageLockupView);
      v107 = v407;
      v108 = v456;
      (*(v407 + 16))(v386, v106, v456);
      swift_storeEnumTagMultiPayload();
      v109 = sub_24EC79CFC(&qword_27F215C18, type metadata accessor for BrickView);
      *v502 = v435;
      *&v502[8] = v109;
      swift_getOpaqueTypeConformance2();
      *v502 = v96;
      *&v502[8] = v105;
      swift_getOpaqueTypeConformance2();
      v110 = v387;
      sub_24F924E28();
      sub_24E60169C(v110, v439, &qword_27F215C28);
      swift_storeEnumTagMultiPayload();
      sub_24E66CA70();
      sub_24E66CB54();
      v111 = v442;
      sub_24F924E28();
      sub_24E601704(v110, &qword_27F215C28);
      sub_24E60169C(v111, v466, &qword_27F215C00);
      swift_storeEnumTagMultiPayload();
      sub_24E66C73C();
      sub_24E66C9E4();
      v112 = v468;
      sub_24F924E28();
      sub_24E601704(v111, &qword_27F215C00);
      v113 = &qword_27F215BA8;
      sub_24E60169C(v112, v477, &qword_27F215BA8);
      goto LABEL_15;
    case 0x64:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      type metadata accessor for ImageLockup();
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      v142 = *&v500[0];
      v143 = swift_getKeyPath();
      v144 = v385;
      *v385 = v143;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      v145 = v440;
      v146 = (v144 + *(v440 + 20));
      v503 = 0;
      sub_24F926F28();
      v147 = *&v502[8];
      *v146 = *v502;
      v146[1] = v147;
      v148 = (v144 + *(v145 + 24));
      v503 = 0;
      sub_24F926F28();
      v149 = *&v502[8];
      *v148 = *v502;
      v148[1] = v149;
      v150 = *(v86 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
      type metadata accessor for ImageLockupViewModel();
      v151 = swift_allocObject();
      *(v151 + 24) = 1;
      type metadata accessor for LockupViewModel();
      swift_allocObject();
      v152 = v474;

      v499 = v142;

      *(v151 + 32) = sub_24F41AF18(v153, 2, 0, 0, 1, 5, v152);
      *(v151 + 40) = (v150 & 2) != 0;
      *(v151 + 16) = v142;
      *v502 = v151;
      v154 = sub_24EC79CFC(&qword_27F215C30, type metadata accessor for ImageLockupView);
      v155 = v438;
      sub_24F921D38();

      sub_24EC7A180(v144, type metadata accessor for ImageLockupView);
      v107 = v407;
      v108 = v456;
      (*(v407 + 16))(v389, v155, v456);
      swift_storeEnumTagMultiPayload();
      *v502 = v145;
      *&v502[8] = v154;
      swift_getOpaqueTypeConformance2();
      v156 = sub_24EC79CFC(&qword_27F215C68, type metadata accessor for StoryCardView);
      *v502 = v443;
      *&v502[8] = v156;
      swift_getOpaqueTypeConformance2();
      v157 = v393;
      sub_24F924E28();
      sub_24E60169C(v157, v448, &qword_27F215C60);
      swift_storeEnumTagMultiPayload();
      sub_24E66CDB4();
      sub_24E66CEFC();
      v158 = v453;
      sub_24F924E28();
      sub_24E601704(v157, &qword_27F215C60);
      sub_24E60169C(v158, v471, &qword_27F215C50);
      swift_storeEnumTagMultiPayload();
      sub_24E66CD28();
      sub_24E66CFE0();
      v112 = v473;
      sub_24F924E28();
      sub_24E601704(v158, &qword_27F215C50);
      v113 = &qword_27F215C40;
      sub_24E60169C(v112, v477, &qword_27F215C40);
LABEL_15:
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v159 = v479;
      sub_24F924E28();
      sub_24E601704(v112, v113);
      sub_24E60169C(v159, v491, &qword_27F215B98);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v160 = v492;
      sub_24F924E28();

      sub_24E601704(v159, &qword_27F215B98);
      (*(v107 + 8))(v438, v108);
LABEL_39:
      v141 = v160;
      goto LABEL_59;
    case 0x66:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      if (!swift_dynamicCast())
      {
        goto LABEL_50;
      }

      *v378 = sub_24F926C98();
      swift_storeEnumTagMultiPayload();
      sub_24E66C8D8();

      v329 = v380;
      sub_24F924E28();
      sub_24E60169C(v329, v432, &qword_27F215BD8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215BC8);
      sub_24E66C7C8();
      sub_24E66C84C();
      v330 = v434;
      sub_24F924E28();
      sub_24E601704(v329, &qword_27F215BD8);
      sub_24E60169C(v330, v466, &qword_27F215BB8);
      swift_storeEnumTagMultiPayload();
      sub_24E66C73C();
      sub_24E66C9E4();
      v331 = v468;
      sub_24F924E28();
      sub_24E601704(v330, &qword_27F215BB8);
      sub_24E60169C(v331, v477, &qword_27F215BA8);
      swift_storeEnumTagMultiPayload();
      sub_24E66C6B0();
      sub_24E66CC9C();
      v332 = v479;
      sub_24F924E28();
      sub_24E601704(v331, &qword_27F215BA8);
      sub_24E60169C(v332, v491, &qword_27F215B98);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v333 = v492;
      sub_24F924E28();
      v141 = v333;

      sub_24E601704(v332, &qword_27F215B98);
      sub_24EC7A180(v69, type metadata accessor for GamesPageHeader);
LABEL_59:
      __swift_destroy_boxed_opaque_existential_1(v505);
      v338 = v494;
      break;
    default:
LABEL_50:
      v334 = [objc_opt_self() standardUserDefaults];
      v335 = sub_24F92B098();
      v336 = [v334 BOOLForKey_];

      if (v336)
      {
        v337 = *(v86 + 16);
        sub_24E615E00(v85, v500 + 8);
        LOBYTE(v500[0]) = v337;
        *&v502[32] = v500[2];
        *&v502[16] = v500[1];
        *v502 = v500[0];
      }

      else
      {
        memset(v502, 0, 48);
      }

      v338 = v494;
      v339 = v492;
      sub_24E60169C(v502, v482, &qword_27F215D78);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D78);
      sub_24E66D880();
      sub_24E66DA08();
      v340 = v483;
      sub_24F924E28();
      sub_24E60169C(v340, v486, &qword_27F215D48);
      swift_storeEnumTagMultiPayload();
      sub_24E66D458();
      sub_24E66D7F4();
      v341 = v488;
      sub_24F924E28();
      sub_24E601704(v340, &qword_27F215D48);
      sub_24E60169C(v341, v491, &qword_27F215CE8);
      swift_storeEnumTagMultiPayload();
      sub_24E66C624();
      sub_24E66D3CC();
      v141 = v339;
      sub_24F924E28();
      sub_24E601704(v341, &qword_27F215CE8);
      sub_24E601704(v502, &qword_27F215D78);
      sub_24E601704(v504, &qword_27F22C960);
      break;
  }

  v308 = v495;
LABEL_61:
  sub_24E6009C8(v141, v338, &qword_27F215B88);
  return sub_24E601704(v308, &unk_27F23A680);
}

uint64_t sub_24EC79CFC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_24EC79D54@<D0>(uint64_t a1@<X8>)
{
  v18 = sub_24F924C98();
  LOBYTE(v21) = 1;
  sub_24EC79FB0(v1, v28);
  *&v19[7] = v28[0];
  *&v19[23] = v28[1];
  *&v19[39] = v28[2];
  *&v19[55] = v28[3];
  v17 = sub_24F925808();
  sub_24F927618();
  sub_24F9242E8();
  *&v20[55] = v24;
  *&v20[71] = v25;
  *&v20[87] = v26;
  *&v20[103] = v27;
  *&v20[7] = v21;
  *&v20[23] = v22;
  *&v20[39] = v23;
  v3 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  KeyPath = swift_getKeyPath();
  v5 = sub_24F926C68();
  v6 = sub_24F925808();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C968) + 36));
  v8 = *(sub_24F924258() + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_24F924B38();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  *(a1 + 33) = *&v19[16];
  *(a1 + 49) = *&v19[32];
  *(a1 + 65) = *&v19[48];
  *(a1 + 17) = *v19;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 193) = *&v20[64];
  *(a1 + 209) = *&v20[80];
  *(a1 + 225) = *&v20[96];
  *(a1 + 129) = *v20;
  *(a1 + 145) = *&v20[16];
  result = *&v20[32];
  *(a1 + 161) = *&v20[32];
  *a1 = v18;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v19[63];
  *(a1 + 88) = v17;
  *(a1 + 128) = 1;
  *(a1 + 177) = *&v20[48];
  *(a1 + 240) = *(&v27 + 1);
  *(a1 + 248) = KeyPath;
  *(a1 + 256) = v3;
  *(a1 + 264) = v5;
  *(a1 + 272) = v6;
  return result;
}

uint64_t sub_24EC79FB0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  v20 = *a1;
  sub_24F92CA38();
  sub_24F925A28();
  v4 = sub_24F925C98();
  v6 = v5;
  v18 = v7;
  v9 = v8;

  __swift_project_boxed_opaque_existential_1(a1 + 1, *(a1 + 4));
  sub_24F928D68();
  sub_24F92C7A8();
  sub_24E6585F8(v19);
  sub_24F9259E8();
  v10 = sub_24F925C98();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  LOBYTE(v19[0]) = v18 & 1;
  v20 = v14 & 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14 & 1;
  *(a2 + 56) = v16;
  sub_24E5FD138(v4, v6, v18 & 1);

  sub_24E5FD138(v10, v12, v14 & 1);

  sub_24E600B40(v10, v12, v14 & 1);

  sub_24E600B40(v4, v6, v18 & 1);
}

uint64_t sub_24EC7A180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EC7A218()
{
  result = qword_27F22C970;
  if (!qword_27F22C970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C968);
    sub_24EC7A2D0();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C970);
  }

  return result;
}

unint64_t sub_24EC7A2D0()
{
  result = qword_27F22C978;
  if (!qword_27F22C978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C980);
    sub_24EC7A388();
    sub_24E602068(&qword_27F216518, &qword_27F216520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C978);
  }

  return result;
}

unint64_t sub_24EC7A388()
{
  result = qword_27F22C988;
  if (!qword_27F22C988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C990);
    sub_24EC7A440();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C988);
  }

  return result;
}

unint64_t sub_24EC7A440()
{
  result = qword_27F22C998;
  if (!qword_27F22C998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C9A0);
    sub_24EC7A4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C998);
  }

  return result;
}

unint64_t sub_24EC7A4CC()
{
  result = qword_27F22C9A8;
  if (!qword_27F22C9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C9B0);
    sub_24E602068(&qword_27F22C9B8, &qword_27F220848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C9A8);
  }

  return result;
}

uint64_t type metadata accessor for ComponentHeightFactory.ComponentHeight()
{
  result = qword_27F22C9C0;
  if (!qword_27F22C9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC7A5D0()
{
  result = sub_24F922348();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PersonalizedOfferContext.__allocating_init(offerAction:offerDisplayProperties:personalizedOfferType:)(uint64_t a1, uint64_t a2, char *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v7;
  return result;
}

uint64_t PersonalizedOfferContext.init(offerAction:offerDisplayProperties:personalizedOfferType:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v4;
  return v3;
}

uint64_t PersonalizedOfferContext.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x28223BE20](v4);
  v24 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  type metadata accessor for Action();
  sub_24F928398();
  v25 = static Action.tryToMakeInstance(byDeserializing:using:)(v13, a2);
  v14 = *(v8 + 8);
  v14(v13, v7);
  type metadata accessor for OfferDisplayProperties();
  sub_24F928398();
  v15 = *(v28 + 16);
  v26 = a2;
  v15(v24, a2, v27);
  sub_24EC7AAE0(&qword_27F225B10, type metadata accessor for OfferDisplayProperties);
  sub_24F929548();
  v24 = v29;
  sub_24F928398();
  sub_24F928348();
  v17 = v16;
  v14(v10, v7);
  if (v17 && (v18 = sub_24F92CB88(), , v18 < 3))
  {
    (*(v28 + 8))(v26, v27);
    v14(a1, v7);
    type metadata accessor for PersonalizedOfferContext();
    result = swift_allocObject();
    v20 = v24;
    *(result + 16) = v25;
    *(result + 24) = v20;
    *(result + 32) = v18;
  }

  else
  {
    v21 = sub_24F92AC38();
    sub_24EC7AAE0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v22 = 0xD000000000000015;
    v22[1] = 0x800000024FA58780;
    v22[2] = v23[2];
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D22530], v21);
    swift_willThrow();

    (*(v28 + 8))(v26, v27);
    return (v14)(a1, v7);
  }

  return result;
}

uint64_t sub_24EC7AAE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PersonalizedOfferContext.deinit()
{

  return v0;
}

uint64_t PersonalizedOfferContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EC7ABB4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PersonalizedOfferContext.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t TriggerBuilderError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      sub_24F92C888();

      v11 = 0xD00000000000001ALL;
      v4 = 0xED000065726F7453;
      v5 = 0x7070416F5477656ELL;
      v6 = 0xEF676E6972696150;
      v7 = 0x686374615777656ELL;
      if (v1 != 2)
      {
        v7 = 0xD000000000000013;
        v6 = 0x800000024FA42E60;
      }

      if (v1)
      {
        v5 = 0xD000000000000010;
        v4 = 0x800000024FA42E30;
      }

      if (v1 <= 1u)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }

      if (v1 <= 1u)
      {
        v9 = v4;
      }

      else
      {
        v9 = v6;
      }

      MEMORY[0x253050C20](v8, v9);

      return v11;
    }

    sub_24F92C888();

    v3 = 0xD000000000000020;
LABEL_6:
    v11 = v3;
    MEMORY[0x253050C20](v1, v2);
    return v11;
  }

  if (*(v0 + 16) == 2)
  {
    sub_24F92C888();

    v3 = 0xD00000000000001CLL;
    goto LABEL_6;
  }

  if (v1 | v2)
  {
    return 0x6E776F6E6B6E55;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t _s12GameStoreKit19TriggerBuilderErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v7 == 1)
      {
        v10 = sub_24F0CAD44(*a1, *a2);
        sub_24EC7B180(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
        goto LABEL_19;
      }

      goto LABEL_34;
    }

    if (!*(a2 + 16))
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_24F92CE08();
        sub_24E8B964C(v6, v5, 0);
        sub_24E8B964C(v3, v2, 0);
        sub_24EC7B180(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
LABEL_19:
        sub_24EC7B180(v11, v12, v13);
        return v10 & 1;
      }

      sub_24E8B964C(v8, v2, 0);
      sub_24E8B964C(v3, v2, 0);
      sub_24EC7B180(v3, v2, 0);
      v21 = v3;
      v22 = v2;
      v23 = 0;
      goto LABEL_38;
    }

    goto LABEL_16;
  }

  if (v4 == 2)
  {
    if (v7 == 2)
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_24F92CE08();
        sub_24E8B964C(v6, v5, 2u);
        sub_24E8B964C(v3, v2, 2u);
        sub_24EC7B180(v3, v2, 2u);
        v11 = v6;
        v12 = v5;
        v13 = 2;
        goto LABEL_19;
      }

      sub_24E8B964C(v14, v2, 2u);
      sub_24E8B964C(v3, v2, 2u);
      sub_24EC7B180(v3, v2, 2u);
      v21 = v3;
      v22 = v2;
      v23 = 2;
      goto LABEL_38;
    }

LABEL_16:

    goto LABEL_34;
  }

  if (!(v3 | v2))
  {
    if (v7 == 3 && (v5 | v6) == 0)
    {
      sub_24EC7B180(*a1, v2, 3u);
      v21 = 0;
      v22 = 0;
      v23 = 3;
LABEL_38:
      sub_24EC7B180(v21, v22, v23);
      return 1;
    }

    goto LABEL_34;
  }

  if (v7 != 3 || v6 != 1 || v5 != 0)
  {
LABEL_34:
    sub_24E8B964C(v6, v5, v7);
    sub_24EC7B180(v3, v2, v4);
    sub_24EC7B180(v6, v5, v7);
    return 0;
  }

  sub_24EC7B180(*a1, v2, 3u);
  v19 = 1;
  sub_24EC7B180(1, 0, 3u);
  return v19;
}

unint64_t sub_24EC7B0D8()
{
  result = qword_27F22C9D0[0];
  if (!qword_27F22C9D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F22C9D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit19TriggerBuilderErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_24EC7B180(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 2) == 2)
  {
  }

  return result;
}

uint64_t SponsoredSearchRequestData.iAdId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SponsoredSearchRequestData.sponsoredSearchRequestData.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SponsoredSearchRequestData.routingInfo.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SponsoredSearchRequestData.canaryId.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall SponsoredSearchRequestData.init(iAdId:sponsoredSearchRequestData:routingInfo:canaryId:)(GameStoreKit::SponsoredSearchRequestData *__return_ptr retstr, Swift::String_optional iAdId, Swift::String sponsoredSearchRequestData, Swift::String routingInfo, Swift::String_optional canaryId)
{
  retstr->iAdId = iAdId;
  retstr->sponsoredSearchRequestData = sponsoredSearchRequestData;
  retstr->routingInfo = routingInfo;
  retstr->canaryId = canaryId;
}

unint64_t SponsoredSearchRequestData.searchRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];

  v12 = sub_24E6086DC(MEMORY[0x277D84F90]);
  sub_24E988E4C(v1, v2, 0x6449644169, 0xE500000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v3, v4, 0x626F6C4261746164, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v5, v6, 0x6974756F52644169, 0xEE006F666E49676ELL, v10);
  sub_24E988E4C(v7, v8, 0x7972616E6163, 0xE600000000000000);
  return v12;
}

uint64_t sub_24EC7B3BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC7B404(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t InfiniteScrollObserver.__allocating_init(paginatedPresenter:triggerDistance:)(double a1)
{
  swift_allocObject();
  v2 = sub_24EC7BC44(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)(double a1)
{
  v1 = sub_24EC7BC44(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_24EC7B528(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_24EC7B5B4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_24EC7B67C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_24EC7B728(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + 32) != 1)
  {
    return a1();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 40) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24E618160(0, v6[2] + 1, 1, v6);
    *(v2 + 40) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_24E618160((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_24E97225C;
  v10[5] = v5;
  *(v2 + 40) = v6;
  return swift_endAccess();
}

uint64_t sub_24EC7B850(void *a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  if (*(v1 + 48) == 1)
  {
    result = swift_beginAccess();
    if ((v1[8] & 1) != 0 || *(v1 + 9) < *(v1 + 7))
    {
      [a1 contentSize];
      v6 = v5;
      swift_beginAccess();
      if ((v1[10] & 1) != 0 || (result = swift_beginAccess(), v6 >= v1[2]))
      {
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v9 = *&v3 + 80;
          v8 = *(*&v3 + 80);
          v7 = *(v9 + 8);
          if (((*(v7 + 16))(v8, v7) & 1) != 0 || ((*(v7 + 24))(v8, v7) & 1) == 0)
          {
            return swift_unknownObjectRelease();
          }

          [a1 frame];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;
          swift_beginAccess();
          v18 = 0.0;
          if (v1[2] < v6)
          {
            swift_beginAccess();
            v18 = v1[2];
          }

          [a1 contentOffset];
          v20 = v19;
          v22.origin.x = v11;
          v22.origin.y = v13;
          v22.size.width = v15;
          v22.size.height = v17;
          if (v6 - (v20 + CGRectGetHeight(v22)) <= v18)
          {
            (*(v7 + 32))(v8, v7);
            swift_unknownObjectRelease();
            result = swift_beginAccess();
            if ((v1[8] & 1) == 0)
            {
              v21 = *(v1 + 9);
              if (v21 < *(v1 + 7))
              {
                *(v1 + 9) = v21 + 1;
              }
            }
          }

          else
          {
            return swift_unknownObjectRelease();
          }
        }
      }
    }
  }

  return result;
}

uint64_t InfiniteScrollObserver.deinit()
{
  MEMORY[0x2530543E0](v0 + 24);

  return v0;
}

uint64_t InfiniteScrollObserver.__deallocating_deinit()
{
  MEMORY[0x2530543E0](v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC7BB84()
{
  *(v0 + 32) = 0;
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = v1 + 40;
    do
    {
      v4 = *(v3 - 8);

      v4(v5);

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  swift_beginAccess();
  *(v0 + 40) = MEMORY[0x277D84F90];
}

uint64_t sub_24EC7BC44(double a1)
{
  *(v1 + 16) = 0x407F400000000000;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = MEMORY[0x277D84F90];
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  swift_beginAccess();
  *(v1 + 16) = a1;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t sub_24EC7BCEC()
{

  return swift_deallocObject();
}

__n128 sub_24EC7BD84(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24EC7BD90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EC7B580();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EC7BDF4@<X0>(uint64_t a1@<X8>)
{
  result = sub_24EC7B644();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24EC7BE68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EB97328();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EC7C260(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E861804(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_24EC7ED7C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_24EC7C38C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F922118();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280C0);
  v6 = swift_allocObject();
  v21 = v6;
  *(v6 + 16) = sub_24EC7C628;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v20 = v7;
  *(v7 + 16) = sub_24EC7C748;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EC7C870;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_24EC7C990;
  *(v9 + 24) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234670);
  *(a1 + 32) = v10;
  v11 = sub_24E9E955C();
  *(a1 + 40) = v11;
  *(a1 + 8) = v9;
  v12 = *MEMORY[0x277D76938];
  *v5 = *MEMORY[0x277D76938];
  (*(v3 + 104))(v5, *MEMORY[0x277D22620], v2);
  v13 = sub_24F922628();
  v14 = MEMORY[0x277D22798];
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  __swift_allocate_boxed_opaque_existential_1((a1 + 64));
  v22[3] = v2;
  v22[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);

  v16 = v12;
  sub_24F922638();
  (*(v3 + 8))(v5, v2);
  *(a1 + 128) = v10;
  *(a1 + 136) = v11;
  v17 = v20;
  *(a1 + 104) = v21;
  *(a1 + 168) = v10;
  *(a1 + 176) = v11;
  *(a1 + 144) = v17;
  *(a1 + 208) = v10;
  *(a1 + 216) = v11;

  *(a1 + 184) = v8;
  *a1 = 3;
  *(a1 + 48) = 0x3FD6666666666666;
  *(a1 + 56) = 0;
  return result;
}

void sub_24EC7C628(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_24F92C138() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 0.0;
      goto LABEL_12;
    }
  }

  v12 = sub_24F92C178();

  v11 = 10.0;
  if (v12)
  {
    v11 = 4.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_24EC7C748(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_24F92C138() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 12.0;
      goto LABEL_12;
    }
  }

  v12 = sub_24F92C178();

  v11 = 33.0;
  if ((v12 & 1) == 0)
  {
    v11 = 16.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_24EC7C870(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_24F92C138() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 12.0;
      goto LABEL_12;
    }
  }

  v12 = sub_24F92C178();

  v11 = 16.0;
  if (v12)
  {
    v11 = 25.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_24EC7C990(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_24F92C138();
  v5 = 20.0;
  if (v3)
  {
    v5 = 25.0;
  }

  *a2 = v5;
}

uint64_t static MetadataRibbonViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F210508 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_24EC7CA84(&unk_27F22CA60, v2);
}

__n128 MetadataRibbonViewLayout.init(metadataRibbonItemLayoutContexts:metrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 176);
  *(a3 + 168) = *(a2 + 160);
  *(a3 + 184) = v3;
  v4 = *(a2 + 208);
  *(a3 + 200) = *(a2 + 192);
  *(a3 + 216) = v4;
  v5 = *(a2 + 112);
  *(a3 + 104) = *(a2 + 96);
  *(a3 + 120) = v5;
  v6 = *(a2 + 144);
  *(a3 + 136) = *(a2 + 128);
  *(a3 + 152) = v6;
  v7 = *(a2 + 48);
  *(a3 + 40) = *(a2 + 32);
  *(a3 + 56) = v7;
  v8 = *(a2 + 80);
  *(a3 + 72) = *(a2 + 64);
  *(a3 + 88) = v8;
  result = *a2;
  v10 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *a3 = a1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t MetadataRibbonViewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v64 = sub_24F92CDB8();
  v14 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v6 + 16))
  {
    result = sub_24EC7D0B8((v6 + 1), a1, a5);
    v18 = result;
    v19 = *(result + 16);
    if (v19)
    {
      v20 = 0;
      v51[1] = a2;
      v52 = result + 32;
      v54 = 0.0;
      v60 = 1;
      v57 = (v14 + 8);
      v56 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = a5;
      v61 = a3;
      v62 = a4;
      v51[0] = result;
      while (v20 < v19)
      {
        v70 = v20;
        sub_24EC7D9C4(v52 + 48 * v20, v71);
        if (!*&v71[0])
        {
          goto LABEL_31;
        }

        v74[0] = v71[0];
        v74[1] = v71[1];
        v75 = v71[2];
        v77.origin.x = a3;
        v77.origin.y = a4;
        v77.size.width = a5;
        v77.size.height = a6;
        MinX = CGRectGetMinX(v77);
        v22 = *&v74[0];
        v59 = *(*&v74[0] + 16);
        if (v59)
        {
          v23 = MinX;
          v53 = v20;
          v63 = *&v74[0] + 32;

          v24 = 0;
          v25 = 0.0;
          while (v24 < *(v22 + 16))
          {
            sub_24EC7D9FC(v63 + 120 * v24, &v70);
            sub_24EC7DA34(&v70, v67);
            v34 = v72;
            v35 = v73;
            sub_24EC7DAA4(&v70);
            if (v60)
            {
              v80.origin.x = v61;
              v80.origin.y = v62;
              v80.size.width = a5;
              v80.size.height = a6;
              MinY = CGRectGetMinY(v80);
              __swift_project_boxed_opaque_existential_1(v7 + 19, v7[22]);
              sub_24E8ED7D8();
              sub_24F9223A8();
              v38 = v37;
              v39 = *v57;
              (*v57)(v16, v64);
              v40 = *(v22 + 16);
              if (v40)
              {
                v55 = MinY;
                v41 = a6;
                v42 = 0.0;
                v43 = v63;
                do
                {
                  sub_24EC7D9FC(v43, v65);
                  v44 = v66;
                  sub_24EC7DAA4(v65);
                  if (v42 <= v44)
                  {
                    v42 = v44;
                  }

                  v43 += 120;
                  --v40;
                }

                while (v40);
                v26 = v42 * 0.5;
                a6 = v41;
                v27 = v55 + v38;
              }

              else
              {
                v26 = 0.0;
                v27 = MinY + v38;
              }
            }

            else
            {
              __swift_project_boxed_opaque_existential_1(v7 + 14, v7[17]);
              sub_24E8ED7D8();
              sub_24F9223A8();
              v46 = v45;
              v39 = *v57;
              (*v57)(v16, v64);
              v47 = *(v22 + 16);
              if (v47)
              {
                v48 = 0.0;
                v49 = v63;
                do
                {
                  sub_24EC7D9FC(v49, v65);
                  v50 = v66;
                  sub_24EC7DAA4(v65);
                  if (v48 <= v50)
                  {
                    v48 = v50;
                  }

                  v49 += 120;
                  --v47;
                }

                while (v47);
                v26 = v48 * 0.5;
              }

              else
              {
                v26 = 0.0;
              }

              v27 = v54 + v46;
            }

            ++v24;
            v28 = v27 + v26 + v35 * -0.5;
            v78.origin.x = v23;
            v78.origin.y = v28;
            v78.size.width = v34;
            v78.size.height = v35;
            MaxX = CGRectGetMaxX(v78);
            __swift_project_boxed_opaque_existential_1(v74 + 1, v75);
            sub_24E8ED7D8();
            sub_24F9223A8();
            v31 = v30;
            v39(v16, v64);
            v32 = MaxX + v31;
            __swift_project_boxed_opaque_existential_1(v68, v69);
            a5 = v58;
            sub_24F92C1D8();
            sub_24F922228();
            __swift_project_boxed_opaque_existential_1(v68, v69);
            sub_24F922218();
            MaxY = CGRectGetMaxY(v79);
            if (v25 <= MaxY)
            {
              v25 = MaxY;
            }

            result = sub_24E601704(v67, &qword_27F22CB40);
            v23 = v32;
            if (v24 == v59)
            {

              a3 = v61;
              a4 = v62;
              v18 = v51[0];
              v20 = v53;
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

        v25 = 0.0;
LABEL_5:
        ++v20;
        result = sub_24EC7DAD4(v74);
        v60 = 0;
        v19 = *(v18 + 16);
        v54 = v25;
        if (v20 == v19)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_31:

      return sub_24F922128();
    }
  }

  else
  {

    return sub_24F922128();
  }

  return result;
}