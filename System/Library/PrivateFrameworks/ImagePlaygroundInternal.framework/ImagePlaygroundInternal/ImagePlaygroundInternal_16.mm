uint64_t sub_1D2449180@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CF870();
  *a1 = result & 1;
  return result;
}

void sub_1D24491AC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D2449248@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBBC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25[-v13];
  sub_1D2875798();
  *v14 = sub_1D2876668();
  *(v14 + 1) = v15;
  v14[16] = v16 & 1;
  *(v14 + 3) = v17;
  *(v14 + 16) = 256;
  sub_1D2875798();
  *v11 = sub_1D2876668();
  *(v11 + 1) = v18;
  v11[16] = v19 & 1;
  *(v11 + 3) = v20;
  *(v11 + 16) = 257;
  v21 = *(v3 + 16);
  v21(v8, v14, v2);
  v21(v5, v11, v2);
  v21(a1, v8, v2);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBBD0);
  v21(&a1[*(v22 + 48)], v5, v2);
  v23 = *(v3 + 8);
  v23(v11, v2);
  v23(v14, v2);
  v23(v5, v2);
  return (v23)(v8, v2);
}

uint64_t sub_1D24494E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v31 = &v27 - v16;
  v28 = "Enable extra logging";
  v18 = swift_projectBox();
  v29 = *(v3 + 16);
  v30 = v18;
  v29(v5, v18, v2);
  sub_1D2877628();
  v19 = *(v3 + 8);
  v19(v5, v2);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v19(v8, v2);
  sub_1D24432B8(0xD000000000000018, v28 | 0x8000000000000000, v39, v40, v41, v17);

  v29(v5, v30, v2);
  sub_1D2877628();
  v19(v5, v2);
  v37 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v19(v8, v2);
  v20 = v32;
  sub_1D24432B8(0xD000000000000012, 0x80000001D28B7670, v39, v40, v41, v32);

  v21 = v31;
  v22 = v33;
  sub_1D22BD1D0(v31, v33, &qword_1EC6DB828);
  v23 = v34;
  sub_1D22BD1D0(v20, v34, &qword_1EC6DB828);
  v24 = v35;
  sub_1D22BD1D0(v22, v35, &qword_1EC6DB828);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA60);
  sub_1D22BD1D0(v23, v24 + *(v25 + 48), &qword_1EC6DB828);
  sub_1D22BD238(v20, &qword_1EC6DB828);
  sub_1D22BD238(v21, &qword_1EC6DB828);
  sub_1D22BD238(v23, &qword_1EC6DB828);
  return sub_1D22BD238(v22, &qword_1EC6DB828);
}

void sub_1D2449928(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D24499A8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D2449A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v40 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v33 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v34 = "Number from Messages context: ";
  v35 = &v33 - v20;
  v22 = swift_projectBox();
  v41 = *(v3 + 16);
  v42 = v22;
  v41(v5, v22, v2);
  sub_1D2877628();
  v23 = *(v3 + 8);
  v23(v5, v2);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v23(v8, v2);
  sub_1D24432B8(0xD00000000000001ELL, v34 | 0x8000000000000000, v48, v49, v50, v21);

  v34 = "Disable internal/seed feedback";
  v41(v5, v42, v2);
  sub_1D2877628();
  v23(v5, v2);
  v46 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v23(v8, v2);
  sub_1D24432B8(0xD000000000000016, v34 | 0x8000000000000000, v48, v49, v50, v44);

  v41(v5, v42, v2);
  sub_1D2877628();
  v23(v5, v2);
  v45 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v23(v8, v2);
  v24 = v36;
  sub_1D24432B8(0xD000000000000014, 0x80000001D28B7630, v48, v49, v50, v36);

  v25 = v35;
  v26 = v37;
  sub_1D22BD1D0(v35, v37, &qword_1EC6DB828);
  v27 = v44;
  v28 = v38;
  sub_1D22BD1D0(v44, v38, &qword_1EC6DB828);
  v29 = v39;
  sub_1D22BD1D0(v24, v39, &qword_1EC6DB828);
  v30 = v40;
  sub_1D22BD1D0(v26, v40, &qword_1EC6DB828);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB08);
  sub_1D22BD1D0(v28, v30 + *(v31 + 48), &qword_1EC6DB828);
  sub_1D22BD1D0(v29, v30 + *(v31 + 64), &qword_1EC6DB828);
  sub_1D22BD238(v24, &qword_1EC6DB828);
  sub_1D22BD238(v27, &qword_1EC6DB828);
  sub_1D22BD238(v25, &qword_1EC6DB828);
  sub_1D22BD238(v29, &qword_1EC6DB828);
  sub_1D22BD238(v28, &qword_1EC6DB828);
  return sub_1D22BD238(v26, &qword_1EC6DB828);
}

void sub_1D244A008(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D244A090()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D244A12C(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D244A1AC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D244A248(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D244A2C8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D244A364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v79 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v72 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v76 = v64 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v74 = v64 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v75 = v64 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v67 = v64 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v80 = v64 - v21;
  v86 = 0;
  v87 = 0xE000000000000000;
  sub_1D2879168();

  v86 = 0xD000000000000010;
  v87 = 0x80000001D28B75B0;
  v22 = swift_projectBox();
  v23 = *(v5 + 16);
  v69 = v22;
  v70 = v5 + 16;
  v68 = v23;
  (v23)(v9);
  sub_1D2877618();
  v24 = *(v5 + 8);
  v65 = v4;
  v73 = v5 + 8;
  v71 = v24;
  v24(v9, v4);

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v25 = off_1ED8A4930;
  v26 = OBJC_IVAR____TtC23ImagePlaygroundInternal13DebugSettings___observationRegistrar;
  v83 = off_1ED8A4930;
  v27 = sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  v66 = v26;
  v64[2] = v27;
  sub_1D28719E8();
  swift_retain_n();
  v28 = _s23ImagePlaygroundInternal13DebugSettingsC11contextDaysSivg_0();

  v83 = v28;
  v29 = sub_1D28795C8();
  MEMORY[0x1D38A0C50](v29);

  sub_1D2878568();
  sub_1D2870F78();
  v30 = sub_1D2878558();
  v31 = swift_allocObject();
  v32 = MEMORY[0x1E69E85E0];
  v31[2] = v30;
  v31[3] = v32;
  v31[4] = a2;
  sub_1D2870F78();
  v33 = sub_1D2878558();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v32;
  v34[4] = a2;
  sub_1D2877528();
  v36 = v86;
  v35 = v87;
  v37 = v88;
  v38 = sub_1D2456324();
  if (v38)
  {
    v64[1] = v64;
    MEMORY[0x1EEE9AC00](v38);
    v83 = v36;
    v84 = v35;
    v85 = v37;
    v82 = xmmword_1D2888840;
    v81 = 1;
    sub_1D2870F78();
    sub_1D2870F78();
    v39 = v67;
    sub_1D28775F8();

    v40 = 0;
  }

  else
  {

    v40 = 1;
    v39 = v67;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA48);
  (*(*(v41 - 8) + 56))(v39, v40, 1, v41);
  sub_1D22EC9BC(v39, v80, &qword_1EC6DBA40);
  v86 = 0;
  v87 = 0xE000000000000000;
  sub_1D2879168();

  v86 = 0xD00000000000001ELL;
  v87 = 0x80000001D28B75D0;
  v42 = v69;
  v43 = v65;
  v44 = v68;
  v68(v9, v69, v65);
  sub_1D2877618();
  v45 = v71;
  v71(v9, v43);

  swift_getKeyPath();
  v83 = v25;
  sub_1D28719E8();
  v46 = _s23ImagePlaygroundInternal13DebugSettingsC19contextMessageCountSivg_0();

  v83 = v46;
  v47 = sub_1D28795C8();
  MEMORY[0x1D38A0C50](v47);

  v44(v9, v42, v43);
  v48 = v72;
  sub_1D2877628();
  v45(v9, v43);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  sub_1D2877648();

  v45(v48, v43);
  v50 = v86;
  v51 = v87;
  v52 = v88;
  v53 = sub_1D2456324();
  if (v53)
  {
    MEMORY[0x1EEE9AC00](v53);
    v83 = v50;
    v84 = v51;
    v85 = v52;
    v82 = xmmword_1D2888850;
    v81 = 1;
    sub_1D2870F78();
    sub_1D2870F78();
    v54 = v74;
    sub_1D28775F8();

    v55 = 0;
  }

  else
  {

    v55 = 1;
    v54 = v74;
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA48);
  (*(*(v56 - 8) + 56))(v54, v55, 1, v56);
  v57 = v75;
  sub_1D22EC9BC(v54, v75, &qword_1EC6DBA40);
  v58 = v80;
  v59 = v76;
  sub_1D22BD1D0(v80, v76, &qword_1EC6DBA40);
  v60 = v77;
  sub_1D22BD1D0(v57, v77, &qword_1EC6DBA40);
  v61 = v78;
  sub_1D22BD1D0(v59, v78, &qword_1EC6DBA40);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB88);
  sub_1D22BD1D0(v60, v61 + *(v62 + 48), &qword_1EC6DBA40);
  sub_1D22BD238(v57, &qword_1EC6DBA40);
  sub_1D22BD238(v58, &qword_1EC6DBA40);
  sub_1D22BD238(v60, &qword_1EC6DBA40);
  return sub_1D22BD238(v59, &qword_1EC6DBA40);
}

uint64_t sub_1D244ADAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - v4;
  v6 = swift_projectBox();
  (*(v3 + 16))(v5, v6, v2);
  sub_1D2877618();
  (*(v3 + 8))(v5, v2);

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v9[1] = off_1ED8A4930;
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  sub_1D2870F78();
  v7 = _s23ImagePlaygroundInternal13DebugSettingsC11contextDaysSivg_0();

  *a1 = v7;
  return result;
}

uint64_t sub_1D244AF80(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - v4;
  v6 = *a1;
  v7 = swift_projectBox();
  (*(v3 + 16))(v5, v7, v2);
  sub_1D2877618();
  (*(v3 + 8))(v5, v2);

  KeyPath = swift_getKeyPath();
  v9 = KeyPath;
  v13 = v6;
  if (qword_1ED8A4928 != -1)
  {
    KeyPath = swift_once();
  }

  v10 = off_1ED8A4930;
  MEMORY[0x1EEE9AC00](KeyPath);
  v12[-2] = v9;
  v12[-1] = &v13;
  v12[2] = v10;
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719D8();
}

uint64_t sub_1D244B1A0@<X0>(void *a1@<X8>)
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v2 = off_1ED8A4930;
  v7[0] = off_1ED8A4930;
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  v7[4] = v2;
  sub_1D2870F78();
  v3 = swift_readAtKeyPath();
  v5 = *v4;
  v3(v7, 0);

  *a1 = v5;
  return result;
}

uint64_t sub_1D244B2B0(uint64_t a1)
{
  if (qword_1ED8A4928 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  return sub_1D28719D8();
}

uint64_t sub_1D244B3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v62 = &v45 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v61 = &v45 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v60 = &v45 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v45 - v28;
  v56 = &v45 - v28;
  v46 = "People in messages suggestions";
  v30 = swift_projectBox();
  v31 = *(v3 + 16);
  v57 = v3 + 16;
  v58 = v31;
  v31(v5, v30, v2);
  sub_1D2877628();
  v32 = *(v3 + 8);
  v32(v5, v2);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v32(v8, v2);
  sub_1D24432B8(0xD00000000000001ALL, v46 | 0x8000000000000000, v68, v69, v70, v29);

  v46 = "Disable VFX blob animation";
  v58(v5, v30, v2);
  sub_1D2877628();
  v55 = v32;
  v32(v5, v2);
  v66 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v32(v8, v2);
  sub_1D24432B8(0xD000000000000037, v46 | 0x8000000000000000, v68, v69, v70, v60);

  v46 = "t continuous rendering)";
  v47 = v30;
  v33 = v58;
  v58(v5, v30, v2);
  sub_1D2877628();
  v34 = v55;
  v55(v5, v2);
  v65 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v34(v8, v2);
  sub_1D24432B8(0xD000000000000021, v46 | 0x8000000000000000, v68, v69, v70, v61);

  v46 = " bubble animation";
  v33(v5, v30, v2);
  sub_1D2877628();
  v35 = v55;
  v55(v5, v2);
  v64 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v35(v8, v2);
  sub_1D24432B8(0xD000000000000013, v46 | 0x8000000000000000, v68, v69, v70, v62);

  v58(v5, v47, v2);
  sub_1D2877628();
  v35(v5, v2);
  v63 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v35(v8, v2);
  v36 = v48;
  sub_1D24432B8(0xD000000000000015, 0x80000001D28B7590, v68, v69, v70, v48);

  v37 = v49;
  sub_1D22BD1D0(v56, v49, &qword_1EC6DB828);
  v38 = v50;
  sub_1D22BD1D0(v60, v50, &qword_1EC6DB828);
  v39 = v51;
  sub_1D22BD1D0(v61, v51, &qword_1EC6DB828);
  v40 = v52;
  sub_1D22BD1D0(v62, v52, &qword_1EC6DB828);
  v41 = v53;
  sub_1D22BD1D0(v36, v53, &qword_1EC6DB828);
  v42 = v54;
  sub_1D22BD1D0(v37, v54, &qword_1EC6DB828);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB80);
  sub_1D22BD1D0(v38, v42 + v43[12], &qword_1EC6DB828);
  sub_1D22BD1D0(v39, v42 + v43[16], &qword_1EC6DB828);
  sub_1D22BD1D0(v40, v42 + v43[20], &qword_1EC6DB828);
  sub_1D22BD1D0(v41, v42 + v43[24], &qword_1EC6DB828);
  sub_1D22BD238(v36, &qword_1EC6DB828);
  sub_1D22BD238(v62, &qword_1EC6DB828);
  sub_1D22BD238(v61, &qword_1EC6DB828);
  sub_1D22BD238(v60, &qword_1EC6DB828);
  sub_1D22BD238(v56, &qword_1EC6DB828);
  sub_1D22BD238(v41, &qword_1EC6DB828);
  sub_1D22BD238(v40, &qword_1EC6DB828);
  sub_1D22BD238(v39, &qword_1EC6DB828);
  sub_1D22BD238(v38, &qword_1EC6DB828);
  return sub_1D22BD238(v37, &qword_1EC6DB828);
}

void sub_1D244BD0C(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D244BD8C()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D244BE28(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D244BEA8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D244BF44(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D244BFC4()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D244C060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v128 = sub_1D2875678();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v125 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v126 = &v114 - v5;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB20);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v119 = &v114 - v6;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB28);
  v149 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v124 = &v114 - v7;
  v136 = sub_1D2874EC8();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v121 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v131 = &v114 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v129 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v143 = &v114 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v114 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v141 = &v114 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v114 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v140 = &v114 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB38);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v142 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v150 = &v114 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v118 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v116 = &v114 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v114 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v114 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v139 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v148 = &v114 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v138 = &v114 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v137 = &v114 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v147 = &v114 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v146 = &v114 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v145 = &v114 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v114 - v53;
  v134 = "he curated prompts database?";
  v151 = swift_projectBox();
  v152 = *(v28 + 16);
  v153 = v28 + 16;
  v152(v34, v151, v27);
  sub_1D2877628();
  v55 = *(v28 + 8);
  v55(v34, v27);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v55(v37, v27);
  v56 = v134 | 0x8000000000000000;
  v134 = v54;
  v144 = a1;
  sub_1D24432B8(0xD000000000000025, v56, v165, v166, v167, v54);

  v115 = "context summarization";
  v57 = v151;
  v152(v34, v151, v27);
  sub_1D2877628();
  v55(v34, v27);
  v158 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v55(v37, v27);
  sub_1D24432B8(0xD000000000000021, v115 | 0x8000000000000000, v165, v166, v167, v145);

  v115 = "ext summarization";
  v58 = v152;
  v152(v34, v57, v27);
  sub_1D2877628();
  v132 = v28 + 8;
  v55(v34, v27);
  v157 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v55(v37, v27);
  sub_1D24432B8(0xD000000000000025, v115 | 0x8000000000000000, v165, v166, v167, v146);

  v59 = v151;
  v58(v34, v151, v27);
  sub_1D2877628();
  v55(v34, v27);
  v156 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v55(v37, v27);
  sub_1D24432B8(0xD000000000000027, 0x80000001D28B7450, v165, v166, v167, v147);

  v115 = "dding suggestion engine";
  v152(v34, v59, v27);
  sub_1D2877628();
  v55(v34, v27);
  v155 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v55(v37, v27);
  v60 = v131;
  sub_1D244DA94(0xD000000000000012, v115 | 0x8000000000000000, v165, v166, v167, v168, v150);

  v152(v37, v151, v27);
  v61 = v116;
  sub_1D2877628();
  v115 = v37;
  v55(v37, v27);
  v154 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v116 = v55;
  v55(v61, v27);
  v63 = v165;
  v62 = v166;
  v64 = v167;
  sub_1D2874EB8();
  if (sub_1D2456324())
  {
    v163 = 0xD000000000000015;
    v164 = 0x80000001D28B74A0;
    v160 = v63;
    v161 = v62;
    v162 = v64;
    sub_1D2870F78();
    sub_1D2870F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB48);
    sub_1D24595DC(&qword_1EC6DBB50, &qword_1EC6DBB48);
    sub_1D22BD06C();
    v65 = v119;
    sub_1D2877438();
    sub_1D22BB9D8(&qword_1EC6DBB58, &qword_1EC6DBB20);
    v66 = v124;
    v67 = v123;
    v68 = v136;
    sub_1D2876838();
    (*(v122 + 8))(v65, v67);
    v69 = v126;
    sub_1D2875668();
    v70 = v127;
    v71 = v128;
    (*(v127 + 16))(v125, v69, v128);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v72 = sub_1D2874988();

    (*(v70 + 8))(v69, v71);
    v73 = v131;
    v131 = *(v135 + 8);
    (v131)(v73, v68);
    v74 = v133;
    *&v66[*(v133 + 36)] = v72;
    v75 = v66;
    v76 = v117;
    sub_1D22EC9BC(v75, v117, &qword_1EC6DBB28);
    v77 = 0;
    v78 = v74;
    v79 = v65;
  }

  else
  {

    v131 = *(v135 + 8);
    (v131)(v60, v136);
    v77 = 1;
    v78 = v133;
    v79 = v119;
    v76 = v117;
  }

  v80 = *(v149 + 56);
  v149 += 56;
  v80(v76, v77, 1, v78);
  sub_1D22EC9BC(v76, v140, &qword_1EC6DBB30);
  v81 = v115;
  v152(v115, v151, v27);
  v82 = v118;
  sub_1D2877628();
  v83 = v116;
  (v116)(v81, v27);
  v84 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v84);
  swift_getKeyPath();
  sub_1D2877648();

  v83(v82, v27);
  v85 = v165;
  v86 = v166;
  v87 = v167;
  v88 = v121;
  sub_1D2874EB8();
  if (sub_1D2456324())
  {
    v163 = 0xD00000000000001ELL;
    v164 = 0x80000001D28B74C0;
    v160 = v85;
    v161 = v86;
    v162 = v87;
    sub_1D2870F78();
    sub_1D2870F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB48);
    sub_1D24595DC(&qword_1EC6DBB50, &qword_1EC6DBB48);
    sub_1D22BD06C();
    sub_1D2877438();
    sub_1D22BB9D8(&qword_1EC6DBB58, &qword_1EC6DBB20);
    v89 = v124;
    v90 = v123;
    v91 = v79;
    v92 = v88;
    v93 = v136;
    sub_1D2876838();
    (*(v122 + 8))(v91, v90);
    v94 = v126;
    sub_1D2875668();
    v95 = v127;
    v96 = v128;
    (*(v127 + 16))(v125, v94, v128);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v97 = sub_1D2874988();

    (*(v95 + 8))(v94, v96);
    (v131)(v92, v93);
    v98 = v133;
    *(v89 + *(v133 + 36)) = v97;
    v99 = v120;
    sub_1D22EC9BC(v89, v120, &qword_1EC6DBB28);
    v100 = 0;
    v101 = v98;
  }

  else
  {

    (v131)(v88, v136);
    v100 = 1;
    v101 = v133;
    v99 = v120;
  }

  v80(v99, v100, 1, v101);
  v102 = v141;
  sub_1D22EC9BC(v99, v141, &qword_1EC6DBB30);
  v103 = v137;
  sub_1D22BD1D0(v134, v137, &qword_1EC6DB828);
  v104 = v138;
  sub_1D22BD1D0(v145, v138, &qword_1EC6DB828);
  sub_1D22BD1D0(v146, v148, &qword_1EC6DB828);
  v105 = v139;
  sub_1D22BD1D0(v147, v139, &qword_1EC6DB828);
  v106 = v142;
  sub_1D22BD1D0(v150, v142, &qword_1EC6DBB38);
  v107 = v140;
  sub_1D22BD1D0(v140, v143, &qword_1EC6DBB30);
  v108 = v102;
  v109 = v129;
  sub_1D22BD1D0(v108, v129, &qword_1EC6DBB30);
  v110 = v130;
  sub_1D22BD1D0(v103, v130, &qword_1EC6DB828);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB40);
  sub_1D22BD1D0(v104, v110 + v111[12], &qword_1EC6DB828);
  sub_1D22BD1D0(v148, v110 + v111[16], &qword_1EC6DB828);
  sub_1D22BD1D0(v105, v110 + v111[20], &qword_1EC6DB828);
  sub_1D22BD1D0(v106, v110 + v111[24], &qword_1EC6DBB38);
  v112 = v143;
  sub_1D22BD1D0(v143, v110 + v111[28], &qword_1EC6DBB30);
  sub_1D22BD1D0(v109, v110 + v111[32], &qword_1EC6DBB30);
  sub_1D22BD238(v141, &qword_1EC6DBB30);
  sub_1D22BD238(v107, &qword_1EC6DBB30);
  sub_1D22BD238(v150, &qword_1EC6DBB38);
  sub_1D22BD238(v147, &qword_1EC6DB828);
  sub_1D22BD238(v146, &qword_1EC6DB828);
  sub_1D22BD238(v145, &qword_1EC6DB828);
  sub_1D22BD238(v134, &qword_1EC6DB828);
  sub_1D22BD238(v109, &qword_1EC6DBB30);
  sub_1D22BD238(v112, &qword_1EC6DBB30);
  sub_1D22BD238(v142, &qword_1EC6DBB38);
  sub_1D22BD238(v139, &qword_1EC6DB828);
  sub_1D22BD238(v148, &qword_1EC6DB828);
  sub_1D22BD238(v138, &qword_1EC6DB828);
  return sub_1D22BD238(v137, &qword_1EC6DB828);
}

void sub_1D244D77C()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D244D818()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D244D8B4()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D244D950()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D244D9EC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D244DA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v38 = a7;
  v9 = sub_1D2875678();
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB68);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB70);
  v37 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  if (sub_1D2456324())
  {
    v39 = a1;
    v40 = a2;
    sub_1D22BD06C();
    sub_1D2870F68();
    v30 = v9;
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2870F68();
    sub_1D2877A48();
    v21 = sub_1D22BB9D8(&qword_1EC6DBB78, &qword_1EC6DBB68);
    MEMORY[0x1D389F6C0](1, v14, v21);
    (*(v15 + 8))(v17, v14);
    sub_1D2875668();
    v22 = v36;
    v23 = v30;
    (*(v36 + 16))(v35, v13, v30);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v24 = sub_1D2874988();
    (*(v22 + 8))(v13, v23);
    *&v20[*(v18 + 36)] = v24;
    v25 = v38;
    sub_1D22EC9BC(v20, v38, &qword_1EC6DBB70);
    return (*(v37 + 56))(v25, 0, 1, v18);
  }

  else
  {
    v27 = v38;
    v28 = *(v37 + 56);

    return v28(v27, 1, 1, v18);
  }
}

