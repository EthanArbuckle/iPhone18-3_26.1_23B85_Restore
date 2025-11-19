uint64_t sub_1A38D25AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDAF8);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = (&v55 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB00);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v55 - v8;
  v9 = sub_1A3A2FEE0();
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB08);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v60 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - v15;
  type metadata accessor for ChromeViewModel();
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v59 = sub_1A3A2F650();
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v20 = type metadata accessor for ChromeBottomBar();
  v21 = v20[13];
  v58 = a1;
  v22 = (a1 + v21);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v71 = *v22;
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v55 = KeyPath;
    v24 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    KeyPath = v55;
    (*(v56 + 8))(v11, v9);
    v23 = v71;
  }

  swift_getKeyPath();
  v66 = v23;
  sub_1A3A2F080();

  v25 = *(v23 + 640);
  sub_1A3A2EA60();

  v26 = swift_allocObject();
  *(v26 + 16) = 0x77656956746F6F52;
  *(v26 + 24) = 0xE800000000000000;
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = KeyPath;
  v72 = v18 & 1;
  v28 = v58;
  v29 = v58 + v20[8];
  v30 = *v29;
  v31 = *(v29 + 8);
  v69 = v30;
  v70 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  sub_1A3A30FB0();
  v32 = v67;
  v33 = v68;
  v34 = &v16[*(v12 + 36)];
  *v34 = v66;
  *(v34 + 1) = v32;
  v34[16] = v33;
  v35 = &v34[*(type metadata accessor for DetectInteractionGestureModifier(0) + 20)];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  *&v35[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670);
  swift_storeEnumTagMultiPayload();
  __asm { FMOV            V0.2D, #24.0 }

  *v16 = _Q0;
  *(v16 + 2) = v59;
  v16[24] = v18 & 1;
  *(v16 + 25) = 256;
  *(v16 + 4) = sub_1A38DFB80;
  *(v16 + 5) = v26;
  *(v16 + 6) = sub_1A38C0498;
  *(v16 + 7) = v27;
  v42 = v28 + v20[5];
  v43 = *v42;
  v44 = *(v42 + 8);
  LOBYTE(v66) = v43;
  v67 = v44;
  sub_1A3A30F90();
  v45 = 1;
  v46 = v61;
  if (v69 == 1)
  {
    v47 = sub_1A3A2FF40();
    v48 = v57;
    *v57 = v47;
    *(v48 + 8) = 0;
    *(v48 + 16) = 1;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB18);
    sub_1A38D2C50(v28, v48 + *(v49 + 44));
    sub_1A388F670(v48, v46, &qword_1EB0FDAF8);
    v45 = 0;
  }

  (*(v62 + 56))(v46, v45, 1, v63);
  v50 = v60;
  sub_1A388F6D8(v16, v60, &qword_1EB0FDB08);
  v51 = v64;
  sub_1A388F6D8(v46, v64, &qword_1EB0FDB00);
  v52 = v65;
  sub_1A388F6D8(v50, v65, &qword_1EB0FDB08);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB10);
  sub_1A388F6D8(v51, v52 + *(v53 + 48), &qword_1EB0FDB00);
  sub_1A388F740(v46, &qword_1EB0FDB00);
  sub_1A388F740(v16, &qword_1EB0FDB08);
  sub_1A388F740(v51, &qword_1EB0FDB00);
  return sub_1A388F740(v50, &qword_1EB0FDB08);
}

uint64_t sub_1A38D2C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1A3A2FF20();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB20);
  v11 = v10 - 8;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v47 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40[-v14];
  type metadata accessor for ChromeViewModel();
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v46 = sub_1A3A2F650();
  v17 = v16;
  KeyPath = swift_getKeyPath();
  v18 = type metadata accessor for ChromeBottomBar();
  v19 = (a1 + *(v18 + 72));
  v20 = *v19;
  v43 = v19[1];
  v44 = v20;
  sub_1A3A2EA50();
  v42 = sub_1A3A31530();
  v41 = sub_1A3A30460();
  sub_1A3A31590();
  v22 = v21;
  v24 = v23;
  LOBYTE(v49) = v17 & 1;
  v52 = 0;
  sub_1A3A2FF10();
  (*(v4 + 16))(v7, v9, v3);
  sub_1A38DF31C(&qword_1ED996708, MEMORY[0x1E697F260]);
  v25 = sub_1A3A2F7F0();
  (*(v4 + 8))(v9, v3);
  v26 = (a1 + *(v18 + 24));
  v27 = *v26;
  v28 = *(v26 + 1);
  v52 = v27;
  v53 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  sub_1A3A30FB0();
  v29 = v50;
  v30 = v51;
  v31 = &v15[*(v11 + 44)];
  *v31 = v49;
  *(v31 + 1) = v29;
  v31[16] = v30;
  v32 = &v31[*(type metadata accessor for DetectInteractionGestureModifier(0) + 20)];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  *&v32[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670);
  swift_storeEnumTagMultiPayload();
  v34 = KeyPath;
  *v15 = v46;
  v15[8] = v17 & 1;
  *(v15 + 2) = v34;
  *(v15 + 12) = 0;
  v35 = v43;
  *(v15 + 4) = v44;
  *(v15 + 5) = v35;
  *(v15 + 6) = v42;
  *(v15 + 14) = v41;
  *(v15 + 8) = v22;
  *(v15 + 9) = v24;
  v15[80] = 1;
  *(v15 + 11) = v25;
  v36 = v47;
  sub_1A388F6D8(v15, v47, &qword_1EB0FDB20);
  v37 = v48;
  sub_1A388F6D8(v36, v48, &qword_1EB0FDB20);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB28) + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_1A388F740(v15, &qword_1EB0FDB20);
  return sub_1A388F740(v36, &qword_1EB0FDB20);
}

uint64_t sub_1A38D306C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v3 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD9F8);
  v87 = *(v5 - 8);
  v88 = v5;
  v85 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v74 - v6;
  v7 = type metadata accessor for ChromeBottomBar();
  v8 = v7 - 8;
  v81 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v74 - v13;
  v93 = v15;
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v74 - v16;
  v17 = sub_1A3A2FEE0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v74 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD9C0);
  MEMORY[0x1EEE9AC00](v82);
  v25 = &v74 - v24;
  v26 = v1 + *(v8 + 44);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678);
  v91 = v23;
  v83 = v27;
  v84 = v26;
  sub_1A3A30FB0();
  v28 = sub_1A38D3A2C();
  v76 = sub_1A38CFAC8();
  LOBYTE(v23) = *(v2 + *(v8 + 60) + 8);
  sub_1A3A2EA60();
  if ((v23 & 1) == 0)
  {
    sub_1A3A31C30();
    v29 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v18 + 8))(v20, v17);
  }

  sub_1A3A2EA60();

  v75 = sub_1A392A508();

  v30 = v92;
  sub_1A38DF4FC(v2, v92, type metadata accessor for ChromeBottomBar);
  v31 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v32 = *(v81 + 80);
  v74 = swift_allocObject();
  sub_1A38DEDBC(v30, v74 + v31, type metadata accessor for ChromeBottomBar);
  v78 = type metadata accessor for ChromeBottomBar;
  sub_1A38DF4FC(v2, v14, type metadata accessor for ChromeBottomBar);
  v79 = v32;
  v33 = swift_allocObject();
  v77 = type metadata accessor for ChromeBottomBar;
  sub_1A38DEDBC(v14, v33 + v31, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(v2, v11, type metadata accessor for ChromeBottomBar);
  v34 = swift_allocObject();
  sub_1A38DEDBC(v11, v34 + v31, type metadata accessor for ChromeBottomBar);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD9D8);
  v36 = &v25[v35[18]];
  LOBYTE(v96) = 1;
  sub_1A3A30F80();
  v37 = v95;
  *v36 = v94;
  *(v36 + 1) = v37;
  v38 = &v25[v35[21]];
  v39 = type metadata accessor for ChromeViewModel();
  v40 = sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v80 = v39;
  v81 = v40;
  *v38 = sub_1A3A2F650();
  v38[8] = v41 & 1;
  sub_1A388F6D8(v91, v25, &qword_1EB0FDA00);
  *&v25[v35[13]] = v28;
  v25[v35[14]] = v76 & 1;
  v42 = &v25[v35[15]];
  v43 = v74;
  *v42 = sub_1A38DE248;
  v42[1] = v43;
  v44 = &v25[v35[16]];
  *v44 = sub_1A38DE2E4;
  v44[1] = v33;
  v45 = &v25[v35[17]];
  *v45 = sub_1A38DE2FC;
  v45[1] = v34;
  v46 = &v25[v35[19]];
  v47 = v2;
  v48 = v75 & 1;
  LOBYTE(v96) = v75 & 1;
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A30F80();
  v49 = v95;
  *v46 = v94;
  *(v46 + 1) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA08);
  v50 = swift_allocObject();
  *(v50 + 17) = 2;
  *(v50 + 24) = 0;
  sub_1A3A2F0B0();
  *(v50 + 16) = 0;
  *(v50 + 18) = v48;
  v51 = &v25[v35[20]];
  v96 = v50;
  sub_1A3A30F80();

  sub_1A388F740(v91, &qword_1EB0FDA00);
  v52 = v95;
  *v51 = v94;
  *(v51 + 1) = v52;
  *&v25[*(v82 + 36)] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
  sub_1A3A30310();
  sub_1A38DE13C();
  v53 = v90;
  sub_1A3A30B10();

  sub_1A388F740(v25, &qword_1EB0FD9C0);
  v54 = sub_1A38D3A2C();
  v55 = v92;
  sub_1A38DF4FC(v47, v92, v78);
  v56 = swift_allocObject();
  sub_1A38DEDBC(v55, v56 + v31, v77);
  v93 = sub_1A3A31470();
  v58 = v57;
  v59 = v86;
  v60 = v87;
  v61 = v88;
  (*(v87 + 16))(v86, v53, v88);
  v62 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v63 = (v85 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v60 + 32))(v64 + v62, v59, v61);
  *(v64 + v63) = v54;
  v65 = (v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v65 = sub_1A38DE744;
  v65[1] = v56;
  v66 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD9B8) + 36));
  *v66 = sub_1A38DE7C4;
  v66[1] = v64;
  v66[2] = v93;
  v66[3] = v58;
  v67 = sub_1A3A314E0();
  v68 = v89;
  sub_1A3A30F90();
  LOBYTE(v56) = *(v68 + 1);
  sub_1A38DF564(v68, type metadata accessor for ModeWheelGestureState);
  v69 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD9A8) + 36);
  *v69 = v67;
  *(v69 + 8) = v56;
  v70 = sub_1A3A2F650();
  LOBYTE(v56) = v71;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD978);
  v73 = v53 + *(result + 36);
  *v73 = sub_1A393C140;
  *(v73 + 8) = 0;
  *(v73 + 16) = v70;
  *(v73 + 24) = v56 & 1;
  return result;
}

double sub_1A38D3A2C()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChromeBottomBar();
  v6 = v0 + *(v5 + 44);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v7, 0);
    (*(v2 + 8))(v4, v1);
    result = 0.0;
    if (v13)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0.0;
  if ((v7 & 1) == 0)
  {
LABEL_5:
    v10 = (v0 + *(v5 + 48));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = v10[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750);
    sub_1A3A30F90();
    return *&v12[1];
  }

  return result;
}

uint64_t sub_1A38D3BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDAB8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  sub_1A38D3EA0(a1, &v27 - v9);
  v11 = sub_1A3A30640();
  v12 = a1 + *(type metadata accessor for ChromeBottomBar() + 52);
  v13 = *v12;
  v14 = *(v12 + 8);
  sub_1A3A2EA60();
  if ((v14 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v13 = v28;
  }

  swift_getKeyPath();
  v28 = v13;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v16 = *(v13 + 416);

  if (!v16)
  {
    sub_1A3911D18();
  }

  sub_1A3A2F520();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1A388F670(v10, a2, &qword_1EB0FDAB8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDAC0);
  v26 = a2 + *(result + 36);
  *v26 = v11;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_1A38D3EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDAC8);
  v3 = MEMORY[0x1EEE9AC00](v59);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v53 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDAD0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v53 - v7;
  v57 = type metadata accessor for GlassCircleElementButton();
  MEMORY[0x1EEE9AC00](v57);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A3A2FEE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChromeBottomBar();
  v15 = a1 + v14[13];
  v16 = *v15;
  v17 = *(v15 + 8);
  sub_1A3A2EA60();
  if ((v17 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v16 = v61;
  }

  type metadata accessor for ChromeElementModel();
  v19 = sub_1A39B11D4(22, 2, v16);

  if (v19)
  {
    v20 = v57;
    v21 = *(v57 + 20);
    v22 = *MEMORY[0x1E69816C0];
    v23 = sub_1A3A30EF0();
    (*(*(v23 - 8) + 104))(&v9[v21], v22, v23);
    KeyPath = swift_getKeyPath();
    *v9 = 22;
    *&v9[v20[6]] = 6;
    v25 = &v9[v20[8]];
    type metadata accessor for ChromeViewModel();
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    *v25 = sub_1A3A2F650();
    v25[8] = v26 & 1;
    v27 = &v9[v20[9]];
    *v27 = KeyPath;
    v27[8] = 0;
    sub_1A38DF4FC(v9, v58, type metadata accessor for GlassCircleElementButton);
    swift_storeEnumTagMultiPayload();
    sub_1A38DF31C(&qword_1ED996D38, type metadata accessor for GlassCircleElementButton);
    sub_1A38DF1AC(&qword_1EB0FDAD8, &qword_1EB0FDAC8, &unk_1A3A6F3C0, sub_1A38DF364);
    sub_1A3A301F0();
    return sub_1A38DF564(v9, type metadata accessor for GlassCircleElementButton);
  }

  else
  {
    type metadata accessor for ChromeViewModel();
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    v54 = sub_1A3A2F650();
    v30 = v29;
    v53 = swift_getKeyPath();
    v31 = (a1 + v14[18]);
    v32 = *v31;
    v33 = v31[1];
    sub_1A3A2EA50();
    v34 = sub_1A3A31530();
    v35 = sub_1A3A30460();
    sub_1A3A31590();
    v37 = v36;
    v39 = v38;
    v40 = v30 & 1;
    v67 = v30 & 1;
    v66 = 0;
    v41 = sub_1A38D1650();
    v42 = (a1 + v14[6]);
    v43 = *v42;
    v44 = *(v42 + 1);
    if (v41)
    {
      v45 = 1.0;
    }

    else
    {
      v45 = 0.0;
    }

    v64 = v43;
    v65 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
    sub_1A3A30FB0();
    v46 = v62;
    v47 = v63;
    v48 = &v5[*(v59 + 36)];
    *v48 = v61;
    *(v48 + 1) = v46;
    v48[16] = v47;
    v49 = &v48[*(type metadata accessor for DetectInteractionGestureModifier(0) + 20)];
    *v49 = swift_getKeyPath();
    v49[8] = 0;
    v50 = *(type metadata accessor for ChromeScenePhase(0) + 20);
    *&v49[v50] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670);
    swift_storeEnumTagMultiPayload();
    v51 = v53;
    *v5 = v54;
    v5[8] = v40;
    *(v5 + 2) = v51;
    *(v5 + 12) = 0;
    *(v5 + 4) = v32;
    *(v5 + 5) = v33;
    *(v5 + 6) = v34;
    *(v5 + 14) = v35;
    *(v5 + 8) = v37;
    *(v5 + 9) = v39;
    v5[80] = 1;
    *(v5 + 11) = v45;
    v52 = v55;
    sub_1A388F670(v5, v55, &qword_1EB0FDAC8);
    sub_1A388F6D8(v52, v58, &qword_1EB0FDAC8);
    swift_storeEnumTagMultiPayload();
    sub_1A38DF31C(&qword_1ED996D38, type metadata accessor for GlassCircleElementButton);
    sub_1A38DF1AC(&qword_1EB0FDAD8, &qword_1EB0FDAC8, &unk_1A3A6F3C0, sub_1A38DF364);
    sub_1A3A301F0();
    return sub_1A388F740(v52, &qword_1EB0FDAC8);
  }
}

uint64_t sub_1A38D45AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  sub_1A38D4870(a1, &v27 - v9);
  v11 = sub_1A3A30650();
  v12 = a1 + *(type metadata accessor for ChromeBottomBar() + 52);
  v13 = *v12;
  v14 = *(v12 + 8);
  sub_1A3A2EA60();
  if ((v14 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v13 = v28;
  }

  swift_getKeyPath();
  v28 = v13;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v16 = *(v13 + 416);

  if (!v16)
  {
    sub_1A3911D18();
  }

  sub_1A3A2F520();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1A388F670(v10, a2, &qword_1EB0FDA60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA68);
  v26 = a2 + *(result + 36);
  *v26 = v11;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_1A38D4870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = type metadata accessor for GlassCircleElementButton();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA70);
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v67 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA78);
  v7 = MEMORY[0x1EEE9AC00](v79);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v67 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA80);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v67 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA88);
  MEMORY[0x1EEE9AC00](v77);
  v12 = &v67 - v11;
  v13 = sub_1A3A2FEE0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ChromeBottomBar();
  v18 = *(v17 + 52);
  v72 = a1;
  v19 = (a1 + v18);
  v20 = *v19;
  LODWORD(a1) = *(v19 + 8);
  sub_1A3A2EA60();
  v21 = v20;
  v70 = a1;
  if ((a1 & 1) == 0)
  {
    sub_1A3A31C30();
    v22 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v21 = v81;
  }

  v68 = v14;
  v69 = v13;
  swift_getKeyPath();
  v81 = v21;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v23 = *(v21 + 592);

  LOBYTE(v23) = sub_1A3990440(v23);
  v24 = v3[5];
  v25 = sub_1A3A30EF0();
  v26 = *(*(v25 - 8) + 104);
  if (v23)
  {
    v26(&v12[v24], *MEMORY[0x1E69816E0], v25);
    KeyPath = swift_getKeyPath();
    *v12 = 34;
    *&v12[v3[6]] = 7;
    v28 = &v12[v3[8]];
    type metadata accessor for ChromeViewModel();
    *v28 = sub_1A3A2F650();
    v28[8] = v29 & 1;
    v30 = &v12[v3[9]];
    *v30 = KeyPath;
    v30[8] = 0;
    v31 = sub_1A3A2F650();
    LOBYTE(KeyPath) = v32;
    v33 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDAA0) + 36)];
    *v33 = 1;
    *(v33 + 1) = v31;
    v33[16] = KeyPath & 1;
    v34 = sub_1A3A2F650();
    LOBYTE(KeyPath) = v35;
    v36 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA98) + 36)];
    *v36 = v34;
    v36[8] = KeyPath & 1;
    v37 = sub_1A3A2F650();
    v39 = v38;
    v40 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA90) + 36)];
    *v40 = 1;
    *(v40 + 1) = v37;
    v40[16] = v39 & 1;
    sub_1A3A2EA60();
    if ((v70 & 1) == 0)
    {
      sub_1A3A31C30();
      v41 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v68 + 8))(v16, v69);
      v20 = v81;
    }

    swift_getKeyPath();
    v81 = v20;
    sub_1A3A2F080();

    v42 = *(v20 + 1179);

    v43 = swift_getKeyPath();
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    v45 = v78;
    v46 = &v12[*(v77 + 36)];
    *v46 = v43;
    v46[1] = sub_1A38BF6A0;
    v46[2] = v44;
    v47 = &qword_1EB0FDA88;
    sub_1A388F6D8(v12, v45, &qword_1EB0FDA88);
    swift_storeEnumTagMultiPayload();
    sub_1A38DEE24();
    sub_1A38DF1AC(&qword_1EB0FDAA8, &qword_1EB0FDA78, &unk_1A3A6F2F8, sub_1A38DF260);
    sub_1A3A301F0();
    v48 = v12;
  }

  else
  {
    v26(&v5[v24], *MEMORY[0x1E69816C0], v25);
    v49 = swift_getKeyPath();
    *v5 = 8;
    *&v5[v3[6]] = 7;
    v50 = &v5[v3[8]];
    type metadata accessor for ChromeViewModel();
    *v50 = sub_1A3A2F650();
    v50[8] = v51 & 1;
    v52 = &v5[v3[9]];
    *v52 = v49;
    v52[8] = 0;
    v53 = v72;
    if (sub_1A38D1AD0())
    {
      v54 = 1.0;
    }

    else
    {
      v54 = 0.0;
    }

    v55 = v74;
    sub_1A38DEDBC(v5, v74, type metadata accessor for GlassCircleElementButton);
    *(v55 + *(v71 + 36)) = v54;
    v56 = (v53 + *(v17 + 28));
    v57 = *v56;
    v58 = *(v56 + 1);
    v84 = v57;
    v85 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
    sub_1A3A30FB0();
    v59 = v82;
    v60 = v83;
    v61 = v73;
    v62 = &v73[*(v79 + 36)];
    *v62 = v81;
    *(v62 + 1) = v59;
    v62[16] = v60;
    v63 = &v62[*(type metadata accessor for DetectInteractionGestureModifier(0) + 20)];
    *v63 = swift_getKeyPath();
    v63[8] = 0;
    v64 = *(type metadata accessor for ChromeScenePhase(0) + 20);
    *&v63[v64] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670);
    swift_storeEnumTagMultiPayload();
    sub_1A388F670(v55, v61, &qword_1EB0FDA70);
    v47 = &qword_1EB0FDA78;
    v65 = v75;
    sub_1A388F670(v61, v75, &qword_1EB0FDA78);
    sub_1A388F6D8(v65, v78, &qword_1EB0FDA78);
    swift_storeEnumTagMultiPayload();
    sub_1A38DEE24();
    sub_1A38DF1AC(&qword_1EB0FDAA8, &qword_1EB0FDA78, &unk_1A3A6F2F8, sub_1A38DF260);
    sub_1A3A301F0();
    v48 = v65;
  }

  return sub_1A388F740(v48, v47);
}

