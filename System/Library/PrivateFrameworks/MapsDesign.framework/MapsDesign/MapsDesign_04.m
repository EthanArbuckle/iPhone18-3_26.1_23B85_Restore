uint64_t sub_213E2C7F4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92B8, &qword_213F57310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v41 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C0, &qword_213F57318);
  v8 = *(*(v42 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v44 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v43 = &v41 - v14;
  v15 = type metadata accessor for CategoryTile(0);
  v16 = v15 - 8;
  v41 = *(v15 - 8);
  v17 = *(v41 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_213F51DE0;
  v20 = (*(a1 + *(v16 + 36)) + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_colorGradient);
  *(v19 + 32) = *v20;
  *(v19 + 40) = v20[1];

  sub_213F4F020();
  sub_213F4F030();
  MEMORY[0x2160521D0](v19);
  sub_213F4D2C0();
  v21 = v57;
  v22 = v58;
  v23 = v59;
  v24 = v60;
  v25 = v61;
  sub_213E2F560(a1, v18, type metadata accessor for CategoryTile);
  v26 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v27 = swift_allocObject();
  sub_213E2EC34(v18, v27 + v26);
  *v7 = sub_213F4DA40();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92D0, &unk_213F57328);
  sub_213E2CD78(a1, &v7[*(v28 + 44)]);
  v29 = a1 + *(v16 + 44);
  v30 = *v29;
  v31 = *(v29 + 8);
  LOBYTE(v62) = v30;
  *(&v62 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (LOBYTE(v51[0]) == 1)
  {
    sub_213F4EF00();
  }

  else
  {
    sub_213F4EEE0();
  }

  sub_213F4D4E0();
  sub_213DE2B44(v7, v13, &qword_27C8F92B8, &qword_213F57310);
  v32 = &v13[*(v42 + 36)];
  v33 = v67;
  *(v32 + 4) = v66;
  *(v32 + 5) = v33;
  *(v32 + 6) = v68;
  v34 = v63;
  *v32 = v62;
  *(v32 + 1) = v34;
  v35 = v65;
  *(v32 + 2) = v64;
  *(v32 + 3) = v35;
  v36 = v43;
  sub_213DE2B44(v13, v43, &qword_27C8F92C0, &qword_213F57318);
  v37 = v44;
  sub_213DE3164(v36, v44, &qword_27C8F92C0, &qword_213F57318);
  *&v45 = v21;
  *(&v45 + 1) = v22;
  *&v46 = v23;
  *(&v46 + 1) = v24;
  *&v47 = v25;
  WORD4(v47) = 256;
  v48 = sub_213DD7524;
  v49 = 0;
  *&v50 = sub_213E2F4F0;
  *(&v50 + 1) = v27;
  a2[2] = v47;
  a2[3] = sub_213DD7524;
  a2[4] = v50;
  v38 = v46;
  *a2 = v45;
  a2[1] = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92D8, &qword_213F57338);
  sub_213DE3164(v37, a2 + *(v39 + 48), &qword_27C8F92C0, &qword_213F57318);
  sub_213DE3164(&v45, v51, &qword_27C8F92E0, &qword_213F57340);
  sub_213DE36FC(v36, &qword_27C8F92C0, &qword_213F57318);
  sub_213DE36FC(v37, &qword_27C8F92C0, &qword_213F57318);
  v51[0] = v21;
  v51[1] = v22;
  v51[2] = v23;
  v51[3] = v24;
  v51[4] = v25;
  v52 = 256;
  v53 = sub_213DD7524;
  v54 = 0;
  v55 = sub_213E2F4F0;
  v56 = v27;
  return sub_213DE36FC(v51, &qword_27C8F92E0, &qword_213F57340);
}

uint64_t sub_213E2CCFC(double *a1, uint64_t a2)
{
  v2 = a1[1] < *a1;
  v3 = (a2 + *(type metadata accessor for CategoryTile(0) + 36));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213E2CD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_213F4D390();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92E8, &qword_213F57348);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92F0, &qword_213F57350);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  sub_213E2C354(v13);
  sub_213F4EEE0();
  v25 = 1;
  sub_213F4D4E0();
  sub_213DE2B44(v13, v22, &qword_27C8F92E8, &qword_213F57348);
  v26 = &v22[*(v15 + 44)];
  v27 = v53;
  *(v26 + 4) = v52;
  *(v26 + 5) = v27;
  *(v26 + 6) = v54;
  v28 = v49;
  *v26 = v48;
  *(v26 + 1) = v28;
  v29 = v51;
  *(v26 + 2) = v50;
  *(v26 + 3) = v29;
  sub_213DE2B44(v22, v24, &qword_27C8F92F0, &qword_213F57350);
  v30 = (a1 + *(type metadata accessor for CategoryTile(0) + 36));
  v31 = *v30;
  v32 = *(v30 + 1);
  v46 = v31;
  v47 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v45 == 1)
  {
    sub_213E2BADC(v9);
    v34 = v42;
    v33 = v43;
    (*(v42 + 104))(v7, *MEMORY[0x277CDF988], v43);
    v35 = sub_213F4D380();
    v36 = *(v34 + 8);
    v36(v7, v33);
    v36(v9, v33);
    v25 = v35 & 1;
    v37 = v35 ^ 1;
  }

  else
  {
    v37 = 0;
  }

  sub_213DE3164(v24, v19, &qword_27C8F92F0, &qword_213F57350);
  v38 = v44;
  sub_213DE3164(v19, v44, &qword_27C8F92F0, &qword_213F57350);
  v39 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92F8, &qword_213F57358) + 48);
  *v39 = 0;
  *(v39 + 8) = v25;
  *(v39 + 9) = v37 & 1;
  sub_213DE36FC(v24, &qword_27C8F92F0, &qword_213F57350);
  return sub_213DE36FC(v19, &qword_27C8F92F0, &qword_213F57350);
}

uint64_t sub_213E2D158@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = sub_213F4D290();
  v69 = *(v3 - 8);
  v4 = *(v69 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v67 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v66 = &v60 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9228, &unk_213F5A640);
  v8 = *(*(v63 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v63);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  v14 = sub_213F4D390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v60 - v20;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9230, &qword_213F57250);
  v22 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v24 = &v60 - v23;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9238, &qword_213F57258);
  v25 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v27 = &v60 - v26;
  *v27 = sub_213F4DA50();
  *(v27 + 1) = 0;
  v27[16] = 0;
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9240, &qword_213F57260) + 44);
  v62 = v27;
  v68 = v2;
  sub_213E2D7C0(v2, &v27[v28]);
  v29 = v15;
  v30 = *(v15 + 104);
  v30(v21, *MEMORY[0x277CDF9E8], v14);
  v30(v19, *MEMORY[0x277CDF998], v14);
  sub_213E2B0BC(&qword_281183490, MEMORY[0x277CDFA28]);
  result = sub_213F4F1E0();
  if (result)
  {
    v32 = *(v29 + 32);
    v32(v13, v21, v14);
    v33 = v63;
    v32(&v13[*(v63 + 48)], v19, v14);
    sub_213DE3164(v13, v11, &qword_27C8F9228, &unk_213F5A640);
    v60 = v3;
    v34 = *(v33 + 48);
    v32(v24, v11, v14);
    v35 = *(v29 + 8);
    v35(&v11[v34], v14);
    sub_213DE2B44(v13, v11, &qword_27C8F9228, &unk_213F5A640);
    v32(&v24[*(v64 + 36)], &v11[*(v33 + 48)], v14);
    v35(v11, v14);
    sub_213DE3AE4(&qword_27C8F9248, &qword_27C8F9238, &qword_213F57258);
    sub_213DE3AE4(&qword_281182520, &qword_27C8F9230, &qword_213F57250);
    v36 = v65;
    v37 = v62;
    sub_213F4E570();
    sub_213DE36FC(v24, &qword_27C8F9230, &qword_213F57250);
    sub_213DE36FC(v37, &qword_27C8F9238, &qword_213F57258);
    LOBYTE(v33) = sub_213F4E070();
    v38 = v66;
    sub_213E2B8DC(v66);
    v39 = v67;
    sub_213F4D280();
    sub_213F4D270();
    v40 = *(v69 + 8);
    v41 = v60;
    v40(v39, v60);
    v40(v38, v41);
    sub_213F4CDA0();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9250, &qword_213F57268) + 36);
    *v50 = v33;
    *(v50 + 8) = v43;
    *(v50 + 16) = v45;
    *(v50 + 24) = v47;
    *(v50 + 32) = v49;
    *(v50 + 40) = 0;
    LOBYTE(v33) = sub_213F4E040();
    sub_213E2B8DC(v38);
    sub_213F4D280();
    sub_213F4D270();
    v40(v39, v41);
    v40(v38, v41);
    sub_213F4CDA0();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9208, &qword_213F57228);
    v59 = v36 + *(result + 36);
    *v59 = v33;
    *(v59 + 8) = v52;
    *(v59 + 16) = v54;
    *(v59 + 24) = v56;
    *(v59 + 32) = v58;
    *(v59 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E2D7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9258, &qword_213F57270);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v84 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v72 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9260, &qword_213F57278);
  v8 = *(*(v87 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v87);
  v81 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v72 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9268, &qword_213F57280);
  v13 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v76 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9270, &qword_213F57288);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v82 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v72 - v19;
  v79 = *(a1 + *(type metadata accessor for CategoryTile(0) + 28));
  v20 = *(v79 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_title + 8);
  *&v91 = *(v79 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_title);
  *(&v91 + 1) = v20;
  v77 = sub_213DBC9EC();

  v21 = sub_213F4E310();
  v23 = v22;
  v25 = v24;
  sub_213F4E8F0();
  v26 = sub_213F4E900();

  *&v91 = v26;
  v27 = sub_213F4E2B0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_213DBCA40(v21, v23, v25 & 1);

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9278, &qword_213F57290);
  v34 = *(v78 + 36);
  v74 = *MEMORY[0x277CE13B8];
  v35 = v74;
  v36 = sub_213F4EF90();
  v37 = *(v36 - 8);
  v73 = *(v37 + 104);
  v75 = v37 + 104;
  v73(&v12[v34], v35, v36);
  *v12 = v27;
  *(v12 + 1) = v29;
  v12[16] = v31 & 1;
  *(v12 + 3) = v33;
  sub_213F4E0C0();
  sub_213F4E180();
  v38 = sub_213F4E1D0();

  KeyPath = swift_getKeyPath();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9280, &unk_213F5A700);
  v40 = &v12[*(v72 + 36)];
  *v40 = KeyPath;
  v40[1] = v38;
  v41 = swift_getKeyPath();
  v42 = &v12[*(v87 + 36)];
  *v42 = v41;
  *(v42 + 1) = 1;
  v42[16] = 0;
  sub_213F4EEB0();
  sub_213F4D4E0();
  v43 = v76;
  sub_213DE2B44(v12, v76, &qword_27C8F9260, &qword_213F57278);
  v44 = (v43 + *(v80 + 36));
  v45 = v96;
  v44[4] = v95;
  v44[5] = v45;
  v44[6] = v97;
  v46 = v92;
  *v44 = v91;
  v44[1] = v46;
  v47 = v94;
  v44[2] = v93;
  v44[3] = v47;
  sub_213E2F270();
  sub_213F4E6D0();
  sub_213DE36FC(v43, &qword_27C8F9268, &qword_213F57280);
  v48 = *(v79 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_subtitle + 8);
  v88 = *(v79 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_subtitle);
  v89 = v48;

  v49 = sub_213F4E310();
  v51 = v50;
  LOBYTE(v29) = v52;
  v88 = sub_213F4E8F0();
  v89 = 1;
  v90 = 1060320051;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92A0, &qword_213F57300);
  sub_213DE3AE4(&qword_27C8F92A8, &qword_27C8F92A0, &qword_213F57300);
  v53 = sub_213F4E2B0();
  v55 = v54;
  LOBYTE(v26) = v56;
  v58 = v57;
  sub_213DBCA40(v49, v51, v29 & 1);

  v59 = v81;
  v73(&v81[*(v78 + 36)], v74, v36);
  *v59 = v53;
  *(v59 + 8) = v55;
  *(v59 + 16) = v26 & 1;
  *(v59 + 24) = v58;
  sub_213F4E210();
  sub_213F4E180();
  v60 = sub_213F4E1D0();

  v61 = swift_getKeyPath();
  v62 = (v59 + *(v72 + 36));
  *v62 = v61;
  v62[1] = v60;
  v63 = swift_getKeyPath();
  v64 = v59 + *(v87 + 36);
  *v64 = v63;
  *(v64 + 8) = 1;
  *(v64 + 16) = 0;
  sub_213E2F2FC();
  v65 = v83;
  sub_213F4E6D0();
  sub_213DE36FC(v59, &qword_27C8F9260, &qword_213F57278);
  v66 = v86;
  v67 = v82;
  sub_213DE3164(v86, v82, &qword_27C8F9270, &qword_213F57288);
  v68 = v84;
  sub_213DE3164(v65, v84, &qword_27C8F9258, &qword_213F57270);
  v69 = v85;
  sub_213DE3164(v67, v85, &qword_27C8F9270, &qword_213F57288);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92B0, &qword_213F57308);
  sub_213DE3164(v68, v69 + *(v70 + 48), &qword_27C8F9258, &qword_213F57270);
  sub_213DE36FC(v65, &qword_27C8F9258, &qword_213F57270);
  sub_213DE36FC(v66, &qword_27C8F9270, &qword_213F57288);
  sub_213DE36FC(v68, &qword_27C8F9258, &qword_213F57270);
  return sub_213DE36FC(v67, &qword_27C8F9270, &qword_213F57288);
}

uint64_t CategoryTile.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CategoryTile(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9198, &qword_213F570D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  sub_213E2F560(v1, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CategoryTile);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_213E2EC34(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91A0, &qword_213F570D8);
  sub_213E2ECA4();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_27C8F91D0, &qword_27C8F9198, &qword_213F570D0);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v6 + 8))(v9, v5);
}

double sub_213E2E21C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  *a2 = sub_213F4EEE0();
  a2[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9200, &qword_213F57220);
  sub_213E2E428(a1, a2 + *(v13 + 44));
  sub_213E2B8DC(v11);
  sub_213F4D280();
  sub_213F4D270();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v14(v11, v4);
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91B8, &qword_213F570E0) + 36);
  v16 = *(sub_213F4D470() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_213F4D950();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #20.0 }

  *v15 = _Q0;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91A0, &qword_213F570D8) + 36);
  result = 1.02122917e277;
  *v24 = xmmword_213F56FF0;
  v24[16] = 12;
  return result;
}

uint64_t sub_213E2E428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9208, &qword_213F57228);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9210, &qword_213F57230);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v22 - v16);
  *v17 = sub_213F4EEE0();
  v17[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9218, &qword_213F57238);
  sub_213E2C7F4(a1, (v17 + *(v19 + 44)));
  sub_213E2D158(v10);
  sub_213DE3164(v17, v15, &qword_27C8F9210, &qword_213F57230);
  sub_213DC429C(v10, v8);
  sub_213DE3164(v15, a2, &qword_27C8F9210, &qword_213F57230);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9220, &unk_213F57240);
  sub_213DC429C(v8, a2 + *(v20 + 48));
  sub_213DC430C(v10);
  sub_213DE36FC(v17, &qword_27C8F9210, &qword_213F57230);
  sub_213DC430C(v8);
  return sub_213DE36FC(v15, &qword_27C8F9210, &qword_213F57230);
}

uint64_t sub_213E2E60C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9198, &qword_213F570D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  sub_213E2F560(v2, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CategoryTile);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_213E2EC34(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v14 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91A0, &qword_213F570D8);
  sub_213E2ECA4();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_27C8F91D0, &qword_27C8F9198, &qword_213F570D0);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_213E2E880(uint64_t a1)
{
  v2 = sub_213F4D390();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_213F4D600();
}

uint64_t sub_213E2E948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = a6;
  v29 = a7;
  v27 = a4;
  v15 = sub_213F4CB40();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a9;
  v32 = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a5, a9);
  sub_213F4CB30();
  (*(v16 + 32))(a8 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel__id, v19, v15);
  sub_213F4CBB0();
  v21 = (a8 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_title);
  *v21 = a1;
  v21[1] = a2;
  v22 = (a8 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_subtitle);
  v23 = v27;
  *v22 = a3;
  v22[1] = v23;
  sub_213DD7500(&v30, a8 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_imageProvider);
  v24 = (a8 + OBJC_IVAR____TtC10MapsDesign21CategoryTileViewModel_colorGradient);
  v25 = v29;
  *v24 = v28;
  v24[1] = v25;
  return a8;
}

uint64_t sub_213E2EAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a6;
  v25 = a7;
  v15 = *(a9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CategoryTileViewModel(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  (*(v15 + 16))(v18, a5, a9);
  return sub_213E2E948(a1, a2, a3, a4, v18, v24, v25, v22, a9, a10);
}

uint64_t sub_213E2EC34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryTile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E2ECA4()
{
  result = qword_27C8F91A8;
  if (!qword_27C8F91A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F91A0, &qword_213F570D8);
    sub_213E2ED30();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F91A8);
  }

  return result;
}

unint64_t sub_213E2ED30()
{
  result = qword_27C8F91B0;
  if (!qword_27C8F91B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F91B8, &qword_213F570E0);
    sub_213DE3AE4(&qword_27C8F91C0, &qword_27C8F91C8, &unk_213F570E8);
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F91B0);
  }

  return result;
}

unint64_t sub_213E2EE14()
{
  result = qword_2811882A0;
  if (!qword_2811882A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811882A0);
  }

  return result;
}

uint64_t sub_213E2EED4()
{
  result = sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_213F4CBC0();
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

void sub_213E2F078()
{
  sub_213E2F1B0(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v0 <= 0x3F)
  {
    sub_213E2F1B0(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_213E2F1B0(319, &qword_281183518, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CategoryTileViewModel(319);
        if (v3 <= 0x3F)
        {
          sub_213DE22E8();
          if (v4 <= 0x3F)
          {
            sub_213DFE440();
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

void sub_213E2F1B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213F4CEF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_213E2F204()
{
  v1 = type metadata accessor for CategoryTile(0);
  v2 = v0 + *(v1 + 32) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_213E2F270()
{
  result = qword_27C8F9288;
  if (!qword_27C8F9288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9268, &qword_213F57280);
    sub_213E2F2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9288);
  }

  return result;
}

unint64_t sub_213E2F2FC()
{
  result = qword_27C8F9290;
  if (!qword_27C8F9290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9260, &qword_213F57278);
    sub_213E2F3B4();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9290);
  }

  return result;
}

unint64_t sub_213E2F3B4()
{
  result = qword_27C8F9298;
  if (!qword_27C8F9298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9280, &unk_213F5A700);
    sub_213E2F46C();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9298);
  }

  return result;
}

unint64_t sub_213E2F46C()
{
  result = qword_281183330;
  if (!qword_281183330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9278, &qword_213F57290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183330);
  }

  return result;
}

uint64_t sub_213E2F4F0(double *a1)
{
  v3 = *(type metadata accessor for CategoryTile(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213E2CCFC(a1, v4);
}

uint64_t sub_213E2F560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t *a7@<X6>, unsigned __int8 *a8@<X7>, __n128 *a9@<X8>, unsigned __int8 a10, __n128 *a11)
{
  v11 = *a7;
  v12 = *a8;
  v13 = a11[1].n128_u8[0];
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = v11;
  a9[3].n128_u8[8] = v12;
  a9[3].n128_u8[9] = a10;
  result = *a11;
  a9[4] = *a11;
  a9[5].n128_u8[0] = v13;
  return result;
}

uint64_t CellAction.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CellAction.Placement.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

unint64_t sub_213E2F6CC()
{
  result = qword_27C8F9310;
  if (!qword_27C8F9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9310);
  }

  return result;
}

uint64_t sub_213E2F720@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign10CellActionV5StyleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_213E2F768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_213E2F7B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213E2F824(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_213E2F878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_213E2F8D4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_213E2F914(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v25 = MEMORY[0x277D84F90];
    sub_213EA90C8(0, v1, 0);
    v2 = v25;
    v4 = a1 + 88;
    do
    {
      v5 = *(v4 - 8);
      v23[2] = *(v4 - 24);
      v23[3] = v5;
      v23[4] = *(v4 + 8);
      v24 = *(v4 + 24);
      v6 = *(v4 - 40);
      v23[0] = *(v4 - 56);
      v23[1] = v6;
      v7 = v5;
      v8 = *(v4 - 40);
      v20 = *(v4 - 56);
      v21 = v8;
      v22 = *(v4 - 24);
      v19[0] = *v4;
      *(v19 + 9) = *(v4 + 9);
      if (v5 == 1)
      {
        sub_213E32048(v23, &v16);
        v7 = sub_213F4E8A0();
        sub_213E3222C(1uLL);
      }

      else
      {
        sub_213E32048(v23, &v16);
      }

      v17 = v21;
      v18 = v22;
      v16 = v20;
      *&v15[9] = *(v19 + 9);
      *v15 = v19[0];
      v25 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_213EA90C8((v9 > 1), v10 + 1, 1);
        v2 = v25;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 88 * v10;
      v13 = v17;
      v12 = v18;
      *(v11 + 32) = v16;
      *(v11 + 48) = v13;
      *(v11 + 64) = v12;
      *(v11 + 80) = v7;
      *(v11 + 97) = *&v15[9];
      *(v11 + 88) = *v15;
      v4 += 88;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_213E2FAA4@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A8, &unk_213F59F90);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F08, &unk_213F56DF0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9360, &unk_213F59F70);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v45 - v21;
  v23 = a1[3];
  v58 = a1[2];
  v59 = v23;
  v60 = a1[4];
  v61 = *(a1 + 80);
  v24 = a1[1];
  v56 = *a1;
  v57 = v24;
  sub_213E32080(v4, &v53);
  v25 = swift_allocObject();
  v26 = v59;
  *(v25 + 48) = v58;
  *(v25 + 64) = v26;
  *(v25 + 80) = v60;
  v27 = v57;
  v28 = v56;
  *(v25 + 16) = v56;
  *(v25 + 32) = v27;
  v29 = v54;
  *(v25 + 104) = v53;
  *(v25 + 120) = v29;
  *(v25 + 136) = v55;
  *(v25 + 96) = v61;
  v62 = v28;
  v30 = v59;
  v52 = a3;
  v51 = v14;
  v50 = v22;
  v49 = v19;
  v48 = v15;
  v47 = v18;
  v46 = a2;
  if (v59 == 1)
  {
    sub_213E32048(&v56, &v53);
    sub_213E32160(&v62, &v53);
    v31 = v13;
    sub_213F4CD80();
    v32 = sub_213F4CD90();
    (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
  }

  else
  {
    v33 = sub_213F4CD90();
    v31 = v13;
    (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
    sub_213E32048(&v56, &v53);
    sub_213E32160(&v62, &v53);
  }

  v34 = v57;
  v53 = v62;
  v35 = sub_213DE3164(v31, v45, &qword_27C8F93A8, &unk_213F59F90);
  MEMORY[0x28223BE20](v35);
  *(&v45 - 4) = &v53;
  *(&v45 - 3) = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8F10, &qword_213F57850);
  sub_213DE3AE4(&qword_27C8F8F18, &qword_27C8F8F10, &qword_213F57850);
  v36 = v47;
  sub_213F4EAF0();
  sub_213DE36FC(v31, &qword_27C8F93A8, &unk_213F59F90);
  sub_213E321BC(&v62);
  if (v46)
  {
    v37 = v51;
    v38 = v50;
    v39 = v49;
    if (v30 >= 2)
    {

      KeyPath = swift_getKeyPath();
      *&v53 = v30;

      v41 = sub_213F4D0D0();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v41 = 0;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v41 = 0;
    v37 = v51;
    v38 = v50;
    v39 = v49;
  }

  v42 = v48;
  (*(v48 + 16))(v38, v36, v37);

  v43 = (v38 + *(v39 + 36));
  *v43 = KeyPath;
  v43[1] = v41;
  (*(v42 + 8))(v36, v37);
  v53 = v60;
  LOBYTE(v54) = v61;
  sub_213DD76C0();
  sub_213E31F4C();
  sub_213F4E6D0();

  return sub_213DE36FC(v38, &qword_27C8F9360, &unk_213F59F70);
}

uint64_t sub_213E30090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9320, &qword_213F577C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9328, &qword_213F577D0);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 8);
  MEMORY[0x28223BE20](v9);
  v12 = v55 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9330, &qword_213F577D8);
  v13 = *(v69 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v69);
  v65 = v55 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9338, &qword_213F577E0);
  v16 = *(v70 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v70);
  v19 = v55 - v18;
  sub_213DE3164(v3, &v71, &qword_27C8F9318, &qword_213F57710);
  if (v73)
  {
    sub_213DD7500(&v71, &v74);
    v63 = v16;
    v64 = v8;
    v20 = v77;
    v21 = v78;
    __swift_project_boxed_opaque_existential_0(&v74, v77);
    v22 = *(v21 + 136);
    v60 = v19;
    v23 = v22(v20, v21);
    v61 = v13;
    MEMORY[0x28223BE20](v23);
    *&v55[-4] = v3;
    *&v55[-2] = &v74;
    v62 = v5;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9340, &qword_213F577E8);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9350, &unk_213F59F60);
    v57 = v3;
    v26 = v25;
    v27 = sub_213DE3AE4(&qword_281182940, &qword_27C8F9340, &qword_213F577E8);
    v28 = sub_213E31E00();
    v59 = v24;
    v58 = v27;
    sub_213F4E490();
    v29 = v77;
    v30 = v78;
    __swift_project_boxed_opaque_existential_0(&v74, v77);
    v31 = (*(v30 + 136))(v29, v30);
    v55[3] = v31;
    v32 = v66;
    v33 = v12;
    v56 = v55;
    MEMORY[0x28223BE20](v31);
    *&v55[-4] = v3;
    *&v55[-2] = &v74;
    *&v71 = v24;
    *(&v71 + 1) = v26;
    v34 = v26;
    v72 = v27;
    v73 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = v65;
    v37 = v67;
    sub_213F4E490();
    v38 = v32[1](v33, v37);
    v66 = v55;
    MEMORY[0x28223BE20](v38);
    *&v55[-4] = &v74;
    *&v55[-2] = v57;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9348, &unk_213F577F0);
    *&v71 = v37;
    *(&v71 + 1) = v34;
    v72 = OpaqueTypeConformance2;
    v73 = v28;
    v40 = swift_getOpaqueTypeConformance2();
    v41 = sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0);
    v42 = v60;
    v43 = v69;
    sub_213F4E3E0();
    (*(v61 + 8))(v36, v43);
    v44 = v63;
    v45 = v70;
    (*(v63 + 16))(v64, v42, v70);
    swift_storeEnumTagMultiPayload();
    *&v71 = v43;
    *(&v71 + 1) = v39;
    v72 = v40;
    v73 = v41;
    swift_getOpaqueTypeConformance2();
    sub_213F4DBA0();
    (*(v44 + 8))(v42, v45);
    return __swift_destroy_boxed_opaque_existential_1(&v74);
  }

  else
  {
    sub_213DE36FC(&v71, &qword_27C8F9318, &qword_213F57710);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9340, &qword_213F577E8);
    (*(*(v47 - 8) + 16))(v8, a1, v47);
    swift_storeEnumTagMultiPayload();
    v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9348, &unk_213F577F0);
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9350, &unk_213F59F60);
    v50 = sub_213DE3AE4(&qword_281182940, &qword_27C8F9340, &qword_213F577E8);
    v51 = sub_213E31E00();
    v74 = v47;
    v75 = v49;
    v76 = v50;
    v77 = v51;
    v52 = swift_getOpaqueTypeConformance2();
    v74 = v67;
    v75 = v49;
    v76 = v52;
    v77 = v51;
    v53 = swift_getOpaqueTypeConformance2();
    v54 = sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0);
    v74 = v69;
    v75 = v48;
    v76 = v53;
    v77 = v54;
    swift_getOpaqueTypeConformance2();
    return sub_213F4DBA0();
  }
}

