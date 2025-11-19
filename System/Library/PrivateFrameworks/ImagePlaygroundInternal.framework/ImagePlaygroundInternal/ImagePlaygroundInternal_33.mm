uint64_t sub_1D261B8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v91 = a3;
  v98 = a1;
  v94 = a4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF358);
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = &v75 - v9;
  v10 = sub_1D2875E18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v75 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v76 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v75 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v87 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v75 - v31;
  v89 = type metadata accessor for CharacterEditingView();
  v33 = *(v89 + 20);
  *&v99 = a2;
  v83 = v33;
  sub_1D24CC0C4(v32);
  v34 = v11[13];
  v82 = *MEMORY[0x1E697FF38];
  v80 = v34;
  v81 = v11 + 13;
  v34(v29);
  v78 = v11[7];
  v79 = v11 + 7;
  v78(v29, 0, 1, v10);
  v86 = v13;
  v35 = *(v13 + 48);
  sub_1D22BD1D0(v32, v17, &qword_1EC6D99B8);
  sub_1D22BD1D0(v29, &v17[v35], &qword_1EC6D99B8);
  v96 = v11;
  v36 = v11[6];
  v37 = v36(v17, 1, v10);
  v84 = v36;
  if (v37 == 1)
  {
    sub_1D22BD238(v29, &qword_1EC6D99B8);
    sub_1D22BD238(v32, &qword_1EC6D99B8);
    v38 = v36(&v17[v35], 1, v10);
    v39 = v87;
    if (v38 == 1)
    {
      sub_1D22BD238(v17, &qword_1EC6D99B8);
      v40 = 0x4058800000000000;
LABEL_7:
      v85 = v40;
      v41 = v88;
      goto LABEL_11;
    }

LABEL_6:
    sub_1D22BD238(v17, &qword_1EC6E0DB0);
    v40 = 0x405D800000000000;
    goto LABEL_7;
  }

  sub_1D22BD1D0(v17, v26, &qword_1EC6D99B8);
  if (v36(&v17[v35], 1, v10) == 1)
  {
    sub_1D22BD238(v29, &qword_1EC6D99B8);
    sub_1D22BD238(v32, &qword_1EC6D99B8);
    (v96[1])(v26, v10);
    v39 = v87;
    goto LABEL_6;
  }

  v42 = v77;
  (v96[4])(v77, &v17[v35], v10);
  sub_1D2620AA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
  LODWORD(v85) = sub_1D2877F98();
  v43 = v96[1];
  v43(v42, v10);
  sub_1D22BD238(v29, &qword_1EC6D99B8);
  sub_1D22BD238(v32, &qword_1EC6D99B8);
  v43(v26, v10);
  sub_1D22BD238(v17, &qword_1EC6D99B8);
  v44 = 0x4058800000000000;
  if ((v85 & 1) == 0)
  {
    v44 = 0x405D800000000000;
  }

  v85 = v44;
  v39 = v87;
  v41 = v88;
LABEL_11:
  v45 = v97;
  sub_1D24CC0C4(v39);
  v80(v45, v82, v10);
  v78(v45, 0, 1, v10);
  v46 = *(v86 + 48);
  sub_1D22BD1D0(v39, v41, &qword_1EC6D99B8);
  sub_1D22BD1D0(v45, v41 + v46, &qword_1EC6D99B8);
  v47 = v84;
  if (v84(v41, 1, v10) == 1)
  {
    sub_1D22BD238(v45, &qword_1EC6D99B8);
    sub_1D22BD238(v39, &qword_1EC6D99B8);
    if (v47(v41 + v46, 1, v10) == 1)
    {
      sub_1D22BD238(v41, &qword_1EC6D99B8);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v48 = v76;
  sub_1D22BD1D0(v41, v76, &qword_1EC6D99B8);
  if (v47(v41 + v46, 1, v10) == 1)
  {
    sub_1D22BD238(v97, &qword_1EC6D99B8);
    sub_1D22BD238(v39, &qword_1EC6D99B8);
    (v96[1])(v48, v10);
LABEL_16:
    sub_1D22BD238(v41, &qword_1EC6E0DB0);
    goto LABEL_18;
  }

  v49 = v39;
  v50 = v96;
  v51 = v77;
  (v96[4])(v77, v41 + v46, v10);
  sub_1D2620AA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
  sub_1D2877F98();
  v52 = v50[1];
  v52(v51, v10);
  sub_1D22BD238(v97, &qword_1EC6D99B8);
  sub_1D22BD238(v49, &qword_1EC6D99B8);
  v52(v48, v10);
  sub_1D22BD238(v41, &qword_1EC6D99B8);
LABEL_18:
  sub_1D2877848();
  sub_1D2875208();
  v53 = *v99;
  v54 = *(v99 + 8);
  *&v103 = *v99;
  *(&v103 + 1) = v54;
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v55 = v100;
  swift_getKeyPath();
  *&v103 = v55;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v56 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  v57 = v55 + v56;
  v58 = v90;
  sub_1D22BD1D0(v57, v90, &unk_1EC6E33C0);

  v59 = type metadata accessor for ImageGenerationPerson.SkinTone();
  LODWORD(v55) = (*(*(v59 - 8) + 48))(v58, 1, v59);
  sub_1D22BD238(v58, &unk_1EC6E33C0);
  v60 = 1.0;
  if (v55 == 1)
  {
    *&v103 = v53;
    *(&v103 + 1) = v54;
    sub_1D2877308();
    v61 = v100;
    swift_getKeyPath();
    *&v103 = v61;
    sub_1D28719E8();

    v62 = *(v61 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);

    if (v62 == 4)
    {
      v60 = 0.3;
    }

    else
    {
      v60 = 1.0;
    }
  }

  v63 = v93;
  sub_1D261C688(v99, v91, v93);
  sub_1D2877848();
  sub_1D28748C8();
  v64 = (v63 + *(v92 + 36));
  v65 = v126;
  *v64 = v125;
  v64[1] = v65;
  v64[2] = v127;
  v66 = v95;
  sub_1D22BD1D0(v63, v95, &qword_1EC6DF358);
  v99 = xmmword_1D2898670;
  v100 = xmmword_1D2898670;
  v67 = v98;
  *&v101[0] = v98;
  *(&v101[3] + 8) = v119;
  *(&v101[4] + 8) = v120;
  *(&v101[5] + 8) = v121;
  *(&v101[6] + 8) = v122;
  *(v101 + 8) = v116;
  *(&v101[1] + 8) = v117;
  *(&v101[2] + 8) = v118;
  WORD4(v101[7]) = 1;
  HIWORD(v101[7]) = v124;
  *(&v101[7] + 10) = v123;
  v102 = v60;
  v68 = v101[6];
  v69 = v94;
  *(v94 + 96) = v101[5];
  *(v69 + 112) = v68;
  v70 = v101[4];
  *(v69 + 64) = v101[3];
  *(v69 + 80) = v70;
  v71 = v101[2];
  *(v69 + 32) = v101[1];
  *(v69 + 48) = v71;
  v72 = v101[0];
  *v69 = v100;
  *(v69 + 16) = v72;
  *(v69 + 128) = v101[7];
  *(v69 + 144) = v102;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF360);
  sub_1D22BD1D0(v66, v69 + *(v73 + 48), &qword_1EC6DF358);
  sub_1D22BD1D0(&v100, &v103, &qword_1EC6DF368);
  sub_1D22BD238(v63, &qword_1EC6DF358);
  sub_1D22BD238(v66, &qword_1EC6DF358);
  v103 = v99;
  v108 = v119;
  v109 = v120;
  v110 = v121;
  v111 = v122;
  v105 = v116;
  v106 = v117;
  v104 = v67;
  v107 = v118;
  v112 = 1;
  v114 = v124;
  v113 = v123;
  v115 = v60;
  return sub_1D22BD238(&v103, &qword_1EC6DF368);
}

uint64_t sub_1D261C688@<X0>(double *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_1D2874518();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF370);
  MEMORY[0x1EEE9AC00](v46);
  v8 = (&v37 - v7);
  v39 = sub_1D28771B8();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF378);
  MEMORY[0x1EEE9AC00](v45);
  v12 = (&v37 - v11);
  v13 = *(a1 + 1);
  v41 = *a1;
  v51 = v41;
  v52 = v13;
  v40 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v14 = v49;
  swift_getKeyPath();
  v51 = v14;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v15 = &unk_1ED89F000;
  v16 = *(*&v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedAppearance);

  if (v16 == 4)
  {
    if (a2 == 4)
    {
LABEL_3:
      sub_1D2877198();
      v17 = v38;
      v18 = v39;
      (*(v38 + 104))(v10, *MEMORY[0x1E6981630], v39);
      v19 = sub_1D2877228();

      (*(v17 + 8))(v10, v18);
      sub_1D2874DA8();
      *v12 = v19;
      sub_1D22BD1D0(v12, v8, &qword_1EC6DF378);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF380);
      sub_1D2621144();
      sub_1D26211FC();
      sub_1D2875AF8();
      return sub_1D22BD238(v12, &qword_1EC6DF378);
    }
  }

  else if (a2 != 4)
  {
    if (v16 == 3)
    {
      if (a2 == 3)
      {
        goto LABEL_3;
      }
    }

    else if (a2 != 3)
    {
      v32 = sub_1D2873768();
      v34 = v33;
      if (v32 == sub_1D2873768() && v34 == v35)
      {

        goto LABEL_3;
      }

      v36 = sub_1D2879618();

      v15 = &unk_1ED89F000;
      if (v36)
      {
        goto LABEL_3;
      }
    }
  }

  LODWORD(v39) = sub_1D2875D88();
  type metadata accessor for CharacterEditingView();
  sub_1D28745B8();
  v21 = v51;
  v22 = v52;
  v23 = v53;
  v24 = v54;
  v25 = v55;
  v26 = sub_1D2877848();
  v28 = v27;
  v49 = v41;
  v50 = v40;
  sub_1D2877308();
  v29 = v48;
  swift_getKeyPath();
  v49 = v29;
  sub_1D28719E8();

  v30 = *(*&v29 + v15[360]);

  if (v30 != 4 && a2 != 4 && v30 != 3 && a2 != 3)
  {
    sub_1D2873768();
    sub_1D2873768();
  }

  v31 = v42;
  sub_1D28744F8();
  (*(v43 + 8))(v31, v44);
  *v8 = v21 * 0.5;
  v8[1] = v21;
  *(v8 + 2) = v22;
  *(v8 + 3) = v23;
  *(v8 + 4) = v24;
  *(v8 + 5) = v25;
  *(v8 + 12) = v39;
  *(v8 + 26) = 256;
  *(v8 + 7) = v26;
  *(v8 + 8) = v28;
  *(v8 + 72) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF380);
  sub_1D2621144();
  sub_1D26211FC();
  return sub_1D2875AF8();
}

uint64_t sub_1D261CD00(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v5 = *a2;
  *&v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  if (*(v9 + 32) == 1)
  {
    sub_1D264C564(&v5);

    if (v5)
    {
      v3 = v7;
      v8 = v5;
      sub_1D2870F68();
      sub_1D2620860(&v8);
      v9 = v6;
      sub_1D22BD018(&v9);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = sub_1D264D2A0();
  }

  return v3;
}

uint64_t sub_1D261CDE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v47 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = sub_1D28758D8();
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v51 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1E8);
  MEMORY[0x1EEE9AC00](v50);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1F0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v49 = &v44 - v24;
  *v22 = sub_1D28756A8();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF1F8) + 44);
  v48 = v22;
  sub_1D261D698(a1, a2, &v22[v25]);
  v26 = a2[1];
  v59 = *a2;
  v60 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v27 = v57;
  swift_getKeyPath();
  v59 = v27;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v27 + v28, v18, &unk_1EC6E33C0);

  v29 = a1;
  v30 = v47;
  sub_1D262064C(v29, v15, type metadata accessor for ImageGenerationPerson.SkinTone);
  (*(v5 + 56))(v15, 0, 1, v30);
  v31 = *(v8 + 56);
  sub_1D22BD1D0(v18, v10, &unk_1EC6E33C0);
  sub_1D22BD1D0(v15, &v10[v31], &unk_1EC6E33C0);
  v32 = *(v5 + 48);
  if (v32(v10, 1, v30) == 1)
  {
    sub_1D22BD238(v15, &unk_1EC6E33C0);
    sub_1D22BD238(v18, &unk_1EC6E33C0);
    if (v32(&v10[v31], 1, v30) == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v33 = v46;
  sub_1D22BD1D0(v10, v46, &unk_1EC6E33C0);
  if (v32(&v10[v31], 1, v30) == 1)
  {
    sub_1D22BD238(v15, &unk_1EC6E33C0);
    sub_1D22BD238(v18, &unk_1EC6E33C0);
    sub_1D24917E0(v33);
LABEL_6:
    sub_1D22BD238(v10, &qword_1EC6DC108);
    v35 = v51;
    v34 = v52;
    goto LABEL_7;
  }

  v36 = v45;
  sub_1D26206B4(&v10[v31], v45, type metadata accessor for ImageGenerationPerson.SkinTone);
  sub_1D28737A8();
  sub_1D2620AA4(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v57 == v55 && v58 == v56)
  {
    sub_1D24917E0(v36);
    sub_1D22BD238(v15, &unk_1EC6E33C0);
    sub_1D22BD238(v18, &unk_1EC6E33C0);

    sub_1D24917E0(v33);
LABEL_11:
    sub_1D22BD238(v10, &unk_1EC6E33C0);
    v35 = v51;
    v34 = v52;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1C0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D287F500;
    sub_1D2875888();
    v57 = v37;
    goto LABEL_13;
  }

  v43 = sub_1D2879618();
  sub_1D24917E0(v36);
  sub_1D22BD238(v15, &unk_1EC6E33C0);
  sub_1D22BD238(v18, &unk_1EC6E33C0);

  sub_1D24917E0(v33);
  sub_1D22BD238(v10, &unk_1EC6E33C0);
  v35 = v51;
  v34 = v52;
  if (v43)
  {
    goto LABEL_12;
  }

LABEL_7:
  v57 = MEMORY[0x1E69E7CC0];
LABEL_13:
  sub_1D2620AA4(&qword_1ED89D678, MEMORY[0x1E697F5E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1C8);
  sub_1D22BB9D8(&qword_1ED89CEC8, &qword_1EC6DD1C8);
  v38 = v53;
  sub_1D2879088();
  sub_1D22BB9D8(&qword_1EC6D76C8, &qword_1EC6DF1E8);
  v39 = v49;
  v40 = v48;
  sub_1D2876918();
  (*(v34 + 8))(v35, v38);
  sub_1D22BD238(v40, &qword_1EC6DF1E8);
  v41 = v54;
  sub_1D22EC9BC(v39, v54, &qword_1EC6DF1F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF200);
  *(v41 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1D261D698@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v86 = sub_1D2874518();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v93 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92 - 8);
  v77 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v75 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108);
  MEMORY[0x1EEE9AC00](v78);
  v10 = &v75 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v75 - v18;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF208);
  MEMORY[0x1EEE9AC00](v84);
  v20 = &v75 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF210);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v89 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v75 - v24;
  v94 = a1;
  sub_1D264C564(&v101);
  v88 = v25;
  v76 = v13;
  if (v101)
  {
    v79 = v101;
    v107 = v102;
    sub_1D22BD018(&v107);
    v108 = v103;
    sub_1D22BD018(&v108);
  }

  else
  {
    v79 = sub_1D2877098();
  }

  v26 = *a2;
  v27 = a2[1];
  v87 = a2;
  *&v104 = v26;
  *(&v104 + 1) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();

  *&v104 = v26;
  *(&v104 + 1) = v27;
  sub_1D2877308();

  sub_1D2877848();
  sub_1D28748C8();
  *&v99[6] = v104;
  *&v99[22] = v105;
  *&v99[38] = v106;
  v82 = v26;
  v97 = v26;
  v81 = v27;
  v98 = v27;
  v80 = v28;
  sub_1D2877308();
  v29 = v95;
  swift_getKeyPath();
  v97 = v29;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v30 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  v31 = v91;
  sub_1D22BD1D0(v29 + v30, v91, &unk_1EC6E33C0);

  sub_1D262064C(v94, v16, type metadata accessor for ImageGenerationPerson.SkinTone);
  v32 = v93;
  v33 = v92;
  (*(v93 + 56))(v16, 0, 1, v92);
  v34 = *(v78 + 48);
  sub_1D22BD1D0(v31, v10, &unk_1EC6E33C0);
  sub_1D22BD1D0(v16, &v10[v34], &unk_1EC6E33C0);
  v35 = *(v32 + 48);
  if (v35(v10, 1, v33) == 1)
  {
    sub_1D22BD238(v16, &unk_1EC6E33C0);
    sub_1D22BD238(v31, &unk_1EC6E33C0);
    v36 = v35(&v10[v34], 1, v33);
    v37 = v93;
    if (v36 == 1)
    {
      v38 = &unk_1EC6E33C0;
LABEL_10:
      sub_1D22BD238(v10, v38);
      v40 = v88;
      goto LABEL_12;
    }

LABEL_9:
    v38 = &qword_1EC6DC108;
    goto LABEL_10;
  }

  v39 = v76;
  sub_1D22BD1D0(v10, v76, &unk_1EC6E33C0);
  if (v35(&v10[v34], 1, v33) == 1)
  {
    sub_1D22BD238(v16, &unk_1EC6E33C0);
    sub_1D22BD238(v91, &unk_1EC6E33C0);
    sub_1D24917E0(v39);
    v37 = v93;
    goto LABEL_9;
  }

  v41 = &v10[v34];
  v42 = v75;
  sub_1D26206B4(v41, v75, type metadata accessor for ImageGenerationPerson.SkinTone);
  sub_1D28737A8();
  sub_1D2620AA4(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
  sub_1D2878368();
  sub_1D2878368();
  sub_1D24917E0(v42);
  sub_1D22BD238(v16, &unk_1EC6E33C0);
  sub_1D22BD238(v91, &unk_1EC6E33C0);

  sub_1D24917E0(v39);
  sub_1D22BD238(v10, &unk_1EC6E33C0);
  v40 = v88;
  v37 = v93;
LABEL_12:
  v43 = v83;
  sub_1D28744F8();
  (*(v85 + 8))(v43, v86);
  type metadata accessor for CharacterEditingView();
  v44 = v87;
  LOBYTE(v43) = sub_1D2876338();
  sub_1D2874298();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v100 = 0;
  v53 = sub_1D2877848();
  v55 = v54;
  v56 = &v20[*(v84 + 36)];
  sub_1D261E26C(v44, v94, v56);
  v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF218) + 36));
  *v57 = v53;
  v57[1] = v55;
  *(v20 + 7) = *&v99[46];
  *(v20 + 42) = *&v99[32];
  v58 = *v99;
  *(v20 + 26) = *&v99[16];
  *v20 = v79;
  *(v20 + 4) = 256;
  *(v20 + 10) = v58;
  v20[64] = v43;
  *(v20 + 9) = v46;
  *(v20 + 10) = v48;
  *(v20 + 11) = v50;
  *(v20 + 12) = v52;
  v20[104] = 0;
  v95 = 0;
  v96 = 0xE000000000000000;
  MEMORY[0x1D38A0C50](0x656E6F546E696B53, 0xE800000000000000);
  sub_1D2879348();
  sub_1D262071C();
  sub_1D2876CC8();

  sub_1D22BD238(v20, &qword_1EC6DF208);
  v59 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  v61 = v60;
  v95 = v82;
  v96 = v81;
  sub_1D2877308();
  v62 = sub_1D2650030();

  v63 = *(v62 + 16);
  if (!v63)
  {

    goto LABEL_19;
  }

  v64 = v77;
  sub_1D262064C(v62 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * (v63 - 1), v77, type metadata accessor for ImageGenerationPerson.SkinTone);

  v65 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  v67 = v66;
  sub_1D24917E0(v64);
  if (v59 != v65 || v61 != v67)
  {
    v68 = sub_1D2879618();

    if (v68)
    {
      goto LABEL_18;
    }

LABEL_19:
    v70 = 0;
    v69 = 1;
    goto LABEL_20;
  }

LABEL_18:
  v69 = 0;
  v70 = 1;
LABEL_20:
  v71 = v89;
  sub_1D22BD1D0(v40, v89, &qword_1EC6DF210);
  v72 = v90;
  sub_1D22BD1D0(v71, v90, &qword_1EC6DF210);
  v73 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF228) + 48);
  *v73 = 0;
  *(v73 + 8) = v69;
  *(v73 + 9) = v70;
  sub_1D22BD238(v40, &qword_1EC6DF210);
  return sub_1D22BD238(v71, &qword_1EC6DF210);
}