uint64_t sub_1A38D51B0(uint64_t a1)
{
  v2 = type metadata accessor for ChromeBottomBar();
  v42 = *(v2 - 1);
  v3 = *(v42 + 8);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + v2[13];
  v9 = *v8;
  v10 = *(v8 + 8);
  sub_1A3A2EA60();
  v11 = v9;
  v46 = v10;
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v12 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v11 = v52;
  }

  v44 = v4;
  v45 = v5;
  swift_getKeyPath();
  *&v52 = v11;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(v11 + 1068) == 1)
  {
  }

  v13 = *(sub_1A395BE78(v11) + 16);

  if (!v13)
  {
  }

  swift_getKeyPath();
  *&v52 = v11;
  sub_1A3A2F080();

  v14 = *(v11 + 608);

  if ((v14 & 1) == 0)
  {
    v16 = (a1 + v2[12]);
    v17 = v16[1];
    v52 = *v16;
    v53 = v17;
    v54 = v16[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750);
    result = sub_1A3A30F90();
    if ((v51 & 1) == 0)
    {
      sub_1A3A2EA60();
      v18 = v9;
      v19 = v45;
      if ((v46 & 1) == 0)
      {
        sub_1A3A31C30();
        v20 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v19 + 8))(v7, v44);
        v18 = v52;
      }

      v21 = sub_1A395BE78(v18);

      v22 = *(v21 + 16);

      if (v22)
      {
        v41 = type metadata accessor for ChromeBottomBar;
        v23 = v43;
        sub_1A38DF4FC(a1, v43, type metadata accessor for ChromeBottomBar);
        sub_1A3A31AA0();
        v24 = sub_1A3A31A90();
        v25 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v26 = swift_allocObject();
        v27 = MEMORY[0x1E69E85E0];
        *(v26 + 16) = v24;
        *(v26 + 24) = v27;
        v42 = type metadata accessor for ChromeBottomBar;
        sub_1A38DEDBC(v23, v26 + v25, type metadata accessor for ChromeBottomBar);
        sub_1A38DF4FC(a1, v23, v41);
        v28 = sub_1A3A31A90();
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        *(v29 + 24) = MEMORY[0x1E69E85E0];
        sub_1A38DEDBC(v23, v29 + v25, v42);
        sub_1A3A311C0();
        LOBYTE(v49) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
        sub_1A3A311A0();

        sub_1A3A2EA60();
        v30 = v9;
        if ((v46 & 1) == 0)
        {
          sub_1A3A31C30();
          v31 = sub_1A3A305C0();
          sub_1A3A2F270();

          sub_1A3A2FED0();
          swift_getAtKeyPath();

          (*(v45 + 8))(v7, v44);
          v30 = v52;
        }

        v32 = v30[153];
        v33 = v30[154];
        __swift_project_boxed_opaque_existential_1(v30 + 150, v32);
        (*(v33 + 8))(4, 0, 0, 96, v30, v32, v33);

        sub_1A3A2EA60();
        if ((v46 & 1) == 0)
        {
          sub_1A3A31C30();
          v34 = sub_1A3A305C0();
          sub_1A3A2F270();

          sub_1A3A2FED0();
          swift_getAtKeyPath();

          (*(v45 + 8))(v7, v44);
          v9 = v52;
        }

        v35 = v9[153];
        v36 = v9[154];
        __swift_project_boxed_opaque_existential_1(v9 + 150, v35);
        (*(v36 + 8))(4, 0, 0, 92, v9, v35, v36);
      }

      else
      {
        v37 = (a1 + v2[10]);
        v39 = *v37;
        v38 = v37[1];
        *&v52 = *v37;
        *(&v52 + 1) = v38;
        sub_1A3A2EA60();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD720);
        result = sub_1A3A30F90();
        if (__OFADD__(v48, 1))
        {
          __break(1u);
          return result;
        }

        v49 = v39;
        v50 = v38;
        v47 = v48 + 1;
        sub_1A3A30FA0();
      }
    }
  }

  return result;
}

uint64_t sub_1A38D5900@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a1;
  v5 = sub_1A3A2FEE0();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A3A310F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1A38D5F70();
  if (qword_1ED996458 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_1ED99D850);
  v13 = *(v8 + 16);
  v13(v10, v12, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA40);
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48) - 8);
  v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A3A681C0;
  v17 = v16 + v15;
  v13(v17, v10, v7);
  *(v17 + v14[13]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA50);
  v18 = swift_allocObject();
  *(v18 + 40) = 0;
  v19 = *(*v18 + 136);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA58);
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *(v18 + *(*v18 + 144)) = 0x3FA1111111111111;
  sub_1A3A2F0B0();
  (*(v8 + 8))(v10, v7);
  *(v18 + 16) = v16;
  *(v18 + 24) = xmmword_1A3A6EB10;
  v50 = v18;
  sub_1A3A30F80();
  v21 = v51;
  v45 = v52;
  KeyPath = swift_getKeyPath();
  v43 = sub_1A38D14F8();
  v22 = (a2 + *(type metadata accessor for ChromeBottomBar() + 52));
  v23 = *v22;
  v24 = *(v22 + 8);
  sub_1A3A2EA60();
  v25 = v23;
  if ((v24 & 1) == 0)
  {
    sub_1A3A31C30();
    v26 = sub_1A3A305C0();
    sub_1A3A2F270();

    v27 = v47;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v48 + 8))(v27, v49);
    v25 = v51;
  }

  swift_getKeyPath();
  v51 = v25;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v42 = *(v25 + 848);
  v28 = *(v25 + 856);

  if (v28)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v50) = 0;
    v41 = sub_1A3A30460();
    v30 = v50;
    v31 = sub_1A38D14F8();
    sub_1A3A2EA60();
    if ((v24 & 1) == 0)
    {
      sub_1A3A31C30();
      v32 = sub_1A3A305C0();
      sub_1A3A2F270();

      v33 = v47;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v48 + 8))(v33, v49);
      v23 = v51;
    }

    v34 = v21;
    swift_getKeyPath();
    v51 = v23;
    sub_1A3A2F080();

    v35 = *(v23 + 848);
    v36 = *(v23 + 856);

    if ((v36 & 1) == 0)
    {
      v37 = (v43 & 1) == 0;
      v38 = v46 & 1;
      result = sub_1A3A30470();
      *a3 = v11;
      *(a3 + 8) = v38;
      v39 = v45;
      *(a3 + 16) = v34;
      *(a3 + 24) = v39;
      *(a3 + 32) = xmmword_1A3A6EB20;
      *(a3 + 48) = KeyPath;
      *(a3 + 56) = v30;
      *(a3 + 64) = v37;
      *(a3 + 72) = 0x70756F4C65646F4DLL;
      *(a3 + 80) = 0xE900000000000065;
      *(a3 + 88) = v42;
      *(a3 + 96) = v41;
      *(a3 + 100) = 1;
      *(a3 + 104) = (v31 & 1) == 0;
      *(a3 + 112) = 0xD000000000000015;
      *(a3 + 120) = 0x80000001A3AA2000;
      *(a3 + 128) = v35;
      *(a3 + 136) = result;
      *(a3 + 140) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

double sub_1A38D5F70()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChromeBottomBar();
  v6 = v0 + *(v5 + 44);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v7, 0);
    (*(v2 + 8))(v4, v1);
    result = 24.0;
    if (v13)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 24.0;
  if ((v7 & 1) == 0)
  {
LABEL_5:
    v10 = (v0 + *(v5 + 48));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = v10[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750);
    sub_1A3A30F90();
    return (v12[1] * 0.5 + 1.0) * 24.0;
  }

  return result;
}

uint64_t sub_1A38D6138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v108 = type metadata accessor for ChromeBottomControlPanel();
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8C0);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v100 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8C8);
  MEMORY[0x1EEE9AC00](v101);
  v105 = &v100 - v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8D0);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v100 - v6;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8D8);
  v7 = MEMORY[0x1EEE9AC00](v122);
  v104 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v100 - v9;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8E0);
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v100 - v10;
  v112 = sub_1A3A2FEE0();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for ChromeControlPanelExpandedContent();
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8E8);
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v100 - v13;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8F0);
  v14 = MEMORY[0x1EEE9AC00](v119);
  v114 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v116 = &v100 - v16;
  v124 = type metadata accessor for ChromeBottomBar();
  v17 = *(v124 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v19 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A38DF4FC(a1, v19, type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v20 = sub_1A3A31A90();
  v21 = *(v17 + 80);
  v123 = ~v21;
  v22 = (v21 + 32) & ~v21;
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 16) = v20;
  *(v23 + 24) = v24;
  sub_1A38DEDBC(v19, v23 + v22, type metadata accessor for ChromeBottomBar);
  v127 = a1;
  sub_1A38DF4FC(a1, v19, type metadata accessor for ChromeBottomBar);
  v25 = sub_1A3A31A90();
  v126 = v18;
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  sub_1A38DEDBC(v19, v26 + v22, type metadata accessor for ChromeBottomBar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728);
  sub_1A3A311C0();
  v27 = v130;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730);
  MEMORY[0x1A58F7010](v128, v28);
  v29 = v128[0];
  if (v128[0] == 35)
  {

    sub_1A3890F1C(v27);
    v30 = v127;
    sub_1A38DF4FC(v127, v19, type metadata accessor for ChromeBottomBar);
    v31 = sub_1A3A31A90();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = MEMORY[0x1E69E85E0];
    sub_1A38DEDBC(v19, v32 + v22, type metadata accessor for ChromeBottomBar);
    sub_1A38DF4FC(v30, v19, type metadata accessor for ChromeBottomBar);
    v33 = sub_1A3A31A90();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = MEMORY[0x1E69E85E0];
    sub_1A38DEDBC(v19, v34 + v22, type metadata accessor for ChromeBottomBar);
    sub_1A3A311C0();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
    MEMORY[0x1A58F7010](v128, v35);
    LOBYTE(v31) = v128[0];

    if ((v31 & 1) == 0)
    {
      v63 = 1;
      v64 = v125;
LABEL_19:
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8F8);
      return (*(*(v99 - 8) + 56))(v64, v63, 1, v99);
    }

    sub_1A38DF4FC(v30, v19, type metadata accessor for ChromeBottomBar);
    v36 = (v21 + 16) & v123;
    v37 = swift_allocObject();
    sub_1A38DEDBC(v19, v37 + v36, type metadata accessor for ChromeBottomBar);
    KeyPath = swift_getKeyPath();
    v39 = v108;
    v40 = v109;
    *&v109[*(v108 + 28)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
    swift_storeEnumTagMultiPayload();
    *v40 = sub_1A38DD80C;
    *(v40 + 8) = v37;
    v128[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD900);
    sub_1A3A30F80();
    *(v40 + 16) = v129;
    sub_1A3A30320();
    v41 = v40 + *(v39 + 32);
    type metadata accessor for ChromeViewModel();
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    *v41 = sub_1A3A2F650();
    *(v41 + 8) = v42 & 1;
    v43 = sub_1A38D14F8();
    v44 = v30 + *(v124 + 52);
    v45 = *v44;
    LOBYTE(v41) = *(v44 + 8);
    sub_1A3A2EA60();
    if ((v41 & 1) == 0)
    {
      sub_1A3A31C30();
      v46 = sub_1A3A305C0();
      sub_1A3A2F270();

      v47 = v110;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v111 + 8))(v47, v112);
      v45 = v129;
    }

    swift_getKeyPath();
    *&v129 = v45;
    sub_1A3A2F080();

    v48 = *(v45 + 848);
    v49 = *(v45 + 856);

    if ((v49 & 1) == 0)
    {
      v51 = sub_1A3A30470();
      v52 = v102;
      sub_1A38DEDBC(v40, v102, type metadata accessor for ChromeBottomControlPanel);
      v53 = v52 + *(v100 + 36);
      *v53 = (v43 & 1) == 0;
      *(v53 + 8) = 0xD000000000000015;
      *(v53 + 16) = 0x80000001A3AA2000;
      *(v53 + 24) = v48;
      *(v53 + 32) = v51;
      *(v53 + 36) = 1;
      sub_1A38D2024();
      v55 = v54;
      sub_1A38D22D8();
      v57 = v56;
      v58 = v105;
      sub_1A388F670(v52, v105, &qword_1EB0FD8C0);
      v59 = v58 + *(v101 + 36);
      *v59 = v55;
      *(v59 + 8) = v57;
      *(v59 + 16) = xmmword_1A3A6EB30;
      if (sub_1A38D14F8())
      {
        v60 = sub_1A3A2F7B0();
      }

      else
      {
        sub_1A3A31590();
        *(&v129 + 1) = v89;
        v130 = v90;
        v131 = 0x4020000000000000;
        v128[0] = 0x3FF0000000000000;
        v128[1] = v89;
        v128[2] = v90;
        v128[3] = 0x4020000000000000;
        *&v129 = 0;
        sub_1A38BCFA8();
        v60 = sub_1A3A2F7E0();
      }

      v91 = v60;
      v64 = v125;
      v92 = v106;
      sub_1A388F670(v58, v106, &qword_1EB0FD8C8);
      *(v92 + *(v103 + 36)) = v91;
      v93 = sub_1A3A31480();
      v95 = v94;
      v96 = v104;
      v97 = &v104[*(v122 + 36)];
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD908);
      sub_1A38D7E0C(v30, v97 + *(v98 + 36));
      *v97 = v93;
      v97[1] = v95;
      sub_1A388F670(v92, v96, &qword_1EB0FD8D0);
      v87 = &qword_1EB0FD8D8;
      v88 = v107;
      sub_1A388F670(v96, v107, &qword_1EB0FD8D8);
      sub_1A388F6D8(v88, v121, &qword_1EB0FD8D8);
      swift_storeEnumTagMultiPayload();
      sub_1A38DD870();
      sub_1A38DDA10();
      goto LABEL_18;
    }
  }

  else
  {

    sub_1A3890F1C(v27);
    v61 = v127;
    if (sub_1A38D14F8())
    {
      v62 = 0;
    }

    else
    {
      v62 = sub_1A3A018A8(v29, 0x19uLL) ^ 1;
    }

    v65 = v118;
    sub_1A38DF4FC(v61, v19, type metadata accessor for ChromeBottomBar);
    v66 = (v21 + 16) & v123;
    v67 = swift_allocObject();
    sub_1A38DEDBC(v19, v67 + v66, type metadata accessor for ChromeBottomBar);
    *v65 = v29;
    *(v65 + 8) = sub_1A38DDCF4;
    *(v65 + 16) = v67;
    LOBYTE(v128[0]) = 0;
    sub_1A3A30F80();
    v68 = *(&v129 + 1);
    *(v65 + 24) = v129;
    *(v65 + 32) = v68;
    v69 = v117;
    sub_1A3A30320();
    v70 = v65 + *(v69 + 32);
    type metadata accessor for ChromeViewModel();
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    *v70 = sub_1A3A2F650();
    *(v70 + 8) = v71 & 1;
    v72 = v61 + *(v124 + 52);
    v73 = *v72;
    LOBYTE(v69) = *(v72 + 8);
    sub_1A3A2EA60();
    if ((v69 & 1) == 0)
    {
      sub_1A3A31C30();
      v74 = sub_1A3A305C0();
      sub_1A3A2F270();

      v75 = v110;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v111 + 8))(v75, v112);
      v73 = v129;
    }

    swift_getKeyPath();
    *&v129 = v73;
    sub_1A3A2F080();

    v76 = *(v73 + 848);
    v77 = *(v73 + 856);

    if ((v77 & 1) == 0)
    {
      v78 = sub_1A3A30470();
      v79 = v115;
      sub_1A38DEDBC(v65, v115, type metadata accessor for ChromeControlPanelExpandedContent);
      v80 = v79 + *(v113 + 36);
      *v80 = v62 & 1;
      *(v80 + 8) = 0xD000000000000015;
      *(v80 + 16) = 0x80000001A3AA2000;
      *(v80 + 24) = v76;
      *(v80 + 32) = v78;
      *(v80 + 36) = 1;
      v81 = swift_getKeyPath();
      v82 = v114;
      v83 = &v114[*(v119 + 36)];
      v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD938) + 28);
      v85 = *MEMORY[0x1E697F680];
      v86 = sub_1A3A30090();
      (*(*(v86 - 8) + 104))(v83 + v84, v85, v86);
      *v83 = v81;
      sub_1A388F670(v79, v82, &qword_1EB0FD8E8);
      v87 = &qword_1EB0FD8F0;
      v88 = v116;
      sub_1A388F670(v82, v116, &qword_1EB0FD8F0);
      sub_1A388F6D8(v88, v121, &qword_1EB0FD8F0);
      swift_storeEnumTagMultiPayload();
      sub_1A38DD870();
      sub_1A38DDA10();
      v64 = v125;
LABEL_18:
      sub_1A3A301F0();
      sub_1A388F740(v88, v87);
      v63 = 0;
      goto LABEL_19;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A38D7218(uint64_t a1)
{
  v2 = type metadata accessor for ChromeBottomBar();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A38DF4FC(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v5 = sub_1A3A31A90();
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  *(v7 + 16) = v5;
  *(v7 + 24) = v8;
  sub_1A38DEDBC(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  v9 = sub_1A3A31A90();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  sub_1A38DEDBC(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v6, type metadata accessor for ChromeBottomBar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728);
  sub_1A3A311C0();
  v11 = v13[3];
  v13[0] = 35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730);
  sub_1A3A311A0();

  return sub_1A3890F1C(v11);
}

uint64_t sub_1A38D7444(unint64_t a1)
{
  v2 = v1;
  v65 = a1;
  v64 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChromeBottomBar();
  v62 = *(v4 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1A3A2FEE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + *(v4 + 52);
  v11 = *v10;
  v12 = *(v10 + 8);
  sub_1A3A2EA60();
  v13 = v11;
  v69 = v12;
  if ((v12 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v13 = v72;
  }

  v67 = v6;
  v68 = v9;
  v66 = v7;
  swift_getKeyPath();
  *&v72 = v13;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(v13 + 48) != 1)
  {
  }

  swift_getKeyPath();
  *&v72 = v13;
  sub_1A3A2F080();

  v16 = *(v13 + 1168);

  if ((v16 & 1) == 0)
  {
    v17 = (v2 + *(v4 + 48));
    v18 = v17[1];
    v72 = *v17;
    v73 = v18;
    v74 = v17[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750);
    result = sub_1A3A30F90();
    if ((v71 & 1) == 0)
    {
      sub_1A3A2EA60();
      v19 = v11;
      v20 = v67;
      v21 = v68;
      if ((v69 & 1) == 0)
      {
        sub_1A3A31C30();
        v22 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v66 + 8))(v21, v20);
        v19 = v72;
      }

      v23 = v65;
      v24 = sub_1A394A364(v65, v19);

      if (v24)
      {
        sub_1A38DF4FC(v2, &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
        sub_1A3A31AA0();
        v25 = sub_1A3A31A90();
        v26 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v27 = swift_allocObject();
        v28 = MEMORY[0x1E69E85E0];
        *(v27 + 16) = v25;
        *(v27 + 24) = v28;
        sub_1A38DEDBC(&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for ChromeBottomBar);
        sub_1A38DF4FC(v2, &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
        v29 = sub_1A3A31A90();
        v30 = v67;
        v31 = swift_allocObject();
        *(v31 + 16) = v29;
        *(v31 + 24) = MEMORY[0x1E69E85E0];
        sub_1A38DEDBC(&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v26, type metadata accessor for ChromeBottomBar);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728);
        sub_1A3A311C0();
        v32 = v73;
        v70 = v65;
        sub_1A38A8F64(v65);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730);
        sub_1A3A311A0();

        sub_1A3890F1C(v32);
      }

      else
      {
        sub_1A3A2EA60();
        v33 = v11;
        v34 = v69;
        if ((v69 & 1) == 0)
        {
          sub_1A3A31C30();
          v35 = sub_1A3A305C0();
          sub_1A3A2F270();

          sub_1A3A2FED0();
          swift_getAtKeyPath();

          (*(v66 + 8))(v21, v20);
          v33 = v72;
        }

        swift_getKeyPath();
        *&v72 = v33;
        sub_1A3A2F080();

        if (!v33[149])
        {
          __break(1u);
          return result;
        }

        sub_1A3A2EA60();
        v36 = sub_1A38BC058(v23);

        v38 = v63;
        (*(v36 + 56))(v37);

        v39 = *(v38 + *(v64 + 44));
        sub_1A3A2EA60();
        sub_1A38DF564(v38, type metadata accessor for ChromeElementState);
        v40 = v39(4, 0);
        v42 = v41;
        v44 = v43;
        v46 = v45;
        LODWORD(v38) = v45;

        v47 = v38 > 0xFB;
        v30 = v67;
        if (v47)
        {
          goto LABEL_20;
        }

        sub_1A3A2EA60();
        v48 = v11;
        if ((v34 & 1) == 0)
        {
          sub_1A3A31C30();
          v49 = sub_1A3A305C0();
          sub_1A3A2F270();

          v50 = v68;
          sub_1A3A2FED0();
          swift_getAtKeyPath();

          (*(v66 + 8))(v50, v30);
          v48 = v72;
        }

        v51 = v48[153];
        v52 = v48[154];
        __swift_project_boxed_opaque_existential_1(v48 + 150, v51);
        (*(v52 + 8))(v40, v42, v44, v46, v48, v51, v52);

        sub_1A3890EA8(v40, v42, v44, v46);
      }

      v34 = v69;
LABEL_20:
      sub_1A3A2EA60();
      v53 = v11;
      v54 = v68;
      if ((v34 & 1) == 0)
      {
        sub_1A3A31C30();
        v55 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v66 + 8))(v54, v30);
        v53 = v72;
      }

      v56 = v53[153];
      v57 = v53[154];
      __swift_project_boxed_opaque_existential_1(v53 + 150, v56);
      (*(v57 + 8))(4, 0, 0, 96, v53, v56, v57);

      sub_1A3A2EA60();
      if ((v34 & 1) == 0)
      {
        sub_1A3A31C30();
        v58 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v66 + 8))(v54, v30);
        v11 = v72;
      }

      v59 = v11[153];
      v60 = v11[154];
      __swift_project_boxed_opaque_existential_1(v11 + 150, v59);
      (*(v60 + 8))(4, 0, 0, 92, v11, v59, v60);
    }
  }

  return result;
}

uint64_t sub_1A38D7E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3A2FBC0();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB0FC130 != -1)
  {
    v26 = v9;
    swift_once();
    v9 = v26;
  }

  if (*&qword_1EB0FE140 <= 0.0)
  {
    v12 = 38.0;
  }

  else
  {
    v12 = *&qword_1EB0FE140;
  }

  v13 = *(v9 + 20);
  v14 = *MEMORY[0x1E697F468];
  v15 = sub_1A3A30000();
  (*(*(v15 - 8) + 104))(v11 + v13, v14, v15);
  *v11 = v12;
  v11[1] = v12;
  v16 = sub_1A38D14F8();
  v17 = (a1 + *(type metadata accessor for ChromeBottomBar() + 52));
  v18 = *v17;
  v19 = *(v17 + 8);
  sub_1A3A2EA60();
  if ((v19 & 1) == 0)
  {
    sub_1A3A31C30();
    v20 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v18 = v28;
  }

  swift_getKeyPath();
  v28 = v18;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v21 = *(v18 + 848);
  v22 = *(v18 + 856);

  if (v22)
  {
    __break(1u);
  }

  else
  {
    v24 = sub_1A3A30460();
    sub_1A38DEDBC(v11, a2, MEMORY[0x1E697EAF0]);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD970);
    v25 = a2 + *(result + 36);
    *v25 = (v16 & 1) == 0;
    *(v25 + 8) = 0x70756F4C65646F4DLL;
    *(v25 + 16) = 0xE900000000000065;
    *(v25 + 24) = v21;
    *(v25 + 32) = v24;
    *(v25 + 36) = 0;
  }

  return result;
}

