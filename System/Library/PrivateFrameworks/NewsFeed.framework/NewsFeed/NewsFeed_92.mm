uint64_t sub_1D6365F00(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    if (a3)
    {
      sub_1D5D0A57C(a3);
      v7 = 0;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (a1 == 1)
  {
    if (a3 != 1)
    {
      sub_1D5D0A57C(a3);
      v7 = 1;
LABEL_9:
      sub_1D5D0A58C(v7);
      sub_1D5D0A58C(a3);
      return 0;
    }

LABEL_10:
    sub_1D5D0A58C(a1);
    sub_1D5D0A58C(a1);
LABEL_12:

    v16 = sub_1D634B928(a2, a4);

    return v16 & 1;
  }

  if (a3 < 2)
  {
    sub_1D5D0A57C(a3);
    sub_1D5D0A57C(a1);
    v7 = a1;
    goto LABEL_9;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  sub_1D5D0A57C(a3);
  sub_1D5D0A57C(a1);
  LOBYTE(v11) = sub_1D6365F00(v12, v11, v13, v14);
  sub_1D5D0A58C(a1);
  sub_1D5D0A58C(a3);
  if (v11)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_1D6366044(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if ((a3 & 1) == 0)
  {
    if ((a7 & 1) == 0)
    {
      sub_1D5D2F2C8(a1, a2, 0);
      sub_1D5D2F2C8(a5, a6, 0);
      if (((a5 ^ a1) & 1) == 0)
      {
        goto LABEL_14;
      }

      return 0;
    }

    sub_1D5D2F2C8(a1, a2, 0);
    v14 = a5;
    v15 = a6;
    v16 = 1;
LABEL_9:
    sub_1D5D2F2C8(v14, v15, v16);
    return 0;
  }

  if ((a7 & 1) == 0)
  {

    sub_1D5D2F2C8(a1, a2, 1);
    v14 = a5;
    v15 = a6;
    v16 = 0;
    goto LABEL_9;
  }

  if (a1 != a5 || a2 != a6)
  {
    v20 = sub_1D72646CC();
    sub_1D5C75A4C(a5, a6, 1);
    sub_1D5C75A4C(a1, a2, 1);
    sub_1D5D2F2C8(a1, a2, 1);
    sub_1D5D2F2C8(a5, a6, 1);
    if (v20)
    {
      goto LABEL_14;
    }

    return 0;
  }

  sub_1D5C75A4C(a5, a6, 1);
  sub_1D5C75A4C(a5, a6, 1);
  sub_1D5D2F2C8(a5, a6, 1);
  sub_1D5D2F2C8(a5, a6, 1);
LABEL_14:

  v21 = sub_1D634D390(a4, a8);

  return v21 & 1;
}

uint64_t sub_1D6366208(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v6 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 1885434487;
    }

    else
    {
      v7 = 0x6576655270617277;
    }

    if (v6 == 1)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xEB00000000657372;
    }

    v9 = a3;
    if (a3)
    {
LABEL_9:
      if (v9 == 1)
      {
        v10 = 1885434487;
      }

      else
      {
        v10 = 0x6576655270617277;
      }

      if (v9 == 1)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xEB00000000657372;
      }

      if (v7 != v10)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    v7 = 0x706172576F6ELL;
    v9 = a3;
    if (a3)
    {
      goto LABEL_9;
    }
  }

  v11 = 0xE600000000000000;
  if (v7 != 0x706172576F6ELL)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v8 == v11)
  {

    goto LABEL_22;
  }

LABEL_21:
  v12 = sub_1D72646CC();

  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_22:

  return sub_1D634DFE4(a2, a4);
}

uint64_t sub_1D6366360(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = (a1 & 1) == 0;
  if (a1)
  {
    v7 = 0x656E696C6E69;
  }

  else
  {
    v7 = 0x6B636F6C62;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = (a3 & 1) == 0;
  if (a3)
  {
    v10 = 0x656E696C6E69;
  }

  else
  {
    v10 = 0x6B636F6C62;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v7 == v10 && v8 == v11)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D634E344(a2, a4);
}

uint64_t sub_1D6366448(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    if (a3)
    {
      sub_1D5DEA234(a3);
      v7 = 0;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (a1 == 1)
  {
    if (a3 != 1)
    {
      sub_1D5DEA234(a3);
      v7 = 1;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (a1 != 2)
  {
    if (a3 < 3)
    {
      sub_1D5DEA234(a3);
      sub_1D5DEA234(a1);
      v7 = a1;
      goto LABEL_14;
    }

    sub_1D5DEA234(a3);
    sub_1D5DEA234(a1);
    v12 = sub_1D633A310(a1, a3);
    sub_1D5CBF568(a1);
    sub_1D5CBF568(a3);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

LABEL_11:

    v9 = sub_1D6354AF4(a2, a4);

    return v9 & 1;
  }

  if (a3 == 2)
  {
LABEL_10:
    sub_1D5CBF568(a1);
    sub_1D5CBF568(a1);
    goto LABEL_11;
  }

  sub_1D5DEA234(a3);
  v7 = 2;
LABEL_14:
  sub_1D5CBF568(v7);
  sub_1D5CBF568(a3);
  return 0;
}

uint64_t sub_1D6366584(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = (a1 & 1) == 0;
  if (a1)
  {
    v7 = 0x746C7561666564;
  }

  else
  {
    v7 = 1685217635;
  }

  if (v6)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  v9 = (a3 & 1) == 0;
  if (a3)
  {
    v10 = 0x746C7561666564;
  }

  else
  {
    v10 = 1685217635;
  }

  if (v9)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v7 == v10 && v8 == v11)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D635A3EC(a2, a4);
}

uint64_t FormatSyncImageContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v39[-v9 - 8];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39[-v13 - 8];
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v39[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSyncImageContent, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatSyncImageContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v21, v18, v22, &off_1F51F6C78);
  if (v19 >> 62)
  {
    if (v19 >> 62 == 1)
    {
      v24 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v42[0] = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v42[1] = v24;
      v42[2] = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v43 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      sub_1D66591DC(v42, v39);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
      (*(*(v25 - 8) + 16))(v10, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6398B5C(1, v42, v10);
      sub_1D6659238(v42);
      v27 = v10;
    }

    else
    {
      v32 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v34 = qword_1EDF31ED0;

      if (v34 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD50);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6398D04(2, v32, v33, v6);

      v27 = v6;
    }
  }

  else
  {
    v28 = *(v19 + 80);
    v40[3] = *(v19 + 64);
    v40[4] = v28;
    v40[5] = *(v19 + 96);
    v41 = *(v19 + 112);
    v29 = *(v19 + 32);
    v40[0] = *(v19 + 16);
    v40[1] = v29;
    v40[2] = *(v19 + 48);
    sub_1D5D0322C(v40, v39);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
    (*(*(v30 - 8) + 16))(v14, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63989AC(0, v40, v14);
    sub_1D5D07BBC(v40);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatRecipeBinding.Color.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v38 - v17;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatRecipeBinding.Color, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatRecipeBinding.Color, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v25, v22, v26, &off_1F51F6C98);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE38);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6420C60(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE38);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6420C60(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCE38);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6420C60(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCE38);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6420C60(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t FormatSnippet.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v126 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v127 = &v125 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v128 = &v125 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v131 = &v125 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v129 = &v125 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v125 - v22;
  sub_1D66592E0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D5C5F370();
  v32 = v31;
  v33 = sub_1D5B58B84(&qword_1EDF24C68, sub_1D5C5F370);
  sub_1D5D2EE70(v4, v32, v34, v29, v4, v32, &type metadata for FormatVersions.JazzkonC, v30, v28, v33, &off_1F51F6C78);
  swift_beginAccess();
  v35 = v2[2];
  v36 = v2[3];
  v130 = v2;
  v37 = qword_1EDF31EB0;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCD30);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  v136 = v39;
  v137 = v38;
  v135 = v41;
  v134 = v40 + 16;
  (v41)(v23);
  v133 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v149 = v35;
  *(&v149 + 1) = v36;
  *&v142 = v36;
  v151 = 0;
  v152 = 0;
  v153 = 0;
  v42 = &v28[*(v25 + 44)];
  v140 = v23;
  v43 = *v42;
  v44 = *(v42 + 1);
  LOBYTE(v147) = 0;
  v45 = swift_allocObject();
  *&v141 = &v125;
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = v147;
  *(v45 + 40) = v43;
  *(v45 + 48) = v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v125 - 4) = sub_1D5B4AA6C;
  *(&v125 - 3) = 0;
  v123 = sub_1D6708864;
  v124 = v47;
  LOBYTE(v147) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v147;
  v132 = v43;
  *(v48 + 40) = v43;
  *(v48 + 48) = v44;
  sub_1D5E1C8A0(0);
  v50 = v49;
  v51 = sub_1D5B58B84(&qword_1EDF02B38, sub_1D5E1C8A0);
  swift_retain_n();
  v139 = v50;
  v138 = v51;
  v52 = sub_1D72647CC();
  LOBYTE(v147) = 0;
  v53 = swift_allocObject();
  *(v53 + 24) = 0;
  *(v53 + 32) = 0;
  *(v53 + 16) = v52;
  *(v53 + 40) = v147;
  v54 = &v28[*(v25 + 36)];
  v55 = __swift_project_boxed_opaque_existential_1(v54, *(v54 + 3));
  MEMORY[0x1EEE9AC00](v55, v56);
  MEMORY[0x1EEE9AC00](v57, v58);
  *(&v125 - 4) = sub_1D615B4A4;
  *(&v125 - 3) = (&v125 - 6);
  v59 = v140;
  v123 = sub_1D6708864;
  v124 = v48;
  v60 = v143;
  sub_1D5D2BC70(v140, sub_1D615B49C, v61, sub_1D615B4A4, (&v125 - 6));
  if (v60)
  {
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v28, sub_1D66592E0);
  }

  else
  {
    v125 = v54;
    *&v143 = v44;

    sub_1D72647EC();
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);

    v63 = v129;
    v64 = v136;
    *&v141 = 0;
    v65 = v137;
    v66 = v135;
    v135(v129, v136, v137);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);
    v66(v63, v64, v65);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);
    v67 = v130;
    swift_beginAccess();
    v68 = v67[8];
    v69 = v131;
    v66(v131, v64, v65);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v149) = 0;
    v70 = swift_allocObject();
    v142 = xmmword_1D72BAA60;
    *(v70 + 16) = xmmword_1D72BAA60;
    *(v70 + 32) = v149;
    *(v70 + 40) = v132;
    *(v70 + 48) = v143;

    v71 = sub_1D72647CC();
    LOBYTE(v149) = 0;
    v72 = swift_allocObject();
    *(v72 + 16) = v71;
    *(v72 + 24) = v142;
    *(v72 + 40) = v149;
    v73 = __swift_project_boxed_opaque_existential_1(v125, *(v125 + 3));
    MEMORY[0x1EEE9AC00](v73, v74);
    MEMORY[0x1EEE9AC00](v75, v76);
    *(&v125 - 4) = sub_1D5B4AA6C;
    *(&v125 - 3) = 0;
    v123 = sub_1D6659374;
    v124 = v70;
    v77 = v141;
    v79 = sub_1D5D2F7A4(v69, sub_1D615B49C, v78, sub_1D615B4A4, (&v125 - 6));
    if (v77)
    {
      sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v28, sub_1D66592E0);
    }

    else
    {
      v80 = v79;

      if (v80)
      {
        v149 = v142;
        v150 = 0;
        *&v147 = v68;
        sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
        sub_1D66594A0();
        sub_1D72647EC();

        sub_1D5D2CFE8(v131, type metadata accessor for FormatVersionRequirement);
        v81 = v137;
        v82 = v143;
        *&v142 = v28;
      }

      else
      {
        sub_1D5D2CFE8(v131, type metadata accessor for FormatVersionRequirement);

        *&v142 = v28;
        v81 = v137;
        v82 = v143;
      }

      v83 = v130;
      swift_beginAccess();
      v84 = v83[9];
      v85 = v128;
      v135(v128, v136, v81);
      swift_storeEnumTagMultiPayload();
      v86 = v132;
      if (*(v84 + 16))
      {
        LOBYTE(v147) = 0;
        v87 = swift_allocObject();
        v141 = xmmword_1D72BAA70;
        *(v87 + 16) = xmmword_1D72BAA70;
        *(v87 + 32) = v147;
        *(v87 + 40) = v86;
        *(v87 + 48) = v82;

        v88 = sub_1D72647CC();
        LOBYTE(v147) = 0;
        v89 = swift_allocObject();
        *(v89 + 16) = v88;
        *(v89 + 24) = v141;
        *(v89 + 40) = v147;
        v90 = __swift_project_boxed_opaque_existential_1(v125, *(v125 + 3));
        MEMORY[0x1EEE9AC00](v90, v91);
        MEMORY[0x1EEE9AC00](v92, v93);
        *(&v125 - 4) = sub_1D5B4AA6C;
        *(&v125 - 3) = 0;
        v123 = sub_1D6708864;
        v124 = v87;
        v95 = sub_1D5D2F7A4(v85, sub_1D615B49C, v94, sub_1D615B4A4, (&v125 - 6));
        v97 = v95;

        if (v97)
        {
          v147 = v141;
          v148 = 0;
          v146 = v84;
          sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
          sub_1D60AD304();
          v96 = v142;
          sub_1D72647EC();
          v82 = v143;
          v81 = v137;

          sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
          v83 = v130;
        }

        else
        {
          sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);

          v83 = v130;
          v82 = v143;
          v96 = v142;
          v81 = v137;
        }
      }

      else
      {
        sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);
        v96 = v142;
      }

      swift_beginAccess();
      v98 = v83[10];
      v99 = v127;
      v135(v127, v136, v81);
      swift_storeEnumTagMultiPayload();
      if (*(v98 + 16))
      {
        LOBYTE(v146) = 0;
        v100 = swift_allocObject();
        v142 = xmmword_1D72BAA80;
        *(v100 + 16) = xmmword_1D72BAA80;
        *(v100 + 32) = v146;
        *(v100 + 40) = v132;
        *(v100 + 48) = v82;

        v101 = v99;
        v102 = sub_1D72647CC();
        LOBYTE(v146) = 0;
        v103 = swift_allocObject();
        *(v103 + 16) = v102;
        *(v103 + 24) = v142;
        *(v103 + 40) = v146;
        v104 = __swift_project_boxed_opaque_existential_1(v125, *(v125 + 3));
        MEMORY[0x1EEE9AC00](v104, v105);
        MEMORY[0x1EEE9AC00](v106, v107);
        *(&v125 - 4) = sub_1D5B4AA6C;
        *(&v125 - 3) = 0;
        v123 = sub_1D6708864;
        v124 = v100;
        v109 = sub_1D5D2F7A4(v101, sub_1D615B49C, v108, sub_1D615B4A4, (&v125 - 6));
        v110 = v109;

        if (v110)
        {
          sub_1D5E08E6C(v98, v96, 5, 0, 0);
          v83 = v130;
          v82 = v143;
          v99 = v127;
        }

        else
        {
          v83 = v130;
          v99 = v127;
          v82 = v143;
        }
      }

      v111 = v126;
      sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);
      swift_beginAccess();
      v112 = v83[11];
      v135(v111, v136, v137);
      swift_storeEnumTagMultiPayload();
      if (*(v112 + 16))
      {
        LOBYTE(v144) = 0;
        v113 = swift_allocObject();
        v143 = xmmword_1D72BAA90;
        *(v113 + 16) = xmmword_1D72BAA90;
        *(v113 + 32) = v144;
        *(v113 + 40) = v132;
        *(v113 + 48) = v82;

        v114 = sub_1D72647CC();
        LOBYTE(v144) = 0;
        v115 = swift_allocObject();
        *(v115 + 16) = v114;
        *(v115 + 24) = v143;
        *(v115 + 40) = v144;
        v116 = __swift_project_boxed_opaque_existential_1(v125, *(v125 + 3));
        MEMORY[0x1EEE9AC00](v116, v117);
        MEMORY[0x1EEE9AC00](v118, v119);
        *(&v125 - 4) = sub_1D5B4AA6C;
        *(&v125 - 3) = 0;
        v123 = sub_1D6708864;
        v124 = v113;
        v121 = sub_1D5D2F7A4(v111, sub_1D615B49C, v120, sub_1D615B4A4, (&v125 - 6));
        v122 = v121;

        if (v122)
        {
          v144 = v143;
          v145 = 0;
          v154 = v112;
          sub_1D5C34D84(0, &qword_1EDF1B448, &type metadata for FormatType, MEMORY[0x1E69E62F8]);
          sub_1D6659404();
          sub_1D72647EC();

          sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
        }
      }

      else
      {
        sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);
      }

      return sub_1D5D2CFE8(v96, sub_1D66592E0);
    }
  }
}