uint64_t sub_213E30888(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v3);
  v5 = (*(v4 + 112))(v3, v4);
  v6 = sub_213E2F914(v5);

  v13 = v6;
  sub_213E32080(a1, v12);
  v7 = swift_allocObject();
  v8 = v12[1];
  v7[1] = v12[0];
  v7[2] = v8;
  v7[3] = v12[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A0, &unk_213F57840);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
  v10 = sub_213E31EC0();
  *&v12[0] = v9;
  *(&v12[0] + 1) = v10;
  swift_getOpaqueTypeConformance2();
  sub_213E320C4();
  return sub_213F4ECD0();
}

uint64_t sub_213E30A34(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v3);
  v5 = (*(v4 + 120))(v3, v4);
  v6 = sub_213E2F914(v5);

  v13 = v6;
  sub_213E32080(a1, v12);
  v7 = swift_allocObject();
  v8 = v12[1];
  v7[1] = v12[0];
  v7[2] = v8;
  v7[3] = v12[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A0, &unk_213F57840);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
  v10 = sub_213E31EC0();
  *&v12[0] = v9;
  *(&v12[0] + 1) = v10;
  swift_getOpaqueTypeConformance2();
  sub_213E320C4();
  return sub_213F4ECD0();
}

uint64_t sub_213E30BE0(uint64_t a1)
{
  v2 = sub_213F4D330();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  v11 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v11;
  v14[4] = *(a1 + 64);
  v15 = *(a1 + 80);
  v12 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v12;
  sub_213E2FAA4(v14, 1, v14 - v9);
  sub_213F4D320();
  sub_213E31EC0();
  sub_213F4E4E0();
  (*(v3 + 8))(v6, v2);
  return sub_213DE36FC(v10, &qword_27C8F9358, &unk_213F57800);
}

uint64_t sub_213E30D80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v92 = a3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9370, &qword_213F57810);
  v95 = *(v96 - 8);
  v4 = *(v95 + 64);
  v5 = MEMORY[0x28223BE20](v96);
  v91 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v86 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9378, &qword_213F57818);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v89 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = &v86 - v12;
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_project_boxed_opaque_existential_0(a1, v13);
  v16 = v14[16];
  v97 = v15;
  v98 = v16;
  v17 = v16(v13, v14);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v17 + 32;
    v21 = v18 - 1;
    v22 = MEMORY[0x277D84F90];
    do
    {
      v23 = *(v17 + 16);
      v24 = v20 + 88 * v19;
      v25 = v19;
      while (1)
      {
        if (v25 >= v23)
        {
          __break(1u);
          goto LABEL_42;
        }

        v26 = *(v24 + 64);
        v27 = *(v24 + 80);
        v28 = *(v24 + 32);
        v103 = *(v24 + 48);
        v29 = *(v24 + 16);
        v100 = *v24;
        v101 = v29;
        v105 = v27;
        v104 = v26;
        v102 = v28;
        v19 = v25 + 1;
        if (BYTE8(v103))
        {
          break;
        }

        v24 += 88;
        ++v25;
        if (v18 == v19)
        {
          goto LABEL_15;
        }
      }

      v88 = v13;
      v30 = v17;
      sub_213E32048(&v100, v99);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106 = v22;
      v87 = v14;
      v86 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_213EA90C8(0, *(v22 + 16) + 1, 1);
        v22 = v106;
      }

      v33 = *(v22 + 16);
      v32 = *(v22 + 24);
      v17 = v30;
      if (v33 >= v32 >> 1)
      {
        sub_213EA90C8((v32 > 1), v33 + 1, 1);
        v17 = v30;
        v22 = v106;
      }

      *(v22 + 16) = v33 + 1;
      v34 = v22 + 88 * v33;
      v35 = v101;
      *(v34 + 32) = v100;
      *(v34 + 48) = v35;
      v36 = v102;
      v37 = v103;
      v38 = v104;
      *(v34 + 112) = v105;
      *(v34 + 80) = v37;
      *(v34 + 96) = v38;
      *(v34 + 64) = v36;
      v21 = v86;
      v13 = v88;
      v14 = v87;
    }

    while (v86 != v25);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v39 = *(v22 + 16);
  if (v39 >= 3)
  {
    if (v39 == 3)
    {

      v41 = 3;
      v40 = v22;
      goto LABEL_19;
    }

    goto LABEL_43;
  }

  v40 = v22;
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    v45 = v98(v13, v14);
    v13 = *(v45 + 16);
    if (!v13)
    {
      break;
    }

    v46 = 0;
    v47 = v45 + 32;
    v48 = v13 - 1;
    v14 = MEMORY[0x277D84F90];
LABEL_25:
    v49 = *(v45 + 16);
    v50 = v47 + 88 * v46;
    v51 = v46;
    while (v51 < v49)
    {
      v52 = *(v50 + 64);
      v53 = *(v50 + 80);
      v54 = *(v50 + 32);
      v103 = *(v50 + 48);
      v55 = *(v50 + 16);
      v100 = *v50;
      v101 = v55;
      v105 = v53;
      v104 = v52;
      v102 = v54;
      v46 = v51 + 1;
      if ((BYTE8(v103) & 1) == 0)
      {
        v56 = v45;
        sub_213E32048(&v100, v99);
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v106 = v14;
        v98 = v40;
        v97 = v48;
        if ((v57 & 1) == 0)
        {
          sub_213EA90C8(0, v14[2] + 1, 1);
          v14 = v106;
        }

        v59 = v14[2];
        v58 = v14[3];
        v45 = v56;
        if (v59 >= v58 >> 1)
        {
          sub_213EA90C8((v58 > 1), v59 + 1, 1);
          v45 = v56;
          v14 = v106;
        }

        v14[2] = v59 + 1;
        v60 = &v14[11 * v59];
        v61 = v101;
        *(v60 + 2) = v100;
        *(v60 + 3) = v61;
        v62 = v102;
        v63 = v103;
        v64 = v104;
        *(v60 + 112) = v105;
        *(v60 + 5) = v63;
        *(v60 + 6) = v64;
        *(v60 + 4) = v62;
        v48 = v97;
        v40 = v98;
        if (v97 != v51)
        {
          goto LABEL_25;
        }

        goto LABEL_37;
      }

      v50 += 88;
      v51 = (v51 + 1);
      if (v13 == v46)
      {
        goto LABEL_37;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    sub_213E5B720(v22, v22 + 32, 0, 7uLL);
    v40 = v84;
    v41 = *(v22 + 16);
    if (v41)
    {
LABEL_19:
      if (v41 >= 3)
      {
        v42 = 3;
      }

      else
      {
        v42 = v41;
      }

      sub_213E5B720(v22, v22 + 32, v42, (2 * v41) | 1);
      v44 = v43;

      v22 = v44;
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_37:

  *&v100 = v22;
  v65 = sub_213E273F0(v14);
  v66 = v100;
  if (*(v40 + 2))
  {
    MEMORY[0x28223BE20](v65);
    v67 = v93;
    *(&v86 - 4) = v40;
    *(&v86 - 3) = v67;
    LOBYTE(v85) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9350, &unk_213F59F60);
    sub_213E31E00();
    v68 = v94;
    sub_213F4CFD0();

    v69 = 0;
    v70 = v96;
    v71 = v95;
  }

  else
  {

    v69 = 1;
    v70 = v96;
    v71 = v95;
    v68 = v94;
    v67 = v93;
  }

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9380, &qword_213F57820);
  (*(*(v72 - 8) + 56))(v68, v69, 1, v72);
  v99[0] = v66;
  sub_213E32080(v67, &v100);
  v73 = swift_allocObject();
  v74 = v101;
  *(v73 + 16) = v100;
  *(v73 + 32) = v74;
  *(v73 + 48) = v102;
  *(v73 + 64) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9390, &qword_213F57830);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828);
  sub_213DE3AE4(&qword_281182578, &qword_27C8F9390, &qword_213F57830);
  v85 = sub_213E320C4();
  v75 = v90;
  sub_213F4ECD0();
  v76 = v68;
  v77 = v89;
  sub_213DC43A4(v76, v89);
  v78 = *(v71 + 16);
  v79 = v91;
  v78(v91, v75, v70);
  v80 = v92;
  sub_213DC43A4(v77, v92);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9398, &qword_213F57838);
  v78((v80 + *(v81 + 48)), v79, v70);
  v82 = *(v71 + 8);
  v82(v75, v70);
  sub_213DC4414(v76);
  v82(v79, v70);
  return sub_213DC4414(v77);
}

uint64_t sub_213E31608(uint64_t a1, uint64_t a2, char a3)
{
  v10 = a1;
  sub_213E32080(a2, v9);
  v4 = swift_allocObject();
  v5 = v9[1];
  *(v4 + 16) = v9[0];
  *(v4 + 32) = v5;
  *(v4 + 48) = v9[2];
  *(v4 + 64) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9388, &qword_213F57828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93A0, &unk_213F57840);
  sub_213DE3AE4(&qword_2811824E8, &qword_27C8F9388, &qword_213F57828);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
  v7 = sub_213E31EC0();
  *&v9[0] = v6;
  *(&v9[0] + 1) = v7;
  swift_getOpaqueTypeConformance2();
  sub_213E320C4();
  return sub_213F4ECD0();
}

uint64_t sub_213E31780(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_213F4D330();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  v14 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v14;
  v17[4] = *(a1 + 64);
  v18 = *(a1 + 80);
  v15 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v15;
  sub_213E2FAA4(v17, a3, v17 - v12);
  sub_213F4D320();
  sub_213E31EC0();
  sub_213F4E4E0();
  (*(v6 + 8))(v9, v5);
  return sub_213DE36FC(v13, &qword_27C8F9358, &unk_213F57800);
}

uint64_t sub_213E31924@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v4 = sub_213F4ECB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93B0, &unk_213F59FD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v29[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9358, &unk_213F57800);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v29[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v29[-v21];
  v23 = *(a1 + 16);
  v32[0] = *a1;
  v32[1] = v23;
  *v33 = *(a1 + 32);
  *&v33[9] = *(a1 + 41);
  v24 = *(a1 + 57);
  v35[0] = *(a1 + 58);
  *(v35 + 15) = *(a1 + 73);
  v34 = v24;
  sub_213E2FAA4(v32, v30, &v29[-v21]);
  if (v24)
  {
    sub_213F4ECA0();
    (*(v5 + 32))(v15, v8, v4);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v5 + 56))(v15, v25, 1, v4);
  sub_213DE3164(v22, v20, &qword_27C8F9358, &unk_213F57800);
  sub_213DE3164(v15, v13, &qword_27C8F93B0, &unk_213F59FD0);
  v26 = v31;
  sub_213DE3164(v20, v31, &qword_27C8F9358, &unk_213F57800);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93B8, &qword_213F57890);
  sub_213DE3164(v13, v26 + *(v27 + 48), &qword_27C8F93B0, &unk_213F59FD0);
  sub_213DE36FC(v15, &qword_27C8F93B0, &unk_213F59FD0);
  sub_213DE36FC(v22, &qword_27C8F9358, &unk_213F57800);
  sub_213DE36FC(v13, &qword_27C8F93B0, &unk_213F59FD0);
  return sub_213DE36FC(v20, &qword_27C8F9358, &unk_213F57800);
}

uint64_t sub_213E31C34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_213DE3164(a1, v9, &qword_27C8F9318, &qword_213F57710);
  v9[5] = a2;
  v7 = a2;
  MEMORY[0x216051BF0](v9, a3, &type metadata for ViewWithCellActions, a4);
  return sub_213E31CBC(v9);
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign17ListCellProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_213E31D18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_213E31D74(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_213E31E00()
{
  result = qword_281182610;
  if (!qword_281182610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9350, &unk_213F59F60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
    sub_213E31EC0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182610);
  }

  return result;
}

unint64_t sub_213E31EC0()
{
  result = qword_281182FB0;
  if (!qword_281182FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9358, &unk_213F57800);
    sub_213E31F4C();
    sub_213DD9534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FB0);
  }

  return result;
}

unint64_t sub_213E31F4C()
{
  result = qword_281183218;
  if (!qword_281183218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9360, &unk_213F59F70);
    sub_213DE3AE4(&qword_281182720, &qword_27C8F8F08, &unk_213F56DF0);
    sub_213DE3AE4(&qword_281182890, &qword_27C8F9368, &unk_213F59F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183218);
  }

  return result;
}

unint64_t sub_213E320C4()
{
  result = qword_281188608[0];
  if (!qword_281188608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281188608);
  }

  return result;
}

unint64_t sub_213E3222C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_213E3223C()
{
  result = qword_281182AB8;
  if (!qword_281182AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93C0, &qword_213F57898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9330, &qword_213F577D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9348, &unk_213F577F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9328, &qword_213F577D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9350, &unk_213F59F60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9340, &qword_213F577E8);
    sub_213DE3AE4(&qword_281182940, &qword_27C8F9340, &qword_213F577E8);
    sub_213E31E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AB8);
  }

  return result;
}

void sub_213E32434()
{
  sub_213E325FC(319, &qword_2811822D8, &qword_27C8F8958, &qword_213F58650, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_213DE22E8();
    if (v1 <= 0x3F)
    {
      sub_213E325FC(319, &qword_281186338, &qword_27C8F93C8, qword_213F578C0, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_213DE2394();
        if (v3 <= 0x3F)
        {
          sub_213DFE440();
          if (v4 <= 0x3F)
          {
            sub_213E325FC(319, &qword_281183508, &qword_27C8F8D50, &unk_213F5E0A0, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_213DF29DC();
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

void sub_213E325FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_213E32704(void (*a1)(void))
{
  a1();
  sub_213F4D820();
  return v2;
}

uint64_t sub_213E3274C@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v30 = sub_213F4D7F0();
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4DEC0();
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93E0, &unk_213F57B80) + 36));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93E8, &qword_213F61EA0);
  v14 = v12 + *(v13 + 40);
  sub_213F4D520();
  v15 = *(sub_213F4D470() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_213F4D950();
  (*(*(v17 - 8) + 104))(v12 + v15, v16, v17);
  *v12 = a4;
  v12[1] = a4;
  *(v12 + *(v13 + 36)) = 0;
  v18 = sub_213F4EEE0();
  v20 = v19;
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v22 = sub_213F4E880();
    goto LABEL_8;
  }

  sub_213F4F520();
  v23 = sub_213F4E000();
  sub_213F4CC10();

  sub_213F4D7E0();
  swift_getAtKeyPath();
  sub_213E053BC(a1, 0);
  (*(v8 + 8))(v11, v30);
  if (v31 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (sub_213F4DED0())
  {
    v21 = [objc_opt_self() systemGray4Color];
    v22 = sub_213F4E870();
  }

  else
  {
    v22 = sub_213F4E8D0();
  }

LABEL_8:
  v24 = v22;
  v25 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93F0, &qword_213F57B90) + 36);
  *v25 = v24;
  *(v25 + 8) = 256;
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  v26 = MEMORY[0x216052350](0.5, 1.0, 0.0);
  v27 = sub_213F4DED0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F93F8, &qword_213F57B98);
  v29 = a3 + *(result + 36);
  *v29 = v26;
  *(v29 + 8) = v27 & 1;
  return result;
}

uint64_t sub_213E32A38()
{
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
  sub_213F4CDC0();
  return v2;
}

uint64_t sub_213E32A98()
{
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
  sub_213F4CDE0();
  return v2;
}

uint64_t sub_213E32AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v198 = a2;
  v4 = *(a1 + 16);
  v199 = *(v4 - 8);
  v5 = *(v199 + 8);
  v6 = MEMORY[0x28223BE20](a1);
  v160 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v193 = &v155 - v8;
  v9 = sub_213F4D450();
  v192 = *(v9 - 8);
  v10 = *(v192 + 8);
  v11 = MEMORY[0x28223BE20](v9);
  v189 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = a1;
  v183 = *(a1 - 8);
  v13 = *(v183 + 64);
  MEMORY[0x28223BE20](v11);
  v181 = v14;
  v182 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = *(a1 + 24);
  v15 = sub_213F4EB20();
  v176 = *(v15 - 8);
  v16 = *(v176 + 64);
  MEMORY[0x28223BE20](v15);
  v173 = &v155 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  v18 = sub_213F4D400();
  v177 = *(v18 - 8);
  v19 = *(v177 + 64);
  MEMORY[0x28223BE20](v18);
  v175 = &v155 - v20;
  v179 = v15;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
  v164 = WitnessTable;
  v247 = WitnessTable;
  v248 = v22;
  v23 = swift_getWitnessTable();
  v213 = v18;
  v214 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v171 = *(OpaqueTypeMetadata2 - 8);
  v25 = *(v171 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v168 = &v155 - v26;
  v174 = v27;
  v28 = sub_213F4D400();
  v172 = *(v28 - 8);
  v29 = *(v172 + 64);
  MEMORY[0x28223BE20](v28);
  v169 = &v155 - v30;
  v213 = v18;
  v214 = v23;
  v163 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_213E37C44();
  v161 = OpaqueTypeConformance2;
  v245 = OpaqueTypeConformance2;
  v246 = v32;
  v33 = v4;
  v34 = swift_getWitnessTable();
  v35 = sub_213E38728(&qword_281182C78, MEMORY[0x277CDDB18]);
  v204 = v28;
  v205 = v9;
  v213 = v28;
  v214 = v9;
  v202 = v35;
  v203 = v34;
  v215 = v34;
  v216 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v165 = *(v36 - 8);
  v37 = *(v165 + 64);
  MEMORY[0x28223BE20](v36);
  v162 = &v155 - v38;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D0, &unk_213F5A1B0);
  v166 = v36;
  v39 = sub_213F4D400();
  v170 = *(v39 - 8);
  v40 = *(v170 + 64);
  MEMORY[0x28223BE20](v39);
  v167 = &v155 - v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
  v201 = v39;
  v42 = sub_213F4D400();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v180 = &v155 - v45;
  v200 = v46;
  v47 = sub_213F4D400();
  v185 = *(v47 - 8);
  v48 = *(v185 + 64);
  MEMORY[0x28223BE20](v47);
  v178 = &v155 - v49;
  v50 = sub_213F4D400();
  v187 = *(v50 - 8);
  v51 = *(v187 + 64);
  MEMORY[0x28223BE20](v50);
  v186 = &v155 - v52;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D8, &qword_213F57938);
  v53 = sub_213F4D400();
  v190 = *(v53 - 8);
  v54 = *(v190 + 64);
  v55 = MEMORY[0x28223BE20](v53);
  v188 = &v155 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v184 = &v155 - v58;
  MEMORY[0x28223BE20](v57);
  v60 = &v155 - v59;
  v61 = sub_213F4DBB0();
  v194 = *(v61 - 8);
  v195 = v61;
  v62 = *(v194 + 64);
  v63 = MEMORY[0x28223BE20](v61);
  v65 = &v155 - v64;
  v66 = *v2;
  v196 = v47;
  v197 = v33;
  if (v66)
  {
    v159 = v50;
    v160 = v60;
    v199 = v65;
    v193 = v53;
    v156 = v43;
    v67 = v2[1];
    v68 = v66;
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v67;
    MEMORY[0x28223BE20](v69);
    v70 = v33;
    v71 = v206;
    *(&v155 - 4) = v33;
    *(&v155 - 3) = v71;
    *(&v155 - 2) = v2;
    v158 = v68;
    sub_213DD74C4(v68);
    v157 = v67;

    v72 = v173;
    sub_213F4EB00();
    v73 = *MEMORY[0x277D75060];
    v74 = *(MEMORY[0x277D75060] + 8);
    v75 = *(MEMORY[0x277D75060] + 16);
    v76 = *(MEMORY[0x277D75060] + 24);
    sub_213F4CDB0();
    v249 = v77;
    v250 = v78;
    v251 = v79;
    v252 = v80;
    v253 = 0;
    v81 = v175;
    v82 = v179;
    sub_213F4E4C0();
    (*(v176 + 8))(v72, v82);
    v155 = v2;
    sub_213E32A98();
    v83 = v18;
    v84 = v168;
    sub_213F4E780();

    (*(v177 + 8))(v81, v83);
    v85 = v182;
    v86 = v183;
    v87 = v191;
    (*(v183 + 16))(v182, v2, v191);
    v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = v70;
    *(v89 + 24) = v71;
    (*(v86 + 32))(v89 + v88, v85, v87);
    v90 = v169;
    v91 = v174;
    sub_213F4E7B0();

    (*(v171 + 8))(v84, v91);
    v92 = v189;
    sub_213F4D440();
    v93 = v162;
    v95 = v204;
    v94 = v205;
    v97 = v202;
    v96 = v203;
    sub_213F4E3B0();
    (*(v192 + 1))(v92, v94);
    (*(v172 + 8))(v90, v95);
    v213 = v95;
    v214 = v94;
    v215 = v96;
    v216 = v97;
    v98 = swift_getOpaqueTypeConformance2();
    sub_213E37D5C();
    v99 = v166;
    v100 = v167;
    sub_213F4E460();
    (*(v165 + 8))(v93, v99);
    swift_getKeyPath();
    v101 = v155;
    LOBYTE(v213) = sub_213E32A38() & 1;
    v102 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
    v221 = v98;
    v222 = v102;
    v103 = v201;
    v104 = swift_getWitnessTable();
    v105 = v180;
    sub_213F4E3F0();

    (*(v170 + 8))(v100, v103);
    swift_getKeyPath();
    v106 = v101[14];
    LOBYTE(v213) = *(v101 + 104);
    v214 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
    sub_213F4EAA0();
    LOBYTE(v213) = v220;
    v107 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0);
    v218 = v104;
    v219 = v107;
    v108 = v200;
    v109 = swift_getWitnessTable();
    v110 = v178;
    sub_213F4E3F0();

    (*(v156 + 8))(v105, v108);
    swift_getKeyPath();
    sub_213E37E5C((v101 + 4), &v213);
    v111 = v216;
    if (v216)
    {
      v112 = v217;
      __swift_project_boxed_opaque_existential_0(&v213, v216);
      v113 = (*(v112 + 104))(v111, v112);
      __swift_destroy_boxed_opaque_existential_1(&v213);
    }

    else
    {
      sub_213DE36FC(&v213, &qword_27C8F9318, &qword_213F57710);
      v113 = 0;
    }

    LOBYTE(v213) = v113 & 1;
    v211 = v109;
    v212 = v107;
    v134 = v196;
    v135 = swift_getWitnessTable();
    v136 = v186;
    sub_213F4E3F0();

    (*(v185 + 8))(v110, v134);
    sub_213E32A38();
    v209 = v135;
    v210 = v107;
    v137 = v159;
    v138 = swift_getWitnessTable();
    v139 = v184;
    View.backgroundPlatter(isCarPlay:isHighlighted:isFocused:)();
    (*(v187 + 8))(v136, v137);
    v140 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938);
    v207 = v138;
    v208 = v140;
    v141 = v193;
    v142 = swift_getWitnessTable();
    v143 = v160;
    sub_213DBFEEC(v139, v141, v142);
    v144 = *(v190 + 8);
    v144(v139, v141);
    v145 = v188;
    sub_213DBFEEC(v143, v141, v142);
    v65 = v199;
    sub_213E95440(v145, v141);
    sub_213DD7558(v158);
    v144(v145, v141);
    v144(v143, v141);
    v131 = v204;
    v130 = v205;
    v133 = v202;
    v132 = v203;
  }

  else
  {
    v114 = v2[2];
    v115 = v2[3];
    v116 = v160;
    v114(v63);
    v117 = v193;
    v118 = v33;
    v119 = v33;
    v120 = v206;
    sub_213DBFEEC(v116, v118, v206);
    v121 = *(v199 + 1);
    v199 += 8;
    v192 = v121;
    v121(v116, v119);
    sub_213DBFEEC(v117, v119, v120);
    v213 = v204;
    v214 = v205;
    v215 = v203;
    v216 = v202;
    v122 = swift_getOpaqueTypeConformance2();
    v123 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
    v243 = v122;
    v244 = v123;
    v124 = swift_getWitnessTable();
    v125 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0);
    v241 = v124;
    v242 = v125;
    v239 = swift_getWitnessTable();
    v240 = v125;
    v237 = swift_getWitnessTable();
    v238 = v125;
    v126 = swift_getWitnessTable();
    v127 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938);
    v235 = v126;
    v236 = v127;
    swift_getWitnessTable();
    v128 = v197;
    sub_213DBFF2C(v116, v53, v197);
    v129 = v192;
    v192(v116, v128);
    v129(v193, v128);
    v131 = v204;
    v130 = v205;
    v133 = v202;
    v132 = v203;
  }

  v213 = v131;
  v214 = v130;
  v215 = v132;
  v216 = v133;
  v146 = swift_getOpaqueTypeConformance2();
  v147 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
  v233 = v146;
  v234 = v147;
  v148 = swift_getWitnessTable();
  v149 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0);
  v231 = v148;
  v232 = v149;
  v229 = swift_getWitnessTable();
  v230 = v149;
  v227 = swift_getWitnessTable();
  v228 = v149;
  v150 = swift_getWitnessTable();
  v151 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938);
  v225 = v150;
  v226 = v151;
  v223 = swift_getWitnessTable();
  v224 = v206;
  v152 = v195;
  v153 = swift_getWitnessTable();
  sub_213DBFEEC(v65, v152, v153);
  return (*(v194 + 8))(v65, v152);
}