uint64_t sub_1A38D8168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = type metadata accessor for ChromeBottomBar();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A38DF4FC(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v6 = sub_1A3A31A90();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_1A38DEDBC(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  v10 = sub_1A3A31A90();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  sub_1A38DEDBC(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v7, type metadata accessor for ChromeBottomBar);
  sub_1A3A311C0();
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
  sub_1A3A311A0();

  return sub_1A3A303D0();
}

uint64_t sub_1A38D8388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v90 = type metadata accessor for ChromeBottomBar();
  v74 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v75 = v3;
  v76 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A3A2FEE0();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3A315D0();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1A3A2FBC0();
  v9 = MEMORY[0x1EEE9AC00](v87);
  v85 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v72 - v11);
  v13 = sub_1A3A31370();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v72 - v18;
  v86 = sub_1A3A31430();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD898);
  v79 = *(v22 - 8);
  v80 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v72 - v23;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8A0);
  MEMORY[0x1EEE9AC00](v78);
  v91 = &v72 - v24;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8A8);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v72 - v25;
  v26 = sub_1A3A30DB0();
  if (sub_1A38D8F94())
  {
    if (qword_1EB0FC0E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v13, qword_1EB101A48);
    (*(v14 + 16))(v19, v27, v13);
  }

  else
  {
    sub_1A3A31360();
    sub_1A3A31310();
    (*(v14 + 8))(v17, v13);
  }

  sub_1A3A31390();
  (*(v14 + 8))(v19, v13);
  v28 = a1;
  v29 = sub_1A38D9510();
  v30 = *(v87 + 20);
  v31 = *MEMORY[0x1E697F468];
  v32 = sub_1A3A30000();
  (*(*(v32 - 8) + 104))(v12 + v30, v31, v32);
  *v12 = v29;
  v12[1] = v29;
  v94 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8B0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1A3A681C0;
  sub_1A38DF4FC(v12, v85, MEMORY[0x1E697EAF0]);
  sub_1A38DF31C(&qword_1EB0FC480, MEMORY[0x1E697EAF0]);
  *(v33 + 32) = sub_1A3A31290();
  sub_1A3A315C0();
  sub_1A3A30A10();
  (*(v88 + 8))(v8, v89);
  sub_1A38DF564(v12, MEMORY[0x1E697EAF0]);
  (*(v84 + 8))(v21, v86);

  v34 = sub_1A38D14F8();
  v35 = v28 + *(v90 + 52);
  v36 = *v35;
  v37 = *(v35 + 8);
  sub_1A3A2EA60();
  v38 = v36;
  if ((v37 & 1) == 0)
  {
    sub_1A3A31C30();
    v39 = sub_1A3A305C0();
    sub_1A3A2F270();

    v40 = v81;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v82 + 8))(v40, v83);
    v38 = v94;
  }

  swift_getKeyPath();
  v94 = v38;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v41 = *(v38 + 848);
  v42 = *(v38 + 856);

  if (v42)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v44 = sub_1A3A30460();
  v45 = v91;
  (*(v79 + 32))(v91, v92, v80);
  v46 = v45 + *(v78 + 36);
  *v46 = (v34 & 1) == 0;
  *(v46 + 8) = 0x70756F4C65646F4DLL;
  *(v46 + 16) = 0xE900000000000065;
  *(v46 + 24) = v41;
  *(v46 + 32) = v44;
  *(v46 + 36) = 1;
  LODWORD(v92) = sub_1A38D14F8();
  sub_1A3A2EA60();
  if ((v37 & 1) == 0)
  {
    sub_1A3A31C30();
    v47 = sub_1A3A305C0();
    sub_1A3A2F270();

    v48 = v81;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v82 + 8))(v48, v83);
    v36 = v94;
  }

  swift_getKeyPath();
  v94 = v36;
  sub_1A3A2F080();

  v90 = *(v36 + 848);
  v49 = *(v36 + 856);

  if (v49)
  {
    goto LABEL_16;
  }

  v50 = v76;
  sub_1A38DF4FC(v28, v76, type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v51 = sub_1A3A31A90();
  v52 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v53 = swift_allocObject();
  v54 = MEMORY[0x1E69E85E0];
  *(v53 + 16) = v51;
  *(v53 + 24) = v54;
  sub_1A38DEDBC(v50, v53 + v52, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(v28, v50, type metadata accessor for ChromeBottomBar);
  v55 = sub_1A3A31A90();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v54;
  sub_1A38DEDBC(v50, v56 + v52, type metadata accessor for ChromeBottomBar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728);
  sub_1A3A311C0();
  v57 = v95;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730);
  MEMORY[0x1A58F7010](&v93, v58);
  v59 = v93;

  sub_1A3890F1C(v57);
  v60 = 1;
  if (v59 != 35)
  {
    v61 = sub_1A3A018A8(v59, 0x19uLL);
    sub_1A3890F1C(v59);
    v60 = v61 ^ 1;
  }

  v62 = sub_1A3A30460();
  v63 = v73;
  sub_1A388F670(v91, v73, &qword_1EB0FD8A0);
  v64 = v63 + *(v72 + 36);
  *v64 = (v92 & 1) == 0;
  strcpy((v64 + 8), "DPadGeometryID");
  *(v64 + 23) = -18;
  *(v64 + 24) = v90;
  *(v64 + 32) = v62;
  *(v64 + 36) = v60 & 1;
  sub_1A38D2024();
  v66 = v65;
  sub_1A38D22D8();
  v68 = v67;
  v69 = v63;
  v70 = v77;
  sub_1A388F670(v69, v77, &qword_1EB0FD8A8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD8B8);
  v71 = v70 + *(result + 36);
  *v71 = v66;
  *(v71 + 8) = v68;
  *(v71 + 16) = xmmword_1A3A6EB30;
  return result;
}

uint64_t sub_1A38D8F94()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ChromeBottomBar() + 56);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v7 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1A38D90EC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v10 = (a3 + *(type metadata accessor for ChromeBottomBar() + 52));
    v11 = *v10;
    v12 = *(v10 + 8);
    sub_1A3A2EA60();
    v13 = v11;
    if ((v12 & 1) == 0)
    {
      sub_1A3A31C30();
      v14 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v6 + 8))(v9, v5);
      v13 = v29;
    }

    v28 = v6;
    swift_getKeyPath();
    v29 = v13;
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v16 = *(v13 + 24);
    v15 = *(v13 + 32);
    v17 = *(v13 + 40);
    v18 = *(v13 + 48);
    sub_1A38BCF64(v16, v15, v17, *(v13 + 48));

    if (v18 <= 1)
    {
      if (!v18)
      {
        return sub_1A38BC250(v16, v15, v17, 0);
      }

      if (v16 != 35)
      {
        return sub_1A38BC250(v16, v15, v17, 1);
      }

      sub_1A38BC250(0x23uLL, v15, v17, 1);
      sub_1A3A2EA60();
      if ((v12 & 1) == 0)
      {
        sub_1A3A31C30();
        v19 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v28 + 8))(v9, v5);
        v11 = v29;
      }

      swift_getKeyPath();
      v29 = v11;
      sub_1A3A2F080();

      if (*(v11 + 48) == 255)
      {
      }

      swift_getKeyPath();
      v29 = v11;
      sub_1A3A2F080();

      v21 = *(v11 + 24);
      v20 = *(v11 + 32);
      v22 = *(v11 + 40);
      v23 = *(v11 + 48);
      sub_1A38BCF64(v21, v20, v22, *(v11 + 48));
      sub_1A38EEF8C(0, 0, 0, 255);
      if (v23 == 1)
      {
        if (v21 == 35)
        {
          v24 = 35;
        }

        else
        {
          sub_1A38F6EF8(v21, 0x23uLL);
          v24 = v21;
        }

        v25 = v20;
        v26 = v22;
        v27 = 1;
      }

      else
      {
        if (v23 == 255)
        {
        }

        v24 = v21;
        v25 = v20;
        v26 = v22;
        v27 = v23;
      }

      sub_1A38BC250(v24, v25, v26, v27);
    }

    if (v18 == 2)
    {
      return sub_1A38BC250(v16, v15, v17, 2);
    }
  }

  return result;
}

double sub_1A38D9510()
{
  v1 = type metadata accessor for ChromeBottomBar();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A38DF4FC(v0, v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  sub_1A3A31AA0();
  v4 = sub_1A3A31A90();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  *(v6 + 16) = v4;
  *(v6 + 24) = v7;
  sub_1A38DEDBC(v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for ChromeBottomBar);
  sub_1A38DF4FC(v0, v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
  v8 = sub_1A3A31A90();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_1A38DEDBC(v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5, type metadata accessor for ChromeBottomBar);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD728);
  sub_1A3A311C0();
  v10 = v15[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD730);
  MEMORY[0x1A58F7010](v15, v11);
  v12 = v15[0];

  sub_1A3890F1C(v10);
  if (v12 == 35 || (v13 = sub_1A3A018A8(v12, 0x19uLL), sub_1A3890F1C(v12), result = 20.0, (v13 & 1) == 0))
  {
    if (qword_1EB0FC130 != -1)
    {
      swift_once();
    }

    result = *&qword_1EB0FE140;
    if (*&qword_1EB0FE140 <= 0.0)
    {
      return 38.0;
    }
  }

  return result;
}

uint64_t sub_1A38D97A4@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for ChromeBottomBar() + 52));
  v9 = *v8;
  v10 = *(v8 + 8);
  sub_1A3A2EA60();
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v9 = v16;
  }

  swift_getKeyPath();
  v16 = v9;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(v9 + 48) == 1)
  {
    swift_getKeyPath();
    v16 = v9;
    sub_1A3A2F080();

    v14 = *(v9 + 1168);

    v13 = v14 ^ 1;
  }

  else
  {

    v13 = 0;
  }

  *a2 = v13 & 1;
  return result;
}

uint64_t sub_1A38D99D8()
{
  if (sub_1A38D14F8())
  {
    v0 = sub_1A3A314E0();
  }

  else
  {
    v0 = MEMORY[0x1A58F7350](0.5, 0.7, 0.0);
  }

  MEMORY[0x1EEE9AC00](v0);
  sub_1A3A2F8A0();
}

unint64_t sub_1A38D9A90(char a1, uint64_t a2)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + *(type metadata accessor for ChromeBottomBar() + 52);
  v9 = *v8;
  v10 = *(v8 + 8);
  v34 = v5;
  if (a1)
  {
    sub_1A3A2EA60();
    v11 = v9;
    if ((v10 & 1) == 0)
    {
      sub_1A3A31C30();
      v12 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v11 = v35;
    }

    swift_getKeyPath();
    v35 = v11;
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    if (*(v11 + 1068) != 1)
    {
      v13 = *(sub_1A395BE78(v11) + 16);

      if (v13)
      {
        swift_getKeyPath();
        v35 = v11;
        sub_1A3A2F080();

        v14 = *(v11 + 608);

        if (v14)
        {
          return result;
        }

        sub_1A3A2EA60();
        if ((v10 & 1) == 0)
        {
          sub_1A3A31C30();
          v16 = sub_1A3A305C0();
          sub_1A3A2F270();

          sub_1A3A2FED0();
          swift_getAtKeyPath();

          (*(v34 + 8))(v7, v4);
        }

        sub_1A38EDFE0(0x23uLL, 0, 0, 1);
      }
    }
  }

  sub_1A3A2EA60();
  v17 = v9;
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v17 = v35;
  }

  v33 = v4;
  swift_getKeyPath();
  v35 = v17;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v20 = *(v17 + 24);
  v19 = *(v17 + 32);
  v21 = *(v17 + 40);
  v22 = *(v17 + 48);
  sub_1A38BCF64(v20, v19, v21, *(v17 + 48));

  if (v22 != 255)
  {
    if (v22 != 1)
    {
      return sub_1A38BC250(v20, v19, v21, v22);
    }

    sub_1A38BC250(v20, v19, v21, 1);
    sub_1A3A2EA60();
    if ((v10 & 1) == 0)
    {
      sub_1A3A31C30();
      v23 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v34 + 8))(v7, v33);
      v9 = v35;
    }

    swift_getKeyPath();
    v35 = v9;
    sub_1A3A2F080();

    if (*(v9 + 48) == 255)
    {
    }

    swift_getKeyPath();
    v35 = v9;
    sub_1A3A2F080();

    v25 = *(v9 + 24);
    v24 = *(v9 + 32);
    v26 = *(v9 + 40);
    v27 = *(v9 + 48);
    sub_1A38BCF64(v25, v24, v26, *(v9 + 48));
    sub_1A38EEF8C(0, 0, 0, 255);
    if (v27 == 1)
    {
      if (v25 == 35)
      {
        v28 = 35;
      }

      else
      {
        sub_1A38F6EF8(v25, 0x23uLL);
        v28 = v25;
      }

      v29 = v24;
      v30 = v26;
      v31 = 1;
    }

    else
    {
      if (v27 == 255)
      {
      }

      v28 = v25;
      v29 = v24;
      v30 = v26;
      v31 = v27;
    }

    sub_1A38BC250(v28, v29, v30, v31);
  }

  return result;
}

unint64_t sub_1A38DA078@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X8>)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for ChromeBottomBar() + 52));
  v9 = *v8;
  v10 = *(v8 + 8);
  sub_1A3A2EA60();
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v9 = v18;
  }

  swift_getKeyPath();
  v18 = v9;
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v12 = *(v9 + 24);
  v13 = *(v9 + 32);
  v14 = *(v9 + 40);
  v15 = *(v9 + 48);
  sub_1A38BCF64(v12, v13, v14, *(v9 + 48));

  if (v15 == 255)
  {
    goto LABEL_8;
  }

  if (v15 != 1)
  {
    result = sub_1A38BC250(v12, v13, v14, v15);
LABEL_8:
    v12 = 35;
    goto LABEL_9;
  }

  if (v12 == 35)
  {
    result = sub_1A38BC250(0x23uLL, v13, v14, 1);
  }

LABEL_9:
  *a2 = v12;
  return result;
}

uint64_t sub_1A38DA2B4()
{
  sub_1A3A314E0();
  sub_1A3A2F8A0();
}

uint64_t sub_1A38DA324(unint64_t a1, uint64_t a2)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChromeBottomBar();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  if (a1 == 35)
  {
    v41 = v5;
    v42 = v11;
    v40 = v6;
    sub_1A38DF4FC(a2, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
    sub_1A3A31AA0();
    v12 = sub_1A3A31A90();
    v44 = v2;
    v13 = a2;
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    *(v15 + 16) = v12;
    *(v15 + 24) = v16;
    sub_1A38DEDBC(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ChromeBottomBar);
    v43 = v13;
    sub_1A38DF4FC(v13, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeBottomBar);
    v17 = sub_1A3A31A90();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = MEMORY[0x1E69E85E0];
    sub_1A38DEDBC(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v14, type metadata accessor for ChromeBottomBar);
    sub_1A3A311C0();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
    MEMORY[0x1A58F7010](&v47, v19);
    v20 = v47;

    if ((v20 & 1) == 0)
    {
      return result;
    }

    v22 = v43 + *(v42 + 52);
    v23 = *v22;
    v24 = *(v22 + 8);
    sub_1A3A2EA60();
    if ((v24 & 1) == 0)
    {
      sub_1A3A31C30();
      v25 = sub_1A3A305C0();
      sub_1A3A2F270();

      v26 = v45;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v40 + 8))(v26, v41);
      v23 = v46;
    }

    swift_getKeyPath();
    v46 = v23;
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    if (*(v23 + 48) == 255)
    {
    }

    swift_getKeyPath();
    v46 = v23;
    sub_1A3A2F080();

    v28 = *(v23 + 24);
    v27 = *(v23 + 32);
    v29 = *(v23 + 40);
    v30 = *(v23 + 48);
    sub_1A38BCF64(v28, v27, v29, *(v23 + 48));
    sub_1A38EEF8C(0, 0, 0, 255);
    if (v30 == 1)
    {
      if (v28 == 35)
      {
        v31 = 35;
      }

      else
      {
        sub_1A38F6EF8(v28, 0x23uLL);
        v31 = v28;
      }

      v32 = v27;
      v33 = v29;
      v34 = 1;
    }

    else
    {
      if (v30 == 255)
      {
      }

      v31 = v28;
      v32 = v27;
      v33 = v29;
      v34 = v30;
    }

    sub_1A38BC250(v31, v32, v33, v34);
  }

  v35 = *(a2 + *(v11 + 52) + 8);
  sub_1A3A2EA60();
  if ((v35 & 1) == 0)
  {
    sub_1A3A31C30();
    v36 = v6;
    v37 = sub_1A3A305C0();
    sub_1A3A2F270();

    v38 = v45;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v36 + 8))(v38, v5);
  }

  sub_1A38A8F64(a1);
  sub_1A38EDFE0(a1, 0, 0, 1);
}

uint64_t sub_1A38DA8A0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v63 = a1;
  v6 = type metadata accessor for ChromeBottomBar();
  v7 = v6 - 8;
  v59 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v61 = v8;
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A3A2FEE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a2 + *(v7 + 56));
  v15 = v14[1];
  v88 = *v14;
  v89 = v15;
  v90 = v14[2];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750);
  sub_1A3A30F90();
  v16 = *(v7 + 60);
  v62 = a2;
  v17 = a2 + v16;
  v18 = *v17;
  v19 = *(v17 + 8);
  sub_1A3A2EA60();
  v20 = v18;
  if ((v19 & 1) == 0)
  {
    sub_1A3A31C30();
    v21 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v20 = v88;
  }

  v22 = sub_1A38DCDB8(a4, v63, v20);

  if (v22)
  {
    sub_1A3A2EA60();
    if ((v19 & 1) == 0)
    {
      sub_1A3A31C30();
      v24 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v11 + 8))(v13, v10);
      v18 = v88;
    }

    swift_getKeyPath();
    *&v88 = v18;
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v26 = *(v18 + 24);
    v25 = *(v18 + 32);
    v27 = *(v18 + 40);
    v28 = *(v18 + 48);
    sub_1A38BCF64(v26, v25, v27, *(v18 + 48));

    v58 = v14;
    if (v28 == 1)
    {
      v29 = v62;
      if (v26 != 35)
      {
        v57 = 1;
        sub_1A38BC250(v26, v25, v27, 1);
LABEL_14:
        sub_1A38DF4FC(v29, v9, type metadata accessor for ChromeBottomBar);
        v34 = sub_1A3A31AA0();
        v35 = sub_1A3A31A90();
        v36 = *(v59 + 80);
        v37 = (v36 + 32) & ~v36;
        v38 = swift_allocObject();
        v39 = MEMORY[0x1E69E85E0];
        *(v38 + 16) = v35;
        *(v38 + 24) = v39;
        sub_1A38DEDBC(v9, v38 + v37, type metadata accessor for ChromeBottomBar);
        sub_1A38DF4FC(v29, v9, type metadata accessor for ChromeBottomBar);
        v59 = v34;
        v40 = sub_1A3A31A90();
        v55[1] = v36;
        v41 = swift_allocObject();
        *(v41 + 16) = v40;
        *(v41 + 24) = MEMORY[0x1E69E85E0];
        v55[0] = v37;
        v56 = v9;
        sub_1A38DEDBC(v9, v41 + v37, type metadata accessor for ChromeBottomBar);
        sub_1A3A311C0();
        v83 = v73;
        v84 = v74;
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
        MEMORY[0x1A58F7010](&v82);
        LOBYTE(v35) = v82;

        v43 = v58[1];
        v85 = *v58;
        v86 = v43;
        v45 = *v58;
        v44 = v58[1];
        v87 = v58[2];
        v73 = v45;
        v74 = v44;
        v75 = v58[2];
        sub_1A388F6D8(&v85, &v70, &qword_1EB0FD750);
        sub_1A3A30F90();
        v46 = sub_1A38DB044(v63, v57, v35);
        v70 = v85;
        v71 = v86;
        v72 = v87;
        v64 = v76;
        v65 = v77;
        v66 = v78;
        v67 = v79;
        v68 = v80;
        v69 = v81;
        sub_1A3A30FA0();
        v88 = v70;
        v89 = v71;
        v90 = v72;
        result = sub_1A388F740(&v88, &qword_1EB0FD750);
        if (v46 != 2)
        {
          v47 = v56;
          sub_1A38DF4FC(v29, v56, type metadata accessor for ChromeBottomBar);
          v48 = sub_1A3A31A90();
          v63 = v42;
          v49 = v48;
          LODWORD(v60) = v46;
          v50 = v55[0];
          v51 = swift_allocObject();
          *(v51 + 16) = v49;
          v52 = MEMORY[0x1E69E85E0];
          *(v51 + 24) = MEMORY[0x1E69E85E0];
          sub_1A38DEDBC(v47, v51 + v50, type metadata accessor for ChromeBottomBar);
          sub_1A38DF4FC(v62, v47, type metadata accessor for ChromeBottomBar);
          v53 = sub_1A3A31A90();
          v54 = swift_allocObject();
          *(v54 + 16) = v53;
          *(v54 + 24) = v52;
          sub_1A38DEDBC(v47, v54 + v50, type metadata accessor for ChromeBottomBar);
          sub_1A3A311C0();
          LOBYTE(v70) = v60 & 1;
          sub_1A3A311A0();
        }

        return result;
      }

      v30 = 35;
      v31 = v25;
      v32 = v27;
      v33 = 1;
    }

    else
    {
      v29 = v62;
      if (v28 == 255)
      {
        v57 = 0;
        goto LABEL_14;
      }

      v30 = v26;
      v31 = v25;
      v32 = v27;
      v33 = v28;
    }

    sub_1A38BC250(v30, v31, v32, v33);
    v57 = 0;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1A38DB044(uint64_t a1, char a2, char a3)
{
  if ((*(v3 + 34) & 1) != 0 || (sub_1A3A2F5D0(), fabs(v6) >= 10.0))
  {
    *(v3 + 34) = 1;
    if (*(v3 + 32) == 1)
    {
      sub_1A3A2F5E0();
      *(v3 + 24) = v7;
      *(v3 + 32) = 0;
    }

    sub_1A3A2F610();
    v8 = a3 ^ 1;
    if (v8 & 1) != 0 || (a2)
    {
      CEKProgressClamped();
      v11 = 0;
      *v3 = v12;
      v9 = v12 >= 1.0;
    }

    else
    {
      CEKProgressClamped();
      v9 = 0;
      *(v3 + 8) = v10;
      v11 = v10 >= 1.0;
    }

    sub_1A3A2F5D0();
    if (fabs(v13) > 25.0)
    {
      *(v3 + 16) = 1;
    }

    if (v9)
    {
      sub_1A3A2F610();
      *(v3 + 24) = v14;
      *(v3 + 32) = 256;
      if (v11)
      {
        *v3 = 0;
      }

      *(v3 + 8) = 0;
      if (a2)
      {
        return 1;
      }

      return v8 & 1;
    }

    if (v11)
    {
      sub_1A3A2F610();
      *(v3 + 24) = v16;
      *(v3 + 32) = 256;
      *v3 = 0;
      return v8 & 1;
    }
  }

  return 2;
}

uint64_t sub_1A38DB1AC()
{
  sub_1A3A314E0();
  sub_1A3A2F8A0();
}