uint64_t sub_1D261E26C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v53 = a3;
  v51 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = sub_1D2874DB8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF230);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v47 - v21);
  sub_1D2874DA8();
  type metadata accessor for CharacterEditingView();
  sub_1D28745B8();
  v23 = v60;
  v24 = v62;
  v25 = v63;
  v26 = v64;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD638);
  v28 = v61;
  (*(v17 + 16))(v22 + *(v27 + 52), v19, v16);
  *v22 = v23 * 0.5;
  v22[1] = v23;
  *(v22 + 2) = v28;
  *(v22 + 3) = v24;
  *(v22 + 4) = v25;
  *(v22 + 5) = v26;
  *(v22 + *(v27 + 56)) = 256;
  v29 = sub_1D2877848();
  v31 = v30;
  (*(v17 + 8))(v19, v16);
  v32 = v15;
  v33 = v49;
  v34 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD640) + 36));
  *v34 = v29;
  v34[1] = v31;
  v35 = v50;
  v36 = v51;
  v37 = a1[1];
  v58 = *a1;
  v59 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  v38 = v56;
  swift_getKeyPath();
  v58 = v38;
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  v39 = OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__selectedSkinTone;
  swift_beginAccess();
  sub_1D22BD1D0(v38 + v39, v32, &unk_1EC6E33C0);

  sub_1D262064C(v52, v12, type metadata accessor for ImageGenerationPerson.SkinTone);
  (*(v35 + 56))(v12, 0, 1, v36);
  v40 = *(v6 + 56);
  sub_1D22BD1D0(v32, v33, &unk_1EC6E33C0);
  sub_1D22BD1D0(v12, v33 + v40, &unk_1EC6E33C0);
  v41 = *(v35 + 48);
  if (v41(v33, 1, v36) == 1)
  {
    sub_1D22BD238(v12, &unk_1EC6E33C0);
    sub_1D22BD238(v32, &unk_1EC6E33C0);
    if (v41(v33 + v40, 1, v36) == 1)
    {
      sub_1D22BD238(v33, &unk_1EC6E33C0);
      v42 = 1.0;
      goto LABEL_13;
    }

LABEL_6:
    sub_1D22BD238(v33, &qword_1EC6DC108);
    v42 = 0.0;
    goto LABEL_13;
  }

  v43 = v48;
  sub_1D22BD1D0(v33, v48, &unk_1EC6E33C0);
  if (v41(v33 + v40, 1, v36) == 1)
  {
    sub_1D22BD238(v12, &unk_1EC6E33C0);
    sub_1D22BD238(v32, &unk_1EC6E33C0);
    sub_1D24917E0(v43);
    goto LABEL_6;
  }

  v44 = v47;
  sub_1D26206B4(v33 + v40, v47, type metadata accessor for ImageGenerationPerson.SkinTone);
  sub_1D28737A8();
  sub_1D2620AA4(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v56 != v54 || (v42 = 1.0, v57 != v55))
  {
    if (sub_1D2879618())
    {
      v42 = 1.0;
    }

    else
    {
      v42 = 0.0;
    }
  }

  sub_1D24917E0(v44);
  sub_1D22BD238(v12, &unk_1EC6E33C0);
  sub_1D22BD238(v32, &unk_1EC6E33C0);

  sub_1D24917E0(v43);
  sub_1D22BD238(v33, &unk_1EC6E33C0);
LABEL_13:
  v45 = v53;
  sub_1D22EC9BC(v22, v53, &qword_1EC6DF230);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF238);
  *(v45 + *(result + 36)) = v42;
  return result;
}

uint64_t sub_1D261EA04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA338);
  sub_1D2877308();
  sub_1D264FCD0();
}

uint64_t sub_1D261EA64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2620AA4(&qword_1EC6D8360, type metadata accessor for CharacterEditingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal25CharacterEditingViewModel__shouldShowCreationTips);
  return result;
}

uint64_t sub_1D261EB3C(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF320);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF328);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D261EC84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D28755F8();
  *a1 = result;
  return result;
}

double sub_1D261ECDC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1D28720D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  sub_1D28720C8();
  (*(v3 + 104))(v5, *MEMORY[0x1E696E3D8], v2);
  sub_1D2620AA4(&qword_1ED8A6BE0, MEMORY[0x1E696E3F8]);
  sub_1D2878368();
  sub_1D2878368();
  v9 = 0x4024000000000000;
  if ((v15 != v14[0] || v16 != v14[1]) && (sub_1D2879618() & 1) == 0)
  {
    v9 = 0;
  }

  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);

  LOBYTE(v15) = 0;
  sub_1D28763C8();
  v11 = sub_1D28763E8();

  v12 = v15;
  *a1 = xmmword_1D2898680;
  *(a1 + 16) = xmmword_1D2898690;
  *(a1 + 32) = v9;
  *(a1 + 40) = v12;
  *(a1 + 48) = xmmword_1D28986A0;
  *(a1 + 64) = xmmword_1D28986B0;
  *(a1 + 80) = xmmword_1D28986C0;
  *(a1 + 96) = v11;
  *(a1 + 104) = xmmword_1D28986D0;
  result = 540.0;
  *(a1 + 120) = xmmword_1D28986E0;
  return result;
}

uint64_t sub_1D261EF4C()
{
  type metadata accessor for CharacterEditingView();

  return sub_1D26190F0();
}

double sub_1D261EFBC(uint64_t a1)
{
  v2 = sub_1D28720D8();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v32 - v5;
  v6 = sub_1D2875E18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - v19;
  (*(v7 + 104))(&v32 - v19, *MEMORY[0x1E697FF38], v6, v18);
  (*(v7 + 56))(v20, 0, 1, v6);
  v21 = *(v11 + 56);
  sub_1D22BD1D0(a1, v13, &qword_1EC6D99B8);
  sub_1D22BD1D0(v20, &v13[v21], &qword_1EC6D99B8);
  v22 = *(v7 + 48);
  if (v22(v13, 1, v6) == 1)
  {
    sub_1D22BD238(v20, &qword_1EC6D99B8);
    if (v22(&v13[v21], 1, v6) == 1)
    {
      sub_1D22BD238(v13, &qword_1EC6D99B8);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1D22BD1D0(v13, v16, &qword_1EC6D99B8);
  if (v22(&v13[v21], 1, v6) == 1)
  {
    sub_1D22BD238(v20, &qword_1EC6D99B8);
    (*(v7 + 8))(v16, v6);
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6E0DB0);
    return 70.0;
  }

  (*(v7 + 32))(v9, &v13[v21], v6);
  sub_1D2620AA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
  v23 = sub_1D2877F98();
  v24 = *(v7 + 8);
  v24(v9, v6);
  sub_1D22BD238(v20, &qword_1EC6D99B8);
  v24(v16, v6);
  sub_1D22BD238(v13, &qword_1EC6D99B8);
  if (v23)
  {
LABEL_8:
    v25 = v32;
    sub_1D28720C8();
    v27 = v33;
    v26 = v34;
    v28 = v35;
    (*(v34 + 104))(v33, *MEMORY[0x1E696E3D8], v35);
    sub_1D2620AA4(&qword_1ED8A6BE8, MEMORY[0x1E696E3F8]);
    v29 = sub_1D2877F98();
    v30 = *(v26 + 8);
    v30(v27, v28);
    v30(v25, v28);
    result = 20.0;
    if ((v29 & 1) == 0)
    {
      return result;
    }
  }

  return 70.0;
}

double sub_1D261F4F4(uint64_t a1)
{
  v35 = a1;
  v1 = sub_1D2875E18();
  v36 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = sub_1D28720D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  sub_1D28720C8();
  (*(v12 + 104))(v14, *MEMORY[0x1E696E3D8], v11);
  sub_1D2620AA4(&qword_1ED8A6BE0, MEMORY[0x1E696E3F8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v39 == v37 && v40 == v38)
  {
    v18 = *(v12 + 8);
    v18(v14, v11);
    v18(v17, v11);

    return 18.0;
  }

  v31 = v5;
  v32 = v1;
  v20 = sub_1D2879618();
  v21 = *(v12 + 8);
  v21(v14, v11);
  v21(v17, v11);

  result = 18.0;
  if ((v20 & 1) == 0)
  {
    v22 = v36;
    v23 = v32;
    (*(v36 + 104))(v10, *MEMORY[0x1E697FF38], v32, 18.0);
    (*(v22 + 56))(v10, 0, 1, v23);
    v24 = *(v3 + 48);
    v25 = v31;
    sub_1D22BD1D0(v35, v31, &qword_1EC6D99B8);
    sub_1D22BD1D0(v10, v25 + v24, &qword_1EC6D99B8);
    v26 = *(v22 + 48);
    if (v26(v25, 1, v23) == 1)
    {
      sub_1D22BD238(v10, &qword_1EC6D99B8);
      if (v26(v25 + v24, 1, v23) == 1)
      {
        sub_1D22BD238(v25, &qword_1EC6D99B8);
        return 0.0;
      }
    }

    else
    {
      v27 = v34;
      sub_1D22BD1D0(v25, v34, &qword_1EC6D99B8);
      if (v26(v25 + v24, 1, v23) != 1)
      {
        v28 = v33;
        (*(v22 + 32))(v33, v25 + v24, v23);
        sub_1D2620AA4(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
        v29 = sub_1D2877F98();
        v30 = *(v22 + 8);
        v30(v28, v23);
        sub_1D22BD238(v10, &qword_1EC6D99B8);
        v30(v27, v23);
        sub_1D22BD238(v25, &qword_1EC6D99B8);
        result = 0.0;
        if (v29)
        {
          return result;
        }

        return 8.0;
      }

      sub_1D22BD238(v10, &qword_1EC6D99B8);
      (*(v22 + 8))(v27, v23);
    }

    sub_1D22BD238(v25, &qword_1EC6E0DB0);
    return 8.0;
  }

  return result;
}

unint64_t sub_1D261FB04()
{
  result = qword_1EC6DF058;
  if (!qword_1EC6DF058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF050);
    sub_1D261FC40();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0C8);
    sub_1D261FF2C();
    sub_1D22BAAF0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF058);
  }

  return result;
}

unint64_t sub_1D261FC40()
{
  result = qword_1EC6DF060;
  if (!qword_1EC6DF060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF068);
    sub_1D261FCCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF060);
  }

  return result;
}

unint64_t sub_1D261FCCC()
{
  result = qword_1EC6DF070;
  if (!qword_1EC6DF070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF090);
    sub_1D261FE74();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0B0);
    sub_1D22BB9D8(&qword_1EC6DF0B8, &qword_1EC6DF0B0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF070);
  }

  return result;
}

unint64_t sub_1D261FE74()
{
  result = qword_1EC6DF098;
  if (!qword_1EC6DF098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF090);
    sub_1D22BB9D8(&qword_1EC6DF0A0, &qword_1EC6DF0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF098);
  }

  return result;
}

unint64_t sub_1D261FF2C()
{
  result = qword_1EC6DF0D0;
  if (!qword_1EC6DF0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0D8);
    sub_1D2620024();
    swift_getOpaqueTypeConformance2();
    sub_1D2620AA4(&qword_1EC6D77C8, MEMORY[0x1E6980270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF0D0);
  }

  return result;
}

unint64_t sub_1D2620024()
{
  result = qword_1EC6DF0E0;
  if (!qword_1EC6DF0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF0D8);
    sub_1D22BB9D8(&qword_1EC6DF0E8, &qword_1EC6DF0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF0E0);
  }

  return result;
}

unint64_t sub_1D2620118()
{
  result = qword_1EC6DF148;
  if (!qword_1EC6DF148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF140);
    sub_1D26201D0();
    sub_1D22BB9D8(&unk_1ED89D2A0, &qword_1EC6DEB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF148);
  }

  return result;
}

unint64_t sub_1D26201D0()
{
  result = qword_1EC6DF150;
  if (!qword_1EC6DF150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF158);
    sub_1D22BB9D8(&qword_1EC6D7700, &qword_1EC6D9D30);
    sub_1D22BB9D8(&qword_1ED89D2D8, &qword_1EC6DA278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF150);
  }

  return result;
}

uint64_t sub_1D26202E4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CharacterEditingView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1D2620358()
{
  result = qword_1EC6D7758;
  if (!qword_1EC6D7758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF170);
    sub_1D22BB9D8(&qword_1EC6D75C8, &qword_1EC6DF180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7758);
  }

  return result;
}

unint64_t sub_1D2620408()
{
  result = qword_1EC6D7750;
  if (!qword_1EC6D7750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF160);
    sub_1D22BB9D8(&qword_1EC6D75C0, &qword_1EC6DF188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7750);
  }

  return result;
}

uint64_t sub_1D26204B8(uint64_t a1)
{
  v3 = *(type metadata accessor for CharacterEditingView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1D261CD00(a1, v4);
}

unint64_t sub_1D2620598()
{
  result = qword_1EC6D8AB8;
  if (!qword_1EC6D8AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E33C0);
    sub_1D2620AA4(&qword_1EC6D8AC0, type metadata accessor for ImageGenerationPerson.SkinTone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8AB8);
  }

  return result;
}

uint64_t sub_1D262064C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26206B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D262071C()
{
  result = qword_1EC6D7AD8;
  if (!qword_1EC6D7AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF208);
    sub_1D26207D4();
    sub_1D22BB9D8(&qword_1EC6D7950, &qword_1EC6DF218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7AD8);
  }

  return result;
}

unint64_t sub_1D26207D4()
{
  result = qword_1EC6D7BD0;
  if (!qword_1EC6D7BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF220);
    sub_1D24CA41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7BD0);
  }

  return result;
}

uint64_t sub_1D26208CC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CharacterEditingView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1D2620968()
{
  result = qword_1EC6D7DE0;
  if (!qword_1EC6D7DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF278);
    sub_1D22BB9D8(&qword_1EC6D8518, &qword_1EC6DF288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7DE0);
  }

  return result;
}

unint64_t sub_1D2620A20()
{
  result = qword_1EC6D8AC8;
  if (!qword_1EC6D8AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF280);
    sub_1D24925AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8AC8);
  }

  return result;
}

uint64_t sub_1D2620AA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2620AEC()
{
  result = qword_1EC6D7E80;
  if (!qword_1EC6D7E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF270);
    sub_1D2871798();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF280);
    sub_1D2620968();
    sub_1D2620A20();
    swift_getOpaqueTypeConformance2();
    sub_1D2620AA4(&qword_1EC6D8BD0, MEMORY[0x1E6969530]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7E80);
  }

  return result;
}

unint64_t sub_1D2620C84()
{
  result = qword_1EC6D7DD8;
  if (!qword_1EC6D7DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF298);
    sub_1D22BB9D8(&qword_1EC6D8520, &qword_1EC6DF2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7DD8);
  }

  return result;
}

uint64_t sub_1D2620D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF2D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_25()
{
  v1 = type metadata accessor for CharacterEditingView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2875E18();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  sub_1D2273818(*(v2 + v1[7]), *(v2 + v1[7] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D2621054(uint64_t a1)
{
  v4 = *(type metadata accessor for CharacterEditingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D261A438(a1, v6, v7, v1 + v5);
}

unint64_t sub_1D2621144()
{
  result = qword_1EC6DF388;
  if (!qword_1EC6DF388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF378);
    sub_1D22BB9D8(&qword_1ED89D378, &qword_1EC6DC0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF388);
  }

  return result;
}

unint64_t sub_1D26211FC()
{
  result = qword_1EC6DF390;
  if (!qword_1EC6DF390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF380);
    sub_1D22BB9D8(&qword_1EC6DF398, &qword_1EC6DF3A0);
    sub_1D22BB9D8(&qword_1EC6DF3A8, &qword_1EC6DF3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF390);
  }

  return result;
}

unint64_t sub_1D26212E0()
{
  result = qword_1EC6DF3C0;
  if (!qword_1EC6DF3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF3C8);
    sub_1D2621398();
    sub_1D22BB9D8(&qword_1EC6DF3F0, &qword_1EC6DF040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF3C0);
  }

  return result;
}

unint64_t sub_1D2621398()
{
  result = qword_1EC6DF3D0;
  if (!qword_1EC6DF3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF3D8);
    sub_1D22BB9D8(&qword_1EC6DF3E0, &qword_1EC6DF3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF3D0);
  }

  return result;
}

Swift::Void __swiftcall CharacterStorageManager.deleteAllCharacters()()
{
  v22[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2871538();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-v5];
  v7 = sub_1D28716B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2621EEC();
  (*(v8 + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F70], v0);
  sub_1D2871688();
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  sub_1D2871658();
  v13 = sub_1D2878068();

  v14 = [v12 directoryExistsAtPath_];

  if (v14)
  {
    v15 = [v11 defaultManager];
    v16 = sub_1D28715B8();
    v22[0] = 0;
    v17 = [v15 removeItemAtURL:v16 error:v22];

    if (v17)
    {
      v18 = *(v8 + 8);
      v19 = v22[0];
      v18(v10, v7);
    }

    else
    {
      v20 = v22[0];
      sub_1D28714B8();

      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }
  }

  else
  {
    (*(v8 + 8))(v10, v7);
  }
}

void *sub_1D26217A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v42 - v2;
  v49 = type metadata accessor for CharacterAsset();
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v42 - v5;
  v6 = sub_1D2871528();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2871538();
  v56 = *(v9 - 1);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = sub_1D28716B8();
  v58 = *(v18 - 8);
  v19 = v58;
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  v51 = v0;
  sub_1D2621EEC();
  v24 = v19[7];
  v24(v17, 1, 1, v18);
  (v56[13])(v11, *MEMORY[0x1E6968F70], v57);
  sub_1D2871688();
  v25 = [objc_opt_self() defaultManager];
  v26 = sub_1D28789D8();

  v27 = v58 + 1;
  v28 = v58[1];
  v28(v23, v18);
  if (!v26)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v57 = v26;
  sub_1D28789B8();
  sub_1D2871518();
  if (v59)
  {
    v56 = v27;
    v45 = (v58 + 4);
    v46 = v28;
    v44 = (v52 + 48);
    v58 = MEMORY[0x1E69E7CC0];
    v29 = v55;
    while (1)
    {
      if (swift_dynamicCast())
      {
        v24(v14, 0, 1, v18);
        (*v45)(v29, v14, v18);
        v32 = v29;
        v33 = v50;
        sub_1D262277C(v32, v50);
        v34 = v33;
        if ((*v44)(v33, 1, v49) != 1)
        {
          v35 = v47;
          sub_1D2626804(v33, v47, type metadata accessor for CharacterAsset);
          sub_1D2626740(v35, v48);
          v36 = v58;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_1D27CCE9C(0, v36[2] + 1, 1, v36);
          }

          v29 = v55;
          v37 = v36;
          v38 = v36[2];
          v58 = v37;
          v39 = v37[3];
          v43 = v38 + 1;
          if (v38 >= v39 >> 1)
          {
            v58 = sub_1D27CCE9C(v39 > 1, v43, 1, v58);
          }

          sub_1D26267A4(v47, type metadata accessor for CharacterAsset);
          v46(v29, v18);
          v40 = v58;
          v58[2] = v43;
          sub_1D2626804(v48, v40 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v38, type metadata accessor for CharacterAsset);
          goto LABEL_7;
        }

        v29 = v55;
        v46(v55, v18);
        v30 = v34;
        v31 = &unk_1EC6DDDA0;
      }

      else
      {
        v24(v14, 1, 1, v18);
        v30 = v14;
        v31 = &qword_1EC6DA1B8;
      }

      sub_1D22BD238(v30, v31);
LABEL_7:
      sub_1D2871518();
      if (!v59)
      {
        goto LABEL_18;
      }
    }
  }

  v58 = MEMORY[0x1E69E7CC0];
LABEL_18:
  (*(v53 + 8))(v8, v54);

  return v58;
}

uint64_t CharacterStorageManager.__allocating_init(servicesFetcher:)()
{
  swift_allocObject();
  v0 = sub_1D26265FC();

  return v0;
}

uint64_t CharacterStorageManager.init(servicesFetcher:)()
{
  v0 = sub_1D26265FC();

  return v0;
}