uint64_t sub_213E33F40@<X0>(_BYTE *a1@<X8>)
{
  sub_213E37ECC();
  result = sub_213F4D820();
  *a1 = v3;
  return result;
}

uint64_t sub_213E33F90(char *a1)
{
  v2 = *a1;
  sub_213E37ECC();
  return sub_213F4D830();
}

uint64_t sub_213E33FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v104 = a2;
  v105 = a1;
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213F4EDA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D50, &unk_213F5E0A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v93 - v15;
  v17 = v3 + *(v4 + 64);
  sub_213EA868C(&v93 - v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
  if ((*(*(v18 - 8) + 48))(v16, 1, v18) == 1)
  {
    sub_213DE36FC(v16, &qword_27C8F8D50, &unk_213F5E0A0);
    v19 = 0;
  }

  else
  {
    MEMORY[0x216052020](v18);
    sub_213DE36FC(v16, &qword_27C8F8FC8, &qword_213F61200);
    v19 = sub_213F4ED90();
    (*(v9 + 8))(v12, v8);
  }

  v20 = *v3;
  v21 = v105;
  if (!*v3 || (v19 & 1) != 0)
  {
    (*(v5 + 16))(&v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v105);
    v51 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v52 = swift_allocObject();
    v53 = *(v21 + 24);
    *(v52 + 16) = *(v21 + 16);
    *(v52 + 24) = v53;
    (*(v5 + 32))(v52 + v51, &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_213F4D400();
    v103 = sub_213E37CEC();
    v159 = v53;
    v160 = v103;
    v93 = MEMORY[0x277CDFAD8];
    swift_getWitnessTable();
    v54 = sub_213F3CB80(sub_213E37F74);
    v56 = v55;
    *&v152 = v54;
    *(&v152 + 1) = v57;
    *&v153 = v55;
    *(&v153 + 1) = v58;
    v59 = type metadata accessor for BackgroundUIView();
    *&v101 = &unk_213F64910;
    WitnessTable = swift_getWitnessTable();
    v94 = v59;
    v95 = WitnessTable;
    v61 = WitnessTable;
    sub_213DBFEEC(&v152, v59, WitnessTable);

    v99 = v162;
    v100 = *(&v161 + 1);
    *&v102 = *(&v162 + 1);
    v152 = v161;
    v153 = v162;
    sub_213DBFEEC(&v152, v59, v61);
    v96 = v157;
    v97 = v156;
    v98 = v158;
    v148 = v155;
    v149 = v156;
    v150 = v157;
    v151 = v158;
    v62 = sub_213F4EB20();
    v63 = swift_getWitnessTable();
    v64 = sub_213E37C98();
    *&v152 = v62;
    *(&v152 + 1) = &type metadata for CellButtonStyle;
    *&v153 = v63;
    *(&v153 + 1) = v64;
    swift_getOpaqueTypeMetadata2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
    v65 = sub_213F4D400();
    *&v152 = v62;
    *(&v152 + 1) = &type metadata for CellButtonStyle;
    *&v153 = v63;
    *(&v153 + 1) = v64;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v67 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
    v146 = OpaqueTypeConformance2;
    v147 = v67;
    v68 = swift_getWitnessTable();
    *&v152 = v65;
    *(&v152 + 1) = v68;
    swift_getOpaqueTypeMetadata2();
    sub_213F4D400();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
    sub_213F4D400();
    sub_213F4D400();
    sub_213F4D400();
    sub_213F4D400();
    *&v152 = v65;
    *(&v152 + 1) = v68;
    v69 = swift_getOpaqueTypeConformance2();
    v70 = sub_213E37C44();
    v144 = v69;
    v145 = v70;
    v71 = swift_getWitnessTable();
    v72 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0);
    v142 = v71;
    v143 = v72;
    v140 = swift_getWitnessTable();
    v141 = v72;
    v138 = swift_getWitnessTable();
    v139 = v72;
    v136 = swift_getWitnessTable();
    v137 = v103;
    swift_getWitnessTable();
    v73 = type metadata accessor for BackgroundUIView();
    swift_getWitnessTable();
    sub_213DBFF2C(&v148, v73, v94);
  }

  else
  {
    v103 = v3[1];
    v22 = v103;
    (*(v5 + 16))(&v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v105);
    v23 = (*(v5 + 80) + 48) & ~*(v5 + 80);
    v24 = swift_allocObject();
    v26 = *(v21 + 16);
    v25 = *(v21 + 24);
    v24[2] = v26;
    v24[3] = v25;
    v99 = v24;
    v100 = v26;
    *&v101 = v25;
    v24[4] = v20;
    v24[5] = v22;
    (*(v5 + 32))(v24 + v23, v7, v21);
    v27 = objc_allocWithZone(MEMORY[0x277D75D18]);
    sub_213DD74C4(v20);
    sub_213DD74C4(v20);
    v98 = [v27 init];
    v28 = sub_213F4EB20();
    v29 = swift_getWitnessTable();
    v30 = sub_213E37C98();
    *&v102 = v20;
    v31 = v30;
    *&v152 = v28;
    *(&v152 + 1) = &type metadata for CellButtonStyle;
    *&v153 = v29;
    *(&v153 + 1) = v30;
    swift_getOpaqueTypeMetadata2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
    v32 = sub_213F4D400();
    *&v152 = v28;
    *(&v152 + 1) = &type metadata for CellButtonStyle;
    *&v153 = v29;
    *(&v153 + 1) = v31;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
    v118 = v33;
    v119 = v34;
    v35 = swift_getWitnessTable();
    *&v152 = v32;
    *(&v152 + 1) = v35;
    swift_getOpaqueTypeMetadata2();
    sub_213F4D400();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
    sub_213F4D400();
    sub_213F4D400();
    sub_213F4D400();
    sub_213F4D400();
    *&v152 = v32;
    *(&v152 + 1) = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = sub_213E37C44();
    v116 = v36;
    v117 = v37;
    v38 = swift_getWitnessTable();
    v39 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0);
    v114 = v38;
    v115 = v39;
    v112 = swift_getWitnessTable();
    v113 = v39;
    v110 = swift_getWitnessTable();
    v111 = v39;
    v40 = swift_getWitnessTable();
    v97 = sub_213E37CEC();
    v108 = v40;
    v109 = v97;
    swift_getWitnessTable();
    v41 = sub_213F3CB80(sub_213E38010);
    v43 = v42;
    *&v152 = v41;
    *(&v152 + 1) = v44;
    *&v153 = v42;
    *(&v153 + 1) = v45;
    v46 = type metadata accessor for BackgroundUIView();
    v98 = &unk_213F64910;
    v47 = swift_getWitnessTable();
    sub_213DBFEEC(&v152, v46, v47);

    v99 = *(&v162 + 1);
    v48 = v162;
    v152 = v161;
    v153 = v162;
    sub_213DBFEEC(&v152, v46, v47);
    v49 = v157;
    v148 = v155;
    v149 = v156;
    v150 = v157;
    v151 = v158;
    sub_213F4D400();
    v106 = v101;
    v107 = v97;

    v50 = v49;

    swift_getWitnessTable();
    type metadata accessor for BackgroundUIView();
    swift_getWitnessTable();
    sub_213E95440(&v148, v46);
    sub_213DD7558(v102);
  }

  v101 = v152;
  v102 = v153;
  LODWORD(v103) = v154;
  v74 = *(v105 + 24);
  v100 = *(v105 + 16);
  v105 = v74;
  v75 = sub_213F4EB20();
  v76 = swift_getWitnessTable();
  v77 = sub_213E37C98();
  *&v161 = v75;
  *(&v161 + 1) = &type metadata for CellButtonStyle;
  *&v162 = v76;
  *(&v162 + 1) = v77;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  v78 = sub_213F4D400();
  *&v161 = v75;
  *(&v161 + 1) = &type metadata for CellButtonStyle;
  *&v162 = v76;
  *(&v162 + 1) = v77;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
  v134 = v79;
  v135 = v80;
  v81 = swift_getWitnessTable();
  *&v161 = v78;
  *(&v161 + 1) = v81;
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  *&v161 = v78;
  *(&v161 + 1) = v81;
  v82 = swift_getOpaqueTypeConformance2();
  v83 = sub_213E37C44();
  v132 = v82;
  v133 = v83;
  v84 = swift_getWitnessTable();
  v85 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0);
  v130 = v84;
  v131 = v85;
  v128 = swift_getWitnessTable();
  v129 = v85;
  v126 = swift_getWitnessTable();
  v127 = v85;
  v86 = swift_getWitnessTable();
  v87 = sub_213E37CEC();
  v124 = v86;
  v125 = v87;
  swift_getWitnessTable();
  type metadata accessor for BackgroundUIView();
  sub_213F4D400();
  v122 = v105;
  v123 = v87;
  swift_getWitnessTable();
  type metadata accessor for BackgroundUIView();
  v88 = sub_213F4DBB0();
  v89 = swift_getWitnessTable();
  v90 = swift_getWitnessTable();
  v120 = v89;
  v121 = v90;
  v91 = swift_getWitnessTable();
  sub_213DBFEEC(&v152, v88, v91);
  return sub_213E292E4(v101, *(&v101 + 1), v102);
}

uint64_t sub_213E34F4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v93 = a4;
  v91 = a3;
  v90 = a2;
  v110 = a1;
  v109 = a7;
  v112 = a5;
  v111 = a6;
  v104 = type metadata accessor for CellButton();
  v101 = *(v104 - 8);
  v103 = *(v101 + 64);
  MEMORY[0x28223BE20](v104);
  v100 = v79 - v7;
  v8 = sub_213F4EB20();
  v95 = *(v8 - 8);
  v9 = *(v95 + 64);
  MEMORY[0x28223BE20](v8);
  v86 = v79 - v10;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_213E37C98();
  KeyPath = v8;
  v121 = &type metadata for CellButtonStyle;
  v122 = WitnessTable;
  v123 = v12;
  v13 = WitnessTable;
  v79[1] = WitnessTable;
  v79[0] = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = v79 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  v17 = sub_213F4D400();
  v94 = *(v17 - 8);
  v18 = *(v94 + 64);
  MEMORY[0x28223BE20](v17);
  v83 = v79 - v19;
  KeyPath = v8;
  v121 = &type metadata for CellButtonStyle;
  v122 = v13;
  v123 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79[2] = OpaqueTypeConformance2;
  v21 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
  v130 = OpaqueTypeConformance2;
  v131 = v21;
  v98 = MEMORY[0x277CDFAD8];
  v80 = swift_getWitnessTable();
  KeyPath = v17;
  v121 = v80;
  v88 = MEMORY[0x277CDEEC0];
  v85 = swift_getOpaqueTypeMetadata2();
  v89 = *(v85 - 8);
  v22 = *(v89 + 64);
  MEMORY[0x28223BE20](v85);
  v24 = v79 - v23;
  v25 = sub_213F4D400();
  v96 = *(v25 - 8);
  v26 = *(v96 + 64);
  MEMORY[0x28223BE20](v25);
  v81 = v79 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
  v97 = sub_213F4D400();
  v99 = *(v97 - 8);
  v28 = *(v99 + 64);
  MEMORY[0x28223BE20](v97);
  v84 = v79 - v29;
  v30 = sub_213F4D400();
  v105 = *(v30 - 8);
  v31 = *(v105 + 64);
  MEMORY[0x28223BE20](v30);
  v82 = v79 - v32;
  v107 = v33;
  v108 = sub_213F4D400();
  v106 = *(v108 - 8);
  v34 = *(v106 + 64);
  MEMORY[0x28223BE20](v108);
  v102 = v79 - v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v90;
  *(v36 + 24) = v91;
  v113 = v112;
  v114 = v111;
  v37 = v93;
  v115 = v93;

  v38 = v86;
  sub_213F4EB00();
  v39 = *(v37 + 72);
  v40 = v37;
  KeyPath = swift_getKeyPath();
  LOBYTE(v121) = 0;
  v122 = v39;
  sub_213F4E3C0();

  (*(v95 + 8))(v38, v8);
  v41 = *MEMORY[0x277D75060];
  v42 = *(MEMORY[0x277D75060] + 8);
  v43 = *(MEMORY[0x277D75060] + 16);
  v44 = *(MEMORY[0x277D75060] + 24);
  sub_213F4CDB0();
  v132 = v45;
  v133 = v46;
  v134 = v47;
  v135 = v48;
  v136 = 0;
  v49 = v83;
  v50 = OpaqueTypeMetadata2;
  sub_213F4E4C0();
  (*(v92 + 8))(v16, v50);
  sub_213E32A98();
  v51 = v80;
  sub_213F4E780();

  (*(v94 + 8))(v49, v17);
  v52 = v101;
  v53 = v100;
  v54 = v104;
  (*(v101 + 16))(v100, v40, v104);
  v55 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v56 = swift_allocObject();
  v57 = v111;
  *(v56 + 16) = v112;
  *(v56 + 24) = v57;
  (*(v52 + 32))(v56 + v55, v53, v54);
  KeyPath = v17;
  v121 = v51;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v81;
  v60 = v85;
  sub_213F4E7B0();

  (*(v89 + 8))(v24, v60);
  swift_getKeyPath();
  LOBYTE(KeyPath) = sub_213E32A38() & 1;
  v61 = sub_213E37C44();
  v128 = v58;
  v129 = v61;
  v62 = swift_getWitnessTable();
  v63 = v84;
  sub_213F4E3F0();

  v64 = v25;
  v65 = v82;
  (*(v96 + 8))(v59, v64);
  swift_getKeyPath();
  v66 = *(v40 + 112);
  LOBYTE(KeyPath) = *(v40 + 104);
  v121 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  LOBYTE(KeyPath) = v127;
  v67 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0);
  v125 = v62;
  v126 = v67;
  v68 = v97;
  v69 = swift_getWitnessTable();
  sub_213F4E3F0();

  (*(v99 + 8))(v63, v68);
  swift_getKeyPath();
  sub_213E37E5C(v40 + 32, &KeyPath);
  v70 = v123;
  if (v123)
  {
    v71 = v124;
    __swift_project_boxed_opaque_existential_0(&KeyPath, v123);
    v72 = (*(v71 + 104))(v70, v71);
    __swift_destroy_boxed_opaque_existential_1(&KeyPath);
  }

  else
  {
    sub_213DE36FC(&KeyPath, &qword_27C8F9318, &qword_213F57710);
    v72 = 0;
  }

  LOBYTE(KeyPath) = v72 & 1;
  v118 = v69;
  v119 = v67;
  v73 = v107;
  v74 = swift_getWitnessTable();
  v75 = v102;
  sub_213F4E3F0();

  (*(v105 + 8))(v65, v73);
  v116 = v74;
  v117 = v67;
  v76 = v108;
  v77 = swift_getWitnessTable();
  sub_213E31C34(v40 + 32, v110, v76, v77);
  return (*(v106 + 8))(v75, v76);
}

uint64_t sub_213E35BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  v13 = *(v10 + 24);
  (*(v10 + 16))();
  sub_213DBFEEC(v9, a2, a3);
  v14 = *(v5 + 8);
  v14(v9, a2);
  sub_213DBFEEC(v12, a2, a3);
  return (v14)(v12, a2);
}

uint64_t sub_213E35D18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 104);
  v4 = *(a2 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213E35D74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 24);
  (*(v13 + 16))(v10);
  sub_213E31C34(a2 + 32, a1, a3, a4);
  return (*(v8 + 8))(v12, a3);
}