void sub_1D244DEBC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878808();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D244DF58()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878808();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D244DFF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D2875778();
  sub_1D2875768();
  sub_1D2875748();
  sub_1D2875768();
  sub_1D28757A8();
  result = sub_1D2876668();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1D244E104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v84 = a3;
  v67 = sub_1D2875678();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v63 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB8F0);
  v75 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v63 = &v63 - v7;
  v76 = type metadata accessor for DebugSettingsView(0);
  v69 = *(v76 - 8);
  v8 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v68 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v63 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB878);
  MEMORY[0x1EEE9AC00](v77);
  v71 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB10);
  v81 = *(v15 - 8);
  v82 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v74 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63 - v29;
  v83 = a2;
  v31 = swift_projectBox();
  (*(v20 + 16))(v22, v31, v19);
  sub_1D2877628();
  v32 = *(v20 + 8);
  v32(v22, v19);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v32(v25, v19);
  v72 = v30;
  v33 = v70;
  sub_1D24432B8(0xD000000000000036, 0x80000001D28B7320, v88, v89, v90, v30);

  sub_1D2874258();
  v34 = sub_1D2874288();
  (*(*(v34 - 8) + 56))(v11, 0, 1, v34);
  v35 = v68;
  sub_1D2457C90(v33, v68);
  v36 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v37 = swift_allocObject();
  sub_1D24591E0(v35, v37 + v36, type metadata accessor for DebugSettingsView);
  if (sub_1D2456324())
  {
    v38 = v63;
    sub_1D245642C(v11, sub_1D2459540, v37, 0xD00000000000001ELL, 0x80000001D28B7360, v63);
    v39 = v65;
    sub_1D2875668();
    v40 = v66;
    v41 = v67;
    (*(v66 + 16))(v64, v39, v67);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v42 = sub_1D2874988();

    (*(v40 + 8))(v39, v41);
    sub_1D22BD238(v11, &qword_1EC6DB0C8);
    v43 = v73;
    *(v38 + *(v73 + 36)) = v42;
    v44 = v71;
    sub_1D22EC9BC(v38, v71, &qword_1EC6DB8F0);
    v45 = 0;
    v46 = v43;
  }

  else
  {

    sub_1D22BD238(v11, &qword_1EC6DB0C8);
    v45 = 1;
    v46 = v73;
    v44 = v71;
  }

  (*(v75 + 56))(v44, v45, 1, v46);
  v47 = v78;
  sub_1D22EC9BC(v44, v78, &qword_1EC6DB878);
  v75 = sub_1D2875798();
  LODWORD(v73) = v48;
  v49 = v33 + *(v76 + 24);
  v50 = *v49;
  v51 = *(v49 + 8);
  v86 = v50;
  v87 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877328();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  sub_1D2457E20();
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  v52 = v79;
  sub_1D2876AF8();

  sub_1D22BD238(v47, &qword_1EC6DB878);
  v53 = v72;
  v54 = v74;
  sub_1D22BD1D0(v72, v74, &qword_1EC6DB828);
  v56 = v80;
  v55 = v81;
  v57 = *(v81 + 16);
  v58 = v82;
  v57(v80, v52, v82);
  v59 = v84;
  sub_1D22BD1D0(v54, v84, &qword_1EC6DB828);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB18);
  v57((v59 + *(v60 + 48)), v56, v58);
  v61 = *(v55 + 8);
  v61(v52, v58);
  sub_1D22BD238(v53, &qword_1EC6DB828);
  v61(v56, v58);
  return sub_1D22BD238(v54, &qword_1EC6DB828);
}

void sub_1D244EB44()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D244EBE0()
{
  type metadata accessor for DebugSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  return sub_1D2877318();
}

uint64_t sub_1D244EC54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  sub_1D2874258();
  v3 = sub_1D2874288();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_1D2870F78();
  return sub_1D2877358();
}

uint64_t sub_1D244ED6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - v2;
  v4 = swift_projectBox();
  (*(v1 + 16))(v3, v4, v0);
  sub_1D2877618();
  (*(v1 + 8))(v3, v0);

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v5 = *(off_1ED8A4930 + 2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v9 - 2) = sub_1D23CEC58;
  *(&v9 - 1) = v7;
  sub_1D2870F78();
  os_unfair_lock_lock(v5 + 7);
  sub_1D23DC41C(&v5[4], &v10);
  os_unfair_lock_unlock(v5 + 7);

  if (v10)
  {
    sub_1D23C7858();

    _CuratedPromptsManager.resetVectorDatabase()();
  }

  return result;
}

double sub_1D244EF58@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x7465736552;
  *a1 = xmmword_1D2888860;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1D244EF78@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = swift_projectBox();
  (*(v3 + 16))(v5, v9, v2);
  sub_1D2877628();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v12[0] = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v10(v8, v2);
  sub_1D24432B8(0xD00000000000002ALL, 0x80000001D28B72F0, v12[1], v12[2], v13, a1);
}

uint64_t sub_1D244F150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v41 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v33 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v36 = &v33 - v20;
  v34 = "arding on launch";
  v35 = swift_projectBox();
  v42 = *(v3 + 16);
  v42(v5, v35, v2);
  sub_1D2877628();
  v22 = *(v3 + 8);
  v22(v5, v2);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v22(v8, v2);
  sub_1D24432B8(0xD00000000000003DLL, v34 | 0x8000000000000000, v48, v49, v50, v21);

  v34 = "for curated bubble categories";
  v23 = v35;
  v42(v5, v35, v2);
  sub_1D2877628();
  v22(v5, v2);
  v46 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v22(v8, v2);
  sub_1D24432B8(0xD000000000000040, v34 | 0x8000000000000000, v48, v49, v50, v43);

  v42(v5, v23, v2);
  sub_1D2877628();
  v22(v5, v2);
  v45 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v22(v8, v2);
  v24 = v37;
  sub_1D24432B8(0xD000000000000027, 0x80000001D28B72C0, v48, v49, v50, v37);

  v25 = v36;
  v26 = v38;
  sub_1D22BD1D0(v36, v38, &qword_1EC6DB828);
  v27 = v43;
  v28 = v39;
  sub_1D22BD1D0(v43, v39, &qword_1EC6DB828);
  v29 = v40;
  sub_1D22BD1D0(v24, v40, &qword_1EC6DB828);
  v30 = v41;
  sub_1D22BD1D0(v26, v41, &qword_1EC6DB828);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB08);
  sub_1D22BD1D0(v28, v30 + *(v31 + 48), &qword_1EC6DB828);
  sub_1D22BD1D0(v29, v30 + *(v31 + 64), &qword_1EC6DB828);
  sub_1D22BD238(v24, &qword_1EC6DB828);
  sub_1D22BD238(v27, &qword_1EC6DB828);
  sub_1D22BD238(v25, &qword_1EC6DB828);
  sub_1D22BD238(v29, &qword_1EC6DB828);
  sub_1D22BD238(v28, &qword_1EC6DB828);
  return sub_1D22BD238(v26, &qword_1EC6DB828);
}

void sub_1D244F71C()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D244F7B8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D244F854()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D244F8F0()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
  v1 = sub_1D2877E78();
  v2 = sub_1D2878068();
  [v0 setObject:v1 forKey:v2];
}

uint64_t sub_1D244F9B4()
{
  sub_1D243A604();

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  sub_1D2870F78();
  v0 = sub_1D23CCEF8();

  sub_1D2439BA0(v0);

  swift_getKeyPath();
  sub_1D2871818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA10);
  sub_1D22BB9D8(&qword_1EC6DBA28, &qword_1EC6DB600);
  sub_1D2459164();
  sub_1D2457A94(&qword_1EC6DBA30, type metadata accessor for DebugSettingsView.DiffusionSpecRow);
  return sub_1D2874728();
}

uint64_t sub_1D244FBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v31 = &v27 - v16;
  v28 = "non personalized)";
  v18 = swift_projectBox();
  v29 = *(v3 + 16);
  v30 = v18;
  v29(v5, v18, v2);
  sub_1D2877628();
  v19 = *(v3 + 8);
  v19(v5, v2);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v19(v8, v2);
  sub_1D24432B8(0xD000000000000035, v28 | 0x8000000000000000, v39, v40, v41, v17);

  v29(v5, v30, v2);
  sub_1D2877628();
  v19(v5, v2);
  v37 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v19(v8, v2);
  v20 = v32;
  sub_1D24432B8(0xD000000000000020, 0x80000001D28B7200, v39, v40, v41, v32);

  v21 = v31;
  v22 = v33;
  sub_1D22BD1D0(v31, v33, &qword_1EC6DB828);
  v23 = v34;
  sub_1D22BD1D0(v20, v34, &qword_1EC6DB828);
  v24 = v35;
  sub_1D22BD1D0(v22, v35, &qword_1EC6DB828);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA60);
  sub_1D22BD1D0(v23, v24 + *(v25 + 48), &qword_1EC6DB828);
  sub_1D22BD238(v20, &qword_1EC6DB828);
  sub_1D22BD238(v21, &qword_1EC6DB828);
  sub_1D22BD238(v23, &qword_1EC6DB828);
  return sub_1D22BD238(v22, &qword_1EC6DB828);
}

void sub_1D244FFF0(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D2450070()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D245010C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v31 = &v27 - v16;
  v28 = "ating message: ";
  v18 = swift_projectBox();
  v29 = *(v3 + 16);
  v30 = v18;
  v29(v5, v18, v2);
  sub_1D2877628();
  v19 = *(v3 + 8);
  v19(v5, v2);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v19(v8, v2);
  sub_1D24432B8(0xD00000000000001DLL, v28 | 0x8000000000000000, v39, v40, v41, v17);

  v29(v5, v30, v2);
  sub_1D2877628();
  v19(v5, v2);
  v37 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v19(v8, v2);
  v20 = v32;
  sub_1D24432B8(0xD000000000000021, 0x80000001D28B7190, v39, v40, v41, v32);

  v21 = v31;
  v22 = v33;
  sub_1D22BD1D0(v31, v33, &qword_1EC6DB828);
  v23 = v34;
  sub_1D22BD1D0(v20, v34, &qword_1EC6DB828);
  v24 = v35;
  sub_1D22BD1D0(v22, v35, &qword_1EC6DB828);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA60);
  sub_1D22BD1D0(v23, v24 + *(v25 + 48), &qword_1EC6DB828);
  sub_1D22BD238(v20, &qword_1EC6DB828);
  sub_1D22BD238(v21, &qword_1EC6DB828);
  sub_1D22BD238(v23, &qword_1EC6DB828);
  return sub_1D22BD238(v22, &qword_1EC6DB828);
}

uint64_t sub_1D245054C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = swift_projectBox();
  (*(v3 + 16))(v5, v9, v2);
  sub_1D2877628();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v12[0] = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v10(v8, v2);
  sub_1D24432B8(0x54454220776F6853, 0xEE00747865742041, v12[1], v12[2], v13, a1);
}

uint64_t sub_1D2450724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a1;
  v153 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v155 = v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v154 = v134 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v150 = v134 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v152 = v134 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v149 = v134 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v159 = v134 - v13;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBAA0);
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v135 = v134 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBAA8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v151 = v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v144 = v134 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v165 = v134 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v158 = v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v164 = v134 - v24;
  v143 = sub_1D2875678();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v140 = v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v141 = v134 - v27;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBAB0);
  v168 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v29 = v134 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v148 = v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v147 = v134 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v139 = v134 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v137 = v134 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v134 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v134 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBAB8);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v157 = v134 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v136 = v134 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v163 = v134 - v50;
  v51 = swift_projectBox();
  v52 = *(v31 + 16);
  v166 = v51;
  v160 = v31 + 16;
  v161 = v52;
  v52(v41);
  sub_1D2877628();
  v53 = *(v31 + 8);
  v53(v41, v30);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v156 = v31 + 8;
  v162 = v53;
  v53(v44, v30);
  v54 = v176;
  v55 = v177;
  v57 = v178;
  v56 = v179;
  v58 = sub_1D2456324();
  if (v58)
  {
    v134[1] = v134;
    *&v175 = 0x6C6961746544;
    *(&v175 + 1) = 0xE600000000000000;
    v170 = v54;
    v171 = v55;
    v172 = v57;
    v173 = v56;
    MEMORY[0x1EEE9AC00](v58);
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2870F68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBAD8);
    sub_1D24595DC(&qword_1EC6DBAE0, &qword_1EC6DBAD8);
    sub_1D22BD06C();
    sub_1D2877438();
    v59 = v141;
    sub_1D2875668();
    v60 = v142;
    v61 = v143;
    (*(v142 + 16))(v140, v59, v143);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v62 = sub_1D2874988();

    (*(v60 + 8))(v59, v61);
    v63 = v138;
    *&v29[*(v138 + 36)] = v62;
    v64 = v136;
    sub_1D22EC9BC(v29, v136, &qword_1EC6DBAB0);
    v65 = 0;
    v66 = v63;
  }

  else
  {

    v65 = 1;
    v66 = v138;
    v64 = v136;
  }

  v168[7](v64, v65, 1, v66);
  sub_1D22EC9BC(v64, v163, &qword_1EC6DBAB8);
  v67 = v137;
  v68 = v166;
  v69 = v30;
  v168 = v30;
  v70 = v161;
  v161(v137, v166, v69);
  sub_1D2877628();
  v71 = v162;
  v162(v67, v168);
  v72 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v72);
  swift_getKeyPath();
  sub_1D2877648();

  v71(v41, v168);
  sub_1D24432B8(0x656B616620657355, 0xEE0074696D696C20, v176, v177, v178, v164);

  v70(v41, v68, v168);
  v73 = v168;
  v74 = v139;
  sub_1D2877628();
  v71(v41, v73);
  v75 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v75);
  swift_getKeyPath();
  sub_1D2877648();

  v71(v74, v73);
  v76 = v176;
  v77 = v177;
  v78 = v178;
  v79 = sub_1D2456324();
  if (v79)
  {
    *&v175 = 0x6D696C20656B6146;
    *(&v175 + 1) = 0xEA00000000007469;
    v170 = v76;
    v171 = v77;
    v172 = v78;
    MEMORY[0x1EEE9AC00](v79);
    sub_1D2870F78();
    sub_1D2870F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBAC8);
    sub_1D24595DC(&qword_1EC6DBAD0, &qword_1EC6DBAC8);
    sub_1D22BD06C();
    v80 = v135;
    sub_1D2877438();
    v81 = v141;
    sub_1D2875668();
    v82 = v142;
    v83 = v143;
    (*(v142 + 16))(v140, v81, v143);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v84 = sub_1D2874988();

    v73 = v168;
    (*(v82 + 8))(v81, v83);
    v85 = v146;
    *(v80 + *(v146 + 36)) = v84;
    v86 = v144;
    sub_1D22EC9BC(v80, v144, &qword_1EC6DBAA0);
    v87 = 0;
  }

  else
  {

    v87 = 1;
    v85 = v146;
    v86 = v144;
  }

  (*(v145 + 56))(v86, v87, 1, v85);
  sub_1D22EC9BC(v86, v165, &qword_1EC6DBAA8);
  v176 = 0;
  v177 = 0xE000000000000000;
  sub_1D2879168();

  v176 = 0xD000000000000029;
  v177 = 0x80000001D28B7110;
  v88 = v161;
  v161(v41, v166, v73);
  sub_1D2877618();
  v89 = v162;
  v162(v41, v73);

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v90 = off_1ED8A4930;
  v91 = OBJC_IVAR____TtC23ImagePlaygroundInternal13DebugSettings___observationRegistrar;
  v170 = off_1ED8A4930;
  v92 = sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  v145 = v91;
  v144 = v92;
  sub_1D28719E8();
  swift_retain_n();
  sub_1D23CDDAC();
  v94 = v93;
  v168 = v90;

  v170 = v94;
  v95 = sub_1D28795C8();
  MEMORY[0x1D38A0C50](v95);

  MEMORY[0x1D38A0C50](115, 0xE100000000000000);
  v96 = v166;
  v88(v41, v166, v73);
  v97 = v147;
  sub_1D2877628();
  v146 = v41;
  v89(v41, v73);
  v98 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v98);
  swift_getKeyPath();
  sub_1D2877648();

  v89(v97, v73);
  v99 = v176;
  v100 = v177;
  v101 = v178;
  v102 = sub_1D2456324();
  if (v102)
  {
    MEMORY[0x1EEE9AC00](v102);
    v170 = v99;
    v171 = v100;
    v172 = v101;
    v175 = *(v103 + 2160);
    v174 = 1;
    sub_1D2870F78();
    sub_1D2870F78();
    v104 = v149;
    sub_1D28775F8();

    v96 = v166;
    v105 = 0;
  }

  else
  {

    v105 = 1;
    v104 = v149;
  }

  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA48);
  (*(*(v106 - 8) + 56))(v104, v105, 1, v106);
  sub_1D22EC9BC(v104, v159, &qword_1EC6DBA40);
  v176 = 0;
  v177 = 0xE000000000000000;
  sub_1D2879168();

  v176 = 0xD000000000000020;
  v177 = 0x80000001D28B7140;
  v107 = v146;
  v108 = v161;
  v161(v146, v96, v73);
  sub_1D2877618();
  v109 = v162;
  v162(v107, v73);

  swift_getKeyPath();
  v170 = v168;
  sub_1D28719E8();
  sub_1D23CE124();
  v111 = v110;

  v170 = v111;
  v112 = sub_1D28795C8();
  MEMORY[0x1D38A0C50](v112);

  MEMORY[0x1D38A0C50](115, 0xE100000000000000);
  v108(v107, v96, v73);
  v113 = v148;
  sub_1D2877628();
  v109(v107, v73);
  v114 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v114);
  swift_getKeyPath();
  sub_1D2877648();

  v109(v113, v73);
  v115 = v176;
  v116 = v177;
  v117 = v178;
  v118 = sub_1D2456324();
  if (v118)
  {
    MEMORY[0x1EEE9AC00](v118);
    v170 = v115;
    v171 = v116;
    v172 = v117;
    v175 = xmmword_1D2888870;
    v174 = 1;
    sub_1D2870F78();
    sub_1D2870F78();
    v119 = v150;
    sub_1D28775F8();

    v120 = 0;
  }

  else
  {

    v120 = 1;
    v119 = v150;
  }

  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA48);
  (*(*(v121 - 8) + 56))(v119, v120, 1, v121);
  v122 = v119;
  v123 = v152;
  sub_1D22EC9BC(v122, v152, &qword_1EC6DBA40);
  v124 = v157;
  sub_1D22BD1D0(v163, v157, &qword_1EC6DBAB8);
  v125 = v158;
  sub_1D22BD1D0(v164, v158, &qword_1EC6DB828);
  v126 = v151;
  sub_1D22BD1D0(v165, v151, &qword_1EC6DBAA8);
  v127 = v159;
  v128 = v154;
  sub_1D22BD1D0(v159, v154, &qword_1EC6DBA40);
  v129 = v155;
  sub_1D22BD1D0(v123, v155, &qword_1EC6DBA40);
  v130 = v124;
  v131 = v153;
  sub_1D22BD1D0(v130, v153, &qword_1EC6DBAB8);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBAC0);
  sub_1D22BD1D0(v125, v131 + v132[12], &qword_1EC6DB828);
  sub_1D22BD1D0(v126, v131 + v132[16], &qword_1EC6DBAA8);
  sub_1D22BD1D0(v128, v131 + v132[20], &qword_1EC6DBA40);
  sub_1D22BD1D0(v129, v131 + v132[24], &qword_1EC6DBA40);
  sub_1D22BD238(v123, &qword_1EC6DBA40);
  sub_1D22BD238(v127, &qword_1EC6DBA40);
  sub_1D22BD238(v165, &qword_1EC6DBAA8);
  sub_1D22BD238(v164, &qword_1EC6DB828);
  sub_1D22BD238(v163, &qword_1EC6DBAB8);
  sub_1D22BD238(v129, &qword_1EC6DBA40);
  sub_1D22BD238(v128, &qword_1EC6DBA40);
  sub_1D22BD238(v126, &qword_1EC6DBAA8);
  sub_1D22BD238(v158, &qword_1EC6DB828);
  return sub_1D22BD238(v157, &qword_1EC6DBAB8);
}

void sub_1D2451F00(uint64_t *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 stringForKey_];

  if (v4)
  {
    v5 = sub_1D28780A8();
    v7 = v6;
  }

  else
  {
    v7 = 0xE400000000000000;
    v5 = 1869903201;
  }

  *a1 = v5;
  a1[1] = v7;
}

void sub_1D2451FB8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D2452068()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D2452104()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878808();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D24521A0()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878808();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D245223C()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878808();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D24522D8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = swift_projectBox();
  (*(v3 + 16))(v5, v9, v2);
  sub_1D2877628();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v12[0] = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v10(v8, v2);
  sub_1D24432B8(0xD000000000000016, 0x80000001D28B70F0, v12[1], v12[2], v13, a1);
}