uint64_t sub_1D2621EEC()
{
  v24[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D2873AA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D28716B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23[-v9];
  sub_1D26255D0(v7);
  sub_1D2873A78();
  sub_1D28715D8();
  (*(v1 + 8))(v3, v0);
  v11 = *(v5 + 8);
  v11(v7, v4);
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  sub_1D2871658();
  v14 = sub_1D2878068();

  v15 = [v13 directoryExistsAtPath_];

  if (v15)
  {
    goto LABEL_4;
  }

  v16 = [v12 defaultManager];
  v17 = sub_1D28715B8();
  v24[0] = 0;
  v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v24];

  if (v18)
  {
    v19 = v24[0];
LABEL_4:
    v20 = sub_1D2871658();
    v11(v10, v4);
    return v20;
  }

  v22 = v24[0];
  sub_1D28714B8();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1D2622204(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D28716B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CharacterAsset();
  sub_1D2622438(a1 + *(v6 + 24), v5);
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  sub_1D2871658();
  v9 = sub_1D2878068();

  v10 = [v8 directoryExistsAtPath_];

  if (!v10)
  {
    return (*(v3 + 8))(v5, v2);
  }

  v11 = [v7 defaultManager];
  v12 = sub_1D28715B8();
  v19[0] = 0;
  v13 = [v11 removeItemAtURL:v12 error:v19];

  if (v13)
  {
    v14 = *(v3 + 8);
    v15 = v19[0];
    return v14(v5, v2);
  }

  else
  {
    v17 = v19[0];
    sub_1D28714B8();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2622438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[0] = a1;
  v24[1] = a2;
  v2 = sub_1D2873AA8();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2871538();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  v12 = sub_1D28716B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2621EEC();
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v6 + 104))(v8, *MEMORY[0x1E6968F70], v5);
  v16 = v24[0];
  sub_1D2871688();
  if (*v16 == 3)
  {
    v17 = 0xEB00000000646569;
    v18 = 0x6669636570736E75;
  }

  else
  {
    v18 = sub_1D2873768();
    v17 = v19;
  }

  type metadata accessor for CharacterRecipe();
  v20 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  v22 = v21;
  v27 = v18;
  v28 = v17;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v20, v22);

  sub_1D2873A78();
  sub_1D28715D8();

  (*(v25 + 8))(v4, v26);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1D262277C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v232 = a2;
  v260 = sub_1D2873CB8();
  v277 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v274 = v207 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for CharacterRecipe();
  v230 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v211 = v207 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v210 = v207 - v6;
  v7 = type metadata accessor for PlaygroundImage();
  v236 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v209 = v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v214 = v207 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v219 = v207 - v12;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA7E8);
  MEMORY[0x1EEE9AC00](v267);
  v237 = v207 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v243 = v207 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v245 = v207 - v17;
  v264 = sub_1D2873AA8();
  v272 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v252 = v207 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v235 = v207 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v239 = v207 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v246 = v207 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v250 = v207 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v234 = v207 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v263 = v207 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v275 = v207 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v273 = v207 - v34;
  v249 = sub_1D28716B8();
  v35 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v265 = v207 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v244 = v207 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v207 - v40;
  v228 = sub_1D2871528();
  v227 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v43 = v207 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF3F8);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v213 = v207 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v225 = v207 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = v207 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v208 = v207 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v218 = v207 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v226 = v207 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v217 = v207 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v223 = v207 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = v207 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = v207 - v65;
  v67 = [objc_opt_self() defaultManager];
  v261 = a1;
  v68 = sub_1D28789D8();

  if (v68)
  {
    v69 = v236 + 56;
    v70 = *(v236 + 56);
    v241 = v66;
    v70(v66, 1, 1, v7);
    v224 = v63;
    v231 = v7;
    v222 = v69;
    v221 = v70;
    v70(v63, 1, 1, v7);
    v71 = *(v230 + 56);
    v220 = v50;
    v207[1] = v230 + 56;
    v207[0] = v71;
    v71(v50, 1, 1, v233);
    v216 = v68;
    sub_1D28789B8();
    v72 = v43;
    sub_1D2871518();
    v73 = v273;
    v74 = v274;
    v75 = v249;
    if (v279)
    {
      v76 = 0;
      v77 = (v35 + 56);
      v270 = (v35 + 32);
      v276 = (v35 + 8);
      v251 = (v272 + 16);
      v268 = (v272 + 56);
      v262 = (v272 + 48);
      v229 = (v272 + 32);
      v242 = (v272 + 8);
      v255 = (v35 + 16);
      v254 = v277 + 1;
      *(&v78 + 1) = 0xF000000000000000;
      v212 = xmmword_1D28809A0;
      *&v78 = 136315394;
      v238 = v78;
      v253 = v41;
      v271 = (v35 + 56);
      v272 = v72;
      while (1)
      {
        v79 = swift_dynamicCast();
        v80 = *v77;
        if ((v79 & 1) == 0)
        {
          v80(v73, 1, 1, v75);
          sub_1D22BD238(v73, &qword_1EC6DA1B8);
          goto LABEL_5;
        }

        v80(v73, 0, 1, v75);
        (*v270)(v41, v73, v75);
        v81 = sub_1D28716C8();
        if (v76)
        {
          v83 = v76;
          v76 = 0;
          v84 = v265;
          goto LABEL_9;
        }

        v258 = v81;
        v259 = v82;
        v277 = 0;
        sub_1D2871548();
        sub_1D2873A18();
        v101 = v275;
        sub_1D28739F8();
        v102 = v244;
        sub_1D28715C8();
        v257 = sub_1D2871598();
        v269 = v103;
        v248 = *v276;
        v248(v102, v75);
        sub_1D28710A8();
        swift_allocObject();
        v256 = sub_1D2871098();
        if (qword_1ED8A5308 != -1)
        {
          swift_once();
        }

        v104 = v264;
        v105 = __swift_project_value_buffer(v264, qword_1ED8A5310);
        v106 = v263;
        v247 = *v251;
        v247(v263, v105, v104);
        v266 = *v268;
        v266(v106, 0, 1, v104);
        v107 = *(v267 + 48);
        v108 = v245;
        sub_1D22BD1D0(v101, v245, &qword_1EC6DAE70);
        sub_1D22BD1D0(v106, v108 + v107, &qword_1EC6DAE70);
        v109 = *v262;
        v110 = (*v262)(v108, 1, v104);
        v111 = v246;
        if (v110 == 1)
        {
          break;
        }

        v117 = v234;
        sub_1D22BD1D0(v108, v234, &qword_1EC6DAE70);
        if (v109(v108 + v107, 1, v104) == 1)
        {
          sub_1D22BD238(v263, &qword_1EC6DAE70);
          (*v242)(v117, v104);
          v113 = v108;
LABEL_20:
          sub_1D22BD238(v113, &qword_1EC6DA7E8);
          v115 = v250;
          goto LABEL_21;
        }

        v127 = v252;
        (*v229)(v252, v108 + v107, v104);
        sub_1D262686C(&qword_1EC6DA7F8, MEMORY[0x1E69E8450]);
        v215 = sub_1D2877F98();
        v128 = *v242;
        v129 = v127;
        v111 = v246;
        (*v242)(v129, v104);
        sub_1D22BD238(v263, &qword_1EC6DAE70);
        v128(v117, v104);
        sub_1D22BD238(v108, &qword_1EC6DAE70);
        v115 = v250;
        v41 = v253;
        v114 = v241;
        if (v215)
        {
          goto LABEL_33;
        }

LABEL_21:
        v118 = v264;
        v247(v115, v105, v264);
        v266(v115, 0, 1, v118);
        v119 = *(v267 + 48);
        v120 = v243;
        sub_1D22BD1D0(v275, v243, &qword_1EC6DAE70);
        sub_1D22BD1D0(v115, v120 + v119, &qword_1EC6DAE70);
        if (v109(v120, 1, v118) == 1)
        {
          sub_1D22BD238(v115, &qword_1EC6DAE70);
          v121 = v109(v120 + v119, 1, v118);
          v75 = v249;
          if (v121 == 1)
          {
            sub_1D22BD238(v120, &qword_1EC6DAE70);
LABEL_43:
            if (v257 == v240[11] && v269 == v240[12] || (sub_1D2879618() & 1) != 0)
            {

              v147 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
              v148 = v258;
              v149 = v259;
              sub_1D22D6CF8(v258, v259);
              v150 = sub_1D28716D8();
              v151 = v147;
              v152 = v149;
              v153 = [v151 initWithData_];

              sub_1D22D6D60(v148, v152);
              if (!v153)
              {
                sub_1D23EE050();
                v83 = swift_allocError();
                *v169 = 0;
                swift_willThrow();

                sub_1D22D6D60(v148, v152);
                sub_1D22BD238(v275, &qword_1EC6DAE70);
                v76 = 0;
                v84 = v265;
                v41 = v253;
LABEL_64:
                v74 = v274;
LABEL_9:
                sub_1D2872708();
                (*v255)(v84, v261, v75);
                v85 = v83;
                v86 = sub_1D2873CA8();
                v87 = v75;
                v88 = sub_1D2878A18();

                if (os_log_type_enabled(v86, v88))
                {
                  v89 = v84;
                  v90 = swift_slowAlloc();
                  v269 = swift_slowAlloc();
                  v278 = v269;
                  *v90 = v238;
                  v91 = sub_1D2871558();
                  v93 = v92;
                  v277 = 0;
                  v94 = *v276;
                  (*v276)(v89, v87);
                  v95 = v91;
                  v41 = v253;
                  v96 = sub_1D23D7C84(v95, v93, &v278);

                  *(v90 + 4) = v96;
                  *(v90 + 12) = 2080;
                  swift_getErrorValue();
                  v97 = sub_1D2879748();
                  v99 = sub_1D23D7C84(v97, v98, &v278);

                  *(v90 + 14) = v99;
                  _os_log_impl(&dword_1D226E000, v86, v88, "Unable to load character at url: %s with error: %s", v90, 0x16u);
                  v100 = v269;
                  swift_arrayDestroy();
                  MEMORY[0x1D38A3520](v100, -1, -1);
                  MEMORY[0x1D38A3520](v90, -1, -1);

                  (*v254)(v274, v260);
                  v94(v41, v87);
                  v76 = v277;
                  v73 = v273;
                  v74 = v274;
                  v75 = v87;
                  v77 = v271;
                  v72 = v272;
                }

                else
                {

                  v116 = *v276;
                  (*v276)(v84, v87);
                  (*v254)(v74, v260);
                  v116(v41, v87);
                  v72 = v272;
                  v73 = v273;
                  v75 = v87;
                  v77 = v271;
                }

                goto LABEL_5;
              }

              v154 = sub_1D28716D8();
              v155 = CGImageSourceCreateWithData(v154, 0);

              v72 = v272;
              v41 = v253;
              if (v155)
              {
                v156 = CGImageSourceCopyPropertiesAtIndex(v155, 0, 0);
                v157 = v224;
                v158 = v277;
                if (v156)
                {
                  v159 = v156;
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v278 = 0;
                    sub_1D2877E88();
                    if (v278)
                    {
                      v269 = v278;
                      v160 = sub_1D2625974(v278);
                      v277 = v158;

                      goto LABEL_75;
                    }
                  }
                }

                v160 = 0;
LABEL_75:
                v75 = v249;
              }

              else
              {
                v160 = 0;
                v157 = v224;
              }

              v178 = v231;
              v179 = v217;
              v180 = &v217[v231[9]];
              *v180 = 0u;
              *(v180 + 1) = 0u;
              *&v179[v178[10]] = v212;
              v266(&v179[v178[11]], 1, 1, v118);
              *v179 = v153;
              v179[8] = 2;
              v181 = v153;
              [v181 imageOrientation];
              *(v179 + 6) = sub_1D2878C88();
              *(v179 + 2) = v160;
              *(v179 + 4) = 0;
              *(v179 + 5) = 0;
              v179[v178[12]] = 0;
              sub_1D2871808();

              sub_1D22D6D60(v258, v259);
              sub_1D22BD238(v275, &qword_1EC6DAE70);
              v248(v41, v75);
              sub_1D22BD238(v157, &unk_1EC6DE5A0);
              v221(v179, 0, 1, v178);
              v176 = v179;
              v177 = v157;
              goto LABEL_77;
            }

            goto LABEL_27;
          }

          goto LABEL_26;
        }

        sub_1D22BD1D0(v120, v111, &qword_1EC6DAE70);
        if (v109(v120 + v119, 1, v118) == 1)
        {
          sub_1D22BD238(v250, &qword_1EC6DAE70);
          (*v242)(v111, v118);
          v75 = v249;
LABEL_26:
          sub_1D22BD238(v120, &qword_1EC6DA7E8);
          goto LABEL_27;
        }

        v144 = v252;
        (*v229)(v252, v120 + v119, v118);
        sub_1D262686C(&qword_1EC6DA7F8, MEMORY[0x1E69E8450]);
        v145 = sub_1D2877F98();
        v146 = *v242;
        (*v242)(v144, v118);
        sub_1D22BD238(v250, &qword_1EC6DAE70);
        v146(v111, v118);
        sub_1D22BD238(v243, &qword_1EC6DAE70);
        v75 = v249;
        if (v145)
        {
          goto LABEL_43;
        }

LABEL_27:
        v122 = v239;
        sub_1D2873A48();
        v266(v122, 0, 1, v118);
        v123 = *(v267 + 48);
        v124 = v237;
        sub_1D22BD1D0(v275, v237, &qword_1EC6DAE70);
        sub_1D22BD1D0(v122, v124 + v123, &qword_1EC6DAE70);
        v125 = v109(v124, 1, v118);
        v126 = v235;
        if (v125 == 1)
        {
          sub_1D22BD238(v122, &qword_1EC6DAE70);
          if (v109(v124 + v123, 1, v118) != 1)
          {

            sub_1D22D6D60(v258, v259);

            goto LABEL_53;
          }

          sub_1D22BD238(v124, &qword_1EC6DAE70);
          v73 = v273;
        }

        else
        {
          sub_1D22BD1D0(v124, v235, &qword_1EC6DAE70);
          if (v109(v124 + v123, 1, v118) == 1)
          {

            sub_1D22D6D60(v258, v259);

            sub_1D22BD238(v239, &qword_1EC6DAE70);
            (*v242)(v126, v118);
LABEL_53:
            v73 = v273;
            v74 = v274;
            v77 = v271;
            v41 = v253;
            sub_1D22BD238(v124, &qword_1EC6DA7E8);
            v72 = v272;
            v76 = v277;
LABEL_54:
            sub_1D22BD238(v275, &qword_1EC6DAE70);
            v248(v41, v75);
            goto LABEL_5;
          }

          v161 = v252;
          (*v229)(v252, v124 + v123, v118);
          sub_1D262686C(&qword_1EC6DA7F8, MEMORY[0x1E69E8450]);
          v162 = sub_1D2877F98();
          v163 = *v242;
          (*v242)(v161, v118);
          sub_1D22BD238(v239, &qword_1EC6DAE70);
          v163(v126, v118);
          sub_1D22BD238(v237, &qword_1EC6DAE70);
          v73 = v273;
          if ((v162 & 1) == 0)
          {

            sub_1D22D6D60(v258, v259);

            v77 = v271;
            v72 = v272;
            v41 = v253;
            v76 = v277;
            v74 = v274;
            goto LABEL_54;
          }
        }

        v84 = v265;
        v41 = v253;
        v76 = v277;
        if (v257 == v240[7] && v269 == v240[8])
        {
        }

        else
        {
          v165 = sub_1D2879618();

          if ((v165 & 1) == 0)
          {

            sub_1D22D6D60(v258, v259);
            sub_1D22BD238(v275, &qword_1EC6DAE70);
            v248(v41, v75);
            v77 = v271;
            v72 = v272;
            v74 = v274;
            goto LABEL_5;
          }
        }

        sub_1D262686C(&qword_1EC6DF400, type metadata accessor for CharacterRecipe);
        v166 = v233;
        v167 = v258;
        v168 = v259;
        sub_1D2871088();
        if (v76)
        {
          sub_1D22BD238(v275, &qword_1EC6DAE70);
          sub_1D22D6D60(v167, v168);

          v83 = v76;
          v76 = 0;
          goto LABEL_64;
        }

        sub_1D22D6D60(v167, v168);
        sub_1D22BD238(v275, &qword_1EC6DAE70);
        v248(v41, v75);
        v170 = v220;
        sub_1D22BD238(v220, &qword_1EC6DF3F8);
        v171 = v225;
        (v207[0])(v225, 0, 1, v166);
        sub_1D22EC9BC(v171, v170, &qword_1EC6DF3F8);
        v77 = v271;
        v72 = v272;
        v74 = v274;
        v76 = 0;
LABEL_5:
        sub_1D2871518();
        if (!v279)
        {
          goto LABEL_78;
        }
      }

      sub_1D22BD238(v263, &qword_1EC6DAE70);
      v112 = v109(v108 + v107, 1, v104) == 1;
      v113 = v108;
      v114 = v241;
      if (!v112)
      {
        goto LABEL_20;
      }

      sub_1D22BD238(v113, &qword_1EC6DAE70);
      v115 = v250;
LABEL_33:
      if (v257 == v240[9] && v269 == v240[10] || (sub_1D2879618() & 1) != 0)
      {

        v130 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        v131 = v258;
        v132 = v259;
        sub_1D22D6CF8(v258, v259);
        v133 = sub_1D28716D8();
        v134 = v130;
        v135 = v132;
        v136 = [v134 initWithData_];

        sub_1D22D6D60(v131, v135);
        v137 = v264;
        if (!v136)
        {
          sub_1D23EE050();
          v83 = swift_allocError();
          *v164 = 0;
          swift_willThrow();

          sub_1D22D6D60(v131, v135);
          sub_1D22BD238(v275, &qword_1EC6DAE70);
          v76 = 0;
          v75 = v249;
          v84 = v265;
          goto LABEL_64;
        }

        v138 = sub_1D28716D8();
        v139 = CGImageSourceCreateWithData(v138, 0);

        v72 = v272;
        if (v139)
        {
          v140 = CGImageSourceCopyPropertiesAtIndex(v139, 0, 0);
          v141 = v277;
          if (v140)
          {
            v142 = v140;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v278 = 0;
              sub_1D2877E88();
              if (v278)
              {
                v269 = v278;
                v143 = sub_1D2625974(v278);
                v277 = v141;

                goto LABEL_72;
              }
            }
          }
        }

        v143 = 0;
LABEL_72:
        v172 = v231;
        v173 = v223;
        v174 = &v223[v231[9]];
        *v174 = 0u;
        *(v174 + 1) = 0u;
        *&v173[v172[10]] = v212;
        v266(&v173[v172[11]], 1, 1, v137);
        *v173 = v136;
        v173[8] = 2;
        v175 = v136;
        [v175 imageOrientation];
        *(v173 + 6) = sub_1D2878C88();
        *(v173 + 2) = v143;
        *(v173 + 4) = 0;
        *(v173 + 5) = 0;
        v173[v172[12]] = 0;
        sub_1D2871808();

        sub_1D22D6D60(v258, v259);
        sub_1D22BD238(v275, &qword_1EC6DAE70);
        v75 = v249;
        v248(v41, v249);
        sub_1D22BD238(v114, &unk_1EC6DE5A0);
        v221(v173, 0, 1, v172);
        v176 = v173;
        v177 = v114;
LABEL_77:
        sub_1D22EC9BC(v176, v177, &unk_1EC6DE5A0);
        v73 = v273;
        v74 = v274;
        v77 = v271;
        v76 = v277;
        goto LABEL_5;
      }

      goto LABEL_21;
    }

LABEL_78:
    (*(v227 + 8))(v72, v228);

    v182 = v226;
    sub_1D22EC9BC(v241, v226, &unk_1EC6DE5A0);
    v183 = *(v236 + 48);
    v184 = v231;
    if (v183(v182, 1, v231) == 1)
    {
      sub_1D22BD238(v220, &qword_1EC6DF3F8);
      sub_1D22BD238(v224, &unk_1EC6DE5A0);
      sub_1D22BD238(v182, &unk_1EC6DE5A0);
      v185 = v232;
LABEL_88:
      v199 = type metadata accessor for CharacterAsset();
      return (*(*(v199 - 8) + 56))(v185, 1, 1, v199);
    }

    v191 = v219;
    sub_1D2626804(v182, v219, type metadata accessor for PlaygroundImage);
    v192 = v218;
    sub_1D22EC9BC(v224, v218, &unk_1EC6DE5A0);
    v193 = v183(v192, 1, v184);
    v185 = v232;
    v194 = v220;
    if (v193 == 1)
    {
      sub_1D26267A4(v191, type metadata accessor for PlaygroundImage);
      sub_1D22BD238(v194, &qword_1EC6DF3F8);
      v195 = &unk_1EC6DE5A0;
      v196 = v192;
LABEL_87:
      sub_1D22BD238(v196, v195);
      goto LABEL_88;
    }

    v197 = v214;
    sub_1D2626804(v192, v214, type metadata accessor for PlaygroundImage);
    v198 = v213;
    sub_1D22EC9BC(v194, v213, &qword_1EC6DF3F8);
    if ((*(v230 + 48))(v198, 1, v233) == 1)
    {
      sub_1D26267A4(v197, type metadata accessor for PlaygroundImage);
      sub_1D26267A4(v191, type metadata accessor for PlaygroundImage);
      v195 = &qword_1EC6DF3F8;
      v196 = v198;
      goto LABEL_87;
    }

    v200 = v210;
    sub_1D2626804(v198, v210, type metadata accessor for CharacterRecipe);
    v201 = v209;
    sub_1D2626804(v191, v209, type metadata accessor for PlaygroundImage);
    v202 = v197;
    v203 = v208;
    sub_1D2626804(v202, v208, type metadata accessor for PlaygroundImage);
    v221(v203, 0, 1, v184);
    v204 = v200;
    v205 = v211;
    sub_1D2626804(v204, v211, type metadata accessor for CharacterRecipe);
    sub_1D2626804(v201, v185, type metadata accessor for PlaygroundImage);
    v206 = type metadata accessor for CharacterAsset();
    sub_1D22EC9BC(v203, v185 + v206[5], &unk_1EC6DE5A0);
    sub_1D2626804(v205, v185 + v206[6], type metadata accessor for CharacterRecipe);
    *(v185 + v206[7]) = 0;
    return (*(*(v206 - 1) + 56))(v185, 0, 1, v206);
  }

  else
  {
    v186 = type metadata accessor for CharacterAsset();
    v187 = *(*(v186 - 8) + 56);
    v188 = v186;
    v189 = v232;

    return v187(v189, 1, 1, v188);
  }
}

uint64_t sub_1D2624C0C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for PlaygroundImage();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_1D2873AA8();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = sub_1D28716B8();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2624E18, 0, 0);
}