uint64_t sub_213E35E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v2 = *(a1 + 16);
  v59 = *(a1 + 24);
  v64 = v2;
  sub_213F4EB20();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  sub_213F4D400();
  WitnessTable = swift_getWitnessTable();
  v50 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
  v112 = WitnessTable;
  v113 = v50;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  v63 = sub_213F4D450();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = sub_213E37C44();
  v110 = OpaqueTypeConformance2;
  v111 = v51;
  swift_getWitnessTable();
  v58 = sub_213E38728(&qword_281182C78, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D0, &unk_213F5A1B0);
  v53 = sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
  v54 = sub_213F4D400();
  v57 = sub_213F4D400();
  v56 = sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D8, &qword_213F57938);
  sub_213F4D400();
  v52 = sub_213F4DBB0();
  sub_213E37C98();
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  v104 = swift_getOpaqueTypeConformance2();
  v105 = v50;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  v102 = swift_getOpaqueTypeConformance2();
  v103 = v51;
  v100 = swift_getWitnessTable();
  v101 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0);
  v98 = swift_getWitnessTable();
  v99 = v101;
  v96 = swift_getWitnessTable();
  v97 = v101;
  v94 = swift_getWitnessTable();
  v95 = sub_213E37CEC();
  swift_getWitnessTable();
  type metadata accessor for BackgroundUIView();
  sub_213F4D400();
  v5 = v59;
  v92 = v59;
  v93 = v95;
  swift_getWitnessTable();
  type metadata accessor for BackgroundUIView();
  v51 = sub_213F4DBB0();
  v66 = sub_213F4DBB0();
  v6 = sub_213F4E9C0();
  sub_213F4DF60();
  v7 = sub_213F4D400();
  v90 = swift_getOpaqueTypeConformance2();
  v91 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
  v88 = swift_getWitnessTable();
  v89 = v101;
  v86 = swift_getWitnessTable();
  v87 = v101;
  v84 = swift_getWitnessTable();
  v85 = v101;
  v82 = swift_getWitnessTable();
  v83 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938);
  v80 = swift_getWitnessTable();
  v81 = v59;
  v8 = swift_getWitnessTable();
  v78 = swift_getWitnessTable();
  v79 = swift_getWitnessTable();
  v76 = v8;
  v77 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v75 = v55;
  v9 = swift_getWitnessTable();
  v73 = v59;
  v74 = sub_213E38728(&qword_281182838, MEMORY[0x277CDE470]);
  v106 = v6;
  v107 = v7;
  v62 = v7;
  v67 = v9;
  v108 = v9;
  v109 = swift_getWitnessTable();
  v65 = v109;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = *(OpaqueTypeMetadata2 - 8);
  v11 = *(v54 + 64);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v50 - v15;
  v16 = sub_213F4DBB0();
  v57 = *(v16 - 8);
  v58 = v16;
  v17 = *(v57 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v63 = &v50 - v19;
  v56 = *(v6 - 8);
  v20 = *(v56 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v50 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v50 - v27;
  v29 = v64;
  v68 = v64;
  v69 = v5;
  v30 = v60;
  v70 = v60;
  sub_213F4E9B0();
  v31 = v30;
  v32 = *v30;
  if (v32)
  {
    v33 = MEMORY[0x28223BE20](v31[1]);
    *(&v50 - 6) = v29;
    *(&v50 - 5) = v5;
    *(&v50 - 4) = v34;
    *(&v50 - 3) = v32;
    v66 = v33;
    *(&v50 - 2) = v33;

    v35 = swift_checkMetadataState();
    v36 = v67;
    v37 = v65;
    v52 = v28;
    sub_213F4E6F0();
    v106 = v6;
    v107 = v35;
    v108 = v36;
    v109 = v37;
    v38 = swift_getOpaqueTypeConformance2();
    v39 = v53;
    sub_213DBFEEC(v14, OpaqueTypeMetadata2, v38);
    v40 = *(v54 + 8);
    v40(v14, OpaqueTypeMetadata2);
    sub_213DBFEEC(v39, OpaqueTypeMetadata2, v38);
    sub_213E95440(v14, OpaqueTypeMetadata2);
    sub_213DD7558(v32);
    v41 = v14;
    v42 = v62;
    v40(v41, OpaqueTypeMetadata2);
    v40(v39, OpaqueTypeMetadata2);
    (*(v56 + 8))(v52, v6);
  }

  else
  {
    v43 = v67;
    sub_213DBFEEC(v28, v6, v67);
    sub_213DBFEEC(v26, v6, v43);
    v42 = v62;
    v106 = v6;
    v107 = v62;
    v108 = v43;
    v109 = v65;
    swift_getOpaqueTypeConformance2();
    sub_213DBFF2C(v23, OpaqueTypeMetadata2, v6);
    v44 = *(v56 + 8);
    v44(v23, v6);
    v44(v26, v6);
    v44(v28, v6);
  }

  v106 = v6;
  v107 = v42;
  v45 = v67;
  v108 = v67;
  v109 = v65;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v45;
  v46 = v58;
  v47 = swift_getWitnessTable();
  v48 = v63;
  sub_213DBFEEC(v63, v46, v47);
  return (*(v57 + 8))(v48, v46);
}

uint64_t sub_213E36AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a3;
  v90 = a1;
  v93 = a4;
  v85 = a2;
  v4 = sub_213F4EB20();
  v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  sub_213F4D400();
  WitnessTable = swift_getWitnessTable();
  v95 = sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
  v188 = WitnessTable;
  v189 = v95;
  v6 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  v94 = MEMORY[0x277CDEEC0];
  swift_getOpaqueTypeMetadata2();
  v7 = sub_213F4D400();
  v8 = sub_213F4D450();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = sub_213E37C44();
  v186 = OpaqueTypeConformance2;
  v187 = v96;
  v92 = v6;
  v105 = v8;
  v106 = v7;
  v167 = v7;
  v168 = v8;
  v103 = swift_getWitnessTable();
  v169 = v103;
  v98 = sub_213E38728(&qword_281182C78, MEMORY[0x277CDDB18]);
  v170 = v98;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D0, &unk_213F5A1B0);
  v10 = sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
  v101 = v10;
  v99 = sub_213F4D400();
  v100 = sub_213F4D400();
  v11 = sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D8, &qword_213F57938);
  v102 = v11;
  v104 = sub_213F4D400();
  v108 = sub_213F4DBB0();
  v84 = *(v108 - 8);
  v12 = *(v84 + 64);
  v13 = MEMORY[0x28223BE20](v108);
  v83 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = &v81 - v15;
  v16 = sub_213F4D290();
  v88 = *(v16 - 8);
  v89 = v16;
  Kind = v88[4].Kind;
  v18 = MEMORY[0x28223BE20](v16);
  v87 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v86 = &v81 - v20;
  v21 = sub_213E37C98();
  v167 = v4;
  v168 = &type metadata for CellButtonStyle;
  v169 = WitnessTable;
  v170 = v21;
  swift_getOpaqueTypeMetadata2();
  v22 = sub_213F4D400();
  v167 = v4;
  v168 = &type metadata for CellButtonStyle;
  v169 = WitnessTable;
  v170 = v21;
  v184 = swift_getOpaqueTypeConformance2();
  v185 = v95;
  v23 = swift_getWitnessTable();
  v167 = v22;
  v168 = v23;
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  v167 = v22;
  v168 = v23;
  v182 = swift_getOpaqueTypeConformance2();
  v183 = v96;
  v24 = swift_getWitnessTable();
  v25 = sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0);
  v180 = v24;
  v181 = v25;
  v178 = swift_getWitnessTable();
  v179 = v25;
  v176 = swift_getWitnessTable();
  v177 = v25;
  v26 = v107;
  v27 = swift_getWitnessTable();
  v28 = sub_213E37CEC();
  v174 = v27;
  v175 = v28;
  swift_getWitnessTable();
  v29 = v90;
  v30 = type metadata accessor for BackgroundUIView();
  sub_213F4D400();
  v172 = v26;
  v173 = v28;
  swift_getWitnessTable();
  v31 = type metadata accessor for BackgroundUIView();
  v97 = v30;
  v94 = v31;
  v96 = sub_213F4DBB0();
  v32 = sub_213F4DBB0();
  v91 = *(v32 - 8);
  v92 = v32;
  v33 = *(v91 + 64);
  MEMORY[0x28223BE20](v32);
  v95 = &v81 - v34;
  v35 = type metadata accessor for CellButton();
  v36 = v29 + *(v35 + 60);
  v37 = v86;
  sub_213DBBD08(v86);
  v38 = v87;
  sub_213F4D280();
  LOBYTE(v36) = sub_213F4D270();
  Description = v88->Description;
  v40 = v38;
  v41 = v89;
  Description(v40, v89);
  Description(v37, v41);
  if (v36)
  {
    v42 = v83;
    sub_213E32AFC(v35, v83);
    v167 = v106;
    v168 = v105;
    v169 = v103;
    v170 = v98;
    v43 = swift_getOpaqueTypeConformance2();
    v44 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
    v121 = v43;
    v122 = v44;
    v119 = swift_getWitnessTable();
    v120 = v25;
    v117 = swift_getWitnessTable();
    v118 = v25;
    v115 = swift_getWitnessTable();
    v116 = v25;
    v45 = swift_getWitnessTable();
    v46 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938);
    v113 = v45;
    v114 = v46;
    v111 = swift_getWitnessTable();
    v112 = v107;
    v90 = v25;
    v47 = v108;
    v48 = swift_getWitnessTable();
    v49 = v82;
    sub_213DBFEEC(v42, v47, v48);
    v50 = *(v84 + 8);
    v50(v42, v47);
    sub_213DBFEEC(v49, v47, v48);
    v51 = swift_getWitnessTable();
    v52 = swift_getWitnessTable();
    v109 = v51;
    v110 = v52;
    swift_getWitnessTable();
    sub_213E95440(v42, v47);
    v50(v42, v47);
    v53 = v47;
    v25 = v90;
    v50(v49, v53);
  }

  else
  {
    sub_213E33FDC(v35, &v162);
    v54 = v162;
    v55 = v163;
    v56 = v164;
    v157 = v162;
    v158 = v163;
    v159 = v164;
    v160 = v165;
    v161 = v166;
    v57 = swift_getWitnessTable();
    v58 = swift_getWitnessTable();
    v155 = v57;
    v156 = v58;
    v90 = MEMORY[0x277CE0340];
    v59 = v96;
    v60 = swift_getWitnessTable();
    v84 = v60;
    sub_213DBFEEC(&v157, v59, v60);
    sub_213E292E4(v54, v55, v56);
    v88 = v168;
    v89 = v167;
    v86 = v170;
    v87 = v169;
    LODWORD(v85) = v171;
    v157 = v167;
    v158 = v168;
    v159 = v169;
    v160 = v170;
    v161 = v171;
    sub_213DBFEEC(&v157, v59, v60);
    v61 = v162;
    v83 = v163;
    v62 = v164;
    v157 = v162;
    v158 = v163;
    v159 = v164;
    v160 = v165;
    v161 = v166;
    v151 = v106;
    v152 = v105;
    v153 = v103;
    v154 = v98;
    v63 = swift_getOpaqueTypeConformance2();
    v64 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
    v149 = v63;
    v150 = v64;
    v147 = swift_getWitnessTable();
    v148 = v25;
    v145 = swift_getWitnessTable();
    v146 = v25;
    v143 = swift_getWitnessTable();
    v144 = v25;
    v65 = swift_getWitnessTable();
    v66 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938);
    v141 = v65;
    v142 = v66;
    v67 = v107;
    v68 = v108;
    v139 = swift_getWitnessTable();
    v140 = v67;
    swift_getWitnessTable();
    sub_213DBFF2C(&v157, v68, v59);
    sub_213E292E4(v61, v83, v62);
    sub_213E292E4(v89, v88, v87);
  }

  v167 = v106;
  v168 = v105;
  v169 = v103;
  v170 = v98;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
  v137 = v69;
  v138 = v70;
  v135 = swift_getWitnessTable();
  v136 = v25;
  v133 = swift_getWitnessTable();
  v134 = v25;
  v131 = swift_getWitnessTable();
  v132 = v25;
  v71 = swift_getWitnessTable();
  v72 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938);
  v129 = v71;
  v130 = v72;
  v127 = swift_getWitnessTable();
  v128 = v107;
  v73 = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v125 = v74;
  v126 = v75;
  v76 = swift_getWitnessTable();
  v123 = v73;
  v124 = v76;
  v77 = v92;
  v78 = swift_getWitnessTable();
  v79 = v95;
  sub_213DBFEEC(v95, v77, v78);
  return (*(v91 + 8))(v79, v77);
}

uint64_t sub_213E378FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a5;
  v34 = a2;
  v39 = a6;
  v9 = sub_213F4DDD0();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a4 - 8);
  v14 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4DF60();
  v17 = sub_213F4D400();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v34 - v24;
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  v26(v23);
  v28 = swift_allocObject();
  *(v28 + 16) = v34;
  *(v28 + 24) = a3;

  sub_213F4DDC0();
  v29 = v36;
  sub_213F4E610();

  (*(v37 + 8))(v13, v38);
  (*(v35 + 8))(v16, a4);
  v30 = sub_213E38728(&qword_281182838, MEMORY[0x277CDE470]);
  v40 = v29;
  v41 = v30;
  WitnessTable = swift_getWitnessTable();
  sub_213DBFEEC(v22, v17, WitnessTable);
  v32 = *(v18 + 8);
  v32(v22, v17);
  sub_213DBFEEC(v25, v17, WitnessTable);
  return (v32)(v25, v17);
}

unint64_t sub_213E37C44()
{
  result = qword_2811829A8;
  if (!qword_2811829A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811829A8);
  }

  return result;
}

unint64_t sub_213E37C98()
{
  result = qword_281186B50[0];
  if (!qword_281186B50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281186B50);
  }

  return result;
}

unint64_t sub_213E37CEC()
{
  result = qword_2811855B0;
  if (!qword_2811855B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811855B0);
  }

  return result;
}

unint64_t sub_213E37D5C()
{
  result = qword_2811825A8;
  if (!qword_2811825A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811825A8);
  }

  return result;
}

uint64_t keypath_get_12Tm@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_213F4D820();
  *a2 = v4;
  return result;
}

uint64_t keypath_set_13Tm(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();
  return sub_213F4D830();
}

uint64_t sub_213E37E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9318, &qword_213F57710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E37ECC()
{
  result = qword_281184C30;
  if (!qword_281184C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281184C30);
  }

  return result;
}

unint64_t sub_213E37F20()
{
  result = qword_281184748[0];
  if (!qword_281184748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281184748);
  }

  return result;
}

uint64_t sub_213E37F74(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for CellButton() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_213E35D74(a1, v6, v3, v4);
}

uint64_t sub_213E38010@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(type metadata accessor for CellButton() - 8);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_213E34F4C(a1, v8, v9, v10, v5, v6, a2);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for CellButton();
  v4 = *(*(v3 - 8) + 64);
  v5 = (v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)));
  if (*v5)
  {
    v6 = v5[1];
  }

  v7 = v5[3];

  if (v5[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 4);
  }

  v8 = v5[11];

  v9 = v5[14];

  v10 = v5 + *(v3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v12 = *v10;

      v13 = *(v10 + 1);

      v14 = *(v11 + 32);
      v15 = sub_213F4EDA0();
      (*(*(v15 - 8) + 8))(&v10[v14], v15);
    }
  }

  else
  {
    v16 = *v10;
  }

  v17 = *(v3 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_213F4D290();
    (*(*(v18 - 8) + 8))(v5 + v17, v18);
  }

  else
  {
    v19 = *(v5 + v17);
  }

  return swift_deallocObject();
}

uint64_t sub_213E38308(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for CellButton() - 8);
  return sub_213E35D18(a1, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
}

unint64_t sub_213E38388()
{
  result = qword_2811850B8[0];
  if (!qword_2811850B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811850B8);
  }

  return result;
}

uint64_t sub_213E38418(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_213E38460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_213E384D0()
{
  result = qword_281182EE0;
  if (!qword_281182EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93F8, &qword_213F57B98);
    sub_213E38588();
    sub_213DE3AE4(&qword_281182C30, &qword_27C8F7A78, &unk_213F5D5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182EE0);
  }

  return result;
}

unint64_t sub_213E38588()
{
  result = qword_281183098;
  if (!qword_281183098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93F0, &qword_213F57B90);
    sub_213E38640();
    sub_213DE3AE4(&qword_281182C00, &qword_27C8F9400, &unk_213F57BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183098);
  }

  return result;
}

unint64_t sub_213E38640()
{
  result = qword_281183350;
  if (!qword_281183350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93E0, &unk_213F57B80);
    sub_213E38728(&qword_281182908, MEMORY[0x277CDE278]);
    sub_213DE3AE4(&qword_2811828D8, &qword_27C8F93E8, &qword_213F61EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183350);
  }

  return result;
}

uint64_t sub_213E38728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CityTileViewModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CityTileViewModel.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CityTileViewModel.init(id:title:subtitle:imageProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  return sub_213DD7500(a7, (a8 + 6));
}

uint64_t sub_213E38820@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_213DE3164(v2, &v17 - v11, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D290();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

__n128 CityTile.init(model:tapHandler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for CityTile();
  v9 = a4 + *(v8 + 20);
  v10 = *(a1 + 48);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v10;
  *(v9 + 4) = *(a1 + 64);
  *(v9 + 10) = *(a1 + 80);
  result = *a1;
  v12 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v12;
  v13 = (a4 + *(v8 + 24));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_213E38AC4@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9490, &qword_213F57DB0);
  v3 = *(v2 - 8);
  v95 = v2 - 8;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v96 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v84 - v7;
  v8 = type metadata accessor for MapsDesignImage();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9498, &qword_213F57DB8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v94 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v84 - v18;
  v91 = v1 + *(type metadata accessor for CityTile() + 20);
  sub_213DEBAA8(v91 + 48, &v12[v9[10]]);
  v20 = sub_213F4EEE0();
  v85 = v21;
  v86 = v20;
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v22 = v9[7];
  *&v12[v22] = swift_getKeyPath();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v23 = v9[8];
  *&v12[v23] = swift_getKeyPath();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v24 = v9[9];
  *&v12[v24] = swift_getKeyPath();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v25 = &v12[v9[14]];
  v26 = &v12[v9[15]];
  v27 = &v12[v9[16]];
  v107 = 0uLL;
  *(&v108 + 7) = 0;
  *&v108 = 0;
  sub_213F4EA90();
  v28 = v111;
  v29 = BYTE8(v111);
  v30 = BYTE9(v111);
  v31 = BYTE10(v111);
  v32 = *v112;
  *v27 = v110;
  *(v27 + 2) = v28;
  v27[24] = v29;
  v27[25] = v30;
  v27[26] = v31;
  *(v27 + 4) = v32;
  v33 = v9[17];
  *&v107 = 0;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v12[v33] = v110;
  v12[v9[11]] = 1;
  v34 = &v12[v9[12]];
  v35 = v85;
  *v34 = v86;
  v34[1] = v35;
  v12[v9[13]] = 1;
  *v25 = 0;
  *(v25 + 1) = 0;
  *v26 = 0;
  *(v26 + 1) = 0;
  sub_213F4EEE0();
  sub_213F4D4E0();
  v86 = type metadata accessor for MapsDesignImage;
  sub_213E3AEA0(v12, v19, type metadata accessor for MapsDesignImage);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94A0, &qword_213F5A0E0);
  v36 = &v19[*(v85 + 36)];
  v37 = *&v99[23];
  *(v36 + 4) = *&v99[21];
  *(v36 + 5) = v37;
  *(v36 + 6) = *&v99[25];
  v38 = *&v99[15];
  *v36 = *&v99[13];
  *(v36 + 1) = v38;
  v39 = *&v99[19];
  *(v36 + 2) = *&v99[17];
  *(v36 + 3) = v39;
  sub_213DEBB74(v12);
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94A8, &qword_213F57E60) + 36);
  v92 = v19;
  *&v19[v40] = 256;
  v19[*(v14 + 44)] = 0;
  sub_213DEBAA8(v91 + 48, &v12[v9[10]]);
  v41 = sub_213F4EEE0();
  v43 = v42;
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v44 = v9[7];
  *&v12[v44] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v45 = v9[8];
  *&v12[v45] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v46 = v9[9];
  *&v12[v46] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v47 = &v12[v9[14]];
  v48 = &v12[v9[15]];
  v49 = &v12[v9[16]];
  v107 = 0uLL;
  *(&v108 + 7) = 0;
  *&v108 = 0;
  sub_213F4EA90();
  v50 = v111;
  v51 = BYTE8(v111);
  v52 = BYTE9(v111);
  v53 = BYTE10(v111);
  v54 = *v112;
  *v49 = v110;
  *(v49 + 2) = v50;
  v49[24] = v51;
  v49[25] = v52;
  v49[26] = v53;
  *(v49 + 4) = v54;
  v55 = v9[17];
  *&v107 = 0;
  sub_213F4EA90();
  *&v12[v55] = v110;
  v12[v9[11]] = 1;
  v56 = &v12[v9[12]];
  *v56 = v41;
  v56[1] = v43;
  v12[v9[13]] = 1;
  *v47 = 0;
  *(v47 + 1) = 0;
  *v48 = 0;
  *(v48 + 1) = 0;
  sub_213F4EEE0();
  sub_213F4D4E0();
  v57 = v93;
  sub_213E3AEA0(v12, v93, v86);
  v58 = (v57 + *(v85 + 36));
  v59 = *&v99[37];
  v58[4] = *&v99[35];
  v58[5] = v59;
  v58[6] = *&v99[39];
  v60 = *&v99[29];
  *v58 = *&v99[27];
  v58[1] = v60;
  v61 = *&v99[33];
  v58[2] = *&v99[31];
  v58[3] = v61;
  sub_213DEBB74(v12);
  v62 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94B0, &qword_213F57E68) + 36);
  *v62 = 0x4000000000000000;
  *(v62 + 8) = 1;
  v63 = sub_213F4EEE0();
  v65 = v64;
  sub_213F4E8C0();
  v66 = sub_213F4E900();

  v67 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94B8, &unk_213F57E70) + 36));
  *v67 = v66;
  v67[1] = v63;
  v67[2] = v65;
  v68 = sub_213F4EEE0();
  v70 = v69;
  v71 = sub_213F4DA40();
  v98[0] = 0;
  sub_213E393EC(&v110);
  v102 = *v112;
  v103 = *&v112[16];
  v104 = *&v112[32];
  v105 = *&v112[48];
  v100 = v110;
  v101 = v111;
  v106[2] = *v112;
  v106[3] = *&v112[16];
  v106[4] = *&v112[32];
  v106[5] = *&v112[48];
  v106[0] = v110;
  v106[1] = v111;
  sub_213DE3164(&v100, &v107, &qword_27C8F94C0, &unk_213F5A7B0);
  sub_213DE36FC(v106, &qword_27C8F94C0, &unk_213F5A7B0);
  *(&v99[4] + 7) = v102;
  *(&v99[6] + 7) = v103;
  *(&v99[8] + 7) = v104;
  *(&v99[10] + 7) = v105;
  *(v99 + 7) = v100;
  *(&v99[2] + 7) = v101;
  LOBYTE(v66) = v98[0];
  *&v107 = v68;
  *(&v107 + 1) = v70;
  v108 = v71;
  v109[0] = v98[0];
  *&v109[33] = *&v99[4];
  *&v109[17] = *&v99[2];
  *&v109[1] = *v99;
  *&v109[96] = *(&v105 + 1);
  *&v109[81] = *&v99[10];
  *&v109[65] = *&v99[8];
  *&v109[49] = *&v99[6];
  v72 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94C8, &qword_213F57E80) + 36);
  v73 = *&v109[80];
  *(v72 + 96) = *&v109[64];
  *(v72 + 112) = v73;
  v74 = *&v109[16];
  *(v72 + 32) = *v109;
  *(v72 + 48) = v74;
  v75 = *&v109[48];
  *(v72 + 64) = *&v109[32];
  *(v72 + 80) = v75;
  v76 = v108;
  *v72 = v107;
  *(v72 + 16) = v76;
  v77 = *&v99[4];
  *&v112[49] = *&v99[6];
  v113 = *&v99[8];
  *v114 = *&v99[10];
  *&v112[1] = *v99;
  *&v112[17] = *&v99[2];
  *(v72 + 128) = *&v109[96];
  *&v110 = v68;
  *(&v110 + 1) = v70;
  v111 = v71;
  v112[0] = v66;
  *&v114[15] = *(&v99[11] + 7);
  *&v112[33] = v77;
  sub_213DE3164(&v107, v98, &qword_27C8F94D0, &qword_213F57E88);
  sub_213DE36FC(&v110, &qword_27C8F94D0, &qword_213F57E88);
  *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94D8, &qword_213F57E90) + 36)) = 256;
  v78 = v94;
  *(v57 + *(v95 + 44)) = 0;
  v79 = v92;
  sub_213DE3164(v92, v78, &qword_27C8F9498, &qword_213F57DB8);
  v80 = v96;
  sub_213DE3164(v57, v96, &qword_27C8F9490, &qword_213F57DB0);
  v81 = v97;
  sub_213DE3164(v78, v97, &qword_27C8F9498, &qword_213F57DB8);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94E0, &qword_213F57E98);
  sub_213DE3164(v80, v81 + *(v82 + 48), &qword_27C8F9490, &qword_213F57DB0);
  sub_213DE36FC(v57, &qword_27C8F9490, &qword_213F57DB0);
  sub_213DE36FC(v79, &qword_27C8F9498, &qword_213F57DB8);
  sub_213DE36FC(v80, &qword_27C8F9490, &qword_213F57DB0);
  return sub_213DE36FC(v78, &qword_27C8F9498, &qword_213F57DB8);
}

uint64_t sub_213E393EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4E8D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_213F53CC0;
  *(v3 + 32) = sub_213F4E8D0();
  *(v3 + 40) = sub_213F4E8F0();
  *(v3 + 48) = sub_213F4E8F0();
  sub_213F4F020();
  sub_213F4F030();
  MEMORY[0x2160521D0](v3);
  sub_213F4D2C0();
  sub_213F4EEE0();
  sub_213F4D0C0();
  v4 = v19;
  v21 = v19;
  *(a1 + 88) = v19;
  v5 = v17;
  v6 = v16;
  v7 = v16;
  v20[2] = v16;
  v20[3] = v17;
  v20[4] = v18;
  *(a1 + 72) = v18;
  *(a1 + 56) = v5;
  *(a1 + 40) = v6;
  v8 = v14;
  v9 = v14;
  *(a1 + 8) = v14;
  v10 = v15;
  v11 = v15;
  v20[0] = v8;
  v20[1] = v15;
  *a1 = v2;
  *(a1 + 24) = v10;
  v23 = v4;
  v22[3] = v17;
  v22[4] = v18;
  v22[1] = v11;
  v22[2] = v7;
  v22[0] = v9;

  sub_213DE3164(v20, &v13, &qword_27C8F94E8, &unk_213F65730);
  sub_213DE36FC(v22, &qword_27C8F94E8, &unk_213F65730);
}