uint64_t FormatBlendMode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v85 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v84 = &v69 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v83 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v82 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v81 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v80 = &v69 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v79 = &v69 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v78 = &v69 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v77 = &v69 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v76 = &v69 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v75 = &v69 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v74 = &v69 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v73 = &v69 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v72 = &v69 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v71 = &v69 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v70 = &v69 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v69 - v53;
  v55 = *v1;
  v86 = a1;
  v87 = v55;
  v56 = a1[3];
  v57 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v56);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v58 = sub_1D725BD1C();
  v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
  v60 = *(*(v58 - 8) + 16);
  v60(v54, v59, v58);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v61 = v88;
  sub_1D5D2BEC4(v54, sub_1D5B4AA6C, 0, v56, v57);
  if (v61)
  {
    return sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
  v63 = v86;
  v64 = v86[3];
  v69 = v86[4];
  v88 = __swift_project_boxed_opaque_existential_1(v86, v64);
  switch(v87)
  {
    case 1:
      v65 = v71;
      v60(v71, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    case 2:
      v65 = v72;
      v60(v72, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    case 3:
      v65 = v73;
      v60(v73, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    case 4:
      v65 = v74;
      v60(v74, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    case 5:
      v66 = v75;
      v60(v75, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 6:
      v66 = v76;
      v60(v76, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 7:
      v66 = v77;
      v60(v77, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 8:
      v66 = v78;
      v60(v78, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 9:
      v66 = v79;
      v60(v79, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 10:
      v66 = v80;
      v60(v80, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 11:
      v66 = v81;
      v60(v81, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 12:
      v66 = v82;
      v60(v82, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 13:
      v66 = v83;
      v60(v83, v59, v58);
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 14:
      v66 = v84;
      v60(v84, v59, v58);
      swift_storeEnumTagMultiPayload();
LABEL_23:
      sub_1D5D2BEC4(v66, sub_1D5B4AA6C, 0, v64, v69);
      v68 = v66;
      goto LABEL_24;
    case 15:
      v67 = v85;
      v60(v85, v59, v58);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v67, sub_1D5B4AA6C, 0, v64, v69);
      v68 = v67;
LABEL_24:
      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
      break;
    default:
      v65 = v70;
      v60(v70, v59, v58);
      swift_storeEnumTagMultiPayload();
LABEL_17:
      sub_1D5D2BEC4(v65, sub_1D5B4AA6C, 0, v64, v69);
      sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
      break;
  }

  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  sub_1D7264B3C();
  v91 = v87;
  FormatBlendMode.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v89);
}

uint64_t FormatAndExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  sub_1D665953C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v72 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5C57044();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25518, sub_1D5C57044);
  sub_1D5D2EE70(&type metadata for FormatAndExpression, v19, v21, v16, &type metadata for FormatAndExpression, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v74 = v23;
  v75 = v22;
  v69 = v24 + 16;
  v70 = v25;
  (v25)(v9);
  v68 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v84 = v15;
  v82 = 0uLL;
  v83 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v81 = 0;
  v29 = swift_allocObject();
  v78 = &v66;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v81;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v80 = v9;
  *(&v66 - 4) = sub_1D5B4AA6C;
  *(&v66 - 3) = 0;
  v64 = sub_1D6708868;
  v65 = v31;
  v81 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v81;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66595D0();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF03558, sub_1D66595D0);
  swift_retain_n();
  v76 = v35;
  v77 = v34;
  v36 = sub_1D72647CC();
  v81 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v81;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v66 - 4) = sub_1D615B4A4;
  *(&v66 - 3) = (&v66 - 6);
  v43 = v79;
  v44 = v80;
  v64 = sub_1D6708868;
  v65 = v32;
  sub_1D5D2BC70(v80, sub_1D615B49C, v45, sub_1D615B4A4, (&v66 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v67 = v38;
    v47 = v74;
    v46 = v75;
    v79 = v28;

    v48 = sub_1D66596F4();
    sub_1D72647EC();
    v66 = v48;
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    v50 = v73;
    v70(v73, v47, v46);
    swift_storeEnumTagMultiPayload();
    v84 = v72;
    v80 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    v81 = 0;
    v51 = swift_allocObject();
    v78 = &v66;
    *(v51 + 16) = v80;
    *(v51 + 32) = v81;
    v52 = v71;
    v53 = v79;
    *(v51 + 40) = v71;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v66 - 4) = sub_1D5B4AA6C;
    *(&v66 - 3) = 0;
    v64 = sub_1D6708868;
    v65 = v55;
    v81 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v80;
    *(v56 + 32) = v81;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v81 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v80;
    *(v58 + 40) = v81;
    v59 = __swift_project_boxed_opaque_existential_1(v67, *(v67 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v66 - 4) = sub_1D615B4A4;
    *(&v66 - 3) = (&v66 - 6);
    v64 = sub_1D6708868;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D665953C);
}

uint64_t FormatGroupBinding.Float.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v10;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F50F4078;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6659748();
    v26 = 0uLL;
    sub_1D726431C();
    v26 = xmmword_1D7279980;
    if (v27)
    {
      sub_1D665979C();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27 | 0x80;
    }

    else
    {
      sub_1D66597F0();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
    }

    *v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.Float.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Float, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatGroupBinding.Float, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v17, v14, v18, &off_1F51F6CB8);
  if (v15 < 0)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE80);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A9B64(1, v15 & 0x7F, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCCE8);
    (*(*(v20 - 8) + 16))(v10, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A99D0(0, v15, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatButtonNode.encode(to:)(void *a1)
{
  v2 = v1;
  *&v524 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v496 - v6;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v500 = v496 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v501 = v496 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v502 = v496 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v503 = v496 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v504 = v496 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v505 = v496 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v506 = v496 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v507 = v496 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v508 = v496 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v509 = v496 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v511 = v496 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v510 = v496 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v512 = (v496 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v513 = v496 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v514 = (v496 - v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v515 = v496 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v516 = (v496 - v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  *&v522 = v496 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  *&v520 = v496 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = v496 - v67;
  sub_1D66598EC();
  v525 = v69;
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = v496 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1[3];
  v74 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v73);
  sub_1D5C65B28();
  v76 = v75;
  v77 = sub_1D5B58B84(&qword_1EDF256F8, sub_1D5C65B28);
  v526 = v72;
  sub_1D5D2EE70(v524, v76, v78, v73, v524, v76, &type metadata for FormatVersions.JazzkonC, v74, v72, v77, &off_1F51F6C78);
  swift_beginAccess();
  v79 = v2[2];
  v80 = v2[3];
  v523 = v2;
  v81 = qword_1EDF31EB0;

  if (v81 != -1)
  {
    swift_once();
  }

  v82 = sub_1D725BD1C();
  v83 = __swift_project_value_buffer(v82, qword_1EDFFCD30);
  v84 = *(v82 - 8);
  v85 = *(v84 + 16);
  v86 = v84 + 16;
  *&v524 = v83;
  v85(v68);
  v87 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v88 = sub_1D725895C();
  v89 = (*(*(v88 - 8) + 48))(v7, 1, v88);
  v518 = v86;
  v519 = v82;
  v517 = v85;
  v521 = v87;
  if (v89 != 1)
  {
    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v7, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_8;
  }

  v498 = v79;
  sub_1D5D35558(v7, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v91 = v525;
  v90 = v526;
  v92 = &v526[*(v525 + 11)];
  v94 = *v92;
  v93 = *(v92 + 1);
  LOBYTE(v528) = 0;
  v95 = swift_allocObject();
  *(v95 + 16) = 0;
  *(v95 + 24) = 0;
  *(v95 + 32) = v528;
  *(v95 + 40) = v94;
  *(v95 + 48) = v93;
  sub_1D5E1C7DC(0);
  v97 = v96;
  v98 = sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC);

  *&v499 = v97;
  v497 = v98;
  v99 = sub_1D72647CC();
  LOBYTE(v528) = 0;
  v100 = swift_allocObject();
  *(v100 + 24) = 0;
  *(v100 + 32) = 0;
  *(v100 + 16) = v99;
  *(v100 + 40) = v528;
  v101 = __swift_project_boxed_opaque_existential_1((v90 + *(v91 + 9)), *(v90 + *(v91 + 9) + 24));
  MEMORY[0x1EEE9AC00](v101, v102);
  MEMORY[0x1EEE9AC00](v103, v104);
  v496[-4] = sub_1D5B4AA6C;
  v496[-3] = 0;
  v494 = sub_1D6659980;
  v495 = v95;
  v105 = v527;
  v107 = sub_1D5D2F7A4(v68, sub_1D615B49C, v106, sub_1D615B4A4, &v496[-6]);
  *&v527 = v105;
  if (!v105)
  {
    v159 = v107;

    if (v159)
    {
      v528 = 0uLL;
      LOBYTE(v529) = 0;
      v547 = v498;
      v548 = v80;
      v160 = v90;
      v161 = v527;
      sub_1D72647EC();
      v162 = v519;
      v110 = v524;
      if (v161)
      {

        sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
        v108 = v160;
        return sub_1D5D2CFE8(v108, sub_1D66598EC);
      }

      *&v527 = 0;

      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
      v85 = v517;
      v82 = v162;
LABEL_9:
      v111 = v523;
      swift_beginAccess();
      v112 = v111[4];
      v113 = v520;
      (v85)(v520, v110, v82);
      swift_storeEnumTagMultiPayload();
      if (((v112 >> 59) & 0x1E | (v112 >> 2) & 1) == 0x16 && v112 == 0xB000000000000008)
      {
        sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);
        v114 = v527;
      }

      else
      {
        v142 = v525;
        v141 = v526;
        v143 = &v526[*(v525 + 11)];
        v144 = *v143;
        v145 = *(v143 + 1);
        LOBYTE(v528) = 0;
        v146 = swift_allocObject();
        v499 = xmmword_1D728CF30;
        *(v146 + 16) = xmmword_1D728CF30;
        *(v146 + 32) = v528;
        *(v146 + 40) = v144;
        *(v146 + 48) = v145;
        sub_1D5C82CD8(v112);
        sub_1D5E1C7DC(0);
        v148 = v147;
        sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC);

        v497 = v148;
        v149 = sub_1D72647CC();
        LOBYTE(v528) = 0;
        v150 = swift_allocObject();
        *(v150 + 16) = v149;
        *(v150 + 24) = v499;
        *(v150 + 40) = v528;
        v151 = __swift_project_boxed_opaque_existential_1((v141 + *(v142 + 9)), *(v141 + *(v142 + 9) + 24));
        v498 = v496;
        MEMORY[0x1EEE9AC00](v151, v152);
        MEMORY[0x1EEE9AC00](v153, v154);
        v496[-4] = sub_1D5B4AA6C;
        v496[-3] = 0;
        v494 = sub_1D670886C;
        v495 = v146;
        v155 = v527;
        v157 = sub_1D5D2F7A4(v113, sub_1D615B49C, v156, sub_1D615B4A4, &v496[-6]);
        v114 = v155;
        if (v155)
        {

          sub_1D5C92A8C(v112);
          v158 = v113;
          goto LABEL_20;
        }

        v164 = v157;

        if (v164)
        {
          v528 = v499;
          LOBYTE(v529) = 0;
          v546 = v112;
          sub_1D5CA1E90();
          sub_1D72647EC();
          v165 = v519;
          v166 = v520;
          sub_1D5C92A8C(v546);
          sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
          v111 = v523;
          v85 = v517;
          v82 = v165;
        }

        else
        {
          sub_1D5C92A8C(v112);
          sub_1D5D2CFE8(v520, type metadata accessor for FormatVersionRequirement);
          v111 = v523;
          v82 = v519;
          v85 = v517;
        }
      }

      v498 = v111[5];
      v115 = v525;
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      *&v527 = v114;
      v116 = __swift_project_value_buffer(v82, qword_1EDFFCD68);
      (v85)(v522, v116, v82);
      swift_storeEnumTagMultiPayload();
      v520 = xmmword_1D7297410;
      v528 = xmmword_1D7297410;
      LOBYTE(v529) = 0;
      v117 = v82;
      v118 = v526;
      v119 = &v526[*(v115 + 11)];
      v121 = *v119;
      v120 = *(v119 + 1);
      LOBYTE(v546) = 0;
      v122 = swift_allocObject();
      v124 = v122;
      *(v122 + 16) = v520;
      *(v122 + 32) = v546;
      *&v499 = v121;
      *(v122 + 40) = v121;
      *(v122 + 48) = v120;
      v497 = v120;
      if (v498)
      {
        v496[1] = v496;
        v546 = v498;
        MEMORY[0x1EEE9AC00](v122, v123);
        v496[-4] = sub_1D5B4AA6C;
        v496[-3] = 0;
        v494 = sub_1D670886C;
        v495 = v124;
        LOBYTE(v545) = 0;
        v125 = v120;
        v126 = swift_allocObject();
        *(v126 + 16) = v520;
        *(v126 + 32) = v545;
        *(v126 + 40) = v499;
        *(v126 + 48) = v125;
        sub_1D5E1C7DC(0);
        v128 = v127;
        v129 = sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC);
        swift_retain_n();

        v498 = v128;
        v130 = sub_1D72647CC();
        LOBYTE(v545) = 0;
        v131 = swift_allocObject();
        *(v131 + 16) = v130;
        *(v131 + 24) = v520;
        *(v131 + 40) = v545;
        v132 = v118;
        v133 = __swift_project_boxed_opaque_existential_1((v118 + *(v525 + 9)), *(v118 + *(v525 + 9) + 24));
        MEMORY[0x1EEE9AC00](v133, v134);
        MEMORY[0x1EEE9AC00](v135, v136);
        v496[-4] = sub_1D615B4A4;
        v496[-3] = &v496[-6];
        v494 = sub_1D670886C;
        v495 = v126;
        v137 = v522;
        v138 = v527;
        v140 = sub_1D5D2F7A4(v522, sub_1D615B49C, v139, sub_1D615B4A4, &v496[-6]);
        if (v138)
        {

          sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);
LABEL_17:
          v108 = v132;
          return sub_1D5D2CFE8(v108, sub_1D66598EC);
        }

        v167 = v140;
        *&v527 = v129;

        if (v167)
        {
          sub_1D6659D24();
          sub_1D72647EC();
          v163 = v519;
          v168 = v524;
          *&v527 = 0;

          v85 = v517;
LABEL_33:
          sub_1D5D2CFE8(v522, type metadata accessor for FormatVersionRequirement);
          v169 = v523;
          swift_beginAccess();
          v170 = v169[6];
          v171 = v516;
          (v85)(v516, v168, v163);
          swift_storeEnumTagMultiPayload();
          if (*(v170 + 16))
          {
            LOBYTE(v528) = 0;
            v172 = swift_allocObject();
            v522 = xmmword_1D72BAA60;
            *(v172 + 16) = xmmword_1D72BAA60;
            *(v172 + 32) = v528;
            v173 = v497;
            *(v172 + 40) = v499;
            *(v172 + 48) = v173;
            sub_1D5E1C7DC(0);
            v174 = sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC);

            v175 = v526;
            *&v520 = v170;
            v498 = v174;
            v176 = sub_1D72647CC();
            LOBYTE(v528) = 0;
            v177 = swift_allocObject();
            *(v177 + 16) = v176;
            *(v177 + 24) = v522;
            *(v177 + 40) = v528;
            v178 = __swift_project_boxed_opaque_existential_1((v175 + *(v525 + 9)), *(v175 + *(v525 + 9) + 24));
            MEMORY[0x1EEE9AC00](v178, v179);
            MEMORY[0x1EEE9AC00](v180, v181);
            v496[-4] = sub_1D5B4AA6C;
            v496[-3] = 0;
            v494 = sub_1D670886C;
            v495 = v172;
            v182 = v527;
            v184 = sub_1D5D2F7A4(v171, sub_1D615B49C, v183, sub_1D615B4A4, &v496[-6]);
            if (v182)
            {
              sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);

              v108 = v175;
              return sub_1D5D2CFE8(v108, sub_1D66598EC);
            }

            v186 = v184;
            v187 = v520;

            if (v186)
            {
              v528 = v522;
              LOBYTE(v529) = 0;
              v545 = v187;
              sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
              sub_1D6659C88();
              sub_1D72647EC();
              v168 = v524;
              *&v527 = 0;

              sub_1D5D2CFE8(v516, type metadata accessor for FormatVersionRequirement);
              v185 = v523;
            }

            else
            {
              *&v527 = 0;
              sub_1D5D2CFE8(v516, type metadata accessor for FormatVersionRequirement);

              v185 = v523;
              v168 = v524;
            }

            v163 = v519;
            v85 = v517;
          }

          else
          {
            sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
            v185 = v169;
          }

          swift_beginAccess();
          v188 = v185[7];
          v189 = v515;
          (v85)(v515, v168, v163);
          swift_storeEnumTagMultiPayload();
          if (v188)
          {
            v516 = v188;
            LOBYTE(v528) = 0;
            v190 = swift_allocObject();
            v522 = xmmword_1D72BAA70;
            *(v190 + 16) = xmmword_1D72BAA70;
            *(v190 + 32) = v528;
            v191 = v497;
            *(v190 + 40) = v499;
            *(v190 + 48) = v191;
            sub_1D5E1C7DC(0);
            v193 = v192;
            v194 = sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC);

            v195 = v526;
            *&v520 = v193;
            v196 = sub_1D72647CC();
            LOBYTE(v528) = 0;
            v197 = swift_allocObject();
            *(v197 + 16) = v196;
            *(v197 + 24) = v522;
            *(v197 + 40) = v528;
            v198 = __swift_project_boxed_opaque_existential_1((v195 + *(v525 + 9)), *(v195 + *(v525 + 9) + 24));
            MEMORY[0x1EEE9AC00](v198, v199);
            MEMORY[0x1EEE9AC00](v200, v201);
            v496[-4] = sub_1D5B4AA6C;
            v496[-3] = 0;
            v494 = sub_1D670886C;
            v495 = v190;
            v202 = v527;
            v204 = sub_1D5D2F7A4(v189, sub_1D615B49C, v203, sub_1D615B4A4, &v496[-6]);
            if (v202)
            {
              sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);

              v108 = v195;
              return sub_1D5D2CFE8(v108, sub_1D66598EC);
            }

            v206 = v204;
            *&v527 = v194;

            if (v206)
            {
              v528 = v522;
              LOBYTE(v529) = 0;
              v544 = v516;
              sub_1D72647EC();
              v205 = 0;
              v185 = v523;
              sub_1D5D2CFE8(v515, type metadata accessor for FormatVersionRequirement);
            }

            else
            {
              sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
              v205 = 0;
              v185 = v523;
            }

            v85 = v517;
            v168 = v524;
          }

          else
          {
            sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
            v205 = v527;
          }

          swift_beginAccess();
          v207 = v185[8];
          sub_1D5EB1500(v207);
          v208 = v514;
          if (qword_1EDF31ED0 != -1)
          {
            swift_once();
          }

          v209 = v519;
          v210 = __swift_project_value_buffer(v519, qword_1EDFFCD50);
          (v85)(v208, v210, v209);
          swift_storeEnumTagMultiPayload();
          *&v522 = v210;
          if (v207 == 0x8000000000000000)
          {
            sub_1D5D2CFE8(v208, type metadata accessor for FormatVersionRequirement);
            goto LABEL_54;
          }

          LOBYTE(v528) = 0;
          v233 = swift_allocObject();
          v527 = xmmword_1D72BAA80;
          *(v233 + 16) = xmmword_1D72BAA80;
          *(v233 + 32) = v528;
          v234 = v208;
          v235 = v497;
          *(v233 + 40) = v499;
          *(v233 + 48) = v235;
          sub_1D5E1C7DC(0);
          v237 = v236;
          v238 = sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC);

          v239 = v526;
          v515 = v238;
          v516 = v237;
          v240 = sub_1D72647CC();
          LOBYTE(v528) = 0;
          v241 = swift_allocObject();
          *(v241 + 16) = v240;
          *(v241 + 24) = v527;
          *(v241 + 40) = v528;
          v242 = __swift_project_boxed_opaque_existential_1((v239 + *(v525 + 9)), *(v239 + *(v525 + 9) + 24));
          *&v520 = v496;
          MEMORY[0x1EEE9AC00](v242, v243);
          MEMORY[0x1EEE9AC00](v244, v245);
          v496[-4] = sub_1D5B4AA6C;
          v496[-3] = 0;
          v494 = sub_1D670886C;
          v495 = v233;
          v247 = sub_1D5D2F7A4(v234, sub_1D615B49C, v246, sub_1D615B4A4, &v496[-6]);
          if (!v205)
          {
            v261 = v247;

            if (v261)
            {
              v528 = v527;
              LOBYTE(v529) = 0;
              v543 = v207;
              sub_1D5DF6A60();
              sub_1D72647EC();
              v168 = v524;
              sub_1D5EB15C4(v543);
              sub_1D5D2CFE8(v514, type metadata accessor for FormatVersionRequirement);
              v185 = v523;
            }

            else
            {
              sub_1D5EB15C4(v207);
              sub_1D5D2CFE8(v514, type metadata accessor for FormatVersionRequirement);
              v185 = v523;
              v168 = v524;
            }

LABEL_54:
            swift_beginAccess();
            v211 = *(v185 + 72);
            if (qword_1EDF31E98 != -1)
            {
              swift_once();
            }

            v212 = v519;
            v213 = __swift_project_value_buffer(v519, qword_1EDFFCD00);
            v214 = v513;
            (v517)(v513, v213, v212);
            v215 = v214;
            swift_storeEnumTagMultiPayload();
            if (v211)
            {
              sub_1D5D2CFE8(v214, type metadata accessor for FormatVersionRequirement);
            }

            else
            {
              LOBYTE(v528) = 0;
              v248 = swift_allocObject();
              v527 = xmmword_1D72BAA90;
              *(v248 + 16) = xmmword_1D72BAA90;
              *(v248 + 32) = v528;
              v249 = v497;
              *(v248 + 40) = v499;
              *(v248 + 48) = v249;
              sub_1D5E1C7DC(0);
              v251 = v250;
              sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC);

              v252 = v526;
              *&v520 = v251;
              v253 = sub_1D72647CC();
              LOBYTE(v528) = 0;
              v254 = swift_allocObject();
              *(v254 + 16) = v253;
              *(v254 + 24) = v527;
              *(v254 + 40) = v528;
              v255 = __swift_project_boxed_opaque_existential_1((v252 + *(v525 + 9)), *(v252 + *(v525 + 9) + 24));
              MEMORY[0x1EEE9AC00](v255, v256);
              MEMORY[0x1EEE9AC00](v257, v258);
              v496[-4] = sub_1D5B4AA6C;
              v496[-3] = 0;
              v494 = sub_1D670886C;
              v495 = v248;
              v260 = sub_1D5D2F7A4(v215, sub_1D615B49C, v259, sub_1D615B4A4, &v496[-6]);
              if (v205)
              {
                sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);

                v108 = v252;
                return sub_1D5D2CFE8(v108, sub_1D66598EC);
              }

              v269 = v260;

              if (v269)
              {
                v528 = v527;
                LOBYTE(v529) = 0;
                v542 = 0;
                sub_1D72647EC();
                v205 = 0;
                v185 = v523;
                v216 = v512;
                sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);
                v168 = v524;
LABEL_59:
                swift_beginAccess();
                v217 = v185[10];
                (v517)(v216, v168, v519);
                swift_storeEnumTagMultiPayload();
                LOBYTE(v528) = 0;
                v218 = swift_allocObject();
                v527 = xmmword_1D72BAAA0;
                *(v218 + 16) = xmmword_1D72BAAA0;
                *(v218 + 32) = v528;
                v219 = v497;
                *(v218 + 40) = v499;
                *(v218 + 48) = v219;
                sub_1D5E1C7DC(0);
                v221 = v220;
                v222 = sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC);

                *&v520 = v217;

                v132 = v526;
                v515 = v222;
                v223 = sub_1D72647CC();
                LOBYTE(v528) = 0;
                v224 = swift_allocObject();
                *(v224 + 16) = v223;
                *(v224 + 24) = v527;
                *(v224 + 40) = v528;
                v225 = (v132 + *(v525 + 9));
                v226 = v225[3];
                v516 = v225[4];
                v227 = __swift_project_boxed_opaque_existential_1(v225, v226);
                v525 = v496;
                MEMORY[0x1EEE9AC00](v227, v228);
                MEMORY[0x1EEE9AC00](v229, v230);
                v496[-4] = sub_1D5B4AA6C;
                v496[-3] = 0;
                v494 = sub_1D670886C;
                v495 = v218;
                v232 = sub_1D5D2F7A4(v216, sub_1D615B49C, v231, sub_1D615B4A4, &v496[-6]);
                if (v205)
                {
                  sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);

                  goto LABEL_17;
                }

                v262 = v232;
                v263 = v520;
                v516 = v225;

                if (v262)
                {
                  v528 = v527;
                  LOBYTE(v529) = 0;
                  v541 = v263;
                  sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
                  sub_1D66594A0();
                  v264 = v221;
                  sub_1D72647EC();
                  v266 = v523;
                  v265 = v524;
                  v267 = v499;
                  v268 = v511;
                  v525 = v264;

                  sub_1D5D2CFE8(v512, type metadata accessor for FormatVersionRequirement);
                }

                else
                {
                  v525 = v221;
                  sub_1D5D2CFE8(v512, type metadata accessor for FormatVersionRequirement);

                  v266 = v523;
                  v265 = v524;
                  v267 = v499;
                  v268 = v511;
                }

                swift_beginAccess();
                v270 = v266[11];
                v271 = v510;
                (v517)(v510, v265, v519);
                swift_storeEnumTagMultiPayload();
                if (*(v270 + 16))
                {
                  LOBYTE(v528) = 0;
                  v272 = swift_allocObject();
                  v527 = xmmword_1D72BAAB0;
                  *(v272 + 16) = xmmword_1D72BAAB0;
                  *(v272 + 32) = v528;
                  *(v272 + 40) = v267;
                  *(v272 + 48) = v497;

                  v273 = sub_1D72647CC();
                  LOBYTE(v528) = 0;
                  v274 = v270;
                  v275 = swift_allocObject();
                  *(v275 + 16) = v273;
                  *(v275 + 24) = v527;
                  *(v275 + 40) = v528;
                  v276 = __swift_project_boxed_opaque_existential_1(v516, v516[3]);
                  *&v520 = v496;
                  MEMORY[0x1EEE9AC00](v276, v277);
                  MEMORY[0x1EEE9AC00](v278, v279);
                  v496[-4] = sub_1D5B4AA6C;
                  v496[-3] = 0;
                  v494 = sub_1D670886C;
                  v495 = v272;
                  v281 = sub_1D5D2F7A4(v271, sub_1D615B49C, v280, sub_1D615B4A4, &v496[-6]);
                  v284 = v281;

                  if ((v284 & 1) == 0)
                  {
                    v282 = v526;
                    *&v527 = 0;
                    sub_1D5D2CFE8(v510, type metadata accessor for FormatVersionRequirement);

                    v266 = v523;
                    v265 = v524;
                    v267 = v499;
                    v268 = v511;
LABEL_81:
                    v286 = v266[12];
                    (v517)(v268, v265, v519);
                    swift_storeEnumTagMultiPayload();
                    v539 = v286;
                    v520 = xmmword_1D72BAAC0;
                    v528 = xmmword_1D72BAAC0;
                    LOBYTE(v529) = 0;
                    v538 = 0;
                    v287 = swift_allocObject();
                    v514 = v496;
                    *(v287 + 16) = v520;
                    *(v287 + 32) = v538;
                    v288 = v497;
                    *(v287 + 40) = v267;
                    *(v287 + 48) = v288;
                    MEMORY[0x1EEE9AC00](v287, v289);
                    v496[-4] = sub_1D5B4AA6C;
                    v496[-3] = 0;
                    v494 = sub_1D670886C;
                    v495 = v290;
                    v538 = 0;
                    v291 = swift_allocObject();
                    *(v291 + 16) = v520;
                    *(v291 + 32) = v538;
                    *(v291 + 40) = v267;
                    *(v291 + 48) = v288;
                    swift_retain_n();
                    v292 = v282;
                    v293 = sub_1D72647CC();
                    v538 = 0;
                    v294 = swift_allocObject();
                    *(v294 + 16) = v293;
                    *(v294 + 24) = v520;
                    *(v294 + 40) = v538;
                    v295 = __swift_project_boxed_opaque_existential_1(v516, v516[3]);
                    MEMORY[0x1EEE9AC00](v295, v296);
                    MEMORY[0x1EEE9AC00](v297, v298);
                    v496[-4] = sub_1D615B4A4;
                    v496[-3] = &v496[-6];
                    v494 = sub_1D670886C;
                    v495 = v291;
                    v299 = v527;
                    sub_1D5D2BC70(v268, sub_1D615B49C, v300, sub_1D615B4A4, &v496[-6]);
                    if (v299)
                    {
                      sub_1D5D2CFE8(v268, type metadata accessor for FormatVersionRequirement);

                      v108 = v292;
                      return sub_1D5D2CFE8(v108, sub_1D66598EC);
                    }

                    v301 = sub_1D5C6868C();
                    sub_1D72647EC();
                    *&v520 = v301;
                    sub_1D5D2CFE8(v511, type metadata accessor for FormatVersionRequirement);

                    v302 = v523[13];
                    v303 = v509;
                    v304 = v519;
                    (v517)(v509, v524, v519);
                    swift_storeEnumTagMultiPayload();
                    v527 = xmmword_1D72BAAD0;
                    v528 = xmmword_1D72BAAD0;
                    LOBYTE(v529) = 0;
                    LOBYTE(v539) = 0;
                    v305 = swift_allocObject();
                    v307 = v305;
                    *(v305 + 16) = v527;
                    *(v305 + 32) = v539;
                    v308 = v499;
                    v309 = v497;
                    *(v305 + 40) = v499;
                    *(v305 + 48) = v309;
                    if ((~v302 & 0xF000000000000007) != 0)
                    {
                      v514 = v496;
                      v539 = v302;
                      MEMORY[0x1EEE9AC00](v305, v306);
                      v496[-4] = sub_1D5B4AA6C;
                      v496[-3] = 0;
                      v494 = sub_1D670886C;
                      v495 = v307;
                      v538 = 0;
                      v318 = swift_allocObject();
                      v319 = v308;
                      v320 = v318;
                      *(v318 + 16) = v527;
                      *(v318 + 32) = v538;
                      *(v318 + 40) = v319;
                      *(v318 + 48) = v309;
                      swift_retain_n();
                      sub_1D5CFCFAC(v302);
                      v321 = sub_1D72647CC();
                      v538 = 0;
                      v322 = swift_allocObject();
                      *(v322 + 16) = v321;
                      *(v322 + 24) = v527;
                      *(v322 + 40) = v538;
                      v323 = __swift_project_boxed_opaque_existential_1(v516, v516[3]);
                      MEMORY[0x1EEE9AC00](v323, v324);
                      MEMORY[0x1EEE9AC00](v325, v326);
                      v496[-4] = sub_1D615B4A4;
                      v496[-3] = &v496[-6];
                      v303 = v509;
                      v494 = sub_1D670886C;
                      v495 = v320;
                      v328 = sub_1D5D2F7A4(v509, sub_1D615B49C, v327, sub_1D615B4A4, &v496[-6]);
                      v339 = v328;

                      if (v339)
                      {
                        sub_1D5C76E3C();
                        sub_1D72647EC();

                        v304 = v519;
                        v303 = v509;
                      }

                      else
                      {

                        v304 = v519;
                      }
                    }

                    else
                    {
                    }

                    sub_1D5D2CFE8(v303, type metadata accessor for FormatVersionRequirement);
                    v310 = v523[14];
                    v311 = v517;
                    v312 = v508;
                    if (qword_1EDF31E90 != -1)
                    {
                      swift_once();
                    }

                    v514 = __swift_project_value_buffer(v304, qword_1EDFFCCE8);
                    v311(v312);
                    swift_storeEnumTagMultiPayload();
                    v527 = xmmword_1D72BAAE0;
                    v528 = xmmword_1D72BAAE0;
                    LOBYTE(v529) = 0;
                    LOBYTE(v539) = 0;
                    v313 = swift_allocObject();
                    v315 = v313;
                    *(v313 + 16) = v527;
                    *(v313 + 32) = v539;
                    v316 = v499;
                    v317 = v497;
                    *(v313 + 40) = v499;
                    *(v313 + 48) = v317;
                    if ((~v310 & 0xF000000000000007) != 0)
                    {
                      v513 = v496;
                      v539 = v310;
                      MEMORY[0x1EEE9AC00](v313, v314);
                      v512 = &v496[-6];
                      v496[-4] = sub_1D5B4AA6C;
                      v496[-3] = 0;
                      v494 = sub_1D670886C;
                      v495 = v315;
                      v538 = 0;
                      v329 = swift_allocObject();
                      *(v329 + 16) = v527;
                      *(v329 + 32) = v538;
                      *(v329 + 40) = v316;
                      *(v329 + 48) = v317;
                      swift_retain_n();
                      sub_1D5CFCFAC(v310);
                      v330 = sub_1D72647CC();
                      v538 = 0;
                      v331 = swift_allocObject();
                      *(v331 + 16) = v330;
                      *(v331 + 24) = v527;
                      *(v331 + 40) = v538;
                      v332 = __swift_project_boxed_opaque_existential_1(v516, v516[3]);
                      MEMORY[0x1EEE9AC00](v332, v333);
                      MEMORY[0x1EEE9AC00](v334, v335);
                      v336 = v512;
                      v496[-4] = sub_1D615B4A4;
                      v496[-3] = v336;
                      v494 = sub_1D670886C;
                      v495 = v329;
                      v338 = sub_1D5D2F7A4(v508, sub_1D615B49C, v337, sub_1D615B4A4, &v496[-6]);
                      v340 = v338;

                      if (v340)
                      {
                        sub_1D72647EC();
                      }

                      v304 = v519;
                      v317 = v497;
                    }

                    else
                    {
                    }

                    *&v527 = 0;
                    sub_1D5D2CFE8(v508, type metadata accessor for FormatVersionRequirement);
                    v341 = v523[15];
                    (v517)(v507, v514, v304);
                    swift_storeEnumTagMultiPayload();
                    v520 = xmmword_1D72BAAF0;
                    v528 = xmmword_1D72BAAF0;
                    LOBYTE(v529) = 0;
                    LOBYTE(v539) = 0;
                    v342 = swift_allocObject();
                    v344 = v342;
                    *(v342 + 16) = v520;
                    *(v342 + 32) = v539;
                    *(v342 + 40) = v499;
                    *(v342 + 48) = v317;
                    if ((~v341 & 0xF000000000000007) == 0)
                    {

                      goto LABEL_106;
                    }

                    v539 = v341;
                    MEMORY[0x1EEE9AC00](v342, v343);
                    v496[-4] = sub_1D5B4AA6C;
                    v496[-3] = 0;
                    v494 = sub_1D670886C;
                    v495 = v344;
                    v538 = 0;
                    v345 = swift_allocObject();
                    *(v345 + 16) = v520;
                    *(v345 + 32) = v538;
                    *(v345 + 40) = v499;
                    *(v345 + 48) = v317;
                    swift_retain_n();
                    sub_1D5CFCFAC(v341);
                    v346 = sub_1D72647CC();
                    v538 = 0;
                    v347 = swift_allocObject();
                    *(v347 + 16) = v346;
                    *(v347 + 24) = v520;
                    *(v347 + 40) = v538;
                    v348 = __swift_project_boxed_opaque_existential_1(v516, v516[3]);
                    MEMORY[0x1EEE9AC00](v348, v349);
                    MEMORY[0x1EEE9AC00](v350, v351);
                    v496[-4] = sub_1D615B4A4;
                    v496[-3] = &v496[-6];
                    v494 = sub_1D670886C;
                    v495 = v345;
                    v352 = v527;
                    v354 = sub_1D5D2F7A4(v507, sub_1D615B49C, v353, sub_1D615B4A4, &v496[-6]);
                    *&v527 = v352;
                    if (v352)
                    {
                    }

                    else
                    {
                      v356 = v354;

                      if ((v356 & 1) == 0 || (sub_1D5C76E3C(), v357 = v527, sub_1D72647EC(), (*&v527 = v357) == 0))
                      {

                        v304 = v519;
                        v317 = v497;
LABEL_106:
                        sub_1D5D2CFE8(v507, type metadata accessor for FormatVersionRequirement);
                        v358 = v523[16];
                        v359 = *(v523 + 136);
                        (v517)(v506, v524, v304);
                        swift_storeEnumTagMultiPayload();
                        v520 = xmmword_1D7282A80;
                        v528 = xmmword_1D7282A80;
                        LOBYTE(v529) = 0;
                        LOBYTE(v539) = 0;
                        v360 = swift_allocObject();
                        v362 = v360;
                        *(v360 + 16) = v520;
                        *(v360 + 32) = v539;
                        v363 = v499;
                        *(v360 + 40) = v499;
                        *(v360 + 48) = v317;
                        if (v359 <= 0xFD)
                        {
                          v539 = v358;
                          v540 = v359;
                          MEMORY[0x1EEE9AC00](v360, v361);
                          v496[-4] = sub_1D5B4AA6C;
                          v496[-3] = 0;
                          v494 = sub_1D670886C;
                          v495 = v362;
                          v538 = 0;
                          v365 = swift_allocObject();
                          *(v365 + 16) = v520;
                          *(v365 + 32) = v538;
                          *(v365 + 40) = v363;
                          *(v365 + 48) = v317;
                          swift_retain_n();
                          v366 = sub_1D72647CC();
                          v538 = 0;
                          v367 = swift_allocObject();
                          *(v367 + 16) = v366;
                          *(v367 + 24) = v520;
                          *(v367 + 40) = v538;
                          v368 = __swift_project_boxed_opaque_existential_1(v516, v516[3]);
                          MEMORY[0x1EEE9AC00](v368, v369);
                          MEMORY[0x1EEE9AC00](v370, v371);
                          v496[-4] = sub_1D615B4A4;
                          v496[-3] = &v496[-6];
                          v494 = sub_1D670886C;
                          v495 = v365;
                          v372 = v527;
                          v374 = sub_1D5D2F7A4(v506, sub_1D615B49C, v373, sub_1D615B4A4, &v496[-6]);
                          *&v527 = v372;
                          if (v372)
                          {
                            sub_1D5D2CFE8(v506, type metadata accessor for FormatVersionRequirement);

LABEL_110:

LABEL_139:
                            v108 = v526;
                            return sub_1D5D2CFE8(v108, sub_1D66598EC);
                          }

                          v375 = v374;

                          if (v375)
                          {
                            sub_1D5F8F434();
                            v376 = v527;
                            sub_1D72647EC();
                            *&v527 = v376;
                            if (v376)
                            {
                              v377 = v506;
                              goto LABEL_114;
                            }
                          }

                          v364 = v497;
                          v363 = v499;
                        }

                        else
                        {

                          v364 = v317;
                        }

                        sub_1D5D2CFE8(v506, type metadata accessor for FormatVersionRequirement);

                        v378 = v523[18];
                        (v517)(v505, v522, v519);
                        swift_storeEnumTagMultiPayload();
                        v520 = xmmword_1D72BAB00;
                        v528 = xmmword_1D72BAB00;
                        LOBYTE(v529) = 0;
                        LOBYTE(v539) = 0;
                        v379 = swift_allocObject();
                        v381 = v379;
                        *(v379 + 16) = v520;
                        *(v379 + 32) = v539;
                        *(v379 + 40) = v363;
                        *(v379 + 48) = v364;
                        if (v378)
                        {
                          v539 = v378;
                          MEMORY[0x1EEE9AC00](v379, v380);
                          v496[-4] = sub_1D5B4AA6C;
                          v496[-3] = 0;
                          v494 = sub_1D670886C;
                          v495 = v381;
                          v538 = 0;
                          v382 = swift_allocObject();
                          *(v382 + 16) = v520;
                          *(v382 + 32) = v538;
                          *(v382 + 40) = v499;
                          *(v382 + 48) = v364;
                          swift_retain_n();

                          v383 = sub_1D72647CC();
                          v538 = 0;
                          v384 = swift_allocObject();
                          *(v384 + 16) = v383;
                          *(v384 + 24) = v520;
                          *(v384 + 40) = v538;
                          v385 = __swift_project_boxed_opaque_existential_1(v516, v516[3]);
                          MEMORY[0x1EEE9AC00](v385, v386);
                          MEMORY[0x1EEE9AC00](v387, v388);
                          v496[-4] = sub_1D615B4A4;
                          v496[-3] = &v496[-6];
                          v494 = sub_1D670886C;
                          v495 = v382;
                          v389 = v527;
                          v391 = sub_1D5D2F7A4(v505, sub_1D615B49C, v390, sub_1D615B4A4, &v496[-6]);
                          *&v527 = v389;
                          if (v389)
                          {

LABEL_119:
                            v355 = v505;
                            goto LABEL_138;
                          }

                          v392 = v391;

                          if (v392)
                          {
                            type metadata accessor for FormatAnimationNodeStyle();
                            sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle);
                            v393 = v527;
                            sub_1D72647EC();
                            *&v527 = v393;
                            if (v393)
                            {

                              goto LABEL_119;
                            }
                          }
                        }

                        else
                        {
                        }

                        sub_1D5D2CFE8(v505, type metadata accessor for FormatVersionRequirement);
                        v394 = v523;
                        swift_beginAccess();
                        v395 = v394[19];
                        v396 = qword_1EDF31EA8;

                        if (v396 != -1)
                        {
                          swift_once();
                        }

                        v397 = v519;
                        v398 = __swift_project_value_buffer(v519, qword_1EDFFCD18);
                        (v517)(v504, v398, v397);
                        swift_storeEnumTagMultiPayload();
                        if (*(v395 + 16))
                        {
                          LOBYTE(v528) = 0;
                          v399 = swift_allocObject();
                          v520 = xmmword_1D72BAB10;
                          *(v399 + 16) = xmmword_1D72BAB10;
                          *(v399 + 32) = v528;
                          *(v399 + 40) = v499;
                          *(v399 + 48) = v497;

                          v400 = sub_1D72647CC();
                          LOBYTE(v528) = 0;
                          v401 = swift_allocObject();
                          *(v401 + 16) = v400;
                          *(v401 + 24) = v520;
                          *(v401 + 40) = v528;
                          v402 = __swift_project_boxed_opaque_existential_1(v516, v516[3]);
                          MEMORY[0x1EEE9AC00](v402, v403);
                          MEMORY[0x1EEE9AC00](v404, v405);
                          v496[-4] = sub_1D5B4AA6C;
                          v496[-3] = 0;
                          v494 = sub_1D670886C;
                          v495 = v399;
                          v406 = v527;
                          v408 = sub_1D5D2F7A4(v504, sub_1D615B49C, v407, sub_1D615B4A4, &v496[-6]);
                          *&v527 = v406;
                          if (v406)
                          {

LABEL_130:
                            v355 = v504;
                            goto LABEL_138;
                          }

                          v409 = v408;

                          if (v409)
                          {
                            v410 = v527;
                            sub_1D5E087A4(v395, v526, 0xF, 0, 0);
                            *&v527 = v410;
                            if (v410)
                            {

                              goto LABEL_130;
                            }
                          }
                        }

                        sub_1D5D2CFE8(v504, type metadata accessor for FormatVersionRequirement);
                        v411 = v523;
                        swift_beginAccess();
                        v412 = v411[20];
                        v413 = v411[21];
                        (v517)(v503, v522, v519);
                        swift_storeEnumTagMultiPayload();
                        v522 = xmmword_1D72BAB20;
                        v528 = xmmword_1D72BAB20;
                        LOBYTE(v529) = 0;
                        LOBYTE(v536) = 0;
                        v414 = swift_allocObject();
                        v416 = v414;
                        *(v414 + 16) = v522;
                        *(v414 + 32) = v536;
                        v417 = v497;
                        *(v414 + 40) = v499;
                        *(v414 + 48) = v417;
                        if (v413)
                        {
                          v536 = v412;
                          v537 = v413;
                          MEMORY[0x1EEE9AC00](v414, v415);
                          v496[-4] = sub_1D5B4AA6C;
                          v496[-3] = 0;
                          v494 = sub_1D670886C;
                          v495 = v416;
                          LOBYTE(v535) = 0;
                          v418 = swift_allocObject();
                          *(v418 + 16) = v522;
                          *(v418 + 32) = v535;
                          *(v418 + 40) = v499;
                          *(v418 + 48) = v497;
                          swift_retain_n();
                          swift_bridgeObjectRetain_n();
                          v419 = sub_1D72647CC();
                          LOBYTE(v535) = 0;
                          v420 = swift_allocObject();
                          *(v420 + 16) = v419;
                          *(v420 + 24) = v522;
                          *(v420 + 40) = v535;
                          v421 = __swift_project_boxed_opaque_existential_1(v516, v516[3]);
                          MEMORY[0x1EEE9AC00](v421, v422);
                          MEMORY[0x1EEE9AC00](v423, v424);
                          v496[-4] = sub_1D615B4A4;
                          v496[-3] = &v496[-6];
                          v494 = sub_1D670886C;
                          v495 = v418;
                          v425 = v527;
                          v427 = sub_1D5D2F7A4(v503, sub_1D615B49C, v426, sub_1D615B4A4, &v496[-6]);
                          *&v527 = v425;
                          if (v425)
                          {
                            swift_bridgeObjectRelease_n();

LABEL_137:
                            v355 = v503;
                            goto LABEL_138;
                          }

                          v428 = v427;

                          if (v428)
                          {
                            v429 = v527;
                            sub_1D72647EC();
                            *&v527 = v429;
                            if (v429)
                            {
                              swift_bridgeObjectRelease_n();

                              goto LABEL_137;
                            }
                          }

                          swift_bridgeObjectRelease_n();
                        }

                        else
                        {
                        }

                        sub_1D5D2CFE8(v503, type metadata accessor for FormatVersionRequirement);
                        v430 = v523;
                        swift_beginAccess();
                        v431 = v430[22];
                        sub_1D5B58478();
                        v433 = *(v432 + 48);
                        v434 = (v502 + *(v432 + 64));
                        (v517)();
                        v435 = qword_1EDF31EE8;

                        if (v435 != -1)
                        {
                          swift_once();
                        }

                        v436 = v519;
                        v437 = __swift_project_value_buffer(v519, qword_1EDFFCD98);
                        (v517)(v502 + v433, v437, v436);
                        *v434 = 0;
                        v434[1] = 0;
                        swift_storeEnumTagMultiPayload();
                        if (!*(v431 + 16))
                        {
                          goto LABEL_153;
                        }

                        LOBYTE(v528) = 0;
                        v438 = swift_allocObject();
                        v524 = xmmword_1D72BAB30;
                        *(v438 + 16) = xmmword_1D72BAB30;
                        *(v438 + 32) = v528;
                        *(v438 + 40) = v499;
                        *(v438 + 48) = v497;

                        v439 = sub_1D72647CC();
                        LOBYTE(v528) = 0;
                        v440 = swift_allocObject();
                        *(v440 + 16) = v439;
                        *(v440 + 24) = v524;
                        *(v440 + 40) = v528;
                        v441 = __swift_project_boxed_opaque_existential_1(v516, v516[3]);
                        MEMORY[0x1EEE9AC00](v441, v442);
                        MEMORY[0x1EEE9AC00](v443, v444);
                        v496[-4] = sub_1D5B4AA6C;
                        v496[-3] = 0;
                        v494 = sub_1D670886C;
                        v495 = v438;
                        v445 = v527;
                        v447 = sub_1D5D2F7A4(v502, sub_1D615B49C, v446, sub_1D615B4A4, &v496[-6]);
                        *&v527 = v445;
                        if (v445)
                        {
                          v448 = v502;
LABEL_159:
                          sub_1D5D2CFE8(v448, type metadata accessor for FormatVersionRequirement);

                          goto LABEL_110;
                        }

                        v449 = v447;

                        if (v449)
                        {
                          v528 = v524;
                          LOBYTE(v529) = 0;
                          v535 = v431;
                          sub_1D5B5BF78(0, &qword_1EC886068, MEMORY[0x1E69D6A58], MEMORY[0x1E69E62F8]);
                          sub_1D6659B14();
                          v450 = v527;
                          sub_1D72647EC();
                          *&v527 = v450;
                          if (v450)
                          {

                            v355 = v502;
                            goto LABEL_138;
                          }

                          sub_1D5D2CFE8(v502, type metadata accessor for FormatVersionRequirement);
                        }

                        else
                        {
LABEL_153:
                          sub_1D5D2CFE8(v502, type metadata accessor for FormatVersionRequirement);
                        }

                        v451 = v523;
                        swift_beginAccess();
                        v452 = v451[23];
                        v453 = qword_1EDF31F48;

                        if (v453 != -1)
                        {
                          swift_once();
                        }

                        v454 = v519;
                        v455 = __swift_project_value_buffer(v519, qword_1EDFFCE68);
                        (v517)(v501, v455, v454);
                        swift_storeEnumTagMultiPayload();
                        if (!*(v452 + 16))
                        {
                          goto LABEL_163;
                        }

                        LOBYTE(v528) = 0;
                        v456 = swift_allocObject();
                        v524 = xmmword_1D72BAB40;
                        *(v456 + 16) = xmmword_1D72BAB40;
                        *(v456 + 32) = v528;
                        *(v456 + 40) = v499;
                        *(v456 + 48) = v497;

                        v457 = sub_1D72647CC();
                        LOBYTE(v528) = 0;
                        v458 = swift_allocObject();
                        *(v458 + 16) = v457;
                        *(v458 + 24) = v524;
                        *(v458 + 40) = v528;
                        v459 = __swift_project_boxed_opaque_existential_1(v516, v516[3]);
                        MEMORY[0x1EEE9AC00](v459, v460);
                        MEMORY[0x1EEE9AC00](v461, v462);
                        v496[-4] = sub_1D5B4AA6C;
                        v496[-3] = 0;
                        v494 = sub_1D670886C;
                        v495 = v456;
                        v463 = v527;
                        v465 = sub_1D5D2F7A4(v501, sub_1D615B49C, v464, sub_1D615B4A4, &v496[-6]);
                        *&v527 = v463;
                        if (v463)
                        {
                          v448 = v501;
                          goto LABEL_159;
                        }

                        v466 = v465;

                        if (v466)
                        {
                          v528 = v524;
                          LOBYTE(v529) = 0;
                          *&v533 = v452;
                          sub_1D5C34D84(0, &qword_1EDF04FC8, &type metadata for FormatSourceItem, MEMORY[0x1E69E62F8]);
                          sub_1D6659A78();
                          v467 = v527;
                          sub_1D72647EC();
                          *&v527 = v467;
                          if (v467)
                          {

                            v355 = v501;
                            goto LABEL_138;
                          }

                          sub_1D5D2CFE8(v501, type metadata accessor for FormatVersionRequirement);
                        }

                        else
                        {
LABEL_163:
                          sub_1D5D2CFE8(v501, type metadata accessor for FormatVersionRequirement);
                        }

                        v468 = v523[24];
                        v469 = v523[25];
                        v470 = v523[26];
                        v471 = v523[27];
                        v472 = v523[28];
                        v473 = v523[29];
                        if (qword_1EDF31F38 != -1)
                        {
                          swift_once();
                        }

                        v474 = v519;
                        v475 = __swift_project_value_buffer(v519, qword_1EDFFCE38);
                        (v517)(v500, v475, v474);
                        swift_storeEnumTagMultiPayload();
                        v524 = xmmword_1D72BAB50;
                        v533 = xmmword_1D72BAB50;
                        v534 = 0;
                        LOBYTE(v528) = 0;
                        v476 = swift_allocObject();
                        v478 = v476;
                        *(v476 + 16) = v524;
                        *(v476 + 32) = v528;
                        v479 = v497;
                        *(v476 + 40) = v499;
                        *(v476 + 48) = v479;
                        if (v468)
                        {
                          v523 = v496;
                          *&v528 = v468;
                          *(&v528 + 1) = v469;
                          v529 = v470;
                          v530 = v471;
                          v531 = v472;
                          v532 = v473;
                          MEMORY[0x1EEE9AC00](v476, v477);
                          *&v522 = &v496[-6];
                          v496[-4] = sub_1D5B4AA6C;
                          v496[-3] = 0;
                          v494 = sub_1D670886C;
                          v495 = v478;
                          v549 = 0;
                          v480 = swift_allocObject();
                          *(v480 + 16) = v524;
                          *(v480 + 32) = v549;
                          *(v480 + 40) = v499;
                          *(v480 + 48) = v497;
                          swift_retain_n();
                          sub_1D5EB1D80(v468, v469, v470, v471, v472);
                          v481 = sub_1D72647CC();
                          v549 = 0;
                          v482 = swift_allocObject();
                          *(v482 + 16) = v481;
                          *(v482 + 24) = v524;
                          *(v482 + 40) = v549;
                          v483 = __swift_project_boxed_opaque_existential_1(v516, v516[3]);
                          MEMORY[0x1EEE9AC00](v483, v484);
                          MEMORY[0x1EEE9AC00](v485, v486);
                          v487 = v522;
                          v496[-4] = sub_1D615B4A4;
                          v496[-3] = v487;
                          v494 = sub_1D670886C;
                          v495 = v480;
                          v488 = v527;
                          v490 = sub_1D5D2F7A4(v500, sub_1D615B49C, v489, sub_1D615B4A4, &v496[-6]);
                          *&v527 = v488;
                          if (v488)
                          {
                          }

                          else
                          {
                            v491 = v490;

                            if (v491)
                            {
                              sub_1D6659A24();
                              v492 = v527;
                              sub_1D72647EC();
                              *&v527 = v492;
                            }
                          }

                          v493 = v531;

                          sub_1D5CBF568(v493);

                          v355 = v500;
                          goto LABEL_138;
                        }

                        v377 = v500;
LABEL_114:
                        sub_1D5D2CFE8(v377, type metadata accessor for FormatVersionRequirement);

                        goto LABEL_139;
                      }
                    }

                    v355 = v507;
LABEL_138:
                    sub_1D5D2CFE8(v355, type metadata accessor for FormatVersionRequirement);
                    goto LABEL_139;
                  }

                  v528 = v527;
                  LOBYTE(v529) = 0;
                  v539 = v274;
                  sub_1D5C34D84(0, &qword_1EDF04CB8, &type metadata for FormatButtonNodeStateMask, MEMORY[0x1E69E62F8]);
                  sub_1D6659BEC();
                  v285 = v526;
                  sub_1D72647EC();
                  v266 = v523;
                  v265 = v524;
                  v267 = v499;
                  v268 = v511;
                  v282 = v285;
                  *&v527 = 0;

                  v283 = v510;
                }

                else
                {
                  v282 = v526;
                  *&v527 = 0;
                  v283 = v271;
                }

                sub_1D5D2CFE8(v283, type metadata accessor for FormatVersionRequirement);
                goto LABEL_81;
              }

              sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);
              v205 = 0;
              v185 = v523;
              v168 = v524;
            }

            v216 = v512;
            goto LABEL_59;
          }

          sub_1D5EB15C4(v207);
          v158 = v234;