uint64_t sub_1D2624E18()
{
  v1 = v0[18];
  v2 = v0[3];
  sub_1D2871108();
  swift_allocObject();
  sub_1D28710F8();
  v3 = type metadata accessor for CharacterAsset();
  sub_1D2622438(v2 + *(v3 + 24), v1);
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  sub_1D2871658();
  v6 = sub_1D2878068();

  v7 = [v5 directoryExistsAtPath_];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [v4 defaultManager];
  v9 = sub_1D28715B8();
  v0[2] = 0;
  v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v0 + 2];

  v11 = v0[2];
  if (v10)
  {
    v12 = v11;
LABEL_4:
    if (qword_1ED8A5308 != -1)
    {
      swift_once();
    }

    v13 = v0[17];
    v14 = v0[12];
    v16 = v0[9];
    v15 = v0[10];
    v17 = __swift_project_value_buffer(v16, qword_1ED8A5310);
    (*(v15 + 16))(v14, v17, v16);
    sub_1D28715D8();
    sub_1D262ECCC(v13, v14);
    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[5];
    v21 = v0[3];
    sub_1D28715D8();
    sub_1D22BD1D0(v21 + *(v3 + 20), v20, &unk_1EC6DE5A0);
    if ((*(v18 + 48))(v20, 1, v19) == 1)
    {
      sub_1D22BD238(v0[5], &unk_1EC6DE5A0);
    }

    else
    {
      v24 = v0[16];
      v25 = v0[12];
      sub_1D2626804(v0[5], v0[8], type metadata accessor for PlaygroundImage);
      sub_1D262ECCC(v24, v25);
      sub_1D26267A4(v0[8], type metadata accessor for PlaygroundImage);
    }

    v26 = v0[10];
    v27 = v0[11];
    v28 = v0[9];
    sub_1D2873A48();
    sub_1D28715D8();
    v42 = *(v26 + 8);
    v42(v27, v28);
    type metadata accessor for CharacterRecipe();
    sub_1D262686C(&qword_1EC6DF410, type metadata accessor for CharacterRecipe);
    v29 = sub_1D28710E8();
    v31 = v30;
    sub_1D28716F8();
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[15];
    v35 = v0[16];
    v36 = v0[13];
    v37 = v0[14];
    v41 = v0[12];
    v40 = v0[9];

    sub_1D22D6D60(v29, v31);
    v38 = *(v37 + 8);
    v38(v34, v36);
    v38(v35, v36);
    v38(v33, v36);
    v42(v41, v40);
    v38(v32, v36);

    v39 = v0[1];

    return v39();
  }

  v22 = v11;
  sub_1D28714B8();

  swift_willThrow();

  return swift_unexpectedError();
}

void sub_1D26255D0(uint64_t a1@<X8>)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D28716B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  os_unfair_lock_lock((v7 + 20));
  v8 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 20));
  if (v8 == 1 && (v9 = [objc_opt_self() defaultManager], v10 = sub_1D2878068(), v11 = objc_msgSend(v9, sel_containerURLForSecurityApplicationGroupIdentifier_, v10), v9, v10, v11))
  {
    sub_1D2871638();

    (*(v4 + 32))(a1, v6, v3);
  }

  else
  {
    v12 = [objc_opt_self() defaultManager];
    v18[0] = 0;
    v13 = [v12 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v18];

    v14 = v18[0];
    if (v13)
    {
      sub_1D2871638();
      v15 = v14;
    }

    else
    {
      v16 = v18[0];
      sub_1D28714B8();

      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }
  }
}

uint64_t CharacterStorageManager.deinit()
{

  return v0;
}

uint64_t CharacterStorageManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2625920@<X0>(uint64_t *a1@<X8>)
{
  swift_allocObject();
  v2 = sub_1D26265FC();

  *a1 = v2;
  return result;
}

unint64_t *sub_1D2625974(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  sub_1D2870F78();
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D2625AD4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D2625CF0(v8, v4, v2);
  result = MEMORY[0x1D38A3520](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1D2625AD4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = result;
  v24 = 0;
  v3 = 0;
  v29 = a3;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(v29 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_1D23C3EE4(*(v29 + 56) + 32 * v12, v28);
    v26[0] = v14;
    v26[1] = v15;
    sub_1D23C3EE4(v28, &v27);
    v16 = qword_1EC6D8D50;
    v17 = swift_bridgeObjectRetain_n();
    if (v16 != -1)
    {
      v17 = swift_once();
    }

    v25[0] = v14;
    v25[1] = v15;
    MEMORY[0x1EEE9AC00](v17);
    v21[2] = v25;
    v19 = sub_1D286430C(sub_1D234ABBC, v21, v18);
    sub_1D22BD238(v26, &qword_1EC6DF408);
    __swift_destroy_boxed_opaque_existential_0(v28);

    if (v19)
    {
      *(v23 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v24++, 1))
      {
        goto LABEL_19;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_1D26263AC(v23, v22, v24, v29);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t *sub_1D2625CF0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D2625AD4(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1D2625D68(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = sub_1D2871818();
  v7 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v10;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {
    sub_1D2870F78();
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAE8);
  result = sub_1D28793F8();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_1D262686C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
    v42 = v23;
    sub_1D2870F78();
    result = sub_1D2877EF8();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
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

uint64_t sub_1D2626108(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    sub_1D2870F78();
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB48);
  result = sub_1D28793F8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v28 = v4;
  v29 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    sub_1D28797D8();
    sub_1D2871818();
    sub_1D262686C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
    sub_1D2870F78();
    v31 = v18;
    sub_1D2877F08();
    result = sub_1D2879828();
    v9 = v29;
    v19 = -1 << *(v29 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v29 + 48) + 8 * v22) = v17;
    *(*(v29 + 56) + 8 * v22) = v31;
    ++*(v29 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v28;
    v10 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
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

uint64_t sub_1D26263AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    sub_1D2870F78();
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB10);
  result = sub_1D28793F8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1D23C3EE4(v17 + 32 * v16, v33);
    sub_1D23C3FAC(v33, v32);
    sub_1D28797D8();
    sub_1D2870F68();
    sub_1D2877F38();
    result = sub_1D2879828();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1D23C3FAC(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1D26265FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF418);
  v1 = swift_allocObject();
  *(v1 + 20) = 0;
  *(v1 + 16) = 1;
  *(v0 + 16) = v1;
  strcpy((v0 + 24), "GenericPeople");
  *(v0 + 38) = -4864;
  *(v0 + 40) = 0xD000000000000021;
  *(v0 + 48) = 0x80000001D28B2BE0;
  *(v0 + 56) = 0x657069636572;
  *(v0 + 64) = 0xE600000000000000;
  *(v0 + 72) = 0x6D692D696A6F6D65;
  *(v0 + 80) = 0xEB00000000656761;
  *(v0 + 88) = 0xD000000000000010;
  *(v0 + 96) = 0x80000001D28BE700;
  return v0;
}

uint64_t sub_1D2626740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D26267A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2626804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D262686C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D26268E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = sub_1D2876088();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28756B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF420);
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = sub_1D2877848();
  v14 = v13;
  sub_1D2626C70(a1, &v39);
  v35 = v41;
  v36 = v42;
  v33 = v39;
  v34 = v40;
  v38[2] = v41;
  v38[3] = v42;
  v38[4] = v43;
  v38[1] = v40;
  v37 = v43;
  v38[0] = v39;
  sub_1D2627034(&v33, &v27);
  sub_1D22BD238(v38, &qword_1EC6DF428);
  v30 = v35;
  v31 = v36;
  v32 = v37;
  v28 = v33;
  v29 = v34;
  *&v27 = v12;
  *(&v27 + 1) = v14;
  (*(v5 + 104))(v7, *MEMORY[0x1E697F3A0], v4);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF430);
  v16 = sub_1D26270A4();
  sub_1D28768A8();
  (*(v5 + 8))(v7, v4);
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v39 = v27;
  v40 = v28;
  sub_1D22BD238(&v39, &qword_1EC6DF430);
  v17 = v23;
  sub_1D2876058();
  *&v27 = v15;
  *(&v27 + 1) = v16;
  swift_getOpaqueTypeConformance2();
  v18 = v25;
  v19 = v21;
  sub_1D2876BE8();
  (*(v24 + 8))(v17, v26);
  (*(v22 + 8))(v11, v19);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF440);
  *(v18 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1D2626C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D28771B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D28739B8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel___observationRegistrar;
  v29 = a1;
  v10 = sub_1D2627108();
  v28 = v9;
  v24 = v10;
  sub_1D28719E8();

  v26 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex;
  sub_1D26286A8(*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex));
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v25 = qword_1ED8B0058;
  sub_1D2873988();
  sub_1D2877238();
  v23 = *MEMORY[0x1E6981630];
  v22 = *(v5 + 104);
  v22(v7);
  v27 = sub_1D2877228();

  v11 = *(v5 + 8);
  v20 = v4;
  v21 = v11;
  v11(v7, v4);
  swift_getKeyPath();
  v29 = a1;
  sub_1D28719E8();

  v26 = *(a1 + v26);
  swift_getKeyPath();
  v29 = a1;
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex;
  sub_1D26286A8(*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex));
  sub_1D2873988();
  sub_1D2877238();
  v13 = v20;
  (v22)(v7, v23, v20);
  v14 = sub_1D2877228();

  v21(v7, v13);
  v15 = sub_1D2877958();
  swift_getKeyPath();
  v29 = a1;
  sub_1D28719E8();

  v17 = *(a1 + v12);
  *a2 = v27;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  v18 = v26;
  *(a2 + 24) = 0;
  *(a2 + 32) = v18;
  *(a2 + 40) = v14;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 57) = 1;
  *(a2 + 64) = v15;
  *(a2 + 72) = v17;
  return result;
}

uint64_t sub_1D2627034(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D26270A4()
{
  result = qword_1EC6DF438;
  if (!qword_1EC6DF438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF438);
  }

  return result;
}

unint64_t sub_1D2627108()
{
  result = qword_1EC6D83A8;
  if (!qword_1EC6D83A8)
  {
    type metadata accessor for AppearanceCellViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D83A8);
  }

  return result;
}

unint64_t sub_1D2627160()
{
  result = qword_1EC6DF448;
  if (!qword_1EC6DF448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF430);
    sub_1D26270A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D250C854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF448);
  }

  return result;
}

uint64_t PersonAttributeOption.id.getter()
{
  v1 = *v0;
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D26272B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v7 = sub_1D28795C8();
  v8 = v5;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v3, v4);

  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t sub_1D2627340()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D2886B90;
  if (qword_1EC6D8D48 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = qword_1EC6E3F30;
  v2 = qword_1EC6E3F38;
  v3 = qword_1EC6E3F40;
  *(v0 + 32) = qword_1EC6E3F28;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0x7265696C727543;
  *(v0 + 72) = 0xE700000000000000;
  *(v0 + 80) = 0x7275632068746977;
  *(v0 + 88) = 0xEF7269616820796CLL;
  *(v0 + 96) = 0x726569766157;
  *(v0 + 104) = 0xE600000000000000;
  strcpy((v0 + 112), "with wavy hair");
  *(v0 + 127) = -18;
  *(v0 + 128) = 1684824386;
  *(v0 + 136) = 0xE400000000000000;
  *(v0 + 144) = 0xD00000000000001DLL;
  *(v0 + 152) = 0x80000001D28BE740;
  *(v0 + 160) = 0x7468676961727453;
  *(v0 + 168) = 0xEA00000000007265;
  *(v0 + 176) = 0xD000000000000012;
  *(v0 + 184) = 0x80000001D28BE760;
  *(v0 + 192) = 0x726574726F6853;
  *(v0 + 200) = 0xE700000000000000;
  *(v0 + 208) = 0x6F68732068746977;
  *(v0 + 216) = 0xEF72696168207472;
  *(v0 + 224) = 0x7265676E6F4CLL;
  *(v0 + 232) = 0xE600000000000000;
  strcpy((v0 + 240), "with long hair");
  *(v0 + 255) = -18;
  *(v0 + 256) = 1869768257;
  *(v0 + 264) = 0xE400000000000000;
  strcpy((v0 + 272), "with an afro");
  *(v0 + 285) = 0;
  *(v0 + 286) = -5120;
  *(v0 + 288) = 0x736469617242;
  *(v0 + 296) = 0xE600000000000000;
  *(v0 + 304) = 0xD000000000000011;
  *(v0 + 312) = 0x80000001D28BE780;
  *(v0 + 320) = 0x636F6C6461657244;
  *(v0 + 328) = 0xEA0000000000736BLL;
  *(v0 + 336) = 0x6572642068746977;
  *(v0 + 344) = 0xEF736B636F6C6461;
  off_1EC6DF450 = v0;
  sub_1D2870F68();

  return sub_1D2870F68();
}

uint64_t sub_1D26275B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D28800F0;
  if (qword_1EC6D8D48 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = qword_1EC6E3F30;
  v2 = qword_1EC6E3F38;
  v3 = qword_1EC6E3F40;
  *(v0 + 32) = qword_1EC6E3F28;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0x616542206C6C7546;
  *(v0 + 72) = 0xEA00000000006472;
  *(v0 + 80) = 0xD000000000000011;
  *(v0 + 88) = 0x80000001D28BE7A0;
  *(v0 + 96) = 0x656574616F47;
  *(v0 + 104) = 0xE600000000000000;
  *(v0 + 112) = 0xD000000000000012;
  *(v0 + 120) = 0x80000001D28BE7C0;
  *(v0 + 128) = 0x656863617473754DLL;
  *(v0 + 136) = 0xE800000000000000;
  *(v0 + 144) = 0xD000000000000014;
  *(v0 + 152) = 0x80000001D28BE7E0;
  qword_1EC6DF458 = v0;
  sub_1D2870F68();

  return sub_1D2870F68();
}

uint64_t sub_1D262770C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D28838F0;
  if (qword_1EC6D8D48 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  v1 = qword_1EC6E3F30;
  v2 = qword_1EC6E3F38;
  v3 = qword_1EC6E3F40;
  *(v0 + 32) = qword_1EC6E3F28;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0x7373616C676E7553;
  *(v0 + 72) = 0xEA00000000007365;
  *(v0 + 80) = 0x6E75732068746977;
  *(v0 + 88) = 0xEF73657373616C67;
  *(v0 + 96) = 0x73657373616C47;
  *(v0 + 104) = 0xE700000000000000;
  *(v0 + 112) = 0xD000000000000019;
  *(v0 + 120) = 0x80000001D28BE800;
  qword_1EC6DF460 = v0;
  sub_1D2870F68();

  return sub_1D2870F68();
}

ImagePlaygroundInternal::PersonAttribute_optional __swiftcall PersonAttribute.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PersonAttributeOption.isDefaultOption.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = qword_1EC6D8D48;
  sub_1D2870F68();
  if (v3 != -1)
  {
    swift_once();
  }

  if (v2 == qword_1EC6E3F28 && v1 == qword_1EC6E3F30)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D2879618();
  }

  return v5 & 1;
}

void sub_1D26279BC()
{
  qword_1EC6E3F28 = 0x676E616843206F4ELL;
  qword_1EC6E3F30 = 0xE900000000000065;
  qword_1EC6E3F38 = 0;
  qword_1EC6E3F40 = 0xE000000000000000;
}

uint64_t static PersonAttributeOption.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D2879618(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D2879618();
    }
  }

  return result;
}

uint64_t sub_1D2627A90()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1D2627ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D2879618() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D28BE720 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2879618();

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

uint64_t sub_1D2627BAC(uint64_t a1)
{
  v2 = sub_1D2627DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2627BE8(uint64_t a1)
{
  v2 = sub_1D2627DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonAttributeOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF468);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2627DB8();
  sub_1D2879888();
  v12 = 0;
  v8 = v10[3];
  sub_1D2879578();
  if (!v8)
  {
    v11 = 1;
    sub_1D2879578();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D2627DB8()
{
  result = qword_1EC6DF470;
  if (!qword_1EC6DF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF470);
  }

  return result;
}

uint64_t PersonAttributeOption.hash(into:)()
{
  sub_1D2877F38();

  return sub_1D2877F38();
}

uint64_t PersonAttributeOption.hashValue.getter()
{
  sub_1D28797D8();
  sub_1D2877F38();
  sub_1D2877F38();
  return sub_1D2879828();
}

uint64_t PersonAttributeOption.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF478);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2627DB8();
  sub_1D2879868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_1D28794E8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1D28794E8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;
  sub_1D2870F68();
  sub_1D2870F68();
  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D26280C4()
{
  sub_1D28797D8();
  sub_1D2877F38();
  sub_1D2877F38();
  return sub_1D2879828();
}

uint64_t sub_1D262812C()
{
  sub_1D2877F38();

  return sub_1D2877F38();
}

uint64_t sub_1D262817C()
{
  sub_1D28797D8();
  sub_1D2877F38();
  sub_1D2877F38();
  return sub_1D2879828();
}

unint64_t sub_1D26281E4()
{
  result = qword_1EC6DF480;
  if (!qword_1EC6DF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF480);
  }

  return result;
}

unint64_t sub_1D262823C()
{
  result = qword_1EC6DF488;
  if (!qword_1EC6DF488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF488);
  }

  return result;
}

unint64_t sub_1D26282A4()
{
  result = qword_1EC6DF498;
  if (!qword_1EC6DF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF498);
  }

  return result;
}

uint64_t sub_1D2628328(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D2879618(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D2879618();
    }
  }

  return result;
}

unint64_t sub_1D2628410()
{
  result = qword_1EC6DF4A0;
  if (!qword_1EC6DF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF4A0);
  }

  return result;
}

unint64_t sub_1D2628468()
{
  result = qword_1EC6DF4A8;
  if (!qword_1EC6DF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF4A8);
  }

  return result;
}

unint64_t sub_1D26284C0()
{
  result = qword_1EC6DF4B0;
  if (!qword_1EC6DF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF4B0);
  }

  return result;
}

uint64_t sub_1D2628514(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v12 = sub_1D28795C8();
  v14 = v6;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v2, v3);

  v8 = v12;
  v7 = v14;
  v13 = sub_1D28795C8();
  v15 = v9;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v4, v5);

  if (v8 == v13 && v7 == v15)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D2879618();
  }

  return v10 & 1;
}

unint64_t sub_1D262863C()
{
  result = qword_1EC6DF4C0;
  if (!qword_1EC6DF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF4C0);
  }

  return result;
}

uint64_t sub_1D26286A8(uint64_t a1)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_1D28737A8();
  v44 = *(v3 - 8);
  *&v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - v7;
  v9 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16) == 3)
  {
    goto LABEL_2;
  }

  v15 = sub_1D2873768();
  v17 = v16;
  if (v15 == sub_1D2873768() && v17 == v18)
  {

LABEL_7:
    v13 = 0xE700000000000000;
    v14 = 0x5F656C616D6546;
    goto LABEL_8;
  }

  v19 = sub_1D2879618();

  if (v19)
  {
    goto LABEL_7;
  }

  v25 = sub_1D2873768();
  v27 = v26;
  if (v25 == sub_1D2873768() && v27 == v28)
  {
  }

  else
  {
    v29 = sub_1D2879618();

    if ((v29 & 1) == 0)
    {
LABEL_2:
      v13 = 0xEC0000005F73756FLL;
      v14 = 0x6E79676F72646E41;
      goto LABEL_8;
    }
  }

  v13 = 0xE500000000000000;
  v14 = 0x5F656C614DLL;
LABEL_8:
  swift_getKeyPath();
  v49 = v2;
  sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
  sub_1D28719E8();

  v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone;
  swift_beginAccess();
  sub_1D24912B8(v2 + v20, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D22BD238(v8, &unk_1EC6E33C0);
    v21 = sub_1D23B8344(5) + 1;
    goto LABEL_25;
  }

  sub_1D249183C(v8, v12);
  v23 = v44;
  v22 = v45;
  (*(v44 + 32))(v5, v12, v45);
  v24 = (*(v23 + 88))(v5, v22);
  if (v24 == *MEMORY[0x1E69E01A0])
  {
    v21 = 1;
    goto LABEL_25;
  }

  if (v24 == *MEMORY[0x1E69E0188])
  {
    v21 = 2;
    goto LABEL_25;
  }

  if (v24 == *MEMORY[0x1E69E0178])
  {
    goto LABEL_18;
  }

  if (v24 == *MEMORY[0x1E69E0190])
  {
    v21 = 4;
  }

  else
  {
    if (v24 != *MEMORY[0x1E69E0180])
    {
      (*(v23 + 8))(v5, v22);
LABEL_18:
      v21 = 3;
      goto LABEL_25;
    }

    v21 = 5;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A50);
  v30 = swift_allocObject();
  v45 = xmmword_1D287F500;
  v31 = MEMORY[0x1E69E6530];
  *(v30 + 16) = xmmword_1D287F500;
  v32 = MEMORY[0x1E69E65A8];
  *(v30 + 56) = v31;
  *(v30 + 64) = v32;
  *(v30 + 32) = v21;
  v33 = sub_1D28780B8();
  v35 = v34;
  v47 = v14;
  v48 = v13;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v33, v35);

  sub_1D2870F68();
  MEMORY[0x1D38A0C50](95, 0xE100000000000000);

  v36 = v47;
  v37 = v48;
  result = swift_allocObject();
  *(result + 16) = v45;
  v39 = v46 + 1;
  if (__OFADD__(v46, 1))
  {
    __break(1u);
  }

  else
  {
    *(result + 56) = v31;
    *(result + 64) = v32;
    *(result + 32) = v39;
    v40 = sub_1D28780B8();
    v42 = v41;
    v47 = v36;
    v48 = v37;
    sub_1D2870F68();
    MEMORY[0x1D38A0C50](v40, v42);

    return v47;
  }

  return result;
}