uint64_t sub_213E3958C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9458, &qword_213F57D50);
  v4 = *(v3 - 8);
  v74 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = v71 - v6;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9460, &qword_213F57D58);
  v7 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v75 = v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9468, &qword_213F57D60);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v79 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v77 = v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9470, &qword_213F57D68);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v76 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = v71 - v18;
  v72 = (a1 + *(type metadata accessor for CityTile() + 20));
  v19 = v72[3];
  *&v93 = v72[2];
  *(&v93 + 1) = v19;
  v71[1] = sub_213DBC9EC();

  v20 = sub_213F4E310();
  v22 = v21;
  v24 = v23;
  *&v93 = sub_213F4E8F0();
  v25 = sub_213F4E2B0();
  v27 = v26;
  v29 = v28;
  sub_213DBCA40(v20, v22, v24 & 1);

  sub_213F4E0D0();
  sub_213F4E110();
  sub_213F4E1D0();

  v30 = sub_213F4E2E0();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_213DBCA40(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  sub_213F4EEB0();
  sub_213F4D4E0();
  *&v97[55] = v104;
  *&v97[71] = v105;
  *&v97[103] = v107;
  *&v96[7] = *(&v107 + 1);
  *&v97[87] = v106;
  *&v97[7] = v101;
  *&v97[23] = v102;
  *&v97[39] = v103;
  *(v96 + 1) = *v97;
  *(&v96[1] + 1) = *&v97[16];
  *(&v96[2] + 1) = *&v97[32];
  *(&v96[6] + 1) = *&v97[96];
  *(&v96[5] + 1) = *&v97[80];
  v100 = v34 & 1;
  v98 = 0;
  *&v93 = v30;
  *(&v93 + 1) = v32;
  LOBYTE(v94) = v34 & 1;
  DWORD1(v94) = *&v99[3];
  *(&v94 + 1) = *v99;
  *(&v94 + 1) = v36;
  *&v95 = KeyPath;
  *(&v95 + 1) = 2;
  LOBYTE(v96[0]) = 0;
  *(&v96[4] + 1) = *&v97[64];
  *(&v96[3] + 1) = *&v97[48];
  v90 = v96[5];
  v91 = v96[6];
  v92 = *&v96[7];
  v86 = v96[1];
  v87 = v96[2];
  v88 = v96[3];
  v89 = v96[4];
  v82 = v93;
  v83 = v94;
  v84 = v95;
  v85 = v96[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9478, &qword_213F57DA0);
  sub_213E3AD64(&qword_281183048, &qword_27C8F9478, &qword_213F57DA0, sub_213E0C270);
  sub_213F4E6D0();
  sub_213DE36FC(&v93, &qword_27C8F9478, &qword_213F57DA0);
  v38 = v72[5];
  *&v82 = v72[4];
  *(&v82 + 1) = v38;

  v39 = sub_213F4E310();
  v41 = v40;
  LOBYTE(v32) = v42;
  *&v82 = sub_213F4E8F0();
  *(&v82 + 1) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9480, &unk_213F5A6C0);
  sub_213DE3AE4(&qword_2811828B0, &qword_27C8F9480, &unk_213F5A6C0);
  v43 = sub_213F4E2B0();
  v45 = v44;
  LOBYTE(v30) = v46;
  sub_213DBCA40(v39, v41, v32 & 1);

  sub_213F4E0C0();
  sub_213F4E170();
  sub_213F4E1D0();

  v47 = sub_213F4E2E0();
  v49 = v48;
  LOBYTE(v32) = v50;
  v52 = v51;

  sub_213DBCA40(v43, v45, v30 & 1);

  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9278, &qword_213F57290) + 36);
  v54 = *MEMORY[0x277CE13B8];
  v55 = sub_213F4EF90();
  v56 = v73;
  (*(*(v55 - 8) + 104))(&v73[v53], v54, v55);
  *v56 = v47;
  *(v56 + 8) = v49;
  *(v56 + 16) = v32 & 1;
  *(v56 + 24) = v52;
  v57 = swift_getKeyPath();
  v58 = v56 + *(v74 + 44);
  *v58 = v57;
  *(v58 + 8) = 1;
  *(v58 + 16) = 0;
  sub_213F4EEB0();
  sub_213F4D4E0();
  v59 = v75;
  sub_213E3ACF4(v56, v75);
  v60 = (v59 + *(v78 + 36));
  v61 = v87;
  v60[4] = v86;
  v60[5] = v61;
  v60[6] = v88;
  v62 = v83;
  *v60 = v82;
  v60[1] = v62;
  v63 = v85;
  v60[2] = v84;
  v60[3] = v63;
  sub_213E3AD64(&qword_281182EC8, &qword_27C8F9460, &qword_213F57D58, sub_213E3ADE8);
  v64 = v77;
  sub_213F4E6D0();
  sub_213DE36FC(v59, &qword_27C8F9460, &qword_213F57D58);
  v65 = v81;
  v66 = v76;
  sub_213DE3164(v81, v76, &qword_27C8F9470, &qword_213F57D68);
  v67 = v79;
  sub_213DE3164(v64, v79, &qword_27C8F9468, &qword_213F57D60);
  v68 = v80;
  sub_213DE3164(v66, v80, &qword_27C8F9470, &qword_213F57D68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9488, &qword_213F57DA8);
  sub_213DE3164(v67, v68 + *(v69 + 48), &qword_27C8F9468, &qword_213F57D60);
  sub_213DE36FC(v64, &qword_27C8F9468, &qword_213F57D60);
  sub_213DE36FC(v65, &qword_27C8F9470, &qword_213F57D68);
  sub_213DE36FC(v67, &qword_27C8F9468, &qword_213F57D60);
  return sub_213DE36FC(v66, &qword_27C8F9470, &qword_213F57D68);
}

uint64_t CityTile.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CityTile();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9408, &qword_213F57BF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  sub_213E3AEA0(v1, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CityTile);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_213E3A908(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9410, &qword_213F57C00);
  sub_213E3A978();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_281182760, &qword_27C8F9408, &qword_213F57BF8);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v6 + 8))(v9, v5);
}

double sub_213E3A070@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_213F4D290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  *a2 = sub_213F4EEE0();
  a2[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9428, &qword_213F57D20);
  sub_213E3A27C(a1, a2 + *(v13 + 44));
  sub_213E38820(v11);
  sub_213F4D280();
  sub_213F4D270();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v14(v11, v4);
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9418, &qword_213F57C08) + 36);
  v16 = *(sub_213F4D470() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_213F4D950();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #26.0 }

  *v15 = _Q0;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9410, &qword_213F57C00) + 36);
  *&result = 2037672259;
  *v24 = xmmword_213F57BB0;
  v24[16] = 12;
  return result;
}

uint64_t sub_213E3A27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9430, &qword_213F57D28);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v49 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9438, &qword_213F57D30);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v48 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v47 - v22;
  sub_213E38AC4(&v47 - v22);
  *v17 = sub_213F4DA40();
  *(v17 + 1) = 0x4000000000000000;
  v17[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9440, &qword_213F57D38);
  sub_213E3958C(a1, &v17[*(v24 + 44)]);
  v25 = sub_213F4E040();
  sub_213E38820(v10);
  sub_213F4D280();
  sub_213F4D270();
  v26 = *(v4 + 8);
  v26(v8, v3);
  v26(v10, v3);
  sub_213F4CDA0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9448, &qword_213F57D40) + 36)];
  *v35 = v25;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_213F4E070();
  sub_213E38820(v10);
  sub_213F4D280();
  sub_213F4D270();
  v26(v8, v3);
  v26(v10, v3);
  sub_213F4CDA0();
  v37 = &v17[*(v12 + 44)];
  *v37 = v36;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  v42 = v48;
  sub_213DE3164(v23, v48, &qword_27C8F9438, &qword_213F57D30);
  v43 = v49;
  sub_213DE3164(v17, v49, &qword_27C8F9430, &qword_213F57D28);
  v44 = v50;
  sub_213DE3164(v42, v50, &qword_27C8F9438, &qword_213F57D30);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9450, &qword_213F57D48);
  sub_213DE3164(v43, v44 + *(v45 + 48), &qword_27C8F9430, &qword_213F57D28);
  sub_213DE36FC(v17, &qword_27C8F9430, &qword_213F57D28);
  sub_213DE36FC(v23, &qword_27C8F9438, &qword_213F57D30);
  sub_213DE36FC(v43, &qword_27C8F9430, &qword_213F57D28);
  return sub_213DE36FC(v42, &qword_27C8F9438, &qword_213F57D30);
}

uint64_t sub_213E3A66C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9408, &qword_213F57BF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  sub_213E3AEA0(v2, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CityTile);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_213E3A908(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v14 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9410, &qword_213F57C00);
  sub_213E3A978();
  sub_213F4EB00();
  sub_213DE3AE4(&qword_281182760, &qword_27C8F9408, &qword_213F57BF8);
  sub_213E2EE14();
  sub_213F4E3C0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t type metadata accessor for CityTile()
{
  result = qword_2811837E0;
  if (!qword_2811837E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213E3A908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CityTile();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213E3A978()
{
  result = qword_281182F30;
  if (!qword_281182F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9410, &qword_213F57C00);
    sub_213E3AA04();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F30);
  }

  return result;
}

unint64_t sub_213E3AA04()
{
  result = qword_281183150;
  if (!qword_281183150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9418, &qword_213F57C08);
    sub_213DE3AE4(&qword_281182638, &qword_27C8F9420, &unk_213F57C10);
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183150);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_213E3AB28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_213E3AB70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213E3ABFC()
{
  sub_213DF29DC();
  if (v0 <= 0x3F)
  {
    sub_213DE22E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213E3AC88()
{
  v1 = type metadata accessor for CityTile();
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_213E3ACF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9458, &qword_213F57D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213E3AD64(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213E3ADE8()
{
  result = qword_281183078;
  if (!qword_281183078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9458, &qword_213F57D50);
    sub_213E2F46C();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183078);
  }

  return result;
}

uint64_t sub_213E3AEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t DateCell.init(model:tapHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_213DD7500(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t DateCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = *(v2 + 48);
  sub_213E3B1D8(v2, v16);
  v6 = swift_allocObject();
  v7 = v16[1];
  *(v6 + 16) = v16[0];
  *(v6 + 32) = v7;
  *(v6 + 48) = v16[2];
  *(v6 + 64) = v17;
  sub_213DEBAA8(v2, a1 + 32);
  sub_213DD74C4(v4);
  *(a1 + 80) = sub_213F4CDF0() & 1;
  *(a1 + 88) = v8;
  *(a1 + 96) = v9 & 1;
  sub_213F4EA90();
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F94F0, &qword_213F57EB0);
  v11 = *(v10 + 56);
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  swift_storeEnumTagMultiPayload();
  v12 = *(v10 + 60);
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = sub_213E3B210;
  *(a1 + 24) = v6;
  *(a1 + 72) = 0;
  return result;
}

double sub_213E3B0CC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ListCell(0);
  sub_213DEBAA8(a1, a2 + v4[8]);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(a2 + v4[7]) = 8;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9500, &unk_213F58050) + 36);
  *&result = 1702125892;
  *v7 = xmmword_213F57EA0;
  v7[16] = 2;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_213E3B254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_213E3B29C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213E3B2F8()
{
  result = qword_27C8F94F8;
  if (!qword_27C8F94F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F94F0, &qword_213F57EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F94F8);
  }

  return result;
}

uint64_t EmptyStateViewModel.ButtonConfig.init(systemImage:label:tapAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

__n128 EmptyStateViewModel.init(icon:title:details:button:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  v7 = *(a6 + 16);
  *(a7 + 56) = *a6;
  *(a7 + 16) = *(a1 + 16);
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 72) = v7;
  result = *(a6 + 32);
  *(a7 + 88) = result;
  return result;
}

__n128 EmptyStateView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_213E3B3C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a3;
  v85 = a2;
  v83 = a1;
  v93 = a4;
  v81 = sub_213F4DA20();
  v76 = *(v81 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v81);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9560, &qword_213F583C8);
  v7 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v73 = &v72 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9568, &qword_213F583D0);
  v79 = *(v80 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v72 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9570, &qword_213F583D8);
  v89 = *(v90 - 8);
  v11 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v74 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9578, &qword_213F583E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v92 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v87 = &v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9580, &qword_213F583E8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v91 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v72 - v26;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9588, &qword_213F583F0);
  v28 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v30 = &v72 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9590, &qword_213F583F8);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v88 = &v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v82 = &v72 - v35;
  sub_213E3BED4(a1, &v101);
  v36 = v101;
  v37 = BYTE9(v101);
  v38 = BYTE8(v101);
  sub_213F4E160();
  v39 = sub_213F4E0F0();
  (*(*(v39 - 8) + 56))(v27, 1, 1, v39);
  v40 = sub_213F4E190();
  sub_213DE36FC(v27, &qword_27C8F7668, &qword_213F52190);
  KeyPath = swift_getKeyPath();
  v42 = [objc_opt_self() secondaryLabelColor];
  v43 = sub_213F4E870();
  *&v101 = v36;
  BYTE8(v101) = v38;
  BYTE9(v101) = v37;
  *&v102 = KeyPath;
  *(&v102 + 1) = v40;
  *&v103 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9598, &qword_213F58430);
  sub_213E3D1B8();
  sub_213F4E620();
  j__swift_release();

  sub_213E3D4B8();
  v44 = v82;
  sub_213F4E6D0();
  sub_213DE36FC(v30, &qword_27C8F9588, &qword_213F583F0);
  *v23 = sub_213F4DA40();
  *(v23 + 1) = 0x4000000000000000;
  v23[16] = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F95F0, &qword_213F58458);
  v46 = v83;
  v47 = sub_213E3C088(v83, v86, &v23[*(v45 + 44)]);
  v48 = *(v46 + 9);
  v98 = *(v46 + 7);
  v99 = v48;
  v100 = *(v46 + 11);
  if (*(&v98 + 1))
  {
    v101 = v98;
    v102 = v99;
    v103 = v100;
    MEMORY[0x28223BE20](v47);
    *(&v72 - 2) = &v101;
    sub_213DE3164(&v98, &v94, &qword_27C8F9600, &qword_213F58468);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9608, &qword_213F58470);
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9610, &unk_213F58478);
    v50 = sub_213E3D57C();
    v94 = v49;
    v95 = v50;
    swift_getOpaqueTypeConformance2();
    v51 = v73;
    sub_213F4EB00();
    v52 = v77;
    v53 = (v51 + *(v77 + 36));
    v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9620, &qword_213F58488) + 28);
    sub_213F4D4F0();
    *v53 = swift_getKeyPath();
    v55 = v75;
    sub_213F4DA10();
    v56 = sub_213E3D728();
    v57 = sub_213E3D80C(&qword_281182C20, MEMORY[0x277CDDEE0]);
    v58 = v78;
    v59 = v81;
    sub_213F4E3B0();
    (*(v76 + 8))(v55, v59);
    sub_213DE36FC(v51, &qword_27C8F9560, &qword_213F583C8);
    v94 = 0x7263537974706D45;
    v95 = 0xEB000000006E6565;
    MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
    v94 = v52;
    v95 = v59;
    v96 = v56;
    v97 = v57;
    swift_getOpaqueTypeConformance2();
    v60 = v74;
    v61 = v80;
    sub_213F4E6D0();

    sub_213DE36FC(&v98, &qword_27C8F9600, &qword_213F58468);
    (*(v79 + 8))(v58, v61);
    v62 = v87;
    sub_213DC55F0(v60, v87);
    v63 = 0;
  }

  else
  {
    v62 = v87;
    v63 = 1;
  }

  (*(v89 + 56))(v62, v63, 1, v90);
  v64 = v44;
  v65 = v88;
  sub_213DE3164(v44, v88, &qword_27C8F9590, &qword_213F583F8);
  v66 = v23;
  v67 = v91;
  sub_213DE3164(v23, v91, &qword_27C8F9580, &qword_213F583E8);
  v68 = v92;
  sub_213DE3164(v62, v92, &qword_27C8F9578, &qword_213F583E0);
  v69 = v93;
  sub_213DE3164(v65, v93, &qword_27C8F9590, &qword_213F583F8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F95F8, &qword_213F58460);
  sub_213DE3164(v67, v69 + *(v70 + 48), &qword_27C8F9580, &qword_213F583E8);
  sub_213DE3164(v68, v69 + *(v70 + 64), &qword_27C8F9578, &qword_213F583E0);
  sub_213DE36FC(v62, &qword_27C8F9578, &qword_213F583E0);
  sub_213DE36FC(v66, &qword_27C8F9580, &qword_213F583E8);
  sub_213DE36FC(v64, &qword_27C8F9590, &qword_213F583F8);
  sub_213DE36FC(v68, &qword_27C8F9578, &qword_213F583E0);
  sub_213DE36FC(v67, &qword_27C8F9580, &qword_213F583E8);
  return sub_213DE36FC(v65, &qword_27C8F9590, &qword_213F583F8);
}

uint64_t sub_213E3BED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1)
    {
      sub_213E3D90C(*a1, v3, 2u);
      v7 = v4;
      sub_213F4E9D0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F95E0, &qword_213F58450);
      sub_213E3D438();
      sub_213F4DBA0();
      sub_213E3D934(v4, v3, 2u);
      goto LABEL_7;
    }

    v5 = *(a1 + 8);

    sub_213F4E9F0();
  }

  else
  {
    v6 = *(a1 + 8);

    sub_213F4EA10();
  }

  sub_213F4DBA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F95E0, &qword_213F58450);
  sub_213E3D438();
  sub_213F4DBA0();
LABEL_7:

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 9) = v11;
  return result;
}

uint64_t sub_213E3C088@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v59 = a2;
  v63 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9640, &qword_213F584C8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v55 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v55 - v11;
  MEMORY[0x28223BE20](v10);
  v58 = &v55 - v12;
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v56 = v15;
  v64 = v13;
  v65 = v14;
  v55 = sub_213DBC9EC();

  v17 = sub_213F4E310();
  v19 = v18;
  v21 = v20;
  v22 = sub_213F4E2E0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_213DBCA40(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v64 = v22;
  v65 = v24;
  v66 = v26 & 1;
  v67 = v28;
  v68 = KeyPath;
  v69 = 1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9648, &unk_213F58500);
  sub_213E3D854();
  sub_213F4E6D0();
  sub_213DBCA40(v22, v24, v26 & 1);

  v64 = v56;
  v65 = v16;

  v30 = sub_213F4E310();
  v32 = v31;
  v34 = v33;
  v35 = [objc_opt_self() secondaryLabelColor];
  v64 = sub_213F4E870();
  v36 = sub_213F4E2B0();
  v38 = v37;
  v40 = v39;
  sub_213DBCA40(v30, v32, v34 & 1);

  v41 = sub_213F4E2E0();
  v43 = v42;
  LOBYTE(v30) = v44;
  v46 = v45;
  sub_213DBCA40(v36, v38, v40 & 1);

  v47 = swift_getKeyPath();
  v64 = v41;
  v65 = v43;
  v66 = v30 & 1;
  v67 = v46;
  v68 = v47;
  v69 = 1;
  v48 = v60;
  sub_213F4E6D0();
  sub_213DBCA40(v41, v43, v30 & 1);

  v49 = v58;
  v50 = v61;
  sub_213DE3164(v58, v61, &qword_27C8F9640, &qword_213F584C8);
  v51 = v62;
  sub_213DE3164(v48, v62, &qword_27C8F9640, &qword_213F584C8);
  v52 = v63;
  sub_213DE3164(v50, v63, &qword_27C8F9640, &qword_213F584C8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9650, &unk_213F58510);
  sub_213DE3164(v51, v52 + *(v53 + 48), &qword_27C8F9640, &qword_213F584C8);
  sub_213DE36FC(v48, &qword_27C8F9640, &qword_213F584C8);
  sub_213DE36FC(v49, &qword_27C8F9640, &qword_213F584C8);
  sub_213DE36FC(v51, &qword_27C8F9640, &qword_213F584C8);
  return sub_213DE36FC(v50, &qword_27C8F9640, &qword_213F584C8);
}

uint64_t sub_213E3C4FC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9610, &unk_213F58478);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-v4];
  v13 = *(a1 + 1);
  v14 = v13;
  v7 = *a1;
  v6 = a1[1];
  sub_213E32160(&v14, v12);
  sub_213DBC9EC();

  sub_213F4EA80();
  v8 = sub_213F4E0D0();
  KeyPath = swift_getKeyPath();
  v10 = &v5[*(v2 + 36)];
  *v10 = KeyPath;
  v10[1] = v8;
  sub_213F4E180();
  sub_213E3D57C();
  sub_213F4E370();
  return sub_213DE36FC(v5, &qword_27C8F9610, &unk_213F58478);
}

uint64_t EmptyStateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = sub_213F4DC00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9508, &qword_213F58070);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v12 = *(v1 + 80);
  v18[4] = *(v1 + 64);
  v18[5] = v12;
  v19 = *(v1 + 96);
  v13 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v13;
  v14 = *(v1 + 48);
  v18[2] = *(v1 + 32);
  v18[3] = v14;
  v17[4] = v18;
  sub_213F4E030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9510, &qword_213F58078);
  sub_213DE3AE4(&qword_27C8F9518, &qword_27C8F9510, &qword_213F58078);
  sub_213F4CE50();
  sub_213F4DBF0();
  v15 = sub_213F4E030();
  sub_213F4E020();
  sub_213F4E020();
  if (sub_213F4E020() != v15)
  {
    sub_213F4E020();
  }

  sub_213DE3AE4(&qword_27C8F9520, &qword_27C8F9508, &qword_213F58070);
  sub_213F4E660();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_213E3C8E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_213F4EEE0();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9528, &unk_213F58388);
  return sub_213E3C958(a1, a2 + *(v5 + 44));
}

uint64_t sub_213E3C958@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v54 = a1;
  v59 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v49 - v4;
  v6 = sub_213F4E230();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9530, &qword_213F58398);
  v11 = *(*(v53 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v53);
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = (&v49 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9538, &unk_213F583A0);
  v56 = *(v15 - 8);
  v57 = v15;
  v16 = *(v56 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v55 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - v19;
  v60 = 0;
  v61 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9540, &qword_213F5DE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F51DE0;
  v22 = sub_213F4E010();
  *(inited + 32) = v22;
  v23 = sub_213F4E030();
  *(inited + 33) = v23;
  sub_213F4E020();
  sub_213F4E020();
  if (sub_213F4E020() != v22)
  {
    sub_213F4E020();
  }

  sub_213F4E020();
  if (sub_213F4E020() != v23)
  {
    sub_213F4E020();
  }

  sub_213F4EEE0();
  sub_213F4E6C0();
  v24 = *MEMORY[0x277CE0A90];
  v51 = v20;
  v25 = v7[13];
  v25(v10, v24, v6);
  v26 = sub_213F4E0F0();
  v27 = *(*(v26 - 8) + 56);
  v27(v5, 1, 1, v26);
  sub_213F4E180();
  v50 = sub_213F4E1A0();
  sub_213DE36FC(v5, &qword_27C8F7668, &qword_213F52190);
  v28 = v7[1];
  v28(v10, v6);
  v25(v10, *MEMORY[0x277CE0A68], v6);
  v27(v5, 1, 1, v26);
  sub_213F4E170();
  v29 = sub_213F4E1A0();
  sub_213DE36FC(v5, &qword_27C8F7668, &qword_213F52190);
  v28(v10, v6);
  v30 = sub_213F4DA40();
  v31 = v52;
  *v52 = v30;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9548, &qword_213F583B0);
  sub_213E3B3C0(v54, v50, v29, v31 + *(v32 + 44));

  v33 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9550, &qword_213F583B8) + 36);
  *v33 = xmmword_213F58060;
  *(v33 + 16) = 16;
  LOBYTE(v25) = sub_213F4E040();
  sub_213F4CDA0();
  v34 = v31 + *(v53 + 36);
  *v34 = v25;
  *(v34 + 8) = v35;
  *(v34 + 16) = v36;
  *(v34 + 24) = v37;
  *(v34 + 32) = v38;
  *(v34 + 40) = 0;
  v40 = v55;
  v39 = v56;
  v41 = *(v56 + 16);
  v42 = v51;
  v43 = v57;
  v41(v55, v51, v57);
  v44 = v58;
  sub_213DE3164(v31, v58, &qword_27C8F9530, &qword_213F58398);
  v45 = v59;
  v41(v59, v40, v43);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9558, &qword_213F583C0);
  sub_213DE3164(v44, &v45[*(v46 + 48)], &qword_27C8F9530, &qword_213F58398);
  sub_213DE36FC(v31, &qword_27C8F9530, &qword_213F58398);
  v47 = *(v39 + 8);
  v47(v42, v43);
  sub_213DE36FC(v44, &qword_27C8F9530, &qword_213F58398);
  return (v47)(v40, v43);
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign19EmptyStateViewModelV12ButtonConfigVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_213E3CFC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_213E3D008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_213E3D064(uint64_t a1, int a2)
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

uint64_t sub_213E3D0AC(uint64_t result, int a2, int a3)
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

uint64_t sub_213E3D108(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213E3D150(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213E3D1B8()
{
  result = qword_27C8F95A0;
  if (!qword_27C8F95A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9598, &qword_213F58430);
    sub_213E3D270();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F95A0);
  }

  return result;
}

unint64_t sub_213E3D270()
{
  result = qword_27C8F95A8;
  if (!qword_27C8F95A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F95B0, &qword_213F58438);
    sub_213E3D328();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F95A8);
  }

  return result;
}

unint64_t sub_213E3D328()
{
  result = qword_27C8F95B8;
  if (!qword_27C8F95B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F95C0, &qword_213F58440);
    sub_213E3D3AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F95B8);
  }

  return result;
}

unint64_t sub_213E3D3AC()
{
  result = qword_27C8F95C8;
  if (!qword_27C8F95C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F95D0, &qword_213F58448);
    sub_213E3D438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F95C8);
  }

  return result;
}