void sub_1D24524B0(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D2452530()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D24525CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a1;
  v111 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA68);
  v108 = *(v2 - 8);
  v109 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v94 = (&v90 - v3);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA70);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA78);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v110 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v90 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v107 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v90 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v90 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v90 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v90 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA40);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v104 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v96 = &v90 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v114 = &v90 - v33;
  v122 = 0;
  v123 = 0xE000000000000000;
  sub_1D2879168();
  MEMORY[0x1D38A0C50](0xD000000000000040, 0x80000001D28B7020);
  v34 = swift_projectBox();
  v35 = v18 + 16;
  v95 = *(v18 + 16);
  v95(v27, v34, v17);
  sub_1D2877618();
  v38 = *(v18 + 8);
  v37 = v18 + 8;
  v36 = v38;
  v38(v27, v17);

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v39 = off_1ED8A4930;
  v40 = OBJC_IVAR____TtC23ImagePlaygroundInternal13DebugSettings___observationRegistrar;
  v119 = off_1ED8A4930;
  v41 = sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  v100 = v40;
  v98 = v41;
  sub_1D28719E8();
  swift_retain_n();
  v42 = sub_1D23CE688();
  v101 = v39;

  v119 = v42;
  v43 = sub_1D28795C8();
  MEMORY[0x1D38A0C50](v43);

  v112 = v35;
  v113 = v34;
  v44 = v34;
  v45 = v95;
  v95(v27, v44, v17);
  sub_1D2877628();
  v36(v27, v17);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  sub_1D2877648();

  v102 = v36;
  v36(v24, v17);
  v47 = v122;
  v48 = v123;
  v49 = v124;
  v50 = sub_1D2456324();
  v97 = v37;
  if (v50)
  {
    MEMORY[0x1EEE9AC00](v50);
    v119 = v47;
    v120 = v48;
    v121 = v49;
    v118 = xmmword_1D2888880;
    v117 = 1;
    sub_1D2870F78();
    sub_1D2870F78();
    v51 = v96;
    sub_1D28775F8();

    v52 = 0;
  }

  else
  {

    v52 = 1;
    v51 = v96;
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA48);
  (*(*(v53 - 8) + 56))(v51, v52, 1, v53);
  sub_1D22EC9BC(v51, v114, &qword_1EC6DBA40);
  v54 = v99;
  v55 = v113;
  v45(v99, v113, v17);
  sub_1D2877628();
  v56 = v102;
  v102(v54, v17);
  v57 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v57);
  swift_getKeyPath();
  sub_1D2877648();

  v56(v27, v17);
  sub_1D24432B8(0xD000000000000021, 0x80000001D28B7070, v122, v123, v124, v115);

  v122 = 0;
  v123 = 0xE000000000000000;
  sub_1D2879168();
  MEMORY[0x1D38A0C50](0xD00000000000004ALL, 0x80000001D28B70A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A50);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1D287F500;
  v45(v27, v55, v17);
  sub_1D2877618();
  v56(v27, v17);

  swift_getKeyPath();
  v59 = MEMORY[0x1E69E6438];
  *(v58 + 56) = MEMORY[0x1E69E63B0];
  *(v58 + 64) = v59;
  v119 = v101;
  sub_1D28719E8();
  v60 = sub_1D23D06E8();

  *(v58 + 32) = v60;
  v61 = sub_1D28780B8();
  MEMORY[0x1D38A0C50](v61);

  v63 = v122;
  v62 = v123;
  v45(v27, v113, v17);
  v64 = v103;
  sub_1D2877628();
  v56(v27, v17);
  v65 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v65);
  swift_getKeyPath();
  sub_1D2877648();

  v56(v64, v17);
  v67 = v122;
  v66 = v123;
  v68 = v124;
  v113 = v63;
  if (sub_1D2456324())
  {
    v119 = v67;
    v120 = v66;
    v121 = v68;
    v118 = xmmword_1D2888890;
    sub_1D2459314();
    sub_1D2870F68();
    sub_1D2870F78();
    sub_1D2870F78();
    v116 = v67;
    v69 = v90;
    sub_1D2877448();
    v70 = v92;
    v71 = *(v92 + 16);
    v72 = v91;
    v73 = v93;
    v71(v91, v69, v93);
    v74 = v94;
    v75 = v113;
    *v94 = v113;
    *(v74 + 8) = v62;
    *(v74 + 16) = 0;
    *(v74 + 24) = MEMORY[0x1E69E7CC0];
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA88);
    v71((v74 + *(v76 + 48)), v72, v73);
    sub_1D2870F68();
    sub_1D22BBFAC(v75, v62, 0);
    sub_1D2870F68();
    swift_bridgeObjectRelease_n();

    v77 = *(v70 + 8);
    v77(v69, v73);
    v77(v72, v73);
    sub_1D22ED6E0(v75, v62, 0);

    v78 = v105;
    sub_1D22EC9BC(v74, v105, &qword_1EC6DBA68);
    v79 = 0;
  }

  else
  {

    v79 = 1;
    v78 = v105;
  }

  (*(v108 + 56))(v78, v79, 1, v109);
  v80 = v78;
  v81 = v106;
  sub_1D22EC9BC(v80, v106, &qword_1EC6DBA78);
  v82 = v114;
  v83 = v104;
  sub_1D22BD1D0(v114, v104, &qword_1EC6DBA40);
  v84 = v115;
  v85 = v107;
  sub_1D22BD1D0(v115, v107, &qword_1EC6DB828);
  v86 = v110;
  sub_1D22BD1D0(v81, v110, &qword_1EC6DBA78);
  v87 = v111;
  sub_1D22BD1D0(v83, v111, &qword_1EC6DBA40);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA80);
  sub_1D22BD1D0(v85, v87 + *(v88 + 48), &qword_1EC6DB828);
  sub_1D22BD1D0(v86, v87 + *(v88 + 64), &qword_1EC6DBA78);
  sub_1D22BD238(v81, &qword_1EC6DBA78);
  sub_1D22BD238(v84, &qword_1EC6DB828);
  sub_1D22BD238(v82, &qword_1EC6DBA40);
  sub_1D22BD238(v86, &qword_1EC6DBA78);
  sub_1D22BD238(v85, &qword_1EC6DB828);
  return sub_1D22BD238(v83, &qword_1EC6DBA40);
}

void sub_1D24534E0()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878808();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D245357C()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D2453618()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878788();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D2453718@<X0>(void *a1@<X8>)
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v2 = off_1ED8A4930;
  v7[0] = off_1ED8A4930;
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  v7[4] = v2;
  sub_1D2870F78();
  v3 = swift_readAtKeyPath();
  v5 = *v4;
  v3(v7, 0);

  *a1 = v5;
  return result;
}

uint64_t sub_1D2453830(uint64_t a1)
{
  if (qword_1ED8A4928 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  return sub_1D28719D8();
}

uint64_t sub_1D2453954@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1D2875678();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB8F0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  sub_1D2874258();
  v16 = sub_1D2874288();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  sub_1D2870F78();
  if (sub_1D2456324())
  {
    sub_1D245642C(v15, sub_1D245930C, a1, 0xD000000000000014, 0x80000001D28B7000, v12);
    sub_1D2875668();
    v17 = v23;
    (*(v23 + 16))(v5, v8, v3);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v18 = sub_1D2874988();

    (*(v17 + 8))(v8, v3);
    sub_1D22BD238(v15, &qword_1EC6DB0C8);
    *&v12[*(v9 + 36)] = v18;
    v19 = v24;
    sub_1D22EC9BC(v12, v24, &qword_1EC6DB8F0);
    v20 = 0;
    v21 = v19;
  }

  else
  {

    sub_1D22BD238(v15, &qword_1EC6DB0C8);
    v20 = 1;
    v21 = v24;
  }

  return (*(v10 + 56))(v21, v20, 1, v9);
}

void sub_1D2453CC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  v4 = swift_projectBox();
  (*(v1 + 16))(v3, v4, v0);
  sub_1D2877618();
  (*(v1 + 8))(v3, v0);
  exit(0);
}

uint64_t sub_1D2453DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB828);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v31 = &v27 - v16;
  v28 = "Reset thresholds";
  v18 = swift_projectBox();
  v29 = *(v3 + 16);
  v30 = v18;
  v29(v5, v18, v2);
  sub_1D2877628();
  v19 = *(v3 + 8);
  v19(v5, v2);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v19(v8, v2);
  sub_1D24432B8(0xD00000000000003CLL, v28 | 0x8000000000000000, v39, v40, v41, v17);

  v29(v5, v30, v2);
  sub_1D2877628();
  v19(v5, v2);
  v37 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1D2877648();

  v19(v8, v2);
  v20 = v32;
  sub_1D24432B8(0xD00000000000001ALL, 0x80000001D28B6FE0, v39, v40, v41, v32);

  v21 = v31;
  v22 = v33;
  sub_1D22BD1D0(v31, v33, &qword_1EC6DB828);
  v23 = v34;
  sub_1D22BD1D0(v20, v34, &qword_1EC6DB828);
  v24 = v35;
  sub_1D22BD1D0(v22, v35, &qword_1EC6DB828);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA60);
  sub_1D22BD1D0(v23, v24 + *(v25 + 48), &qword_1EC6DB828);
  sub_1D22BD238(v20, &qword_1EC6DB828);
  sub_1D22BD238(v21, &qword_1EC6DB828);
  sub_1D22BD238(v23, &qword_1EC6DB828);
  return sub_1D22BD238(v22, &qword_1EC6DB828);
}

void sub_1D24541F8(unsigned __int8 *a1@<X8>)
{
  if (os_variant_has_internal_ui())
  {
    sub_1D23B7BB8();
    v2 = sub_1D2878A58();
    v3 = sub_1D2878068();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

void sub_1D2454290()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D245432C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a3;
  v115 = a1;
  v94 = sub_1D2875678();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v89 - v6;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB8F0);
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v90 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v105 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB878);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v113 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v89 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v89 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v89 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA40);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v108 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v107 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v104 = &v89 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v117 = &v89 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v102 = &v89 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v116 = &v89 - v31;
  v123 = 0;
  v124 = 0xE000000000000000;
  sub_1D2879168();
  MEMORY[0x1D38A0C50](0xD000000000000014, 0x80000001D28B6F40);
  v32 = swift_projectBox();
  v33 = *(v17 + 16);
  v100 = v32;
  v101 = v17 + 16;
  v99 = v33;
  (v33)(v19);
  sub_1D2877618();
  v34 = *(v17 + 8);
  v103 = v17 + 8;
  v98 = v34;
  v34(v19, v16);

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v35 = off_1ED8A4930;
  v36 = OBJC_IVAR____TtC23ImagePlaygroundInternal13DebugSettings___observationRegistrar;
  v120 = off_1ED8A4930;
  v37 = sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  v97 = v36;
  v96 = v37;
  sub_1D28719E8();
  v38 = sub_1D23B7BB8();
  swift_retain_n();
  v95 = v38;
  v39 = sub_1D2878A58();
  v40 = sub_1D2878068();
  [v39 doubleForKey_];

  sub_1D28787A8();
  sub_1D2878568();
  sub_1D2870F78();
  v41 = sub_1D2878558();
  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E85E0];
  v42[2] = v41;
  v42[3] = v43;
  v42[4] = a2;
  sub_1D2870F78();
  v44 = sub_1D2878558();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = v43;
  v109 = a2;
  v45[4] = a2;
  sub_1D2877528();
  v46 = v123;
  v47 = v124;
  v48 = v125;
  v49 = sub_1D2456324();
  if (v49)
  {
    v89 = &v89;
    MEMORY[0x1EEE9AC00](v49);
    v120 = v46;
    v121 = v47;
    v122 = v48;
    v119 = *(v50 + 2192);
    v118 = v51;
    sub_1D2870F78();
    sub_1D2870F78();
    v52 = v102;
    sub_1D28775F8();

    v53 = 0;
  }

  else
  {

    v53 = 1;
    v52 = v102;
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA48);
  (*(*(v54 - 8) + 56))(v52, v53, 1, v54);
  sub_1D22EC9BC(v52, v116, &qword_1EC6DBA40);
  v123 = 0;
  v124 = 0xE000000000000000;
  sub_1D2879168();
  MEMORY[0x1D38A0C50](0xD000000000000018, 0x80000001D28B6F60);
  v99(v19, v100, v16);
  sub_1D2877618();
  v98(v19, v16);

  swift_getKeyPath();
  v120 = v35;
  sub_1D28719E8();
  v55 = sub_1D2878A58();
  v56 = sub_1D2878068();
  [v55 doubleForKey_];

  sub_1D28787A8();
  v57 = v109;
  sub_1D2870F78();
  v58 = sub_1D2878558();
  v59 = swift_allocObject();
  v59[2] = v58;
  v60 = MEMORY[0x1E69E85E0];
  v59[3] = MEMORY[0x1E69E85E0];
  v59[4] = v57;
  sub_1D2870F78();
  v61 = sub_1D2878558();
  v62 = swift_allocObject();
  v62[2] = v61;
  v62[3] = v60;
  v62[4] = v57;
  sub_1D2877528();
  v63 = v123;
  v64 = v124;
  v65 = v125;
  v66 = sub_1D2456324();
  if (v66)
  {
    MEMORY[0x1EEE9AC00](v66);
    v120 = v63;
    v121 = v64;
    v122 = v65;
    v119 = xmmword_1D2888890;
    v118 = 0x3F847AE147AE147BLL;
    sub_1D2870F78();
    sub_1D2870F78();
    v67 = v104;
    sub_1D28775F8();

    v68 = 0;
  }

  else
  {

    v68 = 1;
    v67 = v104;
  }

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA48);
  (*(*(v69 - 8) + 56))(v67, v68, 1, v69);
  sub_1D22EC9BC(v67, v117, &qword_1EC6DBA40);
  v70 = v105;
  sub_1D2874258();
  v71 = sub_1D2874288();
  (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
  sub_1D2870F78();
  if (sub_1D2456324())
  {
    v72 = v90;
    sub_1D245642C(v70, sub_1D24592E4, v57, 0xD000000000000010, 0x80000001D28B6F80, v90);
    v73 = v92;
    sub_1D2875668();
    v74 = v93;
    v75 = v94;
    (*(v93 + 16))(v91, v73, v94);
    sub_1D2457A94(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v76 = sub_1D2874988();

    (*(v74 + 8))(v73, v75);
    sub_1D22BD238(v70, &qword_1EC6DB0C8);
    v77 = v112;
    *(v72 + *(v112 + 36)) = v76;
    v78 = v106;
    sub_1D22EC9BC(v72, v106, &qword_1EC6DB8F0);
    v79 = 0;
  }

  else
  {

    sub_1D22BD238(v70, &qword_1EC6DB0C8);
    v79 = 1;
    v77 = v112;
    v78 = v106;
  }

  (*(v110 + 56))(v78, v79, 1, v77);
  v80 = v111;
  sub_1D22EC9BC(v78, v111, &qword_1EC6DB878);
  v81 = v116;
  v82 = v107;
  sub_1D22BD1D0(v116, v107, &qword_1EC6DBA40);
  v83 = v117;
  v84 = v108;
  sub_1D22BD1D0(v117, v108, &qword_1EC6DBA40);
  v85 = v113;
  sub_1D22BD1D0(v80, v113, &qword_1EC6DB878);
  v86 = v114;
  sub_1D22BD1D0(v82, v114, &qword_1EC6DBA40);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA50);
  sub_1D22BD1D0(v84, v86 + *(v87 + 48), &qword_1EC6DBA40);
  sub_1D22BD1D0(v85, v86 + *(v87 + 64), &qword_1EC6DB878);
  sub_1D22BD238(v80, &qword_1EC6DB878);
  sub_1D22BD238(v83, &qword_1EC6DBA40);
  sub_1D22BD238(v81, &qword_1EC6DBA40);
  sub_1D22BD238(v85, &qword_1EC6DB878);
  sub_1D22BD238(v84, &qword_1EC6DBA40);
  return sub_1D22BD238(v82, &qword_1EC6DBA40);
}

void sub_1D24552D8(double *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  [v2 doubleForKey_];
  v5 = v4;

  v6 = 0.6;
  if (v5 > 0.0)
  {
    v6 = v5;
  }

  *a1 = v6;
}

void sub_1D2455374()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878788();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D2455438(double *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - v4;
  v6 = swift_projectBox();
  (*(v3 + 16))(v5, v6, v2);
  sub_1D2877618();
  (*(v3 + 8))(v5, v2);

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v12[1] = off_1ED8A4930;
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  sub_1D23B7BB8();
  sub_1D2870F78();
  v7 = sub_1D2878A58();
  v8 = sub_1D2878068();
  [v7 doubleForKey_];
  v10 = v9;

  v11 = 0.6;
  if (v10 > 0.0)
  {
    v11 = v10;
  }

  *a1 = v11;
}

void sub_1D2455674(double *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  [v2 doubleForKey_];
  v5 = v4;

  v6 = 0.5;
  if (v5 > 0.0)
  {
    v6 = v5;
  }

  *a1 = v6;
}

void sub_1D2455708()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878788();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D24557C4(double *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - v4;
  v6 = swift_projectBox();
  (*(v3 + 16))(v5, v6, v2);
  sub_1D2877618();
  (*(v3 + 8))(v5, v2);

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v12[1] = off_1ED8A4930;
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  sub_1D23B7BB8();
  sub_1D2870F78();
  v7 = sub_1D2878A58();
  v8 = sub_1D2878068();
  [v7 doubleForKey_];
  v10 = v9;

  v11 = 0.5;
  if (v10 > 0.0)
  {
    v11 = v10;
  }

  *a1 = v11;
}

uint64_t sub_1D24559F8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - v4;
  v6 = *a1;
  v7 = swift_projectBox();
  (*(v3 + 16))(v5, v7, v2);
  sub_1D2877618();
  (*(v3 + 8))(v5, v2);

  KeyPath = swift_getKeyPath();
  v14 = v6;
  if (qword_1ED8A4928 != -1)
  {
    v12 = KeyPath;
    swift_once();
    KeyPath = v12;
  }

  v9 = off_1ED8A4930;
  MEMORY[0x1EEE9AC00](KeyPath);
  v13[-2] = v10;
  v13[-1] = &v14;
  v13[2] = v9;
  sub_1D2457A94(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719D8();
}

void sub_1D2455C24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  v4 = swift_projectBox();
  (*(v1 + 16))(v3, v4, v0);
  sub_1D2877618();
  (*(v1 + 8))(v3, v0);

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23CEF98();
}

uint64_t sub_1D2455D5C(uint64_t a1)
{
  v2 = sub_1D2875C08();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB5C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1D2875BD8();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  sub_1D28745C8();
  v7 = sub_1D22BB9D8(&qword_1EC6DB5C8, &qword_1EC6DB5C0);
  MEMORY[0x1D389E720](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D2455F48(uint64_t a1)
{
  v2 = type metadata accessor for DebugSettingsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D2457C90(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1D24591E0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for DebugSettingsView);
  return sub_1D2877368();
}

uint64_t sub_1D2456088(uint64_t a1)
{
  v15 = sub_1D2875628();
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE8A0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = sub_1D28749A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BD1D0(a1, v7, &qword_1EC6DE8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1D2878A28();
    v12 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_1D2874998();
  return (*(v9 + 8))(v11, v8);
}

double sub_1D2456304@<D0>(uint64_t a1@<X8>)
{
  *&result = 1701736260;
  *a1 = xmmword_1D28888A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1D2456324()
{
  type metadata accessor for DebugSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB640);
  sub_1D2877308();

  v0 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v0 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    sub_1D2877308();
    sub_1D22BD06C();
    v1 = sub_1D2878FC8();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t sub_1D245642C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v31 = a2;
  v32 = a3;
  v28 = a1;
  v35 = a6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBA58);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = sub_1D2874288();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BD1D0(v28, v16, &qword_1EC6DB0C8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v21 = sub_1D22BD238(v16, &qword_1EC6DB0C8);
    MEMORY[0x1EEE9AC00](v21);
    v22 = v30;
    *(&v28 - 2) = v29;
    *(&v28 - 1) = v22;
    sub_1D2870F78();
    sub_1D2877368();
    v23 = v34;
    (*(v34 + 16))(v7, v10, v8);
    swift_storeEnumTagMultiPayload();
    sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
    sub_1D2875AF8();
    return (*(v23 + 8))(v10, v8);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    (*(v18 + 16))(v13, v20, v17);
    v25 = (*(v18 + 56))(v13, 0, 1, v17);
    MEMORY[0x1EEE9AC00](v25);
    v26 = v30;
    *(&v28 - 2) = v29;
    *(&v28 - 1) = v26;
    sub_1D2870F78();
    sub_1D2877358();
    v27 = v34;
    (*(v34 + 16))(v7, v10, v8);
    swift_storeEnumTagMultiPayload();
    sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
    sub_1D2875AF8();
    (*(v27 + 8))(v10, v8);
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_1D2456934()
{
  swift_getKeyPath();
  sub_1D2870F68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
  sub_1D22BB9D8(&qword_1EC6DBAE8, &qword_1EC6DA358);
  return sub_1D2877578();
}

uint64_t sub_1D2456A34()
{
  swift_getKeyPath();
  sub_1D2870F68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB2C0);
  sub_1D22BB9D8(&qword_1EC6DBAF0, &qword_1EC6DB2C0);
  return sub_1D2877578();
}

uint64_t sub_1D2456B50()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBB60);
  sub_1D245963C();
  return sub_1D2877578();
}

uint64_t sub_1D2456BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1D2871818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double sub_1D2456C6C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 3);
  if (v3)
  {
    v4 = *(a1 + 2);
    v6 = *a1;
    sub_1D2870F68();
    MEMORY[0x1D38A0C50](2112032, 0xE300000000000000);
    MEMORY[0x1D38A0C50](v4, v3);
  }

  else
  {
    sub_1D2870F68();
  }

  sub_1D2875AF8();
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_1D2456D48@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB570);
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB578);
  v8 = swift_allocBox();
  v22[1] = v8;
  sub_1D243A604();
  type metadata accessor for ObservableDebugSettings(0);
  sub_1D2457A94(&qword_1EC6D8380, type metadata accessor for ObservableDebugSettings);
  sub_1D2877638();
  v25 = v1;
  v26 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB580);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB588);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB590);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB598);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB5A0);
  v13 = sub_1D243B334();
  v14 = sub_1D22BD06C();
  v27 = v12;
  v28 = MEMORY[0x1E69E6158];
  v29 = v13;
  v30 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v11;
  v28 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB5C0);
  v18 = sub_1D22BB9D8(&qword_1EC6DB5C8, &qword_1EC6DB5C0);
  v27 = v17;
  v28 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v27 = v9;
  v28 = v10;
  v29 = v16;
  v30 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1D2874F78();
  sub_1D22BB9D8(&qword_1EC6DB5D0, &qword_1EC6DB570);
  sub_1D243A1FC(v4, v2, v7);
  v20 = *(v23 + 8);
  v20(v4, v2);
  sub_1D243A1FC(v7, v2, v24);
  v20(v7, v2);
}

uint64_t sub_1D24570E4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v27 = a3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB658);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v22 - v4;
  v6 = sub_1D2874CF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB660);
  v10 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v22 - v11;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB628);
  v13 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v15 = &v22 - v14;
  if (a1)
  {
    sub_1D2874CE8();
    v22 = v13;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB630);
    v17 = sub_1D22BB9D8(&qword_1EC6DB638, &qword_1EC6DB630);
    sub_1D2876FB8();
    (*(v7 + 8))(v9, v6);
    v13 = v22;
    v18 = v26;
    (*(v10 + 16))(v5, v12, v26);
    swift_storeEnumTagMultiPayload();
    v28 = v16;
    v29 = v6;
    v30 = v17;
    v31 = MEMORY[0x1E697C0D8];
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();
    (*(v10 + 8))(v12, v18);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB630);
    (*(*(v19 - 8) + 16))(v5, v23, v19);
    swift_storeEnumTagMultiPayload();
    v20 = sub_1D22BB9D8(&qword_1EC6DB638, &qword_1EC6DB630);
    v28 = v19;
    v29 = v6;
    v30 = v20;
    v31 = MEMORY[0x1E697C0D8];
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();
  }

  sub_1D2457B68();
  (*(v13 + 16))(v27, v15, v25);
  return sub_1D22BD238(v15, &qword_1EC6DB628);
}

uint64_t sub_1D2457554()
{
  if (qword_1ED8A0600 != -1)
  {
    swift_once();
  }

  qword_1ED8B0090 = qword_1ED8A0608;

  return sub_1D2870F78();
}