uint64_t sub_1D2628C80(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
  sub_1D28719E8();

  return *(v2 + *a2);
}

uint64_t sub_1D2628D20@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone;
  swift_beginAccess();
  return sub_1D24912B8(v5 + v3, a1);
}

uint64_t sub_1D2628DE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone;
  swift_beginAccess();
  sub_1D24912B8(v1 + v6, v5);
  v7 = sub_1D26296F0(v5, a1);
  sub_1D22BD238(v5, &unk_1EC6E33C0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D262963C(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &unk_1EC6E33C0);
}

uint64_t sub_1D2628FCC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone;
  swift_beginAccess();
  sub_1D262963C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1D2629038(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2629144(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex) == a1)
  {
    result = sub_1D26294E0();
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D262925C(uint64_t a1, uint64_t a2)
{
  result = sub_1D26294E0();
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex) = a2;
  return result;
}

uint64_t sub_1D26292B0()
{
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__skinTone, &unk_1EC6E33C0);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppearanceCellViewModel()
{
  result = qword_1EC6D8398;
  if (!qword_1EC6D8398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26293C0()
{
  sub_1D2491788();
  if (v0 <= 0x3F)
  {
    sub_1D2871A28();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D26294B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2879188();
  *a1 = result;
  return result;
}

uint64_t sub_1D26294E0()
{
  swift_getKeyPath();
  sub_1D2629A1C(&qword_1EC6D83A8, type metadata accessor for AppearanceCellViewModel);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__previousActiveindex) != *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D262963C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D26296AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = sub_1D26294E0();
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AppearanceCellViewModel__activeIndex) = v2;
  return result;
}

uint64_t sub_1D26296F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson.SkinTone();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC108);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v19 - v12;
  v15 = *(v14 + 56);
  sub_1D24912B8(a1, v19 - v12);
  sub_1D24912B8(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D22BD238(v13, &unk_1EC6E33C0);
      v17 = 0;
      return v17 & 1;
    }

LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6DC108);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D24912B8(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D24917E0(v10);
    goto LABEL_6;
  }

  sub_1D249183C(&v13[v15], v7);
  sub_1D28737A8();
  sub_1D2629A1C(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v19[2] == v19[0] && v19[3] == v19[1])
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_1D2879618() ^ 1;
  }

  sub_1D24917E0(v7);

  sub_1D24917E0(v10);
  sub_1D22BD238(v13, &unk_1EC6E33C0);
  return v17 & 1;
}

uint64_t sub_1D2629A1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2629A7C()
{
  swift_getKeyPath();
  sub_1D2629EB8();
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D2629B14()
{
  swift_getKeyPath();
  sub_1D2629EB8();
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D2629B88(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  sub_1D2870F78();
}

uint64_t sub_1D2629BC4()
{
  swift_getKeyPath();
  sub_1D2629EB8();
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong() && (v1 = *(v0 + 24), v2 = swift_getObjectType(), LOBYTE(v1) = (*(v1 + 8))(v2, v1), swift_unknownObjectRelease(), (v1 & 1) != 0))
  {
    v3 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      v3 = (*(v4 + 16))(ObjectType, v4);
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_1D2629CFC()
{
  sub_1D22729C0(v0 + 16);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FeedbackSectionViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeedbackSectionViewModel()
{
  result = qword_1ED8A0018;
  if (!qword_1ED8A0018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2629E04()
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

unint64_t sub_1D2629EB8()
{
  result = qword_1ED8A0028;
  if (!qword_1ED8A0028)
  {
    type metadata accessor for FeedbackSectionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0028);
  }

  return result;
}

uint64_t sub_1D2629F60(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v18 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_1D2871818();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhotoAssetCacheKey();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18 - v14;
  LOBYTE(a3) = *a3;
  (*(v9 + 16))(v11, a2, v8, v13);
  v19 = a3;
  sub_1D262A168(v11, &v19, v15);
  v16 = v18;
  sub_1D247E07C(v18, v7);
  sub_1D27EF1BC(v7, v15);
  (*(v9 + 8))(a2, v8);
  return sub_1D25042E8(v16);
}

uint64_t sub_1D262A168@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1D2871818();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for PhotoAssetCacheKey();
  *(a3 + *(result + 36)) = v5;
  return result;
}

BOOL sub_1D262A1FC(uint64_t a1, uint64_t a2)
{
  if (_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0())
  {
    v4 = *(type metadata accessor for PhotoAssetCacheKey() + 36);
    v8 = *(a1 + v4);
    v7 = *(a2 + v4);
    return static _PhotoAsset.ImageType.== infix(_:_:)(&v8, &v7);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D262A284()
{
  sub_1D2871818();
  sub_1D24FEF24();
  sub_1D2877F08();
  type metadata accessor for _PhotoAsset.ImageType();
  return _PhotoAsset.ImageType.hash(into:)();
}

uint64_t sub_1D262A300()
{
  sub_1D28797D8();
  sub_1D262A284();
  return sub_1D2879828();
}

uint64_t sub_1D262A350()
{
  sub_1D28797D8();
  sub_1D262A284();
  return sub_1D2879828();
}

uint64_t sub_1D262A3A0()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D2878B88();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1D262A404()
{
  sub_1D262A3A0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D262A450()
{
  result = sub_1D2871818();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for _PhotoAsset.ImageType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D262A534@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a1;
  v16 = a3;
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotoAssetCacheKey();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  LOBYTE(a2) = *a2;
  (*(v5 + 16))(v7, v15, v4, v10);
  v17 = a2;
  sub_1D262A168(v7, &v17, v12);
  sub_1D27EF008(v16);
  return (*(v9 + 8))(v12, v8);
}

size_t sub_1D262A704@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D262B684();
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = v2;
  v4 = sub_1D262B684();
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  Width = CGImageGetWidth(v3);
  if (CGImageGetWidth(v5) >= Width)
  {
    Height = CGImageGetHeight(v3);
    if (CGImageGetHeight(v5) >= Height)
    {
      v20 = v3;
      goto LABEL_17;
    }
  }

  v8 = CGImageGetWidth(v3);
  result = CGImageGetWidth(v5);
  v10 = v8 - result;
  if (__OFSUB__(v8, result))
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = CGImageGetHeight(v3);
  result = CGImageGetHeight(v5);
  if (__OFSUB__(v11, result))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = (v10 & ~(v10 >> 63)) >> 1;
  v13 = ((v11 - result) & ~((v11 - result) >> 63)) >> 1;
  v14 = CGImageGetWidth(v3);
  v15 = CGImageGetWidth(v5);
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = CGImageGetHeight(v3);
  v18 = CGImageGetHeight(v5);
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v33.origin.x = v12;
  v33.origin.y = v13;
  v33.size.width = v16;
  v33.size.height = v19;
  v20 = CGImageCreateWithImageInRect(v3, v33);
  if (!v20)
  {

LABEL_15:
LABEL_20:
    v31 = type metadata accessor for PlaygroundImage();
    v27 = *(*(v31 - 8) + 56);
    v30 = v31;
    v28 = a1;
    v29 = 1;
    goto LABEL_21;
  }

LABEL_17:
  v21 = v20;
  v22 = sub_1D28788E8();

  if (!v22)
  {

    goto LABEL_20;
  }

  v23 = type metadata accessor for PlaygroundImage();
  v24 = (a1 + v23[9]);
  *v24 = 0u;
  v24[1] = 0u;
  *(a1 + v23[10]) = xmmword_1D28809A0;
  v25 = v23[11];
  v26 = sub_1D2873AA8();
  (*(*(v26 - 8) + 56))(a1 + v25, 1, 1, v26);
  *a1 = v22;
  *(a1 + 8) = 0;
  *(a1 + 24) = 1;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + v23[12]) = 0;
  sub_1D2871808();

  v27 = *(*(v23 - 1) + 56);
  v28 = a1;
  v29 = 0;
  v30 = v23;
LABEL_21:

  return v27(v28, v29, 1, v30);
}

uint64_t sub_1D262A994@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D262B684();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D2878928();

    if (v6)
    {
      v7 = *(v2 + 24);
      v8 = type metadata accessor for PlaygroundImage();
      v9 = (a1 + v8[9]);
      *v9 = 0u;
      v9[1] = 0u;
      *(a1 + v8[10]) = xmmword_1D28809A0;
      v10 = v8[11];
      v11 = sub_1D2873AA8();
      (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
      *a1 = v6;
      *(a1 + 8) = 0;
      *(a1 + 24) = v7;
      *(a1 + 16) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + v8[12]) = 0;
      sub_1D2871808();
      v12 = *(*(v8 - 1) + 56);
      v13 = a1;
      v14 = 0;
      v15 = v8;
      goto LABEL_20;
    }
  }

  v16 = *v2;
  if (*(v2 + 8) > 1u)
  {
    if (*(v2 + 8) == 2)
    {
      v18 = v16;
      v19 = [v18 CIImage];
      if (v19)
      {
        v20 = v19;

LABEL_14:
        v21 = [objc_opt_self() whiteImage];
        [v20 extent];
        v22 = [v21 imageByCroppingToRect_];

        v23 = [v20 imageByCompositingOverImage_];
        v24 = type metadata accessor for PlaygroundImage();
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        v25 = (a1 + v24[9]);
        *v25 = 0u;
        v25[1] = 0u;
        *(a1 + v24[10]) = xmmword_1D28809A0;
        v26 = v24[11];
        v27 = sub_1D2873AA8();
        (*(*(v27 - 8) + 56))(a1 + v26, 1, 1, v27);
        *a1 = v23;
        *(a1 + 8) = 1;
        *(a1 + 24) = 1;
        *(a1 + 16) = 0;
        *(a1 + v24[12]) = 0;
        sub_1D2871808();

        v12 = *(*(v24 - 1) + 56);
        v13 = a1;
        v14 = 0;
        v15 = v24;
        goto LABEL_20;
      }

      v28 = [v18 CGImage];
      if (v28)
      {
        v29 = v28;
        v20 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];

        if (v20)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      goto LABEL_19;
    }

    v17 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVImageBuffer_];
  }

  else
  {
    if (*(v2 + 8))
    {
      v17 = v16;
LABEL_13:
      v20 = v17;
      goto LABEL_14;
    }

    v17 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  }

  if (v17)
  {
    goto LABEL_13;
  }

LABEL_19:
  v30 = type metadata accessor for PlaygroundImage();
  v12 = *(*(v30 - 8) + 56);
  v15 = v30;
  v13 = a1;
  v14 = 1;
LABEL_20:

  return v12(v13, v14, 1, v15);
}

id sub_1D262AD28()
{
  if (*(v0 + 24) == 1 && *(v0 + 8) == 3)
  {
    v1 = *v0;
    v2 = *v0;
    return v1;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    v5 = sub_1D262B684();
    if (v5)
    {
      v6 = v5;
      v7 = sub_1D2878908();

      return v7;
    }

    else
    {

      return 0;
    }
  }
}

uint64_t sub_1D262ADFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 160) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  *(v5 + 48) = swift_task_alloc();
  v6 = sub_1D2873AA8();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D262AEFC, 0, 0);
}

uint64_t sub_1D262AEFC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for PlaygroundImage();
  *(v0 + 80) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v6 = (v4 + v5[9]);
  *v6 = 0u;
  v6[1] = 0u;
  v7 = v5[10];
  *(v0 + 152) = v7;
  *(v4 + v7) = xmmword_1D28809A0;
  v8 = v5[11];
  *(v0 + 156) = v8;
  v9 = *(v1 + 56);
  *(v0 + 88) = v9;
  *(v0 + 96) = (v1 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  result = v9(v4 + v8, 1, 1, v2);
  v11 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = *(v0 + 24);
    LODWORD(v13) = HIDWORD(v12) - v12;
    if (!__OFSUB__(HIDWORD(v12), v12))
    {
      v13 = v13;
      goto LABEL_7;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v11 != 2)
  {
    goto LABEL_9;
  }

  v12 = *(v0 + 24);
  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    goto LABEL_23;
  }

LABEL_7:
  if (v13 > 200000000)
  {
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    sub_1D25424EC();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    v20 = v12;
LABEL_14:
    v31 = v18;
LABEL_16:
    sub_1D22D6D60(v20, v31);
    v35 = sub_1D2871818();
    (*(*(v35 - 8) + 8))(v17, v35);
    v36 = *(v0 + 156);
    v37 = *(v0 + 16);
    sub_1D22D6D4C(*(v37 + *(v0 + 152)), *(v37 + *(v0 + 152) + 8));
    sub_1D22BD238(v37 + v36, &qword_1EC6DAE70);

    v38 = *(v0 + 8);

    return v38();
  }

LABEL_9:
  v21 = sub_1D28716D8();
  v22 = CGImageSourceCreateWithData(v21, 0);
  *(v0 + 104) = v22;

  if (!v22)
  {
    v32 = *(v0 + 32);
    v17 = *(v0 + 40);
    v33 = *(v0 + 24);
    sub_1D25424EC();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
    v20 = v33;
    v31 = v32;
    goto LABEL_16;
  }

  v23 = CGImageSourceGetType(v22);
  *(v0 + 112) = v23;
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = v23;
  v25 = *(v0 + 56);
  v26 = *(v0 + 64);
  v27 = *(v0 + 48);
  sub_1D28780A8();
  sub_1D2873AB8();
  if ((*(v26 + 48))(v27, 1, v25) == 1)
  {
    v28 = *(v0 + 48);

    sub_1D22BD238(v28, &qword_1EC6DAE70);
LABEL_13:
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    v29 = *(v0 + 24);
    sub_1D25424EC();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();

    v20 = v29;
    goto LABEL_14;
  }

  v40 = *(v0 + 64);
  v39 = *(v0 + 72);
  v41 = *(v0 + 48);
  v42 = *(v0 + 56);
  v43 = *(v40 + 32);
  *(v0 + 120) = v43;
  *(v0 + 128) = (v40 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v43(v39, v41, v42);
  v44 = swift_task_alloc();
  *(v0 + 136) = v44;
  *v44 = v0;
  v44[1] = sub_1D262B2C0;

  return sub_1D27767E0(v22);
}

uint64_t sub_1D262B2C0(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D262B3C0, 0, 0);
}

uint64_t sub_1D262B3C0()
{
  v1 = *(v0 + 144);
  if (v1 && (v2 = sub_1D2878928(), v1, v2))
  {
    v28 = *(v0 + 120);
    v3 = *(v0 + 104);
    v30 = *(v0 + 88);
    v5 = *(v0 + 152);
    v4 = *(v0 + 156);
    v6 = *(v0 + 80);
    v27 = *(v0 + 72);
    v7 = *(v0 + 56);
    v29 = *(v0 + 160);
    v8 = *(v0 + 32);
    v31 = *(v0 + 40);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);

    v11 = (v10 + v5);
    *v10 = v2;
    *(v10 + 8) = 0;
    sub_1D22D6D4C(*(v10 + v5), *(v10 + v5 + 8));
    *v11 = v9;
    v11[1] = v8;
    sub_1D22BD238(v10 + v4, &qword_1EC6DAE70);
    v28(v10 + v4, v27, v7);
    v30(v10 + v4, 0, 1, v7);
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    *(v10 + *(v6 + 48)) = v29;
    v12 = *(v6 + 32);
    v13 = sub_1D2871818();
    (*(*(v13 - 8) + 32))(v10 + v12, v31, v13);

    v14 = *(v0 + 8);
  }

  else
  {
    v15 = *(v0 + 104);
    v16 = *(v0 + 112);
    v17 = *(v0 + 64);
    v32 = *(v0 + 72);
    v18 = *(v0 + 56);
    v20 = *(v0 + 32);
    v19 = *(v0 + 40);
    v21 = *(v0 + 24);
    sub_1D25424EC();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();

    sub_1D22D6D60(v21, v20);
    v23 = sub_1D2871818();
    (*(*(v23 - 8) + 8))(v19, v23);
    (*(v17 + 8))(v32, v18);
    v24 = *(v0 + 156);
    v25 = *(v0 + 16);
    sub_1D22D6D4C(*(v25 + *(v0 + 152)), *(v25 + *(v0 + 152) + 8));
    sub_1D22BD238(v25 + v24, &qword_1EC6DAE70);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t PlaygroundImage.imageView()()
{
  sub_1D262D4E8();

  return sub_1D2877188();
}

CGImageRef sub_1D262B684()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  if (*(v0 + 8) <= 1u)
  {
    if (!*(v0 + 8))
    {
      v2 = v1;
      return v1;
    }

    v5 = objc_allocWithZone(MEMORY[0x1E695F620]);
    v6 = v1;
    v3 = [v5 init];
    [(CGImage *)v6 extent];
    v7 = [(CGImage *)v3 createCGImage:v6 fromRect:?];
    goto LABEL_11;
  }

  if (*(v0 + 8) == 2)
  {
    v3 = v1;
    v4 = [(CGImage *)v3 CGImage];
    if (v4)
    {
      v1 = v4;
LABEL_12:

      return v1;
    }

    v6 = [(CGImage *)v3 CIImage];
    v7 = [(CGImage *)v6 CGImage];
LABEL_11:
    v1 = v7;

    goto LABEL_12;
  }

  v12[0] = 0;
  v8 = v1;
  v9 = VTCreateCGImageFromCVPixelBuffer(v8, 0, v12);
  v10 = sub_1D2874198();

  v1 = v12[0];
  if (v9 != v10)
  {

    return 0;
  }

  return v1;
}

void PlaygroundImage.init(nativeImage:imageProperties:imageDescription:hasAlpha:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for PlaygroundImage();
  v13 = (a6 + v12[9]);
  *v13 = 0u;
  v13[1] = 0u;
  *(a6 + v12[10]) = xmmword_1D28809A0;
  v14 = v12[11];
  v15 = sub_1D2873AA8();
  (*(*(v15 - 8) + 56))(a6 + v14, 1, 1, v15);
  *a6 = a1;
  *(a6 + 8) = 2;
  v16 = a1;
  [v16 imageOrientation];
  *(a6 + 24) = sub_1D2878C88();
  *(a6 + 16) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + v12[12]) = a5;
  sub_1D2871808();
}

uint64_t PlaygroundImage.init(data:imageProperties:hasAlpha:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1D22D6CF8(a1, a2);
  v11 = sub_1D28716D8();
  v12 = [v10 initWithData_];

  sub_1D22D6D60(a1, a2);
  if (v12)
  {
    if (!a3)
    {
      a3 = sub_1D2630BC0();
    }

    v13 = type metadata accessor for PlaygroundImage();
    v14 = (a5 + v13[9]);
    *v14 = 0u;
    v14[1] = 0u;
    *(a5 + v13[10]) = xmmword_1D28809A0;
    v15 = v13[11];
    v16 = sub_1D2873AA8();
    (*(*(v16 - 8) + 56))(a5 + v15, 1, 1, v16);
    *a5 = v12;
    *(a5 + 8) = 2;
    v17 = v12;
    [v17 imageOrientation];
    *(a5 + 24) = sub_1D2878C88();
    *(a5 + 16) = a3;
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
    *(a5 + v13[12]) = a4 & 1;
    sub_1D2871808();
  }

  else
  {

    sub_1D23EE050();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
  }

  return sub_1D22D6D60(a1, a2);
}

uint64_t PlaygroundImage.imageDataWithBackgroundEncoding(_:isolatedOn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = type metadata accessor for PlaygroundImage();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_1D2873CB8();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = sub_1D28784F8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[14] = v7;
  v4[15] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D262BC18, v7, v9);
}

uint64_t sub_1D262BC18()
{
  v34 = v0;
  v1 = sub_1D262D940(v0[4]);
  if (v2 >> 60 == 15)
  {
    v3 = sub_1D262B684();
    v0[16] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v0[7];
      v6 = v0[4];
      v7 = swift_task_alloc();
      v0[17] = v7;
      v7[2] = v5;
      v7[3] = v4;
      v7[4] = v6;
      v8 = swift_task_alloc();
      v0[18] = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE740);
      *v8 = v0;
      v8[1] = sub_1D262BF28;
      v10 = v0[5];
      v11 = v0[6];

      return MEMORY[0x1EEE6DDE0](v0 + 2, v10, v11, 0xD00000000000002ELL, 0x80000001D28BE930, sub_1D2630CA0, v7, v9);
    }

    v14 = v0[10];
    v15 = v0[7];
    sub_1D28724A8();
    sub_1D239A330(v15, v14);
    v16 = sub_1D2873CA8();
    v17 = sub_1D2878A18();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[12];
    v20 = v0[13];
    v22 = v0[10];
    v21 = v0[11];
    if (v18)
    {
      v23 = v0[9];
      v32 = v0[13];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      sub_1D239A330(v22, v23);
      v26 = sub_1D2878118();
      v28 = v27;
      sub_1D23D4DFC(v22);
      v29 = sub_1D23D7C84(v26, v28, &v33);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1D226E000, v16, v17, "Could not get CGImage from PlaygroundImage %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1D38A3520](v25, -1, -1);
      MEMORY[0x1D38A3520](v24, -1, -1);

      (*(v19 + 8))(v32, v21);
    }

    else
    {

      sub_1D23D4DFC(v22);
      (*(v19 + 8))(v20, v21);
    }

    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v12 = v1;
    v13 = v2;
  }

  v30 = v0[1];

  return v30(v12, v13);
}