unint64_t sub_213E3D438()
{
  result = qword_27C8F95D8;
  if (!qword_27C8F95D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F95E0, &qword_213F58450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F95D8);
  }

  return result;
}

unint64_t sub_213E3D4B8()
{
  result = qword_27C8F95E8;
  if (!qword_27C8F95E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9588, &qword_213F583F0);
    sub_213E3D1B8();
    sub_213E3D80C(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F95E8);
  }

  return result;
}

unint64_t sub_213E3D57C()
{
  result = qword_27C8F9618;
  if (!qword_27C8F9618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9610, &unk_213F58478);
    sub_213DE3AE4(&qword_27C8F8F18, &qword_27C8F8F10, &qword_213F57850);
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9618);
  }

  return result;
}

uint64_t sub_213E3D660(uint64_t a1)
{
  v2 = sub_213F4D500();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_213F4D680();
}

unint64_t sub_213E3D728()
{
  result = qword_27C8F9628;
  if (!qword_27C8F9628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9560, &qword_213F583C8);
    sub_213DE3AE4(&qword_27C8F9630, &qword_27C8F9638, &qword_213F584C0);
    sub_213DE3AE4(&qword_281182878, &qword_27C8F9620, &qword_213F58488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9628);
  }

  return result;
}

uint64_t sub_213E3D80C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213E3D854()
{
  result = qword_281183328;
  if (!qword_281183328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9648, &unk_213F58500);
    sub_213DE3AE4(&qword_281182888, &qword_27C8F7CA8, &unk_213F53660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183328);
  }

  return result;
}

id sub_213E3D90C(id result, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_213E3D934(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }
}

uint64_t sub_213E3D964(double a1)
{
  if (*MEMORY[0x277D74438] == a1)
  {
    return MEMORY[0x282132658]();
  }

  if (*MEMORY[0x277D74428] == a1)
  {
    return MEMORY[0x282132688]();
  }

  if (*MEMORY[0x277D74408] == a1)
  {
    return MEMORY[0x2821326B8]();
  }

  if (*MEMORY[0x277D74418] == a1)
  {
    return sub_213F4E170();
  }

  if (*MEMORY[0x277D74410] == a1)
  {
    return sub_213F4E160();
  }

  if (*MEMORY[0x277D74420] == a1)
  {
    return sub_213F4E180();
  }

  if (*MEMORY[0x277D743F8] == a1)
  {
    return sub_213F4E110();
  }

  if (*MEMORY[0x277D74400] == a1)
  {
    return MEMORY[0x2821326A0]();
  }

  if (*MEMORY[0x277D743E8] != a1)
  {
    return sub_213F4E170();
  }

  return MEMORY[0x282132690]();
}

uint64_t sub_213E3DA3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D769A8];
  v5 = sub_213F4F250();
  v7 = v6;
  if (v5 == sub_213F4F250() && v7 == v8)
  {

    goto LABEL_8;
  }

  v10 = sub_213F4F830();

  if (v10)
  {

LABEL_8:
    v11 = MEMORY[0x277CE0A50];
    goto LABEL_9;
  }

  v16 = *MEMORY[0x277D76A08];
  v17 = sub_213F4F250();
  v19 = v18;
  if (v17 == sub_213F4F250() && v19 == v20)
  {

    goto LABEL_19;
  }

  v22 = sub_213F4F830();

  if (v22)
  {

LABEL_19:
    v11 = MEMORY[0x277CE0A70];
    goto LABEL_9;
  }

  v23 = *MEMORY[0x277D76A20];
  v24 = sub_213F4F250();
  v26 = v25;
  if (v24 == sub_213F4F250() && v26 == v27)
  {

LABEL_25:
    v11 = MEMORY[0x277CE0A80];
    goto LABEL_9;
  }

  v28 = sub_213F4F830();

  if (v28)
  {

    goto LABEL_25;
  }

  v29 = *MEMORY[0x277D76A28];
  v30 = sub_213F4F250();
  v32 = v31;
  if (v30 == sub_213F4F250() && v32 == v33)
  {

LABEL_31:
    v11 = MEMORY[0x277CE0A90];
    goto LABEL_9;
  }

  v34 = sub_213F4F830();

  if (v34)
  {

    goto LABEL_31;
  }

  v35 = *MEMORY[0x277D76988];
  v36 = sub_213F4F250();
  v38 = v37;
  if (v36 == sub_213F4F250() && v38 == v39)
  {

LABEL_37:
    v11 = MEMORY[0x277CE0AC0];
    goto LABEL_9;
  }

  v40 = sub_213F4F830();

  if (v40)
  {

    goto LABEL_37;
  }

  v41 = *MEMORY[0x277D769D0];
  v42 = sub_213F4F250();
  v44 = v43;
  if (v42 == sub_213F4F250() && v44 == v45)
  {

LABEL_43:
    v11 = MEMORY[0x277CE0A58];
    goto LABEL_9;
  }

  v46 = sub_213F4F830();

  if (v46)
  {

    goto LABEL_43;
  }

  v47 = *MEMORY[0x277D76918];
  v48 = sub_213F4F250();
  v50 = v49;
  if (v48 == sub_213F4F250() && v50 == v51)
  {

LABEL_49:
    v11 = MEMORY[0x277CE0A68];
    goto LABEL_9;
  }

  v52 = sub_213F4F830();

  if (v52)
  {

    goto LABEL_49;
  }

  v53 = *MEMORY[0x277D76920];
  v54 = sub_213F4F250();
  v56 = v55;
  if (v54 == sub_213F4F250() && v56 == v57)
  {

LABEL_55:
    v11 = MEMORY[0x277CE0A98];
    goto LABEL_9;
  }

  v58 = sub_213F4F830();

  if (v58)
  {

    goto LABEL_55;
  }

  v59 = *MEMORY[0x277D76968];
  v60 = sub_213F4F250();
  v62 = v61;
  if (v60 == sub_213F4F250() && v62 == v63)
  {

LABEL_61:
    v11 = MEMORY[0x277CE0AB0];
    goto LABEL_9;
  }

  v64 = sub_213F4F830();

  if (v64)
  {

    goto LABEL_61;
  }

  v65 = *MEMORY[0x277D76938];
  v66 = sub_213F4F250();
  v68 = v67;
  if (v66 == sub_213F4F250() && v68 == v69)
  {

LABEL_67:
    v11 = MEMORY[0x277CE0AA0];
    goto LABEL_9;
  }

  v70 = sub_213F4F830();

  if (v70)
  {

    goto LABEL_67;
  }

  v71 = *MEMORY[0x277D76940];
  v72 = sub_213F4F250();
  v74 = v73;
  if (v72 == sub_213F4F250() && v74 == v75)
  {

    v11 = MEMORY[0x277CE0AA8];
  }

  else
  {
    v76 = sub_213F4F830();

    v11 = MEMORY[0x277CE0A68];
    if (v76)
    {
      v11 = MEMORY[0x277CE0AA8];
    }
  }

LABEL_9:
  v12 = *v11;
  v13 = sub_213F4E230();
  v14 = *(*(v13 - 8) + 104);

  return v14(a2, v12, v13);
}

double sub_213E3E0C8()
{
  v1 = [v0 fontDescriptor];
  v2 = [v1 objectForKey_];

  if (v2)
  {
    sub_213F4F6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9728, &qword_213F588B0);
    if ((swift_dynamicCast() & 1) != 0 && v6)
    {
      if (*(v6 + 16) && (v3 = sub_213F4B920(*MEMORY[0x277D74430]), (v4 & 1) != 0))
      {
        sub_213E426EC(*(v6 + 56) + 32 * v3, v9);

        if (swift_dynamicCast())
        {
          return *&v7;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_213DE36FC(v9, &unk_27C8F8BC0, &qword_213F563F0);
  }

  return *MEMORY[0x277D74418];
}

double sub_213E3E230()
{
  swift_getKeyPath();
  sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics);
  sub_213F4CB80();

  return *(v0 + 16);
}

double sub_213E3E2D0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics);
  sub_213F4CB80();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_213E3E378(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics);
    sub_213F4CB70();
  }
}

uint64_t sub_213E3E490()
{
  v1 = OBJC_IVAR____TtC10MapsDesign12LabelMetrics___observationRegistrar;
  v2 = sub_213F4CBC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_213E3E52C()
{
  v1 = v0;
  v2 = sub_213F4D3B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = type metadata accessor for UILabelView(0);
  [v10 setAttributedText_];
  [v10 setFont_];
  sub_213E15130(0, &qword_27C8F9680, 0x277D75348);
  v12 = *(v0 + v11[7]);

  v13 = sub_213F4F5F0();
  [v10 setTextColor_];

  [v10 setNumberOfLines_];
  [v10 setLineBreakMode_];
  v14 = v1 + v11[8];
  if (*(v14 + 8) == 1)
  {
    sub_213EA8464(v9);
    (*(v3 + 104))(v7, *MEMORY[0x277CDFA88], v2);
    v15 = sub_213F4D3A0();
    v16 = *(v3 + 8);
    v16(v7, v2);
    v16(v9, v2);
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = *v14;
  }

  [v10 setTextAlignment_];
  [v10 setAdjustsFontForContentSizeCategory_];
  LODWORD(v18) = 1148846080;
  [v10 setContentHuggingPriority:1 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v19];
  LODWORD(v20) = 1132068864;
  [v10 setContentHuggingPriority:0 forAxis:v20];
  LODWORD(v21) = 1132068864;
  [v10 setContentCompressionResistancePriority:0 forAxis:v21];
  v22 = v11[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9668, &qword_213F58660);
  sub_213F4ED40();
  v23 = v30;
  result = [v10 font];
  if (result)
  {
    v25 = result;
    [result lineHeight];
    v27 = v26;

    if (*(v23 + 16) == v27)
    {
      *(v23 + 16) = v27;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v29 - 2) = v23;
      *(&v29 - 1) = v27;
      v30 = v23;
      sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics);
      sub_213F4CB70();
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_213E3E950(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UILabelView(0);
  v5 = *(v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9668, &qword_213F58660);
  sub_213F4ED40();
  result = [a1 font];
  if (result)
  {
    v7 = result;
    [result lineHeight];
    v9 = v8;

    if (*(v11 + 16) == v9)
    {
      *(v11 + 16) = v9;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics);
      sub_213F4CB70();
    }

    return [a1 setPreferredMaxLayoutWidth_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E3EB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E42258(&qword_27C8F9688, type metadata accessor for UILabelView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213E3EBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E42258(&qword_27C8F9688, type metadata accessor for UILabelView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213E3EC38()
{
  sub_213E42258(&qword_27C8F9688, type metadata accessor for UILabelView);
  sub_213F4DB60();
  __break(1u);
}

uint64_t FadingLabelViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FadingLabelViewModel.id.setter(uint64_t a1)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

int *FadingLabelViewModel.init(text:symbols:lineLimit:showMore:suffixLabel:font:color:textAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, char a11)
{
  sub_213F4CB30();
  result = type metadata accessor for FadingLabelViewModel(0);
  v19 = (a8 + result[5]);
  *v19 = a1;
  v19[1] = a2;
  *(a8 + result[6]) = a3;
  *(a8 + result[7]) = a4;
  v20 = (a8 + result[8]);
  *v20 = a5;
  v20[1] = a6;
  *(a8 + result[9]) = a7;
  *(a8 + result[10]) = a9;
  v21 = a8 + result[11];
  *v21 = a10;
  *(v21 + 8) = a11 & 1;
  return result;
}

uint64_t sub_213E3EE68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_213DE3164(v2, &v17 - v11, &qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213F4D3B0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_213F4F520();
    v16 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t FadingLabelView.init(model:tapHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for FadingLabelView(0);
  v9 = (a4 + v8[7]);
  v10 = type metadata accessor for LabelMetrics(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  *(swift_allocObject() + 16) = 0;
  sub_213F4CBB0();
  sub_213F4EA90();
  *v9 = v19;
  v13 = a4 + v8[8];
  type metadata accessor for CGSize(0);
  sub_213F4EA90();
  *v13 = v19;
  *(v13 + 2) = v20;
  v14 = a4 + v8[9];
  sub_213F4EA90();
  *v14 = v19;
  *(v14 + 2) = v20;
  v15 = a4 + v8[10];
  sub_213F4EA90();
  *v15 = v19;
  *(v15 + 2) = v20;
  v16 = a4 + v8[11];
  sub_213F4EA90();
  *v16 = v19;
  *(v16 + 1) = *(&v19 + 1);
  result = sub_213E4266C(a1, a4 + v8[5], type metadata accessor for FadingLabelViewModel);
  v18 = (a4 + v8[6]);
  *v18 = a2;
  v18[1] = a3;
  return result;
}

void sub_213E3F23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9770, &unk_213F5C6C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v66 - v7;
  v9 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v10 = sub_213F4F220();
  v11 = [v9 initWithString_];

  v12 = *MEMORY[0x277D740C0];
  v74 = a4;
  v68 = a4;

  v13 = sub_213F4F850();
  v14 = v11;
  v15 = &off_278174000;
  [v14 addAttribute:v12 value:v13 range:{0, objc_msgSend(v14, sel_length)}];
  swift_unknownObjectRelease();
  v16 = &off_278174000;
  if ([v14 length] >= 1)
  {
    v17 = 0;
    v70 = 0;
    v67 = v71 + 32;
LABEL_3:
    v69 = (v67 + 16 * v70);
    while (1)
    {
      if (v70 >= *(v71 + 16))
      {
        goto LABEL_12;
      }

      v18 = [v14 *(v16 + 445)];
      v19 = sub_213F4F250();
      v21 = v20;

      v74 = v19;
      v75 = v21;
      v72 = 16421;
      v73 = 0xE200000000000000;
      if (__OFSUB__([v14 v15[443]], v17))
      {
        break;
      }

      v22 = v16;
      v23 = [v14 *(v16 + 445)];
      sub_213F4F250();

      sub_213F4F500();

      v24 = sub_213F4CB60();
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
      sub_213DBC9EC();
      v25 = sub_213F4F6D0();
      v27 = v26;
      v29 = v28;
      sub_213DE36FC(v8, &qword_27C8F9770, &unk_213F5C6C0);

      if ((v29 & 1) == 0)
      {
        v30 = *v69;
        v31 = v69[1];

        v32 = sub_213F4F220();

        v33 = [objc_opt_self() systemImageNamed_];

        if (v33)
        {
          sub_213E15130(0, &qword_27C8F9680, 0x277D75348);

          v34 = sub_213F4F5F0();
          v35 = [v33 imageWithTintColor:v34 renderingMode:1];

          v15 = &off_278174000;
          if (v35)
          {
            v36 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
            [v36 setImage_];
            v37 = [objc_opt_self() attributedStringWithAttachment_];
            v74 = v25;
            v75 = v27;
            v38 = [v14 v22 + 376];
            v39 = sub_213F4F250();
            v41 = v40;

            v72 = v39;
            v73 = v41;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9778, &unk_213F58930);
            sub_213DE3AE4(&qword_27C8F9780, &qword_27C8F9778, &unk_213F58930);
            v42 = sub_213F4F6A0();
            [v14 replaceCharactersInRange:v42 withAttributedString:{v43, v37}];
            v44 = [v37 length];

            v17 = v44 + v42;
            if (!__OFADD__(v42, v44))
            {
              ++v70;
              v15 = &off_278174000;
              v16 = v22;
              if (v17 < [v14 length])
              {
                goto LABEL_3;
              }

              goto LABEL_12;
            }

LABEL_16:
            __break(1u);
            return;
          }
        }
      }

      ++v17;
      v16 = v22;
      if (v17 >= [v14 v15[443]])
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_12:
  while (1)
  {
    v45 = [v14 *(v16 + 445)];
    v46 = sub_213F4F250();
    v48 = v47;

    v74 = v46;
    v75 = v48;
    v72 = 16421;
    v73 = 0xE200000000000000;
    [v14 length];
    v49 = [v14 *(v16 + 445)];
    sub_213F4F250();

    sub_213F4F500();

    v50 = sub_213F4CB60();
    (*(*(v50 - 8) + 56))(v8, 1, 1, v50);
    sub_213DBC9EC();
    v51 = sub_213F4F6D0();
    v53 = v52;
    v55 = v54;
    sub_213DE36FC(v8, &qword_27C8F9770, &unk_213F5C6C0);

    if (v55)
    {
      break;
    }

    v74 = v51;
    v75 = v53;
    v56 = [v14 *(v16 + 445)];
    v57 = sub_213F4F250();
    v59 = v58;

    v72 = v57;
    v73 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9778, &unk_213F58930);
    sub_213DE3AE4(&qword_27C8F9780, &qword_27C8F9778, &unk_213F58930);
    v60 = sub_213F4F6A0();
    v62 = v61;
    v63 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v64 = sub_213F4F220();
    v65 = [v63 initWithString_];

    [v14 replaceCharactersInRange:v60 withAttributedString:{v62, v65}];
  }
}

uint64_t sub_213E3F9B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FadingLabelView(0);
  v5 = (v4 - 8);
  v61 = *(v4 - 8);
  v66 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + v5[7];
  v8 = type metadata accessor for FadingLabelViewModel(0);
  v9 = v8[6];
  v10 = (v7 + v8[5]);
  v11 = *v10;
  v64 = v10[1];
  v65 = v11;
  v63 = *(v7 + v9);
  v12 = *(v7 + v8[10]);
  sub_213E3F23C(v11, v64, v63, v12);
  v14 = v13;
  v52 = *(v7 + v8[7]);
  v15 = v7 + v8[11];
  v54 = *v15;
  v16 = v54;
  v17 = *(v15 + 8);
  v53 = v17;
  v18 = (v1 + v5[12]);
  v19 = *v18;
  v20 = v18[1];
  v62 = v18[2];
  v68 = v19;
  v69 = v20;
  v70 = v62;

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  v21 = v67;
  v22 = (v1 + v5[9]);
  v49 = v1;
  v23 = *v22;
  v58 = v22[1];
  v59 = v23;
  v68 = v23;
  v69 = v58;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9740, &qword_213F588C8);
  sub_213F4EAA0();
  v24 = *(v7 + v8[9]);
  *a1 = swift_getKeyPath();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for UILabelView(0);
  *(a1 + v25[5]) = v14;
  *(a1 + v25[6]) = v52;
  *(a1 + v25[7]) = v12;
  v26 = a1 + v25[8];
  *v26 = v16;
  v26[8] = v17;
  *(a1 + v25[9]) = v21;
  v27 = v25[10];
  v52 = type metadata accessor for LabelMetrics(0);
  v51 = sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics);
  v28 = v24;

  v29 = v28;
  v50 = v29;
  sub_213F4ED60();
  *(a1 + v25[11]) = v29;
  KeyPath = swift_getKeyPath();
  v31 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9748, &qword_213F58900) + 36);
  *v31 = KeyPath;
  v31[8] = 0;
  v32 = v57;
  sub_213E42608(v2, v57);
  v33 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v34 = swift_allocObject();
  sub_213E4266C(v32, v34 + v33, type metadata accessor for FadingLabelView);
  v35 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9750, &qword_213F58908) + 36));
  *v35 = sub_213E42A54;
  v35[1] = 0;
  v35[2] = sub_213E42988;
  v35[3] = v34;
  sub_213E3F23C(v65, v64, v63, v12);
  v37 = v36;
  v68 = v19;
  v69 = v20;
  v70 = v62;
  sub_213F4EAA0();
  v38 = v67;
  v68 = v59;
  v69 = v58;
  sub_213F4EAA0();
  v39 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9758, &qword_213F58910) + 36));
  *v39 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v39 + v25[5]) = v37;
  *(v39 + v25[6]) = 0;
  *(v39 + v25[7]) = v12;
  v40 = v39 + v25[8];
  *v40 = v54;
  v40[8] = v53;
  *(v39 + v25[9]) = v38;
  v41 = v39 + v25[10];
  sub_213F4ED60();
  *(v39 + v25[11]) = v50;
  sub_213E42608(v49, v32);
  v42 = swift_allocObject();
  sub_213E4266C(v32, v42 + v33, type metadata accessor for FadingLabelView);
  v43 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9760, &qword_213F58918) + 36));
  *v43 = sub_213E42A54;
  v43[1] = 0;
  v43[2] = sub_213E42A24;
  v43[3] = v42;
  v44 = sub_213F4EEE0();
  v46 = v45;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9768, &unk_213F58920);
  v48 = (v39 + *(result + 36));
  *v48 = v44;
  v48[1] = v46;
  return result;
}

uint64_t sub_213E3FF18(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = type metadata accessor for FadingLabelView(0);
  v6 = (a2 + v5[10]);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAB0();
  sub_213F4EAA0();
  v10 = (a2 + v5[9]);
  v13 = *v10;
  v14 = *(v10 + 2);
  sub_213F4EAA0();
  v11 = a2 + v5[11];
  LOBYTE(v13) = *v11;
  *(&v13 + 1) = *(v11 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213E4004C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = type metadata accessor for FadingLabelView(0);
  v6 = (a2 + v5[9]);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAB0();
  v10 = (a2 + v5[10]);
  v13 = *v10;
  v14 = *(v10 + 2);
  sub_213F4EAA0();
  sub_213F4EAA0();
  v11 = a2 + v5[11];
  LOBYTE(v13) = *v11;
  *(&v13 + 1) = *(v11 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213E40180(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - v4;
  v6 = sub_213F4E230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 fontDescriptor];
  v12 = [v11 objectForKey_];

  if (v12)
  {
    sub_213F4F6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (!*(&v23 + 1))
  {
    sub_213DE36FC(v24, &unk_27C8F8BC0, &qword_213F563F0);
    goto LABEL_8;
  }

  type metadata accessor for TextStyle(0);
  if (!swift_dynamicCast())
  {
LABEL_8:
    v13 = *MEMORY[0x277D76918];
    goto LABEL_9;
  }

  v13 = v21[1];
LABEL_9:
  v14 = v13;
  sub_213E3DA3C(v14, v10);
  v15 = sub_213E3E0C8();
  sub_213E3D964(v15);
  v16 = *MEMORY[0x277CE0990];
  v17 = sub_213F4E0F0();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v5, v16, v17);
  (*(v18 + 56))(v5, 0, 1, v17);
  sub_213F4E1A0();
  sub_213DE36FC(v5, &qword_27C8F7668, &qword_213F52190);
  v19 = sub_213F4E1D0();

  (*(v7 + 8))(v10, v6);
  return v19;
}

uint64_t FadingLabelView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_213F4DA60();
  v4 = sub_213F4D860();
  *a1 = v3;
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9658, &qword_213F58558);
  return sub_213E404C0(v1, a1 + *(v5 + 44));
}