uint64_t sub_1A38DB218(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ChromeBottomBar() + 48));
  v2 = v1[1];
  v9[0] = *v1;
  v9[1] = v2;
  v4 = *v1;
  v3 = v1[1];
  v9[2] = v1[2];
  v6 = v4;
  v7 = v3;
  v8 = v1[2];
  sub_1A388F6D8(v9, v10, &qword_1EB0FD750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD750);
  sub_1A3A30FA0();
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  return sub_1A388F740(v10, &qword_1EB0FD750);
}

uint64_t sub_1A38DB304(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return sub_1A38DC774(&v5, &v7) & 1;
}

uint64_t sub_1A38DB350@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ModeWheelGestureState(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  sub_1A3A30320();
  v8 = type metadata accessor for ChromeBottomBar();
  v9 = a1 + v8[5];
  LOBYTE(v30) = 0;
  sub_1A3A30F80();
  v10 = *(&v36 + 1);
  *v9 = v36;
  *(v9 + 8) = v10;
  v11 = a1 + v8[6];
  LOBYTE(v30) = 0;
  sub_1A3A30F80();
  v12 = *(&v36 + 1);
  *v11 = v36;
  *(v11 + 8) = v12;
  v13 = a1 + v8[7];
  LOBYTE(v30) = 0;
  sub_1A3A30F80();
  v14 = *(&v36 + 1);
  *v13 = v36;
  *(v13 + 8) = v14;
  v15 = a1 + v8[8];
  LOBYTE(v30) = 0;
  sub_1A3A30F80();
  v16 = *(&v36 + 1);
  *v15 = v36;
  *(v15 + 8) = v16;
  if (qword_1EB0FC210 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v2, qword_1EB101B38);
  sub_1A38DF4FC(v17, v7, type metadata accessor for ModeWheelGestureState);
  sub_1A38DF4FC(v7, v5, type metadata accessor for ModeWheelGestureState);
  sub_1A3A30F80();
  sub_1A38DF564(v7, type metadata accessor for ModeWheelGestureState);
  v18 = v8[10];
  v30 = 0;
  sub_1A3A30F80();
  *(a1 + v18) = v36;
  v19 = a1 + v8[11];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = (a1 + v8[12]);
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v34 = 1;
  v35 = 0;
  sub_1A3A30F80();
  v21 = v37;
  *v20 = v36;
  v20[1] = v21;
  v20[2] = v38;
  v22 = a1 + v8[13];
  type metadata accessor for ChromeViewModel();
  sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  *v22 = sub_1A3A2F650();
  *(v22 + 8) = v23 & 1;
  v24 = a1 + v8[14];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a1 + v8[15];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  *(v25 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670);
  result = swift_storeEnumTagMultiPayload();
  *(a1 + v8[16]) = 0;
  v28 = (a1 + v8[18]);
  *v28 = 0xD000000000000013;
  v28[1] = 0x80000001A3AA1FE0;
  return result;
}

uint64_t type metadata accessor for ChromeBottomBar()
{
  result = qword_1ED996C28;
  if (!qword_1ED996C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A38DB744(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1A3956A00(0, v5, 0);
  v6 = v16;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;
    sub_1A3A2EA60();
    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v15;
    v16 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1A3956A00((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 8 * v12 + 32) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A38DB88C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 35))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A38DB8E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void sub_1A38DB964()
{
  sub_1A38BD87C();
  if (v0 <= 0x3F)
  {
    sub_1A38DBB90(319, qword_1ED996958, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A38DBBE0(319, &qword_1ED996C38, type metadata accessor for ModeWheelGestureState, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A38DBB90(319, &qword_1ED996C40, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1A38DBB90(319, &qword_1EB0FCF80, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A38DBB90(319, qword_1ED996C48, &type metadata for ChromeBottomBar.ControlPanelGestureState, MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1A38DBBE0(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for ChromeScenePhase(319);
                if (v7 <= 0x3F)
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

void sub_1A38DBB90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A38DBBE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t (*sub_1A38DBC60(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5))@<X0>(uint64_t a1@<X0>, CGPoint *a2@<X8>)
{
  sub_1A388F6D8(a1, &v15, &qword_1EB0FDA10);
  if (*(&v17 + 1))
  {
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = v18;
    sub_1A38DE880(a1, &v15);
    v9 = swift_allocObject();
    v10 = v21;
    *(v9 + 16) = v20;
    *(v9 + 32) = v10;
    v11 = v23;
    *(v9 + 48) = v22;
    *(v9 + 64) = v11;
    v12 = v18;
    *(v9 + 112) = v17;
    *(v9 + 128) = v12;
    *(v9 + 144) = v19;
    v13 = v16;
    *(v9 + 80) = v15;
    *(v9 + 96) = v13;
    *(v9 + 152) = a2;
    *(v9 + 160) = a4;
    *(v9 + 168) = a5;
    sub_1A3A2EA60();
    return sub_1A38DE8DC;
  }

  else
  {
    sub_1A388F740(&v15, &qword_1EB0FDA10);
    return 0;
  }
}

uint64_t sub_1A38DBD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *__return_ptr, void)@<X3>, CGPoint *a5@<X8>, double a6@<D0>)
{
  type metadata accessor for CGRect(0);
  sub_1A3A2F820();
  v11 = v75;
  v12 = v76;
  v13 = *(a3 + 64);
  v36 = a1;
  v14 = sub_1A38DB744(sub_1A38DE8F0, &v35, v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 32);
    v17 = v15 - 1;
    if (v17)
    {
      v18 = (v14 + 40);
      do
      {
        v19 = *v18++;
        v20 = v19;
        if (v16 < v19)
        {
          v16 = v20;
        }

        --v17;
      }

      while (v17);
    }

    if (*(a2 + 48) == 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    v89.origin = v11;
    v89.size = v12;
    CGRectGetWidth(v89);
    goto LABEL_11;
  }

  if ((*(a2 + 48) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v88.origin = v11;
  v88.size = v12;
  CGRectGetWidth(v88);
LABEL_11:
  v90.origin = v11;
  v90.size = v12;
  Height = CGRectGetHeight(v90);
  sub_1A3A2F800();
  v91.origin = v11;
  v91.size = v12;
  CGRectGetMidX(v91);
  sub_1A3A2F800();
  CEKInterpolateClamped();
  v34 = v22;
  v92.origin = v11;
  v92.size = v12;
  MidY = CGRectGetMidY(v92);
  v93.origin = v11;
  v93.size = v12;
  v24 = MidY - ((a6 + 1.0) * Height - CGRectGetHeight(v93)) * 0.5 + a6 * -30.0;
  a4(&v75, *(a2 + 51));
  sub_1A3A31480();
  v56 = v81;
  v57[0] = *v82;
  *(v57 + 13) = *&v82[13];
  v52 = v77;
  v53 = v78;
  v54 = v79;
  v55 = v80;
  v50 = v75;
  v51 = v76;
  sub_1A3A2F780();
  v45 = v56;
  *v46 = v57[0];
  *&v46[13] = *(v57 + 13);
  v41 = v52;
  v42 = v53;
  v43 = v54;
  v44 = v55;
  v39 = v50;
  v40 = v51;
  v58[6] = v81;
  v59[0] = *v82;
  *(v59 + 13) = *&v82[13];
  v58[2] = v77;
  v58[3] = v78;
  v58[4] = v79;
  v58[5] = v80;
  v58[0] = v75;
  v58[1] = v76;
  sub_1A388F6D8(&v50, &v62, &qword_1EB0FDA18);
  sub_1A388F740(v58, &qword_1EB0FDA18);
  v60[8] = *&v46[16];
  v60[9] = v47;
  v60[10] = v48;
  v60[11] = v49;
  v60[4] = v43;
  v60[5] = v44;
  v60[6] = v45;
  v60[7] = *v46;
  v60[0] = v39;
  v60[1] = v40;
  v60[2] = v41;
  v60[3] = v42;
  v61[8] = *&v46[16];
  v61[9] = v47;
  v61[10] = v48;
  v61[11] = v49;
  v61[4] = v43;
  v61[5] = v44;
  v61[6] = v45;
  v61[7] = *v46;
  v61[0] = v39;
  v61[1] = v40;
  v61[2] = v41;
  v61[3] = v42;
  sub_1A388F6D8(v60, &v75, &qword_1EB0FDA20);
  sub_1A388F740(v61, &qword_1EB0FDA20);
  v25 = sub_1A3A314E0();
  v70 = *&v46[16];
  v71 = v47;
  v72 = v48;
  v73 = v49;
  v66 = v43;
  v67 = v44;
  v68 = v45;
  v69 = *v46;
  v62 = v39;
  v63 = v40;
  v64 = v41;
  v65 = v42;
  *&v74.x = v34;
  v74.y = v24;
  sub_1A388F6D8(a2, &v38, &qword_1EB0FDA28);
  v37 = v25;
  sub_1A388F6D8(&v37, &a5[13], &qword_1EB0FDA30);
  v26 = v73;
  a5[10] = v72;
  a5[11] = v26;
  a5[12] = v74;
  v27 = v69;
  a5[6] = v68;
  a5[7] = v27;
  v28 = v71;
  a5[8] = v70;
  a5[9] = v28;
  v29 = v65;
  a5[2] = v64;
  a5[3] = v29;
  v30 = v67;
  a5[4] = v66;
  a5[5] = v30;
  v31 = v63;
  *a5 = v62;
  a5[1] = v31;
  sub_1A388F6D8(&v62, &v75, &qword_1EB0FDA38);
  sub_1A388F740(&v37, &qword_1EB0FDA30);
  *&v82[16] = *&v46[16];
  v83 = v47;
  v84 = v48;
  v85 = v49;
  v79 = v43;
  v80 = v44;
  v81 = v45;
  *v82 = *v46;
  v75 = v39;
  v76 = v40;
  v77 = v41;
  v78 = v42;
  v86 = v34;
  v87 = v24;
  return sub_1A388F740(&v75, &qword_1EB0FDA38);
}

uint64_t sub_1A38DC304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  type metadata accessor for CGRect(0);
  sub_1A3A2F820();
  v11 = v35;
  v12 = v36;
  v13 = *(a3 + 64);
  v34 = a1;
  v14 = sub_1A38DB744(sub_1A38DFB84, v33, v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 32);
    v17 = v15 - 1;
    if (v17)
    {
      v18 = (v14 + 40);
      do
      {
        v19 = *v18++;
        v20 = v19;
        if (v16 < v19)
        {
          v16 = v20;
        }

        --v17;
      }

      while (v17);
    }

    if (*(a2 + 48) == 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    v39.origin = v11;
    v39.size = v12;
    CGRectGetWidth(v39);
    goto LABEL_11;
  }

  if ((*(a2 + 48) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v38.origin = v11;
  v38.size = v12;
  CGRectGetWidth(v38);
LABEL_11:
  v40.origin = v11;
  v40.size = v12;
  Height = CGRectGetHeight(v40);
  sub_1A3A2F800();
  v41.origin = v11;
  v41.size = v12;
  CGRectGetMidX(v41);
  sub_1A3A2F800();
  CEKInterpolateClamped();
  v31 = v22;
  v42.origin = v11;
  v42.size = v12;
  MidY = CGRectGetMidY(v42);
  v43.origin = v11;
  v43.size = v12;
  v24 = MidY - ((a6 + 1.0) * Height - CGRectGetHeight(v43)) * 0.5 + a6 * -30.0;
  a4(*(a2 + 51));
  sub_1A3A31480();
  sub_1A3A2F780();
  v25 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB58) + 36));
  v26 = v36;
  *v25 = v35;
  v25[1] = v26;
  v25[2] = v37;
  v27 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB60) + 36);
  *v27 = v31;
  *(v27 + 8) = v24;
  v28 = sub_1A3A314E0();
  v29 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB68) + 36));
  result = sub_1A388F6D8(a2, (v29 + 1), &qword_1EB0FDA28);
  *v29 = v28;
  return result;
}

uint64_t sub_1A38DC640@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = sub_1A3A30220();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v18[0] = *a1;
  v18[1] = v8;
  sub_1A3A30350();
  sub_1A3A2F810();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v16;
  return result;
}

uint64_t sub_1A38DC774(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || ((*(a1 + 16) ^ *(a2 + 16)) & 1) != 0)
  {
    return 0;
  }

  v3 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((*(a1 + 33) ^ *(a2 + 33)))
  {
    return 0;
  }

  return (*(a1 + 34) ^ *(a2 + 34) ^ 1) & 1;
}

unint64_t sub_1A38DC800()
{
  result = qword_1EB0FD708;
  if (!qword_1EB0FD708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD688);
    sub_1A38A08F8(&qword_1EB0FD710, &qword_1EB0FD718);
    sub_1A38A08F8(&qword_1ED9966D0, &qword_1EB0FC950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD708);
  }

  return result;
}

unint64_t sub_1A38DC8E4()
{
  result = qword_1ED996CB0;
  if (!qword_1ED996CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD680);
    sub_1A38A08F8(&qword_1ED996CB8, &qword_1EB0FD700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996CB0);
  }

  return result;
}

unint64_t sub_1A38DCA00()
{
  result = qword_1ED996CC0;
  if (!qword_1ED996CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD728);
    sub_1A38BDB38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996CC0);
  }

  return result;
}

uint64_t sub_1A38DCABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ChromeBottomBar() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

void *sub_1A38DCB50(void *result)
{
  if (result)
  {
    v1 = result;

    return sub_1A3A2EA50();
  }

  return result;
}

uint64_t sub_1A38DCB90(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ChromeBottomBar() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A38D1194(a1, a2, v6);
}

unint64_t sub_1A38DCC10()
{
  result = qword_1ED996CC8;
  if (!qword_1ED996CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996CC8);
  }

  return result;
}

uint64_t sub_1A38DCC8C(uint64_t a1)
{
  v3 = *(type metadata accessor for ChromeBottomBar() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1A38DA8A0(a1, v1 + v4, v6, v7);
}

uint64_t sub_1A38DCD2C()
{
  type metadata accessor for ChromeBottomBar();

  return sub_1A38DB1AC();
}

uint64_t sub_1A38DCDB8(double a1, uint64_t a2, uint64_t a3)
{
  sub_1A3A2F5E0();
  v6 = v5;
  v7 = *(a3 + 1088);
  if (v7 && (v8 = sub_1A3A2EA60(), v9 = v7(v8), sub_1A3671090(v7), v9))
  {
    [v9 centerButtonFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    swift_getKeyPath();
    sub_1A38DF31C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v18 = *(a3 + 640);
    swift_getKeyPath();
    sub_1A38DF31C(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel);
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v19 = *(v18 + 248);

    rect = v11 + v19;
    swift_getKeyPath();
    sub_1A3A2F080();

    v20 = *(a3 + 640);
    swift_getKeyPath();
    sub_1A3A2EA60();
    sub_1A3A2F080();

    v21 = *(v20 + 256);

    v22 = v13 + v21;
    v32.origin.x = v11;
    v32.origin.y = v13;
    v32.size.width = v15;
    v32.size.height = v17;
    Width = CGRectGetWidth(v32);
    v33.origin.x = v11;
    v33.origin.y = v13;
    v33.size.width = v15;
    v33.size.height = v17;
    Height = CGRectGetHeight(v33);
    sub_1A3A2F5E0();
    v31.x = v25;
    v31.y = v26;
    v34.origin.x = rect;
    v34.origin.y = v22;
    v34.size.width = Width;
    v34.size.height = Height;
    v27 = CGRectContainsPoint(v34, v31);

    v28 = !v27;
  }

  else
  {
    v28 = 1;
  }

  return (a1 - v6 >= 24.0) & v28;
}

unint64_t sub_1A38DD0DC()
{
  result = qword_1EB0FD7A0;
  if (!qword_1EB0FD7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD770);
    sub_1A38A08F8(&qword_1EB0FD7A8, &qword_1EB0FD768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD7A0);
  }

  return result;
}

unint64_t sub_1A38DD1B0()
{
  result = qword_1EB0FD800;
  if (!qword_1EB0FD800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD7E8);
    sub_1A38DD268();
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD800);
  }

  return result;
}

unint64_t sub_1A38DD268()
{
  result = qword_1EB0FD808;
  if (!qword_1EB0FD808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD7E0);
    sub_1A38DD2F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD808);
  }

  return result;
}

unint64_t sub_1A38DD2F4()
{
  result = qword_1EB0FD810;
  if (!qword_1EB0FD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD7D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD818);
    sub_1A38DD3FC();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1EB0FD868, &qword_1EB0FD870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD810);
  }

  return result;
}

unint64_t sub_1A38DD3FC()
{
  result = qword_1EB0FD820;
  if (!qword_1EB0FD820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD818);
    sub_1A38DD4B4();
    sub_1A38A08F8(&qword_1EB0FD858, &qword_1EB0FD860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD820);
  }

  return result;
}

unint64_t sub_1A38DD4B4()
{
  result = qword_1EB0FD828;
  if (!qword_1EB0FD828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD838);
    sub_1A38DD5AC();
    swift_getOpaqueTypeConformance2();
    sub_1A38DF31C(&qword_1ED9966D8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD828);
  }

  return result;
}

unint64_t sub_1A38DD5AC()
{
  result = qword_1EB0FD840;
  if (!qword_1EB0FD840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD838);
    sub_1A38A08F8(&qword_1EB0FD848, &qword_1EB0FD850);
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD840);
  }

  return result;
}

unint64_t sub_1A38DD690()
{
  result = qword_1EB0FD878;
  if (!qword_1EB0FD878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD7F8);
    sub_1A38A08F8(&qword_1EB0FD868, &qword_1EB0FD870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD878);
  }

  return result;
}

uint64_t sub_1A38DD778(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ChromeBottomBar() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1A38DD870()
{
  result = qword_1EB0FD910;
  if (!qword_1EB0FD910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD8F0);
    sub_1A38DD928();
    sub_1A38A08F8(&qword_1ED996D00, &qword_1EB0FD938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD910);
  }

  return result;
}

unint64_t sub_1A38DD928()
{
  result = qword_1EB0FD918;
  if (!qword_1EB0FD918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD8E8);
    sub_1A38DF31C(&qword_1EB0FD920, type metadata accessor for ChromeControlPanelExpandedContent);
    sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD918);
  }

  return result;
}

unint64_t sub_1A38DDA10()
{
  result = qword_1EB0FD940;
  if (!qword_1EB0FD940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD8D8);
    sub_1A38DDAC8();
    sub_1A38A08F8(&qword_1EB0FD968, &qword_1EB0FD908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD940);
  }

  return result;
}

unint64_t sub_1A38DDAC8()
{
  result = qword_1EB0FD948;
  if (!qword_1EB0FD948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD8D0);
    sub_1A38DDB80();
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD948);
  }

  return result;
}

unint64_t sub_1A38DDB80()
{
  result = qword_1EB0FD950;
  if (!qword_1EB0FD950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD8C8);
    sub_1A38DDC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD950);
  }

  return result;
}

unint64_t sub_1A38DDC0C()
{
  result = qword_1EB0FD958;
  if (!qword_1EB0FD958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD8C0);
    sub_1A38DF31C(&qword_1EB0FD960, type metadata accessor for ChromeBottomControlPanel);
    sub_1A38A08F8(&qword_1EB0FD928, &qword_1EB0FD930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD958);
  }

  return result;
}

unint64_t sub_1A38DDD0C@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ChromeBottomBar() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1A38DA078(v4, a1);
}

uint64_t sub_1A38DDD80()
{
  type metadata accessor for ChromeBottomBar();

  return sub_1A38DA2B4();
}

unint64_t sub_1A38DDDF4()
{
  result = qword_1ED996D08;
  if (!qword_1ED996D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD988);
    sub_1A38DDE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D08);
  }

  return result;
}

unint64_t sub_1A38DDE80()
{
  result = qword_1ED996D10;
  if (!qword_1ED996D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D10);
  }

  return result;
}

unint64_t sub_1A38DDF04()
{
  result = qword_1EB0FD998;
  if (!qword_1EB0FD998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD978);
    sub_1A38DDF90();
    sub_1A38DE1F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD998);
  }

  return result;
}

unint64_t sub_1A38DDF90()
{
  result = qword_1EB0FD9A0;
  if (!qword_1EB0FD9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD9A8);
    sub_1A38DE048();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD9A0);
  }

  return result;
}

unint64_t sub_1A38DE048()
{
  result = qword_1EB0FD9B0;
  if (!qword_1EB0FD9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD9B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD9C0);
    sub_1A38DE13C();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1EB0FD9E0, &qword_1EB0FD9E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD9B0);
  }

  return result;
}

unint64_t sub_1A38DE13C()
{
  result = qword_1EB0FD9C8;
  if (!qword_1EB0FD9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD9C0);
    sub_1A38A08F8(&qword_1EB0FD9D0, &qword_1EB0FD9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD9C8);
  }

  return result;
}

unint64_t sub_1A38DE1F4()
{
  result = qword_1EB0FD9F0;
  if (!qword_1EB0FD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FD9F0);
  }

  return result;
}

uint64_t sub_1A38DE260(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ChromeBottomBar() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A38DE314(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ChromeBottomBar() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = type metadata accessor for ChromeBottomBar();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_1A3A30430();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);

  v6 = v3 + v1[9];
  v7 = type metadata accessor for ModeWheelGestureState(0);
  v8 = *(v7 + 36);
  v9 = sub_1A3A2ECE0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = *(v7 + 40);
  v12 = sub_1A3A2F620();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678);

  sub_1A3670FF4(*(v3 + v1[11]), *(v3 + v1[11] + 8));

  sub_1A3670FF4(*(v3 + v1[14]), *(v3 + v1[14] + 8));
  v14 = v3 + v1[15];
  j__swift_release();
  v15 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1A3A2F540();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A38DE744@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChromeBottomBar() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A38D5900(a1, v6, a2);
}

uint64_t (*sub_1A38DE7C4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, CGPoint *a2@<X8>)@<X8>))@<X0>(uint64_t a1@<X0>, CGPoint *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD9F8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  result = sub_1A38DBC60(a1, *(v2 + v7), v2 + v6, *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_1A38DE910@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ChromeBottomBar() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1A38D97A4(v4, a1);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for ChromeBottomBar();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_1A3A30430();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);

  v6 = v3 + v1[9];
  v7 = type metadata accessor for ModeWheelGestureState(0);
  v8 = *(v7 + 36);
  v9 = sub_1A3A2ECE0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = *(v7 + 40);
  v12 = sub_1A3A2F620();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD678);

  sub_1A3670FF4(*(v3 + v1[11]), *(v3 + v1[11] + 8));

  sub_1A3670FF4(*(v3 + v1[14]), *(v3 + v1[14] + 8));
  v14 = v3 + v1[15];
  j__swift_release();
  v15 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1A3A2F540();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A38DED48()
{
  type metadata accessor for ChromeBottomBar();

  return sub_1A38D99D8();
}

uint64_t sub_1A38DEDBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A38DEE24()
{
  result = qword_1ED996D18;
  if (!qword_1ED996D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDA88);
    sub_1A38DEEDC();
    sub_1A38A08F8(qword_1ED996AC8, &qword_1EB0FD1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D18);
  }

  return result;
}