uint64_t sub_1D262BF28()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D262C06C, v3, v2);
}

uint64_t sub_1D262C06C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t PlaygroundImage.init(cgImage:orientation:hasAlpha:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PlaygroundImage();
  v9 = (a4 + v8[9]);
  *v9 = 0u;
  v9[1] = 0u;
  *(a4 + v8[10]) = xmmword_1D28809A0;
  v10 = v8[11];
  v11 = sub_1D2873AA8();
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  *a4 = a1;
  *(a4 + 8) = 0;
  *(a4 + 24) = a2;
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + v8[12]) = a3;
  return sub_1D2871808();
}

void sub_1D262C1D0(CGColorSpace **a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  *&v4 = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v6 = &v41 - v5;
  v7 = *(v1 + 24);
  v8 = *v1;
  v9 = *(v1 + 8);
  if (v7 != 1)
  {
    if (*(v1 + 8) > 1u)
    {
      if (v9 == 2)
      {
        v16 = v8;
        v17 = [v16 CIImage];
        if (v17)
        {
          v18 = v17;
          v11 = [v17 CGImage];

          if (v11)
          {

            goto LABEL_18;
          }
        }

        v11 = [v16 CGImage];

        if (v11)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (!*(v1 + 8))
      {
        v42 = *v1;
        v11 = v8;
        goto LABEL_19;
      }

      v11 = [v8 CGImage];
      if (v11)
      {
LABEL_18:
        v42 = v11;
LABEL_19:
        v20 = v11;
        v21 = CGImageRef.reoriented(to:)(v7);

        if (v21)
        {

          *a1 = v21;
LABEL_21:
          v15 = MEMORY[0x1E69E0110];
          goto LABEL_22;
        }

LABEL_32:
        sub_1D2873A08();
        v29 = sub_1D2873AA8();
        (*(*(v29 - 8) + 56))(v6, 0, 1, v29);
        v30 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v6);
        v32 = v31;
        sub_1D22BD238(v6, &qword_1EC6DAE70);
        if (v32 >> 60 == 15)
        {

          v33 = sub_1D2873758();
          (*(*(v33 - 8) + 56))(a1, 1, 1, v33);
        }

        else
        {
          sub_1D23C5B68(v30, v32, a1);
        }

        return;
      }
    }

    v42 = 0;
    goto LABEL_32;
  }

  if (*(v1 + 8) <= 1u)
  {
    v42 = *v1;
    *a1 = v8;
    if (v9)
    {
      v10 = MEMORY[0x1E69E0118];
    }

    else
    {
      v10 = MEMORY[0x1E69E0110];
    }

    v19 = *v10;
    goto LABEL_26;
  }

  if (v9 != 2)
  {
    *a1 = v8;
    v19 = *MEMORY[0x1E69E0108];
    v42 = v8;
LABEL_26:
    v25 = sub_1D2873758();
    v26 = *(v25 - 8);
    (*(v26 + 104))(a1, v19, v25);
    (*(v26 + 56))(a1, 0, 1, v25);
    v27 = v42;

    v28 = v27;
    return;
  }

  v12 = v8;
  v13 = [v12 CIImage];
  if (!v13)
  {
    v34 = [v12 CGImage];
    if (!v34)
    {
      sub_1D2873A08();
      v36 = sub_1D2873AA8();
      (*(*(v36 - 8) + 56))(v6, 0, 1, v36);
      v37 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v6);
      v39 = v38;
      sub_1D22BD238(v6, &qword_1EC6DAE70);
      if (v39 >> 60 == 15)
      {
        v40 = sub_1D2873758();
        (*(*(v40 - 8) + 56))(a1, 1, 1, v40);
      }

      else
      {
        sub_1D23C5B68(v37, v39, a1);
      }

      return;
    }

    v35 = v34;

    *a1 = v35;
    goto LABEL_21;
  }

  v14 = v13;

  *a1 = v14;
  v15 = MEMORY[0x1E69E0118];
LABEL_22:
  v22 = *v15;
  v23 = sub_1D2873758();
  v42 = *(v23 - 8);
  (*(v42 + 13))(a1, v22, v23);
  v24 = *(v42 + 7);

  v24(a1, 0, 1, v23);
}

uint64_t PlaygroundImage.init(vgImage:imageProperties:hasAlpha:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v7 = sub_1D2873758();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PlaygroundImage();
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  v12 = (a4 + v11[9]);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = a4 + v11[10];
  *v13 = xmmword_1D28809A0;
  v14 = v11[11];
  v15 = sub_1D2873AA8();
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  (*(v8 + 16))(v10, a1, v7);
  v16 = (*(v8 + 88))(v10, v7);
  if (v16 == *MEMORY[0x1E69E0110])
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E69E0118])
  {
    v17 = 1;
  }

  else
  {
    if (v16 != *MEMORY[0x1E69E0108])
    {

      sub_1D2399614();
      swift_allocError();
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 2;
      swift_willThrow();
      v20 = *(v8 + 8);
      v20(a1, v7);
      v20(v10, v7);
      sub_1D22D6D4C(*v13, *(v13 + 8));
      return sub_1D22BD238(a4 + v14, &qword_1EC6DAE70);
    }

    v17 = 3;
  }

  (*(v8 + 96))(v10, v7);
  *a4 = *v10;
  *(a4 + 8) = v17;
  *(a4 + 24) = 1;
  *(a4 + 16) = a2;
  *(a4 + v11[12]) = v22 & 1;
  sub_1D2871808();
  return (*(v8 + 8))(a1, v7);
}

void sub_1D262CA2C(uint64_t a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D2878068();
  v9 = [objc_opt_self() *a3];

  if (v9)
  {

    v10 = type metadata accessor for PlaygroundImage();
    v11 = (a4 + v10[9]);
    *v11 = 0u;
    v11[1] = 0u;
    *(a4 + v10[10]) = xmmword_1D28809A0;
    v12 = v10[11];
    v13 = sub_1D2873AA8();
    (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
    *a4 = v9;
    *(a4 + 8) = 2;
    v14 = v9;
    [v14 imageOrientation];
    *(a4 + 24) = sub_1D2878C88();
    *(a4 + 16) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + v10[12]) = 0;
    sub_1D2871808();
  }

  else
  {
    sub_1D2399614();
    swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_1D262CB9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for PlaygroundImage();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D262CC5C, 0, 0);
}

uint64_t sub_1D262CC5C()
{
  v1 = sub_1D262B684();
  v0[7] = v1;
  if (v1)
  {
    v2 = *(v0[3] + 24);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1D262CD70;

    return MEMORY[0x1EEDC93A0](v2);
  }

  else
  {
    sub_1D239A330(v0[3], v0[2]);
    (*(v0[5] + 56))(v0[2], 0, 1, v0[4]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D262CD70(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D262CE8C, 0, 0);
}

uint64_t sub_1D262CE8C()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[6];
    v3 = v0[4];
    v4 = v0[2];
    v5 = (v2 + v3[9]);
    *v5 = 0u;
    v5[1] = 0u;
    *(v2 + v3[10]) = xmmword_1D28809A0;
    v6 = v3[11];
    v7 = sub_1D2873AA8();
    (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
    *v2 = v1;
    *(v2 + 8) = 0;
    *(v2 + 24) = 1;
    *(v2 + 16) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + v3[12]) = 0;
    sub_1D2871808();
    sub_1D23EEBD4(v2, v4);
  }

  else
  {
    sub_1D239A330(v0[3], v0[2]);
  }

  (*(v0[5] + 56))(v0[2], 0, 1, v0[4]);

  v8 = v0[1];

  return v8();
}

void PlaygroundImage.size.getter()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      [*v0 size];
      return;
    }

    Width = CVPixelBufferGetWidth(*v0);
    Height = CVPixelBufferGetHeight(v1);
  }

  else
  {
    if (*(v0 + 8))
    {
      [*v0 extent];
      return;
    }

    Width = CGImageGetWidth(*v0);
    Height = CGImageGetHeight(v1);
  }

  CGRectMake(Width, Height);
}

void sub_1D262D084(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D2878068();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:a3];

  if (v9)
  {

    v10 = type metadata accessor for PlaygroundImage();
    v11 = (a4 + v10[9]);
    *v11 = 0u;
    v11[1] = 0u;
    *(a4 + v10[10]) = xmmword_1D28809A0;
    v12 = v10[11];
    v13 = sub_1D2873AA8();
    (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
    *a4 = v9;
    *(a4 + 8) = 2;
    v14 = v9;
    [v14 imageOrientation];
    *(a4 + 24) = sub_1D2878C88();
    *(a4 + 16) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + v10[12]) = 0;
    sub_1D2871808();
  }

  else
  {
    sub_1D2399614();
    swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1D262D208()
{
  v0 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2878AA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D24614C4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  sub_1D2877B58();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1D2631494(&qword_1ED89CD60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
  sub_1D22BB9D8(&qword_1ED89CE80, &unk_1EC6DAE50);
  sub_1D2879088();
  result = sub_1D2878AD8();
  qword_1ED8A5338 = result;
  return result;
}

uint64_t PlaygroundImage.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlaygroundImage() + 32);
  v4 = sub_1D2871818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1D262D4E8()
{
  v1 = (v0 + *(type metadata accessor for PlaygroundImage() + 36));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v50.origin.x = 0.0;
  v50.origin.y = 0.0;
  v50.size.width = 0.0;
  v50.size.height = 0.0;
  v44.origin.x = *v1;
  v44.origin.y = v3;
  v44.size.width = v4;
  v44.size.height = v5;
  if (CGRectEqualToRect(v44, v50))
  {
    v6 = *(v0 + 8);
    goto LABEL_15;
  }

  v7 = *v0;
  v6 = *(v0 + 8);
  if (v6 == 2)
  {
    v8 = v7;
LABEL_9:
    v12 = v8;
    goto LABEL_10;
  }

  v9 = sub_1D262B684();
  if (!v9)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    goto LABEL_9;
  }

  v10 = v9;
  result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v9 imageOrientation:sub_1D263073C(*(v0 + 24))];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = result;

LABEL_10:
  [v12 size];
  if (v13 <= 0.0 || ([v12 size], v14 <= 0.0))
  {

    goto LABEL_15;
  }

  if (v6 == 2)
  {
    v15 = v7;
  }

  else
  {
    v21 = sub_1D262B684();
    if (v21)
    {
      v22 = v21;
      result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v21 imageOrientation:sub_1D263073C(*(v0 + 24))];
      if (!result)
      {
LABEL_38:
        __break(1u);
        return result;
      }

      v23 = result;

      goto LABEL_31;
    }

    v15 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  v23 = v15;
LABEL_31:
  v24 = [v23 CGImage];
  if (v24)
  {
    v25 = v24;
    v45.origin.x = v2;
    v45.origin.y = v3;
    v45.size.width = v4;
    v45.size.height = v5;
    MinX = CGRectGetMinX(v45);
    v27 = MinX * CGImageGetWidth(v25);
    v46.origin.x = v2;
    v46.origin.y = v3;
    v46.size.width = v4;
    v46.size.height = v5;
    v28 = 1.0 - CGRectGetMaxY(v46);
    Height = CGImageGetHeight(v25);
    v30 = CGRectMake(v27, v28 * Height);
    v32 = v31;
    v47.origin.x = v2;
    v47.origin.y = v3;
    v47.size.width = v4;
    v47.size.height = v5;
    Width = CGRectGetWidth(v47);
    v34 = Width * CGImageGetWidth(v25);
    v48.origin.x = v2;
    v48.origin.y = v3;
    v48.size.width = v4;
    v48.size.height = v5;
    v35 = CGRectGetHeight(v48);
    v36 = CGImageGetHeight(v25);
    v49.size.width = CGRectMake(v34, v35 * v36);
    v49.size.height = v37;
    v49.origin.x = v30;
    v49.origin.y = v32;
    v38 = CGImageCreateWithImageInRect(v25, v49);
    if (v38)
    {
      v39 = v38;
      [v23 scale];
      v41 = v40;
      v42 = [v23 imageOrientation];
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v39 scale:v42 orientation:v41];

      return v19;
    }
  }

  else
  {
  }

LABEL_15:
  if (v6 == 2)
  {
    v16 = *v0;

    return v16;
  }

  v17 = sub_1D262B684();
  if (v17)
  {
    v18 = v17;
    result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v17 imageOrientation:sub_1D263073C(*(v0 + 24))];
    if (result)
    {
      v19 = result;

      return v19;
    }

    __break(1u);
    goto LABEL_37;
  }

  v20 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

  return [v20 init];
}

uint64_t type metadata accessor for PlaygroundImage()
{
  result = qword_1ED8A52F0;
  if (!qword_1ED8A52F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D262D940(uint64_t a1)
{
  v3 = sub_1D2873AA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA7E8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for PlaygroundImage();
  v14 = (v1 + *(v13 + 40));
  result = *v14;
  v16 = v14[1];
  if (v16 >> 60 != 15)
  {
    v28 = v6;
    v29 = v4;
    v30 = result;
    v17 = *(v4 + 48);
    if (v17(a1, 1, v3) == 1)
    {
      v18 = v30;
      sub_1D22D6CF8(v30, v16);
      return v18;
    }

    v19 = *(v13 + 44);
    v20 = *(v10 + 48);
    sub_1D23BDC8C(a1, v12);
    sub_1D23BDC8C(v1 + v19, &v12[v20]);
    if (v17(v12, 1, v3) == 1)
    {
      if (v17(&v12[v20], 1, v3) == 1)
      {
        v18 = v30;
        sub_1D22D6CF8(v30, v16);
        sub_1D22BD238(v12, &qword_1EC6DAE70);
        return v18;
      }

      goto LABEL_10;
    }

    sub_1D23BDC8C(v12, v9);
    if (v17(&v12[v20], 1, v3) == 1)
    {
      (*(v29 + 8))(v9, v3);
LABEL_10:
      sub_1D22BD238(v12, &qword_1EC6DA7E8);
      return 0;
    }

    v21 = v29;
    v22 = &v12[v20];
    v23 = v28;
    (*(v29 + 32))(v28, v22, v3);
    v24 = v30;
    sub_1D22D6CF8(v30, v16);
    sub_1D2631494(&qword_1EC6DA7F8, MEMORY[0x1E69E8450]);
    v25 = sub_1D2877F98();
    v26 = *(v21 + 8);
    v26(v23, v3);
    v26(v9, v3);
    sub_1D22BD238(v12, &qword_1EC6DAE70);
    result = v24;
    if ((v25 & 1) == 0)
    {
      sub_1D22D6D4C(v24, v16);
      return 0;
    }
  }

  return result;
}

uint64_t _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(uint64_t a1)
{
  v41 = type metadata accessor for PlaygroundImage();
  v3 = MEMORY[0x1EEE9AC00](v41);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  v7 = sub_1D2873CB8();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_1D2873AA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D262D940(a1);
  if (v18 >> 60 != 15)
  {
    return v17;
  }

  sub_1D23BDC8C(a1, v12);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    if (qword_1ED8A5308 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v13, qword_1ED8A5310);
    (*(v14 + 16))(v16, v20, v13);
    if (v19(v12, 1, v13) != 1)
    {
      sub_1D22BD238(v12, &qword_1EC6DAE70);
    }

    v21 = sub_1D262B684();
    if (v21)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v21 = sub_1D262B684();
    if (v21)
    {
LABEL_8:
      v22 = *(v1 + 24);
      v23 = *(v1 + 16);
      v24 = *(v1 + *(v41 + 48));
      v25 = v21;
      v26 = sub_1D2630794(v21, v22, v23, v16, v24);

      (*(v14 + 8))(v16, v13);
      return v26;
    }
  }

  sub_1D28724A8();
  sub_1D239A330(v1, v6);
  v27 = sub_1D2873CA8();
  v28 = sub_1D2878A18();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v9;
    v31 = v30;
    v42 = v30;
    *v29 = 136315138;
    sub_1D239A330(v6, v38);
    v32 = sub_1D2878118();
    v34 = v33;
    sub_1D23D4DFC(v6);
    v35 = sub_1D23D7C84(v32, v34, &v42);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_1D226E000, v27, v28, "Could not get CGImage from PlaygroundImage %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1D38A3520](v31, -1, -1);
    MEMORY[0x1D38A3520](v29, -1, -1);

    (*(v39 + 8))(v37, v40);
  }

  else
  {

    sub_1D23D4DFC(v6);
    (*(v39 + 8))(v9, v40);
  }

  (*(v14 + 8))(v16, v13);
  return 0;
}