uint64_t sub_213E404C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_213F4DCA0();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v3);
  v62 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9690, &qword_213F58798);
  v6 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9698, &qword_213F587A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v70 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F96A0, &qword_213F587A8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v68 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  v67 = a1;
  sub_213E3F9B0((&v59 - v18));
  v20 = sub_213F4EEE0();
  v66 = v21;
  v65 = sub_213F4DA40();
  LOBYTE(v73[0]) = 0;
  sub_213E40CD8(a1, &v93);
  v87 = *&v95[160];
  v88 = *&v95[176];
  v83 = *&v95[96];
  v84 = *&v95[112];
  v85 = *&v95[128];
  v86 = *&v95[144];
  v79 = *&v95[32];
  v80 = *&v95[48];
  v81 = *&v95[64];
  v82 = *&v95[80];
  v75 = v93;
  v76 = v94;
  v77 = *v95;
  v78 = *&v95[16];
  v90[12] = *&v95[160];
  v90[13] = *&v95[176];
  v90[8] = *&v95[96];
  v90[9] = *&v95[112];
  v90[10] = *&v95[128];
  v90[11] = *&v95[144];
  v90[4] = *&v95[32];
  v90[5] = *&v95[48];
  v90[6] = *&v95[64];
  v90[7] = *&v95[80];
  v90[0] = v93;
  v90[1] = v94;
  v89 = *&v95[192];
  v91 = *&v95[192];
  v90[2] = *v95;
  v90[3] = *&v95[16];
  sub_213DE3164(&v75, v92, &qword_27C8F96A8, &qword_213F587B0);
  sub_213DE36FC(v90, &qword_27C8F96A8, &qword_213F587B0);
  *(&v74[11] + 7) = v86;
  *(&v74[12] + 7) = v87;
  *(&v74[13] + 7) = v88;
  *(&v74[14] + 7) = v89;
  *(&v74[7] + 7) = v82;
  *(&v74[8] + 7) = v83;
  *(&v74[9] + 7) = v84;
  *(&v74[10] + 7) = v85;
  *(&v74[3] + 7) = v78;
  *(&v74[4] + 7) = v79;
  *(&v74[5] + 7) = v80;
  *(&v74[6] + 7) = v81;
  *(v74 + 7) = v75;
  *(&v74[1] + 7) = v76;
  *(&v74[2] + 7) = v77;
  *(&v92[13] + 1) = v74[11];
  *(&v92[14] + 1) = v74[12];
  *(&v92[15] + 1) = v74[13];
  v92[16] = *(&v74[13] + 15);
  *(&v92[9] + 1) = v74[7];
  *(&v92[10] + 1) = v74[8];
  *(&v92[11] + 1) = v74[9];
  *(&v92[12] + 1) = v74[10];
  *(&v92[5] + 1) = v74[3];
  *(&v92[6] + 1) = v74[4];
  *(&v92[7] + 1) = v74[5];
  *(&v92[8] + 1) = v74[6];
  *(&v92[2] + 1) = v74[0];
  *(&v92[3] + 1) = v74[1];
  v22 = v73[0];
  v23 = v20;
  *&v92[0] = v20;
  v25 = v65;
  v24 = v66;
  *(&v92[0] + 1) = v66;
  v92[1] = v65;
  LOBYTE(v92[2]) = v73[0];
  *(&v92[4] + 1) = v74[2];
  v26 = *(v14 + 44);
  v27 = v19;
  memcpy(&v19[v26], v92, 0x110uLL);
  *&v95[177] = v74[11];
  *&v95[193] = v74[12];
  v96[0] = v74[13];
  *(v96 + 15) = *(&v74[13] + 15);
  *&v95[113] = v74[7];
  *&v95[129] = v74[8];
  *&v95[145] = v74[9];
  *&v95[161] = v74[10];
  *&v95[49] = v74[3];
  *&v95[65] = v74[4];
  *&v95[81] = v74[5];
  *&v95[97] = v74[6];
  *&v95[1] = v74[0];
  *&v95[17] = v74[1];
  *&v93 = v23;
  *(&v93 + 1) = v24;
  v94 = v25;
  v28 = v67;
  v95[0] = v22;
  *&v95[33] = v74[2];
  sub_213DE3164(v92, v73, &qword_27C8F96B0, &qword_213F587B8);
  sub_213DE36FC(&v93, &qword_27C8F96B0, &qword_213F587B8);
  v29 = type metadata accessor for FadingLabelView(0);
  v30 = v28 + v29[5];
  v31 = (v30 + *(type metadata accessor for FadingLabelViewModel(0) + 32));
  v32 = v31[1];
  if (!v32)
  {
    goto LABEL_5;
  }

  v33 = *v31;
  v34 = (v28 + v29[11]);
  v35 = *v34;
  v36 = *(v34 + 1);
  LOBYTE(v73[0]) = v35;
  v73[1] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v72 != 1)
  {
    goto LABEL_5;
  }

  v37 = (v28 + v29[6]);
  v38 = *v37;
  if (*v37)
  {
    v39 = v37[1];
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    MEMORY[0x28223BE20](v40);
    *(&v59 - 4) = v28;
    *(&v59 - 3) = v33;
    *(&v59 - 2) = v32;
    sub_213DD74C4(v38);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F96C8, &qword_213F587D8);
    sub_213E422BC();
    v41 = v19;
    v42 = v61;
    sub_213F4EB00();
    v43 = [objc_opt_self() labelColor];
    v44 = sub_213F4E870();
    KeyPath = swift_getKeyPath();
    v73[0] = v44;
    v46 = sub_213F4D0D0();
    v47 = &v42[*(v60 + 36)];
    *v47 = KeyPath;
    v47[1] = v46;
    v48 = v62;
    sub_213F4DC90();
    sub_213E42524();
    sub_213E42258(&qword_281182998, MEMORY[0x277CDE0B8]);
    v49 = v69;
    v50 = v64;
    sub_213F4E3B0();
    sub_213DD7558(v38);
    (*(v63 + 8))(v48, v50);
    v51 = v42;
    v27 = v41;
    sub_213DE36FC(v51, &qword_27C8F9690, &qword_213F58798);
    v52 = 0;
  }

  else
  {
LABEL_5:
    v52 = 1;
    v49 = v69;
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F96B8, &qword_213F587C0);
  (*(*(v53 - 8) + 56))(v49, v52, 1, v53);
  v54 = v68;
  sub_213DE3164(v27, v68, &qword_27C8F96A0, &qword_213F587A8);
  v55 = v70;
  sub_213DC5D00(v49, v70);
  v56 = v71;
  sub_213DE3164(v54, v71, &qword_27C8F96A0, &qword_213F587A8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F96C0, &unk_213F587C8);
  sub_213DC5D00(v55, v56 + *(v57 + 48));
  sub_213DE36FC(v49, &qword_27C8F9698, &qword_213F587A0);
  sub_213DE36FC(v27, &qword_27C8F96A0, &qword_213F587A8);
  sub_213DE36FC(v55, &qword_27C8F9698, &qword_213F587A0);
  return sub_213DE36FC(v54, &qword_27C8F96A0, &qword_213F587A8);
}

uint64_t sub_213E40CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4E8F0();
  v5 = type metadata accessor for FadingLabelView(0);
  v6 = a1 + *(v5 + 44);
  v7 = *v6;
  v8 = *(v6 + 8);
  LOBYTE(v58) = v7;
  *(&v58 + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v53 == 1)
  {
    v27 = sub_213F4D8A0();
    sub_213E4110C(a1, &v58);
    v35 = v64;
    v36 = v65;
    v37 = v66;
    v31 = v60;
    v32 = v61;
    v33 = v62;
    v34 = v63;
    v29 = v58;
    v30 = v59;
    v45 = v64;
    v46 = v65;
    v47 = v66;
    v41 = v60;
    v42 = v61;
    v43 = v62;
    v44 = v63;
    v38 = v67;
    *&v48 = v67;
    v39 = v58;
    v40 = v59;
    sub_213DE3164(&v29, &v53, &qword_27C8F9738, &qword_213F588C0);
    sub_213DE36FC(&v39, &qword_27C8F9738, &qword_213F588C0);
    *&v28[23] = v30;
    *&v28[87] = v34;
    *&v28[71] = v33;
    *&v28[55] = v32;
    *&v28[39] = v31;
    *&v28[135] = v37;
    *&v28[119] = v36;
    *&v28[103] = v35;
    *&v28[151] = v38;
    *&v28[7] = v29;
    v9 = (a1 + *(v5 + 28));
    v11 = *v9;
    v10 = v9[1];
    *&v58 = v11;
    *(&v58 + 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9740, &qword_213F588C8);
    sub_213F4EAA0();
    v12 = v53;
    swift_getKeyPath();
    *&v58 = v12;
    sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics);
    sub_213F4CB80();

    v13 = *(v12 + 16);

    sub_213F4EEE0();
    sub_213F4D0C0();
    *(&v54[6] + 1) = *&v28[96];
    *(&v54[7] + 1) = *&v28[112];
    *(&v54[8] + 1) = *&v28[128];
    v54[9] = *&v28[143];
    *(&v54[2] + 1) = *&v28[32];
    *(&v54[3] + 1) = *&v28[48];
    *(&v54[4] + 1) = *&v28[64];
    *(&v54[5] + 1) = *&v28[80];
    *(v54 + 1) = *v28;
    v53 = v27;
    LOBYTE(v54[0]) = 0;
    *(&v54[1] + 1) = *&v28[16];
    nullsub_1(&v53);
    v68 = v54[9];
    v69 = v55;
    v70 = v56;
    v71 = v57;
    v64 = v54[5];
    v65 = v54[6];
    v66 = v54[7];
    v67 = v54[8];
    v60 = v54[1];
    v61 = v54[2];
    v62 = v54[3];
    v63 = v54[4];
    v58 = v53;
    v59 = v54[0];
  }

  else
  {
    sub_213E42748(&v58);
  }

  v14 = v67;
  v54[9] = v68;
  v55 = v69;
  v15 = v69;
  v16 = v70;
  v56 = v70;
  v57 = v71;
  v17 = v64;
  v18 = v63;
  v54[5] = v64;
  v54[6] = v65;
  v19 = v65;
  v20 = v66;
  v54[7] = v66;
  v54[8] = v67;
  v21 = v60;
  v22 = v59;
  v54[1] = v60;
  v54[2] = v61;
  v23 = v61;
  v24 = v62;
  v54[3] = v62;
  v54[4] = v63;
  v25 = v58;
  v53 = v58;
  v54[0] = v59;
  v49 = v68;
  v50 = v69;
  v51 = v70;
  v52 = v71;
  v45 = v64;
  v46 = v65;
  v47 = v66;
  v48 = v67;
  v41 = v60;
  v42 = v61;
  v43 = v62;
  v44 = v63;
  v39 = v58;
  v40 = v59;
  *(a2 + 168) = v68;
  *(a2 + 184) = v15;
  *(a2 + 200) = v16;
  *(a2 + 216) = v71;
  *(a2 + 104) = v17;
  *(a2 + 120) = v19;
  *(a2 + 136) = v20;
  *(a2 + 152) = v14;
  *(a2 + 40) = v21;
  *(a2 + 56) = v23;
  *(a2 + 72) = v24;
  *(a2 + 88) = v18;
  *(a2 + 8) = v25;
  *a2 = v4;
  *(a2 + 24) = v22;

  sub_213DE3164(&v39, &v29, &qword_27C8F9730, &qword_213F588B8);
  sub_213DE36FC(&v53, &qword_27C8F9730, &qword_213F588B8);
}

uint64_t sub_213E4110C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D3B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v37[-v10];
  v12 = sub_213F4E8F0();
  sub_213E3EE68(v11);
  (*(v5 + 104))(v9, *MEMORY[0x277CDFA90], v4);
  v13 = sub_213F4D3A0();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v14(v11, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_213F51DE0;
  if (v13)
  {
    *(v15 + 32) = sub_213F4E8D0();
    v16 = sub_213F4E8F0();
  }

  else
  {
    *(v15 + 32) = sub_213F4E8F0();
    v16 = sub_213F4E8D0();
  }

  *(v15 + 40) = v16;
  sub_213F4F050();
  sub_213F4F060();
  MEMORY[0x2160521D0](v15);
  sub_213F4D2C0();
  v17 = type metadata accessor for FadingLabelView(0);
  v18 = (a1 + v17[7]);
  v20 = *v18;
  v19 = v18[1];
  *&v40 = v20;
  *(&v40 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9740, &qword_213F588C8);
  sub_213F4EAA0();
  v21 = *&v38[0];
  swift_getKeyPath();
  *&v40 = v21;
  sub_213E42258(&qword_27C8F9678, type metadata accessor for LabelMetrics);
  sub_213F4CB80();

  v22 = *(v21 + 16);

  sub_213F4EEE0();
  sub_213F4D0C0();
  v46 = v52;
  v47 = v53;
  *&v48 = v54;
  v23 = sub_213F4E8D0();
  v24 = a1 + v17[5];
  if (*(v24 + *(type metadata accessor for FadingLabelViewModel(0) + 32) + 8))
  {
    v25 = (a1 + v17[8]);
    v26 = *(v25 + 2);
    v40 = *v25;
    *&v41 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
    sub_213F4EAA0();
  }

  sub_213F4EEE0();
  sub_213F4D0C0();
  v27 = v48;
  v28 = v49;
  v38[2] = v48;
  v38[3] = v49;
  v29 = v50;
  v38[4] = v50;
  v30 = v46;
  v38[0] = v46;
  v38[1] = v47;
  *(a2 + 24) = v47;
  *(a2 + 8) = v30;
  v31 = v55;
  v32 = v56;
  v33 = v57;
  v34 = v51;
  v39 = v51;
  v37[8] = v56;
  v37[0] = v58;
  v35 = v58;
  *a2 = v12;
  *(a2 + 72) = v29;
  *(a2 + 56) = v28;
  *(a2 + 40) = v27;
  *(a2 + 88) = v34;
  *(a2 + 96) = v23;
  *(a2 + 104) = v31;
  *(a2 + 112) = v32;
  *(a2 + 120) = v33;
  *(a2 + 128) = v35;
  *(a2 + 136) = v59;

  sub_213DE3164(v38, &v40, &qword_27C8F94E8, &unk_213F65730);
  v42 = v48;
  v43 = v49;
  v44 = v50;
  v45 = v51;
  v40 = v46;
  v41 = v47;
  sub_213DE36FC(&v40, &qword_27C8F94E8, &unk_213F65730);
}

uint64_t sub_213E4157C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a1;
  v47 = a4;
  v7 = type metadata accessor for FadingLabelView(0);
  v8 = v7 - 8;
  v50 = *(v7 - 8);
  v49 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F96E8, &qword_213F587E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9718, &qword_213F58840);
  v46 = *(v44 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v16 = &v41 - v15;
  v17 = a1 + *(v8 + 28);
  v18 = type metadata accessor for FadingLabelViewModel(0);
  v43 = sub_213E40180(*(v17 + *(v18 + 36)));
  v51 = a2;
  v52 = a3;
  sub_213DBC9EC();

  v19 = sub_213F4E310();
  v41 = v20;
  v42 = v21;
  v23 = v22;
  v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D10, &qword_213F587F0) + 36)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D28, &qword_213F5CC80) + 28);
  v26 = *MEMORY[0x277CE0B48];
  v27 = sub_213F4E2D0();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v24 + v25, v26, v27);
  (*(v28 + 56))(v24 + v25, 0, 1, v27);
  *v24 = swift_getKeyPath();
  v29 = v41;
  *v13 = v19;
  *(v13 + 1) = v29;
  v13[16] = v23 & 1;
  *(v13 + 3) = v42;
  KeyPath = swift_getKeyPath();
  v31 = &v13[*(v10 + 36)];
  v32 = v43;
  *v31 = KeyPath;
  v31[1] = v32;

  sub_213F4E180();
  v33 = sub_213E4246C();
  sub_213F4E370();
  sub_213DE36FC(v13, &qword_27C8F96E8, &qword_213F587E8);
  v51 = 0x7478655465726F4DLL;
  v52 = 0xE800000000000000;
  MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
  v51 = v10;
  v52 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v47;
  v35 = v44;
  sub_213F4E6D0();

  (*(v46 + 8))(v16, v35);
  v36 = v48;
  sub_213E42608(v45, v48);
  v37 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v38 = swift_allocObject();
  sub_213E4266C(v36, v38 + v37, type metadata accessor for FadingLabelView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F96C8, &qword_213F587D8);
  v40 = (v34 + *(result + 36));
  *v40 = sub_213E42A54;
  v40[1] = 0;
  v40[2] = sub_213E426D4;
  v40[3] = v38;
  return result;
}

uint64_t sub_213E41A00(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for FadingLabelView(0) + 32));
  v6 = *v4;
  v7 = *(v4 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  return sub_213F4EAB0();
}

uint64_t sub_213E41A7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_213F4DA60();
  v4 = sub_213F4D860();
  *a1 = v3;
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9658, &qword_213F58558);
  return sub_213E404C0(v1, a1 + *(v5 + 44));
}