unint64_t sub_1A38DEEDC()
{
  result = qword_1ED996D20;
  if (!qword_1ED996D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDA90);
    sub_1A38DEF68();
    sub_1A38DF158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D20);
  }

  return result;
}

unint64_t sub_1A38DEF68()
{
  result = qword_1ED996D28;
  if (!qword_1ED996D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDA98);
    sub_1A38DEFF4();
    sub_1A38DF104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D28);
  }

  return result;
}

unint64_t sub_1A38DEFF4()
{
  result = qword_1ED996D30;
  if (!qword_1ED996D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDAA0);
    sub_1A38DF31C(&qword_1ED996D38, type metadata accessor for GlassCircleElementButton);
    sub_1A38DF0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D30);
  }

  return result;
}

unint64_t sub_1A38DF0B0()
{
  result = qword_1ED996D40;
  if (!qword_1ED996D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D40);
  }

  return result;
}

unint64_t sub_1A38DF104()
{
  result = qword_1ED996D48;
  if (!qword_1ED996D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D48);
  }

  return result;
}

unint64_t sub_1A38DF158()
{
  result = qword_1ED996D50;
  if (!qword_1ED996D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D50);
  }

  return result;
}

uint64_t sub_1A38DF1AC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1A38DF31C(&qword_1EB0FDAB0, type metadata accessor for DetectInteractionGestureModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A38DF260()
{
  result = qword_1ED996D58;
  if (!qword_1ED996D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDA70);
    sub_1A38DF31C(&qword_1ED996D38, type metadata accessor for GlassCircleElementButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D58);
  }

  return result;
}

uint64_t sub_1A38DF31C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A38DF364()
{
  result = qword_1ED996D60;
  if (!qword_1ED996D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDAE0);
    sub_1A38DF3F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D60);
  }

  return result;
}

unint64_t sub_1A38DF3F0()
{
  result = qword_1ED996D68;
  if (!qword_1ED996D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDAE8);
    sub_1A38DF4A8();
    sub_1A38A08F8(&qword_1ED996D78, &qword_1EB0FDAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D68);
  }

  return result;
}

unint64_t sub_1A38DF4A8()
{
  result = qword_1ED996D70;
  if (!qword_1ED996D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996D70);
  }

  return result;
}

uint64_t sub_1A38DF4FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A38DF564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A38DF5C4()
{
  result = qword_1EB0FDB30;
  if (!qword_1EB0FDB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD740);
    sub_1A38DF67C();
    sub_1A38A08F8(qword_1ED996D80, &qword_1EB0FDB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDB30);
  }

  return result;
}

unint64_t sub_1A38DF67C()
{
  result = qword_1EB0FDB38;
  if (!qword_1EB0FDB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6F0);
    sub_1A38DF734();
    sub_1A38A08F8(qword_1ED996D80, &qword_1EB0FDB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDB38);
  }

  return result;
}

unint64_t sub_1A38DF734()
{
  result = qword_1EB0FDB40;
  if (!qword_1EB0FDB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6E8);
    sub_1A38DF7EC();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDB40);
  }

  return result;
}

unint64_t sub_1A38DF7EC()
{
  result = qword_1EB0FDB48;
  if (!qword_1EB0FDB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD6A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD688);
    sub_1A38DC800();
    sub_1A38DC8E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A38DCA00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A38DCC10();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDB48);
  }

  return result;
}

uint64_t Subsystems.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(CAMSubsystems) init];
  return v0;
}

uint64_t Subsystems.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id Subsystems.viewfinderViewController.getter()
{
  v1 = [*(v0 + 16) viewfinderViewController];

  return v1;
}

id sub_1A38DFCC0()
{
  v1 = [*(*v0 + 16) viewfinderViewController];

  return v1;
}

uint64_t type metadata accessor for ModePicker()
{
  result = qword_1ED996DE0;
  if (!qword_1ED996DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A38DFDC0()
{
  sub_1A38E0154(319, &qword_1ED996DF0, type metadata accessor for ModeWheelGestureState, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1A38E0104(319, &qword_1ED996DF8, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1A38E00A0(319, &qword_1ED996E00, &qword_1EB0FDA08, &unk_1A3A6F500, MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1A38E00A0(319, qword_1ED996A70, &qword_1EB0FD160, &unk_1A3A81580, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A38E0154(319, qword_1ED996E08, type metadata accessor for Debouncer, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1A38E0154(319, qword_1ED9967C0, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A38E0154(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1A38E0104(319, &qword_1EB0FDB78, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1A38E0154(319, &qword_1EB0FDB80, MEMORY[0x1E697C988], MEMORY[0x1E697DCC0]);
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

void sub_1A38E00A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A38E0104(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A38E0154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A38E01D4(int a1, double a2)
{
  v9 = MEMORY[0x1E69E6370];
  v10 = MEMORY[0x1E69E6388];
  swift_getKeyPath();
  sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08);
  sub_1A3A2F080();

  v5 = swift_beginAccess();
  v6 = *(v2 + 17);
  if (v6 == 2 || ((v6 ^ a1) & 1) != 0)
  {
    MEMORY[0x1EEE9AC00](v5);
    swift_getKeyPath();
    sub_1A3A2F080();

    v7 = [*(v2 + 24) invalidate];
    if (*(v2 + 24))
    {
      MEMORY[0x1EEE9AC00](v7);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3A2F070();
    }

    sub_1A38E0410(a1 & 1);
    sub_1A38E07A8(a2);
  }
}

uint64_t sub_1A38E0410(int a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 17);
  if (v4 != 2)
  {
    if (a1 != 2 && ((v4 ^ a1) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08);
    sub_1A3A2F070();
  }

  if (a1 != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 17) = a1;
  return result;
}

void sub_1A38E05A0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    MEMORY[0x1EEE9AC00](a1);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08);
    sub_1A3A2F070();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A38E805C(0, &qword_1EB0FC310);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A3A31D10();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

void sub_1A38E0774(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = a2;
  v3 = a2;
}

void sub_1A38E07A8(double a1)
{
  v9 = MEMORY[0x1E69E6370];
  v10 = MEMORY[0x1E69E6388];
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08);
  sub_1A3A2F080();

  v3 = [*(v1 + 24) invalidate];
  if (*(v1 + 24))
  {
    MEMORY[0x1EEE9AC00](v3);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v1;
    sub_1A3A2F070();
  }

  if (a1 <= 0.0)
  {
    sub_1A3A314E0();
    sub_1A3A2F8A0();

    sub_1A38E0410(2);
  }

  else
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1A38E7F7C;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A395EC3C;
    aBlock[3] = &block_descriptor_0;
    v7 = _Block_copy(aBlock);

    v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:a1];
    _Block_release(v7);
    sub_1A38E05A0(v8);
  }
}

uint64_t sub_1A38E0A74()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3A314E0();
    sub_1A3A2F8A0();

    sub_1A38E0410(2);
  }

  return result;
}

uint64_t sub_1A38E0B14(_BYTE *a1)
{
  swift_getKeyPath();
  sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08);
  sub_1A3A2F080();

  swift_beginAccess();
  v2 = a1[17];
  if (v2 == 2)
  {
    LOBYTE(v3) = a1[16];
    result = swift_beginAccess();
    if (v3 != a1[18])
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = v2 & 1;
    result = swift_beginAccess();
    if (a1[18] != v3)
    {
LABEL_5:
      MEMORY[0x1EEE9AC00](result);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3A2F070();
    }
  }

  a1[18] = v3;
  return result;
}

uint64_t sub_1A38E0DA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v198 = a1;
  v3 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v197 = &v183 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModePicker();
  v230 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v215 = v6;
  v226 = &v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
  MEMORY[0x1EEE9AC00](v219);
  v217 = (&v183 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB88);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v189 = &v183 - v12;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB90);
  MEMORY[0x1EEE9AC00](v188);
  v191 = &v183 - v13;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDB98);
  MEMORY[0x1EEE9AC00](v190);
  v216 = &v183 - v14;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBA0);
  MEMORY[0x1EEE9AC00](v192);
  v193 = &v183 - v15;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBA8);
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v17 = &v183 - v16;
  v18 = sub_1A3A2FEE0();
  v229 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v228 = &v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = v5;
  v20 = v1 + *(v5 + 48);
  v21 = *v20;
  LODWORD(v5) = *(v20 + 8);
  sub_1A3A2EA60();
  v22 = v21;
  v232 = v5;
  if ((v5 & 1) == 0)
  {
    sub_1A3A31C30();
    v23 = sub_1A3A305C0();
    sub_1A3A2F270();

    v24 = v228;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v229 + 8))(v24, v18);
    v22 = *v234;
  }

  v194 = v17;
  swift_getKeyPath();
  *v234 = v22;
  sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v25 = *(v22 + 600);
  sub_1A3A2EA50();

  MEMORY[0x1EEE9AC00](v26);
  v181 = v2;
  v27 = sub_1A396B584(sub_1A38E7898, (&v183 - 4), v25);
  v28 = sub_1A395BA98(v27, &unk_1F1654320);

  sub_1A3A2EA60();
  v29 = v21;
  if ((v232 & 1) == 0)
  {
    sub_1A3A31C30();
    v30 = sub_1A3A305C0();
    sub_1A3A2F270();

    v31 = v228;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v229 + 8))(v31, v18);
    v29 = *v234;
  }

  swift_getKeyPath();
  v231 = v21;
  *v234 = v29;
  sub_1A3A2F080();
  v32 = v231;

  LODWORD(v208) = *(v29 + 416);

  sub_1A3A2EA60();
  v33 = v32;
  if ((v232 & 1) == 0)
  {
    sub_1A3A31C30();
    v34 = sub_1A3A305C0();
    sub_1A3A2F270();

    v35 = v228;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v229 + 8))(v35, v18);
    v33 = *v234;
  }

  swift_getKeyPath();
  *v234 = v33;
  sub_1A3A2F080();
  v36 = v231;

  v37 = *(v33 + 400);
  v38 = *(v33 + 408);

  sub_1A3A2EA60();
  v39 = v36;
  if ((v232 & 1) == 0)
  {
    sub_1A3A31C30();
    v40 = sub_1A3A305C0();
    sub_1A3A2F270();

    v41 = v228;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v229 + 8))(v41, v18);
    v39 = *v234;
  }

  swift_getKeyPath();
  *v234 = v39;
  sub_1A3A2F080();
  v42 = v231;

  v43 = *(v39 + 1180);

  v227 = v2;
  v211 = sub_1A38E2840(v28);
  v210 = v44;
  v209 = v45;
  sub_1A3A2EA60();
  v46 = v42;
  if ((v232 & 1) == 0)
  {
    sub_1A3A31C30();
    v47 = sub_1A3A305C0();
    sub_1A3A2F270();

    v48 = v228;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v229 + 8))(v48, v18);
    v46 = *v234;
  }

  v183 = v18;
  KeyPath = swift_getKeyPath();
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v46;
  v50[5] = KeyPath;
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v46;
  v51[5] = KeyPath;
  v51[6] = sub_1A38E28B8;
  v51[7] = 0;
  type metadata accessor for CAMCaptureMode(0);
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A311C0();
  v221 = *&v234[8];
  v222 = *v234;
  v220 = *&v234[16];
  v52 = v214;
  v53 = v227;
  v54 = (v227 + v214[13]);
  v55 = *v54;
  v56 = *(v54 + 8);
  sub_1A38E28CC();
  v204 = v57;
  v203 = v58;
  v59 = *(v28 + 16) >= 3uLL;
  v218 = v28;
  v213 = v8;
  v212 = v11;
  v206 = v55;
  v205 = v56;
  if (v59)
  {
    v60 = v53 + v52[5];
    v61 = *v60;
    v62 = *(v60 + 8);
    LOBYTE(v60) = *(v60 + 16);
    *v234 = v61;
    *&v234[8] = v62;
    v234[16] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
    sub_1A3A311B0();
    v202 = v235;
    v201 = v236;
    v63 = BYTE8(v236);
  }

  else
  {
    LOBYTE(v235) = 0;
    sub_1A3A311D0();
    v201 = *&v234[8];
    v202 = *v234;
    v63 = v234[16];
  }

  v200 = v63;
  v64 = v230;
  v207 = (v43 & 1) == 0;
  v65 = v53 + v52[6];
  *v234 = *v65;
  *&v234[8] = *(v65 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0);
  sub_1A3A311B0();
  v186 = v235;
  v187 = v236;
  sub_1A3A311B0();
  v66 = (v53 + v52[9]);
  v67 = v66[1];
  v225 = *v66;
  v68 = v226;
  sub_1A38E7EA0(v53, v226, type metadata accessor for ModePicker);
  v69 = *(v64 + 80);
  v70 = (v69 + 16) & ~v69;
  v71 = v70 + v215;
  v185 = swift_allocObject();
  sub_1A38E90F0(v68, v185 + v70, type metadata accessor for ModePicker);
  v184 = *(v53 + v52[8]);
  sub_1A38E7EA0(v53, v68, type metadata accessor for ModePicker);
  v230 = v71;
  v72 = swift_allocObject();
  v224 = v70;
  v199 = v72;
  sub_1A38E90F0(v68, v72 + v70, type metadata accessor for ModePicker);
  sub_1A38E7EA0(v53, v68, type metadata accessor for ModePicker);
  v223 = v69;
  v73 = swift_allocObject();
  v74 = v218;
  *(v73 + 16) = v218;
  sub_1A38E90F0(v68, v73 + ((v69 + 24) & ~v69), type metadata accessor for ModePicker);
  v235 = v222;
  *&v236 = v221;
  *(&v236 + 1) = v220;
  v75 = v213;
  v76 = v212;
  v77 = &v212[v213[17]];
  LOBYTE(v233) = 0;
  v78 = v225;
  sub_1A365F488(v225);
  v215 = v67;
  sub_1A365F488(v78);
  sub_1A3A2EA50();
  sub_1A3A2F6D0();
  v79 = *&v234[8];
  v80 = *&v234[16];
  *v77 = v234[0];
  *(v77 + 1) = v79;
  *(v77 + 1) = v80;
  v81 = v75[30];
  if (qword_1EB0FC220 != -1)
  {
    swift_once();
  }

  v82 = v208 == 2;
  *(v76 + v81) = 0x4048000000000000;
  *(v76 + v75[31]) = 0x3FF0000000000000;
  v83 = (v76 + v75[32]);
  sub_1A38E805C(0, qword_1ED996BC8);
  v84 = sub_1A3A31C70();
  type metadata accessor for Debouncer();
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  *(v85 + 24) = v84;
  v233 = v85;
  sub_1A3A30F80();
  v86 = *&v234[8];
  *v83 = *v234;
  v83[1] = v86;
  v87 = v76 + v75[33];
  LOBYTE(v233) = 0;
  sub_1A3A30F80();
  v88 = *&v234[8];
  *v87 = v234[0];
  *(v87 + 8) = v88;
  v89 = v76 + v75[34];
  LOBYTE(v233) = 0;
  sub_1A3A30F80();
  v90 = *&v234[8];
  *v89 = v234[0];
  *(v89 + 8) = v90;
  v91 = (v76 + v75[35]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA08);
  v92 = swift_allocObject();
  *(v92 + 17) = 2;
  *(v92 + 24) = 0;
  sub_1A3A2F0B0();
  *(v92 + 16) = 0;
  *(v92 + 18) = 0;
  v233 = v92;
  sub_1A3A30F80();
  v93 = *&v234[8];
  *v91 = *v234;
  v91[1] = v93;
  v94 = (v76 + v75[36]);
  v233 = 0;
  sub_1A3A30F80();
  v95 = *&v234[8];
  *v94 = *v234;
  v94[1] = v95;
  v96 = v76 + v75[39];
  LOWORD(v233) = 256;
  sub_1A3A30F80();
  v97 = v234[1];
  v98 = *&v234[8];
  *v96 = v234[0];
  *(v96 + 1) = v97;
  *(v96 + 8) = v98;
  v99 = v76 + v75[42];
  LOBYTE(v233) = 0;
  sub_1A3A30F80();
  v100 = *&v234[8];
  *v99 = v234[0];
  *(v99 + 8) = v100;
  v101 = v76 + v75[44];
  LOBYTE(v233) = 0;
  sub_1A3A30F80();
  v102 = *&v234[8];
  *v101 = v234[0];
  *(v101 + 8) = v102;
  v103 = (v76 + v75[46]);
  v233 = 0;
  sub_1A3A30F80();
  v104 = *&v234[8];
  *v103 = *v234;
  v103[1] = v104;
  v105 = (v76 + v75[47]);
  v233 = 0;
  sub_1A3A30F80();
  v106 = *&v234[8];
  *v105 = *v234;
  v105[1] = v106;
  v107 = v76 + v75[48];
  *v107 = swift_getKeyPath();
  *(v107 + 8) = 0;
  v108 = type metadata accessor for ChromeScenePhase(0);
  v109 = *(v108 + 20);
  *(v107 + v109) = swift_getKeyPath();
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670);
  swift_storeEnumTagMultiPayload();
  *(v76 + v75[19]) = v82;
  v110 = (v76 + v75[20]);
  *v110 = v37;
  v110[1] = v38;
  *(v76 + v75[21]) = v207;
  *(v76 + v75[22]) = v74;
  v111 = v211;
  v112 = v210;
  v113 = v209;
  if ((v209 & 1) == 0)
  {
    if (__OFSUB__(v210, v211))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v210 - v211 != 1)
    {
LABEL_35:
      v182 = 0;
      v181 = 43;
      result = sub_1A3A32070();
      __break(1u);
      return result;
    }
  }

  v114 = v76 + v75[23];
  *v114 = v211;
  *(v114 + 8) = v112;
  *(v114 + 16) = v113 & 1;
  sub_1A3A2EA50();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBC0);
  MEMORY[0x1A58F7010](v234, v115);
  v116 = *(v74 + 16);
  if (v116)
  {
    v107 = 0;
    while (*(v74 + 8 * v107 + 32) != *v234)
    {
      if (v116 == ++v107)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_23:

    __break(1u);
  }

  v117 = v76 + v75[37];
  v118 = v76 + v75[38];
  v119 = (v76 + v75[24]);
  *v119 = v222;
  v119[1] = v221;
  v119[2] = v220;
  *v117 = v206;
  *(v117 + 8) = v205;
  *v118 = v204;
  *(v118 + 8) = v203 & 1;
  v120 = v76 + v75[25];
  v121 = v201;
  *v120 = v202;
  *(v120 + 8) = v121;
  *(v120 + 16) = v200;
  v122 = v75[45];
  v233 = v107;
  sub_1A3A30F80();
  *(v76 + v122) = *v234;
  v123 = (v76 + v75[28]);
  v124 = v199;
  *v123 = sub_1A38E7950;
  v123[1] = v124;
  v125 = (v76 + v75[29]);
  *v125 = sub_1A38E79CC;
  v125[1] = v73;
  v126 = v107;
  v127 = 0.0;
  v214 = v108;
  if ((v113 & 1) != 0 || v107 < v111)
  {
    goto LABEL_29;
  }

  if (v112 >= v107)
  {
    if (!__OFADD__(v111, v112))
    {
      v127 = vcvtd_n_f64_s64(v111 + v112, 1uLL) - v126;
LABEL_29:
      v126 = v127 + v126;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

LABEL_30:
  v222 = (v76 + v75[26]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA50);
  v128 = swift_allocObject();
  *(v128 + 40) = 0;
  v129 = *(*v128 + 136);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA58);
  v131 = *(*(v130 - 8) + 56);
  v131(v128 + v129, 1, 1, v130);
  *(v128 + *(*v128 + 144)) = 0x3FA1111111111111;
  sub_1A3A2F0B0();
  v132 = MEMORY[0x1E69E7CC0];
  *(v128 + 16) = MEMORY[0x1E69E7CC0];
  *(v128 + 24) = 0x3F947AE147AE147BLL;
  *(v128 + 32) = v126;
  v133 = (v76 + v75[40]);
  v233 = v128;
  sub_1A3A30F80();
  v134 = *&v234[8];
  *v133 = *v234;
  v133[1] = v134;
  v135 = swift_allocObject();
  *(v135 + 40) = 0;
  v131(v135 + *(*v135 + 136), 1, 1, v130);
  *(v135 + *(*v135 + 144)) = 0x3FA1111111111111;
  sub_1A3A2F0B0();
  *(v135 + 16) = v132;
  *(v135 + 24) = xmmword_1A3A6F4D0;
  v136 = (v76 + v75[41]);
  v233 = v135;
  sub_1A3A30F80();
  v137 = *&v234[8];
  *v136 = *v234;
  v136[1] = v137;
  v138 = v76 + v75[43];
  *v138 = v186;
  *(v138 + 8) = v187;
  sub_1A388F670(v217, v76, &qword_1EB0FDA00);
  v139 = v222;
  v140 = v215;
  *v222 = v225;
  *(v139 + 1) = v140;
  v141 = (v76 + v75[27]);
  v142 = v185;
  *v141 = sub_1A38E7938;
  v141[1] = v142;
  *(v76 + v75[18]) = v184;
  v143 = v189;
  sub_1A388F670(v76, v189, &qword_1EB0FDB88);
  v145 = v226;
  v144 = v227;
  v222 = type metadata accessor for ModePicker;
  sub_1A38E7EA0(v227, v226, type metadata accessor for ModePicker);
  v146 = (v230 + 7) & 0xFFFFFFFFFFFFFFF8;
  v147 = swift_allocObject();
  v148 = v224;
  sub_1A38E90F0(v145, v147 + v224, type metadata accessor for ModePicker);
  *(v147 + v146) = v74;
  v149 = v191;
  sub_1A388F670(v143, v191, &qword_1EB0FDB88);
  v150 = (v149 + *(v188 + 36));
  *v150 = sub_1A38E7A58;
  v150[1] = v147;
  v150[2] = 0;
  v150[3] = 0;
  sub_1A38E7EA0(v144, v145, type metadata accessor for ModePicker);
  v151 = swift_allocObject();
  sub_1A38E90F0(v145, v151 + v148, type metadata accessor for ModePicker);
  v152 = v216;
  v153 = v216 + *(v190 + 36);
  v154 = *MEMORY[0x1E697BE38];
  v155 = sub_1A3A2F540();
  v156 = *(v155 - 8);
  v217 = *(v156 + 104);
  v220 = (v156 + 104);
  v217(v153, v154, v155);
  v157 = type metadata accessor for ScenePhaseModifier(0);
  *(v153 + v157[5]) = 0;
  v158 = (v153 + v157[6]);
  *v158 = sub_1A38E7AE4;
  v158[1] = v151;
  v159 = v153 + v157[7];
  *v159 = swift_getKeyPath();
  *(v159 + 8) = 0;
  v160 = v214[5];
  *(v159 + v160) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v161 = v218;
  sub_1A388F670(v149, v152, &qword_1EB0FDB90);
  v163 = v226;
  v162 = v227;
  sub_1A38E7EA0(v227, v226, v222);
  v164 = swift_allocObject();
  v221 = type metadata accessor for ModePicker;
  sub_1A38E90F0(v163, v164 + v224, type metadata accessor for ModePicker);
  v165 = v193;
  v166 = &v193[*(v192 + 36)];
  v217(v166, *MEMORY[0x1E697BE40], v155);
  v166[v157[5]] = 0;
  v167 = &v166[v157[6]];
  *v167 = sub_1A38E7B60;
  v167[1] = v164;
  v168 = &v166[v157[7]];
  *v168 = swift_getKeyPath();
  v168[8] = 0;
  v169 = v214[5];
  *&v168[v169] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_1A388F670(v216, v165, &qword_1EB0FDB98);
  sub_1A3A2EA50();
  v170 = v197;
  MEMORY[0x1A58F7010](v219);
  LOBYTE(v168) = *(v170 + 1);
  sub_1A38E7B78(v170);
  v234[0] = v168;
  sub_1A38E7EA0(v162, v163, v222);
  v171 = swift_allocObject();
  sub_1A38E90F0(v163, v171 + v224, v221);
  sub_1A38E7C54();
  v172 = v194;
  sub_1A3A30CA0();

  sub_1A388F740(v165, &qword_1EB0FDBA0);
  v173 = sub_1A38E3A68();
  v174 = v231;
  sub_1A3A2EA60();
  if ((v232 & 1) == 0)
  {
    sub_1A3A31C30();
    v175 = sub_1A3A305C0();
    sub_1A3A2F270();

    v176 = v228;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v229 + 8))(v176, v183);
    v174 = *v234;
  }

  v177 = v198;
  (*(v195 + 32))(v198, v172, v196);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBE8);
  v179 = v177 + *(result + 36);
  *v179 = v173 & 1;
  *(v179 + 8) = v161;
  *(v179 + 16) = v174;
  v180 = v215;
  *(v179 + 24) = v225;
  *(v179 + 32) = v180;
  return result;
}