LABEL_20:
          sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);
          v108 = v526;
          return sub_1D5D2CFE8(v108, sub_1D66598EC);
        }

        *&v527 = 0;

        v163 = v519;
        v85 = v517;
      }

      else
      {
        v163 = v117;
      }

      v168 = v524;
      goto LABEL_33;
    }

    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

    v82 = v519;
    v85 = v517;
LABEL_8:
    v110 = v524;
    goto LABEL_9;
  }

  sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

  v108 = v90;
  return sub_1D5D2CFE8(v108, sub_1D66598EC);
}

uint64_t FormatVariableNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v120 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v127 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v133 = &v120 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v120 - v17;
  sub_1D665A280();
  *&v134 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D665A3A8();
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EDF0C590, sub_1D665A3A8);
  v135 = v22;
  sub_1D5D2EE70(v4, v26, v28, v23, v4, v26, &type metadata for FormatVersions.SydroF, v24, v22, v27, &off_1F51F6C58);
  swift_beginAccess();
  v30 = v2[2];
  v29 = v2[3];
  v132 = v2;
  v31 = qword_1EDF31ED8;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_1D725BD1C();
  v33 = __swift_project_value_buffer(v32, qword_1EDFFCD68);
  v34 = *(v32 - 8);
  v35 = *(v34 + 16);
  v36 = v34 + 16;
  v35(v18, v33, v32);
  v131 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v37 = sub_1D725895C();
  v38 = (*(*(v37 - 8) + 48))(v8, 1, v37);
  v128 = v32;
  v130 = v35;
  v129 = v36;
  if (v38 != 1)
  {
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v57 = v135;
    v59 = v133;
    v58 = v134;
    goto LABEL_7;
  }

  v124 = v30;
  v126 = v33;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v39 = v134;
  v40 = v135;
  v41 = &v135[*(v134 + 44)];
  v43 = *v41;
  v42 = *(v41 + 1);
  LOBYTE(v137) = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v137;
  *(v44 + 40) = v43;
  *(v44 + 48) = v42;
  sub_1D665A314();
  v46 = v45;
  sub_1D5B58B84(&qword_1EDF03588, sub_1D665A314);

  v125 = v46;
  v47 = sub_1D72647CC();
  LOBYTE(v137) = 0;
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = v137;
  v49 = __swift_project_boxed_opaque_existential_1((v40 + *(v39 + 36)), *(v40 + *(v39 + 36) + 24));
  MEMORY[0x1EEE9AC00](v49, v50);
  MEMORY[0x1EEE9AC00](v51, v52);
  *(&v120 - 4) = sub_1D5B4AA6C;
  *(&v120 - 3) = 0;
  v118 = sub_1D665A528;
  v119 = v44;
  v53 = v136;
  v55 = sub_1D5D2F7A4(v18, sub_1D615B49C, v54, sub_1D615B4A4, (&v120 - 6));
  v136 = v53;
  if (!v53)
  {
    v83 = v55;

    if (v83)
    {
      v137 = 0uLL;
      LOBYTE(v138) = 0;
      v144 = v124;
      v145 = v29;
      v57 = v135;
      v84 = v136;
      sub_1D72647EC();

      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
      v136 = v84;
      v58 = v134;
      v33 = v126;
      if (v84)
      {
        v56 = v57;
        return sub_1D5D2CFE8(v56, sub_1D665A280);
      }

      v59 = v133;
      v32 = v128;
    }

    else
    {
      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

      v57 = v135;
      v59 = v133;
      v58 = v134;
      v32 = v128;
      v33 = v126;
    }

LABEL_7:
    v60 = v132;
    swift_beginAccess();
    v61 = v60[4];
    v130(v59, v33, v32);
    swift_storeEnumTagMultiPayload();
    v62 = (v57 + *(v58 + 44));
    v64 = *v62;
    v63 = v62[1];
    LOBYTE(v137) = 0;
    v65 = swift_allocObject();
    v134 = xmmword_1D728CF30;
    *(v65 + 16) = xmmword_1D728CF30;
    *(v65 + 32) = v137;
    v123 = v64;
    *(v65 + 40) = v64;
    *(v65 + 48) = v63;
    sub_1D665A314();
    v67 = v66;
    v68 = sub_1D5B58B84(&qword_1EDF03588, sub_1D665A314);
    v126 = v61;

    v124 = v63;

    v125 = v67;
    v69 = v68;
    v70 = sub_1D72647CC();
    LOBYTE(v137) = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = v134;
    *(v71 + 40) = v137;
    v72 = (v57 + *(v58 + 36));
    v73 = __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    MEMORY[0x1EEE9AC00](v73, v74);
    MEMORY[0x1EEE9AC00](v75, v76);
    *(&v120 - 4) = sub_1D5B4AA6C;
    *(&v120 - 3) = 0;
    v118 = sub_1D6708870;
    v119 = v65;
    v77 = v136;
    v79 = sub_1D5D2F7A4(v59, sub_1D615B49C, v78, sub_1D615B4A4, (&v120 - 6));
    if (v77)
    {
      sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);

      v56 = v57;
      return sub_1D5D2CFE8(v56, sub_1D665A280);
    }

    v80 = v79;
    v81 = v126;
    v121 = v72;
    v82 = v132;
    v122 = v69;

    if (v80)
    {
      v137 = v134;
      LOBYTE(v138) = 0;
      *&v142 = v81;
      sub_1D5C34D84(0, &qword_1EDF04C88, &type metadata for FormatOptionsNodeStatement, MEMORY[0x1E69E62F8]);
      sub_1D665A5A4();
      sub_1D72647EC();
      v136 = 0;

      sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v136 = 0;
      sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);
    }

    v85 = v82[5];
    v86 = v82[6];
    v88 = v82[7];
    v87 = v82[8];
    v89 = v82[9];
    v133 = v82[10];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v90 = v128;
    v91 = __swift_project_value_buffer(v128, qword_1EDFFCE38);
    v92 = v127;
    v130(v127, v91, v90);
    swift_storeEnumTagMultiPayload();
    v134 = xmmword_1D7297410;
    v142 = xmmword_1D7297410;
    v143 = 0;
    LOBYTE(v137) = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = v134;
    *(v94 + 32) = v137;
    *(v94 + 40) = v123;
    v95 = v124;
    *(v94 + 48) = v124;
    if (v85)
    {
      v132 = &v120;
      v126 = v85;
      *&v137 = v85;
      *(&v137 + 1) = v86;
      v138 = v88;
      v139 = v87;
      v96 = v89;
      v140 = v89;
      v141 = v133;
      MEMORY[0x1EEE9AC00](v95, v93);
      v98 = v97;
      v131 = &v120 - 6;
      *(&v120 - 4) = sub_1D5B4AA6C;
      *(&v120 - 3) = 0;
      v118 = sub_1D6708870;
      v119 = v94;
      v146 = 0;
      v100 = v99;
      v101 = swift_allocObject();
      *(v101 + 16) = v134;
      *(v101 + 32) = v146;
      *(v101 + 40) = v98;
      *(v101 + 48) = v100;
      swift_retain_n();
      sub_1D5EB1D80(v126, v86, v88, v87, v96);
      v102 = sub_1D72647CC();
      v146 = 0;
      v103 = swift_allocObject();
      *(v103 + 16) = v102;
      *(v103 + 24) = v134;
      *(v103 + 40) = v146;
      v104 = __swift_project_boxed_opaque_existential_1(v121, v121[3]);
      MEMORY[0x1EEE9AC00](v104, v105);
      MEMORY[0x1EEE9AC00](v106, v107);
      v108 = v131;
      *(&v120 - 4) = sub_1D615B4A4;
      *(&v120 - 3) = v108;
      v118 = sub_1D6708870;
      v119 = v101;
      v109 = v127;
      v110 = v136;
      v112 = sub_1D5D2F7A4(v127, sub_1D615B49C, v111, sub_1D615B4A4, (&v120 - 6));
      if (v110)
      {

        v113 = v135;
LABEL_24:
        v115 = v140;

        sub_1D5CBF568(v115);

        sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
LABEL_28:
        v56 = v113;
        return sub_1D5D2CFE8(v56, sub_1D665A280);
      }

      v114 = v112;

      if (v114)
      {
        sub_1D6659A24();
        v113 = v135;
        sub_1D72647EC();

        goto LABEL_24;
      }

      v116 = v140;

      sub_1D5CBF568(v116);

      sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
    }

    v113 = v135;
    goto LABEL_28;
  }

  sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

  v56 = v40;
  return sub_1D5D2CFE8(v56, sub_1D665A280);
}

uint64_t FormatWeatherBinding.Image.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v27;
    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F50F4820;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D665A640();
    v25 = 0uLL;
    sub_1D726431C();
    v24 = xmmword_1D7279980;
    sub_1D5C94800();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v23 = v26;
    *v14 = v25;
    *(v14 + 16) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatWeatherBinding.Image.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = *(v1 + 17);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatWeatherBinding.Image, &type metadata for FormatCodingKeys, v18, v15, &type metadata for FormatWeatherBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Sydro, v16, v10, v17, &off_1F51F6C38);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCDE0);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A185C(v11, v12, v13 | (v14 << 8), v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatSelectorExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D665A694();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5C5F6FC();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF250C8, sub_1D5C5F6FC);
  sub_1D5D2EE70(&type metadata for FormatSelectorExpression, v17, v19, v14, &type metadata for FormatSelectorExpression, v17, &type metadata for FormatVersions.JazzkonC, v15, v11, v18, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD30);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v44 = v12;
  v45 = v13;
  v42[3] = 0;
  v42[4] = 0;
  v43 = 0;
  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v46 = 0;
  v25 = swift_allocObject();
  v42[1] = v42;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v46;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v42[-4] = sub_1D5B4AA6C;
  v42[-3] = 0;
  v40 = sub_1D6708874;
  v41 = v27;
  v46 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v46;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D665A728();
  v30 = v29;
  sub_1D5B58B84(&qword_1EDF03058, sub_1D665A728);
  swift_retain_n();
  v42[0] = v30;
  v31 = sub_1D72647CC();
  v46 = 0;
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = v31;
  *(v32 + 40) = v46;
  v33 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v42[-4] = sub_1D615B4A4;
  v42[-3] = &v42[-6];
  v40 = sub_1D665A7BC;
  v41 = v28;
  v37 = v42[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v38, sub_1D615B4A4, &v42[-6]);
  if (v37)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5D3E60C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D665A694);
}

uint64_t FormatSelectorsExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D665A838();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D665A8CC();
  sub_1D5B58B84(&qword_1EDF25068, sub_1D665A8CC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6628490(0x726F7463656C6573, 0xE900000000000073);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v23[1] = 0;
  v23[2] = 0;
  v24 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v17 = v26;
  *v13 = v25;
  v13[1] = v17;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSelectorsExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D665AA4C();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D665A8CC();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF25068, sub_1D665A8CC);
  sub_1D5D2EE70(&type metadata for FormatSelectorsExpression, v17, v19, v14, &type metadata for FormatSelectorsExpression, v17, &type metadata for FormatVersions.AzdenE, v15, v11, v18, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD98);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v44 = v12;
  v45 = v13;
  v42[3] = 0;
  v42[4] = 0;
  v43 = 0;
  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v46 = 0;
  v25 = swift_allocObject();
  v42[1] = v42;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v46;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v42[-4] = sub_1D5B4AA6C;
  v42[-3] = 0;
  v40 = sub_1D6708878;
  v41 = v27;
  v46 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v46;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D665AAE0();
  v30 = v29;
  sub_1D5B58B84(&qword_1EDF02FE8, sub_1D665AAE0);
  swift_retain_n();
  v42[0] = v30;
  v31 = sub_1D72647CC();
  v46 = 0;
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = v31;
  *(v32 + 40) = v46;
  v33 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v42[-4] = sub_1D615B4A4;
  v42[-3] = &v42[-6];
  v40 = sub_1D665AB74;
  v41 = v28;
  v37 = v42[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v38, sub_1D615B4A4, &v42[-6]);
  if (v37)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5D3E60C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D665AA4C);
}

uint64_t FormatSportsEventBinding.Bool.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v30;
    v13 = a1[3];
    v26 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F50F4900;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v26;
          goto LABEL_9;
        }
      }
    }

    sub_1D665ABF0();
    v29 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      if (v27 == 1)
      {
        v29 = xmmword_1D7279980;
        sub_1D5C78A70();
        sub_1D726431C();
        a1 = v26;
        (*(v11 + 8))(v10, v6);
        v23 = v27;
        v24 = 64;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC886080, sub_1D665AC44, &type metadata for FormatTagBinding.Bool, type metadata accessor for FormatArraySubscript);
        v29 = xmmword_1D7279980;
        sub_1D665AC98();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        a1 = v26;
        v23 = v27;
        v24 = v28 | 0x80;
      }
    }

    else
    {
      v29 = xmmword_1D7279980;
      sub_1D5C78A70();
      sub_1D726431C();
      a1 = v26;
      (*(v11 + 8))(v10, v6);
      v24 = 0;
      v23 = v27;
    }

    *v12 = v23;
    *(v12 + 8) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t FormatSpaceNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v139 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v140 = v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v141 = v139 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  *&v151 = v139 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v139 - v20;
  sub_1D665AD28();
  v155 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5C9EA4C();
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EDF24B68, sub_1D5C9EA4C);
  v152 = v25;
  sub_1D5D2EE70(v4, v29, v31, v26, v4, v29, &type metadata for FormatVersions.JazzkonC, v27, v25, v30, &off_1F51F6C78);
  swift_beginAccess();
  v33 = v2[2];
  v32 = v2[3];
  v150 = v2;
  v34 = qword_1EDF31EB0;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_1D725BD1C();
  v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
  v37 = *(v35 - 8);
  v38 = *(v37 + 16);
  v39 = v37 + 16;
  v149 = v36;
  v38(v21);
  v40 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v41 = sub_1D725895C();
  v42 = (*(*(v41 - 8) + 48))(v8, 1, v41);
  v145 = v35;
  v148 = v38;
  v147 = v39;
  v146 = v40;
  if (v42 != 1)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v62 = v152;
LABEL_8:
    v63 = v149;
    goto LABEL_9;
  }

  v144 = v33;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v43 = v155;
  v44 = v152;
  v45 = &v152[*(v155 + 44)];
  v47 = *v45;
  v46 = *(v45 + 1);
  LOBYTE(v156) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v156;
  *(v48 + 40) = v47;
  *(v48 + 48) = v46;
  sub_1D665ADBC();
  v50 = v49;
  sub_1D5B58B84(&qword_1EDF02A18, sub_1D665ADBC);

  *&v154 = v50;
  v51 = sub_1D72647CC();
  LOBYTE(v156) = 0;
  v52 = swift_allocObject();
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 16) = v51;
  *(v52 + 40) = v156;
  v53 = __swift_project_boxed_opaque_existential_1((v44 + *(v43 + 36)), *(v44 + *(v43 + 36) + 24));
  MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  v139[-4] = sub_1D5B4AA6C;
  v139[-3] = 0;
  v137 = sub_1D670887C;
  v138 = v48;
  v57 = v153;
  v59 = sub_1D5D2F7A4(v21, sub_1D615B49C, v58, sub_1D615B4A4, &v139[-6]);
  if (v57)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    v60 = v44;
    return sub_1D5D2CFE8(v60, sub_1D665AD28);
  }

  v90 = v59;

  if ((v90 & 1) == 0)
  {
    *&v153 = 0;
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    v62 = v152;
    v35 = v145;
    v38 = v148;
    goto LABEL_8;
  }

  v156 = 0uLL;
  LOBYTE(v157) = 0;
  v164 = v144;
  v165 = v32;
  v62 = v152;
  sub_1D72647EC();

  sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  v38 = v148;
  v63 = v149;
  *&v153 = 0;
  v35 = v145;