CGColorSpace *sub_1D262E1A0()
{
  AlphaInfo = CGImageGetAlphaInfo(Image);
  if (AlphaInfo <= kCGImageAlphaNoneSkipFirst && ((1 << AlphaInfo) & 0x61) != 0)
  {
    v2 = Image;
    return Image;
  }

  Width = CGImageGetWidth(Image);
  Height = CGImageGetHeight(Image);
  result = CGImageGetWidth(Image);
  if ((result - 0x2000000000000000) >> 62 == 3)
  {
    v6 = result;
    result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    if (result)
    {
      v7 = result;
      v8 = __CGBitmapContextCreate(Width, Height, 8uLL, 4 * v6, result, 5u);

      if (!v8)
      {
        return 0;
      }

      CGImageGetWidth(Image);
      CGImageGetHeight(Image);
      sub_1D2878998();
      Image = CGBitmapContextCreateImage(v8);

      return Image;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

CGColorSpace *CGImageRef.reoriented(to:)(int a1)
{
  if (a1 == 1)
  {
    v2 = Image;
    return Image;
  }

  if ((a1 - 5) > 3)
  {
    Width = CGImageGetWidth(Image);
    Height = CGImageGetHeight(Image);
  }

  else
  {
    Width = CGImageGetHeight(Image);
    Height = CGImageGetWidth(Image);
  }

  v5 = Height;
  BitsPerComponent = CGImageGetBitsPerComponent(Image);
  BytesPerRow = CGImageGetBytesPerRow(Image);
  result = CGImageGetWidth(Image);
  v9 = ceilf(Width / result);
  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v9 <= -9.2234e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v9 >= 9.2234e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = BytesPerRow * v9;
  if ((BytesPerRow * v9) >> 64 != v10 >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = CGImageGetColorSpace(Image);
  if (result)
  {
    v11 = result;
    BitmapInfo = CGImageGetBitmapInfo(Image);
    v13 = __CGBitmapContextCreate(Width, v5, BitsPerComponent, v10, v11, BitmapInfo);

    if (!v13)
    {
      return 0;
    }

    CGImageGetWidth(Image);
    CGImageGetHeight(Image);
    sub_1D2878A78();
    v14[0] = v14[1];
    CGContextConcatCTM(v13, v14);
    CGImageGetWidth(Image);
    CGImageGetHeight(Image);
    sub_1D2878998();
    Image = CGBitmapContextCreateImage(v13);

    return Image;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D262E4C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v32 = a4;
  v33 = a1;
  v34 = a3;
  v5 = sub_1D2877B48();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2877B68();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE748);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = v31 - v16;
  v18 = *(a2 + 16);
  v19 = qword_1ED8A5330;
  sub_1D2870F68();
  if (v19 != -1)
  {
    swift_once();
  }

  v31[1] = qword_1ED8A5338;
  v20 = *(a2 + 24);
  sub_1D23BDC8C(v32, v17);
  (*(v10 + 16))(v12, v33, v9);
  v21 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v22 = (v15 + *(v10 + 80) + v21) & ~*(v10 + 80);
  v23 = swift_allocObject();
  v24 = v34;
  *(v23 + 16) = v34;
  *(v23 + 24) = v20;
  *(v23 + 32) = v18;
  sub_1D263131C(v17, v23 + v21);
  (*(v10 + 32))(v23 + v22, v12, v9);
  aBlock[4] = sub_1D263138C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_29;
  v25 = _Block_copy(aBlock);
  v26 = v24;
  v27 = v35;
  sub_1D2877B58();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1D2631494(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80);
  v28 = v38;
  v29 = v40;
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v27, v28, v25);
  _Block_release(v25);
  (*(v39 + 8))(v28, v29);
  (*(v36 + 8))(v27, v37);
}

uint64_t sub_1D262E970(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  v11 = sub_1D2873AA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D23BDC8C(a4, v10);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    if (qword_1ED8A5308 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v11, qword_1ED8A5310);
    (*(v12 + 16))(v14, v16, v11);
    if (v15(v10, 1, v11) != 1)
    {
      sub_1D22BD238(v10, &qword_1EC6DAE70);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  v17 = sub_1D2630794(a1, a2, a3, v14, 0);
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  v21[0] = v17;
  v21[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE748);
  return sub_1D2878518();
}

uint64_t sub_1D262EBD8()
{
  v0 = sub_1D2873AA8();
  __swift_allocate_value_buffer(v0, qword_1ED8A5310);
  __swift_project_value_buffer(v0, qword_1ED8A5310);
  return sub_1D2873A28();
}

uint64_t static PlaygroundImage.defaultWritingFormat.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED8A5308 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2873AA8();
  v3 = __swift_project_value_buffer(v2, qword_1ED8A5310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D262ECCC(uint64_t a1, uint64_t a2)
{
  v74 = sub_1D2873AA8();
  v4 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v6 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2873CB8();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v72 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v64 - v13;
  v15 = sub_1D28739D8();
  v73 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v64 - v19;
  v66 = a1;
  v69 = sub_1D2871548();
  v76 = v21;
  v22 = sub_1D2873A58();
  sub_1D28739C8();
  if (!*(v22 + 16) || (v23 = sub_1D25D0D5C(v20), (v24 & 1) == 0))
  {

    v27 = *(v73 + 8);
    v27(v20, v15);
    goto LABEL_8;
  }

  v64[0] = v11;
  v25 = *(v22 + 56);
  v65 = v6;
  v26 = *(v25 + 8 * v23);
  v27 = *(v73 + 8);
  sub_1D2870F68();
  v27(v20, v15);

  v28 = sub_1D2878128();
  v64[1] = v64;
  v75[0] = v28;
  v75[1] = v29;
  MEMORY[0x1EEE9AC00](v28);
  v64[-2] = v75;
  v30 = v68;
  v31 = sub_1D286430C(sub_1D234ABBC, &v64[-4], v26);
  v68 = v30;

  v6 = v65;

  if ((v31 & 1) == 0)
  {
LABEL_8:
    v67 = v27;
    v44 = v72;
    sub_1D28724A8();
    v45 = v6;
    v46 = v6;
    v47 = v74;
    (*(v4 + 16))(v45, a2, v74);
    sub_1D2870F68();
    v48 = sub_1D2873CA8();
    v49 = sub_1D2878A28();

    LODWORD(v68) = v49;
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v75[0] = v51;
      *v50 = 136315394;
      v52 = sub_1D2873A58();
      sub_1D28739C8();
      if (*(v52 + 16) && (v53 = sub_1D25D0D5C(v17), (v54 & 1) != 0))
      {
        v55 = *(*(v52 + 56) + 8 * v53);
        sub_1D2870F68();
        v67(v17, v15);

        v56 = MEMORY[0x1D38A0E70](v55, MEMORY[0x1E69E6158]);
        v58 = v57;
      }

      else
      {

        v67(v17, v15);
        v58 = 0xE400000000000000;
        v56 = 1701736270;
      }

      (*(v4 + 8))(v46, v74);
      v59 = sub_1D23D7C84(v56, v58, v75);

      *(v50 + 4) = v59;
      *(v50 + 12) = 2080;
      v60 = sub_1D23D7C84(v69, v76, v75);

      *(v50 + 14) = v60;
      _os_log_impl(&dword_1D226E000, v48, v68, "Incorrect image suffix for writing image (expected one in %s, got %s)", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v51, -1, -1);
      MEMORY[0x1D38A3520](v50, -1, -1);

      (*(v70 + 8))(v72, v71);
    }

    else
    {

      (*(v4 + 8))(v46, v47);
      (*(v70 + 8))(v44, v71);
    }

    v61 = 1;
    goto LABEL_16;
  }

  v32 = a2;
  v33 = v74;
  (*(v4 + 16))(v14, v32, v74);
  (*(v4 + 56))(v14, 0, 1, v33);
  v34 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v14);
  v36 = v35;
  sub_1D22BD238(v14, &qword_1EC6DAE70);
  if (v36 >> 60 != 15)
  {

    sub_1D28716F8();
    return sub_1D22D6D4C(v34, v36);
  }

  v37 = v64[0];
  sub_1D28724A8();
  v38 = v76;
  sub_1D2870F68();
  v39 = sub_1D2873CA8();
  v40 = sub_1D2878A28();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v75[0] = v42;
    *v41 = 136315138;
    v43 = sub_1D23D7C84(v69, v38, v75);

    *(v41 + 4) = v43;
    _os_log_impl(&dword_1D226E000, v39, v40, "Couldn't get image data for writing with format %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x1D38A3520](v42, -1, -1);
    MEMORY[0x1D38A3520](v41, -1, -1);
  }

  else
  {
  }

  (*(v70 + 8))(v37, v71);
  v61 = 2;
LABEL_16:
  sub_1D23EE050();
  swift_allocError();
  *v62 = v61;
  return swift_willThrow();
}

uint64_t sub_1D262F49C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D287F550;
  *(v0 + 32) = sub_1D28780A8();
  *(v0 + 40) = v1;
  result = sub_1D28780A8();
  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  qword_1EC6D8A38 = v0;
  return result;
}

uint64_t sub_1D262F518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1D2871818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static PlaygroundImage.== infix(_:_:)()
{
  type metadata accessor for PlaygroundImage();

  return _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
}

uint64_t PlaygroundImage.hash(into:)()
{
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D2631494(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  return sub_1D2877F08();
}

uint64_t PlaygroundImage.hashValue.getter()
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D2631494(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D262F70C()
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D2631494(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D262F7A8()
{
  sub_1D2871818();
  sub_1D2631494(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  return sub_1D2877F08();
}

uint64_t sub_1D262F828()
{
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D2631494(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t static PlaygroundImage.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4C8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - v2;
  v4 = sub_1D2873AA8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4D0);
  v5 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1D2873A68();
  type metadata accessor for PlaygroundImage();
  sub_1D2631494(&qword_1EC6DF4D8, type metadata accessor for PlaygroundImage);
  v18 = v10;
  sub_1D2872768();
  sub_1D2873A08();
  sub_1D2872758();
  v11 = *(v1 + 48);
  v12 = *(v5 + 16);
  v13 = v10;
  v14 = v19;
  v12(v3, v13, v19);
  v12(&v3[v11], v7, v14);
  sub_1D28727A8();
  v15 = *(v5 + 8);
  v15(v7, v14);
  return (v15)(v18, v14);
}

uint64_t sub_1D262FB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D262FBA0, 0, 0);
}

uint64_t sub_1D262FBA0()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v2 = sub_1D28716D8();
  v3 = [v1 initWithData_];

  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = sub_1D2630BC0();
    v6 = type metadata accessor for PlaygroundImage();
    v7 = (v4 + v6[9]);
    *v7 = 0u;
    v7[1] = 0u;
    *(v4 + v6[10]) = xmmword_1D28809A0;
    v8 = v6[11];
    v9 = sub_1D2873AA8();
    (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
    *v4 = v3;
    *(v4 + 8) = 2;
    [v3 imageOrientation];
    *(v4 + 24) = sub_1D2878C88();
    *(v4 + 16) = v5;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + v6[12]) = 0;
    sub_1D2871808();
  }

  else
  {
    sub_1D23EE050();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D262FD48(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D262FDE4, 0, 0);
}

uint64_t sub_1D262FDE4()
{
  v1 = *(v0 + 24);
  sub_1D2873A08();
  v2 = sub_1D2873AA8();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v1);
  v5 = v4;
  sub_1D22BD238(v1, &qword_1EC6DAE70);
  if (v5 >> 60 == 15)
  {
    sub_1D23EE050();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {

    v9 = *(v0 + 8);

    return v9(v3, v5);
  }
}

uint64_t sub_1D262FF5C()
{
  if (*v0)
  {
    return 0x6168706C41736168;
  }

  else
  {
    return 0x61746144676E70;
  }
}

uint64_t sub_1D262FF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61746144676E70 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D2879618() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6168706C41736168 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2879618();

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

uint64_t sub_1D2630074(uint64_t a1)
{
  v2 = sub_1D2630CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D26300B0(uint64_t a1)
{
  v2 = sub_1D2630CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaygroundImage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4E0);
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2630CCC();
  sub_1D2879868();
  if (!v2)
  {
    v28 = v6;
    v29 = a1;
    v10 = v31;
    v35 = 0;
    sub_1D2630D20();
    sub_1D2879528();
    v11 = v7;
    v12 = v9;
    v13 = v32;
    v14 = v33;
    LOBYTE(v32) = 1;
    v34 = sub_1D28794F8();
    v17 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1D22D6CF8(v13, v14);
    v18 = sub_1D28716D8();
    v19 = [v17 initWithData_];

    sub_1D22D6D60(v13, v14);
    if (v19)
    {
      v26 = sub_1D2630BC0();
      v27 = v13;
      v20 = v28;
      v21 = &v28[v4[9]];
      *v21 = 0u;
      *(v21 + 1) = 0u;
      *(v20 + v4[10]) = xmmword_1D28809A0;
      v22 = v4[11];
      v23 = sub_1D2873AA8();
      (*(*(v23 - 8) + 56))(v20 + v22, 1, 1, v23);
      *v20 = v19;
      *(v20 + 8) = 2;
      v24 = v19;
      [v24 imageOrientation];
      *(v20 + 24) = sub_1D2878C88();
      *(v20 + 16) = v26;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
      *(v20 + v4[12]) = v34 & 1;
      sub_1D2871808();

      sub_1D22D6D60(v27, v14);
      (*(v10 + 8))(v12, v11);
      sub_1D23EEBD4(v20, v30);
      v15 = v29;
      return __swift_destroy_boxed_opaque_existential_0(v15);
    }

    sub_1D23EE050();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    sub_1D22D6D60(v13, v14);
    (*(v10 + 8))(v12, v11);
    a1 = v29;
  }

  v15 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t PlaygroundImage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF4F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2630CCC();
  sub_1D2879888();
  v10 = sub_1D2873AA8();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v5);
  v13 = v12;
  sub_1D22BD238(v5, &qword_1EC6DAE70);
  v15 = v11;
  v16 = v13;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE740);
  sub_1D2630D74();
  sub_1D2879598();
  sub_1D22D6D4C(v15, v16);
  if (!v1)
  {
    type metadata accessor for PlaygroundImage();
    LOBYTE(v15) = 1;
    sub_1D2879588();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D263073C(int a1)
{
  if ((a1 - 1) < 8)
  {
    return qword_1D2899AB8[a1 - 1];
  }

  type metadata accessor for CGImagePropertyOrientation(0);
  result = sub_1D28796B8();
  __break(1u);
  return result;
}

uint64_t sub_1D2630794(void *a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1D2873CB8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  if (a5)
  {
    v19 = a1;
  }

  else
  {
    v19 = sub_1D262E1A0();
    if (!v19)
    {
      sub_1D28724A8();
      v32 = sub_1D2873CA8();
      v33 = sub_1D2878A18();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1D226E000, v32, v33, "Could not make image opaque", v34, 2u);
        MEMORY[0x1D38A3520](v34, -1, -1);
      }

      (*(v10 + 8))(v13, v9);
      return 0;
    }
  }

  v20 = v19;
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_10;
  }

  v22 = Mutable;
  v42 = v10;
  v23 = v9;
  sub_1D28739E8();
  v24 = sub_1D2878068();

  v25 = CGImageDestinationCreateWithData(v22, v24, 1uLL, 0);

  if (!v25)
  {

    v9 = v23;
    v10 = v42;
LABEL_10:

    sub_1D28724A8();
    v29 = sub_1D2873CA8();
    v30 = sub_1D2878A18();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D226E000, v29, v30, "Could not create CGImageDestination", v31, 2u);
      MEMORY[0x1D38A3520](v31, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v16, v9);
    return 0;
  }

  v26 = CGImageRef.reoriented(to:)(a2);
  if (!v26)
  {
    v27 = v20;
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_20:
    v28 = 0;
    goto LABEL_21;
  }

  v27 = v26;
  if (!a3)
  {
    goto LABEL_20;
  }

LABEL_8:
  v28 = sub_1D2877E78();
LABEL_21:
  CGImageDestinationAddImage(v25, v27, v28);

  if (CGImageDestinationFinalize(v25))
  {
    v36 = v22;
    v37 = sub_1D28716E8();

    return v37;
  }

  sub_1D28724A8();
  v38 = sub_1D2873CA8();
  v39 = sub_1D2878A18();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1D226E000, v38, v39, "Could not finalize CGImageDestination", v40, 2u);
    MEMORY[0x1D38A3520](v40, -1, -1);
  }

  else
  {
  }

  (*(v42 + 8))(v18, v23);
  return 0;
}

uint64_t sub_1D2630BC0()
{
  v0 = sub_1D28716D8();
  v1 = CGImageSourceCreateWithData(v0, 0);

  if (v1)
  {
    v2 = CGImageSourceCopyPropertiesAtIndex(v1, 0, 0);
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1D2877E88();
      }
    }
  }

  return 0;
}

unint64_t sub_1D2630CCC()
{
  result = qword_1EC6DF4E8;
  if (!qword_1EC6DF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF4E8);
  }

  return result;
}

unint64_t sub_1D2630D20()
{
  result = qword_1EC6DF4F0;
  if (!qword_1EC6DF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF4F0);
  }

  return result;
}

unint64_t sub_1D2630D74()
{
  result = qword_1EC6DF500;
  if (!qword_1EC6DF500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE740);
    sub_1D2630DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF500);
  }

  return result;
}

unint64_t sub_1D2630DF8()
{
  result = qword_1EC6DF508;
  if (!qword_1EC6DF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF508);
  }

  return result;
}

void sub_1D2630F20()
{
  sub_1D2631054();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGImagePropertyOrientation(319);
    if (v1 <= 0x3F)
    {
      sub_1D22F3EA0(319, qword_1ED8A6D28);
      if (v2 <= 0x3F)
      {
        sub_1D2871818();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CGRect(319);
          if (v4 <= 0x3F)
          {
            sub_1D22F3EA0(319, &qword_1ED8A6CC0);
            if (v5 <= 0x3F)
            {
              sub_1D26310B8();
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

void sub_1D2631054()
{
  if (!qword_1ED89CF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB178);
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CF78);
    }
  }
}

void sub_1D26310B8()
{
  if (!qword_1ED8A6B60)
  {
    sub_1D2873AA8();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8A6B60);
    }
  }
}

uint64_t sub_1D263111C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D2631164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23ImagePlaygroundInternal0bA0V9InitErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D26311EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1D2631218()
{
  result = qword_1EC6DF528;
  if (!qword_1EC6DF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF528);
  }

  return result;
}

unint64_t sub_1D2631270()
{
  result = qword_1EC6DF530;
  if (!qword_1EC6DF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF530);
  }

  return result;
}

unint64_t sub_1D26312C8()
{
  result = qword_1EC6DF538;
  if (!qword_1EC6DF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF538);
  }

  return result;
}

uint64_t sub_1D263131C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D263138C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE748);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return sub_1D262E970(v3, v4, v5, v0 + v2);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D2631494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static DisplayableImage.transferRepresentation.getter()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2873AA8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF540);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  sub_1D2873A08();
  type metadata accessor for DisplayableImage();
  sub_1D26320A4();
  sub_1D2872758();
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED8B0058;
  sub_1D28718C8();
  sub_1D28780E8();
  sub_1D263247C();
  sub_1D2872798();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D2631778(uint64_t a1)
{
  v1[97] = a1;
  v2 = *(type metadata accessor for PlaygroundImage() - 8);
  v1[103] = v2;
  v1[104] = *(v2 + 64);
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v3 = sub_1D2873AA8();
  v1[107] = v3;
  v1[108] = *(v3 - 8);
  v1[109] = swift_task_alloc();
  v1[110] = type metadata accessor for DisplayableImage();
  v1[111] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26318D4, 0, 0);
}

uint64_t sub_1D26318D4()
{
  sub_1D2632570(v0[97], v0[111], type metadata accessor for DisplayableImage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0[112] = *v0[111];
    sub_1D2873A08();
    v1 = swift_task_alloc();
    v0[113] = v1;
    *v1 = v0;
    v1[1] = sub_1D2631AFC;
    v2 = v0[109];

    return (sub_1D263623C)(v2, 1);
  }

  else
  {
    v4 = v0[106];
    v5 = v0[105];
    v6 = v0[103];
    sub_1D23EEBD4(v0[111], v4);
    sub_1D2632570(v4, v5, type metadata accessor for PlaygroundImage);
    v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v8 = swift_allocObject();
    sub_1D23EEBD4(v5, v8 + v7);
    v9 = swift_allocObject();
    v0[115] = v9;
    *(v9 + 16) = &unk_1D2899B78;
    *(v9 + 24) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE740);
    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEB8](v0 + 2, v0 + 95, sub_1D2631DC8, v0 + 82);
  }
}

uint64_t sub_1D2631AFC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[87] = v2;
  v4[88] = a1;
  v4[89] = a2;
  v5 = v3[109];
  v6 = v3[108];
  v7 = v3[107];
  v4[114] = a2;

  (*(v6 + 8))(v5, v7);

  return MEMORY[0x1EEE6DFA0](sub_1D2631C64, 0, 0);
}

uint64_t sub_1D2631C64()
{
  if (v0[114] >> 60 == 15)
  {
    sub_1D233F184();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[88];

    v5 = v0[114];

    v6 = v0[1];

    return v6(v4, v5);
  }
}

uint64_t sub_1D2631DE4()
{
  v1 = v0[96];
  v0[116] = v1;
  if (v1 >> 60 == 15)
  {
    sub_1D233F184();
    v0[117] = swift_allocError();
    *v2 = 4;
    swift_willThrow();
    v3 = sub_1D2631EC0;
    v4 = v0 + 2;
    v5 = v0 + 95;
    v6 = v0 + 90;
  }

  else
  {
    v7 = v0[95];
    v0[118] = v7;
    sub_1D22D6CF8(v7, v1);
    v3 = sub_1D2631F80;
    v4 = v0 + 2;
    v5 = v0 + 95;
    v6 = v0 + 98;
  }

  return MEMORY[0x1EEE6DEB0](v4, v5, v3, v6);
}

uint64_t sub_1D2631EDC()
{
  sub_1D23D4DFC(*(v0 + 848));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2631F9C()
{
  sub_1D23D4DFC(v0[106]);

  v1 = v0[118];
  v2 = v0[116];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t type metadata accessor for DisplayableImage()
{
  result = qword_1EC6D8B30;
  if (!qword_1EC6D8B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D26320A4()
{
  result = qword_1EC6E0FD0;
  if (!qword_1EC6E0FD0)
  {
    type metadata accessor for DisplayableImage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0FD0);
  }

  return result;
}

uint64_t sub_1D26320FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2632198, 0, 0);
}

uint64_t sub_1D2632198()
{
  v1 = *(v0 + 24);
  sub_1D2873A08();
  v2 = sub_1D2873AA8();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v1);
  v5 = v4;
  sub_1D2632860(v1);

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_1D263226C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D2632358;

  return v5();
}

uint64_t sub_1D2632358(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  v5[1] = a2;
  v6 = *(v8 + 8);

  return v6();
}

unint64_t sub_1D263247C()
{
  result = qword_1EC6DF548;
  if (!qword_1EC6DF548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF548);
  }

  return result;
}

void sub_1D26324FC()
{
  type metadata accessor for PlaygroundImage();
  if (v0 <= 0x3F)
  {
    sub_1D25461E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1D2632570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26325D8()
{
  v2 = *(type metadata accessor for PlaygroundImage() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D26326A4;

  return sub_1D26320FC(v0 + v3);
}

uint64_t sub_1D26326A4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1D26327A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BC8FC;

  return sub_1D263226C(a1, v4);
}

uint64_t sub_1D2632860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AsyncImageTransferable.transferRepresentation.getter()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2873AA8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF550);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  sub_1D2873A08();
  sub_1D24FB8DC();
  sub_1D2872758();
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED8B0058;
  sub_1D28718C8();
  sub_1D28780E8();
  sub_1D2632FB0();
  sub_1D2872798();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D2632B5C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  v1[2] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v3 = swift_task_alloc();
  v1[3] = v3;
  v6 = (*a1 + **a1);
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_1D2632CBC;

  return v6(v3);
}

uint64_t sub_1D2632CBC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1D2632F40;
  }

  else
  {
    v2 = sub_1D2632DD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D2632DD0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1D2873A08();
  v3 = sub_1D2873AA8();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v2);
  v6 = v5;
  sub_1D2632860(v2);
  sub_1D23D4DFC(v1);
  if (v6 >> 60 == 15)
  {
    sub_1D2633040();
    swift_allocError();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {

    v9 = v0[1];

    return v9(v4, v6);
  }
}

uint64_t sub_1D2632F40()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D2632FB0()
{
  result = qword_1EC6DF558;
  if (!qword_1EC6DF558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF558);
  }

  return result;
}

unint64_t sub_1D2633040()
{
  result = qword_1EC6DF560;
  if (!qword_1EC6DF560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF560);
  }

  return result;
}

unint64_t sub_1D26330A8()
{
  result = qword_1EC6DF568;
  if (!qword_1EC6DF568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF568);
  }

  return result;
}

uint64_t sub_1D26330FC()
{
  v1[2] = v0;
  sub_1D2878568();
  v1[3] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D2633194, v3, v2);
}