uint64_t sub_1A38E2840(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 32;
  while (1)
  {
    v4 = *(v3 + 8 * v2);
    if (!v4)
    {
      break;
    }

    if (v1 == ++v2)
    {
      return 0;
    }
  }

  while (*(v3 + 8 * v4) != 1)
  {
    if (v1 == ++v4)
    {
      return 0;
    }
  }

  v6 = v2 - v4;
  if (v2 - v4 < 0)
  {
    v6 = v4 - v2;
  }

  if (v4 < v2)
  {
    v2 = v4;
  }

  if (v6 == 1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

double sub_1A38E28CC()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ModePicker() + 48));
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_1A3A2EA60();
  v8 = v6;
  if ((v7 & 1) == 0)
  {
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v8 = v16;
  }

  swift_getKeyPath();
  v16 = v8;
  sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v10 = *(v8 + 416);

  if (v10 <= 1)
  {
    sub_1A3A2EA60();
    if ((v7 & 1) == 0)
    {
      sub_1A3A31C30();
      v12 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v6 = v16;
    }

    swift_getKeyPath();
    v16 = v6;
    sub_1A3A2F080();

    v13 = *(v6 + 416);

    if (!v13)
    {
      v14 = sub_1A3911D18();
      return v14 + v14;
    }
  }

  return result;
}

void *sub_1A38E2BB0()
{
  v1 = v0;
  v2 = sub_1A3A2FEE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v6 = off_1ED997FE0;
  swift_getKeyPath();
  v35 = v6;
  sub_1A38E91A8(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  sub_1A3A2EA60();
  v7 = sub_1A394E960();

  if (v7)
  {
    sub_1A39598B0(1, 0xD000000000000013, 0x80000001A3AA2130, v8);
    v9 = sub_1A3A31DF0();
    v11 = v10;

    v35 = 0xD000000000000011;
    v36 = 0x80000001A3AA20E0;
    MEMORY[0x1A58F7770](v9, v11);

    v12 = v35;
    v13 = v36;
    v15 = sub_1A395994C(1uLL, 0xD000000000000013, 0x80000001A3AA2130, v14);
    v39 = v12;
    v40 = v13;
    v35 = v15;
    v36 = v16;
    v37 = v17;
    v38 = v18;
    sub_1A38E849C();
    sub_1A3A318E0();

    v19 = sub_1A39C3B44();
    LOBYTE(v13) = v20;

    if (v13)
    {
      v23 = 0;
    }

    else
    {
      v23 = v19;
    }

    result = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return result;
    }

    sub_1A39540A0(result, 1, v21, v22);
  }

  v25 = v1 + *(type metadata accessor for ModePicker() + 48);
  v26 = *v25;
  v27 = *(v25 + 8);
  sub_1A3A2EA60();
  v28 = v26;
  if ((v27 & 1) == 0)
  {
    sub_1A3A31C30();
    v29 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v28 = v35;
  }

  v30 = v28[153];
  v31 = v28[154];
  __swift_project_boxed_opaque_existential_1(v28 + 150, v30);
  (*(v31 + 8))(0, 0, 0, 96, v28, v30, v31);

  sub_1A3A2EA60();
  if ((v27 & 1) == 0)
  {
    sub_1A3A31C30();
    v32 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v26 = v35;
  }

  v33 = v26[153];
  v34 = v26[154];
  __swift_project_boxed_opaque_existential_1(v26 + 150, v33);
  (*(v34 + 8))(0, 0, 0, 92, v26, v33, v34);
}

int *sub_1A38E2FF8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v83 = a3;
  v4 = sub_1A3A30050();
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v80 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v72 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBF8);
  MEMORY[0x1EEE9AC00](v73);
  v74 = (&v72 - v8);
  v9 = sub_1A3A30090();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC00);
  v13 = MEMORY[0x1EEE9AC00](v78);
  v75 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v84 = &v72 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v72 - v17;
  v18 = objc_opt_self();
  v76 = a1;
  result = [v18 cam:a1 localizedTitleForMode:0 wantsCompactTitle:?];
  if (result)
  {
    v20 = result;
    v21 = [result cam_uppercaseStringWithPreferredLocale];

    v22 = sub_1A3A31850();
    v24 = v23;

    v88 = v22;
    v89 = v24;
    sub_1A389FD78();
    v25 = sub_1A3A308E0();
    v27 = v26;
    v29 = v28;
    sub_1A38E4B94(v12);
    sub_1A391163C(v12);
    (*(v10 + 8))(v12, v9);
    sub_1A3A30740();
    sub_1A391A414();
    v30 = CEKFontOfSizeWeightStyle();
    sub_1A3A307B0();
    v31 = sub_1A3A308A0();
    v33 = v32;
    v35 = v34;

    sub_1A389F1B4(v25, v27, v29 & 1);

    if (qword_1ED996450 != -1)
    {
      swift_once();
    }

    v36 = sub_1A3A308C0();
    v38 = v37;
    v40 = v39;
    sub_1A389F1B4(v31, v33, v35 & 1);

    if (v85)
    {
      if (qword_1ED996468 != -1)
      {
        swift_once();
      }

      v41 = qword_1ED99D880;
      sub_1A3A2EA60();
    }

    else
    {
      v41 = sub_1A3A30DD0();
    }

    v42 = *(v73 + 36);
    v43 = *MEMORY[0x1E6981DB8];
    v44 = sub_1A3A31520();
    v45 = v74;
    (*(*(v44 - 8) + 104))(v74 + v42, v43, v44);
    *v45 = v41;
    sub_1A38A08F8(&qword_1EB0FDC08, &qword_1EB0FDBF8);
    v46 = sub_1A3A30870();
    v48 = v47;
    v50 = v49;
    v51 = v36;
    v53 = v52;
    v73 = v52;
    sub_1A389F1B4(v51, v38, v40 & 1);

    sub_1A388F740(v45, &qword_1EB0FDBF8);
    v54 = sub_1A3A314E0();
    v88 = v46;
    v89 = v48;
    v90 = v50 & 1;
    v91 = v53;
    v92 = v54;
    v55 = v85;
    v93 = v85 & 1;
    v86 = sub_1A39906E0(v76);
    v87 = v56;
    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x7474754265646F4DLL, 0xEA00000000006E6FLL);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC10);
    sub_1A38E84F0();
    v57 = v75;
    sub_1A3A30B70();

    sub_1A389F1B4(v46, v48, v50 & 1);

    v58 = v77;
    sub_1A3A30040();
    sub_1A3A2FA50();
    v59 = v82;
    v60 = *(v81 + 8);
    v60(v58, v82);
    sub_1A388F740(v57, &qword_1EB0FDC00);
    if (v55)
    {
      v61 = v80;
      sub_1A3A30020();
    }

    else
    {
      v88 = MEMORY[0x1E69E7CC0];
      sub_1A38E91A8(&qword_1ED996BA8, MEMORY[0x1E697F5E0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD510);
      sub_1A38A08F8(&qword_1ED996BB0, &qword_1EB0FD510);
      v61 = v80;
      sub_1A3A31E80();
    }

    v62 = v79;
    v63 = v84;
    sub_1A3A2FA50();
    v60(v61, v59);
    sub_1A388F740(v63, &qword_1EB0FDC00);
    sub_1A3A31590();
    v65 = v64;
    v67 = v66;
    type metadata accessor for ChromeViewModel();
    sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    v68 = sub_1A3A2F650();
    LOBYTE(v63) = v69;
    v70 = v83;
    sub_1A388F670(v62, v83, &qword_1EB0FDC00);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC18);
    v71 = v70 + result[9];
    *v71 = 3;
    *(v71 + 8) = v65;
    *(v71 + 16) = v67;
    *(v71 + 24) = 1;
    *(v71 + 32) = v68;
    *(v71 + 40) = v63 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A38E3860@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1A3A2FEE0();
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = sub_1A38E2840(a3);
  v16 = v15;
  v29 = v17;
  v18 = (a4 + *(type metadata accessor for ModePicker() + 48));
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v30 = *v18;
    sub_1A3A2EA50();
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA50();
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v26 = v10;
    v20 = sub_1A3A305C0();
    v27 = v16;
    v21 = v14;
    v22 = v13;
    v23 = v20;
    sub_1A3A2F270();

    v13 = v22;
    v14 = v21;
    v16 = v27;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v28 + 8))(v12, v26);
    v19 = v30;
  }

  result = sub_1A38E3A68();
  v25 = v29 & 1;
  *a5 = v13;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = v14;
  *(a5 + 32) = v16;
  *(a5 + 40) = v25;
  *(a5 + 48) = v19;
  *(a5 + 56) = result & 1;
  return result;
}

uint64_t sub_1A38E3A68()
{
  v0 = sub_1A3A30430();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  sub_1A38E5708(&v14 - v5);
  sub_1A3A303E0();
  v7 = sub_1A3A30410();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7 & 1) == 0 || (sub_1A38E5708(v6), sub_1A3A30420(), v9 = sub_1A3A30410(), v8(v4, v0), v8(v6, v0), (v9) || (sub_1A38E5708(v6), sub_1A3A303F0(), v10 = sub_1A3A30410(), v8(v4, v0), v8(v6, v0), (v10))
  {
    v11 = 0;
  }

  else
  {
    sub_1A38E5708(v6);
    sub_1A3A30400();
    v13 = sub_1A3A30410();
    v8(v4, v0);
    v8(v6, v0);
    v11 = v13 ^ 1;
  }

  return v11 & 1;
}

void sub_1A38E3C88()
{
  type metadata accessor for ModePicker();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
  sub_1A3A311A0();
  sub_1A38E3D0C();
}

void sub_1A38E3D0C()
{
  v1 = v0;
  v2 = sub_1A3A2FEE0();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModePicker();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + *(MEMORY[0x1EEE9AC00](v5) + 40));
  v11 = *v9;
  v10 = v9[1];
  v50 = v11;
  v51 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBF0);
  sub_1A3A30F90();
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v12 = off_1ED997FE0;
  swift_getKeyPath();
  v50 = v12;
  sub_1A38E91A8(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  sub_1A395B014(v13, v14, v15, v16);
  sub_1A38E7EA0(v1, &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ModePicker);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_1A38E90F0(v8, v18 + v17, type metadata accessor for ModePicker);
  sub_1A3904E64(sub_1A38E8410, v18);

  v19 = v1 + *(v5 + 48);
  v20 = *v19;
  v21 = *(v19 + 8);
  sub_1A3A2EA60();
  v23 = v48;
  v22 = v49;
  if ((v21 & 1) == 0)
  {
    sub_1A3A31C30();
    v24 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v23 + 8))(v4, v22);
  }

  sub_1A3A2EA60();

  v25 = sub_1A392A6C4();

  if (v25)
  {
    goto LABEL_9;
  }

  sub_1A3A2EA60();
  if ((v21 & 1) == 0)
  {
    sub_1A3A31C30();
    v26 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v23 + 8))(v4, v22);
  }

  sub_1A3A2EA60();

  v27 = sub_1A392A508();

  if (v27)
  {
LABEL_9:
    sub_1A3A2EA60();
    if ((v21 & 1) == 0)
    {
      sub_1A3A31C30();
      v28 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v23 + 8))(v4, v22);
      v20 = v50;
    }

    v29 = *(v20 + 1184);
    sub_1A3A2EA60();

    swift_getKeyPath();
    v50 = v29;
    sub_1A38E91A8(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel);
    sub_1A3A2F080();

    if (*(v29 + 17) != 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v47 - 2) = v29;
      *(&v47 - 8) = 1;
      v50 = v29;
      sub_1A3A2F070();
    }

    sub_1A39598B0(1, 0xD000000000000021, 0x80000001A3AA2100, v31);
    v32 = sub_1A3A31DF0();
    v34 = v33;

    v50 = 0xD000000000000011;
    v51 = 0x80000001A3AA20E0;
    MEMORY[0x1A58F7770](v32, v34);

    v35 = v50;
    v36 = v51;
    v38 = sub_1A395994C(1uLL, 0xD000000000000021, 0x80000001A3AA2100, v37);
    v54 = v35;
    v55 = v36;
    v50 = v38;
    v51 = v39;
    v52 = v40;
    v53 = v41;
    sub_1A38E849C();
    sub_1A3A318E0();

    v42 = sub_1A39C3B44();
    LOBYTE(v36) = v43;

    if (v36)
    {
      v46 = 0;
    }

    else
    {
      v46 = v42;
    }

    if (__OFADD__(v46, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1A39540A0(v46 + 1, 0, v44, v45);
    }
  }
}

uint64_t sub_1A38E43F4()
{
  sub_1A3A314E0();
  sub_1A3A2F8A0();
}

uint64_t sub_1A38E4460()
{
  v0 = type metadata accessor for ModeWheelGestureState(0);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v10 - v5;
  if (qword_1EB0FC210 != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EB101B38);
  sub_1A38E7EA0(v7, v6, type metadata accessor for ModeWheelGestureState);
  sub_1A38E7EA0(v6, v3, type metadata accessor for ModeWheelGestureState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
  sub_1A3A311A0();
  sub_1A38E7B78(v6);
  return sub_1A38E45A8();
}

uint64_t sub_1A38E45A8()
{
  v1 = v0;
  v2 = sub_1A3A2FEE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ModePicker();
  v7 = (v0 + v6[12]);
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_1A3A2EA60();
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v10 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A3A2EA60();

  v11 = sub_1A392A950();

  if (v11)
  {
    v13 = (v1 + v6[10]);
    v15 = *v13;
    v14 = v13[1];
    v26 = v15;
    *&v27 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBF0);
    sub_1A3A30F90();
    v16 = v28;
    if (*(v28 + 16))
    {
      sub_1A3A2EA60();
      sub_1A3A316C0();
    }

    *(v16 + 16) = 0;

    v17 = (v1 + v6[5]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v17) = *(v17 + 16);
    v26 = v18;
    *&v27 = v19;
    BYTE8(v27) = v17;
    LOBYTE(v28) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
    sub_1A3A311A0();
    v20 = (v1 + v6[6]);
    v26 = *v20;
    v27 = *(v20 + 1);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0);
    MEMORY[0x1A58F7010](&v28, v21);
    sub_1A38E01D4(1, 0.0);

    sub_1A3A2EA60();
    if ((v9 & 1) == 0)
    {
      sub_1A3A31C30();
      v22 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v3 + 8))(v5, v2);
      v8 = v26;
    }

    v23 = *(v8 + 1184);
    sub_1A3A2EA60();

    swift_getKeyPath();
    v26 = v23;
    sub_1A38E91A8(&qword_1ED996E68, type metadata accessor for ChromeOnboardingViewModel);
    sub_1A3A2F080();

    if (*(v23 + 17))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v25[-16] = v23;
      v25[-8] = 0;
      v26 = v23;
      sub_1A3A2F070();
    }
  }

  return result;
}

uint64_t sub_1A38E49E4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v10 = a3 + *(type metadata accessor for ModePicker() + 48);
    v11 = *v10;
    v12 = *(v10 + 8);
    sub_1A3A2EA60();
    if ((v12 & 1) == 0)
    {
      sub_1A3A31C30();
      v13 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v6 + 8))(v9, v5);
      v11 = v16[1];
    }

    v14 = v11[153];
    v15 = v11[154];
    __swift_project_boxed_opaque_existential_1(v11 + 150, v14);
    (*(v15 + 8))(0, 0, 0, 92, v11, v14, v15);
  }

  return result;
}

uint64_t sub_1A38E4B94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ModePicker();
  sub_1A388F6D8(v1 + *(v10 + 44), v9, &qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30090();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A38E4D9C(uint64_t a1)
{
  v2 = sub_1A3A2F2A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3A2FEE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModeWheelGestureState(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00);
  MEMORY[0x1A58F7010](v13);
  v14 = *v12;
  result = sub_1A38E7B78(v12);
  if ((v14 & 1) == 0)
  {
    v44 = type metadata accessor for ModePicker();
    v16 = *(a1 + v44[12] + 8);
    sub_1A3A2EA60();
    if ((v16 & 1) == 0)
    {
      sub_1A3A31C30();
      v17 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
    }

    sub_1A3A2EA60();

    v18 = sub_1A392A508();

    v19 = (a1 + v44[5]);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v19 + 16);
    v47 = *v19;
    v48 = v21;
    LOBYTE(v49) = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
    MEMORY[0x1A58F7010](v46);
    if (LOBYTE(v46[0]) == 1 && (v18 & 1) == 0)
    {
      if (qword_1ED996460 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v2, qword_1ED99D868);
      (*(v3 + 16))(v5, v24, v2);
      v25 = sub_1A3A2F280();
      v26 = sub_1A3A31C20();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v43 = v3;
        v28 = v27;
        *v27 = 0;
        _os_log_impl(&dword_1A3640000, v25, v26, "Collapsing the mode wheel. It was found to be expanded even though onboarding was complete and the mode wheel should not be expanded.", v27, 2u);
        v29 = v28;
        v3 = v43;
        MEMORY[0x1A58FAC10](v29, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
    }

    v47 = v20;
    v48 = v21;
    LOBYTE(v49) = v22;
    MEMORY[0x1A58F7010](v46, v23);
    if (LOBYTE(v46[0]) == 1)
    {
      v47 = v20;
      v48 = v21;
      LOBYTE(v49) = v22;
      LOBYTE(v46[0]) = 0;
      sub_1A3A311A0();
    }

    v30 = (a1 + v44[6]);
    v31 = *v30;
    v32 = v30[1];
    v33 = v30[2];
    v47 = *v30;
    v48 = v32;
    v49 = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB0);
    v35 = MEMORY[0x1A58F7010](v46);
    v36 = v46[0];
    MEMORY[0x1EEE9AC00](v35);
    v37 = MEMORY[0x1E69E6388];
    *(&v42 - 2) = MEMORY[0x1E69E6370];
    *(&v42 - 1) = v37;
    swift_getKeyPath();
    v47 = v36;
    sub_1A38A08F8(&qword_1ED996E70, &qword_1EB0FDA08);
    sub_1A3A2F080();

    swift_beginAccess();
    v38 = *(v36 + 18);

    if (v38 == 1)
    {
      if (qword_1ED996480 != -1)
      {
        swift_once();
      }

      v39 = off_1ED997FE0;
      swift_getKeyPath();
      v46[0] = v39;
      sub_1A38E91A8(&qword_1ED996650, type metadata accessor for SettingsManager);
      sub_1A3A2F080();

      v40 = v39[2];
      swift_getKeyPath();
      v46[0] = v40;
      sub_1A38E91A8(&qword_1ED996658, type metadata accessor for CameraUISettings);
      sub_1A3A2EA60();
      sub_1A3A2F080();

      v41 = *(v40 + 48);

      if (v41)
      {
        v46[0] = v31;
        v46[1] = v32;
        v46[2] = v33;
        MEMORY[0x1A58F7010](&v45, v34);
        sub_1A38E01D4(0, 0.0);
      }
    }
  }

  return result;
}

BOOL sub_1A38E5410(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v8 = (a2 + *(type metadata accessor for ModePicker() + 48));
  v9 = *v8;
  v10 = *(v8 + 8);
  sub_1A3A2EA60();
  v11 = v9;
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v12 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v11 = v19;
  }

  swift_getKeyPath();
  v19 = v11;
  sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v13 = *(v11 + 592);

  if (v13 == 8)
  {
    v14 = 9;
  }

  else if (v13 == 9)
  {
    v14 = 8;
  }

  else
  {
    sub_1A3A2EA60();
    if ((v10 & 1) == 0)
    {
      sub_1A3A31C30();
      v15 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v9 = v19;
    }

    swift_getKeyPath();
    v19 = v9;
    sub_1A3A2F080();

    v16 = *(v9 + 609);

    v14 = 8;
    if (v16)
    {
      v14 = 9;
    }
  }

  return v18 != v14;
}