LABEL_9:
  v64 = v150;
  swift_beginAccess();
  v65 = v64[4];
  (v38)(v151, v63, v35);
  swift_storeEnumTagMultiPayload();
  v163 = v65;
  v154 = xmmword_1D728CF30;
  v156 = xmmword_1D728CF30;
  LOBYTE(v157) = 0;
  v66 = (v62 + *(v155 + 44));
  v67 = *v66;
  v68 = v66[1];
  LOBYTE(v161) = 0;
  v69 = swift_allocObject();
  v143 = v139;
  *(v69 + 16) = v154;
  *(v69 + 32) = v161;
  *(v69 + 40) = v67;
  *(v69 + 48) = v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v142 = &v139[-6];
  v139[-4] = sub_1D5B4AA6C;
  v139[-3] = 0;
  v137 = sub_1D670887C;
  v138 = v71;
  LOBYTE(v161) = 0;
  v72 = v62;
  v73 = swift_allocObject();
  *(v73 + 16) = v154;
  *(v73 + 32) = v161;
  v139[0] = v67;
  *(v73 + 40) = v67;
  *(v73 + 48) = v68;
  v74 = v68;
  swift_retain_n();
  v144 = v65;
  sub_1D5C82CD8(v65);
  sub_1D665ADBC();
  v76 = v75;
  v77 = sub_1D5B58B84(&qword_1EDF02A18, sub_1D665ADBC);
  v139[2] = v76;
  v139[1] = v77;
  v78 = sub_1D72647CC();
  LOBYTE(v161) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = v154;
  *(v79 + 40) = v161;
  v80 = (v72 + *(v155 + 36));
  v81 = __swift_project_boxed_opaque_existential_1(v80, v80[3]);
  MEMORY[0x1EEE9AC00](v81, v82);
  MEMORY[0x1EEE9AC00](v83, v84);
  v85 = v142;
  v139[-4] = sub_1D615B4A4;
  v139[-3] = v85;
  v86 = v151;
  v137 = sub_1D670887C;
  v138 = v73;
  v87 = v153;
  sub_1D5D2BC70(v151, sub_1D615B49C, v88, sub_1D615B4A4, &v139[-6]);
  if (!v87)
  {
    v155 = v74;
    v89 = v150;

    sub_1D5CA1E90();
    sub_1D72647EC();
    *&v154 = v80;
    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);
    sub_1D5C92A8C(v144);

    v91 = v89;
    swift_beginAccess();
    v92 = v89[5];
    v93 = v141;
    (v148)(v141, v149, v145);
    swift_storeEnumTagMultiPayload();
    if (*(v92 + 16))
    {
      LOBYTE(v156) = 0;
      v94 = swift_allocObject();
      v153 = xmmword_1D7297410;
      *(v94 + 16) = xmmword_1D7297410;
      *(v94 + 32) = v156;
      *(v94 + 40) = v139[0];
      *(v94 + 48) = v155;

      v95 = sub_1D72647CC();
      LOBYTE(v156) = 0;
      v96 = swift_allocObject();
      *(v96 + 16) = v95;
      *(v96 + 24) = v153;
      *(v96 + 40) = v156;
      v97 = __swift_project_boxed_opaque_existential_1(v154, *(v154 + 24));
      MEMORY[0x1EEE9AC00](v97, v98);
      MEMORY[0x1EEE9AC00](v99, v100);
      v139[-4] = sub_1D5B4AA6C;
      v139[-3] = 0;
      v137 = sub_1D670887C;
      v138 = v94;
      v102 = sub_1D5D2F7A4(v93, sub_1D615B49C, v101, sub_1D615B4A4, &v139[-6]);
      v104 = v102;

      v103 = v140;
      if (v104)
      {
        v156 = v153;
        LOBYTE(v157) = 0;
        *&v161 = v92;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        *&v153 = 0;

        sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        *&v153 = 0;
        sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);
      }
    }

    else
    {
      *&v153 = 0;
      sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
      v103 = v140;
    }

    v106 = v91[6];
    v105 = v91[7];
    v107 = v91[8];
    v108 = v91[9];
    v109 = v91[10];
    v110 = v91[11];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v111 = v145;
    v112 = __swift_project_value_buffer(v145, qword_1EDFFCE38);
    (v148)(v103, v112, v111);
    swift_storeEnumTagMultiPayload();
    v151 = xmmword_1D72BAA60;
    v161 = xmmword_1D72BAA60;
    v162 = 0;
    LOBYTE(v156) = 0;
    v114 = swift_allocObject();
    *(v114 + 16) = v151;
    *(v114 + 32) = v156;
    *(v114 + 40) = v139[0];
    v115 = v155;
    *(v114 + 48) = v155;
    if (v106)
    {
      v150 = v139;
      v144 = v106;
      *&v156 = v106;
      *(&v156 + 1) = v105;
      v116 = v105;
      v157 = v107;
      v158 = v108;
      v117 = v109;
      v159 = v109;
      v160 = v110;
      MEMORY[0x1EEE9AC00](v115, v113);
      v119 = v118;
      v149 = &v139[-6];
      v139[-4] = sub_1D5B4AA6C;
      v139[-3] = 0;
      v137 = sub_1D670887C;
      v138 = v114;
      v166 = 0;
      v121 = v120;
      v122 = swift_allocObject();
      *(v122 + 16) = v151;
      *(v122 + 32) = v166;
      *(v122 + 40) = v119;
      *(v122 + 48) = v121;
      v123 = v140;
      swift_retain_n();
      sub_1D5EB1D80(v144, v116, v107, v108, v117);
      v124 = sub_1D72647CC();
      v166 = 0;
      v125 = swift_allocObject();
      *(v125 + 16) = v124;
      *(v125 + 24) = v151;
      *(v125 + 40) = v166;
      v126 = __swift_project_boxed_opaque_existential_1(v154, *(v154 + 24));
      MEMORY[0x1EEE9AC00](v126, v127);
      MEMORY[0x1EEE9AC00](v128, v129);
      v130 = v149;
      v139[-4] = sub_1D615B4A4;
      v139[-3] = v130;
      v137 = sub_1D670887C;
      v138 = v122;
      v131 = v153;
      v133 = sub_1D5D2F7A4(v123, sub_1D615B49C, v132, sub_1D615B4A4, &v139[-6]);
      if (v131)
      {

        v134 = v159;

        sub_1D5CBF568(v134);

        sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
        v60 = v152;
        return sub_1D5D2CFE8(v60, sub_1D665AD28);
      }

      v135 = v133;

      if (v135)
      {
        sub_1D6659A24();
        sub_1D72647EC();
      }

      v136 = v159;

      sub_1D5CBF568(v136);

      sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
    }

    v60 = v152;
    return sub_1D5D2CFE8(v60, sub_1D665AD28);
  }

  sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v72, sub_1D665AD28);
  return sub_1D5C92A8C(v144);
}

uint64_t FormatWebEmbedBinding.URL.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatWebEmbedBinding.URL, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatWebEmbedBinding.URL, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v17, v14, v18, &off_1F51F6C78);
  if (v15)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD68);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641E230(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641E230(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatVideoNodeContent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  *&v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v43 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v20 = a1;
  }

  else
  {
    v10 = a1[3];
    v44 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v11 = sub_1D7264AFC();
    LOBYTE(v10) = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v12 = v45;
    if (v10)
    {
      v13 = sub_1D726433C();
      v14 = (v13 + 40);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        v16 = v14 + 2;
        v17 = *v14;
        v14 += 2;
        if (v17 >= 4)
        {
          v18 = *(v16 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v19 = v18;
          *(v19 + 8) = v17;
          *(v19 + 16) = &unk_1F50F5CA8;
          *(v19 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v12 + 8))(v9, v6);
          a1 = v44;
          goto LABEL_9;
        }
      }
    }

    sub_1D665AEB4();
    v46[0] = 0uLL;
    sub_1D726431C();
    if (v47 <= 1u)
    {
      v24 = v48;
      if (v47)
      {
        sub_1D5C30060(0, &qword_1EC8860B0, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatSwitchValue);
        v47 = xmmword_1D7279980;
        sub_1D665B07C();
        sub_1D726431C();
        (*(v12 + 8))(v9, v6);
        v40 = *(&v46[0] + 1);
        v39 = *&v46[0];
        v41 = swift_allocObject();
        *(v41 + 16) = __PAIR128__(v40, v39);
        v24 = v48;
        v25 = (v41 | 0x2000000000000000);
      }

      else
      {
        v47 = xmmword_1D7279980;
        sub_1D665B10C();
        sub_1D726431C();
        (*(v12 + 8))(v9, v6);
        v25 = swift_allocObject();
        v32 = v46[13];
        v25[13] = v46[12];
        v25[14] = v32;
        v25[15] = v46[14];
        v33 = v46[9];
        v25[9] = v46[8];
        v25[10] = v33;
        v34 = v46[11];
        v25[11] = v46[10];
        v25[12] = v34;
        v35 = v46[5];
        v25[5] = v46[4];
        v25[6] = v35;
        v36 = v46[7];
        v25[7] = v46[6];
        v25[8] = v36;
        v37 = v46[1];
        v25[1] = v46[0];
        v25[2] = v37;
        v38 = v46[3];
        v25[3] = v46[2];
        v25[4] = v38;
      }
    }

    else if (v47 == 2)
    {
      sub_1D5C30060(0, &qword_1EDF0CE58, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatUserInterfaceValue);
      v47 = xmmword_1D7279980;
      sub_1D665AFEC();
      sub_1D726431C();
      (*(v12 + 8))(v9, v6);
      v27 = *(&v46[0] + 1);
      v26 = *&v46[0];
      v28 = swift_allocObject();
      *(v28 + 16) = __PAIR128__(v27, v26);
      v24 = v48;
      v25 = (v28 | 0x4000000000000000);
    }

    else if (v47 == 3)
    {
      v47 = xmmword_1D7279980;
      sub_1D665AF98();
      sub_1D726431C();
      (*(v12 + 8))(v9, v6);
      v22 = *&v46[0];
      v45 = *(v46 + 8);
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v24 = v48;
      *(v23 + 24) = v45;
      v25 = (v23 | 0x6000000000000000);
    }

    else
    {
      sub_1D5C30060(0, &qword_1EC886098, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatSelectorValue);
      v47 = xmmword_1D7279980;
      sub_1D665AF08();
      sub_1D726431C();
      (*(v12 + 8))(v9, v6);
      v30 = *(&v46[0] + 1);
      v29 = *&v46[0];
      v31 = swift_allocObject();
      *(v31 + 16) = __PAIR128__(v30, v29);
      v24 = v48;
      v25 = (v31 | 0x8000000000000000);
    }

    v42 = v44;
    *v24 = v25;
    v20 = v42;
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t FormatVideoNodeContent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v72 = &v70 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v70 - v20;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v2;
  v28 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = sub_1D5C30408();
  v75 = v25;
  sub_1D5D2EE70(&type metadata for FormatVideoNodeContent, &type metadata for FormatCodingKeys, v30, v28, &type metadata for FormatVideoNodeContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v27, v25, v29, &off_1F51F6C18);
  v31 = v26 >> 61;
  if ((v26 >> 61) <= 1)
  {
    if (v31)
    {
      v64 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v65 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v66 = qword_1EDF31EE8;

      v48 = v75;
      if (v66 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EDFFCD98);
      (*(*(v67 - 8) + 16))(v17, v68, v67);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6398114(1, v64, v65, v17);

      v51 = v17;
    }

    else
    {
      v41 = *(v26 + 208);
      v74[11] = *(v26 + 192);
      v74[12] = v41;
      v42 = *(v26 + 240);
      v74[13] = *(v26 + 224);
      v74[14] = v42;
      v43 = *(v26 + 144);
      v74[7] = *(v26 + 128);
      v74[8] = v43;
      v44 = *(v26 + 176);
      v74[9] = *(v26 + 160);
      v74[10] = v44;
      v45 = *(v26 + 80);
      v74[3] = *(v26 + 64);
      v74[4] = v45;
      v46 = *(v26 + 112);
      v74[5] = *(v26 + 96);
      v74[6] = v46;
      v47 = *(v26 + 32);
      v74[0] = *(v26 + 16);
      v74[1] = v47;
      v74[2] = *(v26 + 48);
      sub_1D5EEBE38(v74, &v73);
      v48 = v75;
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCD98);
      (*(*(v49 - 8) + 16))(v21, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6397F3C(0, v74, v21);
      sub_1D5EEBE94(v74);
      v51 = v21;
    }

    goto LABEL_21;
  }

  if (v31 == 2)
  {
    v52 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v53 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v54 = qword_1EDF31EE8;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = sub_1D725BD1C();
    v56 = __swift_project_value_buffer(v55, qword_1EDFFCD98);
    (*(*(v55 - 8) + 16))(v13, v56, v55);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v48 = v75;
    sub_1D63982E8(2, v52, v53, v13);

    v51 = v13;
LABEL_21:
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
    v63 = v48;
    return sub_1D5D2CFE8(v63, sub_1D5D30DC4);
  }

  if (v31 == 3)
  {
    v32 = v26 & 0x1FFFFFFFFFFFFFFFLL;
    v33 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v34 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v35 = *(v32 + 32);
    v36 = qword_1EDF31EE8;

    v37 = v75;
    if (v36 != -1)
    {
      swift_once();
    }

    v38 = sub_1D725BD1C();
    v39 = __swift_project_value_buffer(v38, qword_1EDFFCD98);
    v40 = v72;
    (*(*(v38 - 8) + 16))(v72, v39, v38);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63984BC(3, v33, v34, v35, v40);
  }

  else
  {
    v57 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v58 = *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v59 = qword_1EDF31ED0;

    v37 = v75;
    if (v59 != -1)
    {
      swift_once();
    }

    v60 = sub_1D725BD1C();
    v61 = __swift_project_value_buffer(v60, qword_1EDFFCD50);
    v62 = v71;
    (*(*(v60 - 8) + 16))(v71, v61, v60);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6398654(4, v57, v58, v62);

    v40 = v62;
  }

  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
  v63 = v37;
  return sub_1D5D2CFE8(v63, sub_1D5D30DC4);
}

uint64_t FormatBindingImageExpressionLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatBindingImageExpressionLogic, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatBindingImageExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v17, v14, v18, &off_1F51F6C78);
  if (v15)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD30);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6419598(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6419598(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatColorProcessor.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v39 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v39;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F50F5E28;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D665B1B4();
    v41 = 0uLL;
    sub_1D726431C();
    if (v40 > 3u)
    {
      v24 = v12;
      if (v40 > 5u)
      {
        if (v40 == 6)
        {
          v40 = xmmword_1D7279980;
          sub_1D665B208();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v30 = v41;
          v31 = v42;
          v32 = swift_allocObject();
          *(v32 + 16) = v30;
          *(v32 + 32) = v31;
          v25 = v32 | 0x8000000000000000;
        }

        else
        {
          (*(v11 + 8))(v15, v5);
          v25 = 0xA000000000000010;
        }
      }

      else if (v40 == 4)
      {
        v40 = xmmword_1D7279980;
        sub_1D665B25C();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v26 = v41;
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        v25 = v27 | 0x4000000000000000;
      }

      else
      {
        v41 = xmmword_1D7279980;
        sub_1D5B570F8();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v33 = v40;
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        v25 = v34 | 0x6000000000000000;
      }
    }

    else
    {
      v24 = v12;
      if (v40 > 1u)
      {
        if (v40 == 2)
        {
          v40 = xmmword_1D7279980;
          sub_1D665B348();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v28 = v41;
          v29 = *(&v41 + 1);
          v25 = swift_allocObject();
          *(v25 + 16) = v28;
          *(v25 + 24) = v29;
        }

        else
        {
          v40 = xmmword_1D7279980;
          sub_1D665B2F4();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v35 = v41;
          v36 = *(&v41 + 1);
          v37 = swift_allocObject();
          *(v37 + 16) = v35;
          *(v37 + 24) = v36;
          v25 = v37 | 0x2000000000000000;
        }
      }

      else if (v40)
      {
        v25 = 0xA000000000000008;
        (*(v11 + 8))(v15, v5);
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v25 = 0xA000000000000000;
      }
    }

    *v24 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatColorProcessor.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v82 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v84 = &v81 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v83 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v81 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v81 = &v81 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v81 - v30;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *v2;
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  v39 = sub_1D5C30408();
  v85 = v35;
  sub_1D5D2EE70(&type metadata for FormatColorProcessor, &type metadata for FormatCodingKeys, v40, v37, &type metadata for FormatColorProcessor, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v38, v35, v39, &off_1F51F6C78);
  v41 = v36 >> 61;
  if ((v36 >> 61) > 2)
  {
    if (v41 == 3)
    {
      v61 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v62 = qword_1EDF31ED0;

      if (v62 != -1)
      {
        swift_once();
      }

      v63 = sub_1D725BD1C();
      v64 = __swift_project_value_buffer(v63, qword_1EDFFCD50);
      (*(*(v63 - 8) + 16))(v13, v64, v63);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v55 = v85;
      sub_1D63A4CD4(5, v61, v13);

      v60 = v13;
    }

    else
    {
      if (v41 == 4)
      {
        v48 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v49 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v50 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v51 = qword_1EDF31E98;

        if (v51 != -1)
        {
          swift_once();
        }

        v52 = sub_1D725BD1C();
        v53 = __swift_project_value_buffer(v52, qword_1EDFFCD00);
        v31 = v84;
        (*(*(v52 - 8) + 16))(v84, v53, v52);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v54 = v50;
        v55 = v85;
        sub_1D63A4E68(6, v48, v49, v54, v31);
      }

      else
      {
        if (v36 == 0xA000000000000000)
        {
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v76 = sub_1D725BD1C();
          v77 = __swift_project_value_buffer(v76, qword_1EDFFCD30);
          (*(*(v76 - 8) + 16))(v31, v77, v76);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v75 = 0;
          v78 = v31;
          v55 = v85;
        }

        else
        {
          if (v36 == 0xA000000000000008)
          {
            v55 = v85;
            if (qword_1EDF31EB0 != -1)
            {
              swift_once();
            }

            v73 = sub_1D725BD1C();
            v74 = __swift_project_value_buffer(v73, qword_1EDFFCD30);
            v31 = v81;
            (*(*(v73 - 8) + 16))(v81, v74, v73);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v75 = 1;
          }

          else
          {
            v55 = v85;
            if (qword_1EDF31ED8 != -1)
            {
              swift_once();
            }

            v79 = sub_1D725BD1C();
            v80 = __swift_project_value_buffer(v79, qword_1EDFFCD68);
            v31 = v82;
            (*(*(v79 - 8) + 16))(v82, v80, v79);
            type metadata accessor for FormatVersionRequirement.Value(0);
            swift_storeEnumTagMultiPayload();
            v75 = 7;
          }

          v78 = v31;
        }

        sub_1D64205BC(v75, v78);
      }

      v60 = v31;
    }

    goto LABEL_35;
  }

  if (!v41)
  {
    v56 = *(v36 + 16);
    v57 = *(v36 + 24);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v58 = sub_1D725BD1C();
    v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
    (*(*(v58 - 8) + 16))(v24, v59, v58);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v55 = v85;
    sub_1D63A4810(2, v56, v24, v57);
    v60 = v24;
LABEL_35:
    sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
    v72 = v55;
    return sub_1D5D2CFE8(v72, sub_1D5D30DC4);
  }

  if (v41 != 1)
  {
    v65 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v66 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v67 = qword_1EDF31EB0;

    if (v67 != -1)
    {
      swift_once();
    }

    v68 = sub_1D725BD1C();
    v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
    v70 = v83;
    (*(*(v68 - 8) + 16))(v83, v69, v68);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v71 = v85;
    sub_1D63A4B40(4, v65, v66, v70);

    sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
    v72 = v71;
    return sub_1D5D2CFE8(v72, sub_1D5D30DC4);
  }

  v42 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v43 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD30);
  (*(*(v44 - 8) + 16))(v20, v45, v44);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v46 = v85;
  sub_1D63A49A8(3, v42, v20, v43);
  sub_1D5D2CFE8(v20, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v46, sub_1D5D30DC4);
}