uint64_t sub_1D2633194()
{
  if (*(*(v0[2] + 16) + 16))
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_1D263327C;

    return sub_1D26D67D4();
  }
}

uint64_t sub_1D263327C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 56) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D26333A4, v4, v3);
}

uint64_t sub_1D26333A4()
{
  v1 = v0[7];

  if (v1)
  {
    v2 = v0[7];
    v3 = sub_1D2633AC8(v2);
    v5 = v4;
    v1 = v6;

    if (v3)
    {
      if (*(v3 + 16))
      {
        goto LABEL_7;
      }

      v3 = 0;
    }

    v5 = 0;
    v1 = 0;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

LABEL_7:
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D2633AC8(qword_1ED8B0058);
  if (v7)
  {
    v10 = v9;
    if (v3)
    {
      v11 = v7;
      if (v1)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v1)
      {
        v13 = v1;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      if (v9)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0;
      }

      if (v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      if (v12 == v14 && v13 == v15)
      {
        sub_1D2870F68();
        sub_1D2870F68();
      }

      else
      {
        v17 = v8;
        v18 = sub_1D2879618();
        sub_1D2870F68();
        sub_1D2870F68();

        if (v18)
        {

          v3 = v11;
          v5 = v17;
          v1 = v10;
          goto LABEL_33;
        }
      }
    }

    else
    {
      v3 = v7;
      v5 = v8;
      v1 = v9;
    }
  }

  else
  {
    sub_1D238D058(v3);
    v5 = 0;
    v1 = 0;
    v3 = MEMORY[0x1E69E7CC0];
  }

LABEL_33:
  v19 = v0[2];
  v19[2] = v3;
  v19[3] = v5;
  v19[4] = v1;

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D26335D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F6973726576;
  }

  else
  {
    v3 = 0x6569636E6574616CLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F6973726576;
  }

  else
  {
    v5 = 0x6569636E6574616CLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000073;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2879618();
  }

  return v8 & 1;
}

uint64_t sub_1D263367C()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D2633704()
{
  sub_1D2877F38();
}

uint64_t sub_1D2633778()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D26337FC@<X0>(char *a1@<X8>)
{
  v2 = sub_1D2879488();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D263385C(uint64_t *a1@<X8>)
{
  v2 = 0x6569636E6574616CLL;
  if (*v1)
  {
    v2 = 0x6E6F6973726576;
  }

  v3 = 0xE900000000000073;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D26338A0()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x6569636E6574616CLL;
  }
}

uint64_t sub_1D26338E0@<X0>(char *a1@<X8>)
{
  v2 = sub_1D2879488();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D2633944(uint64_t a1)
{
  v2 = sub_1D263438C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2633980(uint64_t a1)
{
  v2 = sub_1D263438C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D26339BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D2634090(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1D26339EC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2633A6C@<X0>(void *a1@<X8>)
{
  v2 = swift_allocObject();

  v4 = MEMORY[0x1E69E7CC0];
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v4;
  *a1 = v2;
  return result;
}

uint64_t sub_1D2633AC8(void *a1)
{
  v2 = sub_1D2873CB8();
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v32[4] = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - v5;
  v7 = sub_1D28716B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - v12;
  v14 = sub_1D2878068();
  v15 = sub_1D2878068();
  v16 = [a1 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_1D2871638();

    (*(v8 + 32))(v13, v10, v7);
    v28 = sub_1D28716C8();
    v30 = v29;
    sub_1D28713F8();
    swift_allocObject();
    sub_1D28713E8();
    sub_1D263453C();
    sub_1D28713D8();
    (*(v8 + 8))(v13, v7);

    sub_1D22D6D60(v28, v30);
    return v34;
  }

  else
  {
    v17 = v2;
    sub_1D28725D8();
    v18 = a1;
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A18();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136446210;
      v23 = [v18 bundlePath];
      v24 = sub_1D28780A8();
      v26 = v25;

      v27 = sub_1D23D7C84(v24, v26, &v34);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_1D226E000, v19, v20, "Cannot load latencies with bundle %{public}s, missing file", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1D38A3520](v22, -1, -1);
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    (*(v33 + 8))(v6, v17);
    return 0;
  }
}

uint64_t sub_1D2634090(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF570);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1D263438C();
  sub_1D2879868();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF578);
    v28 = 0;
    sub_1D26343E0();
    result = sub_1D2879528();
    v26 = v4;
    v9 = 0;
    v10 = v29;
    v11 = *(v29 + 16);
    v12 = v29 + 24;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v13 = v12 + 24 * v9;
    while (1)
    {
      if (v11 == v9)
      {

        v27 = 1;
        sub_1D28794E8();
        (*(v26 + 8))(v6, v3);
        __swift_destroy_boxed_opaque_existential_0(a1);
        return v7;
      }

      if (v9 >= *(v10 + 16))
      {
        break;
      }

      ++v9;
      v14 = (v13 + 24);
      v15 = *(v13 + 16);
      v13 += 24;
      if (v15)
      {
        v24 = *(v14 - 2);
        v25 = v12;
        v16 = *v14;
        sub_1D2870F68();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D27CD668(0, *(v7 + 16) + 1, 1, v7);
          v7 = result;
        }

        v17 = v7;
        v18 = *(v7 + 16);
        v19 = v17;
        v20 = *(v17 + 24);
        v21 = v18 + 1;
        if (v18 >= v20 >> 1)
        {
          v23 = v18 + 1;
          result = sub_1D27CD668((v20 > 1), v18 + 1, 1, v19);
          v21 = v23;
          v19 = result;
        }

        *(v19 + 16) = v21;
        v22 = (v19 + 24 * v18);
        v7 = v19;
        v12 = v25;
        v22[4] = v24;
        v22[5] = v15;
        v22[6] = v16;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1D263438C()
{
  result = qword_1ED89EFC0[0];
  if (!qword_1ED89EFC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED89EFC0);
  }

  return result;
}

unint64_t sub_1D26343E0()
{
  result = qword_1ED89CEF0;
  if (!qword_1ED89CEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF578);
    sub_1D2634464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CEF0);
  }

  return result;
}

unint64_t sub_1D2634464()
{
  result = qword_1ED8A0770;
  if (!qword_1ED8A0770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF580);
    sub_1D26344E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0770);
  }

  return result;
}

unint64_t sub_1D26344E8()
{
  result = qword_1ED8A0778;
  if (!qword_1ED8A0778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0778);
  }

  return result;
}

unint64_t sub_1D263453C()
{
  result = qword_1ED89EFA8;
  if (!qword_1ED89EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89EFA8);
  }

  return result;
}

unint64_t sub_1D26345A4()
{
  result = qword_1EC6DF588;
  if (!qword_1EC6DF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF588);
  }

  return result;
}

unint64_t sub_1D26345FC()
{
  result = qword_1ED89EFB0;
  if (!qword_1ED89EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89EFB0);
  }

  return result;
}

unint64_t sub_1D2634654()
{
  result = qword_1ED89EFB8;
  if (!qword_1ED89EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89EFB8);
  }

  return result;
}

uint64_t sub_1D26346A8(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v3[27] = sub_1D2878568();
  v3[28] = sub_1D2878558();
  v4 = swift_task_alloc();
  v3[29] = v4;
  *v4 = v3;
  v4[1] = sub_1D263475C;

  return sub_1D2634AD0();
}

uint64_t sub_1D263475C()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2634898, v1, v0);
}

uint64_t sub_1D2634898()
{
  v1 = *(v0 + 208);

  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  result = sub_1D2870F68();
  if (v3)
  {
    v5 = 0;
    v6 = v2 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v26 = v7;
      v8 = (v6 + 80 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= *(v2 + 16))
        {
          __break(1u);
          return result;
        }

        v11 = *(v0 + 192);
        v10 = *(v0 + 200);
        v12 = v8[1];
        v13 = v8[2];
        v14 = v8[3];
        *(v0 + 80) = v8[4];
        v15 = *v8;
        *(v0 + 48) = v13;
        *(v0 + 64) = v14;
        *(v0 + 16) = v15;
        *(v0 + 32) = v12;
        v5 = v9 + 1;
        v16 = *(v0 + 80);
        *(v0 + 176) = v11;
        *(v0 + 184) = v10;
        v17 = swift_task_alloc();
        *(v17 + 16) = v0 + 176;
        sub_1D25A3DB4(v0 + 16, v0 + 96);
        sub_1D2870F68();
        v18 = sub_1D286430C(sub_1D234ABBC, v17, v16);

        if (v18)
        {
          break;
        }

        result = sub_1D25A3DEC(v0 + 16);
        v8 += 5;
        ++v9;
        if (v3 == v5)
        {
          v7 = v26;
          goto LABEL_15;
        }
      }

      v7 = v26;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D23D868C(0, *(v26 + 16) + 1, 1);
        v7 = v26;
      }

      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1D23D868C((v19 > 1), v20 + 1, 1);
        v7 = v26;
      }

      *(v7 + 16) = v20 + 1;
      v21 = (v7 + 80 * v20);
      v21[2] = *(v0 + 16);
      v22 = *(v0 + 32);
      v23 = *(v0 + 48);
      v24 = *(v0 + 80);
      v21[5] = *(v0 + 64);
      v21[6] = v24;
      v21[3] = v22;
      v21[4] = v23;
      v6 = v2 + 32;
    }

    while (v3 - 1 != v9);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  v25 = *(v0 + 8);

  return v25(v7);
}

uint64_t sub_1D2634AD0()
{
  v1[2] = v0;
  sub_1D2878568();
  v1[3] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D2634B68, v3, v2);
}

uint64_t sub_1D2634B68()
{
  if (*(*(v0[2] + 16) + 16))
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_1D2634C50;

    return sub_1D26D67D4();
  }
}

uint64_t sub_1D2634C50(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 56) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D2634D78, v4, v3);
}

uint64_t sub_1D2634D78()
{
  v1 = v0[7];

  if (v1)
  {
    v2 = v0[7];
    v3 = sub_1D26353C8(v2);
    v5 = v4;
    v1 = v6;

    if (v3)
    {
      if (*(v3 + 16))
      {
        goto LABEL_7;
      }

      v3 = 0;
    }

    v5 = 0;
    v1 = 0;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

LABEL_7:
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D26353C8(qword_1ED8B0058);
  if (v7)
  {
    v10 = v9;
    if (v3)
    {
      v11 = v7;
      if (v1)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v1)
      {
        v13 = v1;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      if (v9)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0;
      }

      if (v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      if (v12 == v14 && v13 == v15)
      {
        sub_1D2870F68();
        sub_1D2870F68();
      }

      else
      {
        v17 = v8;
        v18 = sub_1D2879618();
        sub_1D2870F68();
        sub_1D2870F68();

        if (v18)
        {

          v3 = v11;
          v5 = v17;
          v1 = v10;
          goto LABEL_33;
        }
      }
    }

    else
    {
      v3 = v7;
      v5 = v8;
      v1 = v9;
    }
  }

  else
  {
    sub_1D238D058(v3);
    v5 = 0;
    v1 = 0;
    v3 = MEMORY[0x1E69E7CC0];
  }

LABEL_33:
  v19 = v0[2];
  v19[2] = v3;
  v19[3] = v5;
  v19[4] = v1;

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D2634FA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F6973726576;
  }

  else
  {
    v3 = 0x73656C797473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F6973726576;
  }

  else
  {
    v5 = 0x73656C797473;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2879618();
  }

  return v8 & 1;
}

uint64_t sub_1D2635048()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D26350C8()
{
  sub_1D2877F38();
}

uint64_t sub_1D2635134()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D26351B0@<X0>(char *a1@<X8>)
{
  v2 = sub_1D2879488();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D2635210(uint64_t *a1@<X8>)
{
  v2 = 0x73656C797473;
  if (*v1)
  {
    v2 = 0x6E6F6973726576;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D263524C()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x73656C797473;
  }
}

uint64_t sub_1D2635284@<X0>(char *a1@<X8>)
{
  v2 = sub_1D2879488();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D26352E8(uint64_t a1)
{
  v2 = sub_1D2635D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2635324(uint64_t a1)
{
  v2 = sub_1D2635D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2635360@<X0>(void *a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D26359A8(a1, *a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

uint64_t sub_1D26353C8(void *a1)
{
  v37 = sub_1D2873CB8();
  v2 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v34 - v5;
  v7 = sub_1D28716B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v34 - v12;
  v14 = sub_1D2878068();
  v15 = sub_1D2878068();
  v16 = [a1 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_1D2871638();

    v17 = *(v8 + 32);
    v35 = v7;
    v17(v13, v10, v7);
    v18 = sub_1D28716C8();
    v20 = v19;
    v34[1] = v2;
    sub_1D28713F8();
    swift_allocObject();
    sub_1D28713E8();
    v38 = a1;
    sub_1D2635F38();
    v21 = a1;
    sub_1D28713C8();

    sub_1D22D6D60(v18, v20);

    (*(v8 + 8))(v13, v35);
    return v39;
  }

  else
  {
    v22 = v2;
    sub_1D28725D8();
    v23 = a1;
    v24 = sub_1D2873CA8();
    v25 = sub_1D2878A18();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136446210;
      v28 = [v23 bundlePath];
      v29 = sub_1D28780A8();
      v31 = v30;

      v32 = sub_1D23D7C84(v29, v31, &v39);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1D226E000, v24, v25, "Cannot load styles with bundle %{public}s, missing file", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1D38A3520](v27, -1, -1);
      MEMORY[0x1D38A3520](v26, -1, -1);
    }

    (*(v22 + 8))(v6, v37);
    return 0;
  }
}

uint64_t sub_1D26359A8(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF590);
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1D2635D88();
  v9 = a2;
  sub_1D2879868();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF598);
    v34[0] = 0;
    *&v35 = v9;
    sub_1D2635DDC();
    result = sub_1D28794A8();
    v31 = v5;
    v11 = v44;
    v12 = *(v44 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = -v12;
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        v15 = *(v11 + 16);
        if (v13 > v15)
        {
          v15 = v13;
        }

        v16 = -v15;
        v17 = (v11 + 48 + 80 * v13++);
        while (1)
        {
          if (v16 + v13 == 1)
          {
            __break(1u);
            return result;
          }

          v18 = *(v17 - 2);
          v19 = *(v17 - 1);
          v20 = v17[1];
          v40 = *v17;
          v41 = v20;
          v21 = v17[3];
          v42 = v17[2];
          v43 = v21;
          if (v19)
          {
            break;
          }

          ++v13;
          v17 += 5;
          if (v14 + v13 == 1)
          {
            goto LABEL_21;
          }
        }

        *&v35 = v18;
        *(&v35 + 1) = v19;
        v36 = v40;
        v37 = v41;
        v38 = v42;
        v39 = v43;
        sub_1D25A3DB4(&v35, v34);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D27CD788(0, *(v8 + 16) + 1, 1, v8);
          v8 = result;
        }

        v23 = *(v8 + 16);
        v22 = *(v8 + 24);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v30 = v23 + 1;
          result = sub_1D27CD788((v22 > 1), v23 + 1, 1, v8);
          v24 = v30;
          v8 = result;
        }

        *(v8 + 16) = v24;
        v25 = (v8 + 80 * v23);
        v25[2] = v35;
        v26 = v36;
        v27 = v37;
        v28 = v39;
        v25[5] = v38;
        v25[6] = v28;
        v25[3] = v26;
        v25[4] = v27;
      }

      while (v14 + v13);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

LABEL_21:

    LOBYTE(v35) = 1;
    v29 = v31;
    sub_1D28794E8();
    (*(v32 + 8))(v7, v29);
  }

  __swift_destroy_boxed_opaque_existential_0(v33);
  return v8;
}

unint64_t sub_1D2635D88()
{
  result = qword_1ED89F408[0];
  if (!qword_1ED89F408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED89F408);
  }

  return result;
}

unint64_t sub_1D2635DDC()
{
  result = qword_1ED89CEF8;
  if (!qword_1ED89CEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF598);
    sub_1D2635E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89CEF8);
  }

  return result;
}

unint64_t sub_1D2635E60()
{
  result = qword_1ED8A13D0;
  if (!qword_1ED8A13D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF5A0);
    sub_1D2635EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A13D0);
  }

  return result;
}

unint64_t sub_1D2635EE4()
{
  result = qword_1ED8A13D8;
  if (!qword_1ED8A13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A13D8);
  }

  return result;
}

unint64_t sub_1D2635F38()
{
  result = qword_1ED89F3F0;
  if (!qword_1ED89F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89F3F0);
  }

  return result;
}

unint64_t sub_1D2635FB0()
{
  result = qword_1EC6DF5A8;
  if (!qword_1EC6DF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF5A8);
  }

  return result;
}

unint64_t sub_1D2636008()
{
  result = qword_1ED89F3F8;
  if (!qword_1ED89F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89F3F8);
  }

  return result;
}

unint64_t sub_1D2636060()
{
  result = qword_1ED89F400;
  if (!qword_1ED89F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89F400);
  }

  return result;
}

uint64_t sub_1D26360B4()
{
  v0 = sub_1D2874558();
  __swift_allocate_value_buffer(v0, qword_1EC6E3B10);
  __swift_project_value_buffer(v0, qword_1EC6E3B10);
  return sub_1D2874568();
}

uint64_t sub_1D2636124()
{
  v0 = sub_1D2874558();
  __swift_allocate_value_buffer(v0, qword_1ED8B0040);
  __swift_project_value_buffer(v0, qword_1ED8B0040);
  return sub_1D2874568();
}

uint64_t sub_1D2636188()
{
  v0 = sub_1D2874558();
  __swift_allocate_value_buffer(v0, qword_1ED8B0028);
  __swift_project_value_buffer(v0, qword_1ED8B0028);
  return sub_1D2874568();
}

id PhotoAssetItemProviderWriting.__allocating_init(asset:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D263623C(uint64_t a1, char a2)
{
  *(v3 + 320) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v4 = sub_1D2873CB8();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v5 = sub_1D2873AA8();
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 - 8);
  *(v3 + 152) = swift_task_alloc();
  v6 = sub_1D2871388();
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  v7 = sub_1D28716B8();
  *(v3 + 184) = v7;
  *(v3 + 192) = *(v7 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = sub_1D2878568();
  *(v3 + 216) = sub_1D2878558();
  v9 = sub_1D28784F8();
  *(v3 + 224) = v9;
  *(v3 + 232) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D26364D4, v9, v8);
}

uint64_t sub_1D26364D4()
{
  v0[30] = sub_1D2878558();
  v2 = sub_1D28784F8();
  v0[31] = v2;
  v0[32] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D2636560, v2, v1);
}

uint64_t sub_1D2636560()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 320);
  v3 = sub_1D2878558();
  *(v0 + 264) = v3;
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = 0;
  *(v4 + 25) = v2;
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  v5[1] = sub_1D263667C;
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v6, v3, v8, 0xD00000000000003FLL, 0x80000001D28B57A0, sub_1D263A604, v4, v7);
}

uint64_t sub_1D263667C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_1D2636D0C;
  }

  else
  {

    v3 = *(v2 + 248);
    v4 = *(v2 + 256);
    v5 = sub_1D26367A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D26367A0()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1D2636804, v1, v2);
}

uint64_t sub_1D2636804()
{
  v1 = v0[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC6DF5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  v3 = *MEMORY[0x1E695DAA0];
  *(inited + 32) = *MEMORY[0x1E695DAA0];
  v4 = v3;
  sub_1D2402F44(inited);
  swift_setDeallocating();
  sub_1D263A5A4(inited + 32, type metadata accessor for URLResourceKey);
  sub_1D2871568();
  if (v1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    sub_1D28724A8();
    v5 = sub_1D2873CA8();
    v6 = sub_1D2878A18();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v5, v6, "Can't generate shareableImageData for photo asset", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    v12 = 0;
    v13 = 0xF000000000000000;
    goto LABEL_5;
  }

  v16 = v0[17];
  v17 = v0[18];
  v18 = v0[16];

  sub_1D2871378();
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_1D22BD238(v0[16], &qword_1EC6DAE70);
  }

  else
  {
    (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
    if (sub_1D2873A98())
    {

      v12 = sub_1D28716C8();
      v13 = v19;
      v21 = v0[24];
      v20 = v0[25];
      v23 = v0[22];
      v22 = v0[23];
      v24 = v0[20];
      v25 = v0[21];
      (*(v0[18] + 8))(v0[19], v0[17]);
      (*(v25 + 8))(v23, v24);
      (*(v21 + 8))(v20, v22);
LABEL_5:

      v14 = v0[1];

      return v14(v12, v13);
    }

    (*(v0[18] + 8))(v0[19], v0[17]);
  }

  v26 = v0[9];
  v27 = swift_task_alloc();
  *v27 = sub_1D22BCFD0(0, &qword_1EC6D74E0);
  v27[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  v0[7] = v26;
  sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550);
  sub_1D28719E8();

  v28 = (v26 + *(*v26 + 216));
  v30 = *v28;
  v29 = v28[1];
  v0[37] = v29;
  sub_1D2870F68();
  v31 = swift_task_alloc();
  v0[38] = v31;
  *v31 = v0;
  v31[1] = sub_1D2636EFC;
  v32 = v0[25];
  v33 = v0[11];

  return sub_1D26398D4(v33, v32, v30, v29);
}