uint64_t sub_1A38E5708@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ModePicker();
  sub_1A388F6D8(v1 + *(v10 + 60), v9, &qword_1EB0FDBB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30430();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A38E5910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v58 = a1;
  v5 = sub_1A3A302F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3A304C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC30);
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC38);
  v15 = MEMORY[0x1EEE9AC00](v61);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v55 = &v47 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v57 = &v47 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v47 - v22;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC40);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v47 - v24;
  if (*v3)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC48);
    (*(*(v25 - 8) + 16))(v60, v58, v25);
    swift_storeEnumTagMultiPayload();
    sub_1A38A08F8(&qword_1EB0FDC50, &qword_1EB0FDC48);
    sub_1A38E8B10();
    return sub_1A3A301F0();
  }

  else
  {
    sub_1A3A30490();
    v51 = v23;
    v52 = a2;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC48);
    v48 = v5;
    v28 = v27;
    v49 = sub_1A38A08F8(&qword_1EB0FDC50, &qword_1EB0FDC48);
    v50 = v28;
    v47 = v6;
    v29 = v49;
    sub_1A3A30B00();
    (*(v9 + 8))(v11, v8);
    v30 = *(v3 + 16);
    v64 = *(v3 + 8);
    v31 = *(v3 + 24);
    v58 = *(v3 + 32);
    v32 = swift_allocObject();
    v33 = *(v3 + 16);
    *(v32 + 16) = *v3;
    *(v32 + 32) = v33;
    *(v32 + 48) = *(v3 + 32);
    sub_1A388F6D8(&v64, &v62, &qword_1EB0FDC58);
    sub_1A3A2EA60();
    sub_1A365F488(v31);
    v62 = v28;
    v63 = v29;
    swift_getOpaqueTypeConformance2();
    v34 = v54;
    sub_1A3A30BA0();

    (*(v53 + 8))(v14, v34);
    v35 = v55;
    sub_1A3A2FA60();
    sub_1A388F740(v17, &qword_1EB0FDC38);
    v36 = swift_allocObject();
    v37 = *(v3 + 16);
    *(v36 + 16) = *v3;
    *(v36 + 32) = v37;
    *(v36 + 48) = *(v3 + 32);
    sub_1A388F6D8(&v64, &v62, &qword_1EB0FDC58);
    sub_1A3A2EA60();
    sub_1A365F488(v31);
    v38 = v56;
    sub_1A3A302E0();
    v39 = v57;
    sub_1A3A2FA30();

    (*(v47 + 8))(v38, v48);
    sub_1A388F740(v35, &qword_1EB0FDC38);
    swift_getKeyPath();
    v62 = v30;
    sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v40 = sub_1A39906E0(*(v30 + 592));
    v62 = 0x2E656D6F726843;
    v63 = 0xE700000000000000;
    MEMORY[0x1A58F7770](v40);

    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

    v41 = sub_1A3A31810();

    v42 = CAMLocalizedFrameworkString(v41, 0);

    v43 = sub_1A3A31850();
    v45 = v44;

    v62 = v43;
    v63 = v45;
    sub_1A389FD78();
    v46 = v51;
    sub_1A3A2FA20();

    sub_1A388F740(v39, &qword_1EB0FDC38);
    sub_1A388F6D8(v46, v60, &qword_1EB0FDC38);
    swift_storeEnumTagMultiPayload();
    sub_1A38E8B10();
    sub_1A3A301F0();
    return sub_1A388F740(v46, &qword_1EB0FDC38);
  }
}

uint64_t sub_1A38E60E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3A305A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  swift_getKeyPath();
  v18[1] = v8;
  sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + 32;
    while (*(v13 + 8 * v12) != v8[74])
    {
      if (v11 == ++v12)
      {
        return result;
      }
    }

    (*(v5 + 16))(v7, a1, v4);
    result = (*(v5 + 88))(v7, v4);
    if (result == *MEMORY[0x1E697CC28])
    {
      v14 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        if (v14 >= v11)
        {
          return result;
        }

        goto LABEL_9;
      }

      __break(1u);
LABEL_15:
      result = sub_1A3A32070();
      __break(1u);
      return result;
    }

    if (result != *MEMORY[0x1E697CC20])
    {
      goto LABEL_15;
    }

    v14 = v12 - 1;
    if (v12 - 1 < v11)
    {
LABEL_9:
      v15 = *(v13 + 8 * v14);
      v16 = v8[153];
      v17 = v8[154];
      __swift_project_boxed_opaque_existential_1(v8 + 150, v16);
      return (*(v17 + 8))(v15, 0, 0, 12, v8, v16, v17);
    }
  }

  return result;
}

uint64_t sub_1A38E6368()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 3;
  }

  v3 = 0;
  v4 = v1 + 32;
  while (*(v4 + 8 * v3) != *v0)
  {
    if (v2 == ++v3)
    {
      return 3;
    }
  }

  v5 = *(v0 + 48);
  swift_getKeyPath();
  sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v6 = 0;
  while (*(v4 + 8 * v6) != *(v5 + 592))
  {
    if (v2 == ++v6)
    {
      return 3;
    }
  }

  if (v3 == v6)
  {
    return 0;
  }

  if ((*(v0 + 40) & 1) != 0 || ((v8 = *(v0 + 24), v9 = *(v0 + 32), v6 >= v8) ? (v10 = v9 < v6) : (v10 = 1), v10))
  {
    v12 = v6 - 1;
    v13 = v6 + 1;
    if (v3 == v12)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    if (v3 == v13)
    {
      return 1;
    }

    else
    {
      return v14;
    }
  }

  else if (v9 < v3 || v3 < v8)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A38E64CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v98 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC68);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v78 - v6;
  v8 = sub_1A3A311F0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC70);
  MEMORY[0x1EEE9AC00](v89);
  v12 = &v78 - v11;
  v13 = sub_1A3A2FC50();
  v90 = *(v13 - 8);
  v91 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC78);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v78 - v16;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC80);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v78 - v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC88);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v78 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC90);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v78 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC98);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v24 = MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  if (*(v3 + 56))
  {
    v78 = a1;
    v80 = v20;
    v81 = v19;
    v82 = v27;
    v83 = v26;
    v84 = &v78 - v25;
    v85 = v22;
    v86 = v5;
    v87 = v7;
    sub_1A3A2FC40();
    v28 = *MEMORY[0x1E697F468];
    v29 = sub_1A3A30000();
    v30 = *(*(v29 - 8) + 104);
    v79 = v10;
    v30(v10, v28, v29);
    v31 = *(v3 + 48);
    swift_getKeyPath();
    v99 = v31;
    sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v32 = 1.0;
    v33 = 1.0;
    if (*(v31 + 416) != 2)
    {
      if (sub_1A38E6368())
      {
        v33 = 0.5;
      }

      else
      {
        v33 = 1.0;
      }
    }

    swift_getKeyPath();
    v99 = v31;
    sub_1A3A2F080();

    if (*(v31 + 416) == 2)
    {
      if (sub_1A38E6368())
      {
        v32 = 0.8;
      }

      else
      {
        v32 = 1.0;
      }
    }

    swift_getKeyPath();
    v99 = v31;
    sub_1A3A2F080();

    v34 = *(v31 + 416);
    v35 = v15;
    v36 = sub_1A38E6368();
    if (v34 == 2)
    {
      v37 = v78;
      v38 = v79;
      if (v36 == 2)
      {
        sub_1A3A31580();
      }

      else
      {
        sub_1A3A31570();
      }
    }

    else
    {
      v37 = v78;
      v38 = v79;
      if (v36 == 2)
      {
        sub_1A3A315B0();
      }

      else
      {
        sub_1A3A315A0();
      }
    }

    v43 = v41;
    v44 = v42;
    sub_1A38E90F0(v38, v12, MEMORY[0x1E6981998]);
    v45 = v89;
    v46 = &v12[*(v89 + 36)];
    *v46 = v33;
    v46[1] = v32;
    v47 = &v12[*(v45 + 40)];
    *v47 = v43;
    *(v47 + 1) = v44;
    v48 = v88;
    v49 = &v88[*(v92 + 36)];
    sub_1A388F670(v12, v49, &qword_1EB0FDC70);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDCE0);
    (*(v90 + 32))(v49 + *(v50 + 40), v35, v91);
    *(v49 + *(v50 + 36)) = 0;
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDCA0);
    (*(*(v91 - 8) + 16))(v48, v37, v91);
    v90 = *v3;
    v51 = sub_1A39906E0(v90);
    v99 = 0x2E656D6F726843;
    v100 = 0xE700000000000000;
    MEMORY[0x1A58F7770](v51);

    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

    v52 = sub_1A3A31810();

    v53 = CAMLocalizedFrameworkString(v52, 0);

    v54 = sub_1A3A31850();
    v56 = v55;

    v99 = v54;
    v100 = v56;
    sub_1A38E8ED8();
    sub_1A389FD78();
    v57 = v93;
    sub_1A3A30A90();

    sub_1A388F740(v48, &qword_1EB0FDC78);
    sub_1A38E8E1C();
    v58 = v95;
    sub_1A3A30B40();
    v59 = sub_1A388F740(v57, &qword_1EB0FDC80);
    MEMORY[0x1EEE9AC00](v59);
    *(&v78 - 2) = v3;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDCB0);
    v61 = sub_1A38E8D60();
    v62 = sub_1A38E8FBC();
    v63 = v96;
    v64 = v97;
    sub_1A3A30AF0();
    sub_1A388F740(v58, &qword_1EB0FDC88);
    v65 = swift_allocObject();
    v66 = *(v3 + 16);
    v65[1] = *v3;
    v65[2] = v66;
    v65[3] = *(v3 + 32);
    *(v65 + 57) = *(v3 + 41);
    sub_1A38E9168(v3, &v99);
    v99 = v64;
    v100 = v60;
    v101 = v61;
    v102 = v62;
    swift_getOpaqueTypeConformance2();
    v67 = v82;
    v68 = v81;
    sub_1A3A30BA0();

    (*(v80 + 8))(v63, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD00);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1A3A681C0;
    v70 = sub_1A39906E0(v90);
    v99 = 0x2E656D6F726843;
    v100 = 0xE700000000000000;
    MEMORY[0x1A58F7770](v70);

    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

    v71 = sub_1A3A31810();

    v72 = CAMLocalizedFrameworkString(v71, 0);

    v73 = sub_1A3A31850();
    v75 = v74;

    *(v69 + 32) = v73;
    *(v69 + 40) = v75;
    v76 = v83;
    sub_1A3A2FA70();

    sub_1A388F740(v67, &qword_1EB0FDC98);
    sub_1A38E6368();
    v77 = v84;
    sub_1A3A2FA40();
    sub_1A388F740(v76, &qword_1EB0FDC98);
    sub_1A388F6D8(v77, v87, &qword_1EB0FDC98);
    swift_storeEnumTagMultiPayload();
    sub_1A38E8C3C();
    sub_1A38A08F8(&qword_1EB0FDCD0, &qword_1EB0FDCA0);
    sub_1A3A301F0();
    return sub_1A388F740(v77, &qword_1EB0FDC98);
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDCA0);
    (*(*(v39 - 8) + 16))(v7, a1, v39);
    swift_storeEnumTagMultiPayload();
    sub_1A38E8C3C();
    sub_1A38A08F8(&qword_1EB0FDCD0, &qword_1EB0FDCA0);
    return sub_1A3A301F0();
  }
}

uint64_t sub_1A38E7170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDCF8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &KeyPath - v6;
  if (*(a1 + 8))
  {
    v15 = *(a1 + 16);
    v16 = v15;
    v13 = v5;
    KeyPath = swift_getKeyPath();
    v8 = swift_allocObject();
    v9 = *(a1 + 16);
    v8[1] = *a1;
    v8[2] = v9;
    v8[3] = *(a1 + 32);
    *(v8 + 57) = *(a1 + 41);
    sub_1A388F6D8(&v16, v14, &qword_1EB0FDC58);
    sub_1A38E9168(a1, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDC58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5F8);
    sub_1A38A08F8(&qword_1EB0FDD08, &qword_1EB0FDC58);
    sub_1A38E91A8(&qword_1EB0FDD10, type metadata accessor for CAMCaptureMode);
    sub_1A38A08F8(&qword_1EB0FC608, &qword_1EB0FC5F8);
    sub_1A3A31200();
    (*(v13 + 32))(a2, v7, v4);
    return (*(v13 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v11 = *(v5 + 56);

    return v11(a2, 1, 1, v4);
  }
}

uint64_t sub_1A38E744C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = sub_1A39906E0(*a1);
  v16[0] = 0x2E656D6F726843;
  v16[1] = 0xE700000000000000;
  MEMORY[0x1A58F7770](v4);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v5 = sub_1A3A31810();

  v6 = CAMLocalizedFrameworkString(v5, 0);

  v7 = sub_1A3A31850();
  v9 = v8;

  v10 = sub_1A38E85A8(v7, v9);
  v12 = v11;

  v16[8] = v10;
  v16[9] = v12;
  v13 = swift_allocObject();
  v14 = a2[1];
  *(v13 + 16) = *a2;
  *(v13 + 32) = v14;
  *(v13 + 48) = a2[2];
  *(v13 + 57) = *(a2 + 41);
  *(v13 + 80) = v3;
  sub_1A38E9168(a2, v16);
  sub_1A389FD78();
  return sub_1A3A31000();
}

uint64_t sub_1A38E75D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3A305A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = *(a2 + 48);
  swift_getKeyPath();
  v18[1] = v9;
  sub_1A38E91A8(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v11 = *(v8 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v8 + 32;
    while (*(v13 + 8 * v12) != v9[74])
    {
      if (v11 == ++v12)
      {
        return result;
      }
    }

    (*(v5 + 16))(v7, a1, v4);
    result = (*(v5 + 88))(v7, v4);
    if (result == *MEMORY[0x1E697CC28])
    {
      v14 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        if (v14 >= v11)
        {
          return result;
        }

        goto LABEL_9;
      }

      __break(1u);
LABEL_15:
      result = sub_1A3A32070();
      __break(1u);
      return result;
    }

    if (result != *MEMORY[0x1E697CC20])
    {
      goto LABEL_15;
    }

    v14 = v12 - 1;
    if (v12 - 1 < v11)
    {
LABEL_9:
      v15 = *(v13 + 8 * v14);
      v16 = v9[153];
      v17 = v9[154];
      __swift_project_boxed_opaque_existential_1(v9 + 150, v16);
      return (*(v17 + 8))(v15, 0, 0, 12, v9, v16, v17);
    }
  }

  return result;
}

uint64_t sub_1A38E78B8@<X0>(void *a1@<X8>)
{
  sub_1A3A2EA60();
  swift_getAtKeyPath();

  *a1 = v3;
  return result;
}

uint64_t sub_1A38E79CC@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ModePicker() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_1A38E3860(a1, a2, v8, v9, a3);
}

void sub_1A38E7A58()
{
  type metadata accessor for ModePicker();

  sub_1A38E3C88();
}

uint64_t sub_1A38E7B78(uint64_t a1)
{
  v2 = type metadata accessor for ModeWheelGestureState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A38E7BD4(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for ModePicker() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A38E49E4(a1, a2, v6);
}

unint64_t sub_1A38E7C54()
{
  result = qword_1EB0FDBC8;
  if (!qword_1EB0FDBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDBA0);
    sub_1A38E7D10();
    sub_1A38E91A8(&qword_1ED996E60, type metadata accessor for ScenePhaseModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDBC8);
  }

  return result;
}

unint64_t sub_1A38E7D10()
{
  result = qword_1EB0FDBD0;
  if (!qword_1EB0FDBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDB98);
    sub_1A38E7DCC();
    sub_1A38E91A8(&qword_1ED996E60, type metadata accessor for ScenePhaseModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDBD0);
  }

  return result;
}

unint64_t sub_1A38E7DCC()
{
  result = qword_1EB0FDBD8;
  if (!qword_1EB0FDBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDB90);
    sub_1A38A08F8(&qword_1EB0FDBE0, &qword_1EB0FDB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDBD8);
  }

  return result;
}

uint64_t sub_1A38E7EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A38E7F28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

uint64_t sub_1A38E7FB4()
{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 18) = v2;
  return result;
}

uint64_t sub_1A38E8008()
{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

uint64_t sub_1A38E805C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_22Tm_1()
{
  v1 = type metadata accessor for ModePicker();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA00) + 32);
  v4 = type metadata accessor for ModeWheelGestureState(0);
  v5 = *(v4 + 36);
  v6 = sub_1A3A2ECE0();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v4 + 40);
  v9 = sub_1A3A2F620();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  if (*(v2 + v1[9]))
  {
  }

  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A3A30090();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  v13 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDBB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1A3A30430();
    (*(*(v14 - 8) + 8))(v2 + v13, v14);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A38E8428(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ModePicker() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1A38E849C()
{
  result = qword_1ED996E78;
  if (!qword_1ED996E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996E78);
  }

  return result;
}

unint64_t sub_1A38E84F0()
{
  result = qword_1ED996E80;
  if (!qword_1ED996E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC10);
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996E80);
  }

  return result;
}

uint64_t sub_1A38E85A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3A31810();
  v5 = CAMLocalizedFrameworkString(v4, 0);

  sub_1A3A31850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD310);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A3A681C0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1A38C6EB4();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  sub_1A3A2EA50();
  v7 = sub_1A3A31820();

  return v7;
}

void sub_1A38E86A8(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v18 = a1;
  sub_1A3A2EA60();
  swift_getAtKeyPath();

  if (v17 != a1)
  {
    v7 = a4(&v18);
    if (v10 <= 0xFBu)
    {
      v11 = a2[153];
      v12 = a2[154];
      v13 = v7;
      v14 = v8;
      v15 = v9;
      v16 = v10;
      __swift_project_boxed_opaque_existential_1(a2 + 150, v11);
      (*(v12 + 8))(v13, v14, v15, v16, a2, v11, v12);
      sub_1A3890EA8(v13, v14, v15, v16);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A38E87D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A38E8820(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A38E8878(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1A38E88C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A38E8920()
{
  result = qword_1EB0FDC20;
  if (!qword_1EB0FDC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDBE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDBA0);
    sub_1A38E7C54();
    swift_getOpaqueTypeConformance2();
    sub_1A38E89FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDC20);
  }

  return result;
}

unint64_t sub_1A38E89FC()
{
  result = qword_1EB0FDC28;
  if (!qword_1EB0FDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDC28);
  }

  return result;
}

uint64_t objectdestroy_103Tm()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A38E8AE0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1A38E8B10()
{
  result = qword_1EB0FDC60;
  if (!qword_1EB0FDC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC48);
    sub_1A38A08F8(&qword_1EB0FDC50, &qword_1EB0FDC48);
    swift_getOpaqueTypeConformance2();
    sub_1A38E91A8(&qword_1ED9966D8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDC60);
  }

  return result;
}

unint64_t sub_1A38E8C3C()
{
  result = qword_1EB0FDCA8;
  if (!qword_1EB0FDCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDCB0);
    sub_1A38E8D60();
    sub_1A38E8FBC();
    swift_getOpaqueTypeConformance2();
    sub_1A38E91A8(&qword_1ED9966D8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDCA8);
  }

  return result;
}

unint64_t sub_1A38E8D60()
{
  result = qword_1EB0FDCB8;
  if (!qword_1EB0FDCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC88);
    sub_1A38E8E1C();
    sub_1A38E91A8(&qword_1ED9966D8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDCB8);
  }

  return result;
}

unint64_t sub_1A38E8E1C()
{
  result = qword_1EB0FDCC0;
  if (!qword_1EB0FDCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC80);
    sub_1A38E8ED8();
    sub_1A38E91A8(&qword_1ED9966D8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDCC0);
  }

  return result;
}

unint64_t sub_1A38E8ED8()
{
  result = qword_1EB0FDCC8;
  if (!qword_1EB0FDCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDC78);
    sub_1A38A08F8(&qword_1EB0FDCD0, &qword_1EB0FDCA0);
    sub_1A38A08F8(&qword_1EB0FDCD8, &qword_1EB0FDCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDCC8);
  }

  return result;
}

unint64_t sub_1A38E8FBC()
{
  result = qword_1EB0FDCE8;
  if (!qword_1EB0FDCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDCB0);
    sub_1A38E9040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDCE8);
  }

  return result;
}

unint64_t sub_1A38E9040()
{
  result = qword_1EB0FDCF0;
  if (!qword_1EB0FDCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDCF8);
    sub_1A38A08F8(&qword_1EB0FC608, &qword_1EB0FC5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDCF0);
  }

  return result;
}

uint64_t sub_1A38E90F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A38E91A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_111Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1A38E923C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = v2[153];
  v4 = v2[154];
  __swift_project_boxed_opaque_existential_1(v2 + 150, v3);
  return (*(v4 + 8))(v1, 0, 0, 12, v2, v3, v4);
}

unint64_t sub_1A38E92B4()
{
  result = qword_1EB0FDD18;
  if (!qword_1EB0FDD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDD20);
    sub_1A38A08F8(&qword_1EB0FDC50, &qword_1EB0FDC48);
    sub_1A38E8B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD18);
  }

  return result;
}

unint64_t sub_1A38E936C()
{
  result = qword_1EB0FDD28;
  if (!qword_1EB0FDD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDD30);
    sub_1A38E8C3C();
    sub_1A38A08F8(&qword_1EB0FDCD0, &qword_1EB0FDCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD28);
  }

  return result;
}

unint64_t sub_1A38E9498()
{
  result = qword_1EB0FDD38;
  if (!qword_1EB0FDD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD38);
  }

  return result;
}

float64x2_t sub_1A38E94FC@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>, double a3@<D0>)
{
  v4 = vaddq_f64(v3[1], vmulq_n_f64(vsubq_f64(a1[1], v3[1]), a3));
  *a2 = vaddq_f64(*v3, vmulq_n_f64(vsubq_f64(*a1, *v3), a3));
  a2[1] = v4;
  v5 = vaddq_f64(v3[2], vmulq_n_f64(vsubq_f64(a1[2], v3[2]), a3));
  result = vaddq_f64(v3[3], vmulq_n_f64(vsubq_f64(a1[3], v3[3]), a3));
  a2[2] = v5;
  a2[3] = result;
  return result;
}

double sub_1A38E9548@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = *v5;
  sub_1A38E9A14(v16, a2, a3, a4, a5);
  sub_1A38E9BB0(v17[0].f64, a2, a3, a4, a5);
  sub_1A38E94FC(v17, &v18, v11);
  sub_1A3A30830();
  sub_1A3A30810();
  sub_1A3A30820();
  sub_1A3A30810();
  sub_1A3A30820();
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

double sub_1A38E9640@<D0>(double *a1@<X8>)
{
  sub_1A38E9D44();
  sub_1A38E9910();
  sub_1A3A2F4F0();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A38E96A8()
{
  sub_1A38E9D44();
  sub_1A38E9910();
  return sub_1A3A2F500();
}

void (*sub_1A38E96F8(void *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v3[1] = *v1;
  v3[3] = sub_1A38E9D44();
  v4[4] = sub_1A38E9910();
  sub_1A3A2F4F0();
  return sub_1A38E97A0;
}

void sub_1A38E97A0(void **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  sub_1A3A2F500();

  free(v1);
}

uint64_t sub_1A38E97F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A38E9D98();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1A38E985C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A38E9D98();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1A38E98C0(uint64_t a1)
{
  v2 = sub_1A38E9D98();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_1A38E9910()
{
  result = qword_1EB0FDD48;
  if (!qword_1EB0FDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD48);
  }

  return result;
}

unint64_t sub_1A38E9968()
{
  result = qword_1ED996E88;
  if (!qword_1ED996E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996E88);
  }

  return result;
}

unint64_t sub_1A38E99C0()
{
  result = qword_1ED996E90;
  if (!qword_1ED996E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996E90);
  }

  return result;
}