uint64_t FormatParagraphStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v380 = v377 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v385 = v377 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v386 = v377 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v389 = v377 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v391 = v377 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v393 = v377 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v395 = v377 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v397 = v377 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v399 = v377 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v401 = v377 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v403 = v377 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v405 = v377 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v408 = v377 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v413 = v377 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  *&v417 = v377 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = v377 - v50;
  sub_1D665B39C();
  v53 = v52;
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = v377 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *v1;
  v58 = *(v1 + 1);
  LODWORD(v415) = v1[16];
  v59 = *(v1 + 3);
  v409 = v1[32];
  v60 = *(v1 + 5);
  v406 = v1[48];
  v404 = v1[49];
  v402 = v1[50];
  v61 = *(v1 + 7);
  v400 = v1[64];
  v62 = *(v1 + 9);
  v398 = v1[80];
  v63 = *(v1 + 11);
  v396 = v1[96];
  v64 = *(v1 + 13);
  v394 = v1[112];
  v65 = *(v1 + 15);
  v392 = v1[128];
  v387 = *(v1 + 17);
  v390 = v1[144];
  v383 = *(v1 + 19);
  v388 = v1[160];
  v381 = *(v1 + 21);
  v384 = v1[176];
  v378 = *(v1 + 23);
  v382 = v1[192];
  v379 = v1[193];
  v66 = a1[3];
  v67 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v66);
  sub_1D5CA98C4();
  v69 = v68;
  v70 = sub_1D5B58B84(&qword_1EDF253B8, sub_1D5CA98C4);
  sub_1D5D2EE70(&type metadata for FormatParagraphStyle, v69, v71, v66, &type metadata for FormatParagraphStyle, v69, &type metadata for FormatVersions.JazzkonC, v67, v56, v70, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v72 = sub_1D725BD1C();
  v73 = __swift_project_value_buffer(v72, qword_1EDFFCD30);
  v74 = *(v72 - 8);
  v75 = *(v74 + 16);
  v419 = (v74 + 16);
  *&v420 = v75;
  v75(v51, v73, v72);
  v418 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v424 = 0uLL;
  v425 = 0;
  v76 = &v56[*(v53 + 44)];
  v78 = *v76;
  v77 = *(v76 + 1);
  LOBYTE(v426) = 0;
  v79 = swift_allocObject();
  v81 = v53;
  v82 = v79;
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  *(v79 + 32) = v426;
  *(v79 + 40) = v78;
  *(v79 + 48) = v77;
  v421 = v56;
  v410 = v72;
  v411 = v73;
  v412 = v77;
  if (v57 == 5)
  {
    v414 = v81;
  }

  else
  {
    *&v416 = v377;
    LOBYTE(v426) = v57;
    MEMORY[0x1EEE9AC00](v79, v80);
    v377[-4] = sub_1D5B4AA6C;
    v377[-3] = 0;
    v375 = sub_1D6708880;
    v376 = v82;
    v423 = 0;
    v83 = swift_allocObject();
    *(v83 + 16) = 0;
    *(v83 + 24) = 0;
    *(v83 + 32) = v423;
    *(v83 + 40) = v78;
    *(v83 + 48) = v77;
    sub_1D665B430();
    v85 = v84;
    v86 = sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
    swift_retain_n();
    v377[1] = v85;
    v377[0] = v86;
    v87 = sub_1D72647CC();
    v423 = 0;
    v88 = swift_allocObject();
    v407 = v78;
    *(v88 + 24) = 0;
    *(v88 + 32) = 0;
    *(v88 + 16) = v87;
    *(v88 + 40) = v423;
    v89 = __swift_project_boxed_opaque_existential_1(&v56[*(v81 + 36)], *&v56[*(v81 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v89, v90);
    MEMORY[0x1EEE9AC00](v91, v92);
    v377[-4] = sub_1D615B4A4;
    v377[-3] = &v377[-6];
    v375 = sub_1D6708880;
    v376 = v83;
    v93 = v422;
    v95 = sub_1D5D2F7A4(v51, sub_1D615B49C, v94, sub_1D615B4A4, &v377[-6]);
    if (v93)
    {
      sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

      goto LABEL_17;
    }

    v96 = v95;
    v97 = v407;
    v414 = v81;

    if (v96)
    {
      sub_1D665B5FC();
      sub_1D72647EC();
      v72 = v410;
      v78 = v97;
      v422 = 0;
      v77 = v412;
    }

    else
    {
      v422 = 0;
      v77 = v412;
      v78 = v97;
      v72 = v410;
    }

    v73 = v411;
  }

  sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

  v98 = v417;
  (v420)(v417, v73, v72);
  swift_storeEnumTagMultiPayload();
  v416 = xmmword_1D728CF30;
  v424 = xmmword_1D728CF30;
  v425 = 0;
  LOBYTE(v426) = 0;
  v99 = swift_allocObject();
  v101 = v99;
  *(v99 + 16) = v416;
  *(v99 + 32) = v426;
  *(v99 + 40) = v78;
  *(v99 + 48) = v77;
  if (v415)
  {

    goto LABEL_13;
  }

  v415 = v377;
  v426 = v58;
  MEMORY[0x1EEE9AC00](v99, v100);
  v377[-4] = sub_1D5B4AA6C;
  v377[-3] = 0;
  v375 = sub_1D6708880;
  v376 = v101;
  v423 = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = v416;
  *(v107 + 32) = v423;
  *(v107 + 40) = v78;
  *(v107 + 48) = v77;
  sub_1D665B430();
  sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
  swift_retain_n();
  v108 = v421;
  v109 = sub_1D72647CC();
  v423 = 0;
  v110 = v78;
  v111 = swift_allocObject();
  *(v111 + 16) = v109;
  *(v111 + 24) = v416;
  *(v111 + 40) = v423;
  v112 = __swift_project_boxed_opaque_existential_1(&v108[*(v414 + 36)], *&v108[*(v414 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  v377[-4] = sub_1D615B4A4;
  v377[-3] = &v377[-6];
  v116 = v417;
  v375 = sub_1D6708880;
  v376 = v107;
  v117 = v422;
  v119 = sub_1D5D2F7A4(v417, sub_1D615B49C, v118, sub_1D615B4A4, &v377[-6]);
  v422 = v117;
  if (!v117)
  {
    v134 = v119;
    v135 = v412;

    if (v134)
    {
      sub_1D5B578C4();
      v120 = v421;
      v136 = v422;
      sub_1D72647EC();
      v73 = v411;
      if (v136)
      {
        sub_1D5D2CFE8(v417, type metadata accessor for FormatVersionRequirement);

        goto LABEL_18;
      }

      v78 = v110;
      v422 = 0;
      v77 = v135;
      v72 = v410;
      v98 = v417;
    }

    else
    {
      v77 = v135;
      v78 = v110;
      v72 = v410;
      v73 = v411;
      v98 = v417;
    }

LABEL_13:
    sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

    v102 = v413;
    (v420)(v413, v73, v72);
    swift_storeEnumTagMultiPayload();
    v417 = xmmword_1D7297410;
    v424 = xmmword_1D7297410;
    v425 = 0;
    LOBYTE(v426) = 0;
    v103 = swift_allocObject();
    v105 = v103;
    *(v103 + 16) = v417;
    *(v103 + 32) = v426;
    *(v103 + 40) = v78;
    *(v103 + 48) = v77;
    v407 = v78;
    if (v409)
    {

      v106 = v408;
    }

    else
    {
      *&v416 = v377;
      v426 = v59;
      MEMORY[0x1EEE9AC00](v103, v104);
      v377[-4] = sub_1D5B4AA6C;
      v377[-3] = 0;
      v375 = sub_1D6708880;
      v376 = v105;
      v423 = 0;
      v122 = swift_allocObject();
      *(v122 + 16) = v417;
      *(v122 + 32) = v423;
      *(v122 + 40) = v78;
      *(v122 + 48) = v77;
      sub_1D665B430();
      sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
      swift_retain_n();
      v123 = v421;
      v124 = sub_1D72647CC();
      v423 = 0;
      v125 = swift_allocObject();
      *(v125 + 16) = v124;
      *(v125 + 24) = v417;
      *(v125 + 40) = v423;
      v126 = __swift_project_boxed_opaque_existential_1(&v123[*(v414 + 36)], *&v123[*(v414 + 36) + 24]);
      MEMORY[0x1EEE9AC00](v126, v127);
      MEMORY[0x1EEE9AC00](v128, v129);
      v377[-4] = sub_1D615B4A4;
      v377[-3] = &v377[-6];
      v375 = sub_1D6708880;
      v376 = v122;
      v130 = v422;
      v132 = sub_1D5D2F7A4(v102, sub_1D615B49C, v131, sub_1D615B4A4, &v377[-6]);
      if (v130)
      {
        v133 = v102;
        goto LABEL_34;
      }

      v137 = v132;
      v138 = v407;
      v139 = v412;

      if (v137)
      {
        sub_1D5B578C4();
        sub_1D72647EC();
        v73 = v411;
        v78 = v138;
        v422 = 0;
        v77 = v139;
        v72 = v410;
      }

      else
      {
        v422 = 0;
        v77 = v139;
        v78 = v138;
        v72 = v410;
        v73 = v411;
      }

      v106 = v408;
      v102 = v413;
    }

    sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);

    (v420)(v106, v73, v72);
    swift_storeEnumTagMultiPayload();
    v417 = xmmword_1D72BAA60;
    v424 = xmmword_1D72BAA60;
    v425 = 0;
    LOBYTE(v426) = 0;
    v140 = swift_allocObject();
    v142 = v140;
    *(v140 + 16) = v417;
    *(v140 + 32) = v426;
    *(v140 + 40) = v78;
    *(v140 + 48) = v77;
    if (v406)
    {

      v143 = v405;
      goto LABEL_39;
    }

    *&v416 = v377;
    v426 = v60;
    MEMORY[0x1EEE9AC00](v140, v141);
    v377[-4] = sub_1D5B4AA6C;
    v377[-3] = 0;
    v375 = sub_1D6708880;
    v376 = v142;
    v423 = 0;
    v144 = swift_allocObject();
    *(v144 + 16) = v417;
    *(v144 + 32) = v423;
    *(v144 + 40) = v78;
    *(v144 + 48) = v77;
    sub_1D665B430();
    sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
    swift_retain_n();
    v145 = v421;
    v146 = sub_1D72647CC();
    v423 = 0;
    v147 = swift_allocObject();
    *(v147 + 16) = v146;
    *(v147 + 24) = v417;
    *(v147 + 40) = v423;
    v148 = __swift_project_boxed_opaque_existential_1(&v145[*(v414 + 36)], *&v145[*(v414 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v148, v149);
    MEMORY[0x1EEE9AC00](v150, v151);
    v377[-4] = sub_1D615B4A4;
    v377[-3] = &v377[-6];
    v375 = sub_1D6708880;
    v376 = v144;
    v152 = v422;
    v154 = sub_1D5D2F7A4(v106, sub_1D615B49C, v153, sub_1D615B4A4, &v377[-6]);
    if (!v152)
    {
      v155 = v154;
      v156 = v407;
      v157 = v412;

      if (v155)
      {
        sub_1D5B578C4();
        sub_1D72647EC();
        v73 = v411;
        v78 = v156;
        v422 = 0;
        v77 = v157;
        v72 = v410;
      }

      else
      {
        v422 = 0;
        v77 = v157;
        v78 = v156;
        v72 = v410;
        v73 = v411;
      }

      v143 = v405;
      v106 = v408;
LABEL_39:
      sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

      (v420)(v143, v73, v72);
      swift_storeEnumTagMultiPayload();
      v417 = xmmword_1D72BAA70;
      v424 = xmmword_1D72BAA70;
      v425 = 0;
      LOBYTE(v426) = 0;
      v158 = swift_allocObject();
      v160 = v158;
      *(v158 + 16) = v417;
      *(v158 + 32) = v426;
      *(v158 + 40) = v78;
      *(v158 + 48) = v77;
      if (v404 == 6)
      {

        v161 = v422;
      }

      else
      {
        *&v416 = v377;
        LOBYTE(v426) = v404;
        MEMORY[0x1EEE9AC00](v158, v159);
        v377[-4] = sub_1D5B4AA6C;
        v377[-3] = 0;
        v375 = sub_1D6708880;
        v376 = v160;
        v423 = 0;
        v167 = swift_allocObject();
        *(v167 + 16) = v417;
        *(v167 + 32) = v423;
        *(v167 + 40) = v78;
        *(v167 + 48) = v77;
        sub_1D665B430();
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
        swift_retain_n();
        v168 = v421;
        v169 = sub_1D72647CC();
        v423 = 0;
        v163 = v143;
        v170 = swift_allocObject();
        *(v170 + 16) = v169;
        *(v170 + 24) = v417;
        *(v170 + 40) = v423;
        v171 = __swift_project_boxed_opaque_existential_1(&v168[*(v414 + 36)], *&v168[*(v414 + 36) + 24]);
        MEMORY[0x1EEE9AC00](v171, v172);
        MEMORY[0x1EEE9AC00](v173, v174);
        v377[-4] = sub_1D615B4A4;
        v377[-3] = &v377[-6];
        v375 = sub_1D6708880;
        v376 = v167;
        v175 = v422;
        v177 = sub_1D5D2F7A4(v163, sub_1D615B49C, v176, sub_1D615B4A4, &v377[-6]);
        v161 = v175;
        if (v175)
        {
          goto LABEL_114;
        }

        v178 = v177;
        v179 = v407;
        v180 = v412;

        if (v178)
        {
          sub_1D665B5A8();
          sub_1D72647EC();
          v73 = v411;
          v143 = v405;
          v77 = v180;
          v78 = v179;
          v72 = v410;
        }

        else
        {
          v77 = v180;
          v78 = v179;
          v72 = v410;
          v73 = v411;
          v143 = v405;
        }
      }

      sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);

      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v422 = v161;
      v162 = __swift_project_value_buffer(v72, qword_1EDFFCE80);
      v163 = v403;
      (v420)(v403, v162, v72);
      swift_storeEnumTagMultiPayload();
      v417 = xmmword_1D72BAA80;
      v424 = xmmword_1D72BAA80;
      v425 = 0;
      LOBYTE(v426) = 0;
      v164 = swift_allocObject();
      v166 = v164;
      *(v164 + 16) = v417;
      *(v164 + 32) = v426;
      *(v164 + 40) = v78;
      *(v164 + 48) = v77;
      if (v402 == 3)
      {
      }

      else
      {
        *&v416 = v377;
        LOBYTE(v426) = v402;
        MEMORY[0x1EEE9AC00](v164, v165);
        v377[-4] = sub_1D5B4AA6C;
        v377[-3] = 0;
        v375 = sub_1D6708880;
        v376 = v166;
        v423 = 0;
        v181 = swift_allocObject();
        *(v181 + 16) = v417;
        *(v181 + 32) = v423;
        *(v181 + 40) = v78;
        *(v181 + 48) = v77;
        sub_1D665B430();
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
        swift_retain_n();
        v182 = v421;
        v183 = sub_1D72647CC();
        v423 = 0;
        v184 = swift_allocObject();
        *(v184 + 16) = v183;
        *(v184 + 24) = v417;
        *(v184 + 40) = v423;
        v185 = __swift_project_boxed_opaque_existential_1(&v182[*(v414 + 36)], *&v182[*(v414 + 36) + 24]);
        MEMORY[0x1EEE9AC00](v185, v186);
        MEMORY[0x1EEE9AC00](v187, v188);
        v377[-4] = sub_1D615B4A4;
        v377[-3] = &v377[-6];
        v375 = sub_1D6708880;
        v376 = v181;
        v189 = v422;
        v191 = sub_1D5D2F7A4(v163, sub_1D615B49C, v190, sub_1D615B4A4, &v377[-6]);
        if (v189)
        {
          goto LABEL_114;
        }

        v192 = v191;
        v193 = v407;
        v194 = v412;

        if (v192)
        {
          sub_1D665B554();
          sub_1D72647EC();
          v73 = v411;
          v422 = 0;
          v77 = v194;
          v78 = v193;
          v72 = v410;
        }

        else
        {
          v422 = 0;
          v77 = v194;
          v78 = v193;
          v72 = v410;
          v73 = v411;
        }

        v163 = v403;
      }

      sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);

      v195 = v401;
      (v420)(v401, v73, v72);
      swift_storeEnumTagMultiPayload();
      v417 = xmmword_1D72BAA90;
      v424 = xmmword_1D72BAA90;
      v425 = 0;
      LOBYTE(v426) = 0;
      v196 = swift_allocObject();
      v198 = v196;
      *(v196 + 16) = v417;
      *(v196 + 32) = v426;
      *(v196 + 40) = v78;
      *(v196 + 48) = v77;
      if (v400)
      {

        v163 = v399;
      }

      else
      {
        *&v416 = v377;
        v426 = v61;
        MEMORY[0x1EEE9AC00](v196, v197);
        v163 = v195;
        v377[-4] = sub_1D5B4AA6C;
        v377[-3] = 0;
        v375 = sub_1D6708880;
        v376 = v198;
        v423 = 0;
        v199 = swift_allocObject();
        *(v199 + 16) = v417;
        *(v199 + 32) = v423;
        *(v199 + 40) = v78;
        *(v199 + 48) = v77;
        sub_1D665B430();
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
        swift_retain_n();
        v200 = v421;
        v201 = sub_1D72647CC();
        v423 = 0;
        v202 = swift_allocObject();
        *(v202 + 16) = v201;
        *(v202 + 24) = v417;
        *(v202 + 40) = v423;
        v203 = __swift_project_boxed_opaque_existential_1(&v200[*(v414 + 36)], *&v200[*(v414 + 36) + 24]);
        MEMORY[0x1EEE9AC00](v203, v204);
        MEMORY[0x1EEE9AC00](v205, v206);
        v377[-4] = sub_1D615B4A4;
        v377[-3] = &v377[-6];
        v375 = sub_1D6708880;
        v376 = v199;
        v207 = v422;
        v209 = sub_1D5D2F7A4(v163, sub_1D615B49C, v208, sub_1D615B4A4, &v377[-6]);
        if (v207)
        {
          goto LABEL_114;
        }

        v210 = v209;
        v211 = v407;
        v212 = v412;

        if (v210)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v411;
          v422 = 0;
          v77 = v212;
          v78 = v211;
          v72 = v410;
        }

        else
        {
          v422 = 0;
          v77 = v212;
          v78 = v211;
          v72 = v410;
          v73 = v411;
        }

        v163 = v399;
        v195 = v401;
      }

      sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);

      (v420)(v163, v73, v72);
      swift_storeEnumTagMultiPayload();
      v417 = xmmword_1D72BAAA0;
      v424 = xmmword_1D72BAAA0;
      v425 = 0;
      LOBYTE(v426) = 0;
      v213 = swift_allocObject();
      v215 = v213;
      *(v213 + 16) = v417;
      *(v213 + 32) = v426;
      *(v213 + 40) = v78;
      *(v213 + 48) = v77;
      if (v398)
      {
      }

      else
      {
        *&v416 = v377;
        v426 = v62;
        MEMORY[0x1EEE9AC00](v213, v214);
        v377[-4] = sub_1D5B4AA6C;
        v377[-3] = 0;
        v375 = sub_1D6708880;
        v376 = v215;
        v423 = 0;
        v216 = swift_allocObject();
        *(v216 + 16) = v417;
        *(v216 + 32) = v423;
        *(v216 + 40) = v78;
        *(v216 + 48) = v77;
        sub_1D665B430();
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
        swift_retain_n();
        v217 = v421;
        v218 = sub_1D72647CC();
        v423 = 0;
        v219 = swift_allocObject();
        *(v219 + 16) = v218;
        *(v219 + 24) = v417;
        *(v219 + 40) = v423;
        v220 = __swift_project_boxed_opaque_existential_1(&v217[*(v414 + 36)], *&v217[*(v414 + 36) + 24]);
        MEMORY[0x1EEE9AC00](v220, v221);
        MEMORY[0x1EEE9AC00](v222, v223);
        v377[-4] = sub_1D615B4A4;
        v377[-3] = &v377[-6];
        v375 = sub_1D6708880;
        v376 = v216;
        v224 = v422;
        v226 = sub_1D5D2F7A4(v163, sub_1D615B49C, v225, sub_1D615B4A4, &v377[-6]);
        if (v224)
        {
          goto LABEL_114;
        }

        v227 = v407;
        v228 = v412;
        v229 = v226;

        if (v229)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v411;
          v422 = 0;
          v77 = v228;
          v78 = v227;
          v72 = v410;
        }

        else
        {
          v422 = 0;
          v77 = v228;
          v78 = v227;
          v72 = v410;
          v73 = v411;
        }

        v163 = v399;
      }

      sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);

      v163 = v397;
      (v420)(v397, v73, v72);
      swift_storeEnumTagMultiPayload();
      v417 = xmmword_1D72BAAB0;
      v424 = xmmword_1D72BAAB0;
      v425 = 0;
      LOBYTE(v426) = 0;
      v230 = swift_allocObject();
      v232 = v230;
      *(v230 + 16) = v417;
      *(v230 + 32) = v426;
      *(v230 + 40) = v78;
      *(v230 + 48) = v77;
      if (v396)
      {

        v233 = v163;
      }

      else
      {
        *&v416 = v377;
        v426 = v63;
        MEMORY[0x1EEE9AC00](v230, v231);
        v377[-4] = sub_1D5B4AA6C;
        v377[-3] = 0;
        v375 = sub_1D6708880;
        v376 = v232;
        v423 = 0;
        v234 = swift_allocObject();
        *(v234 + 16) = v417;
        *(v234 + 32) = v423;
        *(v234 + 40) = v78;
        *(v234 + 48) = v77;
        sub_1D665B430();
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
        swift_retain_n();
        v235 = v421;
        v236 = sub_1D72647CC();
        v423 = 0;
        v237 = swift_allocObject();
        *(v237 + 16) = v236;
        *(v237 + 24) = v417;
        *(v237 + 40) = v423;
        v238 = __swift_project_boxed_opaque_existential_1(&v235[*(v414 + 36)], *&v235[*(v414 + 36) + 24]);
        MEMORY[0x1EEE9AC00](v238, v239);
        MEMORY[0x1EEE9AC00](v240, v241);
        v377[-4] = sub_1D615B4A4;
        v377[-3] = &v377[-6];
        v375 = sub_1D6708880;
        v376 = v234;
        v242 = v422;
        v244 = sub_1D5D2F7A4(v163, sub_1D615B49C, v243, sub_1D615B4A4, &v377[-6]);
        if (v242)
        {
          goto LABEL_114;
        }

        v245 = v244;
        v246 = v407;
        v247 = v412;

        if (v245)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v411;
          v422 = 0;
          v77 = v247;
          v78 = v246;
          v72 = v410;
        }

        else
        {
          v422 = 0;
          v77 = v247;
          v78 = v246;
          v72 = v410;
          v73 = v411;
        }

        v233 = v397;
      }

      sub_1D5D2CFE8(v233, type metadata accessor for FormatVersionRequirement);

      v163 = v395;
      (v420)(v395, v73, v72);
      swift_storeEnumTagMultiPayload();
      v417 = xmmword_1D72BAAC0;
      v424 = xmmword_1D72BAAC0;
      v425 = 0;
      LOBYTE(v426) = 0;
      v248 = swift_allocObject();
      v250 = v248;
      *(v248 + 16) = v417;
      *(v248 + 32) = v426;
      *(v248 + 40) = v78;
      *(v248 + 48) = v77;
      if (v394)
      {

        v251 = v163;
      }

      else
      {
        *&v416 = v377;
        v426 = v64;
        MEMORY[0x1EEE9AC00](v248, v249);
        v377[-4] = sub_1D5B4AA6C;
        v377[-3] = 0;
        v375 = sub_1D6708880;
        v376 = v250;
        v423 = 0;
        v252 = swift_allocObject();
        *(v252 + 16) = v417;
        *(v252 + 32) = v423;
        *(v252 + 40) = v78;
        *(v252 + 48) = v77;
        sub_1D665B430();
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
        swift_retain_n();
        v253 = v421;
        v254 = sub_1D72647CC();
        v423 = 0;
        v255 = swift_allocObject();
        *(v255 + 16) = v254;
        *(v255 + 24) = v417;
        *(v255 + 40) = v423;
        v256 = __swift_project_boxed_opaque_existential_1(&v253[*(v414 + 36)], *&v253[*(v414 + 36) + 24]);
        MEMORY[0x1EEE9AC00](v256, v257);
        MEMORY[0x1EEE9AC00](v258, v259);
        v377[-4] = sub_1D615B4A4;
        v377[-3] = &v377[-6];
        v375 = sub_1D6708880;
        v376 = v252;
        v260 = v422;
        v262 = sub_1D5D2F7A4(v163, sub_1D615B49C, v261, sub_1D615B4A4, &v377[-6]);
        if (v260)
        {
          goto LABEL_114;
        }

        v263 = v262;
        v264 = v407;
        v265 = v412;

        if (v263)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v411;
          v422 = 0;
          v77 = v265;
          v78 = v264;
          v72 = v410;
        }

        else
        {
          v422 = 0;
          v77 = v265;
          v78 = v264;
          v72 = v410;
          v73 = v411;
        }

        v251 = v395;
      }

      sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);

      v163 = v393;
      (v420)(v393, v73, v72);
      swift_storeEnumTagMultiPayload();
      v417 = xmmword_1D72BAAD0;
      v424 = xmmword_1D72BAAD0;
      v425 = 0;
      LOBYTE(v426) = 0;
      v266 = swift_allocObject();
      v268 = v266;
      *(v266 + 16) = v417;
      *(v266 + 32) = v426;
      *(v266 + 40) = v78;
      *(v266 + 48) = v77;
      if (v392)
      {

        v269 = v163;
      }

      else
      {
        *&v416 = v377;
        v426 = v65;
        MEMORY[0x1EEE9AC00](v266, v267);
        v377[-4] = sub_1D5B4AA6C;
        v377[-3] = 0;
        v375 = sub_1D6708880;
        v376 = v268;
        v423 = 0;
        v270 = swift_allocObject();
        *(v270 + 16) = v417;
        *(v270 + 32) = v423;
        *(v270 + 40) = v78;
        *(v270 + 48) = v77;
        sub_1D665B430();
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
        swift_retain_n();
        v271 = v421;
        v272 = sub_1D72647CC();
        v423 = 0;
        v273 = swift_allocObject();
        *(v273 + 16) = v272;
        *(v273 + 24) = v417;
        *(v273 + 40) = v423;
        v274 = __swift_project_boxed_opaque_existential_1(&v271[*(v414 + 36)], *&v271[*(v414 + 36) + 24]);
        MEMORY[0x1EEE9AC00](v274, v275);
        MEMORY[0x1EEE9AC00](v276, v277);
        v377[-4] = sub_1D615B4A4;
        v377[-3] = &v377[-6];
        v375 = sub_1D6708880;
        v376 = v270;
        v278 = v422;
        v280 = sub_1D5D2F7A4(v163, sub_1D615B49C, v279, sub_1D615B4A4, &v377[-6]);
        if (v278)
        {
          goto LABEL_114;
        }

        v281 = v280;
        v282 = v407;
        v283 = v412;

        if (v281)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v411;
          v422 = 0;
          v77 = v283;
          v78 = v282;
          v72 = v410;
        }

        else
        {
          v422 = 0;
          v77 = v283;
          v78 = v282;
          v72 = v410;
          v73 = v411;
        }

        v269 = v393;
      }

      sub_1D5D2CFE8(v269, type metadata accessor for FormatVersionRequirement);

      v163 = v391;
      (v420)(v391, v73, v72);
      swift_storeEnumTagMultiPayload();
      v417 = xmmword_1D72BAAE0;
      v424 = xmmword_1D72BAAE0;
      v425 = 0;
      LOBYTE(v426) = 0;
      v284 = swift_allocObject();
      v286 = v284;
      *(v284 + 16) = v417;
      *(v284 + 32) = v426;
      *(v284 + 40) = v78;
      *(v284 + 48) = v77;
      if (v390)
      {

        v287 = v422;
        v288 = v163;
      }

      else
      {
        *&v416 = v377;
        v426 = v387;
        MEMORY[0x1EEE9AC00](v284, v285);
        v377[-4] = sub_1D5B4AA6C;
        v377[-3] = 0;
        v375 = sub_1D6708880;
        v376 = v286;
        v423 = 0;
        v289 = swift_allocObject();
        *(v289 + 16) = v417;
        *(v289 + 32) = v423;
        *(v289 + 40) = v78;
        *(v289 + 48) = v77;
        sub_1D665B430();
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
        swift_retain_n();
        v290 = v421;
        v291 = sub_1D72647CC();
        v423 = 0;
        v292 = swift_allocObject();
        *(v292 + 16) = v291;
        *(v292 + 24) = v417;
        *(v292 + 40) = v423;
        v293 = __swift_project_boxed_opaque_existential_1(&v290[*(v414 + 36)], *&v290[*(v414 + 36) + 24]);
        MEMORY[0x1EEE9AC00](v293, v294);
        MEMORY[0x1EEE9AC00](v295, v296);
        v377[-4] = sub_1D615B4A4;
        v377[-3] = &v377[-6];
        v375 = sub_1D6708880;
        v376 = v289;
        v297 = v422;
        v299 = sub_1D5D2F7A4(v163, sub_1D615B49C, v298, sub_1D615B4A4, &v377[-6]);
        v287 = v297;
        if (v297)
        {
          goto LABEL_114;
        }

        v300 = v407;
        v301 = v412;
        v302 = v299;

        if (v302)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v411;
          v77 = v301;
          v78 = v300;
          v72 = v410;
        }

        else
        {
          v77 = v301;
          v78 = v300;
          v72 = v410;
          v73 = v411;
        }

        v288 = v391;
      }

      sub_1D5D2CFE8(v288, type metadata accessor for FormatVersionRequirement);

      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v422 = v287;
      v303 = __swift_project_value_buffer(v72, qword_1EDFFCD18);
      v163 = v389;
      (v420)(v389, v303, v72);
      swift_storeEnumTagMultiPayload();
      v417 = xmmword_1D72BAAF0;
      v424 = xmmword_1D72BAAF0;
      v425 = 0;
      LOBYTE(v426) = 0;
      v304 = swift_allocObject();
      v306 = v304;
      *(v304 + 16) = v417;
      *(v304 + 32) = v426;
      *(v304 + 40) = v78;
      *(v304 + 48) = v77;
      if (v388)
      {
      }

      else
      {
        *&v416 = v377;
        v426 = v383;
        MEMORY[0x1EEE9AC00](v304, v305);
        v377[-4] = sub_1D5B4AA6C;
        v377[-3] = 0;
        v375 = sub_1D6708880;
        v376 = v306;
        v423 = 0;
        v307 = swift_allocObject();
        *(v307 + 16) = v417;
        *(v307 + 32) = v423;
        *(v307 + 40) = v78;
        *(v307 + 48) = v77;
        sub_1D665B430();
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
        swift_retain_n();
        v308 = v421;
        v309 = sub_1D72647CC();
        v423 = 0;
        v310 = swift_allocObject();
        *(v310 + 16) = v309;
        *(v310 + 24) = v417;
        *(v310 + 40) = v423;
        v311 = __swift_project_boxed_opaque_existential_1(&v308[*(v414 + 36)], *&v308[*(v414 + 36) + 24]);
        MEMORY[0x1EEE9AC00](v311, v312);
        MEMORY[0x1EEE9AC00](v313, v314);
        v377[-4] = sub_1D615B4A4;
        v377[-3] = &v377[-6];
        v375 = sub_1D6708880;
        v376 = v307;
        v315 = v422;
        v317 = sub_1D5D2F7A4(v163, sub_1D615B49C, v316, sub_1D615B4A4, &v377[-6]);
        if (v315)
        {
          goto LABEL_114;
        }

        v318 = v317;
        v319 = v407;
        v320 = v412;

        if (v318)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
          v73 = v411;
          v422 = 0;
          v77 = v320;
          v78 = v319;
          v72 = v410;
        }

        else
        {
          v422 = 0;
          v77 = v320;
          v78 = v319;
          v72 = v410;
          v73 = v411;
        }

        v163 = v389;
      }

      sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);

      v321 = v386;
      (v420)(v386, v73, v72);
      swift_storeEnumTagMultiPayload();
      v417 = xmmword_1D7282A80;
      v424 = xmmword_1D7282A80;
      v425 = 0;
      LOBYTE(v426) = 0;
      v322 = swift_allocObject();
      v324 = v322;
      *(v322 + 16) = v417;
      *(v322 + 32) = v426;
      *(v322 + 40) = v78;
      *(v322 + 48) = v77;
      if (v384)
      {

        v163 = v385;
LABEL_111:
        v338 = v382;
        sub_1D5D2CFE8(v321, type metadata accessor for FormatVersionRequirement);

        (v420)(v163, v73, v72);
        swift_storeEnumTagMultiPayload();
        v417 = xmmword_1D72BAB00;
        v424 = xmmword_1D72BAB00;
        v425 = 0;
        LOBYTE(v426) = 0;
        v339 = swift_allocObject();
        v341 = v339;
        *(v339 + 16) = v417;
        *(v339 + 32) = v426;
        *(v339 + 40) = v78;
        *(v339 + 48) = v77;
        if (v338)
        {

          v342 = v422;
LABEL_121:
          sub_1D5D2CFE8(v385, type metadata accessor for FormatVersionRequirement);

          v358 = v380;
          (v420)(v380, v73, v72);
          swift_storeEnumTagMultiPayload();
          v420 = xmmword_1D72BAB10;
          v424 = xmmword_1D72BAB10;
          v425 = 0;
          LOBYTE(v426) = 0;
          v359 = swift_allocObject();
          v361 = v359;
          *(v359 + 16) = v420;
          *(v359 + 32) = v426;
          *(v359 + 40) = v78;
          *(v359 + 48) = v77;
          if (v379 == 2)
          {

            v362 = v358;
LABEL_127:
            sub_1D5D2CFE8(v362, type metadata accessor for FormatVersionRequirement);

            goto LABEL_116;
          }

          v419 = v377;
          LOBYTE(v426) = v379 & 1;
          MEMORY[0x1EEE9AC00](v359, v360);
          v422 = v342;
          v377[-4] = sub_1D5B4AA6C;
          v377[-3] = 0;
          v375 = sub_1D6708880;
          v376 = v361;
          v423 = 0;
          v363 = swift_allocObject();
          *(v363 + 16) = v420;
          *(v363 + 32) = v423;
          *(v363 + 40) = v78;
          *(v363 + 48) = v77;
          sub_1D665B430();
          sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
          swift_retain_n();
          v364 = v421;
          v365 = sub_1D72647CC();
          v423 = 0;
          v366 = swift_allocObject();
          *(v366 + 16) = v365;
          *(v366 + 24) = v420;
          *(v366 + 40) = v423;
          v367 = __swift_project_boxed_opaque_existential_1(&v364[*(v414 + 36)], *&v364[*(v414 + 36) + 24]);
          MEMORY[0x1EEE9AC00](v367, v368);
          MEMORY[0x1EEE9AC00](v369, v370);
          v377[-4] = sub_1D615B4A4;
          v377[-3] = &v377[-6];
          v375 = sub_1D665B4C4;
          v376 = v363;
          v371 = v422;
          v373 = sub_1D5D2F7A4(v358, sub_1D615B49C, v372, sub_1D615B4A4, &v377[-6]);
          if (!v371)
          {
            v374 = v373;

            if (v374)
            {
              sub_1D72647EC();
            }

            v362 = v380;
            goto LABEL_127;
          }

          sub_1D5D2CFE8(v358, type metadata accessor for FormatVersionRequirement);

LABEL_116:
          v121 = v421;
          return sub_1D5D2CFE8(v121, sub_1D665B39C);
        }

        *&v416 = v377;
        v426 = v378;
        MEMORY[0x1EEE9AC00](v339, v340);
        v377[-4] = sub_1D5B4AA6C;
        v377[-3] = 0;
        v375 = sub_1D6708880;
        v376 = v341;
        v423 = 0;
        v343 = swift_allocObject();
        *(v343 + 16) = v417;
        *(v343 + 32) = v423;
        *(v343 + 40) = v78;
        *(v343 + 48) = v77;
        sub_1D665B430();
        sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
        swift_retain_n();
        v344 = v421;
        v345 = sub_1D72647CC();
        v423 = 0;
        v346 = swift_allocObject();
        *(v346 + 16) = v345;
        *(v346 + 24) = v417;
        *(v346 + 40) = v423;
        v347 = __swift_project_boxed_opaque_existential_1(&v344[*(v414 + 36)], *&v344[*(v414 + 36) + 24]);
        MEMORY[0x1EEE9AC00](v347, v348);
        MEMORY[0x1EEE9AC00](v349, v350);
        v377[-4] = sub_1D615B4A4;
        v377[-3] = &v377[-6];
        v375 = sub_1D6708880;
        v376 = v343;
        v351 = v422;
        v353 = sub_1D5D2F7A4(v163, sub_1D615B49C, v352, sub_1D615B4A4, &v377[-6]);
        v342 = v351;
        if (!v351)
        {
          v355 = v353;
          v356 = v407;
          v357 = v412;

          if (v355)
          {
            sub_1D5B578C4();
            sub_1D72647EC();
          }

          v77 = v357;
          v78 = v356;
          v72 = v410;
          v73 = v411;
          goto LABEL_121;
        }

        goto LABEL_114;
      }

      *&v416 = v377;
      v426 = v381;
      MEMORY[0x1EEE9AC00](v322, v323);
      v163 = v321;
      v377[-4] = sub_1D5B4AA6C;
      v377[-3] = 0;
      v375 = sub_1D6708880;
      v376 = v324;
      v423 = 0;
      v325 = swift_allocObject();
      *(v325 + 16) = v417;
      *(v325 + 32) = v423;
      *(v325 + 40) = v78;
      *(v325 + 48) = v77;
      sub_1D665B430();
      sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
      swift_retain_n();
      v326 = v421;
      v327 = sub_1D72647CC();
      v423 = 0;
      v328 = swift_allocObject();
      *(v328 + 16) = v327;
      *(v328 + 24) = v417;
      *(v328 + 40) = v423;
      v329 = __swift_project_boxed_opaque_existential_1(&v326[*(v414 + 36)], *&v326[*(v414 + 36) + 24]);
      MEMORY[0x1EEE9AC00](v329, v330);
      MEMORY[0x1EEE9AC00](v331, v332);
      v377[-4] = sub_1D615B4A4;
      v377[-3] = &v377[-6];
      v375 = sub_1D6708880;
      v376 = v325;
      v333 = v422;
      v335 = sub_1D5D2F7A4(v163, sub_1D615B49C, v334, sub_1D615B4A4, &v377[-6]);
      if (!v333)
      {
        v336 = v335;
        v337 = v412;

        if (v336)
        {
          sub_1D5B578C4();
          sub_1D72647EC();
        }

        v422 = 0;
        v163 = v385;
        v77 = v337;
        v78 = v407;
        v72 = v410;
        v73 = v411;
        v321 = v386;
        goto LABEL_111;
      }