uint64_t sub_213E41B84()
{
  result = sub_213F4CBC0();
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

void sub_213E41C4C()
{
  sub_213F4CB40();
  if (v0 <= 0x3F)
  {
    sub_213E41FDC(319, &qword_281182498, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_213E41FDC(319, &qword_281182500, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_213E15130(319, &qword_281182338, 0x277D74300);
        if (v3 <= 0x3F)
        {
          sub_213E41F78(319, &unk_281182408, type metadata accessor for NSTextAlignment, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213E41DD8()
{
  sub_213E41F78(319, &qword_281183510, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FadingLabelViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_213E0C0F8();
      if (v2 <= 0x3F)
      {
        sub_213E41F78(319, &qword_2811827D8, type metadata accessor for LabelMetrics, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_213E41F78(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_213E41FDC(319, &qword_2811827B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
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

void sub_213E41F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213E41FDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_213E42074()
{
  sub_213E41F78(319, &qword_281183510, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213E15130(319, &qword_2811823E0, 0x277CCA898);
    if (v1 <= 0x3F)
    {
      sub_213E41F78(319, &unk_281182408, type metadata accessor for NSTextAlignment, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_213E41F78(319, &qword_2811825F0, type metadata accessor for LabelMetrics, MEMORY[0x277CE12F8]);
        if (v3 <= 0x3F)
        {
          sub_213E15130(319, &qword_281182338, 0x277D74300);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_213E42258(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_213E422A0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

unint64_t sub_213E422BC()
{
  result = qword_27C8F96D0;
  if (!qword_27C8F96D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96C8, &qword_213F587D8);
    sub_213E42374();
    sub_213DE3AE4(&qword_281182910, &qword_27C8F96F8, &qword_213F587F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F96D0);
  }

  return result;
}

unint64_t sub_213E42374()
{
  result = qword_27C8F96D8;
  if (!qword_27C8F96D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96E0, &qword_213F587E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96E8, &qword_213F587E8);
    sub_213E4246C();
    swift_getOpaqueTypeConformance2();
    sub_213E42258(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F96D8);
  }

  return result;
}

unint64_t sub_213E4246C()
{
  result = qword_27C8F96F0;
  if (!qword_27C8F96F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96E8, &qword_213F587E8);
    sub_213DEEABC();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F96F0);
  }

  return result;
}

unint64_t sub_213E42524()
{
  result = qword_27C8F9700;
  if (!qword_27C8F9700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9690, &qword_213F58798);
    sub_213DE3AE4(&qword_27C8F9708, &qword_27C8F9710, &unk_213F58830);
    sub_213DE3AE4(&qword_281182890, &qword_27C8F9368, &unk_213F59F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9700);
  }

  return result;
}

uint64_t sub_213E42608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FadingLabelView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213E4266C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E426EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_213E42748(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t objectdestroy_43Tm()
{
  v1 = type metadata accessor for FadingLabelView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D3B0();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v4 + v1[5];
  v8 = sub_213F4CB40();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for FadingLabelViewModel(0);
  v10 = *&v7[v9[5] + 8];

  v11 = *&v7[v9[6]];

  v12 = *&v7[v9[8] + 8];

  v13 = *&v7[v9[10]];

  v14 = (v4 + v1[6]);
  if (*v14)
  {
    v15 = v14[1];
  }

  v16 = (v4 + v1[7]);
  v17 = *v16;

  v18 = v16[1];

  v19 = *(v4 + v1[8] + 16);

  v20 = *(v4 + v1[9] + 16);

  v21 = *(v4 + v1[10] + 16);

  v22 = *(v4 + v1[11] + 8);

  return swift_deallocObject();
}

uint64_t sub_213E429A0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FadingLabelView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t FilterBarOption.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FilterBarOption.displayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t FilterBarOption.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t FilterBarOption.SubOption.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FilterBarOption.SubOption.isSelected.setter(char a1)
{
  result = type metadata accessor for FilterBarOption.SubOption(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t FilterBarOption.SubOption.init(id:displayImage:displayName:isSelected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = type metadata accessor for FilterBarOption.SubOption(0);
  v11 = *(v10 + 24);
  v12 = sub_213F4CA10();
  result = (*(*(v12 - 8) + 32))(&a7[v11], a5, v12);
  a7[*(v10 + 28)] = a6;
  return result;
}

uint64_t FilterBarOption.subOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

void __swiftcall FilterBarOption.init(id:systemImageName:displayName:accessibilityIdentifier:accessibilityLabel:showDropdown:isSelected:subOptions:)(MapsDesign::FilterBarOption *__return_ptr retstr, Swift::String id, Swift::String_optional systemImageName, Swift::String_optional displayName, Swift::String_optional accessibilityIdentifier, Swift::String_optional accessibilityLabel, Swift::Bool showDropdown, Swift::Bool isSelected, Swift::OpaquePointer subOptions)
{
  object = accessibilityIdentifier.value._object;
  countAndFlagsBits = accessibilityIdentifier.value._countAndFlagsBits;
  v11 = displayName.value._object;
  v12 = displayName.value._countAndFlagsBits;
  v13 = systemImageName.value._countAndFlagsBits;
  v14 = id._object;
  v15 = id._countAndFlagsBits;
  rawValue = subOptions._rawValue;
  v18 = accessibilityLabel.value._object;
  if (accessibilityLabel.value._object)
  {
    v19 = accessibilityLabel.value._countAndFlagsBits;
  }

  else
  {
    v22 = systemImageName.value._object;

    systemImageName.value._object = v22;
    rawValue = subOptions._rawValue;
    v19 = v12;
    v18 = v11;
  }

  v20 = 0xEF6E6F6974704F72;
  if (object)
  {
    v20 = object;
  }

  retstr->id._countAndFlagsBits = v15;
  retstr->id._object = v14;
  v21 = 0x61427265746C6946;
  if (object)
  {
    v21 = countAndFlagsBits;
  }

  retstr->systemImageName.value._countAndFlagsBits = v13;
  retstr->systemImageName.value._object = systemImageName.value._object;
  retstr->displayName.value._countAndFlagsBits = v12;
  retstr->displayName.value._object = v11;
  retstr->showDropdown = showDropdown;
  retstr->isSelected = isSelected;
  retstr->accessibilityIdentifier.value._countAndFlagsBits = v21;
  retstr->accessibilityIdentifier.value._object = v20;
  retstr->accessibilityLabel.value._countAndFlagsBits = v19;
  retstr->accessibilityLabel.value._object = v18;
  retstr->subOptions._rawValue = rawValue;
}

MapsDesign::FilterBarViewModel __swiftcall FilterBarViewModel.init(options:accessibilityIdentifier:)(Swift::OpaquePointer options, Swift::String_optional accessibilityIdentifier)
{
  *v2 = options;
  *(v2 + 8) = accessibilityIdentifier;
  result.accessibilityIdentifier = accessibilityIdentifier;
  result.options = options;
  return result;
}

void sub_213E42E0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v51 = sub_213F4CA10();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97C8, &qword_213F58D20);
  v9 = *(*(v49 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v49);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v13;
  v14 = *(a2 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v40 = a1;
    v54 = MEMORY[0x277D84F90];
    sub_213F4F780();
    v46 = type metadata accessor for FilterBarOption.SubOption(0);
    v47 = a2;
    v16 = *(v46 - 8);
    v17 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v45 = sub_213E15130(0, &qword_281182308, 0x277D750C8);
    v18 = sub_213E15130(0, &qword_2811823E0, 0x277CCA898);
    v19 = 0;
    v43 = "12LabelMetrics";
    v44 = v18;
    v42 = *(v16 + 72);
    v41 = (v6 + 16);
    do
    {
      v35 = v48;
      v34 = v49;
      v36 = *(v49 + 48);
      sub_213E45C70(v17, &v48[v36], type metadata accessor for FilterBarOption.SubOption);
      *v12 = v19;
      v37 = v12 + *(v34 + 48);
      sub_213E45CD8(&v35[v36], v37, type metadata accessor for FilterBarOption.SubOption);
      if (*(v37 + 24))
      {
        v20 = *(v37 + 16);
        v21 = sub_213F4F220();
        v22 = [objc_opt_self() _systemImageNamed_];
      }

      else
      {
        v22 = 0;
      }

      v23 = swift_allocObject();
      v24 = v52;
      v25 = v53;
      v23[2] = v47;
      v23[3] = v24;
      v23[4] = v25;
      v23[5] = v19;
      v26 = v22;

      v27 = sub_213F4F630();
      v28 = v46;
      (*v41)(v50, v37 + *(v46 + 24), v51);
      v29 = v27;
      v30 = sub_213F4F5A0();
      [v29 setAttributedTitle_];

      ++v19;
      [v29 setState_];
      v31 = v29;
      v32 = sub_213F4F220();
      [v31 setAccessibilityIdentifier_];

      sub_213DE36FC(v12, &qword_27C8F97C8, &qword_213F58D20);
      sub_213F4F760();
      v33 = *(v54 + 16);
      sub_213F4F790();
      sub_213F4F7A0();
      sub_213F4F770();
      v17 += v42;
    }

    while (v14 != v19);
    v15 = v54;
    a1 = v40;
  }

  if (v15 >> 62)
  {
    sub_213E15130(0, &unk_281182428, 0x277D75720);

    sub_213F4F7D0();
  }

  else
  {

    sub_213F4F840();
    sub_213E15130(0, &unk_281182428, 0x277D75720);
  }

  sub_213E15130(0, &qword_281182330, 0x277D75710);
  v38 = sub_213F4F5D0();
  [a1 setMenu_];
}

id sub_213E43348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v6 = sub_213F4F650();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_213F4F680();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  sub_213F4F670();
  (*(v7 + 104))(v10, *MEMORY[0x277D74FD8], v6);
  sub_213F4F660();
  v19 = [objc_opt_self() clearColor];
  v20 = sub_213F4F640();
  sub_213F4CCF0();
  v20(v27, 0);
  sub_213E15130(0, &qword_281182300, 0x277D75220);
  (*(v12 + 16))(v16, v18, v11);
  v21 = sub_213F4F690();
  v22 = sub_213F4F220();
  [v21 setAccessibilityIdentifier_];

  v23 = sub_213F4F220();
  [v21 setTitle:v23 forState:0];

  [v21 setShowsMenuAsPrimaryAction_];
  [v21 setAccessibilityTraits_];

  sub_213E42E0C(v21, a2, a3, v26);
  (*(v12 + 8))(v18, v11);
  return v21;
}

void sub_213E43658(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    sub_213E42E0C(v7, v3, v4, v5);
  }
}

uint64_t sub_213E43700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E45D70();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213E43764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213E45D70();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213E437C8()
{
  sub_213E45D70();
  sub_213F4DB60();
  __break(1u);
}

double FilterBarButton.init(model:allowGlass:tapHandler:)@<D0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a3;
  v31 = a4;
  HIDWORD(v29) = a2;
  v7 = sub_213F4E230();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v35 = a1[2];
  v36 = v12;
  v13 = a1[5];
  v37 = a1[4];
  v38 = v13;
  v14 = a1[1];
  v33 = *a1;
  v34 = v14;
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for FilterBarButton(0);
  v16 = a5 + v15[5];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = v15[6];
  *(a5 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v18 = v15[10];
  v19 = (a5 + v15[9]);
  v32 = 0x4031000000000000;
  v20 = *MEMORY[0x277CE0A68];
  v21 = *(v8 + 104);
  v21(v11, v20, v7);
  sub_213DEC3D4();
  sub_213F4CFE0();
  v22 = v15[11];
  v32 = 0x4046000000000000;
  v21(v11, v20, v7);
  sub_213F4CFE0();
  v23 = (a5 + v15[7]);
  v24 = v36;
  v23[2] = v35;
  v23[3] = v24;
  v25 = v38;
  v23[4] = v37;
  v23[5] = v25;
  result = *&v33;
  v27 = v34;
  *v23 = v33;
  v23[1] = v27;
  *(a5 + v15[8]) = BYTE4(v29);
  v28 = v31;
  *v19 = v30;
  v19[1] = v28;
  return result;
}

__n128 FilterBarButton.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FilterBarButton(0);
  v32 = *(v4 - 1);
  v5 = *(v32 + 64);
  v6 = v1 + *(MEMORY[0x28223BE20](v4) + 28);
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  v35 = *(v6 + 16);
  v36 = v8;
  if (*(v6 + 49) == 1)
  {
    v10 = objc_opt_self();

    v33 = [v10 systemBlueColor];
    if (v9)
    {
LABEL_3:
      v11 = v4[10];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
      sub_213F4CFF0();
      v31 = v37;
      sub_213F4E170();
      goto LABEL_6;
    }
  }

  else
  {

    v33 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v31 = 0x4026000000000000;
  sub_213F4E160();
LABEL_6:
  v13 = v12;
  v14 = *(v6 + 64);
  v34 = v7;
  if (v14)
  {
    v15 = *(v6 + 56);
    v29 = v14;
    v30 = v15;
  }

  else
  {
    v29 = 0xEF6E6F7474754272;
    v30 = 0x61427265746C6946;
  }

  v28 = *(v6 + 48);
  v16 = v4[11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
  sub_213F4CFF0();
  v17 = v37;
  sub_213E45C70(v2, &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FilterBarButton);
  v18 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v19 = swift_allocObject();
  sub_213E45CD8(&v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18, type metadata accessor for FilterBarButton);
  LOBYTE(v37) = 0;
  v39 = 0;
  v38 = 0;
  v20 = *(v2 + v4[8]);
  v21 = *(type metadata accessor for CardButton() + 24);
  *(a1 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v22 = v34;
  *a1 = v35;
  *(a1 + 8) = v22;
  v23 = MEMORY[0x277D768C8];
  *(a1 + 16) = v36;
  *(a1 + 24) = v9;
  result = *v23;
  v25 = *(v23 + 16);
  *(a1 + 32) = *v23;
  *(a1 + 48) = v25;
  *(a1 + 64) = v31;
  *(a1 + 72) = 0;
  *(a1 + 80) = v33;
  *(a1 + 88) = 1;
  *(a1 + 96) = sub_213E454B8;
  *(a1 + 104) = v19;
  v26 = v29;
  *(a1 + 112) = v30;
  *(a1 + 120) = v26;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = v28;
  *(a1 + 152) = v13;
  *(a1 + 160) = 0;
  *(a1 + 168) = v17;
  *(a1 + 176) = 0;
  *(a1 + 177) = v20;
  return result;
}

double FilterBar.init(model:allowGlass:tapHandler:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v9 = sub_213F4D2F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v23 - v15;
  *v23 = *a1;
  v17 = *(a1 + 16);
  v18 = type metadata accessor for FilterBar(0);
  v19 = *(v18 + 28);
  sub_213F4D2D0();
  (*(v10 + 16))(v14, v16, v9);
  sub_213F4EA90();
  (*(v10 + 8))(v16, v9);
  v20 = *(v18 + 32);
  *(a5 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  result = v23[0];
  *a5 = *v23;
  *(a5 + 16) = v17;
  *(a5 + 24) = a2;
  v22 = v24;
  *(a5 + 32) = a3;
  *(a5 + 40) = v22;
  return result;
}

uint64_t FilterBar.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9788, &qword_213F589D8);
  sub_213E45554();
  return sub_213F4DD40();
}

uint64_t sub_213E43FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97D0, &qword_213F58D28);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97A0, &qword_213F589E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9798, &qword_213F589E0);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97D8, &qword_213F58D30);
  v34 = *(v17 - 8);
  v35 = v17;
  v18 = *(v34 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - v19;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9788, &qword_213F589D8);
  v21 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v23 = &v31 - v22;
  sub_213F4E010();
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97E0, &qword_213F58D38);
  sub_213E45DCC();
  sub_213F4CE50();
  v24 = sub_213DE3AE4(&qword_27C8F97A8, &qword_27C8F97A0, &qword_213F589E8);
  sub_213F4E5E0();
  (*(v8 + 8))(v11, v7);
  LODWORD(v11) = *(type metadata accessor for FilterBar(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97B0, &qword_213F589F0);
  v25 = a1;
  sub_213F4EAC0();
  v38 = v7;
  v39 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = v32;
  sub_213F4E540();
  sub_213DE36FC(v6, &qword_27C8F97D0, &qword_213F58D28);
  (*(v33 + 8))(v16, v26);
  if (*(v25 + 16))
  {
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
  }

  else
  {
    v28 = 0x8000000213FA5660;
    v27 = 0xD000000000000013;
  }

  (*(v34 + 32))(v23, v20, v35);
  v29 = &v23[*(v31 + 36)];
  *v29 = v27;
  *(v29 + 1) = v28;
  v29[16] = 11;
  sub_213DC6810(v23, v36);
}

uint64_t sub_213E443E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FilterBar(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  *a2 = sub_213F4D8A0();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97F0, &qword_213F58D48) + 44);
  v20[1] = *a1;
  sub_213E45C70(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FilterBar);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_213E45CD8(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FilterBar);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97F8, &qword_213F58D50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9800, &qword_213F58D58);
  sub_213DE3AE4(&qword_2811824D8, &qword_27C8F97F8, &qword_213F58D50);
  sub_213E45F04();
  sub_213E4617C();
  sub_213F4ECD0();
  LOBYTE(a1) = sub_213F4E040();
  sub_213F4CDA0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97E0, &qword_213F58D38);
  v19 = a2 + *(result + 36);
  *v19 = a1;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

uint64_t sub_213E44634@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9810, &qword_213F58D68);
  v5 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v83 = &v82 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9820, &qword_213F58D78);
  v7 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v89 = &v82 - v8;
  v86 = sub_213F4E230();
  v9 = *(v86 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v86);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FilterBar(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = type metadata accessor for FilterBarButton(0);
  v17 = *(*(v16 - 1) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = (&v82 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9808, &qword_213F58D60);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v82 - v26;
  v28 = a1[5];
  v98 = a1[4];
  v99 = v28;
  v29 = a1[3];
  v96 = a1[2];
  v97 = v29;
  v30 = a1[1];
  v94 = *a1;
  v95 = v30;
  v31 = *(*(&v99 + 1) + 16);
  v85 = a2;
  v84 = *(a2 + 24);
  v87 = v25;
  if (v31)
  {
    *v20 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v32 = v20 + v16[5];
    *v32 = swift_getKeyPath();
    v32[8] = 0;
    v33 = v16[6];
    *(v20 + v33) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v34 = v16[10];
    v82 = (v20 + v16[9]);
    v93 = 0x4031000000000000;
    v35 = *MEMORY[0x277CE0A68];
    v36 = *(v9 + 104);
    v37 = v86;
    v36(v12, v35, v86);
    sub_213E461D0(&v94, v92);
    sub_213DEC3D4();
    sub_213F4CFE0();
    v38 = v16[11];
    *&v92[0] = 0x4046000000000000;
    v36(v12, v35, v37);
    sub_213F4CFE0();
    v39 = (v20 + v16[7]);
    v40 = v97;
    v39[2] = v96;
    v39[3] = v40;
    v41 = v99;
    v39[4] = v98;
    v39[5] = v41;
    v42 = v95;
    *v39 = v94;
    v39[1] = v42;
    *(v20 + v16[8]) = v84;
    sub_213E4607C(qword_281186A88, type metadata accessor for FilterBarButton);
    v43 = v82;
    *v82 = 0;
    v43[1] = 0;
    v44 = v83;
    sub_213F4E620();
    sub_213E46208(v20);
    v45 = sub_213F4EEE0();
    v47 = v46;
    v48 = v44 + *(v90 + 36);
    sub_213E44FE8(&v94, v85);
    v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9818, &qword_213F58D70) + 36));
    *v49 = v45;
    v49[1] = v47;
    sub_213DE3164(v44, v89, &qword_27C8F9810, &qword_213F58D68);
    swift_storeEnumTagMultiPayload();
    sub_213E45F90();
    sub_213E460C4();
    sub_213F4DBA0();
    v50 = v44;
    v51 = &qword_27C8F9810;
    v52 = &qword_213F58D68;
  }

  else
  {
    v83 = v27;
    sub_213E45C70(v85, &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FilterBar);
    v53 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v54 = swift_allocObject();
    v85 = v54;
    sub_213E45CD8(&v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v54 + v53, type metadata accessor for FilterBar);
    v55 = (v54 + ((v15 + v53 + 7) & 0xFFFFFFFFFFFFFFF8));
    v56 = v97;
    v55[2] = v96;
    v55[3] = v56;
    v57 = v99;
    v55[4] = v98;
    v55[5] = v57;
    v58 = v95;
    *v55 = v94;
    v55[1] = v58;
    *v22 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v59 = v22 + v16[5];
    *v59 = swift_getKeyPath();
    v59[8] = 0;
    v60 = v16[6];
    *(v22 + v60) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v61 = v16[10];
    v82 = (v22 + v16[9]);
    v93 = 0x4031000000000000;
    v62 = *MEMORY[0x277CE0A68];
    v63 = *(v9 + 104);
    v64 = v86;
    v63(v12, v62, v86);
    sub_213E461D0(&v94, v92);
    sub_213E461D0(&v94, v92);
    sub_213DEC3D4();
    sub_213F4CFE0();
    v65 = v16[11];
    *&v92[0] = 0x4046000000000000;
    v63(v12, v62, v64);
    sub_213F4CFE0();
    v66 = (v22 + v16[7]);
    v67 = v97;
    v66[2] = v96;
    v66[3] = v67;
    v68 = v99;
    v66[4] = v98;
    v66[5] = v68;
    v69 = v95;
    *v66 = v94;
    v66[1] = v69;
    *(v22 + v16[8]) = v84;
    v70 = v82;
    v71 = v85;
    *v82 = sub_213E46264;
    v70[1] = v71;
    if (v99)
    {
      v92[0] = __PAIR128__(v99, *(&v98 + 1));
      sub_213DBC9EC();

      v72 = sub_213F4E310();
      v74 = v73;
      v76 = v75;
      v77 = v89;
    }

    else
    {
      v72 = *(&v96 + 1);
      v77 = v89;
      if (*(&v96 + 1))
      {
        v92[0] = v96;
        sub_213DBC9EC();

        v72 = sub_213F4E310();
        v74 = v78;
        v76 = v79;
      }

      else
      {
        v76 = 0;
        v74 = 0xE000000000000000;
      }
    }

    sub_213E4607C(qword_281186A88, type metadata accessor for FilterBarButton);
    v80 = v83;
    sub_213F4E5B0();
    sub_213DBCA40(v72, v74, v76 & 1);

    sub_213E46208(v22);
    sub_213DE3164(v80, v77, &qword_27C8F9808, &qword_213F58D60);
    swift_storeEnumTagMultiPayload();
    sub_213E45F90();
    sub_213E460C4();
    sub_213F4DBA0();
    v50 = v80;
    v51 = &qword_27C8F9808;
    v52 = &qword_213F58D60;
  }

  return sub_213DE36FC(v50, v51, v52);
}

uint64_t sub_213E44FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterBar(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *(a1 + 88);
  sub_213E45C70(a2, &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FilterBar);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_213E45CD8(&v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v9 + v8, type metadata accessor for FilterBar);
  v10 = (v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v11;
  v12 = *(a1 + 80);
  v10[4] = *(a1 + 64);
  v10[5] = v12;
  v13 = *(a1 + 16);
  *v10 = *a1;
  v10[1] = v13;
  v23 = v7;
  v24 = sub_213E464D4;
  v25 = v9;
  v26 = *(a1 + 72);
  if (*(&v26 + 1))
  {
    v21 = v26;

    sub_213E461D0(a1, v22);
    sub_213DE3164(&v26, v22, &qword_27C8F9828, &qword_213F58D80);
    sub_213DBC9EC();
  }

  else
  {
    v14 = *(a1 + 40);
    if (!v14)
    {

      sub_213E461D0(a1, v22);
      v15 = 0;
      v19 = 0;
      v17 = 0xE000000000000000;
      goto LABEL_6;
    }

    *&v21 = *(a1 + 32);
    *(&v21 + 1) = v14;

    sub_213E461D0(a1, v22);
    sub_213DBC9EC();
  }

  v15 = sub_213F4E310();
  v17 = v16;
  v19 = v18;
LABEL_6:
  sub_213E45C1C();
  sub_213F4E5B0();
  sub_213DBCA40(v15, v17, v19 & 1);
}

unint64_t sub_213E45274(unint64_t result, uint64_t a2, uint64_t *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = a3[11];
  if (*(v4 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  v7 = *a3;
  v8 = a3[1];
  v9 = *(type metadata accessor for FilterBarOption.SubOption(0) - 8);
  v10 = (v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v3);
  v11 = *v10;
  v12 = v10[1];

  v6(v7, v8, v11, v12);
}

Swift::Void __swiftcall FilterBar.resetScrollPosition()()
{
  v0 = sub_213F4D2F0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = *(type metadata accessor for FilterBar(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97B0, &qword_213F589F0);
  sub_213F4EAA0();
  sub_213F4D2E0();
  sub_213F4EAB0();
}

uint64_t sub_213E45420()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9788, &qword_213F589D8);
  sub_213E45554();
  return sub_213F4DD40();
}

uint64_t sub_213E454B8()
{
  v1 = type metadata accessor for FilterBarButton(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 44) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

unint64_t sub_213E45554()
{
  result = qword_27C8F9790;
  if (!qword_27C8F9790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9788, &qword_213F589D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9798, &qword_213F589E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F97A0, &qword_213F589E8);
    sub_213DE3AE4(&qword_27C8F97A8, &qword_27C8F97A0, &qword_213F589E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F9790);
  }

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

uint64_t sub_213E456E8(uint64_t a1, int a2)
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

uint64_t sub_213E45730(uint64_t result, int a2, int a3)
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

void sub_213E457C0()
{
  sub_213E45A18(319, &qword_281182500, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_213F4CA10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213E458B0()
{
  sub_213E45BA4(319, &qword_281183528, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_213E45A18(319, &qword_281183530, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213E45BA4(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_213E0C0F8();
        if (v3 <= 0x3F)
        {
          sub_213DEEDC8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213E45A18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_213E45A90()
{
  sub_213DE22E8();
  if (v0 <= 0x3F)
  {
    sub_213E45BA4(319, &qword_2811827C0, MEMORY[0x277CDF8A8], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_213E45BA4(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213E45BA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_213E45C1C()
{
  result = qword_281187EB0;
  if (!qword_281187EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281187EB0);
  }

  return result;
}

uint64_t sub_213E45C70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E45CD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_213E45D70()
{
  result = qword_281187EB8[0];
  if (!qword_281187EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281187EB8);
  }

  return result;
}

unint64_t sub_213E45DCC()
{
  result = qword_2811831E8;
  if (!qword_2811831E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F97E0, &qword_213F58D38);
    sub_213DE3AE4(&qword_2811826F8, &qword_27C8F97E8, &qword_213F58D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831E8);
  }

  return result;
}

uint64_t sub_213E45E84@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FilterBar(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_213E44634(a1, v6, a2);
}

unint64_t sub_213E45F04()
{
  result = qword_281182B40;
  if (!qword_281182B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9800, &qword_213F58D58);
    sub_213E45F90();
    sub_213E460C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B40);
  }

  return result;
}

unint64_t sub_213E45F90()
{
  result = qword_281183428;
  if (!qword_281183428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9808, &qword_213F58D60);
    sub_213E4607C(qword_281186A88, type metadata accessor for FilterBarButton);
    sub_213E4607C(&qword_281182838, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183428);
  }

  return result;
}

uint64_t sub_213E4607C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_213E460C4()
{
  result = qword_281183108;
  if (!qword_281183108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9810, &qword_213F58D68);
    sub_213E45F90();
    sub_213DE3AE4(&qword_281182C58, &qword_27C8F9818, &qword_213F58D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183108);
  }

  return result;
}

unint64_t sub_213E4617C()
{
  result = qword_281186940[0];
  if (!qword_281186940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281186940);
  }

  return result;
}

uint64_t sub_213E46208(uint64_t a1)
{
  v2 = type metadata accessor for FilterBarButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213E46264()
{
  v1 = *(type metadata accessor for FilterBar(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = (v0 + v3);
  v6 = *(v4 + 40);
  return (*(v4 + 32))(*v5, v5[1], 0, 0);
}

uint64_t objectdestroy_55Tm()
{
  v1 = (type metadata accessor for FilterBar(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = *(v0 + v2 + 16);

  v7 = *(v0 + v2 + 40);

  v8 = v0 + v2 + v1[9];
  v9 = sub_213F4D2F0();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97B0, &qword_213F589F0) + 28));

  v11 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_213F4D290();
    (*(*(v12 - 8) + 8))(v4 + v11, v12);
  }

  else
  {
    v13 = *(v4 + v11);
  }

  v14 = (v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = v14[1];

  v16 = v14[3];

  v17 = v14[5];

  v18 = v14[8];

  v19 = v14[10];

  v20 = v14[11];

  return swift_deallocObject();
}

unint64_t sub_213E464D4(unint64_t a1)
{
  v3 = *(type metadata accessor for FilterBar(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_213E45274(a1, v1 + v4, v5);
}

uint64_t sub_213E46574@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4DEB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9880, &qword_213F59310);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9888, &qword_213F59318);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  sub_213F4DEC0();
  if (sub_213F4DED0())
  {
    v17 = 0.5;
  }

  else
  {
    v17 = 1.0;
  }

  (*(v3 + 32))(v11, v6, v2);
  *&v11[*(v8 + 44)] = v17;
  if (sub_213F4DED0())
  {
    v18 = 0.98;
  }

  else
  {
    v18 = 1.0;
  }

  sub_213F4F040();
  v20 = v19;
  v22 = v21;
  v23 = sub_213DE2B44(v11, v16, &qword_27C8F9880, &qword_213F59310);
  v24 = &v16[*(v13 + 44)];
  *v24 = v18;
  *(v24 + 1) = v18;
  *(v24 + 2) = v20;
  *(v24 + 3) = v22;
  v25 = MEMORY[0x216052350](v23, 0.5, 1.0, 0.0);
  v26 = sub_213F4DED0();
  sub_213DE2B44(v16, a1, &qword_27C8F9888, &qword_213F59318);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9890, &qword_213F59320);
  v28 = a1 + *(result + 36);
  *v28 = v25;
  *(v28 + 8) = v26 & 1;
  return result;
}

uint64_t sub_213E46818@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_213E468D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_213E469FC(v2, v3);
}

uint64_t sub_213E46918()
{
  swift_getKeyPath();
  v4 = v0;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_213E469FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (v6 = *(v2 + 40), (sub_213F4F830() & 1) != 0))
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
    sub_213F4CB70();
  }
}

void (*sub_213E46B50(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DE6004();
  return sub_213E46C88;
}

uint64_t sub_213E46C94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_213E46D6C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_213E46E30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 48) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 56);
      if (sub_213F4F830())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB70();
}

void (*sub_213E46F94(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DDEB98();
  return sub_213E470CC;
}

uint64_t sub_213E470D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t keypath_set_3Tm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_213E471F8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v2 = *(v0 + 64);
  v1 = *(v4 + 72);

  return v2;
}

uint64_t sub_213E472BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 64) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 72);
      if (sub_213F4F830())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB70();
}

uint64_t sub_213E47420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 72);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
}

void (*sub_213E474AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213DDF100();
  return sub_213E475E4;
}

uint64_t sub_213E47640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_213E476FC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213E477F0(&v4);
}

uint64_t sub_213E47734@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a1 = *(v1 + 80);
  return result;
}

uint64_t sub_213E477F0(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (*(v1 + 80) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
    sub_213F4CB70();
  }

  return result;
}

uint64_t sub_213E4790C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 80) = v2;
  return result;
}

void (*sub_213E47960(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E475F0();
  return sub_213E47A98;
}

uint64_t sub_213E47AF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 81);
  return result;
}

uint64_t sub_213E47BB0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213E47CA4(&v4);
}

uint64_t sub_213E47BE8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a1 = *(v1 + 81);
  return result;
}

uint64_t sub_213E47CA4(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (*(v1 + 81) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
    sub_213F4CB70();
  }

  return result;
}

uint64_t sub_213E47DC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 81) = v2;
  return result;
}

void (*sub_213E47E14(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E47AA4();
  return sub_213E47F4C;
}

uint64_t sub_213E47FA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  *a2 = *(v3 + 82);
  return result;
}

uint64_t sub_213E4808C()
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  return *(v0 + 82);
}

uint64_t sub_213E48140(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 82) == v2)
  {
    *(v1 + 82) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
    sub_213F4CB70();
  }

  return result;
}

uint64_t sub_213E48264()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 82) = v2;
  return result;
}

void (*sub_213E482B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E47F58();
  return sub_213E483F0;
}

uint64_t sub_213E4844C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_213E4850C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_213E485F0(v4);
}

uint64_t sub_213E48538()
{
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t sub_213E485F0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);

  v4 = sub_213F4E890();

  if (v4)
  {
    v5 = *(v1 + 88);
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
    sub_213F4CB70();
  }
}

uint64_t sub_213E48738(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 88);
  *(a1 + 88) = a2;
}

void (*sub_213E487BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign19GridButtonViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213E483FC();
  return sub_213E488F4;
}

uint64_t sub_213E48950@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213E50898(&qword_281185980, type metadata accessor for GridButtonViewModel);
  sub_213F4CB80();

  result = swift_beginAccess();
  v5 = *(v3 + 104);
  *a2 = *(v3 + 96);
  *(a2 + 8) = v5;
  return result;
}