uint64_t sub_1D24575B8@<X0>(void *a1@<X8>)
{
  if (qword_1ED89F6D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ED8B0090;

  return sub_1D2870F78();
}

uint64_t View.debugSettings(_:)()
{
  swift_getKeyPath();
  sub_1D28767F8();
}

void sub_1D2457700()
{
  sub_1D2457834(319, &qword_1ED89DFE0, MEMORY[0x1E697BF90]);
  if (v0 <= 0x3F)
  {
    sub_1D2457834(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings);
    if (v1 <= 0x3F)
    {
      sub_1D2457998(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1D2457998(319, &qword_1ED89D1A0, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D2457834(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D28744A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D24578D0()
{
  sub_1D2457998(319, qword_1ED8A6D28, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D2871818();
    if (v1 <= 0x3F)
    {
      sub_1D24579E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D2457998(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D24579E8()
{
  if (!qword_1EC6DB5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB600);
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6DB5F8);
    }
  }
}

uint64_t sub_1D2457A94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2457AE4()
{
  result = qword_1EC6DB618;
  if (!qword_1EC6DB618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB610);
    sub_1D2457B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB618);
  }

  return result;
}

unint64_t sub_1D2457B68()
{
  result = qword_1EC6DB620;
  if (!qword_1EC6DB620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB630);
    sub_1D2874CF8();
    sub_1D22BB9D8(&qword_1EC6DB638, &qword_1EC6DB630);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB620);
  }

  return result;
}

uint64_t sub_1D2457C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugSettingsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2457D28()
{
  result = qword_1EC6DB8C8;
  if (!qword_1EC6DB8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB8B0);
    sub_1D22BB9D8(&qword_1EC6DB8D0, &qword_1EC6DB8A0);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB8C8);
  }

  return result;
}

unint64_t sub_1D2457E20()
{
  result = qword_1EC6DB8E0;
  if (!qword_1EC6DB8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB878);
    sub_1D2457EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB8E0);
  }

  return result;
}

unint64_t sub_1D2457EA4()
{
  result = qword_1EC6DB8E8;
  if (!qword_1EC6DB8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB8F0);
    sub_1D2457F5C();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB8E8);
  }

  return result;
}

unint64_t sub_1D2457F5C()
{
  result = qword_1EC6DB8F8;
  if (!qword_1EC6DB8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB900);
    sub_1D2457FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB8F8);
  }

  return result;
}

unint64_t sub_1D2457FE0()
{
  result = qword_1EC6DB908;
  if (!qword_1EC6DB908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB910);
    sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB908);
  }

  return result;
}

unint64_t sub_1D2458098()
{
  result = qword_1EC6DB920;
  if (!qword_1EC6DB920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB860);
    sub_1D22BB9D8(&qword_1EC6DB928, &qword_1EC6DB850);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB920);
  }

  return result;
}

uint64_t sub_1D2458190(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D245824C()
{
  result = qword_1EC6DB938;
  if (!qword_1EC6DB938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB828);
    sub_1D24582D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB938);
  }

  return result;
}

unint64_t sub_1D24582D0()
{
  result = qword_1EC6DB940;
  if (!qword_1EC6DB940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB948);
    sub_1D22BB9D8(&qword_1EC6DB950, &qword_1EC6DB958);
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB940);
  }

  return result;
}

unint64_t sub_1D24583C4()
{
  result = qword_1EC6DB960;
  if (!qword_1EC6DB960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB810);
    sub_1D22BB9D8(&qword_1EC6DB968, &qword_1EC6DB800);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB960);
  }

  return result;
}

unint64_t sub_1D24584BC()
{
  result = qword_1EC6DB970;
  if (!qword_1EC6DB970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB7E8);
    sub_1D22BB9D8(&qword_1EC6DB978, &qword_1EC6DB7D8);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB970);
  }

  return result;
}

unint64_t sub_1D24585BC()
{
  result = qword_1EC6DB980;
  if (!qword_1EC6DB980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB7C0);
    sub_1D22BB9D8(&qword_1EC6DB988, &qword_1EC6DB7B0);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB980);
  }

  return result;
}

unint64_t sub_1D24586B4()
{
  result = qword_1EC6DB990;
  if (!qword_1EC6DB990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB798);
    sub_1D22BB9D8(&qword_1EC6DB998, &qword_1EC6DB788);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB990);
  }

  return result;
}

unint64_t sub_1D24587AC()
{
  result = qword_1EC6DB9A0;
  if (!qword_1EC6DB9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB770);
    sub_1D22BB9D8(&qword_1EC6DB9A8, &qword_1EC6DB760);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB9A0);
  }

  return result;
}

unint64_t sub_1D24588A4()
{
  result = qword_1EC6DB9B0;
  if (!qword_1EC6DB9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB748);
    sub_1D22BB9D8(&qword_1EC6DB9B8, &qword_1EC6DB738);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB9B0);
  }

  return result;
}

unint64_t sub_1D245899C()
{
  result = qword_1EC6DB9C0;
  if (!qword_1EC6DB9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB720);
    sub_1D22BB9D8(&qword_1EC6DB9C8, &qword_1EC6DB710);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB9C0);
  }

  return result;
}

uint64_t sub_1D2458A9C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D2879348();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1D2458B10()
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D2870F78();
  sub_1D2870F68();
  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_1D2458BBC()
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D2870F78();
  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_1D2458C54@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D2879348();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1D2458CC8()
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D2870F78();
  swift_setAtReferenceWritableKeyPath();
}

unint64_t sub_1D2458D8C()
{
  result = qword_1EC6DB9D0;
  if (!qword_1EC6DB9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB6C8);
    sub_1D22BB9D8(&qword_1EC6DB9D8, &qword_1EC6DB6B8);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB9D0);
  }

  return result;
}

unint64_t sub_1D2458E8C()
{
  result = qword_1EC6DB9E0;
  if (!qword_1EC6DB9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB6A0);
    sub_1D22BB9D8(&qword_1EC6DB9E8, &qword_1EC6DB690);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB9E0);
  }

  return result;
}

unint64_t sub_1D2458F94()
{
  result = qword_1EC6DB9F0;
  if (!qword_1EC6DB9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB678);
    sub_1D22BB9D8(&qword_1EC6DB9F8, &qword_1EC6DB668);
    sub_1D24595DC(&qword_1ED89D280, &qword_1EC6DAAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DB9F0);
  }

  return result;
}

unint64_t sub_1D24590A8()
{
  result = qword_1EC6DBA08;
  if (!qword_1EC6DBA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB6E0);
    sub_1D2459164();
    sub_1D22BB9D8(&qword_1EC6DBA18, &qword_1EC6DBA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DBA08);
  }

  return result;
}

unint64_t sub_1D2459164()
{
  result = qword_1ED89D5B0;
  if (!qword_1ED89D5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DBA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5B0);
  }

  return result;
}

uint64_t sub_1D24591E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2459248(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1D2459314()
{
  result = qword_1ED89CFA8;
  if (!qword_1ED89CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CFA8);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = *(type metadata accessor for DebugSettingsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1D28749A8();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D2459558(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DebugSettingsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D24595DC(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_1D245963C()
{
  result = qword_1EC6D75A8;
  if (!qword_1EC6D75A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DBB60);
    sub_1D24596C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D75A8);
  }

  return result;
}

unint64_t sub_1D24596C8()
{
  result = qword_1EC6D75B8;
  if (!qword_1EC6D75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D75B8);
  }

  return result;
}

uint64_t sub_1D2459734@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return sub_1D2870F68();
}

unint64_t sub_1D2459778()
{
  result = qword_1ED89F6C0;
  if (!qword_1ED89F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89F6C0);
  }

  return result;
}

uint64_t sub_1D2459838(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 104) = a1;
  v3 = sub_1D2873CB8();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  sub_1D2878568();
  *(v2 + 48) = sub_1D2878558();
  v5 = sub_1D28784F8();
  *(v2 + 56) = v5;
  *(v2 + 64) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2459930, v5, v4);
}

uint64_t sub_1D2459930()
{
  v18 = v0;
  if (*(v0 + 104))
  {
    v1 = *(v0 + 48);
    *(v0 + 72) = sub_1D2459EB8();
    sub_1D2870F78();
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_1D2459B9C;
    v3 = *(v0 + 104);
    v4 = MEMORY[0x1E69E85E0];

    return sub_1D25F6EAC(v1, v4, v3);
  }

  else
  {

    sub_1D2872618();
    v6 = sub_1D2873CA8();
    v7 = sub_1D2878A38();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 24);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      v14 = sub_1D23D7C84(0x6D726177657270, 0xE700000000000000, &v17);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_1D226E000, v6, v7, "Request for playground with invalid type: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1D38A3520](v13, -1, -1);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);
    sub_1D245C3EC();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1D2459B9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_1D2459D80;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_1D2459D10;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D2459D10()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_1D2459D80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2459DF8()
{
  v1 = *v0;
  v2 = 0x746E65746E69;
  v3 = 0x696A6F6D6E6567;
  if (v1 != 4)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6D726177657270;
  v5 = 0x7265736F706D6F63;
  if (v1 != 1)
  {
    v5 = 0x64616F4C65636166;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D2459EB8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = sub_1D25D79D4(MEMORY[0x1E69E7CC0]);
    v3 = swift_allocObject();
    swift_weakInit();
    v1 = sub_1D245BFF4(1, v2, &unk_1D2889B58, v3);
    *(v0 + 16) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D2459F68(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 248) = a1;
  v3 = sub_1D2872E48();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA428);
  *(v2 + 48) = swift_task_alloc();
  v4 = sub_1D2873C28();
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  v5 = sub_1D2873C48();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  v6 = sub_1D2873CB8();
  *(v2 + 112) = v6;
  *(v2 + 120) = *(v6 - 8);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  sub_1D2878568();
  *(v2 + 168) = sub_1D2878558();
  v8 = sub_1D28784F8();
  *(v2 + 176) = v8;
  *(v2 + 184) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D245A1E8, v8, v7);
}

uint64_t sub_1D245A1E8()
{
  v80 = v0;
  v1 = sub_1D2459EB8();
  os_unfair_lock_lock((v1 + 40));
  if (*(v1 + 72))
  {
    v2 = *(v1 + 104);
    v79 = 0;
    v2(&v77, &v79);
    v3 = v77;
    v4 = v78;
  }

  else
  {
    v3 = 0;
    v4 = 255;
  }

  os_unfair_lock_unlock((v1 + 40));

  if (v4 == 255)
  {
    goto LABEL_7;
  }

  if (v4)
  {
    sub_1D245C6B8(v3, v4);
LABEL_7:
    sub_1D2872618();
    v5 = sub_1D2873CA8();
    v6 = sub_1D2878A38();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 248);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v77 = v9;
      *v8 = 136315138;
      v10 = 0xE600000000000000;
      v11 = 0xE700000000000000;
      v12 = 0x696A6F6D6E6567;
      if (v7 != 4)
      {
        v12 = 0xD000000000000018;
        v11 = 0x80000001D28B7B50;
      }

      if (v7 == 3)
      {
        v12 = 0x746E65746E69;
      }

      else
      {
        v10 = v11;
      }

      v13 = 0xE700000000000000;
      v14 = 0x6D726177657270;
      v15 = 0xE800000000000000;
      v16 = 0x7265736F706D6F63;
      if (v7 != 1)
      {
        v16 = 0x64616F4C65636166;
        v15 = 0xEA00000000007265;
      }

      if (v7)
      {
        v14 = v16;
        v13 = v15;
      }

      if (v7 <= 2)
      {
        v17 = v14;
      }

      else
      {
        v17 = v12;
      }

      if (v7 <= 2)
      {
        v18 = v13;
      }

      else
      {
        v18 = v10;
      }

      v19 = *(v0 + 152);
      v20 = *(v0 + 112);
      v21 = *(v0 + 120);
      v22 = sub_1D23D7C84(v17, v18, &v77);

      *(v8 + 4) = v22;
      _os_log_impl(&dword_1D226E000, v5, v6, "Instantiating new GenerativePlayground for key '%s'.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1D38A3520](v9, -1, -1);
      MEMORY[0x1D38A3520](v8, -1, -1);

      v23 = *(v21 + 8);
      v23(v19, v20);
    }

    else
    {
      v24 = *(v0 + 152);
      v25 = *(v0 + 112);
      v26 = *(v0 + 120);

      v23 = *(v26 + 8);
      v23(v24, v25);
    }

    *(v0 + 192) = v23;
    sub_1D28720E8();
    sub_1D2873C18();
    v27 = sub_1D2873C38();
    v28 = sub_1D2878BB8();
    if (sub_1D2878EE8())
    {
      v29 = *(v0 + 248);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v77 = v31;
      *v30 = 136315138;
      v32 = 0xE600000000000000;
      v33 = 0xE700000000000000;
      v34 = 0x696A6F6D6E6567;
      if (v29 != 4)
      {
        v34 = 0xD000000000000018;
        v33 = 0x80000001D28B7B50;
      }

      if (v29 == 3)
      {
        v34 = 0x746E65746E69;
      }

      else
      {
        v32 = v33;
      }

      v35 = 0xE700000000000000;
      v36 = 0x6D726177657270;
      v37 = 0xE800000000000000;
      v38 = 0x7265736F706D6F63;
      if (v29 != 1)
      {
        v38 = 0x64616F4C65636166;
        v37 = 0xEA00000000007265;
      }

      if (v29)
      {
        v36 = v38;
        v35 = v37;
      }

      if (v29 <= 2)
      {
        v39 = v36;
      }

      else
      {
        v39 = v34;
      }

      if (v29 <= 2)
      {
        v40 = v35;
      }

      else
      {
        v40 = v32;
      }

      v41 = sub_1D23D7C84(v39, v40, &v77);

      *(v30 + 4) = v41;
      v42 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v27, v28, v42, "GenerativePlaygroundCreation", "%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1D38A3520](v31, -1, -1);
      MEMORY[0x1D38A3520](v30, -1, -1);
    }

    v44 = *(v0 + 96);
    v43 = *(v0 + 104);
    v46 = *(v0 + 80);
    v45 = *(v0 + 88);
    v47 = *(v0 + 64);
    v48 = *(v0 + 48);
    v49 = *(v0 + 56);
    (*(v47 + 16))(*(v0 + 72), v46, v49);
    sub_1D2873C88();
    swift_allocObject();
    *(v0 + 200) = sub_1D2873C78();
    (*(v47 + 8))(v46, v49);
    (*(v44 + 8))(v43, v45);
    sub_1D28731D8();
    static ExecutionContext.clientIdentity()(v48);
    v50 = sub_1D28729E8();
    (*(*(v50 - 8) + 56))(v48, 0, 1, v50);
    v51 = swift_task_alloc();
    *(v0 + 208) = v51;
    *v51 = v0;
    v51[1] = sub_1D245A9D8;
    v52 = *(v0 + 48);

    return MEMORY[0x1EEE4F5C0](0, 0, v52);
  }

  v76 = v3;

  sub_1D2872618();
  v53 = sub_1D2873CA8();
  v54 = sub_1D2878A38();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = *(v0 + 248);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v77 = v57;
    *v56 = 136315138;
    v58 = 0xE600000000000000;
    v59 = 0xE700000000000000;
    v60 = 0x696A6F6D6E6567;
    if (v55 != 4)
    {
      v60 = 0xD000000000000018;
      v59 = 0x80000001D28B7B50;
    }

    if (v55 == 3)
    {
      v60 = 0x746E65746E69;
    }

    else
    {
      v58 = v59;
    }

    v61 = 0xE700000000000000;
    v62 = 0x6D726177657270;
    v63 = 0xE800000000000000;
    v64 = 0x7265736F706D6F63;
    if (v55 != 1)
    {
      v64 = 0x64616F4C65636166;
      v63 = 0xEA00000000007265;
    }

    if (v55)
    {
      v62 = v64;
      v61 = v63;
    }

    if (v55 <= 2)
    {
      v65 = v62;
    }

    else
    {
      v65 = v60;
    }

    if (v55 <= 2)
    {
      v66 = v61;
    }

    else
    {
      v66 = v58;
    }

    v67 = *(v0 + 160);
    v69 = *(v0 + 112);
    v68 = *(v0 + 120);
    v70 = sub_1D23D7C84(v65, v66, &v77);

    *(v56 + 4) = v70;
    _os_log_impl(&dword_1D226E000, v53, v54, "Assigning prewarm GenerativePlayground to key '%s'.", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x1D38A3520](v57, -1, -1);
    MEMORY[0x1D38A3520](v56, -1, -1);

    (*(v68 + 8))(v67, v69);
  }

  else
  {
    v71 = *(v0 + 160);
    v73 = *(v0 + 112);
    v72 = *(v0 + 120);

    (*(v72 + 8))(v71, v73);
  }

  v74 = *(v0 + 8);

  return v74(v76);
}

uint64_t sub_1D245A9D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[27] = a1;
  v4[28] = v1;

  sub_1D22BD238(v3[6], &qword_1EC6DA428);
  v5 = v3[23];
  v6 = v3[22];
  if (v1)
  {
    v7 = sub_1D245B0A8;
  }

  else
  {
    v7 = sub_1D245AB44;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D245AB44()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1D2873058();
  (*(v2 + 104))(v1, *MEMORY[0x1E69DFF08], v3);
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_1D245AC1C;
  v5 = v0[5];

  return MEMORY[0x1EEE4F728](v5);
}

uint64_t sub_1D245AC1C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 240) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 184);
  v7 = *(v2 + 176);
  if (v0)
  {
    v8 = sub_1D245B414;
  }

  else
  {
    v8 = sub_1D245ADB4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D245ADB4()
{
  v27 = v0;

  sub_1D2872618();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 248);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    v6 = 0xE600000000000000;
    v7 = 0x746E65746E69;
    v8 = 0xE700000000000000;
    v9 = 0x696A6F6D6E6567;
    if (v3 != 4)
    {
      v9 = 0xD000000000000018;
      v8 = 0x80000001D28B7B50;
    }

    if (v3 != 3)
    {
      v7 = v9;
      v6 = v8;
    }

    v10 = 0xE700000000000000;
    v11 = 0x6D726177657270;
    v12 = 0xE800000000000000;
    v13 = 0x7265736F706D6F63;
    if (v3 != 1)
    {
      v13 = 0x64616F4C65636166;
      v12 = 0xEA00000000007265;
    }

    if (v3)
    {
      v11 = v13;
      v10 = v12;
    }

    if (v3 <= 2)
    {
      v14 = v11;
    }

    else
    {
      v14 = v7;
    }

    if (v3 <= 2)
    {
      v15 = v10;
    }

    else
    {
      v15 = v6;
    }

    v24 = *(v0 + 192);
    v16 = *(v0 + 144);
    v17 = *(v0 + 112);
    v18 = sub_1D23D7C84(v14, v15, &v26);

    *(v4 + 4) = v18;
    _os_log_impl(&dword_1D226E000, v1, v2, "GenerativePlayground ready for key '%s'.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1D38A3520](v5, -1, -1);
    MEMORY[0x1D38A3520](v4, -1, -1);

    v24(v16, v17);
  }

  else
  {
    v19 = *(v0 + 192);
    v20 = *(v0 + 144);
    v21 = *(v0 + 112);

    v19(v20, v21);
  }

  sub_1D245B964("GenerativePlaygroundCreation", 28, 2);

  v25 = *(v0 + 216);

  v22 = *(v0 + 8);

  return v22(v25);
}

uint64_t sub_1D245B0A8()
{
  v32 = v0;
  v1 = *(v0 + 224);

  sub_1D245B964("GenerativePlaygroundCreation", 28, 2);

  sub_1D2872618();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v6 = 136315394;
    v9 = 0xE600000000000000;
    v10 = 0x746E65746E69;
    v11 = 0xE700000000000000;
    v12 = 0x696A6F6D6E6567;
    if (v5 != 4)
    {
      v12 = 0xD000000000000018;
      v11 = 0x80000001D28B7B50;
    }

    if (v5 != 3)
    {
      v10 = v12;
      v9 = v11;
    }

    v13 = 0xE700000000000000;
    v14 = 0x6D726177657270;
    v15 = 0xE800000000000000;
    v16 = 0x7265736F706D6F63;
    if (v5 != 1)
    {
      v16 = 0x64616F4C65636166;
      v15 = 0xEA00000000007265;
    }

    if (v5)
    {
      v14 = v16;
      v13 = v15;
    }

    if (v5 <= 2)
    {
      v17 = v14;
    }

    else
    {
      v17 = v10;
    }

    if (v5 <= 2)
    {
      v18 = v13;
    }

    else
    {
      v18 = v9;
    }

    v19 = *(v0 + 224);
    v29 = *(v0 + 136);
    v30 = *(v0 + 192);
    v28 = *(v0 + 112);
    v20 = sub_1D23D7C84(v17, v18, &v31);

    *(v6 + 4) = v20;
    *(v6 + 12) = 2112;
    v21 = v19;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v22;
    *v7 = v22;
    _os_log_impl(&dword_1D226E000, v3, v4, "Terrible things happened when instantiating a new GenerativePlayground for key '%s': %@", v6, 0x16u);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);

    v30(v29, v28);
  }

  else
  {
    v23 = *(v0 + 192);
    v24 = *(v0 + 136);
    v25 = *(v0 + 112);

    v23(v24, v25);
  }

  swift_willThrow();

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D245B414()
{
  v53 = v0;
  v1 = *(v0 + 240);

  sub_1D2872618();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v52 = v8;
    *v6 = 136315394;
    v9 = 0xE600000000000000;
    v10 = 0xE700000000000000;
    v11 = 0x696A6F6D6E6567;
    if (v5 != 4)
    {
      v11 = 0xD000000000000018;
      v10 = 0x80000001D28B7B50;
    }

    if (v5 == 3)
    {
      v11 = 0x746E65746E69;
    }

    else
    {
      v9 = v10;
    }

    v12 = 0xE700000000000000;
    v13 = 0x6D726177657270;
    v14 = 0xE800000000000000;
    v15 = 0x7265736F706D6F63;
    if (v5 != 1)
    {
      v15 = 0x64616F4C65636166;
      v14 = 0xEA00000000007265;
    }

    if (v5)
    {
      v13 = v15;
      v12 = v14;
    }

    if (v5 <= 2)
    {
      v16 = v13;
    }

    else
    {
      v16 = v11;
    }

    if (v5 <= 2)
    {
      v17 = v12;
    }

    else
    {
      v17 = v9;
    }

    v18 = *(v0 + 240);
    v48 = *(v0 + 128);
    v49 = *(v0 + 192);
    v47 = *(v0 + 112);
    v19 = sub_1D23D7C84(v16, v17, &v52);

    *(v6 + 4) = v19;
    *(v6 + 12) = 2112;
    v20 = v18;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v21;
    *v7 = v21;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to prewarm instance with empty configuration for key '%s': %@", v6, 0x16u);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);

    v49(v48, v47);
  }

  else
  {
    v22 = *(v0 + 192);
    v23 = *(v0 + 128);
    v24 = *(v0 + 112);

    v22(v23, v24);
  }

  sub_1D2872618();
  v25 = sub_1D2873CA8();
  v26 = sub_1D2878A38();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 248);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52 = v29;
    *v28 = 136315138;
    v30 = 0xE600000000000000;
    v31 = 0xE700000000000000;
    v32 = 0x696A6F6D6E6567;
    if (v27 != 4)
    {
      v32 = 0xD000000000000018;
      v31 = 0x80000001D28B7B50;
    }

    if (v27 == 3)
    {
      v32 = 0x746E65746E69;
    }

    else
    {
      v30 = v31;
    }

    v33 = 0xE700000000000000;
    v34 = 0x6D726177657270;
    v35 = 0xE800000000000000;
    v36 = 0x7265736F706D6F63;
    if (v27 != 1)
    {
      v36 = 0x64616F4C65636166;
      v35 = 0xEA00000000007265;
    }

    if (v27)
    {
      v34 = v36;
      v33 = v35;
    }

    if (v27 <= 2)
    {
      v37 = v34;
    }

    else
    {
      v37 = v32;
    }

    if (v27 <= 2)
    {
      v38 = v33;
    }

    else
    {
      v38 = v30;
    }

    v50 = *(v0 + 192);
    v39 = *(v0 + 144);
    v40 = *(v0 + 112);
    v41 = sub_1D23D7C84(v37, v38, &v52);

    *(v28 + 4) = v41;
    _os_log_impl(&dword_1D226E000, v25, v26, "GenerativePlayground ready for key '%s'.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1D38A3520](v29, -1, -1);
    MEMORY[0x1D38A3520](v28, -1, -1);

    v50(v39, v40);
  }

  else
  {
    v42 = *(v0 + 192);
    v43 = *(v0 + 144);
    v44 = *(v0 + 112);

    v42(v43, v44);
  }

  sub_1D245B964("GenerativePlaygroundCreation", 28, 2);

  v51 = *(v0 + 216);

  v45 = *(v0 + 8);

  return v45(v51);
}