void sub_1A38E9A14(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1A3A31590();
  v11 = v10;
  v13 = v12;
  v14 = a4 * 0.3;
  v15 = a5 * 0.125;
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  v16 = CGRectGetWidth(v27) * v11 + a2;
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v17 = v16 - a4 * 0.3 * 0.5;
  v18 = v13 * CGRectGetHeight(v28) + a3 - v15 * 0.5;
  v29.origin.x = v17;
  v29.origin.y = v18;
  v29.size.width = v14;
  v29.size.height = v15;
  MinX = CGRectGetMinX(v29);
  v30.origin.x = v17;
  v30.origin.y = v18;
  v30.size.width = v14;
  v30.size.height = v15;
  MinY = CGRectGetMinY(v30);
  v31.origin.x = v17;
  v31.origin.y = v18;
  v31.size.width = v14;
  v31.size.height = v15;
  MaxX = CGRectGetMaxX(v31);
  v32.origin.x = v17;
  v32.origin.y = v18;
  v32.size.width = v14;
  v32.size.height = v15;
  v19 = CGRectGetMinY(v32);
  v33.origin.x = v17;
  v33.origin.y = v18;
  v33.size.width = v14;
  v33.size.height = v15;
  v20 = CGRectGetMinX(v33);
  v34.origin.x = v17;
  v34.origin.y = v18;
  v34.size.width = v14;
  v34.size.height = v15;
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = v17;
  v35.origin.y = v18;
  v35.size.width = v14;
  v35.size.height = v15;
  v22 = CGRectGetMaxX(v35);
  v36.origin.x = v17;
  v36.origin.y = v18;
  v36.size.width = v14;
  v36.size.height = v15;
  v23 = CGRectGetMaxY(v36);
  *a1 = MinX;
  a1[1] = MinY;
  a1[2] = MaxX;
  a1[3] = v19;
  a1[4] = v20;
  a1[5] = MaxY;
  a1[6] = v22;
  a1[7] = v23;
}

void sub_1A38E9BB0(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1A3A31590();
  v11 = v10;
  v13 = v12;
  v14 = a4 * 0.2;
  v15 = a5 * 0.2;
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  v16 = CGRectGetWidth(v27) * v11 + a2;
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v17 = v16 - a4 * 0.2 * 0.5;
  v18 = v13 * CGRectGetHeight(v28) + a3 - v15 * 0.5;
  v29.origin.x = v17;
  v29.origin.y = v18;
  v29.size.width = v14;
  v29.size.height = v15;
  MinX = CGRectGetMinX(v29);
  v30.origin.x = v17;
  v30.origin.y = v18;
  v30.size.width = v14;
  v30.size.height = v15;
  MinY = CGRectGetMinY(v30);
  v31.origin.x = v17;
  v31.origin.y = v18;
  v31.size.width = v14;
  v31.size.height = v15;
  MaxX = CGRectGetMaxX(v31);
  v32.origin.x = v17;
  v32.origin.y = v18;
  v32.size.width = v14;
  v32.size.height = v15;
  MaxY = CGRectGetMaxY(v32);
  v33.origin.x = v17;
  v33.origin.y = v18;
  v33.size.width = v14;
  v33.size.height = v15;
  v20 = CGRectGetMinX(v33);
  v34.origin.x = v17;
  v34.origin.y = v18;
  v34.size.width = v14;
  v34.size.height = v15;
  v21 = CGRectGetMaxY(v34);
  v35.origin.x = v17;
  v35.origin.y = v18;
  v35.size.width = v14;
  v35.size.height = v15;
  v22 = CGRectGetMaxX(v35);
  v36.origin.x = v17;
  v36.origin.y = v18;
  v36.size.width = v14;
  v36.size.height = v15;
  v23 = CGRectGetMinY(v36);
  *a1 = MinX;
  a1[1] = MinY;
  a1[2] = MaxX;
  a1[3] = MaxY;
  a1[4] = v20;
  a1[5] = v21;
  a1[6] = v22;
  a1[7] = v23;
}

unint64_t sub_1A38E9D44()
{
  result = qword_1ED996E98;
  if (!qword_1ED996E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996E98);
  }

  return result;
}

unint64_t sub_1A38E9D98()
{
  result = qword_1EB0FDD50;
  if (!qword_1EB0FDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD50);
  }

  return result;
}

uint64_t sub_1A38E9DEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  v16 = sub_1A38EB264(a1, a2, a3, a4, a5, v18, a8);
  MEMORY[0x1A58F6B00](v18, a6, &type metadata for TappedButtonAnimation, a7, v16);
  v19[2] = v18[2];
  v19[3] = v18[3];
  v19[4] = v18[4];
  v19[5] = v18[5];
  v19[0] = v18[0];
  v19[1] = v18[1];
  return sub_1A38EB35C(v19);
}

uint64_t sub_1A38E9EC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD58);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v19 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0);
  sub_1A3A30F90();
  v6 = v21;
  sub_1A3A31590();
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD60);
  (*(*(v11 - 8) + 16))(v5, a1, v11);
  v12 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD68) + 36)];
  *v12 = v6;
  *(v12 + 1) = v6;
  *(v12 + 2) = v8;
  *(v12 + 3) = v10;
  v19 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD70);
  sub_1A3A30F90();
  *&v5[*(v3 + 36)] = v21;
  v19 = *v1;
  v20 = *(v1 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
  MEMORY[0x1A58F7010](&v21, v13);
  v14 = swift_allocObject();
  v15 = *(v1 + 48);
  v14[3] = *(v1 + 32);
  v14[4] = v15;
  v16 = *(v1 + 80);
  v14[5] = *(v1 + 64);
  v14[6] = v16;
  v17 = *(v1 + 16);
  v14[1] = *v1;
  v14[2] = v17;
  sub_1A38EB47C(v1, &v19);
  sub_1A38EB4B4();
  sub_1A3A30CA0();

  return sub_1A388F740(v5, &qword_1EB0FDD58);
}

uint64_t sub_1A38EA11C(uint64_t a1, _BYTE *a2, _OWORD *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v23 - v7;
  if (*a2 == 1)
  {
    v9 = MEMORY[0x1A58F7350](v6, 0.38, 0.5, 0.0);
    MEMORY[0x1EEE9AC00](v9);
    *&v23[-1] = a3;
    sub_1A3A2F8A0();

    v23[0] = a3[3];
    v24 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
    sub_1A3A30FA0();
    v10 = swift_allocObject();
    v11 = a3[3];
    v10[3] = a3[2];
    v10[4] = v11;
    v12 = a3[5];
    v10[5] = a3[4];
    v10[6] = v12;
    v13 = a3[1];
    v10[1] = *a3;
    v10[2] = v13;
    v14 = sub_1A3A31AD0();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    sub_1A3A31AA0();
    sub_1A38EB47C(a3, v23);
    sub_1A38EB47C(a3, v23);
    sub_1A3A2EA60();
    v15 = sub_1A3A31A90();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    *(v16 + 16) = v15;
    *(v16 + 24) = v17;
    *(v16 + 32) = sub_1A38EB6C0;
    *(v16 + 40) = v10;
    v18 = a3[3];
    *(v16 + 80) = a3[2];
    *(v16 + 96) = v18;
    v19 = a3[5];
    *(v16 + 112) = a3[4];
    *(v16 + 128) = v19;
    v20 = a3[1];
    *(v16 + 48) = *a3;
    *(v16 + 64) = v20;
    sub_1A38EAACC(0, 0, v8, &unk_1A3A6FC90, v16);
  }

  else
  {
    v23[0] = a3[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
    result = sub_1A3A30F90();
    if (v24 == 1)
    {
      v22 = MEMORY[0x1A58F7350](result, 0.466, 0.5, 0.0);
      MEMORY[0x1EEE9AC00](v22);
      *&v23[-1] = a3;
      sub_1A3A2F8A0();
    }
  }

  return result;
}

void *sub_1A38EA424()
{
  LOBYTE(v3) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  sub_1A3A30FA0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC598);
  result = MEMORY[0x1A58F7010](&v3, v0);
  if ((v3 & 1) == 0)
  {
    v2 = MEMORY[0x1A58F7350](result, 0.466, 0.5, 0.0);
    MEMORY[0x1EEE9AC00](v2);
    sub_1A3A2F8A0();
  }

  return result;
}

uint64_t sub_1A38EA530()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0);
  sub_1A3A30FA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD70);
  return sub_1A3A30FA0();
}

uint64_t sub_1A38EA5D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0);
  sub_1A3A30FA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD70);
  return sub_1A3A30FA0();
}

uint64_t sub_1A38EA66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1A3A32040();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  sub_1A3A31AA0();
  v6[8] = sub_1A3A31A90();
  v9 = sub_1A3A31A70();
  v6[9] = v9;
  v6[10] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A38EA764, v9, v8);
}

uint64_t sub_1A38EA764()
{
  v1 = *(v0 + 32);
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  sub_1A3A32250();
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1A38EA834;

  return sub_1A38EADAC(v3, v2, 0, 0, 1);
}

uint64_t sub_1A38EA834()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = sub_1A38EAA4C;
  }

  else
  {
    v8 = sub_1A38EA9CC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A38EA9CC()
{
  v1 = *(v0 + 16);

  v1(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A38EAA4C()
{
  v1 = *(v0 + 16);

  v1(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A38EAACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1A3896E40(a3, v22 - v9);
  v11 = sub_1A3A31AD0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  sub_1A3A2EA60();
  if (v13 == 1)
  {
    sub_1A388F740(v10, &qword_1EB0FC488);
  }

  else
  {
    sub_1A3A31AC0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A3A31A70();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1A3A318A0() + 32;
      sub_1A3A2EA60();
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1A388F740(a3, &qword_1EB0FC488);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A388F740(a3, &qword_1EB0FC488);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1A38EADAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1A3A32030();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1A38EAEAC, 0, 0);
}

uint64_t sub_1A38EAEAC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1A3A32040();
  v5 = sub_1A38EB78C(&qword_1EB0FDD90, MEMORY[0x1E69E8820]);
  sub_1A3A32230();
  sub_1A38EB78C(&qword_1EB0FDD98, MEMORY[0x1E69E87E8]);
  sub_1A3A32050();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A38EB03C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1A38EB03C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A38EB1F8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A38EB1F8()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1A38EB264@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  sub_1A3A30F80();
  sub_1A3A30F80();
  sub_1A3A30F80();
  result = v15;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a7;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  *(a6 + 48) = LOBYTE(v15);
  *(a6 + 56) = v16;
  *(a6 + 64) = v15;
  *(a6 + 72) = v16;
  *(a6 + 80) = v15;
  *(a6 + 88) = v16;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1A38EB3A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1A38EB3F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A38EB4B4()
{
  result = qword_1EB0FDD78;
  if (!qword_1EB0FDD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDD58);
    sub_1A38EB540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD78);
  }

  return result;
}

unint64_t sub_1A38EB540()
{
  result = qword_1EB0FDD80;
  if (!qword_1EB0FDD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDD68);
    sub_1A38EB5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD80);
  }

  return result;
}

unint64_t sub_1A38EB5CC()
{
  result = qword_1EB0FDD88;
  if (!qword_1EB0FDD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDD88);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

uint64_t sub_1A38EB6C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A38910D8;

  return sub_1A38EA66C(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1A38EB78C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A38EB81C()
{
  result = qword_1EB0FDDA0;
  if (!qword_1EB0FDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDDA0);
  }

  return result;
}

uint64_t sub_1A38EB870(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3 || a1 == 4)
    {
LABEL_9:
      v2 = sub_1A3A31810();

      v3 = CAMLocalizedFrameworkString(v2, 0);

      v4 = sub_1A3A31850();
      return v4;
    }
  }

  else
  {
    if (a1 < 2)
    {
      return 0;
    }

    if (a1 == 2)
    {
      goto LABEL_9;
    }
  }

  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

unint64_t sub_1A38EB968@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A38EBED4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A38EB99C()
{
  result = 0xD000000000000019;
  v2 = *v0;
  if (*v0 <= 1)
  {
    if (!v2)
    {
      return 0xD00000000000001BLL;
    }

    if (v2 == 1)
    {
      return result;
    }

LABEL_9:
    result = sub_1A3A321F0();
    __break(1u);
    return result;
  }

  if (v2 == 2)
  {
    return 0xD00000000000001BLL;
  }

  if (v2 != 3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1A38EBA4C()
{
  v0 = sub_1A3A31810();
  v1 = sub_1A3A31810();
  v2 = CAMLocalizedFrameworkString(v0, v1);

  sub_1A3A31850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD310);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A3A681C0;
  sub_1A38EC330();
  v4 = sub_1A3A31E50();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1A38C6EB4();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = sub_1A3A31820();

  return v7;
}

uint64_t sub_1A38EBB88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A38EC0B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1A38EBC00()
{
  result = qword_1EB0FDDA8;
  if (!qword_1EB0FDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDDA8);
  }

  return result;
}

unint64_t sub_1A38EBC54@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A38EC320(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A38EBC88()
{
  result = 0xD000000000000021;
  v2 = *v0;
  if (*v0 > 2)
  {
    if (v2 == 3 || v2 == 4)
    {
      return result;
    }

LABEL_9:
    result = sub_1A3A321F0();
    __break(1u);
    return result;
  }

  if (*v0 < 2)
  {
    return 0xD00000000000001DLL;
  }

  if (v2 != 2)
  {
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_1A38EBD34()
{
  result = qword_1EB0FDDB0;
  if (!qword_1EB0FDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDDB0);
  }

  return result;
}

uint64_t sub_1A38EBD88(unint64_t a1, char a2)
{
  if (a1 <= 0xE)
  {
    if (((1 << a1) & 0x7620) != 0)
    {
      if (a2)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }

    if (((1 << a1) & 0x992) != 0)
    {
      return 1;
    }

    if (((1 << a1) & 0x4C) != 0)
    {
      return 0;
    }
  }

  if (a1 - 10000 < 6 || a1 == 0)
  {
    return 0;
  }

  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0xD000000000000026, 0x80000001A3AA23D0);
  type metadata accessor for CAMCaptureVideoConfiguration(0);
  sub_1A3A32060();
  result = sub_1A3A32070();
  __break(1u);
  return result;
}

unint64_t sub_1A38EBED4(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A38EBEE4(uint64_t a1)
{
  if (a1 <= 9)
  {
    if (a1 > 4)
    {
      if ((a1 - 5) < 3)
      {
        return 30;
      }

      if (a1 == 8)
      {
        return 240;
      }

      if (a1 != 9)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (a1 > 1)
      {
        if (a1 != 3)
        {
          return 120;
        }

        return 240;
      }

      if (!a1)
      {
        return 0;
      }

      if (a1 != 1)
      {
        goto LABEL_26;
      }
    }

    return 60;
  }

  if (a1 <= 13)
  {
    if ((a1 - 11) < 2)
    {
      return 25;
    }

    if (a1 == 10)
    {
      return 24;
    }

    if (a1 != 13)
    {
      goto LABEL_26;
    }

    return 120;
  }

  if ((a1 - 10000) < 6)
  {
    return 0;
  }

  if (a1 == 14)
  {
    return 100;
  }

LABEL_26:
  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0xD000000000000026, 0x80000001A3AA23D0);
  type metadata accessor for CAMCaptureVideoConfiguration(0);
  sub_1A3A32060();
  result = sub_1A3A32070();
  __break(1u);
  return result;
}

uint64_t sub_1A38EC0B8(uint64_t result)
{
  if (result <= 99)
  {
    if (result <= 0x3C && ((1 << result) & 0x1000000043000000) != 0)
    {
      return result;
    }

    return 0;
  }

  if (result != 100 && result != 120 && result != 240)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1A38EC10C(unint64_t result, unint64_t a2, char a3)
{
  if (result >= 2)
  {
    if (result != 2)
    {
      sub_1A3A31F20();
      MEMORY[0x1A58F7770](0xD000000000000029, 0x80000001A3AA2330);
      type metadata accessor for CAMCaptureVideoEncodingBehavior(0);
      sub_1A3A32060();
LABEL_10:
      result = sub_1A3A32070();
      __break(1u);
      return result;
    }

    if (a3)
    {
      sub_1A3A31F20();
      MEMORY[0x1A58F7770](0xD000000000000018, 0x80000001A3AA2360);
      type metadata accessor for CAMCaptureVideoEncodingBehavior(0);
      sub_1A3A32060();
      MEMORY[0x1A58F7770](0xD00000000000002FLL, 0x80000001A3AA2380);
      goto LABEL_10;
    }

    if (a2 >= 4)
    {
      sub_1A3A31F20();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDDC0);
      v3 = sub_1A3A31880();
      MEMORY[0x1A58F7770](v3);

      goto LABEL_10;
    }

    return qword_1A3A70000[a2];
  }

  return result;
}

unint64_t sub_1A38EC320(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1A38EC330()
{
  result = qword_1EB0FDDB8;
  if (!qword_1EB0FDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDDB8);
  }

  return result;
}

uint64_t *sub_1A38EC3AC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1A38EC3D8()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x6F63657220746F4ELL;
  }

  if (v1 == 2)
  {
    return 0x646573756150;
  }

  if (v1 == 1)
  {
    return 0x6E6964726F636552;
  }

  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

unint64_t sub_1A38EC47C()
{
  result = qword_1EB0FDDC8;
  if (!qword_1EB0FDDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FDDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FDDC8);
  }

  return result;
}

uint64_t sub_1A38EC4E4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38EC588()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 848);
}

uint64_t sub_1A38EC62C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 416);
}

uint64_t sub_1A38EC6CC()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 392);
}

double sub_1A38EC76C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 424);
}

double sub_1A38EC80C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 712);
}

double sub_1A38EC8AC()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 672);
}

uint64_t sub_1A38EC94C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38EC9F0()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1067);
}

uint64_t sub_1A38ECA90()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 976);
}

uint64_t sub_1A38ECB30(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 592) != a1)
  {
    swift_getKeyPath();
    sub_1A3A2F080();

    if (*(a2 + 48) == 255)
    {
      goto LABEL_12;
    }

    swift_getKeyPath();
    sub_1A3A2F080();

    if (*(a2 + 48) == 255)
    {
      goto LABEL_12;
    }

    swift_getKeyPath();
    sub_1A3A2F080();

    v6 = *(a2 + 24);
    v5 = *(a2 + 32);
    v7 = *(a2 + 40);
    v8 = *(a2 + 48);
    sub_1A38BCF64(v6, v5, v7, *(a2 + 48));
    result = sub_1A38EEF8C(0, 0, 0, 255);
    if (v8 == 1)
    {
      if (v6 == 35)
      {
        v9 = 35;
      }

      else
      {
        sub_1A38F6EF8(v6, 0x23uLL);
        v9 = v6;
      }

      v10 = v5;
      v11 = v7;
      v12 = 1;
    }

    else
    {
      if (v8 == 255)
      {
        goto LABEL_12;
      }

      v9 = v6;
      v10 = v5;
      v11 = v7;
      v12 = v8;
    }

    result = sub_1A38BC250(v9, v10, v11, v12);
LABEL_12:
    if (*(a2 + 592) != a1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A3A2F070();
    }
  }

  return result;
}

uint64_t sub_1A38ECDBC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a2 + 976) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38ECEFC(uint64_t a1, double a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 704) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38ED040(uint64_t a1, double a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 712) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38ED184(uint64_t a1, double a2)
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (*(a1 + 672) != a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

double sub_1A38ED2C8()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 224);
}

uint64_t sub_1A38ED36C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(v4[7], v11);
  if (result)
  {
    v4[7].origin.x = a1;
    v4[7].origin.y = a2;
    v4[7].size.width = a3;
    v4[7].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

double sub_1A38ED4B4()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 400);
}

double sub_1A38ED554()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 256);
}

uint64_t sub_1A38ED5F8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(v4[8], v11);
  if (result)
  {
    v4[8].origin.x = a1;
    v4[8].origin.y = a2;
    v4[8].size.width = a3;
    v4[8].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

double sub_1A38ED740()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 288);
}

uint64_t sub_1A38ED7E4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(v4[9], v11);
  if (result)
  {
    v4[9].origin.x = a1;
    v4[9].origin.y = a2;
    v4[9].size.width = a3;
    v4[9].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

double sub_1A38ED92C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 320);
}

uint64_t sub_1A38ED9D0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(v4[10], v11);
  if (result)
  {
    v4[10].origin.x = a1;
    v4[10].origin.y = a2;
    v4[10].size.width = a3;
    v4[10].size.height = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A38EDB18()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 584);
}

uint64_t sub_1A38EDBB8()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1154);
}

uint64_t sub_1A38EDC58()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 1153);
}

uint64_t sub_1A38EDCF8()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 800);
}

uint64_t sub_1A38EDD98()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return sub_1A3A2EA60();
}

uint64_t sub_1A38EDE3C()
{
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  return *(v0 + 904);
}

uint64_t sub_1A38EDF20(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v10 = (a3 + 32);
    v11 = v6 - 1;
    do
    {
      v12 = *v10++;
      v16 = v12;
      a4(v12);
      v13 = a1(&v16);
      a5(v12);
      if (v5)
      {
        break;
      }

      v14 = v11-- == 0;
    }

    while (((v13 | v14) & 1) == 0);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

uint64_t sub_1A38EDFE0(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_getKeyPath();
  sub_1A3903C74(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v11 = *(v4 + 48);
  if (v11 == 255)
  {
    if (a4 == -1)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (a4 == -1)
  {
    goto LABEL_23;
  }

  v13 = *(v4 + 24);
  v12 = *(v4 + 32);
  v14 = *(v4 + 40);
  if (!v11)
  {
    if (a4 || v13 != a1 || v12 != a2 || v14 != a3)
    {
      goto LABEL_23;
    }

    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = 0;
    return sub_1A38BC250(v15, v16, v17, v18);
  }

  if (v11 != 1)
  {
    if (a4 != 2)
    {
      goto LABEL_23;
    }

    sub_1A38BCF64(a1, a2, a3, 2);
    sub_1A38BCF64(v13, v12, v14, 2);
    v23 = sub_1A3A018A8(v13, a1);
    sub_1A38BC250(a1, a2, a3, 2);
    sub_1A38BC250(v13, v12, v14, 2);
    if ((v23 & 1) == 0)
    {
      goto LABEL_23;
    }

    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = 2;
    return sub_1A38BC250(v15, v16, v17, v18);
  }

  if (a4 != 1)
  {
LABEL_23:
    swift_getKeyPath();
    sub_1A3A2F080();

    v19 = *(v5 + 24);
    v20 = *(v5 + 32);
    v21 = *(v5 + 40);
    v22 = *(v5 + 48);
    sub_1A38BCF64(a1, a2, a3, a4);
    sub_1A38BCF64(v19, v20, v21, v22);
    sub_1A38EEF8C(a1, a2, a3, a4);
    sub_1A38F6CFC(v19, v20, v21, v22, a1, a2, a3, a4);
    sub_1A38BC250(a1, a2, a3, a4);
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    return sub_1A38BC250(v15, v16, v17, v18);
  }

  if (v13 != 35)
  {
    if (a1 == 35)
    {
      sub_1A38BCF78(0x23uLL, a2, a3, 1);
      goto LABEL_23;
    }

    sub_1A38BCF64(a1, a2, a3, 1);
    sub_1A38BCF64(v13, v12, v14, 1);
    v24 = sub_1A3A018A8(v13, a1);
    sub_1A38BC250(a1, a2, a3, 1);
    sub_1A38BC250(v13, v12, v14, 1);
    if ((v24 & 1) == 0)
    {
      goto LABEL_23;
    }

    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = 1;
    return sub_1A38BC250(v15, v16, v17, v18);
  }

  if (a1 != 35)
  {
    goto LABEL_23;
  }

  return result;
}