LABEL_114:
      sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);

      goto LABEL_115;
    }

    v133 = v106;
LABEL_34:
    sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);

LABEL_115:

    goto LABEL_116;
  }

  sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);

LABEL_17:
  v120 = v421;
LABEL_18:
  v121 = v120;
  return sub_1D5D2CFE8(v121, sub_1D665B39C);
}

uint64_t FormatSupplementaryNodeRubberbandTrait.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F50F6140;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D665B650();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      v26 = xmmword_1D7279980;
      sub_1D5F23FF4();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v23 = v27;
    }

    else
    {
      (*(v11 + 8))(v10, v6);
      v23 = 2;
    }

    *v12 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSupplementaryNodeRubberbandTrait.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSupplementaryNodeRubberbandTrait, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSupplementaryNodeRubberbandTrait, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v17, v14, v18, &off_1F51F6C58);
  if (v15 == 2)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD68);
    (*(*(v20 - 8) + 16))(v10, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6418C5C(0, v10);
    v22 = v10;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD68);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6386220(1, v15 & 1, v6);
    v22 = v6;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatSupplementaryNodeRubberbandTraitTransform.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSupplementaryNodeRubberbandTraitTransform, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSupplementaryNodeRubberbandTraitTransform, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v17, v14, v18, &off_1F51F6C58);
  if (v15)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD68);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64185B8(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD68);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64185B8(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatImageAdjustmentFilter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v27;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F50F61E0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D665B6F8();
    v28 = 0uLL;
    sub_1D726431C();
    switch(v29)
    {
      case 1:
        (*(v11 + 8))(v15, v5);
        v24 = 1;
        goto LABEL_24;
      case 2:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 2;
        break;
      case 3:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 3;
        break;
      case 4:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 4;
        break;
      case 5:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 5;
        break;
      case 6:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 6;
        break;
      case 7:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 7;
        break;
      case 8:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 8;
        break;
      case 9:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 9;
        break;
      case 10:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 10;
        break;
      case 11:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 11;
        break;
      case 12:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 12;
        break;
      case 13:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 13;
        break;
      case 14:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 14;
        break;
      case 15:
        (*(v11 + 8))(v15, v5);
        v25 = 1;
        v24 = 15;
        break;
      case 16:
        sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
        v28 = xmmword_1D7279980;
        sub_1D665B74C();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v24 = v29;
        break;
      default:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
LABEL_24:
        v25 = 1;
        break;
    }

    *v12 = v24;
    *(v12 + 8) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageAdjustmentFilter.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v123 = &v110 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v122 = &v110 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v121 = &v110 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v120 = &v110 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v119 = &v110 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v118 = &v110 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v117 = &v110 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v116 = &v110 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v115 = &v110 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v114 = &v110 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v113 = &v110 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v110 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v112 = &v110 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v111 = &v110 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v110 = &v110 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v110 - v56;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v61 = &v110 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *v2;
  v63 = *(v2 + 8);
  v65 = a1[3];
  v64 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v65);
  v66 = sub_1D5C30408();
  v125 = v61;
  sub_1D5D2EE70(&type metadata for FormatImageAdjustmentFilter, &type metadata for FormatCodingKeys, v67, v65, &type metadata for FormatImageAdjustmentFilter, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v64, v61, v66, &off_1F51F6BF8);
  if (v63 == 1)
  {
    switch(*&v62)
    {
      case 1:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v96 = sub_1D725BD1C();
        v97 = __swift_project_value_buffer(v96, qword_1EDFFCD18);
        v88 = v110;
        (*(*(v96 - 8) + 16))(v110, v97, v96);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v89 = 1;
        goto LABEL_40;
      case 2:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v86 = sub_1D725BD1C();
        v87 = __swift_project_value_buffer(v86, qword_1EDFFCD18);
        v88 = v111;
        (*(*(v86 - 8) + 16))(v111, v87, v86);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v89 = 2;
        goto LABEL_40;
      case 3:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v92 = sub_1D725BD1C();
        v93 = __swift_project_value_buffer(v92, qword_1EDFFCD18);
        v88 = v112;
        (*(*(v92 - 8) + 16))(v112, v93, v92);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v89 = 3;
LABEL_40:
        v70 = v125;
        sub_1D641AD70(v89, v88);
        v71 = v88;
        goto LABEL_60;
      case 4:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v80 = sub_1D725BD1C();
        v81 = __swift_project_value_buffer(v80, qword_1EDFFCD18);
        (*(*(v80 - 8) + 16))(v44, v81, v80);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 4;
        goto LABEL_56;
      case 5:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v98 = sub_1D725BD1C();
        v99 = __swift_project_value_buffer(v98, qword_1EDFFCD18);
        v44 = v113;
        (*(*(v98 - 8) + 16))(v113, v99, v98);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 5;
        goto LABEL_56;
      case 6:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v102 = sub_1D725BD1C();
        v103 = __swift_project_value_buffer(v102, qword_1EDFFCD18);
        v44 = v114;
        (*(*(v102 - 8) + 16))(v114, v103, v102);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 6;
        goto LABEL_56;
      case 7:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v94 = sub_1D725BD1C();
        v95 = __swift_project_value_buffer(v94, qword_1EDFFCD18);
        v44 = v115;
        (*(*(v94 - 8) + 16))(v115, v95, v94);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 7;
        goto LABEL_56;
      case 8:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v106 = sub_1D725BD1C();
        v107 = __swift_project_value_buffer(v106, qword_1EDFFCD18);
        v44 = v116;
        (*(*(v106 - 8) + 16))(v116, v107, v106);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 8;
        goto LABEL_56;
      case 9:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v84 = sub_1D725BD1C();
        v85 = __swift_project_value_buffer(v84, qword_1EDFFCD18);
        v44 = v117;
        (*(*(v84 - 8) + 16))(v117, v85, v84);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 9;
        goto LABEL_56;
      case 0xALL:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v104 = sub_1D725BD1C();
        v105 = __swift_project_value_buffer(v104, qword_1EDFFCD18);
        v44 = v118;
        (*(*(v104 - 8) + 16))(v118, v105, v104);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 10;
        goto LABEL_56;
      case 0xBLL:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v78 = sub_1D725BD1C();
        v79 = __swift_project_value_buffer(v78, qword_1EDFFCD18);
        v44 = v119;
        (*(*(v78 - 8) + 16))(v119, v79, v78);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 11;
        goto LABEL_56;
      case 0xCLL:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v82 = sub_1D725BD1C();
        v83 = __swift_project_value_buffer(v82, qword_1EDFFCD18);
        v44 = v120;
        (*(*(v82 - 8) + 16))(v120, v83, v82);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 12;
        goto LABEL_56;
      case 0xDLL:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v100 = sub_1D725BD1C();
        v101 = __swift_project_value_buffer(v100, qword_1EDFFCD18);
        v44 = v121;
        (*(*(v100 - 8) + 16))(v121, v101, v100);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 13;
        goto LABEL_56;
      case 0xELL:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v75 = sub_1D725BD1C();
        v76 = __swift_project_value_buffer(v75, qword_1EDFFCD18);
        v44 = v122;
        (*(*(v75 - 8) + 16))(v122, v76, v75);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 14;
        goto LABEL_56;
      case 0xFLL:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v90 = sub_1D725BD1C();
        v91 = __swift_project_value_buffer(v90, qword_1EDFFCD18);
        v44 = v123;
        (*(*(v90 - 8) + 16))(v123, v91, v90);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v77 = 15;
LABEL_56:
        v108 = v124;
        v70 = v125;
        sub_1D641AD70(v77, v44);
        if (v108)
        {
          goto LABEL_57;
        }

        v7 = v44;
        break;
      default:
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v68 = sub_1D725BD1C();
        v69 = __swift_project_value_buffer(v68, qword_1EDFFCD18);
        (*(*(v68 - 8) + 16))(v57, v69, v68);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v70 = v125;
        sub_1D641AD70(0, v57);
        v71 = v57;
        goto LABEL_60;
    }

LABEL_59:
    v71 = v7;
    goto LABEL_60;
  }

  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v72 = sub_1D725BD1C();
  v73 = __swift_project_value_buffer(v72, qword_1EDFFCD50);
  (*(*(v72 - 8) + 16))(v7, v73, v72);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v74 = v124;
  v70 = v125;
  sub_1D638C55C(16, v7, v62);
  if (!v74)
  {
    goto LABEL_59;
  }

  v44 = v7;
LABEL_57:
  v71 = v44;
LABEL_60:
  sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v70, sub_1D5D30DC4);
}

uint64_t FormatSlotItemOrdering.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSlotItemOrdering, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSlotItemOrdering, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v17, v14, v18, &off_1F51F6BD8);
  if (v15)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE80);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641D8F4(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE80);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641D8F4(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatLayeredMediaNodeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatLayeredMediaNodeBinding, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatLayeredMediaNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenC, v17, v14, v18, &off_1F51F6BB8);
  if (v15)
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD98);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638B52C(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EF0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCDB0);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638B3A0(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatTextNodeNumber.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  sub_1D665B92C();
  v6 = v5;
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D665B9C0();
  sub_1D5B58B84(&qword_1EDF0C550, sub_1D665B9C0);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v48;
  if (v13)
  {
    v15 = v10;
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_7;
        }
      }

      v21 = v14;
      v23 = *(v18 - 2);
      v22 = *(v18 - 1);

      v24 = v15;
      v25 = sub_1D6627E68(0x7265626D756ELL, 0xE600000000000000, 0x74616D726F66, 0xE600000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v26 = v23;
      *(v26 + 8) = v22;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v21 + 8))(v9, v24);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D665BB40();
  v40 = 0uLL;
  LOBYTE(v41) = 0;
  v19 = v10;
  sub_1D726431C();
  v20 = v38;
  v35 = BYTE8(v38);
  v38 = xmmword_1D728CF30;
  v39 = 0;
  sub_1D619B194();
  sub_1D726427C();
  (*(v14 + 8))(v9, v19);
  *&v37[39] = v42;
  *&v37[23] = v41;
  *&v37[7] = v40;
  v37[119] = v47;
  *&v37[103] = v46;
  *&v37[87] = v45;
  *&v37[71] = v44;
  *&v37[55] = v43;
  *v11 = v20;
  *(v11 + 8) = v35;
  v28 = *v37;
  v29 = *&v37[16];
  v30 = *&v37[32];
  *(v11 + 57) = *&v37[48];
  *(v11 + 41) = v30;
  *(v11 + 25) = v29;
  *(v11 + 9) = v28;
  v31 = *&v37[64];
  v32 = *&v37[80];
  v33 = *&v37[96];
  *(v11 + 121) = *&v37[112];
  *(v11 + 105) = v33;
  *(v11 + 89) = v32;
  *(v11 + 73) = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTextNodeNumber.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v84 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v75 - v8;
  sub_1D665BB94();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  LODWORD(v89) = *(v1 + 8);
  v83 = v1[2];
  v16 = *(v1 + 9);
  v17 = *(v1 + 13);
  v108 = *(v1 + 11);
  v109[0] = v17;
  *(v109 + 9) = *(v1 + 113);
  v18 = *(v1 + 5);
  v104 = *(v1 + 3);
  v105 = v18;
  v106 = *(v1 + 7);
  v107 = v16;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D665B9C0();
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF0C550, sub_1D665B9C0);
  sub_1D5D2EE70(&type metadata for FormatTextNodeNumber, v22, v24, v19, &type metadata for FormatTextNodeNumber, v22, &type metadata for FormatVersions.JazzkonG, v20, v14, v23, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD18);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v80 = v26;
  v81 = v25;
  v78 = v27 + 16;
  v79 = v28;
  (v28)(v9);
  v77 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v102 = v15;
  v103 = v89;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v29 = &v14[*(v11 + 44)];
  v31 = *v29;
  v30 = *(v29 + 1);
  v88 = v9;
  LOBYTE(v91) = 0;
  v32 = swift_allocObject();
  *&v89 = &v75;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v91;
  *(v32 + 40) = v31;
  *(v32 + 48) = v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v75 - 4) = sub_1D5B4AA6C;
  *(&v75 - 3) = 0;
  v73 = sub_1D6708884;
  v74 = v34;
  LOBYTE(v91) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v91;
  v82 = v31;
  *(v35 + 40) = v31;
  *(v35 + 48) = v30;
  sub_1D665BC28();
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF03388, sub_1D665BC28);
  v87 = v30;
  swift_retain_n();
  v85 = v38;
  v86 = v37;
  v39 = sub_1D72647CC();
  LOBYTE(v91) = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v91;
  v41 = v14;
  v42 = &v14[*(v11 + 36)];
  v43 = __swift_project_boxed_opaque_existential_1(v42, *(v42 + 3));
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v75 - 4) = sub_1D615B4A4;
  *(&v75 - 3) = (&v75 - 6);
  v73 = sub_1D6708884;
  v74 = v35;
  v47 = v88;
  v48 = v110;
  sub_1D5D2BC70(v88, sub_1D615B49C, v49, sub_1D615B4A4, (&v75 - 6));
  if (v48)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v41, sub_1D665BB94);
  }

  v76 = v42;
  v50 = v87;

  sub_1D665BCBC();
  v51 = v41;
  sub_1D72647EC();
  v110 = 0;
  sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

  v53 = v84;
  v79(v84, v80, v81);
  swift_storeEnumTagMultiPayload();
  v89 = xmmword_1D728CF30;
  v97[2] = xmmword_1D728CF30;
  v98 = 0;
  LOBYTE(v91) = 0;
  v54 = swift_allocObject();
  v56 = v54;
  *(v54 + 16) = v89;
  *(v54 + 32) = v91;
  v58 = v82;
  v57 = v83;
  *(v54 + 40) = v82;
  *(v54 + 48) = v50;
  v59 = v50;
  if ((v57 & 0xFF00) == 0x800)
  {
  }

  else
  {
    v81 = &v75;
    v95 = v107;
    v96 = v108;
    v97[0] = v109[0];
    *(v97 + 9) = *(v109 + 9);
    v92 = v104;
    v93 = v105;
    v94 = v106;
    v91 = v57;
    v60 = v58;
    MEMORY[0x1EEE9AC00](v54, v55);
    *(&v75 - 4) = sub_1D5B4AA6C;
    *(&v75 - 3) = 0;
    v73 = sub_1D6708884;
    v74 = v56;
    v90 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v89;
    *(v61 + 32) = v90;
    *(v61 + 40) = v60;
    *(v61 + 48) = v59;
    swift_retain_n();
    v88 = v41;
    v62 = sub_1D72647CC();
    v90 = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = v89;
    *(v63 + 40) = v90;
    v64 = __swift_project_boxed_opaque_existential_1(v76, *(v76 + 3));
    MEMORY[0x1EEE9AC00](v64, v65);
    MEMORY[0x1EEE9AC00](v66, v67);
    *(&v75 - 4) = sub_1D615B4A4;
    *(&v75 - 3) = (&v75 - 6);
    v53 = v84;
    v73 = sub_1D665BD10;
    v74 = v61;
    v68 = v110;
    v70 = sub_1D5D2F7A4(v84, sub_1D615B49C, v69, sub_1D615B4A4, (&v75 - 6));
    v110 = v68;
    if (v68)
    {
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

      v51 = v88;
      return sub_1D5D2CFE8(v51, sub_1D665BB94);
    }

    v71 = v70;

    if (v71)
    {
      sub_1D619B1E8();
      v51 = v88;
      v72 = v110;
      sub_1D72647EC();
      v110 = v72;
    }

    else
    {
      v51 = v88;
    }
  }

  sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v51, sub_1D665BB94);
}

uint64_t FormatSlotItemTagFilterCondition.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v33 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v33;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F50F78A0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D665BD8C();
    v32 = 0uLL;
    sub_1D726431C();
    if (v31 <= 2u)
    {
      v24 = v12;
      if (v31)
      {
        if (v31 == 1)
        {
          v25 = 0xC000000000000008;
          (*(v11 + 8))(v15, v5);
        }

        else
        {
          (*(v11 + 8))(v15, v5);
          v25 = 0xC000000000000010;
        }
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v25 = 0xC000000000000000;
      }
    }

    else
    {
      v24 = v12;
      if (v31 > 4u)
      {
        if (v31 == 5)
        {
          v31 = xmmword_1D7279980;
          sub_1D665BDE0();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v26 = v32;
          v27 = swift_allocObject();
          *(v27 + 16) = v26;
          v25 = v27 | 0x4000000000000000;
        }

        else
        {
          v32 = xmmword_1D7279980;
          sub_1D61559DC();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v29 = v31;
          v30 = swift_allocObject();
          *(v30 + 16) = v29;
          v25 = v30 | 0x8000000000000000;
        }
      }

      else if (v31 == 3)
      {
        (*(v11 + 8))(v15, v5);
        v25 = 0xC000000000000018;
      }

      else
      {
        v31 = xmmword_1D7279980;
        sub_1D665BE34();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v28 = v32;
        v25 = swift_allocObject();
        *(v25 + 16) = v28;
      }
    }

    *v24 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemTagFilterCondition.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v63 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v65 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v64 = &v63 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v63 = &v63 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v63 - v27;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v2;
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v36 = sub_1D5C30408();
  v67 = v32;
  sub_1D5D2EE70(&type metadata for FormatSlotItemTagFilterCondition, &type metadata for FormatCodingKeys, v37, v34, &type metadata for FormatSlotItemTagFilterCondition, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstC, v35, v32, v36, &off_1F51F6B98);
  v38 = v33 >> 62;
  if ((v33 >> 62) <= 1)
  {
    if (v38)
    {
      v40 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v39 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5F33D5C(v40);
      sub_1D5F33D5C(v39);
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCE98);
      (*(*(v48 - 8) + 16))(v11, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v43 = v67;
      v50 = v66;
      sub_1D6387D18(5, v40, v39, v11);
      if (v50)
      {
        sub_1D5F33D8C(v40);
        v15 = v11;
        goto LABEL_16;
      }
    }

    else
    {
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      sub_1D5F33D5C(v40);
      sub_1D5F33D5C(v39);
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCE98);
      (*(*(v41 - 8) + 16))(v15, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v43 = v67;
      v44 = v66;
      sub_1D6387B84(4, v40, v39, v15);
      if (v44)
      {
        sub_1D5F33D8C(v40);
LABEL_16:
        sub_1D5F33D8C(v39);
        v51 = v15;
        goto LABEL_36;
      }

      v11 = v15;
    }

    sub_1D5F33D8C(v40);
    v7 = v11;
    goto LABEL_28;
  }

  if (v38 == 2)
  {
    v39 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D5F33D5C(v39);
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v45 = sub_1D725BD1C();
    v46 = __swift_project_value_buffer(v45, qword_1EDFFCE98);
    (*(*(v45 - 8) + 16))(v7, v46, v45);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v43 = v67;
    v47 = v66;
    sub_1D6387EAC(6, v39, v7);
    if (v47)
    {
      v15 = v7;
      goto LABEL_16;
    }

LABEL_28:
    sub_1D5F33D8C(v39);
    v51 = v7;
    goto LABEL_36;
  }

  v52 = __ROR8__(v33 + 0x4000000000000000, 3);
  if (v52 > 1)
  {
    if (v52 == 2)
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v56 = sub_1D725BD1C();
      v57 = __swift_project_value_buffer(v56, qword_1EDFFCE98);
      v28 = v64;
      (*(*(v56 - 8) + 16))(v64, v57, v56);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v55 = 2;
    }

    else
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v60 = sub_1D725BD1C();
      v61 = __swift_project_value_buffer(v60, qword_1EDFFCE98);
      v28 = v65;
      (*(*(v60 - 8) + 16))(v65, v61, v60);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v55 = 3;
    }
  }

  else if (v52)
  {
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v58 = sub_1D725BD1C();
    v59 = __swift_project_value_buffer(v58, qword_1EDFFCE98);
    v28 = v63;
    (*(*(v58 - 8) + 16))(v63, v59, v58);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v55 = 1;
  }

  else
  {
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v53 = sub_1D725BD1C();
    v54 = __swift_project_value_buffer(v53, qword_1EDFFCE98);
    (*(*(v53 - 8) + 16))(v28, v54, v53);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v55 = 0;
  }

  v43 = v67;
  sub_1D6419840(v55, v28);
  v51 = v28;
LABEL_36:
  sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v43, sub_1D5D30DC4);
}