uint64_t sub_1D245B964(const char *a1, uint64_t a2, int a3)
{
  v26 = a3;
  v27 = a1;
  v3 = sub_1D2873C58();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2873C28();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2873C48();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28720E8();
  v14 = sub_1D2873C38();
  sub_1D2873C68();
  v23 = sub_1D2878BA8();
  result = sub_1D2878EE8();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  v22 = v10;
  if ((v26 & 1) == 0)
  {
    if (v27)
    {
LABEL_9:
      sub_1D2870F78();
      sub_1D2873C98();

      v17 = v24;
      v16 = v25;
      if ((*(v24 + 88))(v5, v25) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v5, v16);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v14, v23, v20, v27, v18, v19, 2u);
      MEMORY[0x1D38A3520](v19, -1, -1);
      v10 = v22;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v27 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D245BCA8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  *(v3 + 88) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D245BCD0, 0, 0);
}

uint64_t sub_1D245BCD0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1D245BDF8;
    v3 = *(v0 + 88);

    return sub_1D2459F68(v3);
  }

  else
  {
    sub_1D245C3EC();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1D245BDF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1D245BF90;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1D245BF20;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D245BF20()
{
  v1 = v0[10];
  v2 = v0[5];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D245BF90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D245BFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  sub_1D28731D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBC08);
  sub_1D245C5DC();
  sub_1D245C630();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBC20);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = a1;
  sub_1D2870F78();
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1D25D7AEC(MEMORY[0x1E69E7CC0]);
  *(v10 + 40) = 0;
  *(v10 + 48) = v12;
  *(v10 + 56) = v11;
  *(v10 + 64) = 0;
  *(v10 + 72) = sub_1D245C56C;
  *(v10 + 80) = v8;
  *(v10 + 88) = sub_1D245C5A0;
  *(v10 + 96) = v8;
  *(v10 + 104) = sub_1D245C5A8;
  *(v10 + 112) = v8;
  *(v10 + 120) = KeyPath;
  sub_1D2870F78();
  return v10;
}

uint64_t sub_1D245C140()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D245C1B0()
{
  result = qword_1EC6DBBF0;
  if (!qword_1EC6DBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DBBF0);
  }

  return result;
}

unint64_t sub_1D245C208()
{
  result = qword_1EC6DBBF8;
  if (!qword_1EC6DBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DBBF8);
  }

  return result;
}

uint64_t sub_1D245C25C@<X0>(uint64_t *a1@<X8>)
{

  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

id sub_1D245C298(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  if (*(v4 + 16) && (v5 = sub_1D25DB1BC(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 16 * v5;
    v8 = *v7;
    sub_1D245C6AC(*v7, *(v7 + 8));
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8;
}

uint64_t sub_1D245C328(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = sub_1D25DB1BC(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D24EB570();
    }

    v9 = *(*(v8 + 56) + 16 * v6);
    sub_1D25D3524(v6, v8);
    *(a2 + 16) = v8;
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

unint64_t sub_1D245C3EC()
{
  result = qword_1EC6DBC00;
  if (!qword_1EC6DBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DBC00);
  }

  return result;
}

uint64_t sub_1D245C440(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *a1;
  swift_beginAccess();
  sub_1D245C694(v2, v3);
  sub_1D25CDD40(v2, v3, v4);
  return swift_endAccess();
}

uint64_t sub_1D245C4C0(uint64_t a1, _BYTE *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D22BC8FC;

  return sub_1D245BCA8(a1, a2, v2);
}

id sub_1D245C56C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D245C298(*a1, v2);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D245C5A8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D245C328(*a1, v2);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_1D245C5DC()
{
  result = qword_1EC6DBC10;
  if (!qword_1EC6DBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DBC10);
  }

  return result;
}

unint64_t sub_1D245C630()
{
  result = qword_1EC6DBC18;
  if (!qword_1EC6DBC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DBC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DBC18);
  }

  return result;
}

id sub_1D245C694(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1D245C6AC(result, a2 & 1);
  }

  return result;
}

id sub_1D245C6AC(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return sub_1D2870F78();
  }
}

void sub_1D245C6B8(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1D245C6D0(a1, a2 & 1);
  }
}

void sub_1D245C6D0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for ConditioningImageGenerationSupport.UnsupportedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D245C780()
{
  result = qword_1EC6DBC28;
  if (!qword_1EC6DBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DBC28);
  }

  return result;
}

uint64_t sub_1D245C7D4()
{
  sub_1D245CA04();
  sub_1D28749B8();
  return v1;
}

uint64_t sub_1D245C810()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal19ComposingFocusState___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ComposingFocusState()
{
  result = qword_1EC6DBC38;
  if (!qword_1EC6DBC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D245C900()
{
  result = sub_1D2871A28();
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

unint64_t sub_1D245C9B0()
{
  result = qword_1ED8A1E20;
  if (!qword_1ED8A1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A1E20);
  }

  return result;
}

unint64_t sub_1D245CA04()
{
  result = qword_1ED89DF08;
  if (!qword_1ED89DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DF08);
  }

  return result;
}

uint64_t sub_1D245CA68()
{
  sub_1D245CAA4();
  sub_1D2875638();
  return v1;
}

unint64_t sub_1D245CAA4()
{
  result = qword_1ED89D6D0;
  if (!qword_1ED89D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D6D0);
  }

  return result;
}

uint64_t sub_1D245CB08(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA160);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_analyticsContext;
    swift_beginAccess();
    v8 = *(v7 + 8);
    if (*(v8 + 16) && (v9 = sub_1D25DB1BC(0), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      swift_endAccess();
      if (v11 > 1.0)
      {
        v12 = type metadata accessor for Analytics.ImageGenerationEventPayload();
        (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
        sub_1D2345DF8(0, 1, 5, v5, 0);
        sub_1D22BD238(v5, &qword_1EC6DA160);
        sub_1D23C7448();
        sub_1D2777E30(a2, v11);
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1D245CCBC(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v83 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v88 = v83 - v8;
  v89 = sub_1D2871F38();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2872008();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v83 - v15;
  swift_getKeyPath();
  v99 = a1;
  sub_1D245E6DC(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v17 = &a1[OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError];
  v18 = a1[OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError + 16];
  if (v18 > 0xFB)
  {
    v19 = sub_1D22F7E14();
    *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = 1;
    v20 = swift_allocObject();
    swift_weakInit();
    sub_1D2870F78();
    sub_1D2758420(v19, sub_1D245E894, v20);
  }

  v84 = v6;
  v22 = *(v17 + 1);
  v99 = *v17;
  v23 = v99;
  v100 = v22;
  v101 = v18;
  v24 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher);
  sub_1D2415B78(v99, v22, v18);
  v91 = v23;
  v90 = v22;
  v92 = v18;
  sub_1D233E72C(v23, v22, v18);
  v83[1] = v24;
  sub_1D23C7044();
  v85 = sub_1D27ED8C8();

  v93 = v2;
  v25 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
  v26 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v27 = *(v11 + 16);
  v27(v16, v25 + v26, v10);
  LOBYTE(v24) = sub_1D2871F78();
  v28 = *(v11 + 8);
  v28(v16, v10);
  v29 = 0;
  v30 = 0;
  if (v24)
  {
    (v27)(v13, v25 + v26, v10, 0);
    v31 = v88;
    sub_1D2871F58();
    v32 = v87;
    v33 = v89;
    if ((*(v87 + 48))(v31, 1, v89) == 1)
    {
      sub_1D22BD238(v31, &qword_1EC6D9D58);
      v28(v13, v10);
      v29 = 0;
      v30 = 0xE000000000000000;
    }

    else
    {
      v34 = v86;
      (*(v32 + 32))(v86, v31, v33);
      v35 = sub_1D2871ED8();
      v37 = v36;
      (*(v32 + 8))(v34, v33);
      v28(v13, v10);
      v30 = v37;
      v29 = v35;
    }
  }

  v38 = sub_1D23DB1E4(&v99, v85 & 1, v29, v30);
  v40 = v39;
  v42 = v41;
  if (sub_1D23DA32C(v38, v39, v41, 9, 0, 6))
  {
    v43 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
    swift_beginAccess();
    v44 = v25 + v43;
    v45 = v84;
    sub_1D245E790(v44, v84);
    v46 = type metadata accessor for SceneConditioningImage();
    if ((*(*(v46 - 8) + 48))(v45, 1, v46) != 1)
    {
      sub_1D22FD92C(v38, v40, v42);
      v40 = 0;
      v42 = 6;
      v38 = 10;
    }

    sub_1D22BD238(v45, &qword_1EC6DA2C8);
  }

  if ((sub_1D23DA32C(v38, v40, v42, 9, 0, 6) & 1) == 0)
  {
    goto LABEL_19;
  }

  v47 = sub_1D23C6DDC();
  sub_1D2558B94(0, v94);

  if (!v95)
  {
    sub_1D22BD238(v94, &qword_1EC6DAD30);
    v96 = 0u;
    v97 = 0u;
    v98 = 0;
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    goto LABEL_18;
  }

  if (!*(&v97 + 1))
  {
LABEL_18:
    sub_1D22BD238(&v96, &qword_1EC6D9A58);
LABEL_19:
    v102 = &type metadata for ImageGeneration.GenerationError;
    v103 = sub_1D233D7E0();
    v60 = v91;
    v61 = v90;
    v99 = v91;
    v100 = v90;
    v62 = v92;
    v101 = v92;
    KeyPath = swift_getKeyPath();
    v88 = v38;
    v87 = v40;
    MEMORY[0x1EEE9AC00](KeyPath);
    v64 = v93;
    v83[-2] = v93;
    v83[-1] = &v99;
    v65 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
    *&v96 = v64;
    v66 = v61;
    v67 = v42;
    sub_1D233E72C(v60, v66, v62);
    sub_1D245E6DC(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    v89 = v65;
    sub_1D28719D8();

    v68 = v87;
    v69 = v88;
    sub_1D22BD238(&v99, &qword_1EC6DA108);
    v70 = v64 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation;
    v71 = *(v64 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);
    if (v71 == 255 || (v72 = *v70, v73 = *(v70 + 1), (sub_1D23DA32C(*v70, v73, v71, v69, v68, v67) & 1) == 0))
    {
      v74 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v74);
      v75 = v93;
      v83[-4] = v93;
      v83[-3] = v69;
      v83[-2] = v68;
      LOBYTE(v83[-1]) = v67;
      v99 = v75;
      sub_1D28719D8();
      v89 = 0;
      v76 = v69;
      v52 = v75;
      sub_1D22FD92C(v76, v68, v67);
    }

    else
    {
      *v70 = v69;
      *(v70 + 1) = v68;
      v70[16] = v67;
      sub_1D22FD918(v72, v73, v71);
      v52 = v93;
      sub_1D22FE198();
      v89 = 0;
    }

    goto LABEL_23;
  }

  sub_1D22FD92C(v38, v40, v42);
  sub_1D227268C(&v96, &v99);
  v48 = type metadata accessor for AddImageConditioningRepresentationOperation();
  v50 = v102;
  v49 = v103;
  v51 = __swift_project_boxed_opaque_existential_1(&v99, v102);
  v52 = v93;
  v53 = sub_1D22FC2DC();
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = v83 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v56, v51, v50, v54);
  v58 = sub_1D27FDCE0(v56, v53, 0, v48, v50, *(v49 + 8));
  v59 = *&v52[OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager];
  sub_1D27FDB14();
  sub_1D27DF058(v58, v59);
  v89 = 0;

  __swift_destroy_boxed_opaque_existential_0(&v99);
LABEL_23:
  v77 = swift_allocObject();
  swift_weakInit();
  v78 = swift_allocObject();
  v79 = v91;
  *(v78 + 16) = v77;
  *(v78 + 24) = v79;
  v80 = v90;
  *(v78 + 32) = v90;
  v81 = v92;
  *(v78 + 40) = v92;
  v82 = swift_getKeyPath();
  v93 = v83;
  MEMORY[0x1EEE9AC00](v82);
  v83[-4] = v52;
  v83[-3] = sub_1D245E768;
  v83[-2] = v78;
  v99 = v52;
  sub_1D2415B78(v79, v80, v81);
  sub_1D245E6DC(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D2870F78();
  sub_1D28719D8();
  sub_1D2415B64(v79, v80, v81);
}

uint64_t sub_1D245D8FC(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4, int a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA160);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = type metadata accessor for Analytics.ImageGenerationEventPayload();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    sub_1D22BCE64();
    v14 = swift_allocError();
    *v15 = a2;
    *(v15 + 8) = a3;
    *(v15 + 16) = a4;
    sub_1D233E72C(a2, a3, a4);
    sub_1D2345DF8(a5, 1, 5, v11, v14);

    return sub_1D22BD238(v11, &qword_1EC6DA160);
  }

  return result;
}

uint64_t sub_1D245DA78()
{
  swift_beginAccess();
  sub_1D2345B60(3);
  return swift_endAccess();
}

id sub_1D245DAEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D245E6DC(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__image);
  *a2 = v4;

  return v4;
}

void sub_1D245DBAC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D277DED8(v1);
}

uint64_t sub_1D245DBDC()
{
  v1 = v0;
  v2 = sub_1D22F7E14();
  swift_getKeyPath();
  sub_1D245E6DC(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  v3 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__image);
  v4 = v3;

  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_analyticsContext;
  result = swift_beginAccess();
  v7 = *(v1 + v5);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v1 + v5) = v9;
LABEL_4:
    v10 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel);
    *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = 0;
    v11 = swift_allocObject();
    swift_weakInit();
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2758420(v10, sub_1D23410CC, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D245DD5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2872008();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v46 = v10;
  v47 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - v12;
  v14 = type metadata accessor for PlaygroundImage();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + *(type metadata accessor for ImageGeneration.PreviewImage(0) + 28));
  if (*(v18 + 16))
  {
    v45 = v8;
    v48 = v13;
    sub_1D239A330(v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v17);
    v19 = sub_1D22F7E14();
    *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = 0;
    v20 = swift_allocObject();
    swift_weakInit();
    sub_1D2870F78();
    sub_1D2758420(v19, sub_1D245E894, v20);

    v52 = 0;
    memset(v51, 0, sizeof(v51));
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v44[-2] = v2;
    v44[-1] = v51;
    v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
    v50 = v2;
    v23 = sub_1D245E6DC(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();

    sub_1D22BD238(v51, &qword_1EC6DA108);
    v24 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation);
    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16) == 255)
    {
      *v24 = 0;
      v24[1] = 0;
      sub_1D22FE198();
    }

    else
    {
      v25 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v25);
      v44[-3] = 0;
      v44[-2] = 0;
      v44[-4] = v2;
      LOBYTE(v44[-1]) = -1;
      *&v51[0] = v2;
      sub_1D28719D8();
    }

    v44[1] = v23;
    v44[2] = v22;
    v30 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v30 + 8);
      ObjectType = swift_getObjectType();
      (*(v31 + 16))(v2, v17, 1, ObjectType, v31);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    sub_1D2345B60(0);
    swift_endAccess();
    v33 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
    v34 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
    swift_beginAccess();
    v44[0] = v17;
    v35 = *(v9 + 16);
    v36 = v33 + v34;
    v37 = v48;
    v38 = v45;
    v35(v48, v36, v45);
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = v47;
    v35(v47, v37, v38);
    v41 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v39;
    (*(v9 + 32))(v42 + v41, v40, v38);
    v43 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v43);
    v44[-4] = v2;
    v44[-3] = sub_1D245E800;
    v44[-2] = v42;
    v49 = v2;
    sub_1D2870F78();
    sub_1D28719D8();

    (*(v9 + 8))(v48, v38);
    sub_1D23D4DFC(v44[0]);
  }

  else
  {
    sub_1D2872658();
    v26 = sub_1D2873CA8();
    v27 = sub_1D2878A18();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D226E000, v26, v27, "Trying to forward preview generation with no image", v28, 2u);
      MEMORY[0x1D38A3520](v28, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1D245E460(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v10 = &type metadata for ImageGeneration.GenerationError;
  v11 = sub_1D233D7E0();
  v8[0] = v2;
  v8[1] = v3;
  v9 = v4;
  swift_getKeyPath();
  sub_1D233E72C(v2, v3, v4);
  sub_1D245E6DC(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();

  sub_1D22BD238(v8, &qword_1EC6DA108);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  swift_getKeyPath();
  v8[0] = v1;
  sub_1D233E72C(v2, v3, v4);
  sub_1D2870F78();
  sub_1D28719D8();
}

uint64_t sub_1D245E6DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_11Tm()
{

  sub_1D22BCDC4(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D245E790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D245E800()
{
  v1 = *(sub_1D2872008() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D245CB08(v2, v3);
}

BOOL sub_1D245E898()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  swift_getKeyPath();
  v13 = v0;
  sub_1D245EB0C();
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 2)
  {
    return 0;
  }

  swift_getKeyPath();
  v13 = v0;
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground))
  {
    return 0;
  }

  sub_1D23015FC(v6);
  v7 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v8 = *(*(v7 - 8) + 48);
  v9 = v8(v6, 1, v7);
  sub_1D245EB64(v6);
  if (v9 == 1)
  {
    return 0;
  }

  sub_1D23015FC(v3);
  v11 = v8(v3, 1, v7) != 1;
  sub_1D245EB64(v3);
  return v11;
}

uint64_t sub_1D245EA7C()
{
  if (sub_1D2302E00())
  {
    v1 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_1D245EB0C();
    sub_1D28719E8();

    v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground) ^ 1;
  }

  return v1 & 1;
}

unint64_t sub_1D245EB0C()
{
  result = qword_1ED8A2520;
  if (!qword_1ED8A2520)
  {
    type metadata accessor for ComposingViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A2520);
  }

  return result;
}

uint64_t sub_1D245EB64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D245EBCC(uint64_t a1)
{
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[3] = 0;
  v1[4] = 0;
  sub_1D2871808();
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationID, v6, v3);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator_bubbleAnimationSignpostIntervalState) = 0;
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState) = 0;
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator____lazy_storage___upscalingAnimation) = 0;
  sub_1D2871A18();
  v1[2] = a1;
  return v1;
}

uint64_t sub_1D245ECE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationID;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1D24602AC(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
  v9 = sub_1D2877F98();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1D24602AC(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
    sub_1D28719D8();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1D245EF64(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState);
  if (v3 == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState) = a1 & 1;

    return sub_1D245FDAC(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24602AC(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
    sub_1D28719D8();
  }
}

uint64_t sub_1D245F0A4()
{
  swift_getKeyPath();
  sub_1D24602AC(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
  sub_1D28719E8();

  v1 = *(v0 + 24);
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D245F154@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24602AC(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
  sub_1D28719E8();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
  return sub_1D2870F68();
}

uint64_t sub_1D245F200(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D245F240(v1, v2);
}

uint64_t sub_1D245F240(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 24) == a1 && v5 == a2;
      if (v6 || (sub_1D2879618() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D24602AC(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
    sub_1D28719D8();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1D245F3B0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1D24602AC(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationID;
  swift_beginAccess();
  v4 = sub_1D2871818();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1D245F4A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24602AC(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationID;
  swift_beginAccess();
  v5 = sub_1D2871818();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D245F5A0(uint64_t a1)
{
  v2 = sub_1D2871818();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1D245ECE4(v5);
}

uint64_t sub_1D245F66C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationID;
  swift_beginAccess();
  v5 = sub_1D2871818();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1D245F708(int a1, char a2)
{
  v3 = v2;
  v6 = sub_1D2873C58();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D2873C48();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v55 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v48[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v48[-v15];
  v58 = sub_1D2873C28();
  v17 = *(v58 - 8);
  v18 = MEMORY[0x1EEE9AC00](v58);
  v54 = &v48[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v48[-v21];
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v48[-v23];
  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  v57 = *(v9 + 8);
  v57(v16, v8);
  v25 = &unk_1ED89F000;
  LODWORD(v56) = a1;
  if (a1 & 1) == 0 && (a2)
  {
    sub_1D28720E8();
    v26 = sub_1D2873C38();
    v27 = sub_1D2878BB8();
    if (sub_1D2878EE8())
    {
      v28 = swift_slowAlloc();
      v50 = v8;
      v29 = v3;
      v30 = v28;
      *v28 = 0;
      v31 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v26, v27, v31, "BubbleAnimation", "", v30, 2u);
      v32 = v30;
      v3 = v29;
      v8 = v50;
      MEMORY[0x1D38A3520](v32, -1, -1);
    }

    (*(v17 + 16))(v22, v24, v58);
    sub_1D2873C88();
    swift_allocObject();
    v33 = sub_1D2873C78();
    v57(v14, v8);
    *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator_bubbleAnimationSignpostIntervalState) = v33;

    v25 = &unk_1ED89F000;
  }

  v34 = v25[101];
  if (!*(v3 + v34) || (v56 & 1) == 0)
  {
    return (*(v17 + 8))(v24, v58);
  }

  swift_getKeyPath();
  v56 = v3;
  v59 = v3;
  sub_1D24602AC(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
  sub_1D2870F78();
  sub_1D28719E8();
  v35 = v56;

  if (*(v35 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState))
  {
    (*(v17 + 8))(v24, v58);
  }

  else
  {
    sub_1D28720E8();
    v37 = sub_1D2873C38();
    v38 = v54;
    sub_1D2873C68();
    v49 = sub_1D2878BA8();
    if (sub_1D2878EE8())
    {
      v50 = v8;
      sub_1D2870F78();
      v39 = v51;
      sub_1D2873C98();

      v41 = v52;
      v40 = v53;
      if ((*(v52 + 88))(v39, v53) == *MEMORY[0x1E69E93E8])
      {
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(v41 + 8))(v39, v40);
        v42 = "";
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      v38 = v54;
      v44 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v37, v49, v44, "BubbleAnimation", v42, v43, 2u);
      MEMORY[0x1D38A3520](v43, -1, -1);
      v35 = v56;
      v8 = v50;
    }

    v45 = *(v17 + 8);
    v46 = v38;
    v47 = v58;
    v45(v46, v58);
    v57(v55, v8);
    v45(v24, v47);
    *(v35 + v34) = 0;
  }
}

uint64_t sub_1D245FD04()
{
  swift_getKeyPath();
  sub_1D24602AC(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState);
}

uint64_t sub_1D245FDAC(char a1)
{
  v3 = sub_1D2871818();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = v1;
  sub_1D24602AC(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
  sub_1D28719E8();

  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState;
  result = sub_1D245F708(a1 & 1, *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState));
  if (a1)
  {
    swift_getKeyPath();
    v10 = v1;
    sub_1D28719E8();

    if ((*(v1 + v6) & 1) == 0)
    {
      sub_1D2871808();
      result = sub_1D245ECE4(v5);
      if (*(v1 + 32))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v9 - 3) = 0;
        *(&v9 - 2) = 0;
        *(&v9 - 4) = v1;
        v10 = v1;
        sub_1D28719D8();
      }

      else
      {
        *(v1 + 24) = 0;
        *(v1 + 32) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D245FFA0(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState);
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState) = a2 & 1;
  return sub_1D245FDAC(v3);
}

uint64_t sub_1D245FFE0()
{

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationID;
  v2 = sub_1D2871818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator___observationRegistrar;
  v4 = sub_1D2871A28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ComposingAnimationCoordinator()
{
  result = qword_1ED89F2F8;
  if (!qword_1ED89F2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2460138()
{
  result = sub_1D2871818();
  if (v1 <= 0x3F)
  {
    result = sub_1D2871A28();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1D2460240()
{
  result = qword_1EC6DBC48;
  if (!qword_1EC6DBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DBC48);
  }

  return result;
}

uint64_t sub_1D24602AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2460310()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
  sub_1D2870F68();
}

uint64_t sub_1D2460350()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState) = *(v0 + 24);
  return sub_1D245FDAC(v2);
}

uint64_t sub_1D24603AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24617F0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldHideEffectStack);
  return result;
}

uint64_t sub_1D2460484(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v2 = sub_1D2877B48();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D2877B68();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1D2877BA8();
  v37 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A20);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = sub_1D2877B38();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2872008();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D22FECC4();
  swift_getKeyPath();
  aBlock[0] = v18;
  sub_1D24617F0(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  (*(v15 + 16))(v17, &v18[v19], v14);
  v20 = v44;

  sub_1D22CAA30(v45, v17);
  (*(v15 + 8))(v17, v14);
  if (qword_1EC6D8930 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v8, qword_1EC6E3B78);
  sub_1D2461454(v21, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D2870F78();
    sub_1D22BD238(v10, &qword_1EC6D9A20);
    sub_1D22C0704(1);
  }

  else
  {
    v22 = v46;
    (*(v12 + 32))(v46, v10, v11);
    sub_1D24614C4();
    v45 = v11;
    v23 = v12;
    sub_1D2870F78();
    v34 = sub_1D2878AB8();
    v24 = v35;
    sub_1D2877B88();
    v25 = v36;
    MEMORY[0x1D38A0630](v24, v22);
    v37 = *(v37 + 8);
    (v37)(v24, v47);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1D246144C;
    *(v26 + 24) = v20;
    aBlock[4] = sub_1D23411A0;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23DFBA8;
    aBlock[3] = &block_descriptor_12;
    v27 = _Block_copy(aBlock);
    sub_1D2870F78();
    v28 = v38;
    sub_1D2877B58();
    v48 = MEMORY[0x1E69E7CC0];
    sub_1D24617F0(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
    sub_1D22D5EFC();
    v29 = v40;
    v30 = v43;
    sub_1D2879088();
    v31 = v34;
    MEMORY[0x1D38A1510](v25, v28, v29, v27);
    _Block_release(v27);

    (*(v42 + 8))(v29, v30);
    (*(v39 + 8))(v28, v41);
    (v37)(v25, v47);
    (*(v23 + 8))(v46, v45);
  }
}

uint64_t sub_1D2460B94()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1D24617F0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v2 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__genmojiDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = sub_1D22FFBF8();
    swift_getKeyPath();
    sub_1D24617F0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719E8();

    v7 = *(v6 + 16);

    if (v7 == 5)
    {
      sub_1D22F7DF4();
      v8 = sub_1D22C3068();

      swift_getKeyPath();
      sub_1D24617F0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
      sub_1D28719E8();

      v9 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
      if (v9)
      {
        v10 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
        sub_1D2870F78();
        v9(0);

        sub_1D22D7900(v9, v10);
      }

      else
      {
      }

      v11 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel);
      if (*(v11 + 123))
      {
        *(v11 + 123) = 1;
        sub_1D2870F78();
        sub_1D22C2EAC();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1D24617F0(&qword_1ED8A0230, type metadata accessor for ComposingFooterViewModel);
        sub_1D2870F78();
        sub_1D28719D8();
      }

      sub_1D2870F78();
      sub_1D22C3068();

      sub_1D27A11B4(0);

      sub_1D2870F78();
      v13 = sub_1D22C3068();

      swift_getKeyPath();
      sub_1D28719E8();

      v14 = *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
      if (v14)
      {
        v15 = *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
        sub_1D2870F78();
        v14(1);

        return sub_1D22D7900(v14, v15);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1D2460FE8(char a1, char a2)
{
  v3 = v2;
  if (a1 & 1) != 0 && (a2)
  {
    sub_1D22FFBF8();
    v5 = sub_1D25A3F44();

    if ((v5 & 1) == 0)
    {
      v13 = sub_1D22F7E14();
      swift_getKeyPath();
      *&v19 = v13;
      sub_1D24617F0(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
      sub_1D28719E8();

      v14 = *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state);
      v15 = *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8);

      if ((v15 & 0x80000000) == 0 || v14 | v15 & 0x7F)
      {
        sub_1D22FFBF8();
        sub_1D25A4614();
LABEL_12:

        goto LABEL_13;
      }
    }
  }

  sub_1D22FFBF8();
  v6 = sub_1D25A3F44();

  if (v6)
  {
    v7 = *(sub_1D22FFBF8() + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
    swift_getKeyPath();
    *&v19 = v7;
    sub_1D24617F0(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
    sub_1D28719E8();

    swift_beginAccess();
    v8 = *(v7 + 16);
    sub_1D2870F68();

    v9 = *(v8 + 16);

    if (!v9)
    {
      v10 = sub_1D22FFBF8();
      if (*(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) != 1)
      {
        *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) = 0;
        goto LABEL_12;
      }

      v11 = v10;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v19 = v11;
      sub_1D24617F0(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
      sub_1D28719D8();
    }
  }

LABEL_13:
  swift_getKeyPath();
  *&v19 = v3;
  sub_1D24617F0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v17 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);
  if (v17 != 255)
  {
    result = sub_1D23DA32C(*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation), *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 8), v17, 9, 0, 6);
    if ((result & 1) != 0 && (a1 & 1) == 0)
    {
      v21 = &type metadata for ImageGeneration.GenerationError;
      v22 = sub_1D233D7E0();
      v19 = xmmword_1D28830A0;
      v20 = -96;
      v18 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v18);
      sub_1D28719D8();

      return sub_1D22BD238(&v19, &qword_1EC6DA108);
    }
  }

  return result;
}

uint64_t sub_1D2461454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D24614C4()
{
  result = qword_1ED89CD50;
  if (!qword_1ED89CD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED89CD50);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D2461528(char a1)
{
  v3 = a1 & 1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldHideEffectStack) == v3)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldHideEffectStack) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v1;
    LOBYTE(v13[-1]) = v3;
    v13[0] = v1;
    sub_1D24617F0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  *(sub_1D22F7E14() + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isAnimationPaused) = v3;
  sub_1D275746C();

  v9 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  (*(v5 + 16))(v7, v9 + v10, v4);
  LOBYTE(v9) = sub_1D2871F78();
  result = (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    v12 = sub_1D22FFBF8();
    if (a1)
    {
      __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager), *(v12 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager + 24));
      sub_1D23B3A78();
    }

    else
    {
      sub_1D25ADE74();
    }
  }

  return result;
}

uint64_t sub_1D24617F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2461838@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v98 = a3;
  v80 = sub_1D2873CB8();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D2872278();
  v92 = *(v87 - 8);
  v5 = MEMORY[0x1EEE9AC00](v87);
  v91 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v75 - v9;
  v10 = type metadata accessor for PlaygroundImage();
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for PhotosPersonImage();
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v86 = &v75 - v14;
  v85 = type metadata accessor for PhotosPersonAsset();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v77 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v75 - v17;
  v89 = type metadata accessor for PersonConditioningImage();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v81 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v75 - v21;
  v23 = type metadata accessor for SceneConditioningImage();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v93 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v75 - v30;
  v96 = sub_1D2463AA0(a1);
  v32 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  sub_1D22BD1D0(a1 + v32, v22, &qword_1EC6DA2C8);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    sub_1D24675D8(v22, v26, type metadata accessor for SceneConditioningImage);
    sub_1D24675D8(v26, v31, type metadata accessor for PlaygroundImage);
    v42 = 0;
    v44 = v96;
    v39 = v97;
    v43 = v95;
    v40 = v93;
    goto LABEL_13;
  }

  sub_1D22BD238(v22, &qword_1EC6DA2C8);
  v33 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(a1 + v33, v99, &qword_1EC6D9A58);
  v34 = v88;
  v35 = (v88 + 56);
  if (v100)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
    v36 = v89;
    v37 = swift_dynamicCast();
    (*(v34 + 56))(v18, v37 ^ 1u, 1, v36);
    v38 = (*(v34 + 48))(v18, 1, v36);
    v39 = v97;
    v40 = v93;
    if (v38 != 1)
    {
      v41 = v81;
      sub_1D24675D8(v18, v81, type metadata accessor for PersonConditioningImage);
      sub_1D2467510(v41 + *(v36 + 20), v31, type metadata accessor for PlaygroundImage);
      sub_1D2467578(v41, type metadata accessor for PersonConditioningImage);
      v42 = 0;
      v43 = v95;
      v44 = v96;
      goto LABEL_13;
    }
  }

  else
  {
    sub_1D22BD238(v99, &qword_1EC6D9A58);
    (*v35)(v18, 1, 1, v89);
    v39 = v97;
    v40 = v93;
  }

  sub_1D22BD238(v18, &qword_1EC6D9A40);
  sub_1D22BD1D0(a1 + v33, v99, &qword_1EC6D9A58);
  v45 = v84;
  v46 = (v84 + 56);
  if (!v100)
  {
    sub_1D22BD238(v99, &qword_1EC6D9A58);
    v47 = v86;
    (*v46)(v86, 1, 1, v85);
    v44 = v96;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v47 = v86;
  v48 = v85;
  v49 = swift_dynamicCast();
  (*(v45 + 56))(v47, v49 ^ 1u, 1, v48);
  v50 = (*(v45 + 48))(v47, 1, v48);
  v44 = v96;
  if (v50 == 1)
  {
LABEL_12:
    sub_1D22BD238(v47, &unk_1EC6DDDC0);
    v42 = 1;
    v43 = v95;
    goto LABEL_13;
  }

  v51 = v47;
  v52 = v77;
  sub_1D24675D8(v51, v77, type metadata accessor for PhotosPersonAsset);
  v43 = v95;
  if (*(v52 + *(v48 + 28)) == 1)
  {
    v53 = v52 + *(v48 + 20);
    v54 = v52;
    v55 = v76;
    sub_1D2467510(v53, v76, type metadata accessor for PhotosPersonImage);
    sub_1D2467578(v54, type metadata accessor for PhotosPersonAsset);
    sub_1D2467510(v55 + *(v75 + 24), v31, type metadata accessor for PlaygroundImage);
    sub_1D2467578(v55, type metadata accessor for PhotosPersonImage);
    v42 = 0;
  }

  else
  {
    sub_1D2467578(v52, type metadata accessor for PhotosPersonAsset);
    v42 = 1;
  }

LABEL_13:
  v56 = v94;
  (*(v94 + 56))(v31, v42, 1, v43);
  sub_1D22BD1D0(v31, v40, &unk_1EC6DE5A0);
  if ((*(v56 + 48))(v40, 1, v43) == 1)
  {
    sub_1D22BD238(v40, &unk_1EC6DE5A0);
  }

  else
  {
    sub_1D24675D8(v40, v39, type metadata accessor for PlaygroundImage);
    if (v90)
    {
      v57 = sub_1D2873AA8();
      v58 = v82;
      (*(*(v57 - 8) + 56))(v82, 1, 1, v57);
      v59 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v58);
      v61 = v60;
      sub_1D22BD238(v58, &qword_1EC6DAE70);
      if (v61 >> 60 == 15)
      {
        v62 = v78;
        sub_1D2872658();
        v63 = sub_1D2873CA8();
        v64 = sub_1D2878A18();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_1D226E000, v63, v64, "Could not encode image to recipe", v65, 2u);
          MEMORY[0x1D38A3520](v65, -1, -1);
        }

        (*(v79 + 8))(v62, v80);
        sub_1D2467578(v39, type metadata accessor for PlaygroundImage);
      }

      else
      {
        sub_1D28717B8();
        sub_1D22D6CF8(v59, v61);
        v70 = v83;
        sub_1D2872218();
        v71 = v87;
        (*(v92 + 104))(v70, *MEMORY[0x1E696E448], v87);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1D27CC8DC(0, v44[2] + 1, 1, v44);
        }

        v73 = v44[2];
        v72 = v44[3];
        if (v73 >= v72 >> 1)
        {
          v44 = sub_1D27CC8DC(v72 > 1, v73 + 1, 1, v44);
        }

        sub_1D22D6D4C(v59, v61);
        sub_1D2467578(v39, type metadata accessor for PlaygroundImage);
        v44[2] = v73 + 1;
        (*(v92 + 32))(v44 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v73, v83, v71);
      }
    }

    else
    {
      sub_1D28717B8();
      v66 = v91;
      sub_1D2872218();
      v67 = v87;
      (*(v92 + 104))(v66, *MEMORY[0x1E696E448], v87);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1D27CC8DC(0, v44[2] + 1, 1, v44);
      }

      v69 = v44[2];
      v68 = v44[3];
      if (v69 >= v68 >> 1)
      {
        v44 = sub_1D27CC8DC(v68 > 1, v69 + 1, 1, v44);
      }

      sub_1D2467578(v39, type metadata accessor for PlaygroundImage);
      v44[2] = v69 + 1;
      (*(v92 + 32))(v44 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v69, v91, v67);
    }
  }

  sub_1D28722D8();
  return sub_1D22BD238(v31, &unk_1EC6DE5A0);
}

uint64_t sub_1D2462694(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40);
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for PersonConditioningImage();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = sub_1D2873CB8();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = sub_1D2872278();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  v2[28] = swift_task_alloc();
  v7 = type metadata accessor for SceneConditioningImage();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = sub_1D2878568();
  v2[33] = sub_1D2878558();
  v8 = swift_task_alloc();
  v2[34] = v8;
  *v8 = v2;
  v8[1] = sub_1D2462974;

  return sub_1D2465598(a2);
}

uint64_t sub_1D2462974(uint64_t a1)
{
  v2 = *v1;
  v2[35] = a1;

  v4 = sub_1D28784F8();
  v2[36] = v4;
  v2[37] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D2462AC0, v4, v3);
}

uint64_t sub_1D2462AC0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 112);
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  sub_1D22BD1D0(v4 + v5, v3, &qword_1EC6DA2C8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(*(v0 + 224), &qword_1EC6DA2C8);
    *(v0 + 336) = *(v0 + 280);
    v6 = *(v0 + 112);
    v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
    swift_beginAccess();
    sub_1D22BD1D0(v6 + v7, v0 + 16, &qword_1EC6D9A58);
    if (!*(v0 + 40))
    {
      v19 = *(v0 + 128);
      v20 = *(v0 + 136);
      v21 = *(v0 + 120);

      sub_1D22BD238(v0 + 16, &qword_1EC6D9A58);
      (*(v20 + 56))(v21, 1, 1, v19);
      goto LABEL_7;
    }

    v8 = *(v0 + 128);
    v9 = *(v0 + 136);
    v10 = *(v0 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
    v11 = swift_dynamicCast();
    (*(v9 + 56))(v10, v11 ^ 1u, 1, v8);
    if ((*(v9 + 48))(v10, 1, v8) == 1)
    {

LABEL_7:
      sub_1D22BD238(*(v0 + 120), &qword_1EC6D9A40);
      sub_1D28722D8();

      v22 = *(v0 + 8);

      return v22();
    }

    v24 = *(v0 + 216);
    v25 = *(v0 + 128);
    sub_1D24675D8(*(v0 + 120), *(v0 + 144), type metadata accessor for PersonConditioningImage);
    *(v0 + 376) = *(v25 + 20);
    v26 = sub_1D2873AA8();
    (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
    v27 = sub_1D2878558();
    *(v0 + 344) = v27;
    v28 = swift_task_alloc();
    *(v0 + 352) = v28;
    *v28 = v0;
    v28[1] = sub_1D2463600;
    v16 = MEMORY[0x1E69E85E0];
    v17 = *(v0 + 216);
    v18 = v27;
  }

  else
  {
    v12 = *(v0 + 216);
    sub_1D24675D8(*(v0 + 224), *(v0 + 248), type metadata accessor for SceneConditioningImage);
    v13 = sub_1D2873AA8();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = sub_1D2878558();
    *(v0 + 304) = v14;
    v15 = swift_task_alloc();
    *(v0 + 312) = v15;
    *v15 = v0;
    v15[1] = sub_1D2462F48;
    v16 = MEMORY[0x1E69E85E0];
    v17 = *(v0 + 216);
    v18 = v14;
  }

  return PlaygroundImage.imageDataWithBackgroundEncoding(_:isolatedOn:)(v17, v18, v16);
}

uint64_t sub_1D2462F48(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  *(v4 + 320) = a1;
  *(v4 + 328) = a2;

  sub_1D22BD238(v5, &qword_1EC6DAE70);
  v6 = *(v3 + 296);
  v7 = *(v3 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1D24630C0, v7, v6);
}

uint64_t sub_1D24630C0()
{
  v1 = *(v0 + 328);
  if (v1 >> 60 == 15)
  {
    sub_1D2872658();
    v2 = sub_1D2873CA8();
    v3 = sub_1D2878A18();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 248);
    v6 = *(v0 + 176);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    if (v4)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D226E000, v2, v3, "Could not encode image to recipe", v9, 2u);
      MEMORY[0x1D38A3520](v9, -1, -1);
    }

    (*(v8 + 8))(v6, v7);
    sub_1D2467578(v5, type metadata accessor for SceneConditioningImage);
    v10 = *(v0 + 280);
  }

  else
  {
    v11 = *(v0 + 320);
    v12 = *(v0 + 208);
    v13 = *(v0 + 184);
    v14 = *(v0 + 192);
    type metadata accessor for PlaygroundImage();
    sub_1D28717B8();
    sub_1D22D6CF8(v11, v1);
    sub_1D2872218();
    (*(v14 + 104))(v12, *MEMORY[0x1E696E448], v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v0 + 280);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1D27CC8DC(0, v10[2] + 1, 1, *(v0 + 280));
    }

    v17 = v10[2];
    v16 = v10[3];
    if (v17 >= v16 >> 1)
    {
      v10 = sub_1D27CC8DC(v16 > 1, v17 + 1, 1, v10);
    }

    v18 = *(v0 + 248);
    v19 = *(v0 + 208);
    v20 = *(v0 + 184);
    v21 = *(v0 + 192);
    sub_1D22D6D4C(*(v0 + 320), *(v0 + 328));
    sub_1D2467578(v18, type metadata accessor for SceneConditioningImage);
    v10[2] = v17 + 1;
    (*(v21 + 32))(v10 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, v19, v20);
  }

  *(v0 + 336) = v10;
  v22 = *(v0 + 112);
  v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(v22 + v23, v0 + 16, &qword_1EC6D9A58);
  if (!*(v0 + 40))
  {
    v28 = *(v0 + 128);
    v29 = *(v0 + 136);
    v30 = *(v0 + 120);

    sub_1D22BD238(v0 + 16, &qword_1EC6D9A58);
    (*(v29 + 56))(v30, 1, 1, v28);
    goto LABEL_14;
  }

  v24 = *(v0 + 128);
  v25 = *(v0 + 136);
  v26 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  v27 = swift_dynamicCast();
  (*(v25 + 56))(v26, v27 ^ 1u, 1, v24);
  if ((*(v25 + 48))(v26, 1, v24) == 1)
  {

LABEL_14:
    sub_1D22BD238(*(v0 + 120), &qword_1EC6D9A40);
    sub_1D28722D8();

    v31 = *(v0 + 8);

    return v31();
  }

  v33 = *(v0 + 216);
  v34 = *(v0 + 128);
  sub_1D24675D8(*(v0 + 120), *(v0 + 144), type metadata accessor for PersonConditioningImage);
  *(v0 + 376) = *(v34 + 20);
  v35 = sub_1D2873AA8();
  (*(*(v35 - 8) + 56))(v33, 1, 1, v35);
  v36 = sub_1D2878558();
  *(v0 + 344) = v36;
  v37 = swift_task_alloc();
  *(v0 + 352) = v37;
  *v37 = v0;
  v37[1] = sub_1D2463600;
  v38 = *(v0 + 216);
  v39 = MEMORY[0x1E69E85E0];

  return PlaygroundImage.imageDataWithBackgroundEncoding(_:isolatedOn:)(v38, v36, v39);
}

uint64_t sub_1D2463600(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  *(v4 + 360) = a1;
  *(v4 + 368) = a2;

  sub_1D22BD238(v5, &qword_1EC6DAE70);
  v6 = *(v3 + 296);
  v7 = *(v3 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1D2463778, v7, v6);
}

uint64_t sub_1D2463778()
{
  v1 = v0[46];

  if (v1 >> 60 == 15)
  {
    sub_1D2872658();
    v2 = sub_1D2873CA8();
    v3 = sub_1D2878A18();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[18];
    v8 = v0[19];
    if (v4)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D226E000, v2, v3, "Could not encode image to recipe", v9, 2u);
      MEMORY[0x1D38A3520](v9, -1, -1);
    }

    (*(v6 + 8))(v5, v8);
    sub_1D2467578(v7, type metadata accessor for PersonConditioningImage);
  }

  else
  {
    v11 = v0[45];
    v10 = v0[46];
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[23];
    type metadata accessor for PlaygroundImage();
    sub_1D28717B8();
    sub_1D22D6CF8(v11, v10);
    sub_1D2872218();
    (*(v13 + 104))(v12, *MEMORY[0x1E696E448], v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v0[42];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1D27CC8DC(0, v16[2] + 1, 1, v0[42]);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1D27CC8DC(v17 > 1, v18 + 1, 1, v16);
    }

    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[23];
    v22 = v0[18];
    sub_1D22D6D4C(v0[45], v0[46]);
    sub_1D2467578(v22, type metadata accessor for PersonConditioningImage);
    v16[2] = v18 + 1;
    (*(v20 + 32))(v16 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18, v19, v21);
  }

  sub_1D28722D8();

  v23 = v0[1];

  return v23();
}