uint64_t FormatAdMetricsNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v250 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v257 = &v250 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v256 = &v250 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v258 = &v250 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v259 = &v250 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v260 = &v250 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v261 = &v250 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v262 = &v250 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v264 = &v250 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v271 = (&v250 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v250 - v38;
  sub_1D665BEC8();
  v273 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v250 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D5CC307C();
  v47 = v46;
  v48 = sub_1D5B58B84(&qword_1EDF25528, sub_1D5CC307C);
  sub_1D5D2EE70(v4, v47, v49, v44, v4, v47, &type metadata for FormatVersions.Azden, v45, v43, v48, &off_1F51F6B78);
  swift_beginAccess();
  v51 = v2[2];
  v50 = v2[3];
  v263 = v2;
  v52 = qword_1EDF31F10;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCDF8);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  v57 = v55 + 16;
  v270 = v53;
  v56(v39, v54, v53);
  v58 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v59 = sub_1D725895C();
  v60 = (*(*(v59 - 8) + 48))(v8, 1, v59);
  v266 = v56;
  v267 = v57;
  v269 = v58;
  v265 = v54;
  if (v60 != 1)
  {
    sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v79 = v271;
    v80 = v273;
    goto LABEL_13;
  }

  v268 = v51;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v61 = v273;
  v62 = &v43[*(v273 + 11)];
  v64 = *v62;
  v63 = *(v62 + 1);
  LOBYTE(v275) = 0;
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *(v65 + 24) = 0;
  *(v65 + 32) = v275;
  *(v65 + 40) = v64;
  *(v65 + 48) = v63;
  sub_1D665BF5C();
  v67 = v66;
  sub_1D5B58B84(&qword_1EDF03568, sub_1D665BF5C);

  *&v272 = v67;
  v68 = sub_1D72647CC();
  LOBYTE(v275) = 0;
  v69 = v43;
  v70 = swift_allocObject();
  *(v70 + 24) = 0;
  *(v70 + 32) = 0;
  *(v70 + 16) = v68;
  *(v70 + 40) = v275;
  v71 = __swift_project_boxed_opaque_existential_1(&v69[*(v61 + 9)], *&v69[*(v61 + 9) + 24]);
  MEMORY[0x1EEE9AC00](v71, v72);
  MEMORY[0x1EEE9AC00](v73, v74);
  *(&v250 - 4) = sub_1D5B4AA6C;
  *(&v250 - 3) = 0;
  v248 = sub_1D665BFF0;
  v249 = v65;
  v75 = v274;
  v77 = sub_1D5D2F7A4(v39, sub_1D615B49C, v76, sub_1D615B4A4, (&v250 - 6));
  *&v274 = v75;
  if (!v75)
  {
    v81 = v77;

    if (v81)
    {
      v275 = 0uLL;
      LOBYTE(v276) = 0;
      v287 = v268;
      v288 = v50;
      v43 = v69;
      v82 = v274;
      sub_1D72647EC();

      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
      *&v274 = v82;
      v79 = v271;
      v80 = v273;
      if (v82)
      {
LABEL_9:
        v78 = v43;
        return sub_1D5D2CFE8(v78, sub_1D665BEC8);
      }

      v56 = v266;
    }

    else
    {
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

      v43 = v69;
      v56 = v266;
      v79 = v271;
      v80 = v273;
    }

    v54 = v265;
LABEL_13:
    v56(v79, v54, v270);
    swift_storeEnumTagMultiPayload();
    v272 = xmmword_1D728CF30;
    v275 = xmmword_1D728CF30;
    LOBYTE(v276) = 0;
    v83 = &v43[*(v80 + 11)];
    v84 = *v83;
    v85 = *(v83 + 1);
    LOBYTE(v287) = 0;
    v86 = swift_allocObject();
    v268 = &v250;
    *(v86 + 16) = v272;
    *(v86 + 32) = v287;
    *(v86 + 40) = v84;
    *(v86 + 48) = v85;
    MEMORY[0x1EEE9AC00](v86, v87);
    *(&v250 - 4) = sub_1D5B4AA6C;
    *(&v250 - 3) = 0;
    v248 = sub_1D6708888;
    v249 = v88;
    LOBYTE(v287) = 0;
    v89 = swift_allocObject();
    *(v89 + 16) = v272;
    *(v89 + 32) = v287;
    v253 = v84;
    *(v89 + 40) = v84;
    *(v89 + 48) = v85;
    sub_1D665BF5C();
    v91 = v90;
    v92 = sub_1D5B58B84(&qword_1EDF03568, sub_1D665BF5C);
    swift_retain_n();
    v255 = v91;
    v254 = v92;
    v93 = sub_1D72647CC();
    LOBYTE(v287) = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = v93;
    *(v94 + 24) = v272;
    *(v94 + 40) = v287;
    v95 = *(v273 + 9);
    v273 = v43;
    v96 = &v43[v95];
    v97 = __swift_project_boxed_opaque_existential_1(v96, *(v96 + 3));
    MEMORY[0x1EEE9AC00](v97, v98);
    MEMORY[0x1EEE9AC00](v99, v100);
    *(&v250 - 4) = sub_1D615B4A4;
    *(&v250 - 3) = (&v250 - 6);
    v248 = sub_1D6708888;
    v249 = v89;
    v101 = v274;
    sub_1D5D2BC70(v79, sub_1D615B49C, v102, sub_1D615B4A4, (&v250 - 6));
    if (v101)
    {
      v103 = v273;
      sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);

LABEL_16:
      v78 = v103;
      return sub_1D5D2CFE8(v78, sub_1D665BEC8);
    }

    v251 = v96;
    v252 = v85;

    sub_1D665C080();
    sub_1D72647EC();
    sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);

    v105 = v263[4];
    v106 = v263[5];
    v107 = v264;
    v266(v264, v265, v270);
    swift_storeEnumTagMultiPayload();
    v287 = v105;
    v288 = v106;
    v272 = xmmword_1D7297410;
    v275 = xmmword_1D7297410;
    LOBYTE(v276) = 0;
    LOBYTE(v286) = 0;
    v108 = swift_allocObject();
    v271 = &v250;
    *(v108 + 16) = v272;
    *(v108 + 32) = v286;
    v109 = v253;
    v110 = v252;
    *(v108 + 40) = v253;
    *(v108 + 48) = v110;
    MEMORY[0x1EEE9AC00](v108, v111);
    *&v274 = 0;
    *(&v250 - 4) = sub_1D5B4AA6C;
    *(&v250 - 3) = 0;
    v248 = sub_1D6708888;
    v249 = v112;
    LOBYTE(v286) = 0;
    v113 = swift_allocObject();
    *(v113 + 16) = v272;
    *(v113 + 32) = v286;
    *(v113 + 40) = v109;
    *(v113 + 48) = v110;
    swift_retain_n();
    v114 = sub_1D72647CC();
    LOBYTE(v286) = 0;
    v115 = swift_allocObject();
    *(v115 + 16) = v114;
    *(v115 + 24) = v272;
    *(v115 + 40) = v286;
    v116 = __swift_project_boxed_opaque_existential_1(v251, *(v251 + 3));
    MEMORY[0x1EEE9AC00](v116, v117);
    MEMORY[0x1EEE9AC00](v118, v119);
    *(&v250 - 4) = sub_1D615B4A4;
    *(&v250 - 3) = (&v250 - 6);
    v248 = sub_1D6708888;
    v249 = v113;
    v120 = v274;
    sub_1D5D2BC70(v107, sub_1D615B49C, v121, sub_1D615B4A4, (&v250 - 6));
    if (v120)
    {
      v103 = v273;
      sub_1D5D2CFE8(v107, type metadata accessor for FormatVersionRequirement);

      goto LABEL_16;
    }

    sub_1D72647EC();
    sub_1D5D2CFE8(v264, type metadata accessor for FormatVersionRequirement);

    v122 = v263[6];
    v123 = v262;
    v266(v262, v265, v270);
    swift_storeEnumTagMultiPayload();
    v287 = v122;
    v274 = xmmword_1D72BAA60;
    v275 = xmmword_1D72BAA60;
    LOBYTE(v276) = 0;
    LOBYTE(v286) = 0;
    v124 = swift_allocObject();
    *&v272 = &v250;
    *(v124 + 16) = v274;
    *(v124 + 32) = v286;
    v125 = v253;
    v126 = v252;
    *(v124 + 40) = v253;
    *(v124 + 48) = v126;
    MEMORY[0x1EEE9AC00](v124, v127);
    *(&v250 - 4) = sub_1D5B4AA6C;
    *(&v250 - 3) = 0;
    v248 = sub_1D6708888;
    v249 = v128;
    LOBYTE(v286) = 0;
    v129 = swift_allocObject();
    *(v129 + 16) = v274;
    *(v129 + 32) = v286;
    *(v129 + 40) = v125;
    *(v129 + 48) = v126;
    swift_retain_n();
    v130 = sub_1D72647CC();
    LOBYTE(v286) = 0;
    v131 = swift_allocObject();
    *(v131 + 16) = v130;
    *(v131 + 24) = v274;
    *(v131 + 40) = v286;
    v132 = __swift_project_boxed_opaque_existential_1(v251, *(v251 + 3));
    MEMORY[0x1EEE9AC00](v132, v133);
    MEMORY[0x1EEE9AC00](v134, v135);
    *(&v250 - 4) = sub_1D615B4A4;
    *(&v250 - 3) = (&v250 - 6);
    v248 = sub_1D6708888;
    v249 = v129;
    sub_1D5D2BC70(v123, sub_1D615B49C, v136, sub_1D615B4A4, (&v250 - 6));

    sub_1D5CA1E90();
    sub_1D72647EC();
    sub_1D5D2CFE8(v262, type metadata accessor for FormatVersionRequirement);

    v137 = v263[7];
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    *&v274 = 0;
    v138 = v270;
    v139 = __swift_project_value_buffer(v270, qword_1EDFFCD68);
    v140 = v261;
    v141 = v266;
    v266(v261, v139, v138);
    swift_storeEnumTagMultiPayload();
    v272 = xmmword_1D72BAA70;
    v275 = xmmword_1D72BAA70;
    LOBYTE(v276) = 0;
    LOBYTE(v287) = 0;
    v142 = swift_allocObject();
    v144 = v142;
    *(v142 + 16) = v272;
    *(v142 + 32) = v287;
    v145 = v253;
    v146 = v252;
    *(v142 + 40) = v253;
    *(v142 + 48) = v146;
    if (v137)
    {
      v271 = &v250;
      v287 = v137;
      MEMORY[0x1EEE9AC00](v142, v143);
      *(&v250 - 4) = sub_1D5B4AA6C;
      *(&v250 - 3) = 0;
      v248 = sub_1D6708888;
      v249 = v144;
      LOBYTE(v286) = 0;
      v147 = swift_allocObject();
      *(v147 + 16) = v272;
      *(v147 + 32) = v286;
      *(v147 + 40) = v145;
      *(v147 + 48) = v146;
      swift_retain_n();

      v148 = sub_1D72647CC();
      LOBYTE(v286) = 0;
      v149 = swift_allocObject();
      *(v149 + 16) = v148;
      *(v149 + 24) = v272;
      *(v149 + 40) = v286;
      v150 = __swift_project_boxed_opaque_existential_1(v251, *(v251 + 3));
      MEMORY[0x1EEE9AC00](v150, v151);
      MEMORY[0x1EEE9AC00](v152, v153);
      *(&v250 - 4) = sub_1D615B4A4;
      *(&v250 - 3) = (&v250 - 6);
      v248 = sub_1D6708888;
      v249 = v147;
      v154 = v274;
      sub_1D5D2F7A4(v140, sub_1D615B49C, v155, sub_1D615B4A4, (&v250 - 6));
      if (v154)
      {

LABEL_25:
        v156 = v140;
LABEL_26:
        sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
LABEL_27:
        v78 = v273;
        return sub_1D5D2CFE8(v78, sub_1D665BEC8);
      }

      sub_1D6659D24();
      sub_1D72647EC();
      *&v274 = 0;

      v141 = v266;
      v146 = v252;
    }

    else
    {
    }

    v157 = v251;
    v158 = v263;
    sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v159 = v158[8];
    v140 = v260;
    v141(v260, v265, v270);
    swift_storeEnumTagMultiPayload();
    v160 = v253;
    if (*(v159 + 16))
    {
      LOBYTE(v275) = 0;
      v161 = swift_allocObject();
      v272 = xmmword_1D72BAA80;
      *(v161 + 16) = xmmword_1D72BAA80;
      *(v161 + 32) = v275;
      *(v161 + 40) = v160;
      *(v161 + 48) = v146;

      v43 = v273;
      v162 = sub_1D72647CC();
      LOBYTE(v275) = 0;
      v163 = swift_allocObject();
      *(v163 + 16) = v162;
      *(v163 + 24) = v272;
      *(v163 + 40) = v275;
      v164 = __swift_project_boxed_opaque_existential_1(v157, *(v157 + 3));
      MEMORY[0x1EEE9AC00](v164, v165);
      MEMORY[0x1EEE9AC00](v166, v167);
      *(&v250 - 4) = sub_1D5B4AA6C;
      *(&v250 - 3) = 0;
      v248 = sub_1D6708888;
      v249 = v161;
      v168 = v274;
      v170 = sub_1D5D2F7A4(v140, sub_1D615B49C, v169, sub_1D615B4A4, (&v250 - 6));
      *&v274 = v168;
      if (v168)
      {
        sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);

LABEL_43:

        goto LABEL_9;
      }

      v171 = v170;

      if (v171)
      {
        v275 = v272;
        LOBYTE(v276) = 0;
        v286 = v159;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        v172 = v274;
        sub_1D72647EC();
        if (v172)
        {

          goto LABEL_25;
        }

        *&v274 = 0;

        sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);
      }

      v158 = v263;
      v141 = v266;
      v146 = v252;
      v160 = v253;
      v157 = v251;
    }

    else
    {
      sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);
    }

    swift_beginAccess();
    v173 = v158[9];
    v174 = v259;
    v141(v259, v265, v270);
    swift_storeEnumTagMultiPayload();
    if (v173)
    {
      LOBYTE(v275) = 0;
      v175 = swift_allocObject();
      v272 = xmmword_1D72BAA90;
      *(v175 + 16) = xmmword_1D72BAA90;
      *(v175 + 32) = v275;
      *(v175 + 40) = v160;
      *(v175 + 48) = v146;

      v43 = v273;
      v176 = sub_1D72647CC();
      LOBYTE(v275) = 0;
      v177 = swift_allocObject();
      *(v177 + 16) = v176;
      *(v177 + 24) = v272;
      *(v177 + 40) = v275;
      v178 = __swift_project_boxed_opaque_existential_1(v157, *(v157 + 3));
      MEMORY[0x1EEE9AC00](v178, v179);
      MEMORY[0x1EEE9AC00](v180, v181);
      *(&v250 - 4) = sub_1D5B4AA6C;
      *(&v250 - 3) = 0;
      v248 = sub_1D6708888;
      v249 = v175;
      v182 = v274;
      v184 = sub_1D5D2F7A4(v174, sub_1D615B49C, v183, sub_1D615B4A4, (&v250 - 6));
      *&v274 = v182;
      if (v182)
      {
        sub_1D5D2CFE8(v174, type metadata accessor for FormatVersionRequirement);

        goto LABEL_43;
      }

      v185 = v184;

      if (v185)
      {
        v275 = v272;
        LOBYTE(v276) = 0;
        v285 = v173;
        v186 = v274;
        sub_1D72647EC();
        if (v186)
        {
          v187 = &v285;
LABEL_56:
          v156 = *(v187 - 32);
          goto LABEL_26;
        }

        sub_1D5D2CFE8(v259, type metadata accessor for FormatVersionRequirement);
        *&v274 = 0;
        v158 = v263;
        v141 = v266;
        v146 = v252;
        v157 = v251;
      }

      else
      {
        sub_1D5D2CFE8(v259, type metadata accessor for FormatVersionRequirement);
        v158 = v263;
        v141 = v266;
        v146 = v252;
      }
    }

    else
    {
      sub_1D5D2CFE8(v174, type metadata accessor for FormatVersionRequirement);
    }

    swift_beginAccess();
    v188 = v158[10];
    sub_1D5EB1500(v188);
    v189 = v258;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v190 = v270;
    v191 = __swift_project_value_buffer(v270, qword_1EDFFCD50);
    v141(v189, v191, v190);
    swift_storeEnumTagMultiPayload();
    if (v188 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v275) = 0;
      v192 = swift_allocObject();
      v272 = xmmword_1D72BAAA0;
      *(v192 + 16) = xmmword_1D72BAAA0;
      *(v192 + 32) = v275;
      *(v192 + 40) = v253;
      *(v192 + 48) = v146;

      v193 = sub_1D72647CC();
      LOBYTE(v275) = 0;
      v194 = swift_allocObject();
      *(v194 + 16) = v193;
      *(v194 + 24) = v272;
      *(v194 + 40) = v275;
      v195 = __swift_project_boxed_opaque_existential_1(v157, *(v157 + 3));
      MEMORY[0x1EEE9AC00](v195, v196);
      MEMORY[0x1EEE9AC00](v197, v198);
      *(&v250 - 4) = sub_1D5B4AA6C;
      *(&v250 - 3) = 0;
      v248 = sub_1D6708888;
      v249 = v192;
      v199 = v274;
      v201 = sub_1D5D2F7A4(v189, sub_1D615B49C, v200, sub_1D615B4A4, (&v250 - 6));
      if (v199)
      {

        sub_1D5EB15C4(v188);
        v187 = &v284;
        goto LABEL_56;
      }

      v202 = v201;

      if (v202)
      {
        v275 = v272;
        LOBYTE(v276) = 0;
        v282 = v188;
        sub_1D5DF6A60();
        sub_1D72647EC();
        v203 = v282;
      }

      else
      {
        v203 = v188;
      }

      sub_1D5EB15C4(v203);
      sub_1D5D2CFE8(v258, type metadata accessor for FormatVersionRequirement);
      *&v274 = 0;
      v158 = v263;
      v141 = v266;
      v157 = v251;
    }

    swift_beginAccess();
    v204 = *(v158 + 88);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v205 = v270;
    v206 = __swift_project_value_buffer(v270, qword_1EDFFCD00);
    v207 = v256;
    v141(v256, v206, v205);
    swift_storeEnumTagMultiPayload();
    if (v204)
    {
      sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v275) = 0;
      v208 = swift_allocObject();
      v272 = xmmword_1D72BAAB0;
      *(v208 + 16) = xmmword_1D72BAAB0;
      *(v208 + 32) = v275;
      *(v208 + 40) = v253;
      *(v208 + 48) = v252;

      v209 = sub_1D72647CC();
      LOBYTE(v275) = 0;
      v210 = swift_allocObject();
      *(v210 + 16) = v209;
      *(v210 + 24) = v272;
      *(v210 + 40) = v275;
      v211 = __swift_project_boxed_opaque_existential_1(v157, *(v157 + 3));
      MEMORY[0x1EEE9AC00](v211, v212);
      MEMORY[0x1EEE9AC00](v213, v214);
      *(&v250 - 4) = sub_1D5B4AA6C;
      *(&v250 - 3) = 0;
      v248 = sub_1D6708888;
      v249 = v208;
      v215 = v274;
      v217 = sub_1D5D2F7A4(v207, sub_1D615B49C, v216, sub_1D615B4A4, (&v250 - 6));
      if (v215)
      {
        sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);

        goto LABEL_27;
      }

      v218 = v217;
      *&v274 = 0;

      if (v218)
      {
        v275 = v272;
        LOBYTE(v276) = 0;
        LOBYTE(v280) = 0;
        v219 = v274;
        sub_1D72647EC();
        *&v274 = v219;
        if (v219)
        {
          v220 = &v282;
          goto LABEL_81;
        }
      }

      sub_1D5D2CFE8(v256, type metadata accessor for FormatVersionRequirement);
      v158 = v263;
    }

    v221 = v158[12];
    v222 = v158[13];
    v223 = v158[14];
    v224 = v158[15];
    v225 = v158[16];
    v271 = v158[17];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v226 = v270;
    v227 = __swift_project_value_buffer(v270, qword_1EDFFCE38);
    v266(v257, v227, v226);
    swift_storeEnumTagMultiPayload();
    v272 = xmmword_1D72BAAC0;
    v280 = xmmword_1D72BAAC0;
    v281 = 0;
    LOBYTE(v275) = 0;
    v228 = swift_allocObject();
    v230 = v228;
    *(v228 + 16) = v272;
    *(v228 + 32) = v275;
    v231 = v253;
    v232 = v252;
    *(v228 + 40) = v253;
    *(v228 + 48) = v232;
    if (!v221)
    {

      sub_1D5D2CFE8(v257, type metadata accessor for FormatVersionRequirement);

LABEL_82:
      v78 = v273;
      return sub_1D5D2CFE8(v78, sub_1D665BEC8);
    }

    v270 = &v250;
    *&v275 = v221;
    *(&v275 + 1) = v222;
    v276 = v223;
    v277 = v224;
    v233 = v225;
    v278 = v225;
    v279 = v271;
    MEMORY[0x1EEE9AC00](v228, v229);
    v269 = &v250 - 6;
    *(&v250 - 4) = sub_1D5B4AA6C;
    *(&v250 - 3) = 0;
    v248 = sub_1D6708888;
    v249 = v230;
    v289 = 0;
    v234 = swift_allocObject();
    *(v234 + 16) = v272;
    *(v234 + 32) = v289;
    *(v234 + 40) = v231;
    *(v234 + 48) = v232;
    swift_retain_n();
    sub_1D5EB1D80(v221, v222, v223, v224, v233);
    v235 = sub_1D72647CC();
    v289 = 0;
    v236 = swift_allocObject();
    *(v236 + 16) = v235;
    *(v236 + 24) = v272;
    *(v236 + 40) = v289;
    v237 = __swift_project_boxed_opaque_existential_1(v251, *(v251 + 3));
    MEMORY[0x1EEE9AC00](v237, v238);
    MEMORY[0x1EEE9AC00](v239, v240);
    v241 = v269;
    *(&v250 - 4) = sub_1D615B4A4;
    *(&v250 - 3) = v241;
    v248 = sub_1D6708888;
    v249 = v234;
    v242 = v274;
    v244 = sub_1D5D2F7A4(v257, sub_1D615B49C, v243, sub_1D615B4A4, (&v250 - 6));
    *&v274 = v242;
    if (v242)
    {
    }

    else
    {
      v245 = v244;

      if (v245)
      {
        sub_1D6659A24();
        v246 = v274;
        sub_1D72647EC();
        *&v274 = v246;
      }
    }

    v247 = v278;

    sub_1D5CBF568(v247);

    v220 = &v283;
LABEL_81:
    sub_1D5D2CFE8(*(v220 - 32), type metadata accessor for FormatVersionRequirement);
    goto LABEL_82;
  }

  sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

  v78 = v69;
  return sub_1D5D2CFE8(v78, sub_1D665BEC8);
}

uint64_t FormatPoint.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v67 - v8;
  sub_1D665C184();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v15 = v1[1];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C8DA18();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24CD8, sub_1D5C8DA18);
  sub_1D5D2EE70(&type metadata for FormatPoint, v20, v22, v17, &type metadata for FormatPoint, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v74 = v24;
  v75 = v23;
  v70 = v25 + 16;
  v71 = v26;
  (v26)(v9);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v84 = v16;
  v82 = 0uLL;
  v83 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v81 = 0;
  v30 = swift_allocObject();
  v78 = v67;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v81;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v80 = v9;
  v67[-4] = sub_1D5B4AA6C;
  v67[-3] = 0;
  v65 = sub_1D670888C;
  v66 = v32;
  v81 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v81;
  v72 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D665C218();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF02BB8, sub_1D665C218);
  swift_retain_n();
  v76 = v36;
  v77 = v35;
  v37 = sub_1D72647CC();
  v81 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v81;
  v39 = &v14[*(v11 + 36)];
  v40 = __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v67[-4] = sub_1D615B4A4;
  v67[-3] = &v67[-6];
  v44 = v79;
  v45 = v80;
  v65 = sub_1D670888C;
  v66 = v33;
  sub_1D5D2BC70(v80, sub_1D615B49C, v46, sub_1D615B4A4, &v67[-6]);
  if (v44)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v68 = v39;
    v48 = v74;
    v47 = v75;
    v79 = v29;

    v49 = sub_1D5B578C4();
    sub_1D72647EC();
    v67[1] = v49;
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    v51 = v73;
    v71(v73, v48, v47);
    swift_storeEnumTagMultiPayload();
    v84 = v15;
    v80 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    v81 = 0;
    v52 = swift_allocObject();
    v78 = v67;
    *(v52 + 16) = v80;
    *(v52 + 32) = v81;
    v53 = v72;
    v54 = v79;
    *(v52 + 40) = v72;
    *(v52 + 48) = v54;
    MEMORY[0x1EEE9AC00](v52, v55);
    v67[-4] = sub_1D5B4AA6C;
    v67[-3] = 0;
    v65 = sub_1D670888C;
    v66 = v56;
    v81 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v80;
    *(v57 + 32) = v81;
    *(v57 + 40) = v53;
    *(v57 + 48) = v54;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v81 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v80;
    *(v59 + 40) = v81;
    v60 = __swift_project_boxed_opaque_existential_1(v68, *(v68 + 3));
    MEMORY[0x1EEE9AC00](v60, v61);
    MEMORY[0x1EEE9AC00](v62, v63);
    v67[-4] = sub_1D615B4A4;
    v67[-3] = &v67[-6];
    v65 = sub_1D670888C;
    v66 = v57;
    sub_1D5D2BC70(v51, sub_1D615B49C, v64, sub_1D615B4A4, &v67[-6]);

    sub_1D72647EC();
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D665C184);
}

uint64_t FormatTextNodeAlternative.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v85 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v93 = &v83 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v83 - v11;
  sub_1D665C310();
  v98 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = v1[1];
  v19 = v1[3];
  v86 = v1[2];
  v84 = v19;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5CE5ECC();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF25048, sub_1D5CE5ECC);
  sub_1D5D2EE70(&type metadata for FormatTextNodeAlternative, v23, v25, v20, &type metadata for FormatTextNodeAlternative, v23, &type metadata for FormatVersions.JazzkonC, v21, v16, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v90 = v27;
  v91 = v26;
  v88 = v28 + 16;
  v89 = v29;
  (v29)(v12);
  v87 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v102 = v17;
  v103 = v18;
  v100 = 0uLL;
  v101 = 0;
  v30 = v98;
  v31 = &v16[*(v98 + 11)];
  v96 = v12;
  v32 = *v31;
  v33 = *(v31 + 1);
  v104 = 0;
  v34 = swift_allocObject();
  v97 = &v83;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v104;
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  *(&v83 - 4) = sub_1D5B4AA6C;
  *(&v83 - 3) = 0;
  v81 = sub_1D6708890;
  v82 = v36;
  v104 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v104;
  v92 = v32;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  sub_1D665C3A4();
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF02FC8, sub_1D665C3A4);
  swift_retain_n();
  v94 = v40;
  v95 = v39;
  v41 = sub_1D72647CC();
  v104 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v104;
  v43 = *(v30 + 9);
  v44 = v96;
  v45 = &v16[v43];
  v98 = v16;
  v46 = __swift_project_boxed_opaque_existential_1(&v16[v43], *&v16[v43 + 24]);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v83 - 4) = sub_1D615B4A4;
  *(&v83 - 3) = (&v83 - 6);
  v81 = sub_1D665C438;
  v82 = v37;
  v50 = v99;
  sub_1D5D2BC70(v44, sub_1D615B49C, v51, sub_1D615B4A4, (&v83 - 6));
  if (v50)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v52 = v98;
  }

  else
  {
    v83 = v45;

    v52 = v98;
    sub_1D72647EC();
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v54 = v93;
    v89(v93, v90, v91);
    swift_storeEnumTagMultiPayload();
    v102 = v86;
    v99 = xmmword_1D728CF30;
    v100 = xmmword_1D728CF30;
    v101 = 0;
    v104 = 0;
    v55 = swift_allocObject();
    v97 = &v83;
    *(v55 + 16) = v99;
    *(v55 + 32) = v104;
    v56 = v92;
    *(v55 + 40) = v92;
    *(v55 + 48) = v33;
    MEMORY[0x1EEE9AC00](v55, v57);
    v96 = 0;
    *(&v83 - 4) = sub_1D5B4AA6C;
    *(&v83 - 3) = 0;
    v81 = sub_1D6708890;
    v82 = v58;
    v104 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v99;
    *(v59 + 32) = v104;
    *(v59 + 40) = v56;
    *(v59 + 48) = v33;
    swift_retain_n();
    v60 = sub_1D72647CC();
    v104 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v99;
    *(v61 + 40) = v104;
    v62 = __swift_project_boxed_opaque_existential_1(v83, *(v83 + 3));
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v83 - 4) = sub_1D615B4A4;
    *(&v83 - 3) = (&v83 - 6);
    v81 = sub_1D6708890;
    v82 = v59;
    v66 = v96;
    sub_1D5D2BC70(v54, sub_1D615B49C, v67, sub_1D615B4A4, (&v83 - 6));
    if (v66)
    {
      sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5C76E3C();
      sub_1D72647EC();
      sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);

      v68 = v85;
      v89(v85, v90, v91);
      swift_storeEnumTagMultiPayload();
      v102 = v84;
      v99 = xmmword_1D7297410;
      v100 = xmmword_1D7297410;
      v101 = 0;
      v104 = 0;
      v69 = swift_allocObject();
      v97 = &v83;
      *(v69 + 16) = v99;
      *(v69 + 32) = v104;
      v70 = v92;
      *(v69 + 40) = v92;
      *(v69 + 48) = v33;
      MEMORY[0x1EEE9AC00](v69, v71);
      *(&v83 - 4) = sub_1D5B4AA6C;
      *(&v83 - 3) = 0;
      v81 = sub_1D6708890;
      v82 = v72;
      v104 = 0;
      v73 = swift_allocObject();
      *(v73 + 16) = v99;
      *(v73 + 32) = v104;
      *(v73 + 40) = v70;
      *(v73 + 48) = v33;
      swift_retain_n();
      v74 = sub_1D72647CC();
      v104 = 0;
      v75 = swift_allocObject();
      *(v75 + 16) = v74;
      *(v75 + 24) = v99;
      *(v75 + 40) = v104;
      v76 = __swift_project_boxed_opaque_existential_1(v83, *(v83 + 3));
      MEMORY[0x1EEE9AC00](v76, v77);
      MEMORY[0x1EEE9AC00](v78, v79);
      *(&v83 - 4) = sub_1D615B4A4;
      *(&v83 - 3) = (&v83 - 6);
      v81 = sub_1D6708890;
      v82 = v73;
      sub_1D5D2BC70(v68, sub_1D615B49C, v80, sub_1D615B4A4, (&v83 - 6));

      sub_1D665C4B4();
      sub_1D72647EC();
      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v52, sub_1D665C310);
}

uint64_t FormatImageAdjustment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = a1[3];
    v31 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v11 = sub_1D7264AFC();
    LOBYTE(v10) = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v12 = v64;
    v13 = v6;
    v14 = v32;
    v15 = v9;
    if (v10)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F50F7B40;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v15, v13);
          a1 = v31;
          goto LABEL_9;
        }
      }
    }

    sub_1D665C508();
    v61 = 0;
    v62 = 0;
    sub_1D726431C();
    if (v63)
    {
      if (v63 == 1)
      {
        v33[0] = xmmword_1D7279980;
        sub_1D665C57C();
        sub_1D726431C();
        (*(v14 + 8))(v15, v13);
        v40 = v49;
        v41 = v50;
        v42 = v51;
        v36 = v45;
        v37 = v46;
        v38 = v47;
        v39 = v48;
        v34 = v43;
        v35 = v44;
        sub_1D6011260(&v34);
        v58 = v40;
        v59 = v41;
        v60 = v42;
        v54 = v36;
        v55 = v37;
        v56 = v38;
        v57 = v39;
        v26 = v34;
        v25 = v35;
LABEL_17:
        v52 = v26;
        v53 = v25;
        v23 = v31;
        v27 = v59;
        *(v12 + 96) = v58;
        *(v12 + 112) = v27;
        *(v12 + 128) = v60;
        v28 = v55;
        *(v12 + 32) = v54;
        *(v12 + 48) = v28;
        v29 = v57;
        *(v12 + 64) = v56;
        *(v12 + 80) = v29;
        v30 = v53;
        *v12 = v52;
        *(v12 + 16) = v30;
        return __swift_destroy_boxed_opaque_existential_1(v23);
      }

      v34 = xmmword_1D7279980;
      sub_1D5F26BDC();
      sub_1D726431C();
      (*(v14 + 8))(v15, v13);
      *&v43 = *&v33[0];
      BYTE8(v43) = BYTE8(v33[0]);
      sub_1D665C55C(&v43);
    }

    else
    {
      v33[8] = xmmword_1D7279980;
      sub_1D665C5D0();
      sub_1D726431C();
      (*(v14 + 8))(v15, v13);
      sub_1D5F78F40(&v34, v33);
      sub_1D5F78F40(v33, &v43);
      sub_1D60112A8(&v43);
    }

    v58 = v49;
    v59 = v50;
    v60 = v51;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v57 = v48;
    v26 = v43;
    v25 = v44;
    goto LABEL_17;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  v23 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t FormatImageAdjustment.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v44[-v10];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v44[-v14];
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v44[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatImageAdjustment, &type metadata for FormatCodingKeys, v23, v21, &type metadata for FormatImageAdjustment, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v20, v19, v22, &off_1F51F6BF8);
  v24 = *(v2 + 112);
  v47[6] = *(v2 + 96);
  v47[7] = v24;
  v48 = *(v2 + 128);
  v25 = *(v2 + 48);
  v47[2] = *(v2 + 32);
  v47[3] = v25;
  v26 = *(v2 + 80);
  v47[4] = *(v2 + 64);
  v47[5] = v26;
  v27 = *(v2 + 16);
  v47[0] = *v2;
  v47[1] = v27;
  v28 = sub_1D5F78DC4(v47);
  v29 = sub_1D5DEA32C(v47);
  if (v28)
  {
    if (v28 == 1)
    {
      v30 = *(v29 + 112);
      v45[6] = *(v29 + 96);
      v45[7] = v30;
      v46 = *(v29 + 128);
      v31 = *(v29 + 48);
      v45[2] = *(v29 + 32);
      v45[3] = v31;
      v32 = *(v29 + 80);
      v45[4] = *(v29 + 64);
      v45[5] = v32;
      v33 = *(v29 + 16);
      v45[0] = *v29;
      v45[1] = v33;
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v34 = sub_1D725BD1C();
      v35 = __swift_project_value_buffer(v34, qword_1EDFFCD18);
      (*(*(v34 - 8) + 16))(v11, v35, v34);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D639F860(1, v45, v11);
      v36 = v11;
    }

    else
    {
      v39 = *v29;
      v40 = *(v29 + 8);
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCD18);
      (*(*(v41 - 8) + 16))(v7, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D639FA18(2, v39, v40, v7);
      v36 = v7;
    }
  }

  else
  {
    sub_1D5F78F40(v29, v44);
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD18);
    (*(*(v37 - 8) + 16))(v15, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639F6C0(0, v44, v15);
    v36 = v15;
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v19, sub_1D5D30DC4);
}