void *sub_1D2463AA0(uint64_t a1)
{
  v156 = sub_1D2872008();
  v159 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v158 = &v135 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1D28722C8();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v138 = &v135 - v5;
  v6 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v137 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for PhotosPersonImage();
  MEMORY[0x1EEE9AC00](v136);
  v144 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v143 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v142 = &v135 - v12;
  v141 = sub_1D2873CB8();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBC50);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v148 = &v135 - v15;
  v155 = sub_1D2872208();
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v146 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for CuratedPrompt();
  v147 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v175 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v198 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_1D2872378();
  v199 = *(v192 - 8);
  v20 = MEMORY[0x1EEE9AC00](v192);
  v191 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v197 = &v135 - v22;
  v23 = type metadata accessor for IdentifiedEntity(0);
  v163 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_1D28723C8();
  v193 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v189 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D2872278();
  v179 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v157 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v150 = &v135 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v145 = &v135 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v149 = &v135 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v135 - v36;
  v38 = sub_1D28723E8();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v165 = &v135 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Prompt(0);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v178 = (&v135 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x1E69E7CC0];
  v207 = MEMORY[0x1E69E7CC0];
  v45 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v160 = a1;
  v46 = *(a1 + v45);
  v47 = *(v46 + 16);
  v164 = v27;
  v174 = v47;
  if (v47)
  {
    v171 = v46 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v182 = *MEMORY[0x1E696E490];
    v187 = (v199 + 104);
    v183 = *MEMORY[0x1E696E488];
    v181 = *MEMORY[0x1E696E480];
    v186 = (v199 + 16);
    v185 = (v199 + 8);
    v184 = v193 + 32;
    v170 = (v39 + 16);
    v169 = *MEMORY[0x1E696E468];
    v168 = (v179 + 104);
    v167 = (v39 + 8);
    v166 = v179 + 32;
    v48 = sub_1D2870F68();
    v49 = 0;
    v180 = v44;
    v50 = v165;
    v188 = v23;
    v162 = v37;
    v161 = v38;
    v173 = v42;
    v172 = v48;
    while (v49 < *(v48 + 16))
    {
      v51 = *(v42 + 72);
      v177 = v49;
      v52 = v178;
      sub_1D2467510(v171 + v51 * v49, v178, type metadata accessor for Prompt);
      v53 = v52[2];
      v196 = v52[1];
      v54 = v52[5];
      v55 = *(v54 + 16);
      if (v55)
      {
        v202 = MEMORY[0x1E69E7CC0];
        v195 = v53;
        sub_1D2870F68();
        sub_1D23D8348(0, v55, 0);
        v56 = v202;
        v57 = v54 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
        v194 = *(v163 + 72);
        while (1)
        {
          sub_1D2467510(v57, v25, type metadata accessor for IdentifiedEntity);
          v58 = v198;
          sub_1D2467510(&v25[*(v23 + 20)], v198, type metadata accessor for IdentifiedEntity.Kind);
          v59 = sub_1D2871818();
          v60 = *(v59 - 8);
          v61 = (*(v60 + 48))(v58, 2, v59);
          v199 = v56;
          if (!v61)
          {
            break;
          }

          v62 = v183;
          if (v61 != 1)
          {
            v63 = &v206;
LABEL_10:
            v62 = *(v63 - 64);
          }

          v64 = v197;
          v65 = v192;
          (*v187)(v197, v62, v192);
          (*v186)(v191, v64, v65);
          sub_1D2870F68();
          sub_1D28721E8();
          v66 = v189;
          sub_1D2872398();
          (*v185)(v64, v65);
          sub_1D2467578(v25, type metadata accessor for IdentifiedEntity);
          v56 = v199;
          v202 = v199;
          v68 = *(v199 + 16);
          v67 = *(v199 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_1D23D8348(v67 > 1, v68 + 1, 1);
            v56 = v202;
          }

          *(v56 + 16) = v68 + 1;
          (*(v193 + 32))(v56 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v68, v66, v190);
          v57 += v194;
          --v55;
          v23 = v188;
          if (!v55)
          {
            v27 = v164;
            v37 = v162;
            v69 = v161;
            v50 = v165;
            goto LABEL_16;
          }
        }

        (*(v60 + 32))(v197, v198, v59);
        v63 = &v205;
        goto LABEL_10;
      }

      sub_1D2870F68();
      v69 = v38;
LABEL_16:
      sub_1D2872358();
      (*v170)(v37, v50, v69);
      (*v168)(v37, v169, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v177;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v180 = sub_1D27CC8DC(0, v180[2] + 1, 1, v180);
      }

      v73 = v180[2];
      v72 = v180[3];
      if (v73 >= v72 >> 1)
      {
        v180 = sub_1D27CC8DC(v72 > 1, v73 + 1, 1, v180);
      }

      v49 = v71 + 1;
      v38 = v69;
      (*v167)(v50, v69);
      v74 = v180;
      v180[2] = v73 + 1;
      (*(v179 + 32))(v74 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v73, v37, v27);
      v207 = v74;
      sub_1D2467578(v178, type metadata accessor for Prompt);
      v48 = v172;
      v42 = v173;
      if (v49 == v174)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

LABEL_22:
  v75 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  v76 = v160;
  swift_beginAccess();
  v77 = *(v76 + v75);
  v78 = *(v77 + 2);
  v79 = MEMORY[0x1E69E7CC0];
  if (v78)
  {
    v202 = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
    sub_1D23D8304(0, v78, 0);
    v79 = v202;
    v80 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v197 = v77;
    v81 = &v77[v80];
    v199 = *(v147 + 72);
    LODWORD(v198) = *MEMORY[0x1E696E450];
    v82 = (v179 + 104);
    v83 = v149;
    do
    {
      v84 = v175;
      sub_1D2467510(v81, v175, type metadata accessor for CuratedPrompt);
      v85 = (v84 + *(v176 + 56));
      v86 = *v85;
      v87 = v85[1];
      sub_1D2870F68();
      sub_1D2467578(v84, type metadata accessor for CuratedPrompt);
      *v83 = v86;
      v83[1] = v87;
      (*v82)(v83, v198, v27);
      v202 = v79;
      v89 = *(v79 + 16);
      v88 = *(v79 + 24);
      if (v89 >= v88 >> 1)
      {
        sub_1D23D8304(v88 > 1, v89 + 1, 1);
        v83 = v149;
        v79 = v202;
      }

      *(v79 + 16) = v89 + 1;
      (*(v179 + 32))(v79 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v89, v83, v27);
      v81 += v199;
      --v78;
    }

    while (v78);

    v76 = v160;
  }

  sub_1D274DE14(v79);
  v90 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v91 = *(v76 + v90);
  v25 = v156;
  v38 = v157;
  if (v91)
  {
    v92 = v91;
    v93 = v148;
    sub_1D2878BE8();
    v94 = v154;
    v95 = v155;
    if ((*(v154 + 48))(v93, 1, v155) == 1)
    {
      sub_1D22BD238(v93, &qword_1EC6DBC50);
      v96 = v139;
      sub_1D28724E8();
      v97 = sub_1D2873CA8();
      v98 = sub_1D2878A18();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_1D226E000, v97, v98, "Failed to convert drawingRecipe to GenerationRecipe.DrawOnImageRecipe", v99, 2u);
        MEMORY[0x1D38A3520](v99, -1, -1);
      }

      (*(v140 + 8))(v96, v141);
    }

    else
    {
      v100 = v93;
      v101 = v146;
      (*(v94 + 32))(v146, v100, v95);
      v102 = *(v94 + 16);
      v103 = v145;
      v102(v145, v101, v95);
      (*(v179 + 104))(v103, *MEMORY[0x1E696E470], v27);
      v104 = v207;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v104 = sub_1D27CC8DC(0, v104[2] + 1, 1, v104);
      }

      v106 = v104[2];
      v105 = v104[3];
      if (v106 >= v105 >> 1)
      {
        v104 = sub_1D27CC8DC(v105 > 1, v106 + 1, 1, v104);
      }

      (*(v154 + 8))(v146, v155);
      v104[2] = v106 + 1;
      (*(v179 + 32))(v104 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v106, v145, v27);
      v207 = v104;
    }
  }

  v107 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(v76 + v107, &v200, &qword_1EC6D9A58);
  if (v201)
  {
    sub_1D227268C(&v200, &v202);
    v108 = v203;
    v109 = v204;
    __swift_project_boxed_opaque_existential_1(&v202, v203);
    (*(v109 + 16))(v108, v109);
    if (v110)
    {
      sub_1D22D7044(&v202, &v200);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      v111 = type metadata accessor for PhotosPersonAsset();
      v112 = v142;
      v113 = swift_dynamicCast();
      v114 = *(*(v111 - 8) + 56);
      if (v113)
      {
        v114(v112, 0, 1, v111);
        v115 = v144;
        sub_1D2467510(v112 + *(v111 + 20), v144, type metadata accessor for PhotosPersonImage);
        sub_1D2467578(v112, type metadata accessor for PhotosPersonAsset);
        sub_1D2870F68();
        sub_1D2467578(v115, type metadata accessor for PhotosPersonImage);
      }

      else
      {
        v114(v112, 1, 1, v111);
        sub_1D22BD238(v112, &unk_1EC6DDDC0);
      }

      sub_1D22D7044(&v202, &v200);
      v116 = v143;
      if (swift_dynamicCast())
      {
        v114(v116, 0, 1, v111);
        v117 = v116 + *(v111 + 20);
        v118 = v144;
        sub_1D2467510(v117, v144, type metadata accessor for PhotosPersonImage);
        sub_1D2467578(v116, type metadata accessor for PhotosPersonAsset);
        v119 = v137;
        sub_1D2467510(v118 + *(v136 + 24), v137, type metadata accessor for PlaygroundImage);
        sub_1D2467578(v118, type metadata accessor for PhotosPersonImage);
        v120 = sub_1D2873AA8();
        v121 = v138;
        (*(*(v120 - 8) + 56))(v138, 1, 1, v120);
        v122 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v121);
        v124 = v123;
        sub_1D22BD238(v121, &qword_1EC6DAE70);
        sub_1D2467578(v119, type metadata accessor for PlaygroundImage);
      }

      else
      {
        v114(v116, 1, 1, v111);
        sub_1D22BD238(v116, &unk_1EC6DDDC0);
        v122 = 0;
        v124 = 0xF000000000000000;
      }

      sub_1D22D6CE4(v122, v124);
      v125 = v151;
      sub_1D28722A8();
      v126 = v150;
      (*(v152 + 16))(v150, v125, v153);
      v27 = v164;
      (*(v179 + 104))(v126, *MEMORY[0x1E696E460], v164);
      v127 = v207;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = sub_1D27CC8DC(0, v127[2] + 1, 1, v127);
      }

      v76 = v160;
      v129 = v127[2];
      v128 = v127[3];
      if (v129 >= v128 >> 1)
      {
        v127 = sub_1D27CC8DC(v128 > 1, v129 + 1, 1, v127);
      }

      sub_1D22D6D4C(v122, v124);
      (*(v152 + 8))(v151, v153);
      v127[2] = v129 + 1;
      (*(v179 + 32))(v127 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v129, v150, v27);
      v207 = v127;
      __swift_destroy_boxed_opaque_existential_0(&v202);
      v38 = v157;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v202);
    }
  }

  else
  {
    sub_1D22BD238(&v200, &qword_1EC6D9A58);
  }

  v130 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  (*(v159 + 16))(v158, v76 + v130, v25);
  if (qword_1ED8A4928 != -1)
  {
LABEL_60:
    swift_once();
  }

  sub_1D23CCEF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
  sub_1D2877EA8();

  sub_1D2871F98();
  sub_1D2871F78();
  sub_1D2872408();
  (*(v179 + 104))(v38, *MEMORY[0x1E696E458], v27);
  v131 = v207;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v131 = sub_1D27CC8DC(0, v131[2] + 1, 1, v131);
  }

  v133 = v131[2];
  v132 = v131[3];
  if (v133 >= v132 >> 1)
  {
    v131 = sub_1D27CC8DC(v132 > 1, v133 + 1, 1, v131);
  }

  (*(v159 + 8))(v158, v25);
  v131[2] = v133 + 1;
  (*(v179 + 32))(v131 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v133, v38, v27);
  return v131;
}

uint64_t sub_1D2465598(uint64_t a1)
{
  v1[38] = a1;
  v2 = sub_1D2872008();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v3 = sub_1D28722C8();
  v1[42] = v3;
  v1[43] = *(v3 - 8);
  v1[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  v1[45] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v1[46] = swift_task_alloc();
  v1[47] = type metadata accessor for PhotosPersonImage();
  v1[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v4 = sub_1D2873CB8();
  v1[51] = v4;
  v1[52] = *(v4 - 8);
  v1[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBC50);
  v1[54] = swift_task_alloc();
  v5 = sub_1D2872208();
  v1[55] = v5;
  v1[56] = *(v5 - 8);
  v1[57] = swift_task_alloc();
  v6 = type metadata accessor for CuratedPrompt();
  v1[58] = v6;
  v1[59] = *(v6 - 8);
  v1[60] = swift_task_alloc();
  type metadata accessor for IdentifiedEntity.Kind(0);
  v1[61] = swift_task_alloc();
  v7 = sub_1D2872378();
  v1[62] = v7;
  v1[63] = *(v7 - 8);
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v8 = type metadata accessor for IdentifiedEntity(0);
  v1[66] = v8;
  v1[67] = *(v8 - 8);
  v1[68] = swift_task_alloc();
  v9 = sub_1D28723C8();
  v1[69] = v9;
  v1[70] = *(v9 - 8);
  v1[71] = swift_task_alloc();
  v10 = sub_1D2872278();
  v1[72] = v10;
  v1[73] = *(v10 - 8);
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v11 = sub_1D28723E8();
  v1[79] = v11;
  v1[80] = *(v11 - 8);
  v1[81] = swift_task_alloc();
  v1[82] = *(type metadata accessor for Prompt(0) - 8);
  v1[83] = swift_task_alloc();
  v1[84] = sub_1D2878568();
  v1[85] = sub_1D2878558();
  v13 = sub_1D28784F8();
  v1[86] = v13;
  v1[87] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D2465BA0, v13, v12);
}

uint64_t sub_1D2465BA0()
{
  v1 = v0;
  v2 = v0[38];
  v3 = MEMORY[0x1E69E7CC0];
  v0[37] = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v160 = v1;
  v157 = *(v5 + 16);
  if (v157)
  {
    v155 = v1[83];
    v6 = v1[80];
    v147 = v1[67];
    v174 = v1[66];
    v7 = v1[63];
    v154 = v1[82];
    v152 = v5 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
    v162 = *MEMORY[0x1E696E490];
    v166 = (v7 + 104);
    v163 = *MEMORY[0x1E696E488];
    v161 = *MEMORY[0x1E696E480];
    v164 = (v7 + 8);
    v165 = (v7 + 16);
    v167 = v1[70];
    v151 = (v6 + 16);
    v150 = *MEMORY[0x1E696E468];
    v148 = (v6 + 8);
    v149 = (v1[73] + 104);
    v153 = v1[73];
    v8 = sub_1D2870F68();
    v9 = 0;
    v10 = v3;
    v156 = v8;
    while (v9 < *(v8 + 16))
    {
      v158 = v10;
      v159 = v9;
      sub_1D2467510(v152 + *(v154 + 72) * v9, v1[83], type metadata accessor for Prompt);
      v11 = *(v155 + 40);
      v12 = *(v11 + 16);
      if (v12)
      {
        sub_1D2870F68();
        sub_1D23D8348(0, v12, 0);
        v13 = v3;
        v14 = v11 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
        v168 = *(v147 + 72);
        do
        {
          v172 = v12;
          v15 = v1[68];
          v16 = v1[61];
          sub_1D2467510(v14, v15, type metadata accessor for IdentifiedEntity);
          sub_1D2467510(v15 + *(v174 + 20), v16, type metadata accessor for IdentifiedEntity.Kind);
          v17 = sub_1D2871818();
          v18 = *(v17 - 8);
          v19 = (*(v18 + 48))(v16, 2, v17);
          v170 = v13;
          if (v19)
          {
            v20 = v163;
            if (v19 != 1)
            {
              v20 = v162;
            }
          }

          else
          {
            (*(v18 + 32))(v1[65], v1[61], v17);
            v20 = v161;
          }

          v21 = v1[68];
          v22 = v1[65];
          v23 = v1[64];
          v24 = v1[62];
          (*v166)(v22, v20, v24);
          (*v165)(v23, v22, v24);
          sub_1D2870F68();
          sub_1D28721E8();
          sub_1D2872398();
          (*v164)(v22, v24);
          sub_1D2467578(v21, type metadata accessor for IdentifiedEntity);
          v13 = v170;
          v26 = v170[2];
          v25 = v170[3];
          if (v26 >= v25 >> 1)
          {
            sub_1D23D8348(v25 > 1, v26 + 1, 1);
            v13 = v170;
          }

          v27 = v1[71];
          v28 = v1[69];
          v13[2] = v26 + 1;
          (*(v167 + 32))(v13 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v26, v27, v28);
          v14 += v168;
          v12 = v172 - 1;
        }

        while (v172 != 1);
        v3 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D2870F68();
      }

      v29 = v1[81];
      v30 = v1[79];
      v31 = v1[78];
      v32 = v1[72];
      sub_1D2872358();
      (*v151)(v31, v29, v30);
      (*v149)(v31, v150, v32);
      v10 = v158;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D27CC8DC(0, v158[2] + 1, 1, v158);
      }

      v34 = v10[2];
      v33 = v10[3];
      if (v34 >= v33 >> 1)
      {
        v10 = sub_1D27CC8DC(v33 > 1, v34 + 1, 1, v10);
      }

      v9 = v159 + 1;
      v35 = v1[83];
      v36 = v1[81];
      v37 = v1[79];
      v38 = v1[78];
      v39 = v160[72];
      (*v148)(v36, v37);
      v10[2] = v34 + 1;
      v40 = v39;
      v1 = v160;
      (*(v153 + 32))(v10 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v34, v38, v40);
      v160[37] = v10;
      sub_1D2467578(v35, type metadata accessor for Prompt);
      v8 = v156;
      if (v159 + 1 == v157)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_63:
    swift_once();
    goto LABEL_55;
  }

LABEL_21:
  v41 = v1[38];
  v42 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v43 = *(v41 + v42);
  v44 = *(v43 + 16);
  v45 = MEMORY[0x1E69E7CC0];
  if (v44)
  {
    v46 = v1[73];
    v47 = v1[59];
    v173 = v1[58];
    v175 = v1[77];
    v177 = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
    sub_1D23D8304(0, v44, 0);
    v45 = v177;
    v48 = v43 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v171 = *(v47 + 72);
    v169 = *MEMORY[0x1E696E450];
    do
    {
      v49 = v1[77];
      v50 = v1[72];
      v51 = v1[60];
      sub_1D2467510(v48, v51, type metadata accessor for CuratedPrompt);
      v52 = (v51 + *(v173 + 56));
      v53 = v1;
      v54 = *v52;
      v55 = v52[1];
      sub_1D2870F68();
      sub_1D2467578(v51, type metadata accessor for CuratedPrompt);
      *v49 = v54;
      *(v175 + 8) = v55;
      (*(v46 + 104))(v49, v169, v50);
      v57 = *(v177 + 16);
      v56 = *(v177 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1D23D8304(v56 > 1, v57 + 1, 1);
      }

      v58 = v53[77];
      v59 = v53[72];
      *(v177 + 16) = v57 + 1;
      (*(v46 + 32))(v177 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v57, v58, v59);
      v48 += v171;
      --v44;
      v1 = v53;
    }

    while (v44);
  }

  v60 = v1[38];
  sub_1D274DE14(v45);
  v61 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v62 = *(v60 + v61);
  if (v62)
  {
    v63 = v1[55];
    v64 = v1[56];
    v65 = v1[54];
    v66 = v62;
    sub_1D2878BE8();
    if ((*(v64 + 48))(v65, 1, v63) == 1)
    {
      sub_1D22BD238(v1[54], &qword_1EC6DBC50);
      sub_1D28724E8();
      v67 = sub_1D2873CA8();
      v68 = sub_1D2878A18();
      v69 = os_log_type_enabled(v67, v68);
      v70 = v1;
      v73 = v1 + 52;
      v72 = v1[52];
      v71 = v73[1];
      v74 = v70[51];
      if (v69)
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1D226E000, v67, v68, "Failed to convert drawingRecipe to GenerationRecipe.DrawOnImageRecipe", v75, 2u);
        MEMORY[0x1D38A3520](v75, -1, -1);
      }

      (*(v72 + 8))(v71, v74);
      v1 = v160;
    }

    else
    {
      v76 = v1[76];
      v77 = v1[73];
      v78 = v1[72];
      v79 = v1[57];
      v80 = v160[56];
      v81 = v160[55];
      (*(v80 + 32))(v79, v160[54], v81);
      (*(v80 + 16))(v76, v79, v81);
      (*(v77 + 104))(v76, *MEMORY[0x1E696E470], v78);
      v82 = v160[37];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_1D27CC8DC(0, v82[2] + 1, 1, v82);
      }

      v84 = v82[2];
      v83 = v82[3];
      if (v84 >= v83 >> 1)
      {
        v82 = sub_1D27CC8DC(v83 > 1, v84 + 1, 1, v82);
      }

      v85 = v160[76];
      v86 = v160[73];
      v87 = v160[72];
      v89 = v160[56];
      v88 = v160[57];
      v90 = v160[55];

      v91 = v90;
      v1 = v160;
      (*(v89 + 8))(v88, v91);
      v82[2] = v84 + 1;
      (*(v86 + 32))(v82 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v84, v85, v87);
      v160[37] = v82;
    }
  }

  v92 = v1[38];
  v93 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(v92 + v93, (v1 + 7), &qword_1EC6D9A58);
  if (v1[10])
  {
    sub_1D227268C((v1 + 7), (v1 + 2));
    v95 = v1[5];
    v94 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v95);
    v1[88] = (*(v94 + 16))(v95, v94);
    v1[89] = v96;
    if (v96)
    {
      sub_1D22D7044((v1 + 2), (v1 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      v97 = type metadata accessor for PhotosPersonAsset();
      v98 = swift_dynamicCast();
      v99 = *(*(v97 - 8) + 56);
      v100 = v1[50];
      if (v98)
      {
        v101 = v1[48];
        v99(v1[50], 0, 1, v97);
        sub_1D2467510(v100 + *(v97 + 20), v101, type metadata accessor for PhotosPersonImage);
        sub_1D2467578(v100, type metadata accessor for PhotosPersonAsset);
        v103 = *v101;
        v102 = v101[1];
        sub_1D2870F68();
        sub_1D2467578(v101, type metadata accessor for PhotosPersonImage);
      }

      else
      {
        v99(v1[50], 1, 1, v97);
        sub_1D22BD238(v100, &unk_1EC6DDDC0);
        v103 = 0;
        v102 = 0;
      }

      v1[91] = v102;
      v1[90] = v103;
      sub_1D22D7044((v1 + 2), (v1 + 17));
      v105 = swift_dynamicCast();
      v106 = v1[49];
      if (v105)
      {
        v108 = v1[47];
        v107 = v1[48];
        v109 = v1[45];
        v110 = v1[46];
        v99(v1[49], 0, 1, v97);
        sub_1D2467510(v106 + *(v97 + 20), v107, type metadata accessor for PhotosPersonImage);
        sub_1D2467578(v106, type metadata accessor for PhotosPersonAsset);
        sub_1D2467510(v107 + *(v108 + 24), v110, type metadata accessor for PlaygroundImage);
        sub_1D2467578(v107, type metadata accessor for PhotosPersonImage);
        v111 = sub_1D2873AA8();
        (*(*(v111 - 8) + 56))(v109, 1, 1, v111);
        v112 = sub_1D2878558();
        v1[92] = v112;
        v113 = swift_task_alloc();
        v1[93] = v113;
        *v113 = v1;
        v113[1] = sub_1D2466E68;
        v114 = MEMORY[0x1E69E85E0];
        v115 = v1[45];

        return PlaygroundImage.imageDataWithBackgroundEncoding(_:isolatedOn:)(v115, v112, v114);
      }

      v99(v106, 1, 1, v97);
      sub_1D22BD238(v106, &unk_1EC6DDDC0);
      v117 = v1[75];
      v118 = v1[73];
      v176 = v1[72];
      v120 = v1[43];
      v119 = v1[44];
      v121 = v1[42];
      sub_1D22D6CE4(0, 0xF000000000000000);
      sub_1D28722A8();
      (*(v120 + 16))(v117, v119, v121);
      (*(v118 + 104))(v117, *MEMORY[0x1E696E460], v176);
      v122 = v1[37];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v122 = sub_1D27CC8DC(0, v122[2] + 1, 1, v122);
      }

      v124 = v122[2];
      v123 = v122[3];
      if (v124 >= v123 >> 1)
      {
        v122 = sub_1D27CC8DC(v123 > 1, v124 + 1, 1, v122);
      }

      v125 = v160[75];
      v126 = v160[73];
      v127 = v160[72];
      v129 = v160[43];
      v128 = v160[44];
      v130 = v160[42];
      sub_1D22D6D4C(0, 0xF000000000000000);
      (*(v129 + 8))(v128, v130);
      v122[2] = v124 + 1;
      v131 = v122 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v124;
      v1 = v160;
      (*(v126 + 32))(v131, v125, v127);
      v160[37] = v122;
      v104 = (v160 + 2);
    }

    else
    {

      v104 = (v1 + 2);
    }

    __swift_destroy_boxed_opaque_existential_0(v104);
  }

  else
  {

    sub_1D22BD238((v1 + 7), &qword_1EC6D9A58);
  }

  v132 = v1[40];
  v133 = v1[41];
  v134 = v1[38];
  v135 = v1[39];
  v136 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  (*(v132 + 16))(v133, v134 + v136, v135);
  if (qword_1ED8A4928 != -1)
  {
    goto LABEL_63;
  }

LABEL_55:
  v137 = v1[74];
  v138 = v1[73];
  v139 = v1[72];
  sub_1D23CCEF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
  sub_1D2877EA8();

  sub_1D2871F98();
  sub_1D2871F78();
  sub_1D2872408();
  (*(v138 + 104))(v137, *MEMORY[0x1E696E458], v139);
  v140 = v160[37];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v140 = sub_1D27CC8DC(0, v140[2] + 1, 1, v140);
  }

  v142 = v140[2];
  v141 = v140[3];
  if (v142 >= v141 >> 1)
  {
    v140 = sub_1D27CC8DC(v141 > 1, v142 + 1, 1, v140);
  }

  v143 = v160[74];
  v144 = v160[73];
  v145 = v160[72];
  (*(v160[40] + 8))();
  v140[2] = v142 + 1;
  (*(v144 + 32))(v140 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v142, v143, v145);

  v146 = v160[1];

  return v146(v140);
}

uint64_t sub_1D2466E68(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *(*v2 + 360);
  *(v4 + 752) = a1;
  *(v4 + 760) = a2;

  sub_1D22BD238(v6, &qword_1EC6DAE70);
  sub_1D2467578(v5, type metadata accessor for PlaygroundImage);
  v7 = *(v3 + 696);
  v8 = *(v3 + 688);

  return MEMORY[0x1EEE6DFA0](sub_1D246701C, v8, v7);
}

uint64_t sub_1D246701C()
{

  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[75];
  v4 = v0[73];
  v5 = v0[43];
  v6 = v0[44];
  v32 = v0[42];
  v33 = v0[72];
  sub_1D22D6CE4(v2, v1);
  v34 = v2;
  v35 = v1;
  sub_1D28722A8();
  (*(v5 + 16))(v3, v6, v32);
  (*(v4 + 104))(v3, *MEMORY[0x1E696E460], v33);
  v7 = v0[37];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1D27CC8DC(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1D27CC8DC(v8 > 1, v9 + 1, 1, v7);
  }

  v10 = v0[75];
  v11 = v0[73];
  v12 = v0[72];
  v14 = v0[43];
  v13 = v0[44];
  v15 = v0[42];
  sub_1D22D6D4C(v34, v35);
  (*(v14 + 8))(v13, v15);
  v7[2] = v9 + 1;
  (*(v11 + 32))(v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, v10, v12);
  v0[37] = v7;
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v17 = v0[40];
  v16 = v0[41];
  v19 = v0[38];
  v18 = v0[39];
  v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  (*(v17 + 16))(v16, v19 + v20, v18);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v21 = v0[74];
  v22 = v0[73];
  v23 = v0[72];
  sub_1D23CCEF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0);
  sub_1D2877EA8();

  sub_1D2871F98();
  sub_1D2871F78();
  sub_1D2872408();
  (*(v22 + 104))(v21, *MEMORY[0x1E696E458], v23);
  v24 = v0[37];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1D27CC8DC(0, v24[2] + 1, 1, v24);
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1D27CC8DC(v25 > 1, v26 + 1, 1, v24);
  }

  v27 = v0[74];
  v28 = v0[73];
  v29 = v0[72];
  (*(v0[40] + 8))();
  v24[2] = v26 + 1;
  (*(v28 + 32))(v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26, v27, v29);

  v30 = v0[1];

  return v30(v24);
}

uint64_t sub_1D2467510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2467578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D24675D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D2467644()
{
  result = qword_1EC6DBC68;
  if (!qword_1EC6DBC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DBC68);
  }

  return result;
}

unint64_t sub_1D246769C()
{
  result = qword_1EC6DBC70;
  if (!qword_1EC6DBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DBC70);
  }

  return result;
}

uint64_t sub_1D2467724()
{
  type metadata accessor for PhotoLibrarySource();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  off_1EC6DBC58 = result;
  return result;
}

uint64_t sub_1D246777C()
{
  if (qword_1EC6D8C68 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = off_1EC6DBC58;
  sub_1D2878568();
  *(v0 + 24) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D246784C, v2, v1);
}

uint64_t sub_1D246784C()
{

  if (qword_1EC6D8C70 != -1)
  {
    swift_once();
  }

  sub_1D2581AAC(*(v0 + 16), qword_1EC6DBC60);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D24678EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  sub_1D2878588();
  v3 = sub_1D28785F8();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1D22AE01C(0, 0, v2, &unk_1D288A478, v4);
}

uint64_t sub_1D24679E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2467A8C;

  return sub_1D246827C(a1);
}

uint64_t sub_1D2467A8C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D2467B8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D2467C30;

  return sub_1D24687F0();
}

uint64_t sub_1D2467C30(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D2467D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D23891A0;

  return MEMORY[0x1EEDB2EC0](a1, a2, a3, a4);
}

unint64_t sub_1D2467E08()
{
  result = qword_1EC6DBC78;
  if (!qword_1EC6DBC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DBC78);
  }

  return result;
}

uint64_t sub_1D2467E90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GeneratedImageEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2467ED8()
{
  result = qword_1EC6DBC88;
  if (!qword_1EC6DBC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DBC90);
    sub_1D2467E90(&qword_1EC6DBC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DBC88);
  }

  return result;
}

uint64_t sub_1D2467F78(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1D2468228();
  *v5 = v2;
  v5[1] = sub_1D22BC8FC;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1D246802C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D22BC8FC;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

id sub_1D24680E8()
{
  if (qword_1EC6D8B40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC6D8B50;
  qword_1EC6DBC60 = qword_1EC6D8B50;

  return v1;
}

uint64_t sub_1D246814C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D24681B8()
{
  v1 = sub_1D2870F68();
  v3 = sub_1D2581984(v1);
  sub_1D257D184(&v3);
  *(v0 + 16) = v3;
}

unint64_t sub_1D2468228()
{
  result = qword_1EC6DBC98;
  if (!qword_1EC6DBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DBC98);
  }

  return result;
}

uint64_t sub_1D246827C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for GeneratedImageEntity();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1D2871818();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  sub_1D2878568();
  v1[9] = sub_1D2878558();
  v5 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D24683CC, v5, v4);
}

size_t sub_1D24683CC()
{

  if (qword_1EC6D8C68 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v1 = v0[2];
    v37 = off_1EC6DBC58;
    v40 = MEMORY[0x1E69E7CC0];
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[7];
      v34 = *(v3 + 16);
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v33 = *(v3 + 72);
      v5 = (v3 + 8);
      v39 = MEMORY[0x1E69E7CC0];
      do
      {
        v6 = v0[8];
        v7 = v0[6];
        v34(v6, v4, v7);
        v8 = v37[2];
        v9 = swift_task_alloc();
        *(v9 + 16) = v6;
        sub_1D2870F68();
        v10 = sub_1D274BD34(sub_1D2468C14, v9, v8);

        v11 = (*v5)(v6, v7);
        if (v10)
        {
          MEMORY[0x1D38A0E30](v11);
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D2878428();
          }

          sub_1D2878488();
          v39 = v40;
        }

        v4 += v33;
        --v2;
      }

      while (v2);
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC0];
    }

    v12 = v39;
    if (v39 >> 62)
    {
      break;
    }

    v13 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_28;
    }

LABEL_12:
    v14 = v12;
    v41 = MEMORY[0x1E69E7CC0];
    result = sub_1D23D8770(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = v41;
    if (v39 >> 62)
    {
      v18 = sub_1D2879368();
      v17 = v14;
    }

    else
    {
      v17 = v14;
      v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    v21 = v0[3];
    v20 = v0[4];
    v35 = v17 & 0xC000000000000001;
    v22 = (v0[7] + 16);
    v38 = v18 & ~(v18 >> 63);
    v36 = v13;
    while (v38 != v19)
    {
      if (v35)
      {
        v23 = MEMORY[0x1D38A1C30](v19);
      }

      else
      {
        v23 = *(v17 + 8 * v19 + 32);
        sub_1D2870F78();
      }

      v25 = v0[5];
      v24 = v0[6];
      v26 = v21[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBCA0);
      v27 = swift_allocObject();
      *(v27 + 32) = 0;
      *(v27 + 16) = xmmword_1D28809A0;
      *(v25 + v26) = v27;
      (*v22)(v25, v23 + *(*v23 + 160), v24);
      v28 = v25 + v21[7];
      *v28 = v19;
      *(v28 + 8) = 0;
      *(v25 + v21[5]) = v23;
      v30 = *(v41 + 16);
      v29 = *(v41 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D23D8770(v29 > 1, v30 + 1, 1);
      }

      v31 = v0[5];
      ++v19;
      *(v41 + 16) = v30 + 1;
      sub_1D2468BB0(v31, v41 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v30);
      v17 = v39;
      if (v36 == v19)
      {

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v13 = sub_1D2879368();
  v12 = v39;
  if (v13)
  {
    goto LABEL_12;
  }

LABEL_28:

  v16 = MEMORY[0x1E69E7CC0];
LABEL_29:

  v32 = v0[1];

  return v32(v16);
}

uint64_t sub_1D24687F0()
{
  v1 = type metadata accessor for GeneratedImageEntity();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1D2878568();
  v0[5] = sub_1D2878558();
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D24688E0, v3, v2);
}

size_t sub_1D24688E0()
{

  if (qword_1EC6D8C68 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v1 = *(off_1EC6DBC58 + 2);
    v2 = v1 >> 62;
    if (v1 >> 62)
    {
      v25 = *(off_1EC6DBC58 + 2);
      v3 = sub_1D2879368();
      v1 = v25;
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      break;
    }

    v28 = MEMORY[0x1E69E7CC0];
    v5 = v1;
    sub_1D2870F68();
    result = sub_1D23D8770(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = v28;
    if (v2)
    {
      v8 = sub_1D2879368();
      v7 = v5;
    }

    else
    {
      v7 = v5;
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    v10 = v0[2];
    v11 = v0[3];
    v26 = v7 & 0xC000000000000001;
    v27 = v8 & ~(v8 >> 63);
    v12 = v7;
    while (v27 != v9)
    {
      v13 = v3;
      if (v26)
      {
        v14 = MEMORY[0x1D38A1C30](v9);
      }

      else
      {
        v14 = *(v7 + 8 * v9 + 32);
        sub_1D2870F78();
      }

      v15 = v0[4];
      v16 = v10[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBCA0);
      v17 = swift_allocObject();
      *(v17 + 32) = 0;
      *(v17 + 16) = xmmword_1D28809A0;
      *(v15 + v16) = v17;
      v18 = *(*v14 + 160);
      v19 = sub_1D2871818();
      (*(*(v19 - 8) + 16))(v15, v14 + v18, v19);
      v20 = v15 + v10[7];
      *v20 = v9;
      *(v20 + 8) = 0;
      *(v15 + v10[5]) = v14;
      v22 = *(v28 + 16);
      v21 = *(v28 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D23D8770(v21 > 1, v22 + 1, 1);
      }

      v23 = v0[4];
      ++v9;
      *(v28 + 16) = v22 + 1;
      sub_1D2468BB0(v23, v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22);
      v3 = v13;
      v7 = v12;
      if (v13 == v9)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

LABEL_18:

  v24 = v0[1];

  return v24(v4);
}

uint64_t sub_1D2468BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedImageEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2468C60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D22BC8FC;

  return sub_1D2467760();
}

uint64_t sub_1D2468D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D28772F8();
  *(a2 + 16) = v15;
  *(a2 + 24) = *(&v15 + 1);
  sub_1D28772F8();
  *(a2 + 32) = v15;
  *(a2 + 40) = *(&v15 + 1);
  sub_1D28772F8();
  *(a2 + 48) = v15;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 72) = 0;
  type metadata accessor for ComposingAnimationCoordinator();
  sub_1D2472B64(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
  *(a2 + 80) = sub_1D28744C8();
  *(a2 + 88) = v4 & 1;
  *(a2 + 96) = swift_getKeyPath();
  *(a2 + 104) = 0;
  *(a2 + 112) = swift_getKeyPath();
  *(a2 + 120) = 0;
  *(a2 + 128) = swift_getKeyPath();
  *(a2 + 136) = 0;
  *(a2 + 144) = swift_getKeyPath();
  *(a2 + 152) = 0;
  v5 = type metadata accessor for ImageConditioningPickerView(0);
  sub_1D2469034();
  sub_1D2875E48();
  v6 = v5[15];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v5[16];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a2 + v5[17];
  type metadata accessor for CGSize(0);
  sub_1D28772F8();
  *v8 = v15;
  *(v8 + 16) = v16;
  v9 = a2 + v5[18];
  sub_1D28772F8();
  *v9 = v15;
  *(v9 + 16) = v16;
  v10 = a2 + v5[19];
  sub_1D28772F8();
  *v10 = v15;
  *(v10 + 16) = v16;
  v11 = a2 + v5[20];
  sub_1D28772F8();
  *v11 = v15;
  *(v11 + 16) = v16;
  v12 = a2 + v5[21];
  sub_1D28772F8();
  *v12 = v15;
  *(v12 + 8) = *(&v15 + 1);
  v13 = a2 + v5[22];
  result = sub_1D28772F8();
  *v13 = v15;
  *(v13 + 8) = *(&v15 + 1);
  *a2 = a1;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_1D2469034()
{
  result = qword_1ED8A5A20;
  if (!qword_1ED8A5A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A5A20);
  }

  return result;
}

void sub_1D24690B0()
{
  sub_1D247AFA4(319, &qword_1ED89D1E0, type metadata accessor for ImageConditioningPickerViewModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1D247A9A4(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1D247A9A4(319, &qword_1ED89D1F0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1D247A9A4(319, &qword_1ED89DFB0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1D247AFA4(319, &unk_1ED89E010, type metadata accessor for ComposingAnimationCoordinator, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1D22F3CC0(319, &qword_1ED89E038, &qword_1EC6DBCB0);
            if (v5 <= 0x3F)
            {
              sub_1D247AFA4(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1D247A9A4(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1D24693B4();
                  if (v8 <= 0x3F)
                  {
                    sub_1D22F3CC0(319, &qword_1ED89DFC0, &qword_1EC6D99B8);
                    if (v9 <= 0x3F)
                    {
                      sub_1D247AFA4(319, &qword_1ED89D178, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
                      if (v10 <= 0x3F)
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
  }
}

void sub_1D24693B4()
{
  if (!qword_1ED89D3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DBCB8);
    sub_1D2469424();
    v0 = sub_1D2875E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89D3B0);
    }
  }
}

unint64_t sub_1D2469424()
{
  result = qword_1ED8A5A08;
  if (!qword_1ED8A5A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DBCB8);
    sub_1D2469034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A5A08);
  }

  return result;
}

uint64_t sub_1D24694C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBD08);
  sub_1D2877308();
  swift_getKeyPath();
  sub_1D2472B64(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  v0 = v4[4];
  v1 = v4[5];
  v2 = v4[6];
  sub_1D2478190(v0, v1);

  if (!v1)
  {
    return 0;
  }

  sub_1D2870F68();
  sub_1D22D70A8(v0, v1);
  return v2;
}

BOOL sub_1D24695E8()
{
  v1 = v0;
  v2 = sub_1D2875628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  v17 = *v0;
  v18 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBD08);
  sub_1D2877308();
  v7 = v16[1];
  swift_getKeyPath();
  v17 = v7;
  sub_1D2472B64(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
  sub_1D28719E8();

  v8 = *(v7 + 24);

  if (v8 != 1)
  {
    return 0;
  }

  v9 = v1[8];
  if (*(v1 + 72) == 1)
  {
    if (v9)
    {
      return 0;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v11 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v9, 0);
    (*(v3 + 8))(v5, v2);
    if (v17)
    {
      return 0;
    }
  }

  v12 = v1 + *(type metadata accessor for ImageConditioningPickerView(0) + 64);
  v13 = *v12;
  if (v12[8] == 1)
  {
    v14 = *v12;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v15 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v13, 0);
    (*(v3 + 8))(v5, v2);
    v14 = v17;
  }

  return v14 != 6;
}

uint64_t sub_1D24698B0()
{
  type metadata accessor for ImageConditioningPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  return sub_1D2877318();
}

double sub_1D2469920()
{
  type metadata accessor for ImageConditioningPickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  sub_1D2877308();
  sub_1D2877308();
  sub_1D2877308();
  return v1 + v1 - v1;
}

uint64_t sub_1D2469A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v82 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = (&v67 - v12);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE38);
  MEMORY[0x1EEE9AC00](v81);
  v71 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v67 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE48);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v67 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE28);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v67 - v20;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE20);
  MEMORY[0x1EEE9AC00](v78);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  v77 = sub_1D2875628();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A5A28 != -1)
  {
    swift_once();
  }

  if (qword_1ED8B0260 == a1 && *algn_1ED8B0268 == a2 || (sub_1D2879618() & 1) != 0)
  {
    goto LABEL_6;
  }

  v53 = *(v6 + 64);
  if (*(v6 + 72) == 1)
  {
    if ((v53 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v54 = sub_1D28762E8();
    v68 = a4;
    v55 = v54;
    sub_1D2873BE8();

    a4 = v68;
    v56 = v75;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v53, 0);
    (*(v76 + 8))(v56, v77);
    if (v85 != 1)
    {
LABEL_20:
      v57 = sub_1D2877848();
      v58 = v70;
      *v70 = v57;
      *(v58 + 8) = v59;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE50);
      sub_1D246CA28(a1, a2, a3, a4, v6, v58 + *(v60 + 44));
      sub_1D24695E8();
      sub_1D2877838();
      sub_1D2875208();
      v61 = v71;
      sub_1D22EC9BC(v58, v71, &qword_1EC6DBE40);
      v62 = (v61 + *(v81 + 36));
      v63 = v90;
      v62[4] = v89;
      v62[5] = v63;
      v62[6] = v91;
      v64 = v86;
      *v62 = v85;
      v62[1] = v64;
      v65 = v88;
      v62[2] = v87;
      v62[3] = v65;
      v66 = v69;
      sub_1D22EC9BC(v61, v69, &qword_1EC6DBE38);
      sub_1D22BD1D0(v66, v80, &qword_1EC6DBE38);
      swift_storeEnumTagMultiPayload();
      sub_1D2478D68();
      sub_1D2478F04();
      sub_1D2875AF8();
      return sub_1D22BD238(v66, &qword_1EC6DBE38);
    }
  }

LABEL_6:
  v27 = *(v6 + 64);
  v28 = *(v6 + 72) == 1;
  v72 = v25;
  if (!v28)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v29 = sub_1D28762E8();
    sub_1D2873BE8();

    v30 = v75;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v27, 0);
    (*(v76 + 8))(v30, v77);
    LOBYTE(v27) = v85;
  }

  *v19 = sub_1D2875918();
  *(v19 + 1) = 0;
  v19[16] = (v27 & 1) == 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE58);
  v32 = sub_1D246A4F8(v6, a1, a2, a3, a4, &v19[*(v31 + 44)]);
  v33 = MEMORY[0x1D38A0390](v32, 0.5, 1.0, 0.0);
  v34 = *(v6 + 96);
  v35 = *(v6 + 104);
  sub_1D2870F78();
  if ((v35 & 1) == 0)
  {
    sub_1D2878A28();
    v36 = sub_1D28762E8();
    sub_1D2873BE8();

    v37 = v75;
    sub_1D2875618();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v76 + 8))(v37, v77);
    v34 = v85;
  }

  if ((!v34 || (swift_getKeyPath(), *&v85 = v34, sub_1D2472B64(&qword_1EC6DBE60, type metadata accessor for GPUIExtensionState), sub_1D28719E8(), , v38 = *(v34 + 16), , v38 == 1)) && (v39 = *(v6 + 24), LOBYTE(v85) = *(v6 + 16), *(&v85 + 1) = v39, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890), sub_1D2877308(), v83 == 1))
  {
    v40 = *(v6 + 8);
    *&v85 = *v6;
    *(&v85 + 1) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBD08);
    sub_1D2877308();
    v41 = v83;
    swift_getKeyPath();
    *&v85 = v41;
    sub_1D2472B64(&qword_1ED8A5860, type metadata accessor for ImageConditioningPickerViewModel);
    sub_1D28719E8();

    v42 = *(v41 + 25);
  }

  else
  {
    v42 = 0;
  }

  v43 = v74;
  sub_1D22EC9BC(v19, v74, &qword_1EC6DBE30);
  v44 = v43 + *(v73 + 36);
  *v44 = v33;
  *(v44 + 8) = v42;
  v45 = v6 + *(type metadata accessor for ImageConditioningPickerView(0) + 72);
  v46 = *(v45 + 16);
  v83 = *v45;
  v84 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  sub_1D2877328();
  v47 = v85;
  v48 = v86;
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v49 + 32) = v48;
  sub_1D22EC9BC(v43, v22, &qword_1EC6DBE28);
  v50 = &v22[*(v78 + 36)];
  *v50 = sub_1D22A585C;
  *(v50 + 1) = 0;
  *(v50 + 2) = sub_1D2478FBC;
  *(v50 + 3) = v49;
  v51 = v72;
  sub_1D22EC9BC(v22, v72, &qword_1EC6DBE20);
  sub_1D22BD1D0(v51, v80, &qword_1EC6DBE20);
  swift_storeEnumTagMultiPayload();
  sub_1D2478D68();
  sub_1D2478F04();
  sub_1D2875AF8();
  return sub_1D22BD238(v51, &qword_1EC6DBE20);
}