uint64_t FormatIssueCoverNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v329 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v331 = &v329 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v332 = &v329 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v333 = &v329 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v334 = &v329 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v335 = &v329 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v336 = &v329 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v337 = &v329 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v341 = &v329 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v340 = &v329 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v342 = &v329 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v343 = &v329 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v344 = &v329 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v354 = (&v329 - v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v329 - v50;
  sub_1D665D5DC();
  v356 = v52;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v329 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1[3];
  v57 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v56);
  sub_1D5E1C580();
  v59 = v58;
  v60 = sub_1D5B58B84(&qword_1EDF0C560, sub_1D5E1C580);
  sub_1D5D2EE70(v4, v59, v61, v56, v4, v59, &type metadata for FormatVersions.StarSky, v57, v55, v60, &off_1F51F6CD8);
  swift_beginAccess();
  v352 = v2;
  v62 = v2[2];
  v63 = v2[3];
  v64 = qword_1EDF31ED0;

  if (v64 != -1)
  {
    swift_once();
  }

  v65 = sub_1D725BD1C();
  v66 = __swift_project_value_buffer(v65, qword_1EDFFCD50);
  v67 = *(v65 - 8);
  v68 = *(v67 + 16);
  v69 = v67 + 16;
  v351 = v66;
  v353 = v65;
  v68(v51);
  v70 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v71 = sub_1D725895C();
  v72 = (*(*(v71 - 8) + 48))(v8, 1, v71);
  v347 = v68;
  v348 = v69;
  v349 = v70;
  if (v72 == 1)
  {
    *&v355 = v63;
    v345 = v62;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v73 = v356;
    v74 = &v55[*(v356 + 11)];
    v76 = *v74;
    v75 = *(v74 + 1);
    LOBYTE(v358) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    *(v77 + 24) = 0;
    *(v77 + 32) = v358;
    *(v77 + 40) = v76;
    *(v77 + 48) = v75;
    sub_1D5E1C544(0);
    v79 = v78;
    v80 = sub_1D5B58B84(&qword_1EDF033E8, sub_1D5E1C544);

    v346 = v79;
    v81 = sub_1D72647CC();
    LOBYTE(v358) = 0;
    v82 = swift_allocObject();
    *(v82 + 24) = 0;
    *(v82 + 32) = 0;
    *(v82 + 16) = v81;
    *(v82 + 40) = v358;
    v83 = __swift_project_boxed_opaque_existential_1(&v55[*(v73 + 9)], *&v55[*(v73 + 9) + 24]);
    MEMORY[0x1EEE9AC00](v83, v84);
    MEMORY[0x1EEE9AC00](v85, v86);
    *(&v329 - 4) = sub_1D5B4AA6C;
    *(&v329 - 3) = 0;
    v327 = sub_1D665D670;
    v328 = v77;
    v87 = v357;
    v89 = sub_1D5D2F7A4(v51, sub_1D615B49C, v88, sub_1D615B4A4, (&v329 - 6));
    *&v357 = v87;
    if (v87)
    {
      sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

LABEL_6:
      v90 = v55;
      return sub_1D5D2CFE8(v90, sub_1D665D5DC);
    }

    v116 = v89;
    v339 = v80;

    if (v116)
    {
      v358 = 0uLL;
      LOBYTE(v359) = 0;
      v370 = v345;
      v371 = v355;
      v117 = v357;
      sub_1D72647EC();

      sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
      *&v357 = v117;
      v92 = v354;
      if (v117)
      {
        goto LABEL_6;
      }

      v68 = v347;
    }

    else
    {
      sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

      v68 = v347;
      v92 = v354;
    }
  }

  else
  {
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v92 = v354;
    v73 = v356;
  }

  v93 = v352[4];
  (v68)(v92, v351, v353);
  swift_storeEnumTagMultiPayload();
  v370 = v93;
  v355 = xmmword_1D728CF30;
  v358 = xmmword_1D728CF30;
  LOBYTE(v359) = 0;
  v94 = &v55[*(v73 + 11)];
  v95 = *v94;
  v96 = *(v94 + 1);
  LOBYTE(v369) = 0;
  v97 = swift_allocObject();
  v346 = &v329;
  *(v97 + 16) = v355;
  *(v97 + 32) = v369;
  *(v97 + 40) = v95;
  *(v97 + 48) = v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  v345 = &v329 - 6;
  *(&v329 - 4) = sub_1D5B4AA6C;
  *(&v329 - 3) = 0;
  v327 = sub_1D6708894;
  v328 = v99;
  LOBYTE(v369) = 0;
  v100 = v92;
  v101 = swift_allocObject();
  *(v101 + 16) = v355;
  *(v101 + 32) = v369;
  v330 = v95;
  *(v101 + 40) = v95;
  *(v101 + 48) = v96;
  sub_1D5E1C544(0);
  v103 = v102;
  v104 = sub_1D5B58B84(&qword_1EDF033E8, sub_1D5E1C544);
  v329 = v96;
  swift_retain_n();
  v339 = v103;
  v338 = v104;
  v105 = sub_1D72647CC();
  LOBYTE(v369) = 0;
  v106 = swift_allocObject();
  *(v106 + 16) = v105;
  *(v106 + 24) = v355;
  *(v106 + 40) = v369;
  v107 = *(v356 + 9);
  v350 = v55;
  v108 = &v55[v107];
  v109 = __swift_project_boxed_opaque_existential_1(&v55[v107], *&v55[v107 + 24]);
  MEMORY[0x1EEE9AC00](v109, v110);
  MEMORY[0x1EEE9AC00](v111, v112);
  v113 = v345;
  *(&v329 - 4) = sub_1D615B4A4;
  *(&v329 - 3) = v113;
  v327 = sub_1D6708894;
  v328 = v101;
  v114 = v357;
  sub_1D5D2BC70(v100, sub_1D615B49C, v115, sub_1D615B4A4, (&v329 - 6));
  if (v114)
  {
    sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);

    v90 = v350;
    return sub_1D5D2CFE8(v90, sub_1D665D5DC);
  }

  v356 = v108;

  sub_1D5CA1E90();
  sub_1D72647EC();
  sub_1D5D2CFE8(v354, type metadata accessor for FormatVersionRequirement);

  v118 = v352;
  v119 = v352[5];
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v120 = v353;
  v121 = __swift_project_value_buffer(v353, qword_1EDFFCD68);
  v122 = v344;
  (v347)(v344, v121, v120);
  swift_storeEnumTagMultiPayload();
  v357 = xmmword_1D7297410;
  v358 = xmmword_1D7297410;
  LOBYTE(v359) = 0;
  LOBYTE(v370) = 0;
  v124 = swift_allocObject();
  *(v124 + 16) = v357;
  *(v124 + 32) = v370;
  v125 = v330;
  *(v124 + 40) = v330;
  v126 = v329;
  *(v124 + 48) = v329;
  if (v119)
  {
    *&v355 = &v329;
    v370 = v119;
    MEMORY[0x1EEE9AC00](v126, v123);
    *(&v329 - 4) = sub_1D5B4AA6C;
    *(&v329 - 3) = 0;
    v327 = sub_1D6708894;
    v328 = v124;
    LOBYTE(v369) = 0;
    v128 = v127;
    v129 = swift_allocObject();
    *(v129 + 16) = v357;
    *(v129 + 32) = v369;
    *(v129 + 40) = v125;
    *(v129 + 48) = v128;
    swift_retain_n();

    v130 = sub_1D72647CC();
    LOBYTE(v369) = 0;
    v131 = swift_allocObject();
    *(v131 + 16) = v130;
    *(v131 + 24) = v357;
    *(v131 + 40) = v369;
    v132 = __swift_project_boxed_opaque_existential_1(v356, *(v356 + 3));
    MEMORY[0x1EEE9AC00](v132, v133);
    MEMORY[0x1EEE9AC00](v134, v135);
    *(&v329 - 4) = sub_1D615B4A4;
    *(&v329 - 3) = (&v329 - 6);
    v327 = sub_1D6708894;
    v328 = v129;
    v137 = sub_1D5D2F7A4(v122, sub_1D615B49C, v136, sub_1D615B4A4, (&v329 - 6));
    v140 = v137;

    if (v140)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v138 = v343;
      v118 = v352;
    }

    else
    {

      v138 = v343;
      v118 = v352;
    }

    v139 = v344;
  }

  else
  {

    v138 = v343;
    v139 = v122;
  }

  sub_1D5D2CFE8(v139, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v141 = v118[6];
  v142 = v347;
  (v347)(v138, v351, v353);
  swift_storeEnumTagMultiPayload();
  if (*(v141 + 16))
  {
    LOBYTE(v358) = 0;
    v143 = swift_allocObject();
    v357 = xmmword_1D72BAA60;
    *(v143 + 16) = xmmword_1D72BAA60;
    *(v143 + 32) = v358;
    *(v143 + 40) = v330;
    *(v143 + 48) = v329;

    v144 = sub_1D72647CC();
    LOBYTE(v358) = 0;
    v145 = swift_allocObject();
    *(v145 + 16) = v144;
    *(v145 + 24) = v357;
    *(v145 + 40) = v358;
    v146 = v356;
    v147 = __swift_project_boxed_opaque_existential_1(v356, *(v356 + 3));
    *&v355 = &v329;
    MEMORY[0x1EEE9AC00](v147, v148);
    MEMORY[0x1EEE9AC00](v149, v150);
    *(&v329 - 4) = sub_1D5B4AA6C;
    *(&v329 - 3) = 0;
    v327 = sub_1D6708894;
    v328 = v143;
    v152 = sub_1D5D2F7A4(v138, sub_1D615B49C, v151, sub_1D615B4A4, (&v329 - 6));
    v153 = v152;

    if (v153)
    {
      v358 = v357;
      LOBYTE(v359) = 0;
      v369 = v141;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v154 = v343;
      v118 = v352;
      *&v357 = 0;

      sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
      v142 = v347;
    }

    else
    {
      *&v357 = 0;
      sub_1D5D2CFE8(v343, type metadata accessor for FormatVersionRequirement);

      v142 = v347;
      v118 = v352;
    }
  }

  else
  {
    *&v357 = 0;
    sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
    v146 = v356;
  }

  v155 = v118[7];
  v156 = v342;
  v157 = v351;
  v142(v342, v351, v353);
  swift_storeEnumTagMultiPayload();
  v355 = xmmword_1D72BAA70;
  v358 = xmmword_1D72BAA70;
  LOBYTE(v359) = 0;
  LOBYTE(v369) = 0;
  v158 = swift_allocObject();
  v160 = v158;
  v161 = v155;
  *(v158 + 16) = v355;
  *(v158 + 32) = v369;
  v162 = v330;
  v163 = v329;
  *(v158 + 40) = v330;
  *(v158 + 48) = v163;
  if (v161)
  {
    v354 = &v329;
    v369 = v161;
    MEMORY[0x1EEE9AC00](v158, v159);
    *(&v329 - 4) = sub_1D5B4AA6C;
    *(&v329 - 3) = 0;
    v327 = sub_1D6708894;
    v328 = v160;
    LOBYTE(v368) = 0;
    v165 = v164;
    v167 = v166;
    v168 = swift_allocObject();
    *(v168 + 16) = v355;
    *(v168 + 32) = v368;
    *(v168 + 40) = v162;
    *(v168 + 48) = v165;
    swift_retain_n();
    v346 = v167;

    v169 = sub_1D72647CC();
    LOBYTE(v368) = 0;
    v170 = swift_allocObject();
    *(v170 + 16) = v169;
    *(v170 + 24) = v355;
    *(v170 + 40) = v368;
    v171 = __swift_project_boxed_opaque_existential_1(v146, *(v146 + 3));
    MEMORY[0x1EEE9AC00](v171, v172);
    MEMORY[0x1EEE9AC00](v173, v174);
    *(&v329 - 4) = sub_1D615B4A4;
    *(&v329 - 3) = (&v329 - 6);
    v327 = sub_1D6708894;
    v328 = v168;
    v175 = v357;
    v177 = sub_1D5D2F7A4(v156, sub_1D615B49C, v176, sub_1D615B4A4, (&v329 - 6));
    v178 = v175;
    if (v175)
    {

      v179 = v350;
      v180 = v156;
LABEL_42:
      sub_1D5D2CFE8(v180, type metadata accessor for FormatVersionRequirement);
      v90 = v179;
      return sub_1D5D2CFE8(v90, sub_1D665D5DC);
    }

    v183 = v177;

    v182 = v340;
    if (v183)
    {
      type metadata accessor for FormatIssueCoverNodeStyle();
      sub_1D5B58B84(&qword_1EDF0C2D0, type metadata accessor for FormatIssueCoverNodeStyle);
      sub_1D72647EC();
      v157 = v351;

      v142 = v347;
    }

    else
    {

      v142 = v347;
      v157 = v351;
    }

    v181 = v329;
  }

  else
  {
    v181 = v163;

    v178 = v357;
    v182 = v340;
  }

  sub_1D5D2CFE8(v342, type metadata accessor for FormatVersionRequirement);
  v184 = v352[8];
  v142(v182, v157, v353);
  swift_storeEnumTagMultiPayload();
  v355 = xmmword_1D72BAA80;
  v358 = xmmword_1D72BAA80;
  LOBYTE(v359) = 0;
  LOBYTE(v369) = 0;
  v185 = swift_allocObject();
  v187 = v185;
  *(v185 + 16) = v355;
  *(v185 + 32) = v369;
  v188 = v182;
  v189 = v330;
  *(v185 + 40) = v330;
  *(v185 + 48) = v181;
  if (v184)
  {
    v354 = &v329;
    v369 = v184;
    MEMORY[0x1EEE9AC00](v185, v186);
    *&v357 = v178;
    *(&v329 - 4) = sub_1D5B4AA6C;
    *(&v329 - 3) = 0;
    v327 = sub_1D6708894;
    v328 = v187;
    LOBYTE(v368) = 0;
    v190 = swift_allocObject();
    *(v190 + 16) = v355;
    *(v190 + 32) = v368;
    *(v190 + 40) = v189;
    *(v190 + 48) = v181;
    swift_retain_n();

    v191 = sub_1D72647CC();
    LOBYTE(v368) = 0;
    v192 = swift_allocObject();
    *(v192 + 16) = v191;
    *(v192 + 24) = v355;
    *(v192 + 40) = v368;
    v193 = __swift_project_boxed_opaque_existential_1(v356, *(v356 + 3));
    MEMORY[0x1EEE9AC00](v193, v194);
    MEMORY[0x1EEE9AC00](v195, v196);
    *(&v329 - 4) = sub_1D615B4A4;
    *(&v329 - 3) = (&v329 - 6);
    v327 = sub_1D6708894;
    v328 = v190;
    v197 = v188;
    v198 = v188;
    v199 = v357;
    v201 = sub_1D5D2F7A4(v198, sub_1D615B49C, v200, sub_1D615B4A4, (&v329 - 6));
    v178 = v199;
    if (v199)
    {

      v179 = v350;
      v180 = v197;
      goto LABEL_42;
    }

    v204 = v201;

    v203 = v341;
    if (v204)
    {
      type metadata accessor for FormatAnimationNodeStyle();
      sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle);
      sub_1D72647EC();
      v157 = v351;

      v142 = v347;
    }

    else
    {

      v142 = v347;
      v157 = v351;
    }

    v202 = v329;
  }

  else
  {
    v202 = v181;

    v203 = v341;
    v197 = v188;
  }

  sub_1D5D2CFE8(v197, type metadata accessor for FormatVersionRequirement);
  v205 = v352[9];
  v142(v203, v157, v353);
  swift_storeEnumTagMultiPayload();
  v369 = v205;
  v357 = xmmword_1D72BAA90;
  v358 = xmmword_1D72BAA90;
  LOBYTE(v359) = 0;
  LOBYTE(v368) = 0;
  v206 = swift_allocObject();
  *&v355 = &v329;
  *(v206 + 16) = v357;
  *(v206 + 32) = v368;
  v207 = v330;
  *(v206 + 40) = v330;
  *(v206 + 48) = v202;
  MEMORY[0x1EEE9AC00](v206, v208);
  *(&v329 - 4) = sub_1D5B4AA6C;
  *(&v329 - 3) = 0;
  v327 = sub_1D6708894;
  v328 = v209;
  LOBYTE(v368) = 0;
  v210 = swift_allocObject();
  *(v210 + 16) = v357;
  *(v210 + 32) = v368;
  *(v210 + 40) = v207;
  *(v210 + 48) = v202;
  swift_retain_n();
  v211 = sub_1D72647CC();
  LOBYTE(v368) = 0;
  v212 = swift_allocObject();
  *(v212 + 16) = v211;
  *(v212 + 24) = v357;
  *(v212 + 40) = v368;
  v213 = __swift_project_boxed_opaque_existential_1(v356, *(v356 + 3));
  MEMORY[0x1EEE9AC00](v213, v214);
  MEMORY[0x1EEE9AC00](v215, v216);
  *(&v329 - 4) = sub_1D615B4A4;
  *(&v329 - 3) = (&v329 - 6);
  v217 = v341;
  v327 = sub_1D6708894;
  v328 = v210;
  sub_1D5D2BC70(v341, sub_1D615B49C, v218, sub_1D615B4A4, (&v329 - 6));
  if (v178)
  {
    sub_1D5D2CFE8(v217, type metadata accessor for FormatVersionRequirement);

    v90 = v350;
    return sub_1D5D2CFE8(v90, sub_1D665D5DC);
  }

  sub_1D665D700();
  sub_1D72647EC();
  sub_1D5D2CFE8(v341, type metadata accessor for FormatVersionRequirement);

  v219 = v352;
  swift_beginAccess();
  v220 = v219[10];
  v221 = v337;
  v222 = v347;
  (v347)(v337, v351, v353);
  swift_storeEnumTagMultiPayload();
  if (v220)
  {
    LOBYTE(v358) = 0;
    v223 = swift_allocObject();
    v357 = xmmword_1D72BAAA0;
    *(v223 + 16) = xmmword_1D72BAAA0;
    *(v223 + 32) = v358;
    *(v223 + 40) = v330;
    *(v223 + 48) = v329;

    v224 = sub_1D72647CC();
    LOBYTE(v358) = 0;
    v225 = swift_allocObject();
    *(v225 + 16) = v224;
    *(v225 + 24) = v357;
    *(v225 + 40) = v358;
    v226 = __swift_project_boxed_opaque_existential_1(v356, *(v356 + 3));
    MEMORY[0x1EEE9AC00](v226, v227);
    MEMORY[0x1EEE9AC00](v228, v229);
    *(&v329 - 4) = sub_1D5B4AA6C;
    *(&v329 - 3) = 0;
    v327 = sub_1D6708894;
    v328 = v223;
    sub_1D5D2F7A4(v221, sub_1D615B49C, v230, sub_1D615B4A4, (&v329 - 6));

    v358 = v357;
    LOBYTE(v359) = 0;
    v368 = v220;
    sub_1D72647EC();
    sub_1D5D2CFE8(v337, type metadata accessor for FormatVersionRequirement);
    v222 = v347;
  }

  else
  {
    sub_1D5D2CFE8(v221, type metadata accessor for FormatVersionRequirement);
  }

  v231 = v336;
  v232 = v352;
  swift_beginAccess();
  v233 = v232[11];
  v222(v231, v351, v353);
  swift_storeEnumTagMultiPayload();
  if (v233 == 0x8000000000000000)
  {
    sub_1D5D2CFE8(v231, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v358) = 0;
    v234 = swift_allocObject();
    v357 = xmmword_1D72BAAB0;
    *(v234 + 16) = xmmword_1D72BAAB0;
    *(v234 + 32) = v358;
    *(v234 + 40) = v330;
    *(v234 + 48) = v329;

    sub_1D5EB1500(v233);
    v235 = sub_1D72647CC();
    LOBYTE(v358) = 0;
    v236 = swift_allocObject();
    *(v236 + 16) = v235;
    *(v236 + 24) = v357;
    *(v236 + 40) = v358;
    v237 = __swift_project_boxed_opaque_existential_1(v356, *(v356 + 3));
    MEMORY[0x1EEE9AC00](v237, v238);
    MEMORY[0x1EEE9AC00](v239, v240);
    *(&v329 - 4) = sub_1D5B4AA6C;
    *(&v329 - 3) = 0;
    v327 = sub_1D6708894;
    v328 = v234;
    LOBYTE(v235) = sub_1D5D2F7A4(v231, sub_1D615B49C, v241, sub_1D615B4A4, (&v329 - 6));

    if (v235)
    {
      v358 = v357;
      LOBYTE(v359) = 0;
      v367 = v233;
      sub_1D5DF6A60();
      sub_1D72647EC();
      sub_1D5EB15C4(v367);
    }

    else
    {
      sub_1D5EB15C4(v233);
    }

    sub_1D5D2CFE8(v336, type metadata accessor for FormatVersionRequirement);
  }

  v242 = v352;
  swift_beginAccess();
  v243 = *(v242 + 96);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v244 = v353;
  v245 = __swift_project_value_buffer(v353, qword_1EDFFCD00);
  v246 = v335;
  (v347)(v335, v245, v244);
  swift_storeEnumTagMultiPayload();
  if (v243)
  {
    sub_1D5D2CFE8(v246, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v358) = 0;
    v247 = swift_allocObject();
    v357 = xmmword_1D72BAAC0;
    *(v247 + 16) = xmmword_1D72BAAC0;
    *(v247 + 32) = v358;
    *(v247 + 40) = v330;
    *(v247 + 48) = v329;

    v248 = sub_1D72647CC();
    LOBYTE(v358) = 0;
    v249 = swift_allocObject();
    *(v249 + 16) = v248;
    *(v249 + 24) = v357;
    *(v249 + 40) = v358;
    v250 = __swift_project_boxed_opaque_existential_1(v356, *(v356 + 3));
    MEMORY[0x1EEE9AC00](v250, v251);
    MEMORY[0x1EEE9AC00](v252, v253);
    *(&v329 - 4) = sub_1D5B4AA6C;
    *(&v329 - 3) = 0;
    v327 = sub_1D6708894;
    v328 = v247;
    LOBYTE(v248) = sub_1D5D2F7A4(v246, sub_1D615B49C, v254, sub_1D615B4A4, (&v329 - 6));

    if (v248)
    {
      v358 = v357;
      LOBYTE(v359) = 0;
      LOBYTE(v365) = 0;
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v335, type metadata accessor for FormatVersionRequirement);
    v242 = v352;
  }

  v255 = v242[13];
  v256 = *(v242 + 112);
  v257 = v334;
  (v347)(v334, v351, v353);
  swift_storeEnumTagMultiPayload();
  v357 = xmmword_1D72BAAD0;
  v358 = xmmword_1D72BAAD0;
  LOBYTE(v359) = 0;
  LOBYTE(v365) = 0;
  v259 = swift_allocObject();
  *(v259 + 16) = v357;
  *(v259 + 32) = v365;
  *(v259 + 40) = v330;
  v260 = v329;
  *(v259 + 48) = v329;
  if (v256 <= 0xFD)
  {
    v365 = v255;
    v366 = v256;
    MEMORY[0x1EEE9AC00](v260, v258);
    *(&v329 - 4) = sub_1D5B4AA6C;
    *(&v329 - 3) = 0;
    v327 = sub_1D6708894;
    v328 = v259;
    LOBYTE(v363) = 0;
    v263 = v262;
    v264 = swift_allocObject();
    *(v264 + 16) = v357;
    *(v264 + 32) = v363;
    *(v264 + 40) = v330;
    *(v264 + 48) = v263;
    swift_retain_n();
    v265 = sub_1D72647CC();
    LOBYTE(v363) = 0;
    v266 = swift_allocObject();
    *(v266 + 16) = v265;
    *(v266 + 24) = v357;
    *(v266 + 40) = v363;
    v267 = __swift_project_boxed_opaque_existential_1(v356, *(v356 + 3));
    MEMORY[0x1EEE9AC00](v267, v268);
    MEMORY[0x1EEE9AC00](v269, v270);
    *(&v329 - 4) = sub_1D615B4A4;
    *(&v329 - 3) = (&v329 - 6);
    v327 = sub_1D6708894;
    v328 = v264;
    v272 = sub_1D5D2F7A4(v334, sub_1D615B49C, v271, sub_1D615B4A4, (&v329 - 6));
    *&v357 = 0;
    LOBYTE(v265) = v272;

    if (v265)
    {
      sub_1D5F8F434();
      v273 = v357;
      sub_1D72647EC();
      *&v357 = v273;
      if (v273)
      {
        sub_1D5D2CFE8(v334, type metadata accessor for FormatVersionRequirement);

LABEL_76:
        v90 = v350;
        return sub_1D5D2CFE8(v90, sub_1D665D5DC);
      }
    }

    v242 = v352;
    v261 = v333;
    v257 = v334;
  }

  else
  {
    *&v357 = 0;

    v261 = v333;
  }

  sub_1D5D2CFE8(v257, type metadata accessor for FormatVersionRequirement);

  swift_beginAccess();
  v274 = v242[15];
  (v347)(v261, v351, v353);
  swift_storeEnumTagMultiPayload();
  if (*(v274 + 16))
  {
    LOBYTE(v358) = 0;
    v275 = swift_allocObject();
    v355 = xmmword_1D72BAAE0;
    *(v275 + 16) = xmmword_1D72BAAE0;
    *(v275 + 32) = v358;
    *(v275 + 40) = v330;
    *(v275 + 48) = v329;

    v276 = sub_1D72647CC();
    LOBYTE(v358) = 0;
    v277 = swift_allocObject();
    *(v277 + 16) = v276;
    *(v277 + 24) = v355;
    *(v277 + 40) = v358;
    v278 = __swift_project_boxed_opaque_existential_1(v356, *(v356 + 3));
    MEMORY[0x1EEE9AC00](v278, v279);
    MEMORY[0x1EEE9AC00](v280, v281);
    *(&v329 - 4) = sub_1D5B4AA6C;
    *(&v329 - 3) = 0;
    v327 = sub_1D6708894;
    v328 = v275;
    v282 = v357;
    v284 = sub_1D5D2F7A4(v261, sub_1D615B49C, v283, sub_1D615B4A4, (&v329 - 6));
    *&v357 = v282;
    if (v282)
    {

LABEL_75:
      sub_1D5D2CFE8(v333, type metadata accessor for FormatVersionRequirement);
      goto LABEL_76;
    }

    v285 = v284;

    if (v285)
    {
      v286 = v357;
      sub_1D5E07898(v274, v350, 0xB, 0, 0);
      *&v357 = v286;
      if (v286)
      {

        goto LABEL_75;
      }
    }

    v242 = v352;
    v261 = v333;
  }

  sub_1D5D2CFE8(v261, type metadata accessor for FormatVersionRequirement);
  v287 = *(v242 + 128);
  v288 = v332;
  (v347)(v332, v351, v353);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v363) = v287;
  v355 = xmmword_1D72BAAF0;
  v358 = xmmword_1D72BAAF0;
  LOBYTE(v359) = 0;
  v372 = 0;
  v289 = swift_allocObject();
  *(v289 + 16) = v355;
  *(v289 + 32) = v372;
  v290 = v330;
  v291 = v329;
  *(v289 + 40) = v330;
  *(v289 + 48) = v291;
  MEMORY[0x1EEE9AC00](v289, v292);
  *(&v329 - 4) = sub_1D5B4AA6C;
  *(&v329 - 3) = 0;
  v327 = sub_1D6708894;
  v328 = v293;
  v372 = 0;
  v294 = swift_allocObject();
  *(v294 + 16) = v355;
  *(v294 + 32) = v372;
  *(v294 + 40) = v290;
  *(v294 + 48) = v291;
  swift_retain_n();
  v295 = sub_1D72647CC();
  v372 = 0;
  v296 = swift_allocObject();
  *(v296 + 16) = v295;
  *(v296 + 24) = v355;
  *(v296 + 40) = v372;
  v297 = __swift_project_boxed_opaque_existential_1(v356, *(v356 + 3));
  MEMORY[0x1EEE9AC00](v297, v298);
  MEMORY[0x1EEE9AC00](v299, v300);
  *(&v329 - 4) = sub_1D615B4A4;
  *(&v329 - 3) = (&v329 - 6);
  v327 = sub_1D6708894;
  v328 = v294;
  v301 = v357;
  sub_1D5D2BC70(v288, sub_1D615B49C, v302, sub_1D615B4A4, (&v329 - 6));
  if (v301)
  {
    sub_1D5D2CFE8(v332, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D61CF188();
    sub_1D72647EC();
    sub_1D5D2CFE8(v332, type metadata accessor for FormatVersionRequirement);

    v303 = v352[17];
    v304 = v352[18];
    v305 = v352[19];
    v306 = v352[20];
    v307 = v352[21];
    v308 = v352[22];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v309 = v353;
    v310 = __swift_project_value_buffer(v353, qword_1EDFFCE38);
    (v347)(v331, v310, v309);
    swift_storeEnumTagMultiPayload();
    v357 = xmmword_1D7282A80;
    v363 = xmmword_1D7282A80;
    v364 = 0;
    LOBYTE(v358) = 0;
    v311 = swift_allocObject();
    v313 = v311;
    *(v311 + 16) = v357;
    *(v311 + 32) = v358;
    v314 = v329;
    *(v311 + 40) = v330;
    *(v311 + 48) = v314;
    if (v303)
    {
      *&v355 = &v329;
      *&v358 = v303;
      *(&v358 + 1) = v304;
      v359 = v305;
      v360 = v306;
      v361 = v307;
      v362 = v308;
      MEMORY[0x1EEE9AC00](v311, v312);
      v354 = &v329 - 6;
      *(&v329 - 4) = sub_1D5B4AA6C;
      *(&v329 - 3) = 0;
      v327 = sub_1D6708894;
      v328 = v313;
      v372 = 0;
      v315 = swift_allocObject();
      *(v315 + 16) = v357;
      *(v315 + 32) = v372;
      *(v315 + 40) = v330;
      *(v315 + 48) = v329;
      swift_retain_n();
      sub_1D5EB1D80(v303, v304, v305, v306, v307);
      v316 = sub_1D72647CC();
      v372 = 0;
      v317 = swift_allocObject();
      *(v317 + 16) = v316;
      *(v317 + 24) = v357;
      *(v317 + 40) = v372;
      v318 = __swift_project_boxed_opaque_existential_1(v356, *(v356 + 3));
      MEMORY[0x1EEE9AC00](v318, v319);
      MEMORY[0x1EEE9AC00](v320, v321);
      v322 = v354;
      *(&v329 - 4) = sub_1D615B4A4;
      *(&v329 - 3) = v322;
      v327 = sub_1D6708894;
      v328 = v315;
      v324 = sub_1D5D2F7A4(v331, sub_1D615B49C, v323, sub_1D615B4A4, (&v329 - 6));
      v325 = v324;

      if (v325)
      {
        sub_1D6659A24();
        sub_1D72647EC();
      }

      v326 = v361;

      sub_1D5CBF568(v326);

      sub_1D5D2CFE8(v331, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v331, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v350, sub_1D665D5DC);
}