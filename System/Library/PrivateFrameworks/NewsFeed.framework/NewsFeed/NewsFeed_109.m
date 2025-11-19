uint64_t sub_1D6561A48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = "stCompetitorScoreDifference";
  }

  else
  {
    v4 = "leaderboardPlayerImage";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000021;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (*a2)
  {
    v7 = "leaderboardPlayerImage";
  }

  else
  {
    v7 = "stCompetitorScoreDifference";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D6561AF4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6561B74()
{
  sub_1D72621EC();
}

uint64_t sub_1D6561BE0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6561C68(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000021;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (*v1)
  {
    v3 = "leaderboardPlayerImage";
  }

  else
  {
    v3 = "stCompetitorScoreDifference";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t FormatPuzzleStatisticBinding.Text.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v83 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v82 = &v78 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v81 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v80 = &v78 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v79 = &v78 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v78 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v84 = &v78 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v78 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v78 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v78 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v78 - v39;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v78 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *v2;
  v46 = a1[3];
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v46);
  v48 = sub_1D5C30408();
  v85 = v44;
  sub_1D5D2EE70(&type metadata for FormatPuzzleStatisticBinding.Text, &type metadata for FormatCodingKeys, v49, v46, &type metadata for FormatPuzzleStatisticBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v47, v44, v48, &off_1F51F6BD8);
  if (v45 > 4)
  {
    if (v45 > 7)
    {
      if (v45 == 8)
      {
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v67 = sub_1D725BD1C();
        v68 = __swift_project_value_buffer(v67, qword_1EDFFCE80);
        v52 = v81;
        (*(*(v67 - 8) + 16))(v81, v68, v67);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = 8;
      }

      else if (v45 == 9)
      {
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v59 = sub_1D725BD1C();
        v60 = __swift_project_value_buffer(v59, qword_1EDFFCE80);
        v52 = v82;
        (*(*(v59 - 8) + 16))(v82, v60, v59);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = 9;
      }

      else
      {
        if (qword_1EDF31F40 != -1)
        {
          swift_once();
        }

        v75 = sub_1D725BD1C();
        v76 = __swift_project_value_buffer(v75, qword_1EDFFCE50);
        v52 = v83;
        (*(*(v75 - 8) + 16))(v83, v76, v75);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = 10;
      }
    }

    else if (v45 == 5)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v65 = sub_1D725BD1C();
      v66 = __swift_project_value_buffer(v65, qword_1EDFFCE80);
      v52 = v78;
      (*(*(v65 - 8) + 16))(v78, v66, v65);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = 5;
    }

    else if (v45 == 6)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v50 = sub_1D725BD1C();
      v51 = __swift_project_value_buffer(v50, qword_1EDFFCE80);
      v52 = v79;
      (*(*(v50 - 8) + 16))(v79, v51, v50);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = 6;
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v73 = sub_1D725BD1C();
      v74 = __swift_project_value_buffer(v73, qword_1EDFFCE80);
      v52 = v80;
      (*(*(v73 - 8) + 16))(v80, v74, v73);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = 7;
    }

LABEL_44:
    v57 = v85;
    sub_1D641A434(v53, v52);
    v58 = v52;
    goto LABEL_45;
  }

  v54 = v40;
  v52 = v84;
  if (v45 <= 1)
  {
    if (v45)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCE80);
      (*(*(v71 - 8) + 16))(v36, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = v85;
      sub_1D641A434(1, v36);
      v58 = v36;
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v61 = sub_1D725BD1C();
      v62 = __swift_project_value_buffer(v61, qword_1EDFFCE80);
      (*(*(v61 - 8) + 16))(v54, v62, v61);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = v85;
      sub_1D641A434(0, v54);
      v58 = v54;
    }
  }

  else if (v45 == 2)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v63 = sub_1D725BD1C();
    v64 = __swift_project_value_buffer(v63, qword_1EDFFCE80);
    (*(*(v63 - 8) + 16))(v32, v64, v63);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v57 = v85;
    sub_1D641A434(2, v32);
    v58 = v32;
  }

  else
  {
    if (v45 != 3)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v69 = sub_1D725BD1C();
      v70 = __swift_project_value_buffer(v69, qword_1EDFFCE80);
      (*(*(v69 - 8) + 16))(v52, v70, v69);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = 4;
      goto LABEL_44;
    }

    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v55 = sub_1D725BD1C();
    v56 = __swift_project_value_buffer(v55, qword_1EDFFCE80);
    (*(*(v55 - 8) + 16))(v28, v56, v55);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v57 = v85;
    sub_1D641A434(3, v28);
    v58 = v28;
  }

LABEL_45:
  sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v57, sub_1D5D30DC4);
}

uint64_t FormatPuzzleTypeBinding.Color.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
  if (!v2)
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
          *(v22 + 16) = &unk_1F5116C80;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B1094();
    v28 = 0uLL;
    sub_1D726431C();
    if (v29 > 2u)
    {
      if (v29 == 3)
      {
        (*(v11 + 8))(v15, v5);
        v24 = 2;
        v25 = 3;
      }

      else
      {
        v28 = xmmword_1D7279980;
        if (v29 == 4)
        {
          sub_1D66B10E8();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v24 = 0;
          v25 = v29;
        }

        else
        {
          sub_1D66B10E8();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v25 = v29;
          v24 = 1;
        }
      }

      goto LABEL_22;
    }

    if (v29)
    {
      if (v29 == 1)
      {
        (*(v11 + 8))(v15, v5);
        v24 = 2;
        v25 = 1;
LABEL_22:
        *v12 = v25;
        *(v12 + 8) = v24;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      (*(v11 + 8))(v15, v5);
      v25 = 2;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v25 = 0;
    }

    v24 = 2;
    goto LABEL_22;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPuzzleTypeBinding.Color.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v53 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v52 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v52 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v52 - v24;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *v2;
  v30 = *(v2 + 8);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v33 = sub_1D5C30408();
  v55 = v29;
  sub_1D5D2EE70(&type metadata for FormatPuzzleTypeBinding.Color, &type metadata for FormatCodingKeys, v34, v31, &type metadata for FormatPuzzleTypeBinding.Color, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v32, v29, v33, &off_1F51F6CF8);
  if (v30)
  {
    if (v30 == 1)
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE68);
      (*(*(v35 - 8) + 16))(v7, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v55;
      sub_1D6393B78(5, v54, v7);
      v38 = v7;
      goto LABEL_26;
    }

    if (v54 > 1)
    {
      v37 = v55;
      if (v54 == 2)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v45 = sub_1D725BD1C();
        v46 = __swift_project_value_buffer(v45, qword_1EDFFCCA8);
        v25 = v52;
        (*(*(v45 - 8) + 16))(v52, v46, v45);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v43 = 2;
      }

      else
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v49 = sub_1D725BD1C();
        v50 = __swift_project_value_buffer(v49, qword_1EDFFCCA8);
        v25 = v53;
        (*(*(v49 - 8) + 16))(v53, v50, v49);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v43 = 3;
      }

      v44 = v25;
      goto LABEL_25;
    }

    if (!v54)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCCA8);
      (*(*(v41 - 8) + 16))(v25, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v43 = 0;
      v44 = v25;
      v37 = v55;
LABEL_25:
      sub_1D641C67C(v43, v44);
      v38 = v25;
      goto LABEL_26;
    }

    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v47 = sub_1D725BD1C();
    v48 = __swift_project_value_buffer(v47, qword_1EDFFCCA8);
    (*(*(v47 - 8) + 16))(v21, v48, v47);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v37 = v55;
    sub_1D641C67C(1, v21);
    v38 = v21;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCE80);
    (*(*(v39 - 8) + 16))(v11, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v37 = v55;
    sub_1D6393B78(4, v54, v11);
    v38 = v11;
  }

LABEL_26:
  sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v37, sub_1D5D30DC4);
}

uint64_t FormatPuzzleTypeBinding.Image.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPuzzleTypeBinding.Image, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatPuzzleTypeBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v11, v9, v12, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCCA8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641C538(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t sub_1D6563538()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D65635AC()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t FormatPuzzleTypeBinding.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = v7;
    v12 = v26;
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
          *(v21 + 16) = &unk_1F5116D20;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B1190();
    v27 = 0uLL;
    sub_1D726431C();
    if (v28)
    {
      if (v28 == 1)
      {
        v27 = xmmword_1D7279980;
        sub_1D66B10E8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v23 = 0;
        v24 = v28;
LABEL_17:
        *v12 = v24;
        *(v12 + 8) = v23;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      (*(v11 + 8))(v10, v6);
      v24 = 1;
    }

    else
    {
      (*(v11 + 8))(v10, v6);
      v24 = 0;
    }

    v23 = 1;
    goto LABEL_17;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPuzzleTypeBinding.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = *(v1 + 8);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPuzzleTypeBinding.Text, &type metadata for FormatCodingKeys, v24, v21, &type metadata for FormatPuzzleTypeBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v22, v18, v23, &off_1F51F6CF8);
  if (v20 == 1)
  {
    if (v19)
    {
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCE50);
      (*(*(v25 - 8) + 16))(v6, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641C7D0(2, v6);
      v27 = v6;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCCA8);
      (*(*(v30 - 8) + 16))(v14, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641C7D0(0, v14);
      v27 = v14;
    }
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCE80);
    (*(*(v28 - 8) + 16))(v10, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6393D0C(1, v19, v10);
    v27 = v10;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6563E5C(uint64_t a1)
{
  v2 = sub_1D5C6BBEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6563E98(uint64_t a1)
{
  v2 = sub_1D5C6BBEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRGBAColor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D66B11E4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B1278();
  sub_1D5B58B84(&qword_1EDF0C3B0, sub_1D66B1278);
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

  v13 = v28;
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

      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D66219DC();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B57870();
  v31 = 0uLL;
  v32 = 0;
  sub_1D726431C();
  v17 = v29;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  sub_1D726431C();
  v18 = v29;
  v31 = xmmword_1D7297410;
  v32 = 0;
  sub_1D726431C();
  v19 = v29;
  v31 = xmmword_1D72BAA60;
  v32 = 0;
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v25 = v29;
  v26 = v30;
  *v13 = v17;
  *(v13 + 8) = v18;
  *(v13 + 16) = v19;
  *(v13 + 24) = v25;
  *(v13 + 32) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRGBAColor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v116 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v117 = &v112 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v124 = &v112 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v112 - v14;
  sub_1D66B13F8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v115 = *(v1 + 32);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D66B1278();
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EDF0C3B0, sub_1D66B1278);
  sub_1D5D2EE70(&type metadata for FormatRGBAColor, v28, v30, v25, &type metadata for FormatRGBAColor, v28, &type metadata for FormatVersions.JazzkonC, v26, v20, v29, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v121 = v32;
  v122 = v31;
  v120 = v34;
  v119 = v33 + 16;
  (v34)(v15);
  v118 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v134 = v22;
  v132 = 0uLL;
  v133 = 0;
  v35 = &v20[*(v17 + 44)];
  v36 = *v35;
  v37 = *(v35 + 1);
  v131 = 0;
  v38 = swift_allocObject();
  v129 = &v112;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v131;
  *(v38 + 40) = v36;
  *(v38 + 48) = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v128 = v15;
  *(&v112 - 4) = sub_1D5B4AA6C;
  *(&v112 - 3) = 0;
  v110 = sub_1D6708B40;
  v111 = v40;
  v131 = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v131;
  v123 = v36;
  *(v41 + 40) = v36;
  *(v41 + 48) = v37;
  sub_1D66B148C();
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF02A48, sub_1D66B148C);
  swift_retain_n();
  v125 = v44;
  v126 = v43;
  v45 = sub_1D72647CC();
  v131 = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v131;
  v47 = &v20[*(v17 + 36)];
  v127 = v20;
  v48 = __swift_project_boxed_opaque_existential_1(v47, *(v47 + 3));
  MEMORY[0x1EEE9AC00](v48, v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  *(&v112 - 4) = sub_1D615B4A4;
  *(&v112 - 3) = (&v112 - 6);
  v110 = sub_1D6708B40;
  v111 = v41;
  v52 = v128;
  v53 = v130;
  sub_1D5D2BC70(v128, sub_1D615B49C, v54, sub_1D615B4A4, (&v112 - 6));
  if (!v53)
  {
    v55 = v52;
    v113 = v47;
    v114 = v37;

    v56 = sub_1D5B578C4();
    v57 = v127;
    sub_1D72647EC();
    v112 = v56;
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v60 = v124;
    v120(v124, v121, v122);
    swift_storeEnumTagMultiPayload();
    v134 = v21;
    v130 = xmmword_1D728CF30;
    v132 = xmmword_1D728CF30;
    v133 = 0;
    v131 = 0;
    v61 = swift_allocObject();
    v128 = &v112;
    *(v61 + 16) = v130;
    *(v61 + 32) = v131;
    v62 = v123;
    v63 = v114;
    *(v61 + 40) = v123;
    *(v61 + 48) = v63;
    MEMORY[0x1EEE9AC00](v61, v64);
    v129 = 0;
    *(&v112 - 4) = sub_1D5B4AA6C;
    *(&v112 - 3) = 0;
    v110 = sub_1D6708B40;
    v111 = v65;
    v131 = 0;
    v66 = v57;
    v67 = swift_allocObject();
    *(v67 + 16) = v130;
    *(v67 + 32) = v131;
    *(v67 + 40) = v62;
    *(v67 + 48) = v63;
    swift_retain_n();
    v68 = sub_1D72647CC();
    v131 = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v130;
    *(v69 + 40) = v131;
    v70 = __swift_project_boxed_opaque_existential_1(v113, *(v113 + 3));
    MEMORY[0x1EEE9AC00](v70, v71);
    MEMORY[0x1EEE9AC00](v72, v73);
    *(&v112 - 4) = sub_1D615B4A4;
    *(&v112 - 3) = (&v112 - 6);
    v110 = sub_1D6708B40;
    v111 = v67;
    v74 = v129;
    sub_1D5D2BC70(v60, sub_1D615B49C, v75, sub_1D615B4A4, (&v112 - 6));
    if (v74)
    {
      sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);

      v58 = v66;
      return sub_1D5D2CFE8(v58, sub_1D66B13F8);
    }

    sub_1D72647EC();
    sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);

    v76 = v117;
    v120(v117, v121, v122);
    swift_storeEnumTagMultiPayload();
    v134 = v24;
    v130 = xmmword_1D7297410;
    v132 = xmmword_1D7297410;
    v133 = 0;
    v131 = 0;
    v77 = swift_allocObject();
    v128 = &v112;
    *(v77 + 16) = v130;
    *(v77 + 32) = v131;
    v78 = v123;
    v79 = v114;
    *(v77 + 40) = v123;
    *(v77 + 48) = v79;
    MEMORY[0x1EEE9AC00](v77, v80);
    v129 = 0;
    *(&v112 - 4) = sub_1D5B4AA6C;
    *(&v112 - 3) = 0;
    v110 = sub_1D6708B40;
    v111 = v81;
    v131 = 0;
    v82 = swift_allocObject();
    *(v82 + 16) = v130;
    *(v82 + 32) = v131;
    *(v82 + 40) = v78;
    *(v82 + 48) = v79;
    swift_retain_n();
    v83 = sub_1D72647CC();
    v131 = 0;
    v84 = swift_allocObject();
    *(v84 + 16) = v83;
    *(v84 + 24) = v130;
    *(v84 + 40) = v131;
    v85 = __swift_project_boxed_opaque_existential_1(v113, *(v113 + 3));
    MEMORY[0x1EEE9AC00](v85, v86);
    MEMORY[0x1EEE9AC00](v87, v88);
    *(&v112 - 4) = sub_1D615B4A4;
    *(&v112 - 3) = (&v112 - 6);
    v110 = sub_1D6708B40;
    v111 = v82;
    v89 = v129;
    sub_1D5D2BC70(v76, sub_1D615B49C, v90, sub_1D615B4A4, (&v112 - 6));
    if (v89)
    {
      v91 = v66;
      v92 = v76;
LABEL_11:
      sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

LABEL_15:
      v58 = v91;
      return sub_1D5D2CFE8(v58, sub_1D66B13F8);
    }

    v91 = v66;
    sub_1D72647EC();
    sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);

    v93 = v116;
    v120(v116, v121, v122);
    swift_storeEnumTagMultiPayload();
    v130 = xmmword_1D72BAA60;
    v132 = xmmword_1D72BAA60;
    v133 = 0;
    LOBYTE(v134) = 0;
    v94 = swift_allocObject();
    v96 = v94;
    *(v94 + 16) = v130;
    *(v94 + 32) = v134;
    v97 = v123;
    v98 = v114;
    *(v94 + 40) = v123;
    *(v94 + 48) = v98;
    if (v115)
    {
    }

    else
    {
      v128 = &v112;
      v134 = v23;
      MEMORY[0x1EEE9AC00](v94, v95);
      v129 = 0;
      *(&v112 - 4) = sub_1D5B4AA6C;
      *(&v112 - 3) = 0;
      v110 = sub_1D6708B40;
      v111 = v96;
      v131 = 0;
      v99 = swift_allocObject();
      *(v99 + 16) = v130;
      *(v99 + 32) = v131;
      *(v99 + 40) = v97;
      *(v99 + 48) = v98;
      swift_retain_n();
      v100 = sub_1D72647CC();
      v131 = 0;
      v101 = swift_allocObject();
      *(v101 + 16) = v100;
      *(v101 + 24) = v130;
      *(v101 + 40) = v131;
      v102 = __swift_project_boxed_opaque_existential_1(v113, *(v113 + 3));
      MEMORY[0x1EEE9AC00](v102, v103);
      MEMORY[0x1EEE9AC00](v104, v105);
      *(&v112 - 4) = sub_1D615B4A4;
      *(&v112 - 3) = (&v112 - 6);
      v110 = sub_1D66B1520;
      v111 = v99;
      v106 = v129;
      v108 = sub_1D5D2F7A4(v93, sub_1D615B49C, v107, sub_1D615B4A4, (&v112 - 6));
      if (v106)
      {
        v92 = v93;
        goto LABEL_11;
      }

      v109 = v108;

      if (v109)
      {
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);

    goto LABEL_15;
  }

  sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

  v58 = v127;
  return sub_1D5D2CFE8(v58, sub_1D66B13F8);
}

uint64_t sub_1D65652B8()
{
  v1 = *v0;
  v2 = 6579570;
  v3 = 1702194274;
  v4 = 0x6168706C61;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E65657267;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6565334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B2E20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D656536C(uint64_t a1)
{
  v2 = sub_1D66B1350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65653A8(uint64_t a1)
{
  v2 = sub_1D66B1350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRadialGradient.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  sub_1D66B159C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B1630();
  sub_1D5B58B84(&qword_1EDF25388, sub_1D66B1630);
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

  v13 = v10;
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

      v22 = *(v16 - 2);
      v21 = *(v16 - 1);

      v23 = sub_1D6621BA4();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v13, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D66B17B0();
  v37 = 0uLL;
  v38 = 0;
  sub_1D726431C();
  v17 = v39;
  v33 = v41;
  v34 = v40;
  v18 = v42;
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D726431C();
  v19 = v39;
  v31 = v41;
  v32 = v40;
  v20 = v42;
  sub_1D5C34D84(0, &qword_1EDF1B418, &type metadata for FormatColor, MEMORY[0x1E69E62F8]);
  v39 = xmmword_1D7297410;
  LOBYTE(v40) = 0;
  sub_1D5C4CBCC();
  sub_1D726431C();
  v30 = v37;
  sub_1D5C34D84(0, &qword_1EDF1B5E0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
  v39 = xmmword_1D72BAA60;
  LOBYTE(v40) = 0;
  sub_1D66B1804();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v26 = v37;
  LOBYTE(v43[0]) = v18;
  LOBYTE(v36[0]) = v20;
  v27 = v35;
  *v35 = v17;
  v28 = v33;
  v27[1] = v34;
  v27[2] = v28;
  *(v27 + 48) = v18;
  *(v27 + 49) = v43[0];
  *(v27 + 13) = *(v43 + 3);
  *(v27 + 56) = v19;
  *(v27 + 88) = v31;
  *(v27 + 72) = v32;
  *(v27 + 104) = v20;
  *(v27 + 105) = v36[0];
  *(v27 + 27) = *(v36 + 3);
  *(v27 + 14) = v30;
  *(v27 + 15) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRadialGradient.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v118 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v120 = &v114 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v124 = (&v114 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v114 - v14;
  sub_1D66B18A0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v22 = v1[1];
  v23 = *(v1 + 1);
  v132 = *(v1 + 2);
  v133 = v23;
  v24 = *(v1 + 48);
  v25 = v1[7];
  v26 = v1[8];
  v122 = *(v1 + 11);
  v123 = *(v1 + 9);
  v142 = *(v1 + 104);
  v27 = v1[15];
  v119 = v1[14];
  v117 = v27;
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1D66B1630();
  v31 = v30;
  v32 = sub_1D5B58B84(&qword_1EDF25388, sub_1D66B1630);
  sub_1D5D2EE70(&type metadata for FormatRadialGradient, v31, v33, v28, &type metadata for FormatRadialGradient, v31, &type metadata for FormatVersions.JazzkonG, v29, v20, v32, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v34 = sub_1D725BD1C();
  v35 = __swift_project_value_buffer(v34, qword_1EDFFCD18);
  v36 = *(v34 - 8);
  v37 = *(v36 + 16);
  v121 = v35;
  v128 = v34;
  v127 = v37;
  v126 = v36 + 16;
  v37(v15);
  v125 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v137 = v21;
  *(&v137 + 1) = v22;
  v138 = v133;
  v139 = v132;
  v140 = v24;
  v135 = 0uLL;
  v136 = 0;
  v38 = &v20[*(v17 + 44)];
  v40 = *v38;
  v39 = *(v38 + 1);
  v141 = 0;
  v41 = swift_allocObject();
  *&v133 = &v114;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v141;
  *(v41 + 40) = v40;
  *(v41 + 48) = v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v114 - 4) = sub_1D5B4AA6C;
  *(&v114 - 3) = 0;
  v112 = sub_1D6708B44;
  v113 = v43;
  v141 = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v141;
  v129 = v40;
  *(v44 + 40) = v40;
  *(v44 + 48) = v39;
  sub_1D66B1934();
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EC887168, sub_1D66B1934);
  swift_retain_n();
  v131 = v46;
  v130 = v47;
  v48 = sub_1D72647CC();
  v141 = 0;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v48;
  *(v49 + 40) = v141;
  v50 = *(v17 + 36);
  v51 = v15;
  v52 = &v20[v50];
  *&v132 = v20;
  v53 = __swift_project_boxed_opaque_existential_1(&v20[v50], *&v20[v50 + 24]);
  MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  *(&v114 - 4) = sub_1D615B4A4;
  *(&v114 - 3) = (&v114 - 6);
  v112 = sub_1D6708B44;
  v113 = v44;
  v57 = v134;
  sub_1D5D2BC70(v51, sub_1D615B49C, v58, sub_1D615B4A4, (&v114 - 6));
  if (v57)
  {
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v59 = v132;
  }

  else
  {
    v115 = v52;
    v116 = v39;

    v60 = sub_1D66B19C8();
    v59 = v132;
    sub_1D72647EC();
    v114 = v60;
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v61 = v124;
    (v127)(v124, v121, v128);
    swift_storeEnumTagMultiPayload();
    *&v137 = v25;
    *(&v137 + 1) = v26;
    v138 = v123;
    v139 = v122;
    v140 = v142;
    v134 = xmmword_1D728CF30;
    v135 = xmmword_1D728CF30;
    v136 = 0;
    v141 = 0;
    v62 = swift_allocObject();
    *&v123 = &v114;
    *(v62 + 16) = v134;
    *(v62 + 32) = v141;
    v63 = v129;
    v64 = v116;
    *(v62 + 40) = v129;
    *(v62 + 48) = v64;
    MEMORY[0x1EEE9AC00](v62, v65);
    *&v133 = 0;
    *(&v114 - 4) = sub_1D5B4AA6C;
    *(&v114 - 3) = 0;
    v112 = sub_1D6708B44;
    v113 = v66;
    v141 = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = v134;
    *(v67 + 32) = v141;
    *(v67 + 40) = v63;
    *(v67 + 48) = v64;
    v68 = v61;
    swift_retain_n();
    v69 = sub_1D72647CC();
    v141 = 0;
    v70 = swift_allocObject();
    *(v70 + 16) = v69;
    *(v70 + 24) = v134;
    *(v70 + 40) = v141;
    v71 = __swift_project_boxed_opaque_existential_1(v115, *(v115 + 3));
    MEMORY[0x1EEE9AC00](v71, v72);
    MEMORY[0x1EEE9AC00](v73, v74);
    *(&v114 - 4) = sub_1D615B4A4;
    *(&v114 - 3) = (&v114 - 6);
    v112 = sub_1D6708B44;
    v113 = v67;
    v75 = v133;
    sub_1D5D2BC70(v61, sub_1D615B49C, v76, sub_1D615B4A4, (&v114 - 6));
    if (v75)
    {
      goto LABEL_6;
    }

    sub_1D72647EC();
    *&v133 = 0;
    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v78 = __swift_project_value_buffer(v128, qword_1EDFFCCE8);
    v68 = v120;
    *&v123 = v78;
    v127(v120);
    swift_storeEnumTagMultiPayload();
    *&v135 = v119;
    v134 = xmmword_1D7297410;
    v137 = xmmword_1D7297410;
    LOBYTE(v138) = 0;
    v141 = 0;
    v79 = swift_allocObject();
    v124 = &v114;
    *(v79 + 16) = v134;
    *(v79 + 32) = v141;
    v80 = v129;
    v81 = v116;
    *(v79 + 40) = v129;
    *(v79 + 48) = v81;
    MEMORY[0x1EEE9AC00](v79, v82);
    *(&v114 - 4) = sub_1D5B4AA6C;
    *(&v114 - 3) = 0;
    v112 = sub_1D6708B44;
    v113 = v83;
    v141 = 0;
    v84 = swift_allocObject();
    *(v84 + 16) = v134;
    *(v84 + 32) = v141;
    *(v84 + 40) = v80;
    *(v84 + 48) = v81;
    swift_retain_n();
    v85 = sub_1D72647CC();
    v141 = 0;
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    *(v86 + 24) = v134;
    *(v86 + 40) = v141;
    v87 = __swift_project_boxed_opaque_existential_1(v115, *(v115 + 3));
    MEMORY[0x1EEE9AC00](v87, v88);
    MEMORY[0x1EEE9AC00](v89, v90);
    *(&v114 - 4) = sub_1D615B4A4;
    *(&v114 - 3) = (&v114 - 6);
    v112 = sub_1D6708B44;
    v113 = v84;
    v91 = v133;
    sub_1D5D2BC70(v68, sub_1D615B49C, v92, sub_1D615B4A4, (&v114 - 6));
    if (v91)
    {
LABEL_6:
      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v93 = v123;

      sub_1D5C34D84(0, &qword_1EDF1B418, &type metadata for FormatColor, MEMORY[0x1E69E62F8]);
      sub_1D668E990();
      sub_1D72647EC();
      sub_1D5D2CFE8(v120, type metadata accessor for FormatVersionRequirement);

      v94 = v118;
      (v127)(v118, v93, v128);
      swift_storeEnumTagMultiPayload();
      v134 = xmmword_1D72BAA60;
      v137 = xmmword_1D72BAA60;
      LOBYTE(v138) = 0;
      LOBYTE(v135) = 0;
      v95 = swift_allocObject();
      v97 = v95;
      *(v95 + 16) = v134;
      *(v95 + 32) = v135;
      v98 = v129;
      v99 = v116;
      *(v95 + 40) = v129;
      *(v95 + 48) = v99;
      if (v117)
      {
        v128 = &v114;
        *&v135 = v117;
        MEMORY[0x1EEE9AC00](v95, v96);
        *&v133 = 0;
        *(&v114 - 4) = sub_1D5B4AA6C;
        *(&v114 - 3) = 0;
        v112 = sub_1D6708B44;
        v113 = v97;
        v141 = 0;
        v100 = swift_allocObject();
        *(v100 + 16) = v134;
        *(v100 + 32) = v141;
        *(v100 + 40) = v98;
        *(v100 + 48) = v99;
        swift_retain_n();

        v101 = sub_1D72647CC();
        v141 = 0;
        v102 = swift_allocObject();
        *(v102 + 16) = v101;
        *(v102 + 24) = v134;
        *(v102 + 40) = v141;
        v103 = __swift_project_boxed_opaque_existential_1(v115, *(v115 + 3));
        MEMORY[0x1EEE9AC00](v103, v104);
        MEMORY[0x1EEE9AC00](v105, v106);
        *(&v114 - 4) = sub_1D615B4A4;
        *(&v114 - 3) = (&v114 - 6);
        v107 = v118;
        v112 = sub_1D66B1A1C;
        v113 = v100;
        v108 = v133;
        v110 = sub_1D5D2F7A4(v118, sub_1D615B49C, v109, sub_1D615B4A4, (&v114 - 6));
        if (v108)
        {
        }

        else
        {
          v111 = v110;

          if (v111)
          {
            sub_1D5C34D84(0, &qword_1EDF1B5E0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
            sub_1D66B1A98();
            sub_1D72647EC();
          }
        }

        sub_1D5D2CFE8(v107, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
      }
    }
  }

  return sub_1D5D2CFE8(v59, sub_1D66B18A0);
}

uint64_t sub_1D65669C4()
{
  v1 = *v0;
  v2 = 1836020326;
  v3 = 0x73726F6C6F63;
  v4 = 0x6E6F697461636F6CLL;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 28532;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6566A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B2FC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6566A7C(uint64_t a1)
{
  v2 = sub_1D66B1708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6566AB8(uint64_t a1)
{
  v2 = sub_1D66B1708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRadialGradientCircle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D66B1B34();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B1BC8();
  sub_1D5B58B84(&qword_1EDF24FC8, sub_1D66B1BC8);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v32;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D6627E68(0x7265746E6563, 0xE600000000000000, 0x737569646172, 0xE600000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C7B870();
  v29 = 0uLL;
  LOBYTE(v30) = 0;
  sub_1D726431C();
  v18 = v27;
  v27 = xmmword_1D728CF30;
  v28 = 0;
  sub_1D61F9CE0();
  sub_1D726431C();
  (*(v11 + 8))(v10, v6);
  v24 = v31;
  v25 = v29;
  v26 = v30;
  *v14 = v18;
  *(v14 + 16) = v25;
  *(v14 + 32) = v26;
  *(v14 + 48) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRadialGradientCircle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  sub_1D66B1D48();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v17 = *(v1 + 1);
  v74 = *(v1 + 2);
  v75 = v17;
  v89 = *(v1 + 48);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D66B1BC8();
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EDF24FC8, sub_1D66B1BC8);
  sub_1D5D2EE70(&type metadata for FormatRadialGradientCircle, v21, v23, v18, &type metadata for FormatRadialGradientCircle, v21, &type metadata for FormatVersions.JazzkonG, v19, v14, v22, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD18);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v72 = v25;
  v77 = v24;
  v71 = v27;
  v70 = v26 + 16;
  (v27)(v9);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v83 = v15;
  *(&v83 + 1) = v16;
  v85 = 0uLL;
  LOBYTE(v86) = 0;
  v28 = &v14[*(v11 + 44)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v88 = 0;
  v31 = swift_allocObject();
  v80 = &v66;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v88;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v81 = v9;
  *(&v66 - 4) = sub_1D5B4AA6C;
  *(&v66 - 3) = 0;
  v64 = sub_1D6708B48;
  v65 = v33;
  v88 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v88;
  v73 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D66B1DDC();
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EC887180, sub_1D66B1DDC);
  swift_retain_n();
  v78 = v37;
  v79 = v36;
  v38 = sub_1D72647CC();
  v88 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v88;
  v40 = &v14[*(v11 + 36)];
  v41 = __swift_project_boxed_opaque_existential_1(v40, *(v40 + 3));
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v66 - 4) = sub_1D615B4A4;
  *(&v66 - 3) = (&v66 - 6);
  v46 = v81;
  v45 = v82;
  v64 = sub_1D66B1E70;
  v65 = v34;
  sub_1D5D2BC70(v81, sub_1D615B49C, v47, sub_1D615B4A4, (&v66 - 6));
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v67 = v40;
    v48 = v77;
    v68 = v30;

    sub_1D5F5A70C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v50 = v76;
    v71(v76, v72, v48);
    swift_storeEnumTagMultiPayload();
    v85 = v75;
    v86 = v74;
    v87 = v89;
    v82 = xmmword_1D728CF30;
    v83 = xmmword_1D728CF30;
    v84 = 0;
    v88 = 0;
    v51 = swift_allocObject();
    v81 = &v66;
    *(v51 + 16) = v82;
    *(v51 + 32) = v88;
    v52 = v73;
    v53 = v68;
    *(v51 + 40) = v73;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v66 - 4) = sub_1D5B4AA6C;
    *(&v66 - 3) = 0;
    v64 = sub_1D6708B48;
    v65 = v55;
    v88 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v82;
    *(v56 + 32) = v88;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v88 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v82;
    *(v58 + 40) = v88;
    v59 = __swift_project_boxed_opaque_existential_1(v67, *(v67 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v66 - 4) = sub_1D615B4A4;
    *(&v66 - 3) = (&v66 - 6);
    v64 = sub_1D6708B48;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D61F9D34();
    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66B1D48);
}

uint64_t sub_1D6567718()
{
  v1 = 0x737569646172;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746E6563;
  }
}

uint64_t sub_1D6567764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B3174(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D656779C(uint64_t a1)
{
  v2 = sub_1D66B1CA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65677D8(uint64_t a1)
{
  v2 = sub_1D66B1CA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6567814(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F69746365726964;
  }

  else
  {
    v3 = 0x737569646172;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v5 = 0x6F69746365726964;
  }

  else
  {
    v5 = 0x737569646172;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006ELL;
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
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D65678BC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6567940()
{
  sub_1D72621EC();
}

uint64_t sub_1D65679B0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6567A3C(uint64_t *a1@<X8>)
{
  v2 = 0x737569646172;
  if (*v1)
  {
    v2 = 0x6F69746365726964;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6567B2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F427265776F6CLL && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F427265707075 && a2 == 0xEA0000000000646ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6567C54(char a1)
{
  if (!a1)
  {
    return 0x756F427265776F6CLL;
  }

  if (a1 == 1)
  {
    return 0x756F427265707075;
  }

  return 1885433183;
}

uint64_t sub_1D6567D4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6567DA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatRatio.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = *(v1 + 8);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatRatio, &type metadata for FormatCodingKeys, v24, v21, &type metadata for FormatRatio, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v22, v18, v23, &off_1F51F6C78);
  if (v20)
  {
    if (v20 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
      (*(*(v25 - 8) + 16))(v10, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63BC944(1, v19, v10);
      v27 = v10;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
      (*(*(v30 - 8) + 16))(v6, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63BC944(2, v19, v6);
      v27 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
    (*(*(v28 - 8) + 16))(v14, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63BC944(0, v19, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D65681E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746867696568;
  if (v2 != 1)
  {
    v3 = 0x746365707361;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6874646977;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x746867696568;
  if (*a2 != 1)
  {
    v6 = 0x746365707361;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6874646977;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D65682D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6568370()
{
  sub_1D72621EC();
}

uint64_t sub_1D65683F4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6568488(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696568;
  if (v2 != 1)
  {
    v4 = 0x746365707361;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6874646977;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t FormatRecipeBinding.Bool.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatRecipeBinding.Bool, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatRecipeBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v25, v22, v26, &off_1F51F6C98);
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
      sub_1D6420F08(2, v10);
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
      sub_1D6420F08(3, v6);
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
    sub_1D6420F08(1, v14);
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
    sub_1D6420F08(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t FormatRecipeBinding.Command.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatRecipeBinding.Command, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatRecipeBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v17, v14, v18, &off_1F51F6C98);
  if (v15)
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCC90);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64209B8(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE38);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64209B8(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatRecipeBinding.DateTime.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatRecipeBinding.DateTime, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatRecipeBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v21, v18, v22, &off_1F51F6C98);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCE38);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6420864(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCE38);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6420864(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCE38);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6420864(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatRecipeBinding.Image.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatRecipeBinding.Image, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatRecipeBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v17, v14, v18, &off_1F51F6C98);
  if (v15)
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE38);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6420B0C(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE38);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6420B0C(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatRecipeBinding.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (!v2)
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
          *(v22 + 16) = &unk_1F5116F00;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B203C();
    v29 = 0uLL;
    sub_1D726431C();
    if (v28 <= 3u)
    {
      if (v28 > 1u)
      {
        if (v28 == 2)
        {
          (*(v11 + 8))(v15, v5);
          v24 = 0;
          v25 = 0uLL;
          v26 = 5;
        }

        else
        {
          (*(v11 + 8))(v15, v5);
          v24 = 0;
          v25 = 0uLL;
          v26 = 6;
        }
      }

      else if (v28)
      {
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0uLL;
        v26 = 4;
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0uLL;
        v26 = 3;
      }
    }

    else if (v28 <= 5u)
    {
      if (v28 == 4)
      {
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0uLL;
        v26 = 7;
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0uLL;
        v26 = 8;
      }
    }

    else if (v28 == 6)
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0;
      v25 = 0uLL;
      v26 = 9;
    }

    else if (v28 == 7)
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0;
      v25 = 0uLL;
      v26 = 10;
    }

    else
    {
      v28 = xmmword_1D7279980;
      sub_1D5CCD298();
      sub_1D726427C();
      (*(v11 + 8))(v15, v5);
      v26 = v30;
      if (v30 != 3)
      {
        v24 = v32;
        v27 = v31;
        v25 = v29;
        goto LABEL_30;
      }

      v24 = 0;
      v25 = 0uLL;
      v26 = 1;
    }

    v27 = 0uLL;
LABEL_30:
    *v12 = v25;
    *(v12 + 16) = v26;
    *(v12 + 24) = v27;
    *(v12 + 40) = v24;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRecipeBinding.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v73 = &v68 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v72 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v71 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v68 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v68 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v68 - v33;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = &v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v1 + 16);
  v70 = *v1;
  v75 = v39;
  v40 = *(v1 + 32);
  v68 = *(v1 + 40);
  v69 = v40;
  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  v43 = sub_1D5C30408();
  v79 = v38;
  sub_1D5D2EE70(&type metadata for FormatRecipeBinding.Text, &type metadata for FormatCodingKeys, v44, v41, &type metadata for FormatRecipeBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v42, v38, v43, &off_1F51F6C98);
  if (v75 > 6)
  {
    if (v75 > 8)
    {
      if (v75 == 9)
      {
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v64 = sub_1D725BD1C();
        v65 = __swift_project_value_buffer(v64, qword_1EDFFCE38);
        v18 = v72;
        (*(*(v64 - 8) + 16))(v72, v65, v64);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v51 = 6;
      }

      else
      {
        if (v75 != 10)
        {
          goto LABEL_35;
        }

        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v56 = sub_1D725BD1C();
        v57 = __swift_project_value_buffer(v56, qword_1EDFFCE38);
        v18 = v73;
        (*(*(v56 - 8) + 16))(v73, v57, v56);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v51 = 7;
      }
    }

    else if (v75 == 7)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v60 = sub_1D725BD1C();
      v61 = __swift_project_value_buffer(v60, qword_1EDFFCE38);
      (*(*(v60 - 8) + 16))(v18, v61, v60);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 4;
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCE38);
      v18 = v71;
      (*(*(v49 - 8) + 16))(v71, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 5;
    }

    v54 = v79;
    sub_1D6420DB4(v51, v18);
    v55 = v18;
LABEL_39:
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v54, sub_1D5D30DC4);
  }

  if (v75 > 4)
  {
    if (v75 != 5)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v52 = sub_1D725BD1C();
      v53 = __swift_project_value_buffer(v52, qword_1EDFFCE38);
      (*(*(v52 - 8) + 16))(v22, v53, v52);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v54 = v79;
      sub_1D6420DB4(3, v22);
      v55 = v22;
      goto LABEL_39;
    }

    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v62 = sub_1D725BD1C();
    v63 = __swift_project_value_buffer(v62, qword_1EDFFCE38);
    (*(*(v62 - 8) + 16))(v26, v63, v62);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v54 = v79;
    sub_1D6420DB4(2, v26);
    goto LABEL_38;
  }

  if (v75 == 3)
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v58 = sub_1D725BD1C();
    v59 = __swift_project_value_buffer(v58, qword_1EDFFCE38);
    (*(*(v58 - 8) + 16))(v34, v59, v58);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v54 = v79;
    sub_1D6420DB4(0, v34);
    v55 = v34;
    goto LABEL_39;
  }

  if (v75 != 4)
  {
LABEL_35:
    v76[0] = v70;
    v76[1] = v75;
    v77 = v69;
    v78 = v68;
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v66 = sub_1D725BD1C();
    v67 = __swift_project_value_buffer(v66, qword_1EDFFCE38);
    v26 = v74;
    (*(*(v66 - 8) + 16))(v74, v67, v66);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v54 = v79;
    sub_1D64851F8(8, v76, v26);
LABEL_38:
    v55 = v26;
    goto LABEL_39;
  }

  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCE38);
  (*(*(v45 - 8) + 16))(v30, v46, v45);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v47 = v79;
  sub_1D6420DB4(1, v30);
  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v47, sub_1D5D30DC4);
}

uint64_t sub_1D656A304()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 1702521203;
  v4 = 0x676E696C616373;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7107189;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D656A380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B3284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D656A3B8(uint64_t a1)
{
  v2 = sub_1D66600E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D656A3F4(uint64_t a1)
{
  v2 = sub_1D66600E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRemoteImage.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v319 = v314 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v321 = v314 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v323 = v314 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v325 = v314 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v327 = v314 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v329 = v314 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v331 = v314 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v333 = v314 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v335 = v314 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v337 = v314 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v339 = v314 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v340 = v314 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v342 = v314 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v350 = v314 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = (v314 - v47);
  sub_1D66B2090();
  v50 = v49;
  MEMORY[0x1EEE9AC00](v49, v51);
  v53 = v314 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *v1;
  v343 = v1[1];
  v55 = v1[3];
  v341 = v1[2];
  v338 = v55;
  v56 = v1[5];
  v336 = v1[4];
  v334 = v56;
  v57 = v1[7];
  v332 = v1[6];
  v330 = v57;
  v58 = v1[9];
  v328 = v1[8];
  v326 = v58;
  v59 = v1[11];
  v324 = v1[10];
  v322 = v59;
  v60 = v1[13];
  v320 = v1[12];
  v318 = v60;
  v317 = v1[14];
  v61 = a1[3];
  v62 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v61);
  sub_1D5CA20E8();
  v64 = v63;
  v65 = sub_1D5B58B84(&qword_1EDF3ED68, sub_1D5CA20E8);
  sub_1D5D2EE70(&type metadata for FormatRemoteImage, v64, v66, v61, &type metadata for FormatRemoteImage, v64, &type metadata for FormatVersions.JazzkonC, v62, v53, v65, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v67 = sub_1D725BD1C();
  v68 = __swift_project_value_buffer(v67, qword_1EDFFCD30);
  v69 = *(v67 - 8);
  v70 = *(v69 + 16);
  v345 = v68;
  v346 = v67;
  v344 = v70;
  v348 = v69 + 16;
  (v70)(v48);
  v349 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v359 = v54;
  v357 = 0uLL;
  v358 = 0;
  v71 = &v53[*(v50 + 44)];
  v72 = *v71;
  v73 = *(v71 + 1);
  v356 = 0;
  v74 = swift_allocObject();
  v352 = v314;
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  *(v74 + 32) = v356;
  *(v74 + 40) = v72;
  *(v74 + 48) = v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v353 = v48;
  v314[-4] = sub_1D5B4AA6C;
  v314[-3] = 0;
  v312 = sub_1D6708B4C;
  v313 = v76;
  v356 = 0;
  v77 = swift_allocObject();
  *(v77 + 16) = 0;
  *(v77 + 24) = 0;
  *(v77 + 32) = v356;
  v347 = v72;
  *(v77 + 40) = v72;
  *(v77 + 48) = v73;
  sub_1D66B2124();
  v79 = v78;
  v80 = sub_1D5B58B84(&qword_1EDF03678, sub_1D66B2124);
  swift_retain_n();
  v351[0] = v79;
  v351[1] = v80;
  v81 = sub_1D72647CC();
  v356 = 0;
  v82 = swift_allocObject();
  *(v82 + 24) = 0;
  *(v82 + 32) = 0;
  *(v82 + 16) = v81;
  *(v82 + 40) = v356;
  v83 = &v53[*(v50 + 36)];
  v84 = __swift_project_boxed_opaque_existential_1(v83, *(v83 + 3));
  MEMORY[0x1EEE9AC00](v84, v85);
  MEMORY[0x1EEE9AC00](v86, v87);
  v314[-4] = sub_1D615B4A4;
  v314[-3] = &v314[-6];
  v89 = v353;
  v88 = v354;
  v312 = sub_1D6708B4C;
  v313 = v77;
  sub_1D5D2BC70(v353, sub_1D615B49C, v90, sub_1D615B4A4, &v314[-6]);
  if (v88)
  {
    sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

    v92 = v53;
    return sub_1D5D2CFE8(v92, sub_1D66B2090);
  }

  v315 = v83;
  v316 = v73;

  v91 = sub_1D60B27FC();
  sub_1D72647EC();
  v314[1] = v91;
  sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

  v94 = v350;
  v344(v350, v345, v346);
  swift_storeEnumTagMultiPayload();
  v359 = v343;
  v354 = xmmword_1D728CF30;
  v357 = xmmword_1D728CF30;
  v358 = 0;
  v356 = 0;
  v95 = swift_allocObject();
  v352 = v314;
  *(v95 + 16) = v354;
  *(v95 + 32) = v356;
  v96 = v347;
  v97 = v316;
  *(v95 + 40) = v347;
  *(v95 + 48) = v97;
  MEMORY[0x1EEE9AC00](v95, v98);
  v353 = 0;
  v314[-4] = sub_1D5B4AA6C;
  v314[-3] = 0;
  v312 = sub_1D6708B4C;
  v313 = v99;
  v356 = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = v354;
  *(v100 + 32) = v356;
  *(v100 + 40) = v96;
  *(v100 + 48) = v97;
  swift_retain_n();
  v101 = sub_1D72647CC();
  v356 = 0;
  v102 = swift_allocObject();
  *(v102 + 16) = v101;
  *(v102 + 24) = v354;
  *(v102 + 40) = v356;
  v103 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
  MEMORY[0x1EEE9AC00](v103, v104);
  MEMORY[0x1EEE9AC00](v105, v106);
  v314[-4] = sub_1D615B4A4;
  v314[-3] = &v314[-6];
  v312 = sub_1D6708B4C;
  v313 = v100;
  v107 = v353;
  sub_1D5D2BC70(v94, sub_1D615B49C, v108, sub_1D615B4A4, &v314[-6]);
  if (v107)
  {
    sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);

    v92 = v53;
    return sub_1D5D2CFE8(v92, sub_1D66B2090);
  }

  sub_1D72647EC();
  sub_1D5D2CFE8(v350, type metadata accessor for FormatVersionRequirement);

  v344(v342, v345, v346);
  swift_storeEnumTagMultiPayload();
  v359 = v341;
  v354 = xmmword_1D7297410;
  v357 = xmmword_1D7297410;
  v358 = 0;
  v356 = 0;
  v109 = swift_allocObject();
  v353 = v314;
  *(v109 + 16) = v354;
  *(v109 + 32) = v356;
  v110 = v347;
  v111 = v316;
  *(v109 + 40) = v347;
  *(v109 + 48) = v111;
  MEMORY[0x1EEE9AC00](v109, v112);
  v314[-4] = sub_1D5B4AA6C;
  v314[-3] = 0;
  v312 = sub_1D6708B4C;
  v313 = v113;
  v356 = 0;
  v114 = swift_allocObject();
  *(v114 + 16) = v354;
  *(v114 + 32) = v356;
  *(v114 + 40) = v110;
  *(v114 + 48) = v111;
  swift_retain_n();
  v115 = sub_1D72647CC();
  v356 = 0;
  v116 = swift_allocObject();
  *(v116 + 16) = v115;
  *(v116 + 24) = v354;
  *(v116 + 40) = v356;
  v117 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
  MEMORY[0x1EEE9AC00](v117, v118);
  MEMORY[0x1EEE9AC00](v119, v120);
  v314[-4] = sub_1D615B4A4;
  v314[-3] = &v314[-6];
  v121 = v342;
  v312 = sub_1D6708B4C;
  v313 = v114;
  sub_1D5D2BC70(v342, sub_1D615B49C, v122, sub_1D615B4A4, &v314[-6]);
  v314[0] = v53;

  sub_1D72647EC();
  sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);

  v123 = v340;
  v125 = v345;
  v124 = v346;
  v126 = v344;
  v344(v340, v345, v346);
  swift_storeEnumTagMultiPayload();
  v354 = xmmword_1D72BAA60;
  v357 = xmmword_1D72BAA60;
  v358 = 0;
  LOBYTE(v359) = 0;
  v127 = swift_allocObject();
  v129 = v127;
  *(v127 + 16) = v354;
  *(v127 + 32) = v359;
  v130 = v347;
  v131 = v316;
  *(v127 + 40) = v347;
  *(v127 + 48) = v131;
  if ((~v338 & 0xF000000000000007) != 0)
  {
    v353 = v314;
    v359 = v338;
    MEMORY[0x1EEE9AC00](v127, v128);
    v314[-4] = sub_1D5B4AA6C;
    v314[-3] = 0;
    v312 = sub_1D6708B4C;
    v313 = v129;
    v356 = 0;
    v140 = v139;
    v141 = swift_allocObject();
    *(v141 + 16) = v354;
    *(v141 + 32) = v356;
    *(v141 + 40) = v130;
    *(v141 + 48) = v131;
    swift_retain_n();
    sub_1D66B21E4(v140);
    v142 = sub_1D72647CC();
    v356 = 0;
    v143 = swift_allocObject();
    *(v143 + 16) = v142;
    *(v143 + 24) = v354;
    *(v143 + 40) = v356;
    v144 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
    MEMORY[0x1EEE9AC00](v144, v145);
    MEMORY[0x1EEE9AC00](v146, v147);
    v314[-4] = sub_1D615B4A4;
    v314[-3] = &v314[-6];
    v312 = sub_1D6708B4C;
    v313 = v141;
    v149 = sub_1D5D2F7A4(v123, sub_1D615B49C, v148, sub_1D615B4A4, &v314[-6]);
    v161 = v149;

    if (v161)
    {
      sub_1D72647EC();
      v123 = v340;
      v353 = 0;

      v131 = v316;
      v125 = v345;
      v124 = v346;
      v126 = v344;
    }

    else
    {
      v353 = 0;

      v131 = v316;
      v125 = v345;
      v124 = v346;
      v126 = v344;
      v123 = v340;
    }
  }

  else
  {
    v353 = 0;
  }

  sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
  v132 = v339;
  v126(v339, v125, v124);
  swift_storeEnumTagMultiPayload();
  v354 = xmmword_1D72BAA70;
  v357 = xmmword_1D72BAA70;
  v358 = 0;
  LOBYTE(v359) = 0;
  v133 = swift_allocObject();
  v135 = v133;
  *(v133 + 16) = v354;
  *(v133 + 32) = v359;
  v136 = v347;
  *(v133 + 40) = v347;
  *(v133 + 48) = v131;
  v137 = v336;
  if ((~v336 & 0xF000000000000007) != 0)
  {
    v359 = v336;
    MEMORY[0x1EEE9AC00](v133, v134);
    v314[-4] = sub_1D5B4AA6C;
    v314[-3] = 0;
    v312 = sub_1D6708B4C;
    v313 = v135;
    v356 = 0;
    v150 = swift_allocObject();
    *(v150 + 16) = v354;
    *(v150 + 32) = v356;
    *(v150 + 40) = v136;
    *(v150 + 48) = v131;
    swift_retain_n();
    sub_1D66B21E4(v137);
    v151 = sub_1D72647CC();
    v356 = 0;
    v152 = swift_allocObject();
    *(v152 + 16) = v151;
    *(v152 + 24) = v354;
    *(v152 + 40) = v356;
    v153 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
    MEMORY[0x1EEE9AC00](v153, v154);
    MEMORY[0x1EEE9AC00](v155, v156);
    v314[-4] = sub_1D615B4A4;
    v314[-3] = &v314[-6];
    v312 = sub_1D6708B4C;
    v313 = v150;
    v157 = v353;
    v159 = sub_1D5D2F7A4(v132, sub_1D615B49C, v158, sub_1D615B4A4, &v314[-6]);
    v138 = v157;
    if (v157)
    {

      v160 = v314[0];

      sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
      v92 = v160;
      return sub_1D5D2CFE8(v92, sub_1D66B2090);
    }

    v162 = v159;

    if (v162)
    {
      sub_1D72647EC();
    }

    v131 = v316;
    v124 = v346;
    v136 = v347;
    v126 = v344;
    v125 = v345;
  }

  else
  {

    v138 = v353;
  }

  sub_1D5D2CFE8(v339, type metadata accessor for FormatVersionRequirement);
  v163 = v337;
  v126(v337, v125, v124);
  swift_storeEnumTagMultiPayload();
  v354 = xmmword_1D72BAA80;
  v357 = xmmword_1D72BAA80;
  v358 = 0;
  LOBYTE(v359) = 0;
  v164 = swift_allocObject();
  v166 = v164;
  *(v164 + 16) = v354;
  *(v164 + 32) = v359;
  *(v164 + 40) = v136;
  *(v164 + 48) = v131;
  if ((~v334 & 0xF000000000000007) != 0)
  {
    v353 = v314;
    v359 = v334;
    MEMORY[0x1EEE9AC00](v164, v165);
    v314[-4] = sub_1D5B4AA6C;
    v314[-3] = 0;
    v312 = sub_1D6708B4C;
    v313 = v166;
    v356 = 0;
    v169 = v168;
    v170 = swift_allocObject();
    *(v170 + 16) = v354;
    *(v170 + 32) = v356;
    *(v170 + 40) = v136;
    *(v170 + 48) = v131;
    swift_retain_n();
    sub_1D66B21E4(v169);
    v171 = sub_1D72647CC();
    v356 = 0;
    v172 = swift_allocObject();
    *(v172 + 16) = v171;
    *(v172 + 24) = v354;
    *(v172 + 40) = v356;
    v173 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
    MEMORY[0x1EEE9AC00](v173, v174);
    MEMORY[0x1EEE9AC00](v175, v176);
    v314[-4] = sub_1D615B4A4;
    v314[-3] = &v314[-6];
    v312 = sub_1D6708B4C;
    v313 = v170;
    v178 = sub_1D5D2F7A4(v163, sub_1D615B49C, v177, sub_1D615B4A4, &v314[-6]);
    if (v138)
    {

      sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);
LABEL_10:
      v92 = v314[0];
      return sub_1D5D2CFE8(v92, sub_1D66B2090);
    }

    v179 = v178;

    if (v179)
    {
      sub_1D72647EC();
    }

    v131 = v316;
    v124 = v346;
    v136 = v347;
    v126 = v344;
    v125 = v345;
    v167 = v332;
  }

  else
  {

    v167 = v332;
  }

  sub_1D5D2CFE8(v337, type metadata accessor for FormatVersionRequirement);
  v126(v335, v125, v124);
  swift_storeEnumTagMultiPayload();
  v354 = xmmword_1D72BAA90;
  v357 = xmmword_1D72BAA90;
  v358 = 0;
  LOBYTE(v359) = 0;
  v180 = swift_allocObject();
  v182 = v180;
  *(v180 + 16) = v354;
  *(v180 + 32) = v359;
  *(v180 + 40) = v136;
  *(v180 + 48) = v131;
  if ((~v167 & 0xF000000000000007) != 0)
  {
    v359 = v167;
    MEMORY[0x1EEE9AC00](v180, v181);
    v314[-4] = sub_1D5B4AA6C;
    v314[-3] = 0;
    v312 = sub_1D6708B4C;
    v313 = v182;
    v356 = 0;
    v183 = swift_allocObject();
    *(v183 + 16) = v354;
    *(v183 + 32) = v356;
    *(v183 + 40) = v136;
    *(v183 + 48) = v131;
    swift_retain_n();
    sub_1D66B21E4(v167);
    v184 = sub_1D72647CC();
    v356 = 0;
    v185 = swift_allocObject();
    *(v185 + 16) = v184;
    *(v185 + 24) = v354;
    *(v185 + 40) = v356;
    v186 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
    MEMORY[0x1EEE9AC00](v186, v187);
    MEMORY[0x1EEE9AC00](v188, v189);
    v314[-4] = sub_1D615B4A4;
    v314[-3] = &v314[-6];
    v312 = sub_1D6708B4C;
    v313 = v183;
    v190 = v335;
    v192 = sub_1D5D2F7A4(v335, sub_1D615B49C, v191, sub_1D615B4A4, &v314[-6]);
    if (v138)
    {
      goto LABEL_48;
    }

    v193 = v192;

    if (v193)
    {
      sub_1D72647EC();

      v131 = v316;
    }

    else
    {
    }

    v124 = v346;
    v136 = v347;
    v126 = v344;
    v125 = v345;
  }

  else
  {
  }

  sub_1D5D2CFE8(v335, type metadata accessor for FormatVersionRequirement);
  v126(v333, v125, v124);
  swift_storeEnumTagMultiPayload();
  v354 = xmmword_1D72BAAA0;
  v357 = xmmword_1D72BAAA0;
  v358 = 0;
  LOBYTE(v359) = 0;
  v194 = swift_allocObject();
  v196 = v194;
  *(v194 + 16) = v354;
  *(v194 + 32) = v359;
  *(v194 + 40) = v136;
  *(v194 + 48) = v131;
  if ((~v330 & 0xF000000000000007) == 0)
  {

    goto LABEL_45;
  }

  v359 = v330;
  MEMORY[0x1EEE9AC00](v194, v195);
  v314[-4] = sub_1D5B4AA6C;
  v314[-3] = 0;
  v312 = sub_1D6708B4C;
  v313 = v196;
  v356 = 0;
  v198 = v197;
  v199 = swift_allocObject();
  *(v199 + 16) = v354;
  *(v199 + 32) = v356;
  *(v199 + 40) = v136;
  *(v199 + 48) = v131;
  swift_retain_n();
  sub_1D66B21E4(v198);
  v200 = sub_1D72647CC();
  v356 = 0;
  v201 = swift_allocObject();
  *(v201 + 16) = v200;
  *(v201 + 24) = v354;
  *(v201 + 40) = v356;
  v202 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
  MEMORY[0x1EEE9AC00](v202, v203);
  MEMORY[0x1EEE9AC00](v204, v205);
  v314[-4] = sub_1D615B4A4;
  v314[-3] = &v314[-6];
  v312 = sub_1D6708B4C;
  v313 = v199;
  v190 = v333;
  v207 = sub_1D5D2F7A4(v333, sub_1D615B49C, v206, sub_1D615B4A4, &v314[-6]);
  if (v138)
  {
LABEL_48:

    sub_1D5D2CFE8(v190, type metadata accessor for FormatVersionRequirement);
    goto LABEL_10;
  }

  v208 = v207;

  if (v208)
  {
    sub_1D72647EC();

    v131 = v316;
  }

  else
  {
  }

  v124 = v346;
  v136 = v347;
  v126 = v344;
  v125 = v345;
LABEL_45:
  sub_1D5D2CFE8(v333, type metadata accessor for FormatVersionRequirement);
  v126(v331, v125, v124);
  swift_storeEnumTagMultiPayload();
  v354 = xmmword_1D72BAAB0;
  v357 = xmmword_1D72BAAB0;
  v358 = 0;
  LOBYTE(v359) = 0;
  v209 = swift_allocObject();
  v211 = v209;
  *(v209 + 16) = v354;
  *(v209 + 32) = v359;
  *(v209 + 40) = v136;
  *(v209 + 48) = v131;
  v212 = v328;
  if ((~v328 & 0xF000000000000007) == 0)
  {

    goto LABEL_52;
  }

  v359 = v328;
  MEMORY[0x1EEE9AC00](v209, v210);
  v314[-4] = sub_1D5B4AA6C;
  v314[-3] = 0;
  v312 = sub_1D6708B4C;
  v313 = v211;
  v356 = 0;
  v213 = swift_allocObject();
  *(v213 + 16) = v354;
  *(v213 + 32) = v356;
  *(v213 + 40) = v136;
  *(v213 + 48) = v131;
  swift_retain_n();
  sub_1D66B21E4(v212);
  v214 = sub_1D72647CC();
  v356 = 0;
  v215 = swift_allocObject();
  *(v215 + 16) = v214;
  *(v215 + 24) = v354;
  *(v215 + 40) = v356;
  v216 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
  MEMORY[0x1EEE9AC00](v216, v217);
  MEMORY[0x1EEE9AC00](v218, v219);
  v314[-4] = sub_1D615B4A4;
  v314[-3] = &v314[-6];
  v312 = sub_1D6708B4C;
  v313 = v213;
  v190 = v331;
  v221 = sub_1D5D2F7A4(v331, sub_1D615B49C, v220, sub_1D615B4A4, &v314[-6]);
  if (v138)
  {
    goto LABEL_48;
  }

  v222 = v221;

  if (v222)
  {
    sub_1D72647EC();
  }

  v131 = v316;
  v125 = v345;
  v124 = v346;
  v126 = v344;
LABEL_52:
  v223 = v138;
  sub_1D5D2CFE8(v331, type metadata accessor for FormatVersionRequirement);
  v126(v329, v125, v124);
  swift_storeEnumTagMultiPayload();
  v354 = xmmword_1D72BAAC0;
  v357 = xmmword_1D72BAAC0;
  v358 = 0;
  LOBYTE(v359) = 0;
  v224 = swift_allocObject();
  v226 = v224;
  *(v224 + 16) = v354;
  *(v224 + 32) = v359;
  *(v224 + 40) = v347;
  *(v224 + 48) = v131;
  v227 = v326;
  if ((~v326 & 0xF000000000000007) != 0)
  {
    v359 = v326;
    MEMORY[0x1EEE9AC00](v224, v225);
    v314[-4] = sub_1D5B4AA6C;
    v314[-3] = 0;
    v312 = sub_1D6708B4C;
    v313 = v226;
    v356 = 0;
    v228 = swift_allocObject();
    *(v228 + 16) = v354;
    *(v228 + 32) = v356;
    *(v228 + 40) = v347;
    *(v228 + 48) = v131;
    swift_retain_n();
    sub_1D66B21E4(v227);
    v229 = sub_1D72647CC();
    v356 = 0;
    v230 = swift_allocObject();
    *(v230 + 16) = v229;
    *(v230 + 24) = v354;
    *(v230 + 40) = v356;
    v231 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
    MEMORY[0x1EEE9AC00](v231, v232);
    MEMORY[0x1EEE9AC00](v233, v234);
    v314[-4] = sub_1D615B4A4;
    v314[-3] = &v314[-6];
    v312 = sub_1D6708B4C;
    v313 = v228;
    v236 = sub_1D5D2F7A4(v329, sub_1D615B49C, v235, sub_1D615B4A4, &v314[-6]);
    if (v223)
    {

      v237 = &v358;
      goto LABEL_95;
    }

    v238 = v236;

    if (v238)
    {
      sub_1D72647EC();
    }

    v131 = v316;
    v125 = v345;
    v124 = v346;
    v126 = v344;
  }

  else
  {
  }

  sub_1D5D2CFE8(v329, type metadata accessor for FormatVersionRequirement);
  v126(v327, v125, v124);
  swift_storeEnumTagMultiPayload();
  v354 = xmmword_1D72BAAD0;
  v357 = xmmword_1D72BAAD0;
  v358 = 0;
  LOBYTE(v359) = 0;
  v239 = swift_allocObject();
  v241 = v239;
  *(v239 + 16) = v354;
  *(v239 + 32) = v359;
  *(v239 + 40) = v347;
  *(v239 + 48) = v131;
  v242 = v324;
  if ((~v324 & 0xF000000000000007) != 0)
  {
    v359 = v324;
    MEMORY[0x1EEE9AC00](v239, v240);
    v314[-4] = sub_1D5B4AA6C;
    v314[-3] = 0;
    v312 = sub_1D6708B4C;
    v313 = v241;
    v356 = 0;
    v243 = swift_allocObject();
    *(v243 + 16) = v354;
    *(v243 + 32) = v356;
    *(v243 + 40) = v347;
    *(v243 + 48) = v131;
    swift_retain_n();
    sub_1D66B21E4(v242);
    v244 = sub_1D72647CC();
    v356 = 0;
    v245 = swift_allocObject();
    *(v245 + 16) = v244;
    *(v245 + 24) = v354;
    *(v245 + 40) = v356;
    v246 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
    MEMORY[0x1EEE9AC00](v246, v247);
    MEMORY[0x1EEE9AC00](v248, v249);
    v314[-4] = sub_1D615B4A4;
    v314[-3] = &v314[-6];
    v312 = sub_1D6708B4C;
    v313 = v243;
    v251 = sub_1D5D2F7A4(v327, sub_1D615B49C, v250, sub_1D615B4A4, &v314[-6]);
    if (v223)
    {

      v237 = &v357;
      goto LABEL_95;
    }

    v252 = v251;

    if (v252)
    {
      sub_1D72647EC();
    }

    v131 = v316;
  }

  else
  {
  }

  sub_1D5D2CFE8(v327, type metadata accessor for FormatVersionRequirement);
  v344(v325, v345, v346);
  swift_storeEnumTagMultiPayload();
  v354 = xmmword_1D72BAAE0;
  v357 = xmmword_1D72BAAE0;
  v358 = 0;
  LOBYTE(v359) = 0;
  v253 = swift_allocObject();
  v255 = v253;
  *(v253 + 16) = v354;
  *(v253 + 32) = v359;
  *(v253 + 40) = v347;
  *(v253 + 48) = v131;
  if ((~v322 & 0xF000000000000007) != 0)
  {
    v256 = v322;
    v359 = v322;
    MEMORY[0x1EEE9AC00](v253, v254);
    v314[-4] = sub_1D5B4AA6C;
    v314[-3] = 0;
    v312 = sub_1D6708B4C;
    v313 = v255;
    v356 = 0;
    v257 = swift_allocObject();
    *(v257 + 16) = v354;
    *(v257 + 32) = v356;
    *(v257 + 40) = v347;
    *(v257 + 48) = v131;
    swift_retain_n();
    sub_1D66B21E4(v256);
    v258 = sub_1D72647CC();
    v356 = 0;
    v259 = swift_allocObject();
    *(v259 + 16) = v258;
    *(v259 + 24) = v354;
    *(v259 + 40) = v356;
    v260 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
    MEMORY[0x1EEE9AC00](v260, v261);
    MEMORY[0x1EEE9AC00](v262, v263);
    v314[-4] = sub_1D615B4A4;
    v314[-3] = &v314[-6];
    v312 = sub_1D6708B4C;
    v313 = v257;
    v265 = sub_1D5D2F7A4(v325, sub_1D615B49C, v264, sub_1D615B4A4, &v314[-6]);
    if (v223)
    {

      v237 = &v355;
      goto LABEL_95;
    }

    v266 = v265;

    if (v266)
    {
      sub_1D72647EC();
    }
  }

  else
  {
  }

  sub_1D5D2CFE8(v325, type metadata accessor for FormatVersionRequirement);
  v344(v323, v345, v346);
  swift_storeEnumTagMultiPayload();
  v354 = xmmword_1D72BAAF0;
  v357 = xmmword_1D72BAAF0;
  v358 = 0;
  LOBYTE(v359) = 0;
  v267 = swift_allocObject();
  v269 = v267;
  *(v267 + 16) = v354;
  *(v267 + 32) = v359;
  v270 = v316;
  *(v267 + 40) = v347;
  *(v267 + 48) = v270;
  if ((~v320 & 0xF000000000000007) != 0)
  {
    v271 = v320;
    v359 = v320;
    MEMORY[0x1EEE9AC00](v267, v268);
    v314[-4] = sub_1D5B4AA6C;
    v314[-3] = 0;
    v312 = sub_1D6708B4C;
    v313 = v269;
    v356 = 0;
    v272 = swift_allocObject();
    *(v272 + 16) = v354;
    *(v272 + 32) = v356;
    *(v272 + 40) = v347;
    *(v272 + 48) = v316;
    swift_retain_n();
    sub_1D66B21E4(v271);
    v273 = sub_1D72647CC();
    v356 = 0;
    v274 = swift_allocObject();
    *(v274 + 16) = v273;
    *(v274 + 24) = v354;
    *(v274 + 40) = v356;
    v275 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
    MEMORY[0x1EEE9AC00](v275, v276);
    MEMORY[0x1EEE9AC00](v277, v278);
    v314[-4] = sub_1D615B4A4;
    v314[-3] = &v314[-6];
    v312 = sub_1D6708B4C;
    v313 = v272;
    v280 = sub_1D5D2F7A4(v323, sub_1D615B49C, v279, sub_1D615B4A4, &v314[-6]);
    if (v223)
    {

      v237 = &v354;
      goto LABEL_95;
    }

    v281 = v280;

    if (v281)
    {
      sub_1D72647EC();
    }
  }

  else
  {
  }

  sub_1D5D2CFE8(v323, type metadata accessor for FormatVersionRequirement);
  v344(v321, v345, v346);
  swift_storeEnumTagMultiPayload();
  v354 = xmmword_1D7282A80;
  v357 = xmmword_1D7282A80;
  v358 = 0;
  LOBYTE(v359) = 0;
  v282 = swift_allocObject();
  v284 = v282;
  *(v282 + 16) = v354;
  *(v282 + 32) = v359;
  v285 = v316;
  *(v282 + 40) = v347;
  *(v282 + 48) = v285;
  if ((~v318 & 0xF000000000000007) == 0)
  {

LABEL_87:

    sub_1D5D2CFE8(v321, type metadata accessor for FormatVersionRequirement);
    v344(v319, v345, v346);
    swift_storeEnumTagMultiPayload();
    v354 = xmmword_1D72BAB00;
    v357 = xmmword_1D72BAB00;
    v358 = 0;
    LOBYTE(v359) = 0;
    v297 = swift_allocObject();
    v299 = v297;
    *(v297 + 16) = v354;
    *(v297 + 32) = v359;
    v300 = v316;
    *(v297 + 40) = v347;
    *(v297 + 48) = v300;
    if ((~v317 & 0xF000000000000007) != 0)
    {
      v301 = v317;
      v359 = v317;
      MEMORY[0x1EEE9AC00](v297, v298);
      v314[-4] = sub_1D5B4AA6C;
      v314[-3] = 0;
      v312 = sub_1D6708B4C;
      v313 = v299;
      v356 = 0;
      v302 = swift_allocObject();
      *(v302 + 16) = v354;
      *(v302 + 32) = v356;
      *(v302 + 40) = v347;
      *(v302 + 48) = v316;
      swift_retain_n();
      sub_1D66B21E4(v301);
      v303 = sub_1D72647CC();
      v356 = 0;
      v304 = swift_allocObject();
      *(v304 + 16) = v303;
      *(v304 + 24) = v354;
      *(v304 + 40) = v356;
      v305 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
      MEMORY[0x1EEE9AC00](v305, v306);
      MEMORY[0x1EEE9AC00](v307, v308);
      v314[-4] = sub_1D615B4A4;
      v314[-3] = &v314[-6];
      v312 = sub_1D66B21B8;
      v313 = v302;
      v310 = sub_1D5D2F7A4(v319, sub_1D615B49C, v309, sub_1D615B4A4, &v314[-6]);
      if (v223)
      {
      }

      else
      {
        v311 = v310;

        if (v311)
        {
          sub_1D72647EC();
        }
      }
    }

    else
    {
    }

    v237 = v351;
    goto LABEL_95;
  }

  v286 = v318;
  v359 = v318;
  MEMORY[0x1EEE9AC00](v282, v283);
  v314[-4] = sub_1D5B4AA6C;
  v314[-3] = 0;
  v312 = sub_1D6708B4C;
  v313 = v284;
  v356 = 0;
  v287 = swift_allocObject();
  *(v287 + 16) = v354;
  *(v287 + 32) = v356;
  *(v287 + 40) = v347;
  *(v287 + 48) = v316;
  swift_retain_n();
  sub_1D66B21E4(v286);
  v288 = sub_1D72647CC();
  v356 = 0;
  v289 = swift_allocObject();
  *(v289 + 16) = v288;
  *(v289 + 24) = v354;
  *(v289 + 40) = v356;
  v290 = __swift_project_boxed_opaque_existential_1(v315, *(v315 + 3));
  MEMORY[0x1EEE9AC00](v290, v291);
  MEMORY[0x1EEE9AC00](v292, v293);
  v314[-4] = sub_1D615B4A4;
  v314[-3] = &v314[-6];
  v312 = sub_1D6708B4C;
  v313 = v287;
  v295 = sub_1D5D2F7A4(v321, sub_1D615B49C, v294, sub_1D615B4A4, &v314[-6]);
  if (!v223)
  {
    v296 = v295;

    if (v296)
    {
      sub_1D72647EC();
    }

    goto LABEL_87;
  }

  v237 = &v352;
LABEL_95:
  sub_1D5D2CFE8(*(v237 - 32), type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v314[0], sub_1D66B2090);
}

uint64_t sub_1D656DA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B3434(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D656DAAC(uint64_t a1)
{
  v2 = sub_1D5CA2E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D656DAE8(uint64_t a1)
{
  v2 = sub_1D5CA2E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRemoteVideo.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D66B2260();
  v7 = v6;
  v80 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B22F4();
  sub_1D5B58B84(&qword_1EDF0C5B0, sub_1D66B22F4);
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v80;
    v11 = a1;
    v15 = v7;
    v16 = v10;
    if (v13)
    {
      v17 = sub_1D726433C();
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = (v17 + 48);
        while (*v19 != 1)
        {
          v19 += 24;
          if (!--v18)
          {
            goto LABEL_8;
          }
        }

        v21 = v14;
        v22 = *(v19 - 2);
        v23 = *(v19 - 1);

        v24 = sub_1D6621F78();
        sub_1D5E2D970();
        v3 = swift_allocError();
        *v25 = v22;
        *(v25 + 8) = v23;
        *(v25 + 16) = v24;
        *(v25 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v21 + 8))(v16, v15);
        goto LABEL_11;
      }

LABEL_8:
    }

    sub_1D5CA2FA0();
    v81 = 0uLL;
    v82 = 0;
    sub_1D726431C();
    v20 = v83;
    v81 = xmmword_1D728CF30;
    v82 = 0;
    sub_1D726431C();
    v26 = v83;
    v81 = xmmword_1D7297410;
    v82 = 0;
    sub_1D726431C();
    v79 = v26;
    v27 = v83;
    v81 = xmmword_1D72BAA60;
    v82 = 0;
    sub_1D726427C();
    v78 = v27;
    v28 = v83;
    v81 = xmmword_1D72BAA70;
    v82 = 0;
    sub_1D726427C();
    v77 = v28;
    v29 = v83;
    v81 = xmmword_1D72BAA80;
    v82 = 0;
    sub_1D726427C();
    v76 = v29;
    v30 = v83;
    v81 = xmmword_1D72BAA90;
    v82 = 0;
    sub_1D726427C();
    v75 = v30;
    v31 = v83;
    v81 = xmmword_1D72BAAA0;
    v82 = 0;
    sub_1D726427C();
    v74 = v31;
    v32 = v83;
    v81 = xmmword_1D72BAAB0;
    v82 = 0;
    sub_1D726427C();
    v72 = v83;
    v73 = v32;
    v81 = xmmword_1D72BAAC0;
    v82 = 0;
    v33 = v15;
    sub_1D726427C();
    v71 = v83;
    v81 = xmmword_1D72BAAD0;
    v82 = 0;
    sub_1D726427C();
    v70 = v83;
    v81 = xmmword_1D72BAAE0;
    v82 = 0;
    sub_1D726427C();
    v69 = v83;
    v81 = xmmword_1D72BAAF0;
    v82 = 0;
    sub_1D726427C();
    v68 = v83;
    v81 = xmmword_1D7282A80;
    v82 = 0;
    sub_1D726427C();
    v67 = v83;
    v81 = xmmword_1D72BAB00;
    v82 = 0;
    sub_1D726427C();
    v66 = v83;
    v81 = xmmword_1D72BAB10;
    v82 = 0;
    sub_1D726427C();
    v65 = v83;
    v81 = xmmword_1D72BAB20;
    v82 = 0;
    sub_1D726427C();
    v64 = v83;
    v81 = xmmword_1D72BAB30;
    v82 = 0;
    sub_1D726427C();
    v34 = v83;
    v81 = xmmword_1D72BAB40;
    v82 = 0;
    sub_1D726427C();
    v63 = v83;
    v81 = xmmword_1D72BAB50;
    v82 = 0;
    sub_1D726427C();
    v62 = v83;
    v81 = xmmword_1D72BAB60;
    v82 = 0;
    sub_1D726427C();
    v61 = v83;
    v81 = xmmword_1D72BAB70;
    v82 = 0;
    sub_1D726427C();
    v60 = v83;
    v81 = xmmword_1D72BAB80;
    v82 = 0;
    sub_1D726427C();
    v59 = v83;
    v81 = xmmword_1D72BAB90;
    v82 = 0;
    sub_1D726427C();
    v58 = v83;
    v81 = xmmword_1D72BABA0;
    v82 = 0;
    sub_1D726427C();
    v57 = v83;
    v81 = xmmword_1D72BABB0;
    v82 = 0;
    sub_1D726427C();
    v56 = v83;
    v81 = xmmword_1D72BABC0;
    v82 = 0;
    sub_1D726427C();
    v55 = v83;
    v81 = xmmword_1D72BABD0;
    v82 = 0;
    sub_1D726427C();
    v54 = v83;
    v81 = xmmword_1D72BABE0;
    v82 = 0;
    sub_1D726427C();
    v53 = v83;
    v81 = xmmword_1D72BABF0;
    v82 = 0;
    sub_1D726427C();
    (*(v80 + 8))(v10, v33);
    v35 = v83;
    v37 = v78;
    v36 = v79;
    *a2 = v20;
    a2[1] = v36;
    v38 = v76;
    v39 = v77;
    a2[2] = v37;
    a2[3] = v39;
    a2[4] = v38;
    v40 = v74;
    a2[5] = v75;
    a2[6] = v40;
    v41 = v72;
    a2[7] = v73;
    a2[8] = v41;
    v42 = v70;
    a2[9] = v71;
    a2[10] = v42;
    v43 = v68;
    a2[11] = v69;
    a2[12] = v43;
    v44 = v66;
    a2[13] = v67;
    a2[14] = v44;
    v45 = v64;
    a2[15] = v65;
    a2[16] = v45;
    v46 = v63;
    a2[17] = v34;
    a2[18] = v46;
    v47 = v61;
    a2[19] = v62;
    a2[20] = v47;
    v48 = v59;
    a2[21] = v60;
    a2[22] = v48;
    v49 = v57;
    a2[23] = v58;
    a2[24] = v49;
    v50 = v55;
    a2[25] = v56;
    a2[26] = v50;
    v51 = v53;
    a2[27] = v54;
    a2[28] = v51;
    a2[29] = v35;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v11 = a1;
LABEL_11:
  sub_1D61E4FBC(v11, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t FormatRemoteVideo.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v428 = v419 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v427 = v419 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v425 = v419 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v432 = v419 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v431 = v419 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v435 = v419 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v437 = v419 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v438 = v419 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v441 = v419 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v443 = v419 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v445 = v419 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v447 = v419 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v449 = v419 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v451 = v419 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v453 = v419 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v455 = v419 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v457 = v419 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v460 = v419 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v459 = v419 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v462 = v419 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v472 = v419 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v465 = v419 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v467 = v419 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v469 = v419 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v476 = v419 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v473 = v419 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v475 = v419 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v478 = v419 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  *&v482 = v419 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v93 = v419 - v92;
  sub_1D66B2474();
  v95 = v94;
  MEMORY[0x1EEE9AC00](v94, v96);
  v98 = v419 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *v1;
  *&v479 = v1[1];
  v100 = v1[3];
  v477 = v1[2];
  v474 = v100;
  v101 = v1[5];
  v471 = v1[4];
  v470 = v101;
  v102 = v1[7];
  v468 = v1[6];
  v466 = v102;
  v103 = v1[9];
  v464 = v1[8];
  v463 = v103;
  v104 = v1[11];
  v461 = v1[10];
  v458 = v104;
  v105 = v1[13];
  v456 = v1[12];
  v454 = v105;
  v106 = v1[15];
  v452 = v1[14];
  v450 = v106;
  v107 = v1[17];
  v448 = v1[16];
  v446 = v107;
  v108 = v1[19];
  v444 = v1[18];
  v442 = v108;
  v109 = v1[21];
  v440 = v1[20];
  v439 = v109;
  v110 = v1[23];
  v436 = v1[22];
  v434 = v110;
  v111 = v1[25];
  v433 = v1[24];
  v429 = v111;
  v112 = v1[27];
  v430 = v1[26];
  v423 = v112;
  v113 = v1[29];
  v424 = v1[28];
  v426 = v113;
  v114 = a1[3];
  v115 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v114);
  sub_1D66B22F4();
  v117 = v116;
  v118 = sub_1D5B58B84(&qword_1EDF0C5B0, sub_1D66B22F4);
  sub_1D5D2EE70(&type metadata for FormatRemoteVideo, v117, v119, v114, &type metadata for FormatRemoteVideo, v117, &type metadata for FormatVersions.AzdenE, v115, v98, v118, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v120 = sub_1D725BD1C();
  v121 = __swift_project_value_buffer(v120, qword_1EDFFCD98);
  v122 = *(v120 - 8);
  v123 = *(v122 + 16);
  v480[0] = v121;
  v480[1] = v122 + 16;
  *&v481 = v123;
  v123(v93);
  v124 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v488 = v99;
  v485 = 0uLL;
  v486 = 0;
  v125 = &v98[*(v95 + 44)];
  v127 = *v125;
  v126 = *(v125 + 1);
  v484 = 0;
  v128 = swift_allocObject();
  *(v128 + 16) = 0;
  *(v128 + 24) = 0;
  *(v128 + 32) = v484;
  *(v128 + 40) = v127;
  *(v128 + 48) = v126;
  MEMORY[0x1EEE9AC00](v128, v129);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v130;

  v131 = v93;
  v132 = v98;
  v133 = v483;
  sub_1D662A0FC(v93, 0, 0, 0, sub_1D615B4A4, &v419[-6]);
  if (v133)
  {

    sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v98, sub_1D66B2474);
  }

  v483 = v125;
  v421 = v124;
  v422 = v120;
  sub_1D66B2508();
  v135 = v134;
  v136 = sub_1D5B58B84(&qword_1EC8871A8, sub_1D66B2508);
  v137 = sub_1D60B27FC();
  sub_1D72647EC();
  v419[0] = v137;
  v419[1] = v136;
  v419[2] = v135;
  sub_1D5D2CFE8(v131, type metadata accessor for FormatVersionRequirement);

  v420 = v132;
  v139 = v482;
  v140 = v480[0];
  v141 = v481;
  (v481)(v482, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v488 = v479;
  v479 = xmmword_1D728CF30;
  v485 = xmmword_1D728CF30;
  v486 = 0;
  v143 = *v483;
  v142 = *(v483 + 1);
  v484 = 0;
  v144 = swift_allocObject();
  *(v144 + 16) = v479;
  *(v144 + 32) = v484;
  *(v144 + 40) = v143;
  *(v144 + 48) = v142;
  MEMORY[0x1EEE9AC00](v144, v145);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v146;

  v147 = v420;
  sub_1D662A0FC(v139, 1, 0, 0, sub_1D615B4A4, &v419[-6]);
  sub_1D72647EC();
  sub_1D5D2CFE8(v482, type metadata accessor for FormatVersionRequirement);

  v148 = v141;
  v149 = v140;
  v150 = v478;
  v151 = v422;
  v148(v478, v140, v422);
  swift_storeEnumTagMultiPayload();
  v488 = v477;
  v482 = xmmword_1D7297410;
  v485 = xmmword_1D7297410;
  v486 = 0;
  v152 = *v483;
  v153 = *(v483 + 1);
  v484 = 0;
  v154 = swift_allocObject();
  *(v154 + 16) = v482;
  *(v154 + 32) = v484;
  *(v154 + 40) = v152;
  *(v154 + 48) = v153;
  MEMORY[0x1EEE9AC00](v154, v155);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v156;

  sub_1D662A0FC(v150, 2, 0, 0, sub_1D615B4A4, &v419[-6]);
  v157 = v151;
  v158 = v481;
  sub_1D72647EC();
  v159 = v157;
  *&v482 = 0;
  sub_1D5D2CFE8(v478, type metadata accessor for FormatVersionRequirement);

  v160 = v475;
  v161 = v149;
  v162 = v158;
  v158(v475, v161, v159);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAA60;
  v485 = xmmword_1D72BAA60;
  v486 = 0;
  v163 = *v483;
  v164 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v165 = swift_allocObject();
  v167 = v165;
  *(v165 + 16) = v479;
  *(v165 + 32) = v488;
  *(v165 + 40) = v163;
  *(v165 + 48) = v164;
  v168 = v474;
  if ((~v474 & 0xF000000000000007) != 0)
  {
    v488 = v474;
    MEMORY[0x1EEE9AC00](v165, v166);
    v419[-4] = sub_1D5B4AA6C;
    v419[-3] = 0;
    v417 = sub_1D6708B50;
    v418 = v167;

    sub_1D66B21E4(v168);
    v172 = v482;
    v173 = sub_1D663B9D4(v160, 3, 0, 0, sub_1D615B4A4, &v419[-6]);
    v171 = v476;
    if (v172)
    {

      v174 = v160;
LABEL_40:
      sub_1D5D2CFE8(v174, type metadata accessor for FormatVersionRequirement);
      v225 = v147;
      goto LABEL_41;
    }

    *&v482 = 0;
    if (v173)
    {
      sub_1D72647EC();
      *&v482 = 0;
    }

    sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);

    v169 = v483;
    v170 = v472;
  }

  else
  {

    sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);
    v169 = v483;
    v170 = v472;
    v171 = v476;
  }

  v175 = v473;
  v158(v473, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAA70;
  v485 = xmmword_1D72BAA70;
  v486 = 0;
  v176 = *v169;
  v177 = *(v169 + 1);
  LOBYTE(v488) = 0;
  v178 = swift_allocObject();
  v180 = v178;
  *(v178 + 16) = v479;
  *(v178 + 32) = v488;
  *(v178 + 40) = v176;
  *(v178 + 48) = v177;
  v181 = v471;
  if ((~v471 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);
    v182 = v483;
    goto LABEL_20;
  }

  v488 = v471;
  MEMORY[0x1EEE9AC00](v178, v179);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v180;

  sub_1D66B21E4(v181);
  v183 = v482;
  v184 = sub_1D663B9D4(v175, 4, 0, 0, sub_1D615B4A4, &v419[-6]);
  if (v183)
  {

    v174 = v473;
    goto LABEL_40;
  }

  *&v482 = 0;
  if (v184)
  {
    sub_1D72647EC();
    v185 = v473;
    *&v482 = 0;

    v186 = v185;
  }

  else
  {

    v186 = v473;
  }

  sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);

  v182 = v483;
  v170 = v472;
LABEL_20:
  v187 = v171;
  v188 = v171;
  v189 = v480[0];
  v162(v188, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAA80;
  v485 = xmmword_1D72BAA80;
  v486 = 0;
  v190 = *v182;
  v191 = *(v182 + 1);
  LOBYTE(v488) = 0;
  v192 = swift_allocObject();
  v194 = v192;
  *(v192 + 16) = v479;
  *(v192 + 32) = v488;
  *(v192 + 40) = v190;
  *(v192 + 48) = v191;
  v195 = v470;
  if ((~v470 & 0xF000000000000007) != 0)
  {
    v488 = v470;
    MEMORY[0x1EEE9AC00](v192, v193);
    v419[-4] = sub_1D5B4AA6C;
    v419[-3] = 0;
    v417 = sub_1D6708B50;
    v418 = v194;

    sub_1D66B21E4(v195);
    v197 = v482;
    v198 = sub_1D663B9D4(v187, 5, 0, 0, sub_1D615B4A4, &v419[-6]);
    if (v197)
    {
      goto LABEL_39;
    }

    *&v482 = 0;
    if (v198)
    {
      sub_1D72647EC();
      *&v482 = 0;
    }

    sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);

    v196 = v483;
    v170 = v472;
  }

  else
  {

    sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
    v196 = v483;
  }

  v199 = v469;
  v162(v469, v189, v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAA90;
  v485 = xmmword_1D72BAA90;
  v486 = 0;
  v200 = *v196;
  v201 = *(v196 + 1);
  LOBYTE(v488) = 0;
  v202 = swift_allocObject();
  v204 = v202;
  *(v202 + 16) = v479;
  *(v202 + 32) = v488;
  *(v202 + 40) = v200;
  *(v202 + 48) = v201;
  v205 = v468;
  if ((~v468 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v199, type metadata accessor for FormatVersionRequirement);
    goto LABEL_28;
  }

  v488 = v468;
  MEMORY[0x1EEE9AC00](v202, v203);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v204;

  sub_1D66B21E4(v205);
  v218 = v482;
  v219 = sub_1D663B9D4(v199, 6, 0, 0, sub_1D615B4A4, &v419[-6]);
  if (v218)
  {

    v174 = v469;
    goto LABEL_40;
  }

  *&v482 = 0;
  if (v219)
  {
    v226 = v482;
    sub_1D72647EC();
    *&v482 = v226;

    sub_1D5D2CFE8(v469, type metadata accessor for FormatVersionRequirement);

    v189 = v480[0];
    v162 = v481;
  }

  else
  {

    sub_1D5D2CFE8(v469, type metadata accessor for FormatVersionRequirement);
  }

  v170 = v472;
LABEL_28:
  v187 = v467;
  v162(v467, v189, v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAAA0;
  v485 = xmmword_1D72BAAA0;
  v486 = 0;
  v206 = *v483;
  v207 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v208 = swift_allocObject();
  v210 = v208;
  *(v208 + 16) = v479;
  *(v208 + 32) = v488;
  *(v208 + 40) = v206;
  *(v208 + 48) = v207;
  v211 = v466;
  if ((~v466 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
    goto LABEL_30;
  }

  v488 = v466;
  MEMORY[0x1EEE9AC00](v208, v209);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v210;

  sub_1D66B21E4(v211);
  v220 = v482;
  v221 = sub_1D663B9D4(v187, 7, 0, 0, sub_1D615B4A4, &v419[-6]);
  if (v220)
  {
LABEL_39:

    v174 = v187;
    goto LABEL_40;
  }

  *&v482 = 0;
  if (v221)
  {
    v222 = v482;
    sub_1D72647EC();
    *&v482 = v222;

    sub_1D5D2CFE8(v467, type metadata accessor for FormatVersionRequirement);

    v189 = v480[0];
    v162 = v481;
  }

  else
  {

    sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
  }

  v170 = v472;
LABEL_30:
  v187 = v465;
  v162(v465, v189, v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAAB0;
  v485 = xmmword_1D72BAAB0;
  v486 = 0;
  v212 = *v483;
  v213 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v214 = swift_allocObject();
  v216 = v214;
  *(v214 + 16) = v479;
  *(v214 + 32) = v488;
  *(v214 + 40) = v212;
  *(v214 + 48) = v213;
  v217 = v464;
  if ((~v464 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
    goto LABEL_51;
  }

  v488 = v464;
  MEMORY[0x1EEE9AC00](v214, v215);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v216;

  sub_1D66B21E4(v217);
  v223 = v482;
  v224 = sub_1D663B9D4(v187, 8, 0, 0, sub_1D615B4A4, &v419[-6]);
  if (v223)
  {
    goto LABEL_39;
  }

  *&v482 = 0;
  if (v224)
  {
    v227 = v482;
    sub_1D72647EC();
    *&v482 = v227;
  }

  sub_1D5D2CFE8(v465, type metadata accessor for FormatVersionRequirement);

  v189 = v480[0];
  v162 = v481;
  v170 = v472;
LABEL_51:
  v162(v170, v189, v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAAC0;
  v485 = xmmword_1D72BAAC0;
  v486 = 0;
  v228 = *v483;
  v229 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v230 = swift_allocObject();
  v232 = v230;
  *(v230 + 16) = v479;
  *(v230 + 32) = v488;
  *(v230 + 40) = v228;
  *(v230 + 48) = v229;
  v233 = v463;
  if ((~v463 & 0xF000000000000007) != 0)
  {
    v488 = v463;
    MEMORY[0x1EEE9AC00](v230, v231);
    v419[-4] = sub_1D5B4AA6C;
    v419[-3] = 0;
    v417 = sub_1D6708B50;
    v418 = v232;

    sub_1D66B21E4(v233);
    v234 = v147;
    v235 = v482;
    v236 = sub_1D663B9D4(v170, 9, 0, 0, sub_1D615B4A4, &v419[-6]);
    *&v482 = v235;
    if (v235)
    {

      v237 = v472;
LABEL_187:
      sub_1D5D2CFE8(v237, type metadata accessor for FormatVersionRequirement);
      sub_1D5D2CFE8(v234, sub_1D66B2474);
    }

    if (v236)
    {
      v238 = v482;
      sub_1D72647EC();
      *&v482 = v238;
    }

    sub_1D5D2CFE8(v472, type metadata accessor for FormatVersionRequirement);

    v189 = v480[0];
    v162 = v481;
  }

  else
  {
    v234 = v147;

    sub_1D5D2CFE8(v170, type metadata accessor for FormatVersionRequirement);
  }

  v239 = v462;
  v162(v462, v189, v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAAD0;
  v485 = xmmword_1D72BAAD0;
  v486 = 0;
  v241 = *v483;
  v240 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v242 = swift_allocObject();
  v244 = v242;
  *(v242 + 16) = v479;
  *(v242 + 32) = v488;
  *(v242 + 40) = v241;
  *(v242 + 48) = v240;
  v245 = v461;
  if ((~v461 & 0xF000000000000007) != 0)
  {
    v488 = v461;
    MEMORY[0x1EEE9AC00](v242, v243);
    v419[-4] = sub_1D5B4AA6C;
    v419[-3] = 0;
    v417 = sub_1D6708B50;
    v418 = v244;

    sub_1D66B21E4(v245);
    v246 = v482;
    v247 = sub_1D663B9D4(v239, 10, 0, 0, sub_1D615B4A4, &v419[-6]);
    *&v482 = v246;
    if (v246)
    {

      v248 = &v488;
LABEL_186:
      v237 = *(v248 - 32);
      goto LABEL_187;
    }

    if (v247)
    {
      v249 = v482;
      sub_1D72647EC();
      *&v482 = v249;
    }

    sub_1D5D2CFE8(v462, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);
  }

  v250 = v459;
  (v481)(v459, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAAE0;
  v485 = xmmword_1D72BAAE0;
  v486 = 0;
  v252 = *v483;
  v251 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v253 = swift_allocObject();
  v255 = v253;
  *(v253 + 16) = v479;
  *(v253 + 32) = v488;
  *(v253 + 40) = v252;
  *(v253 + 48) = v251;
  if ((~v458 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);
    goto LABEL_72;
  }

  v256 = v458;
  v488 = v458;
  MEMORY[0x1EEE9AC00](v253, v254);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v255;

  sub_1D66B21E4(v256);
  v257 = v482;
  v258 = sub_1D663B9D4(v250, 11, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v257;
  if (v257)
  {

    v248 = &v486;
    goto LABEL_186;
  }

  if (v258)
  {
    v259 = v482;
    sub_1D72647EC();
    *&v482 = v259;
  }

  sub_1D5D2CFE8(v459, type metadata accessor for FormatVersionRequirement);

LABEL_72:
  (v481)(v460, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAAF0;
  v485 = xmmword_1D72BAAF0;
  v486 = 0;
  v261 = *v483;
  v260 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v262 = swift_allocObject();
  v264 = v262;
  *(v262 + 16) = v479;
  *(v262 + 32) = v488;
  *(v262 + 40) = v261;
  *(v262 + 48) = v260;
  if ((~v456 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v460, type metadata accessor for FormatVersionRequirement);
    goto LABEL_79;
  }

  v265 = v456;
  v488 = v456;
  MEMORY[0x1EEE9AC00](v262, v263);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v264;

  sub_1D66B21E4(v265);
  v266 = v482;
  v267 = sub_1D663B9D4(v460, 12, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v266;
  if (v266)
  {

    v248 = &v487;
    goto LABEL_186;
  }

  if (v267)
  {
    v268 = v482;
    sub_1D72647EC();
    *&v482 = v268;
  }

  sub_1D5D2CFE8(v460, type metadata accessor for FormatVersionRequirement);

LABEL_79:
  (v481)(v457, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D7282A80;
  v485 = xmmword_1D7282A80;
  v486 = 0;
  v270 = *v483;
  v269 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v271 = swift_allocObject();
  v273 = v271;
  *(v271 + 16) = v479;
  *(v271 + 32) = v488;
  *(v271 + 40) = v270;
  *(v271 + 48) = v269;
  if ((~v454 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v457, type metadata accessor for FormatVersionRequirement);
    goto LABEL_86;
  }

  v274 = v454;
  v488 = v454;
  MEMORY[0x1EEE9AC00](v271, v272);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v273;

  sub_1D66B21E4(v274);
  v275 = v482;
  v276 = sub_1D663B9D4(v457, 13, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v275;
  if (v275)
  {

    v248 = &v485;
    goto LABEL_186;
  }

  if (v276)
  {
    v277 = v482;
    sub_1D72647EC();
    *&v482 = v277;
  }

  sub_1D5D2CFE8(v457, type metadata accessor for FormatVersionRequirement);

LABEL_86:
  (v481)(v455, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAB00;
  v485 = xmmword_1D72BAB00;
  v486 = 0;
  v279 = *v483;
  v278 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v280 = swift_allocObject();
  v282 = v280;
  *(v280 + 16) = v479;
  *(v280 + 32) = v488;
  *(v280 + 40) = v279;
  *(v280 + 48) = v278;
  if ((~v452 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v455, type metadata accessor for FormatVersionRequirement);
    goto LABEL_93;
  }

  v283 = v452;
  v488 = v452;
  MEMORY[0x1EEE9AC00](v280, v281);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v282;

  sub_1D66B21E4(v283);
  v284 = v482;
  v285 = sub_1D663B9D4(v455, 14, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v284;
  if (v284)
  {

    v248 = &v483;
    goto LABEL_186;
  }

  if (v285)
  {
    v286 = v482;
    sub_1D72647EC();
    *&v482 = v286;
  }

  sub_1D5D2CFE8(v455, type metadata accessor for FormatVersionRequirement);

LABEL_93:
  (v481)(v453, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAB10;
  v485 = xmmword_1D72BAB10;
  v486 = 0;
  v288 = *v483;
  v287 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v289 = swift_allocObject();
  v291 = v289;
  *(v289 + 16) = v479;
  *(v289 + 32) = v488;
  *(v289 + 40) = v288;
  *(v289 + 48) = v287;
  if ((~v450 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v453, type metadata accessor for FormatVersionRequirement);
    goto LABEL_100;
  }

  v292 = v450;
  v488 = v450;
  MEMORY[0x1EEE9AC00](v289, v290);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v291;

  sub_1D66B21E4(v292);
  v293 = v482;
  v294 = sub_1D663B9D4(v453, 15, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v293;
  if (v293)
  {

    v248 = &v482;
    goto LABEL_186;
  }

  if (v294)
  {
    v295 = v482;
    sub_1D72647EC();
    *&v482 = v295;
  }

  sub_1D5D2CFE8(v453, type metadata accessor for FormatVersionRequirement);

LABEL_100:
  (v481)(v451, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAB20;
  v485 = xmmword_1D72BAB20;
  v486 = 0;
  v297 = *v483;
  v296 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v298 = swift_allocObject();
  v300 = v298;
  *(v298 + 16) = v479;
  *(v298 + 32) = v488;
  *(v298 + 40) = v297;
  *(v298 + 48) = v296;
  if ((~v448 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v451, type metadata accessor for FormatVersionRequirement);
    goto LABEL_107;
  }

  v301 = v448;
  v488 = v448;
  MEMORY[0x1EEE9AC00](v298, v299);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v300;

  sub_1D66B21E4(v301);
  v302 = v482;
  v303 = sub_1D663B9D4(v451, 16, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v302;
  if (v302)
  {

    v248 = &v481;
    goto LABEL_186;
  }

  if (v303)
  {
    v304 = v482;
    sub_1D72647EC();
    *&v482 = v304;
  }

  sub_1D5D2CFE8(v451, type metadata accessor for FormatVersionRequirement);

LABEL_107:
  (v481)(v449, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAB30;
  v485 = xmmword_1D72BAB30;
  v486 = 0;
  v306 = *v483;
  v305 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v307 = swift_allocObject();
  v309 = v307;
  *(v307 + 16) = v479;
  *(v307 + 32) = v488;
  *(v307 + 40) = v306;
  *(v307 + 48) = v305;
  if ((~v446 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v449, type metadata accessor for FormatVersionRequirement);
    goto LABEL_114;
  }

  v310 = v446;
  v488 = v446;
  MEMORY[0x1EEE9AC00](v307, v308);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v309;

  sub_1D66B21E4(v310);
  v311 = v482;
  v312 = sub_1D663B9D4(v449, 17, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v311;
  if (v311)
  {

    v248 = v480;
    goto LABEL_186;
  }

  if (v312)
  {
    v313 = v482;
    sub_1D72647EC();
    *&v482 = v313;
  }

  sub_1D5D2CFE8(v449, type metadata accessor for FormatVersionRequirement);

LABEL_114:
  (v481)(v447, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAB40;
  v485 = xmmword_1D72BAB40;
  v486 = 0;
  v315 = *v483;
  v314 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v316 = swift_allocObject();
  v318 = v316;
  *(v316 + 16) = v479;
  *(v316 + 32) = v488;
  *(v316 + 40) = v315;
  *(v316 + 48) = v314;
  if ((~v444 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v447, type metadata accessor for FormatVersionRequirement);
    goto LABEL_121;
  }

  v319 = v444;
  v488 = v444;
  MEMORY[0x1EEE9AC00](v316, v317);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v318;

  sub_1D66B21E4(v319);
  v320 = v482;
  v321 = sub_1D663B9D4(v447, 18, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v320;
  if (v320)
  {

    v248 = &v479;
    goto LABEL_186;
  }

  if (v321)
  {
    v322 = v482;
    sub_1D72647EC();
    *&v482 = v322;
  }

  sub_1D5D2CFE8(v447, type metadata accessor for FormatVersionRequirement);

LABEL_121:
  (v481)(v445, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAB50;
  v485 = xmmword_1D72BAB50;
  v486 = 0;
  v324 = *v483;
  v323 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v325 = swift_allocObject();
  v327 = v325;
  *(v325 + 16) = v479;
  *(v325 + 32) = v488;
  *(v325 + 40) = v324;
  *(v325 + 48) = v323;
  if ((~v442 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v445, type metadata accessor for FormatVersionRequirement);
    goto LABEL_128;
  }

  v328 = v442;
  v488 = v442;
  MEMORY[0x1EEE9AC00](v325, v326);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v327;

  sub_1D66B21E4(v328);
  v329 = v482;
  v330 = sub_1D663B9D4(v445, 19, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v329;
  if (v329)
  {

    v248 = &v477;
    goto LABEL_186;
  }

  if (v330)
  {
    v331 = v482;
    sub_1D72647EC();
    *&v482 = v331;
  }

  sub_1D5D2CFE8(v445, type metadata accessor for FormatVersionRequirement);

LABEL_128:
  (v481)(v443, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAB60;
  v485 = xmmword_1D72BAB60;
  v486 = 0;
  v333 = *v483;
  v332 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v334 = swift_allocObject();
  v336 = v334;
  *(v334 + 16) = v479;
  *(v334 + 32) = v488;
  *(v334 + 40) = v333;
  *(v334 + 48) = v332;
  if ((~v440 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v443, type metadata accessor for FormatVersionRequirement);
    goto LABEL_135;
  }

  v337 = v440;
  v488 = v440;
  MEMORY[0x1EEE9AC00](v334, v335);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v336;

  sub_1D66B21E4(v337);
  v338 = v482;
  v339 = sub_1D663B9D4(v443, 20, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v338;
  if (v338)
  {

    v248 = &v475;
    goto LABEL_186;
  }

  if (v339)
  {
    v340 = v482;
    sub_1D72647EC();
    *&v482 = v340;
  }

  sub_1D5D2CFE8(v443, type metadata accessor for FormatVersionRequirement);

LABEL_135:
  (v481)(v441, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAB70;
  v485 = xmmword_1D72BAB70;
  v486 = 0;
  v342 = *v483;
  v341 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v343 = swift_allocObject();
  v345 = v343;
  *(v343 + 16) = v479;
  *(v343 + 32) = v488;
  *(v343 + 40) = v342;
  *(v343 + 48) = v341;
  if ((~v439 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v441, type metadata accessor for FormatVersionRequirement);
    goto LABEL_142;
  }

  v346 = v439;
  v488 = v439;
  MEMORY[0x1EEE9AC00](v343, v344);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v345;

  sub_1D66B21E4(v346);
  v347 = v482;
  v348 = sub_1D663B9D4(v441, 21, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v347;
  if (v347)
  {

    v248 = &v473;
    goto LABEL_186;
  }

  if (v348)
  {
    v349 = v482;
    sub_1D72647EC();
    *&v482 = v349;
  }

  sub_1D5D2CFE8(v441, type metadata accessor for FormatVersionRequirement);

LABEL_142:
  (v481)(v438, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAB80;
  v485 = xmmword_1D72BAB80;
  v486 = 0;
  v351 = *v483;
  v350 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v352 = swift_allocObject();
  v354 = v352;
  *(v352 + 16) = v479;
  *(v352 + 32) = v488;
  *(v352 + 40) = v351;
  *(v352 + 48) = v350;
  if ((~v436 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v438, type metadata accessor for FormatVersionRequirement);
    goto LABEL_149;
  }

  v355 = v436;
  v488 = v436;
  MEMORY[0x1EEE9AC00](v352, v353);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v354;

  sub_1D66B21E4(v355);
  v356 = v482;
  v357 = sub_1D663B9D4(v438, 22, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v356;
  if (v356)
  {

    v248 = &v470;
    goto LABEL_186;
  }

  if (v357)
  {
    v358 = v482;
    sub_1D72647EC();
    *&v482 = v358;
  }

  sub_1D5D2CFE8(v438, type metadata accessor for FormatVersionRequirement);

LABEL_149:
  (v481)(v437, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BAB90;
  v485 = xmmword_1D72BAB90;
  v486 = 0;
  v360 = *v483;
  v359 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v361 = swift_allocObject();
  v363 = v361;
  *(v361 + 16) = v479;
  *(v361 + 32) = v488;
  *(v361 + 40) = v360;
  *(v361 + 48) = v359;
  if ((~v434 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v437, type metadata accessor for FormatVersionRequirement);
    goto LABEL_156;
  }

  v364 = v434;
  v488 = v434;
  MEMORY[0x1EEE9AC00](v361, v362);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v363;

  sub_1D66B21E4(v364);
  v365 = v482;
  v366 = sub_1D663B9D4(v437, 23, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v365;
  if (v365)
  {

    v248 = &v469;
    goto LABEL_186;
  }

  if (v366)
  {
    v367 = v482;
    sub_1D72647EC();
    *&v482 = v367;
  }

  sub_1D5D2CFE8(v437, type metadata accessor for FormatVersionRequirement);

LABEL_156:
  (v481)(v435, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BABA0;
  v485 = xmmword_1D72BABA0;
  v486 = 0;
  v369 = *v483;
  v368 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v370 = swift_allocObject();
  v372 = v370;
  *(v370 + 16) = v479;
  *(v370 + 32) = v488;
  *(v370 + 40) = v369;
  *(v370 + 48) = v368;
  if ((~v433 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v435, type metadata accessor for FormatVersionRequirement);
    goto LABEL_163;
  }

  v373 = v433;
  v488 = v433;
  MEMORY[0x1EEE9AC00](v370, v371);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v372;

  sub_1D66B21E4(v373);
  v374 = v482;
  v375 = sub_1D663B9D4(v435, 24, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v374;
  if (v374)
  {

    v248 = &v467;
    goto LABEL_186;
  }

  if (v375)
  {
    v376 = v482;
    sub_1D72647EC();
    *&v482 = v376;
  }

  sub_1D5D2CFE8(v435, type metadata accessor for FormatVersionRequirement);

LABEL_163:
  (v481)(v431, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BABB0;
  v485 = xmmword_1D72BABB0;
  v486 = 0;
  v378 = *v483;
  v377 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v379 = swift_allocObject();
  v381 = v379;
  *(v379 + 16) = v479;
  *(v379 + 32) = v488;
  *(v379 + 40) = v378;
  *(v379 + 48) = v377;
  if ((~v429 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v431, type metadata accessor for FormatVersionRequirement);
    goto LABEL_170;
  }

  v382 = v429;
  v488 = v429;
  MEMORY[0x1EEE9AC00](v379, v380);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v381;

  sub_1D66B21E4(v382);
  v383 = v482;
  v384 = sub_1D663B9D4(v431, 25, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v383;
  if (v383)
  {

    v248 = &v463;
    goto LABEL_186;
  }

  if (v384)
  {
    v385 = v482;
    sub_1D72647EC();
    *&v482 = v385;
  }

  sub_1D5D2CFE8(v431, type metadata accessor for FormatVersionRequirement);

LABEL_170:
  (v481)(v432, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BABC0;
  v485 = xmmword_1D72BABC0;
  v486 = 0;
  v387 = *v483;
  v386 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v388 = swift_allocObject();
  v390 = v388;
  *(v388 + 16) = v479;
  *(v388 + 32) = v488;
  *(v388 + 40) = v387;
  *(v388 + 48) = v386;
  if ((~v430 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v432, type metadata accessor for FormatVersionRequirement);
    goto LABEL_177;
  }

  v391 = v430;
  v488 = v430;
  MEMORY[0x1EEE9AC00](v388, v389);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v390;

  sub_1D66B21E4(v391);
  v392 = v482;
  v393 = sub_1D663B9D4(v432, 26, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v392;
  if (v392)
  {

    v248 = &v464;
    goto LABEL_186;
  }

  if (v393)
  {
    v394 = v482;
    sub_1D72647EC();
    *&v482 = v394;
  }

  sub_1D5D2CFE8(v432, type metadata accessor for FormatVersionRequirement);

LABEL_177:
  (v481)(v425, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BABD0;
  v485 = xmmword_1D72BABD0;
  v486 = 0;
  v396 = *v483;
  v395 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v397 = swift_allocObject();
  v399 = v397;
  *(v397 + 16) = v479;
  *(v397 + 32) = v488;
  *(v397 + 40) = v396;
  *(v397 + 48) = v395;
  if ((~v423 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v425, type metadata accessor for FormatVersionRequirement);
    goto LABEL_182;
  }

  v400 = v423;
  v488 = v423;
  MEMORY[0x1EEE9AC00](v397, v398);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v399;

  sub_1D66B21E4(v400);
  v401 = v482;
  sub_1D663B9D4(v425, 27, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v401;
  if (v401)
  {

    v248 = &v457;
    goto LABEL_186;
  }

  sub_1D72647EC();
  *&v482 = 0;

  sub_1D5D2CFE8(v425, type metadata accessor for FormatVersionRequirement);

LABEL_182:
  (v481)(v427, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v479 = xmmword_1D72BABE0;
  v485 = xmmword_1D72BABE0;
  v486 = 0;
  v403 = *v483;
  v402 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v404 = swift_allocObject();
  v406 = v404;
  *(v404 + 16) = v479;
  *(v404 + 32) = v488;
  *(v404 + 40) = v403;
  *(v404 + 48) = v402;
  if ((~v424 & 0xF000000000000007) == 0)
  {

    sub_1D5D2CFE8(v427, type metadata accessor for FormatVersionRequirement);
    goto LABEL_189;
  }

  v407 = v424;
  v488 = v424;
  MEMORY[0x1EEE9AC00](v404, v405);
  v419[-4] = sub_1D5B4AA6C;
  v419[-3] = 0;
  v417 = sub_1D6708B50;
  v418 = v406;

  sub_1D66B21E4(v407);
  v408 = v482;
  sub_1D663B9D4(v427, 28, 0, 0, sub_1D615B4A4, &v419[-6]);
  *&v482 = v408;
  if (v408)
  {

    v248 = &v459;
    goto LABEL_186;
  }

  sub_1D72647EC();
  *&v482 = 0;

  sub_1D5D2CFE8(v427, type metadata accessor for FormatVersionRequirement);

LABEL_189:
  (v481)(v428, v480[0], v422);
  swift_storeEnumTagMultiPayload();
  v481 = xmmword_1D72BABF0;
  v485 = xmmword_1D72BABF0;
  v486 = 0;
  v410 = *v483;
  v409 = *(v483 + 1);
  LOBYTE(v488) = 0;
  v411 = swift_allocObject();
  v413 = v411;
  *(v411 + 16) = v481;
  *(v411 + 32) = v488;
  *(v411 + 40) = v410;
  *(v411 + 48) = v409;
  if ((~v426 & 0xF000000000000007) != 0)
  {
    v414 = v426;
    v488 = v426;
    MEMORY[0x1EEE9AC00](v411, v412);
    v419[-4] = sub_1D5B4AA6C;
    v419[-3] = 0;
    v417 = sub_1D6708B50;
    v418 = v413;

    sub_1D66B21E4(v414);
    v415 = v482;
    v416 = sub_1D663B9D4(v428, 29, 0, 0, sub_1D615B4A4, &v419[-6]);
    if (v415)
    {
    }

    else
    {
      if ((v416 & 1) == 0)
      {

        sub_1D5D2CFE8(v428, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2CFE8(v234, sub_1D66B2474);
      }

      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v428, type metadata accessor for FormatVersionRequirement);
    v225 = v234;
LABEL_41:
    sub_1D5D2CFE8(v225, sub_1D66B2474);
  }

  sub_1D5D2CFE8(v428, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v234, sub_1D66B2474);
}

uint64_t sub_1D657417C(char a1)
{
  result = 0x556F656469563178;
  switch(a1)
  {
    case 1:
      result = 0x556F656469563278;
      break;
    case 2:
      result = 0x556F656469563378;
      break;
    case 4:
      result = 0x556F656469563278;
      break;
    case 5:
      result = 0x556F656469563378;
      break;
    case 7:
      result = 0x556F656469563278;
      break;
    case 8:
      result = 0x556F656469563378;
      break;
    case 10:
      result = 0x556F656469563278;
      break;
    case 11:
      result = 0x556F656469563378;
      break;
    case 13:
      result = 0x556F656469563278;
      break;
    case 14:
      result = 0x556F656469563378;
      break;
    case 15:
      result = 0x556567616D493178;
      break;
    case 16:
      result = 0x556567616D493278;
      break;
    case 17:
      result = 0x556567616D493378;
      break;
    case 18:
      result = 0x556567616D493178;
      break;
    case 19:
      result = 0x556567616D493278;
      break;
    case 20:
      result = 0x556567616D493378;
      break;
    case 21:
      result = 0x556567616D493178;
      break;
    case 22:
      result = 0x556567616D493278;
      break;
    case 23:
      result = 0x556567616D493378;
      break;
    case 24:
      result = 0x556567616D493178;
      break;
    case 25:
      result = 0x556567616D493278;
      break;
    case 26:
      result = 0x556567616D493378;
      break;
    case 27:
      result = 0x556567616D493178;
      break;
    case 28:
      result = 0x556567616D493278;
      break;
    case 29:
      result = 0x556567616D493378;
      break;
    case 30:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D65743B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B38C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65743F4(uint64_t a1)
{
  v2 = sub_1D66B23CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6574430(uint64_t a1)
{
  v2 = sub_1D66B23CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRepeatNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v196 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v200 = &v196 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v201 = &v196 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v202 = &v196 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v203 = &v196 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v204 = &v196 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v209 = &v196 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v196 - v29;
  sub_1D66B4104();
  v215 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v196 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D5CD3148();
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF256A8, sub_1D5CD3148);
  v216 = v34;
  sub_1D5D2EE70(v4, v38, v40, v35, v4, v38, &type metadata for FormatVersions.JazzkonG, v36, v34, v39, &off_1F51F6BF8);
  swift_beginAccess();
  v41 = v2[2];
  v42 = v2[3];
  v212 = v2;
  v43 = qword_1EDF31EA8;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD18);
  v46 = *(v44 - 8);
  v47 = *(v46 + 16);
  v48 = v46 + 16;
  v211 = v44;
  v47(v30, v45, v44);
  v210 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v49 = sub_1D725895C();
  v50 = (*(*(v49 - 8) + 48))(v8, 1, v49);
  v206 = v45;
  v208 = v47;
  v207 = v48;
  if (v50 == 1)
  {
    v199 = v41;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v52 = v215;
    v51 = v216;
    v53 = &v216[*(v215 + 11)];
    v55 = *v53;
    v54 = *(v53 + 1);
    LOBYTE(v219) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = 0;
    *(v56 + 32) = v219;
    *(v56 + 40) = v55;
    *(v56 + 48) = v54;
    sub_1D66B4198();
    v58 = v57;
    sub_1D5B58B84(&qword_1EDF03728, sub_1D66B4198);

    v205 = v58;
    v59 = sub_1D72647CC();
    LOBYTE(v219) = 0;
    v60 = swift_allocObject();
    *(v60 + 24) = 0;
    *(v60 + 32) = 0;
    *(v60 + 16) = v59;
    *(v60 + 40) = v219;
    v61 = __swift_project_boxed_opaque_existential_1((v51 + *(v52 + 9)), *(v51 + *(v52 + 9) + 24));
    *&v214 = &v196;
    MEMORY[0x1EEE9AC00](v61, v62);
    MEMORY[0x1EEE9AC00](v63, v64);
    *(&v196 - 4) = sub_1D5B4AA6C;
    *(&v196 - 3) = 0;
    v194 = sub_1D66B422C;
    v195 = v56;
    v65 = v213;
    v67 = sub_1D5D2F7A4(v30, sub_1D615B49C, v66, sub_1D615B4A4, (&v196 - 6));
    if (v65)
    {
      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

      v68 = v51;
      return sub_1D5D2CFE8(v68, sub_1D66B4104);
    }

    v92 = v67;

    if (v92)
    {
      v219 = 0uLL;
      v220 = 0;
      *&v217 = v199;
      *(&v217 + 1) = v42;
      sub_1D72647EC();

      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
      v45 = v206;
      v47 = v208;
      v213 = 0;
    }

    else
    {
      v213 = 0;
      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

      v45 = v206;
      v47 = v208;
    }
  }

  else
  {
    sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v52 = v215;
  }

  v69 = v212[4];
  v70 = *(v212 + 40);
  v71 = v209;
  v47(v209, v45, v211);
  swift_storeEnumTagMultiPayload();
  *&v217 = v69;
  BYTE8(v217) = v70;
  v214 = xmmword_1D728CF30;
  v219 = xmmword_1D728CF30;
  v220 = 0;
  v72 = v216;
  v73 = &v216[*(v52 + 11)];
  v75 = *v73;
  v74 = *(v73 + 1);
  LOBYTE(v221) = 0;
  v76 = swift_allocObject();
  v205 = &v196;
  *(v76 + 16) = v214;
  *(v76 + 32) = v221;
  *(v76 + 40) = v75;
  *(v76 + 48) = v74;
  MEMORY[0x1EEE9AC00](v76, v77);
  *(&v196 - 4) = sub_1D5B4AA6C;
  *(&v196 - 3) = 0;
  v194 = sub_1D6708B54;
  v195 = v78;
  LOBYTE(v221) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = v214;
  *(v79 + 32) = v221;
  v197 = v75;
  *(v79 + 40) = v75;
  *(v79 + 48) = v74;
  sub_1D66B4198();
  v81 = v80;
  v82 = sub_1D5B58B84(&qword_1EDF03728, sub_1D66B4198);
  swift_retain_n();
  v198 = v81;
  v199 = v82;
  v83 = sub_1D72647CC();
  LOBYTE(v221) = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = v214;
  *(v84 + 40) = v221;
  v85 = (v72 + *(v215 + 9));
  v86 = __swift_project_boxed_opaque_existential_1(v85, v85[3]);
  MEMORY[0x1EEE9AC00](v86, v87);
  MEMORY[0x1EEE9AC00](v88, v89);
  *(&v196 - 4) = sub_1D615B4A4;
  *(&v196 - 3) = (&v196 - 6);
  v194 = sub_1D6708B54;
  v195 = v79;
  v90 = v213;
  sub_1D5D2BC70(v71, sub_1D615B49C, v91, sub_1D615B4A4, (&v196 - 6));
  if (v90)
  {
    sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

LABEL_23:
    v68 = v216;
    return sub_1D5D2CFE8(v68, sub_1D66B4104);
  }

  v215 = v85;
  v196 = v74;

  sub_1D66B42BC();
  sub_1D72647EC();
  sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

  v93 = v212[6];
  v94 = v204;
  v95 = v206;
  v96 = v208;
  v208(v204, v206, v211);
  swift_storeEnumTagMultiPayload();
  v214 = xmmword_1D7297410;
  v219 = xmmword_1D7297410;
  v220 = 0;
  LOBYTE(v217) = 0;
  v97 = swift_allocObject();
  v99 = v97;
  *(v97 + 16) = v214;
  *(v97 + 32) = v217;
  v100 = v196;
  *(v97 + 40) = v197;
  *(v97 + 48) = v100;
  if (v93)
  {
    v213 = &v196;
    *&v217 = v93;
    MEMORY[0x1EEE9AC00](v97, v98);
    v102 = v101;
    *(&v196 - 4) = sub_1D5B4AA6C;
    *(&v196 - 3) = 0;
    v194 = sub_1D6708B54;
    v195 = v99;
    LOBYTE(v221) = 0;
    v103 = swift_allocObject();
    *(v103 + 16) = v214;
    *(v103 + 32) = v221;
    *(v103 + 40) = v102;
    *(v103 + 48) = v100;
    swift_retain_n();

    v104 = sub_1D72647CC();
    LOBYTE(v221) = 0;
    v105 = swift_allocObject();
    *(v105 + 16) = v104;
    *(v105 + 24) = v214;
    *(v105 + 40) = v221;
    v106 = __swift_project_boxed_opaque_existential_1(v215, v215[3]);
    MEMORY[0x1EEE9AC00](v106, v107);
    MEMORY[0x1EEE9AC00](v108, v109);
    *(&v196 - 4) = sub_1D615B4A4;
    *(&v196 - 3) = (&v196 - 6);
    v194 = sub_1D6708B54;
    v195 = v103;
    v111 = sub_1D5D2F7A4(v94, sub_1D615B49C, v110, sub_1D615B4A4, (&v196 - 6));
    v112 = v111;

    if (v112)
    {
      sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
      sub_1D668AFFC();
      sub_1D72647EC();
      v95 = v206;
      v96 = v208;
      v213 = 0;

      sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v213 = 0;

      sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
      v95 = v206;
      v96 = v208;
    }
  }

  else
  {
    v213 = 0;

    sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
  }

  v113 = v215;
  v114 = v212[7];
  v115 = v203;
  v96(v203, v95, v211);
  swift_storeEnumTagMultiPayload();
  v214 = xmmword_1D72BAA60;
  v219 = xmmword_1D72BAA60;
  v220 = 0;
  LOBYTE(v217) = 0;
  v116 = swift_allocObject();
  v118 = v116;
  *(v116 + 16) = v214;
  *(v116 + 32) = v217;
  v119 = v196;
  *(v116 + 40) = v197;
  *(v116 + 48) = v119;
  if (v114)
  {
    v209 = &v196;
    *&v217 = v114;
    MEMORY[0x1EEE9AC00](v116, v117);
    v121 = v120;
    *(&v196 - 4) = sub_1D5B4AA6C;
    *(&v196 - 3) = 0;
    v194 = sub_1D6708B54;
    v195 = v118;
    LOBYTE(v221) = 0;
    v122 = swift_allocObject();
    *(v122 + 16) = v214;
    *(v122 + 32) = v221;
    *(v122 + 40) = v121;
    *(v122 + 48) = v196;
    swift_retain_n();

    v123 = sub_1D72647CC();
    LOBYTE(v221) = 0;
    v124 = swift_allocObject();
    *(v124 + 16) = v123;
    *(v124 + 24) = v214;
    *(v124 + 40) = v221;
    v125 = __swift_project_boxed_opaque_existential_1(v113, v113[3]);
    MEMORY[0x1EEE9AC00](v125, v126);
    MEMORY[0x1EEE9AC00](v127, v128);
    *(&v196 - 4) = sub_1D615B4A4;
    *(&v196 - 3) = (&v196 - 6);
    v194 = sub_1D6708B54;
    v195 = v122;
    v129 = v213;
    v131 = sub_1D5D2F7A4(v115, sub_1D615B49C, v130, sub_1D615B4A4, (&v196 - 6));
    if (v129)
    {

      v132 = v115;
LABEL_22:
      sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
      goto LABEL_23;
    }

    v134 = v131;

    if (v134)
    {
      sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
      sub_1D668AFFC();
      sub_1D72647EC();
      v95 = v206;
      v96 = v208;
      v213 = 0;

      sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v213 = 0;

      sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);
      v95 = v206;
      v96 = v208;
    }
  }

  else
  {

    sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);
  }

  v135 = v212[8];
  v136 = v202;
  v96(v202, v95, v211);
  swift_storeEnumTagMultiPayload();
  v214 = xmmword_1D72BAA70;
  v219 = xmmword_1D72BAA70;
  v220 = 0;
  LOBYTE(v217) = 0;
  v137 = swift_allocObject();
  v139 = v137;
  *(v137 + 16) = v214;
  *(v137 + 32) = v217;
  v140 = v197;
  v141 = v196;
  *(v137 + 40) = v197;
  *(v137 + 48) = v141;
  if (v135)
  {
    v209 = &v196;
    *&v217 = v135;
    MEMORY[0x1EEE9AC00](v137, v138);
    *(&v196 - 4) = sub_1D5B4AA6C;
    *(&v196 - 3) = 0;
    v194 = sub_1D6708B54;
    v195 = v139;
    LOBYTE(v221) = 0;
    v142 = swift_allocObject();
    *(v142 + 16) = v214;
    *(v142 + 32) = v221;
    *(v142 + 40) = v140;
    *(v142 + 48) = v196;
    swift_retain_n();

    v143 = sub_1D72647CC();
    LOBYTE(v221) = 0;
    v144 = swift_allocObject();
    *(v144 + 16) = v143;
    *(v144 + 24) = v214;
    *(v144 + 40) = v221;
    v145 = __swift_project_boxed_opaque_existential_1(v215, v215[3]);
    MEMORY[0x1EEE9AC00](v145, v146);
    MEMORY[0x1EEE9AC00](v147, v148);
    *(&v196 - 4) = sub_1D615B4A4;
    *(&v196 - 3) = (&v196 - 6);
    v194 = sub_1D6708B54;
    v195 = v142;
    v149 = v213;
    v151 = sub_1D5D2F7A4(v136, sub_1D615B49C, v150, sub_1D615B4A4, (&v196 - 6));
    if (v149)
    {

      v132 = v136;
      goto LABEL_22;
    }

    v153 = v151;

    if (v153)
    {
      sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
      sub_1D668AFFC();
      sub_1D72647EC();
      v95 = v206;
      v96 = v208;
      v213 = 0;

      sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v213 = 0;

      sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
      v95 = v206;
      v96 = v208;
    }

    v152 = v196;
  }

  else
  {
    v152 = v196;

    sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
  }

  v154 = v212[9];
  v155 = v212[10];
  v156 = v201;
  v96(v201, v95, v211);
  swift_storeEnumTagMultiPayload();
  v214 = xmmword_1D72BAA80;
  v219 = xmmword_1D72BAA80;
  v220 = 0;
  LOBYTE(v217) = 0;
  v157 = swift_allocObject();
  v159 = v157;
  v160 = v155;
  *(v157 + 16) = v214;
  *(v157 + 32) = v217;
  v161 = v197;
  *(v157 + 40) = v197;
  *(v157 + 48) = v152;
  if (!v160)
  {
    v174 = v95;

    sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);

    v165 = v215;
    goto LABEL_48;
  }

  v209 = &v196;
  *&v217 = v154;
  *(&v217 + 1) = v160;
  MEMORY[0x1EEE9AC00](v157, v158);
  v205 = &v196 - 6;
  *(&v196 - 4) = sub_1D5B4AA6C;
  *(&v196 - 3) = 0;
  v194 = sub_1D6708B54;
  v195 = v159;
  LOBYTE(v221) = 0;
  v162 = swift_allocObject();
  *(v162 + 16) = v214;
  *(v162 + 32) = v221;
  *(v162 + 40) = v161;
  *(v162 + 48) = v152;
  swift_retain_n();

  v163 = sub_1D72647CC();
  LOBYTE(v221) = 0;
  v164 = swift_allocObject();
  *(v164 + 16) = v163;
  *(v164 + 24) = v214;
  *(v164 + 40) = v221;
  v165 = v215;
  v166 = __swift_project_boxed_opaque_existential_1(v215, v215[3]);
  MEMORY[0x1EEE9AC00](v166, v167);
  MEMORY[0x1EEE9AC00](v168, v169);
  v170 = v205;
  *(&v196 - 4) = sub_1D615B4A4;
  *(&v196 - 3) = v170;
  v194 = sub_1D6708B54;
  v195 = v162;
  v171 = v213;
  v173 = sub_1D5D2F7A4(v156, sub_1D615B49C, v172, sub_1D615B4A4, (&v196 - 6));
  v213 = v171;
  if (!v171)
  {
    v175 = v173;

    if (v175)
    {
      v176 = v213;
      sub_1D72647EC();
      v213 = v176;
      v174 = v206;
      if (v176)
      {

        goto LABEL_40;
      }

      sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);
      v174 = v206;
    }

    v152 = v196;
LABEL_48:
    v177 = v212;
    swift_beginAccess();
    v178 = v177[11];
    v179 = v200;
    v208(v200, v174, v211);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v217) = 0;
    v180 = swift_allocObject();
    v214 = xmmword_1D72BAA90;
    *(v180 + 16) = xmmword_1D72BAA90;
    *(v180 + 32) = v217;
    *(v180 + 40) = v197;
    *(v180 + 48) = v152;

    v181 = v216;
    v182 = sub_1D72647CC();
    LOBYTE(v217) = 0;
    v183 = swift_allocObject();
    *(v183 + 16) = v182;
    *(v183 + 24) = v214;
    *(v183 + 40) = v217;
    v184 = __swift_project_boxed_opaque_existential_1(v165, v165[3]);
    MEMORY[0x1EEE9AC00](v184, v185);
    MEMORY[0x1EEE9AC00](v186, v187);
    *(&v196 - 4) = sub_1D5B4AA6C;
    *(&v196 - 3) = 0;
    v194 = sub_1D6708B54;
    v195 = v180;
    v188 = v213;
    v190 = sub_1D5D2F7A4(v179, sub_1D615B49C, v189, sub_1D615B4A4, (&v196 - 6));
    if (v188)
    {
      sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);

      v68 = v181;
      return sub_1D5D2CFE8(v68, sub_1D66B4104);
    }

    v191 = v190;

    if (v191)
    {
      v217 = v214;
      v218 = 0;
      v221 = v178;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      v192 = v216;
      sub_1D72647EC();
      v193 = v200;

      sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
      v68 = v192;
      return sub_1D5D2CFE8(v68, sub_1D66B4104);
    }

    sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);

    goto LABEL_23;
  }

LABEL_40:
  sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v216, sub_1D66B4104);
}

uint64_t sub_1D6576384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B46C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65763BC(uint64_t a1)
{
  v2 = sub_1D5CD3220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65763F8(uint64_t a1)
{
  v2 = sub_1D5CD3220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatRepeatNodeBindIteration.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  sub_1D66B4310();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B43A4();
  sub_1D5B58B84(&qword_1EDF0C440, sub_1D66B43A4);
  sub_1D7264B0C();
  if (v2)
  {
    v10 = v2;
LABEL_3:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1D7264AFC();
  v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

  if (v14)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_9;
        }
      }

      v19 = *(v17 - 2);
      v18 = *(v17 - 1);

      v20 = sub_1D6628490(0x73776F726874, 0xE600000000000000);
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v9, v5);
      goto LABEL_3;
    }

LABEL_9:
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (sub_1D726434C())
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    sub_1D726431C();
    (*(v11 + 8))(v9, v5);
    v22 = v32;
  }

  else
  {
    (*(v11 + 8))(v9, v5);
    v22 = 1;
  }

  *v12 = v22;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRepeatNodeBindIteration.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66B4524();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D66B43A4();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF0C440, sub_1D66B43A4);
  sub_1D5D2EE70(&type metadata for FormatRepeatNodeBindIteration, v17, v19, v14, &type metadata for FormatRepeatNodeBindIteration, v17, &type metadata for FormatVersions.StarSkyC, v15, v12, v18, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD00);
  (*(*(v20 - 8) + 16))(v7, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if ((v13 & 1) == 0)
  {
    v22 = &v12[*(v9 + 44)];
    v24 = *v22;
    v23 = *(v22 + 1);
    LOBYTE(v41) = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v41;
    *(v25 + 40) = v24;
    *(v25 + 48) = v23;
    sub_1D66B45B8();
    v27 = v26;
    sub_1D5B58B84(&qword_1EDF02DE8, sub_1D66B45B8);

    v40 = v27;
    v28 = sub_1D72647CC();
    LOBYTE(v41) = 0;
    v29 = swift_allocObject();
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    *(v29 + 16) = v28;
    *(v29 + 40) = v41;
    v30 = __swift_project_boxed_opaque_existential_1(&v12[*(v9 + 36)], *&v12[*(v9 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v30, v31);
    MEMORY[0x1EEE9AC00](v32, v33);
    *(&v40 - 4) = sub_1D5B4AA6C;
    *(&v40 - 3) = 0;
    v38 = sub_1D66B464C;
    v39 = v25;
    v35 = sub_1D5D2F7A4(v7, sub_1D615B49C, v34, sub_1D615B4A4, (&v40 - 6));
    if (v2)
    {
      sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v12, sub_1D66B4524);
    }

    v37 = v35;

    if (v37)
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      sub_1D72647EC();
    }
  }

  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v12, sub_1D66B4524);
}

uint64_t sub_1D6576BE4()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x73776F726874;
  }
}

uint64_t sub_1D6576C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73776F726874 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6576CFC(uint64_t a1)
{
  v2 = sub_1D66B447C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6576D38(uint64_t a1)
{
  v2 = sub_1D66B447C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatResetNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v127 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v131 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v134 = &v127 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v135 = &v127 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v127 - v20;
  sub_1D66B516C();
  *&v139 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5E1A4C4();
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EDF24B88, sub_1D5E1A4C4);
  v141 = v25;
  sub_1D5D2EE70(v4, v29, v31, v26, v4, v29, &type metadata for FormatVersions.SydroF, v27, v25, v30, &off_1F51F6C58);
  swift_beginAccess();
  v32 = v2[2];
  v33 = v2[3];
  v138 = v2;
  v34 = qword_1EDF31ED8;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_1D725BD1C();
  v36 = __swift_project_value_buffer(v35, qword_1EDFFCD68);
  v37 = *(v35 - 8);
  v38 = *(v37 + 16);
  v137 = v37 + 16;
  v38(v21, v36, v35);
  v136 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v39 = sub_1D725895C();
  v40 = (*(*(v39 - 8) + 48))(v8, 1, v39);
  v132 = v36;
  v133 = v38;
  if (v40 == 1)
  {
    v128 = v32;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v41 = v139;
    v42 = v141;
    v43 = &v141[*(v139 + 44)];
    v44 = *v43;
    v45 = *(v43 + 1);
    LOBYTE(v147) = 0;
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = v147;
    *(v46 + 40) = v44;
    *(v46 + 48) = v45;
    sub_1D5E1A488(0);
    v48 = v47;
    v49 = sub_1D5B58B84(&qword_1EDF02A38, sub_1D5E1A488);

    v129 = v48;
    v127 = v49;
    v50 = sub_1D72647CC();
    LOBYTE(v147) = 0;
    v51 = swift_allocObject();
    *(v51 + 24) = 0;
    *(v51 + 32) = 0;
    *(v51 + 16) = v50;
    *(v51 + 40) = v147;
    v52 = __swift_project_boxed_opaque_existential_1((v42 + *(v41 + 36)), *(v42 + *(v41 + 36) + 24));
    MEMORY[0x1EEE9AC00](v52, v53);
    MEMORY[0x1EEE9AC00](v54, v55);
    *(&v127 - 4) = sub_1D5B4AA6C;
    *(&v127 - 3) = 0;
    v125 = sub_1D66B5200;
    v126 = v46;
    v56 = v140;
    v58 = sub_1D5D2F7A4(v21, sub_1D615B49C, v57, sub_1D615B4A4, (&v127 - 6));
    if (v56)
    {
      sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v42, sub_1D66B516C);
    }

    v79 = v58;

    if (v79)
    {
      v147 = 0;
      v148 = 0;
      v149 = 0;
      v145 = v128;
      v146 = v33;
      v60 = v141;
      sub_1D72647EC();

      sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
      v61 = v139;
      v38 = v133;
      v140 = 0;
      v36 = v132;
    }

    else
    {
      sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

      v140 = 0;
      v60 = v141;
      v61 = v139;
      v36 = v132;
      v38 = v133;
    }
  }

  else
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v60 = v141;
    v61 = v139;
  }

  v62 = v138;
  swift_beginAccess();
  v63 = v62[4];
  v64 = v135;
  v38(v135, v36, v35);
  swift_storeEnumTagMultiPayload();
  v65 = *(v63 + 16);
  v130 = v35;
  if (v65)
  {
    v66 = (v60 + *(v61 + 44));
    v67 = *v66;
    v68 = v66[1];
    LOBYTE(v145) = 0;
    v69 = swift_allocObject();
    v139 = xmmword_1D728CF30;
    *(v69 + 16) = xmmword_1D728CF30;
    *(v69 + 32) = v145;
    *(v69 + 40) = v67;
    *(v69 + 48) = v68;
    sub_1D5E1A488(0);
    sub_1D5B58B84(&qword_1EDF02A38, sub_1D5E1A488);

    v70 = sub_1D72647CC();
    LOBYTE(v145) = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = v139;
    *(v71 + 40) = v145;
    v72 = __swift_project_boxed_opaque_existential_1((v60 + *(v61 + 36)), *(v60 + *(v61 + 36) + 24));
    MEMORY[0x1EEE9AC00](v72, v73);
    MEMORY[0x1EEE9AC00](v74, v75);
    *(&v127 - 4) = sub_1D5B4AA6C;
    *(&v127 - 3) = 0;
    v125 = sub_1D6708B58;
    v126 = v69;
    v76 = v140;
    v78 = sub_1D5D2F7A4(v64, sub_1D615B49C, v77, sub_1D615B4A4, (&v127 - 6));
    if (v76)
    {

      sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v141, sub_1D66B516C);
    }

    v80 = v78;

    if (v80)
    {
      sub_1D5E08A0C(v63, v141, 1, 0, 0);
      v35 = v130;
      v38 = v133;
      v64 = v135;
      v140 = 0;
    }

    else
    {
      v140 = 0;
      v35 = v130;
      v38 = v133;
      v64 = v135;
    }

    v36 = v132;
  }

  sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);
  v81 = v138;
  swift_beginAccess();
  v82 = v81[5];
  v83 = v134;
  v38(v134, v36, v35);
  swift_storeEnumTagMultiPayload();
  if (*(v82 + 16))
  {
    v84 = v61;
    v85 = *(v61 + 44);
    v86 = v141;
    v87 = &v141[v85];
    v89 = *v87;
    v88 = *(v87 + 1);
    v144 = 0;
    v90 = swift_allocObject();
    v139 = xmmword_1D7297410;
    *(v90 + 16) = xmmword_1D7297410;
    *(v90 + 32) = v144;
    *(v90 + 40) = v89;
    *(v90 + 48) = v88;
    sub_1D5E1A488(0);
    sub_1D5B58B84(&qword_1EDF02A38, sub_1D5E1A488);

    v91 = sub_1D72647CC();
    v144 = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = v91;
    *(v92 + 24) = v139;
    *(v92 + 40) = v144;
    v93 = __swift_project_boxed_opaque_existential_1((v86 + *(v84 + 36)), *(v86 + *(v84 + 36) + 24));
    *&v139 = &v127;
    MEMORY[0x1EEE9AC00](v93, v94);
    MEMORY[0x1EEE9AC00](v95, v96);
    *(&v127 - 4) = sub_1D5B4AA6C;
    *(&v127 - 3) = 0;
    v125 = sub_1D6708B58;
    v126 = v90;
    v97 = v140;
    v99 = sub_1D5D2F7A4(v83, sub_1D615B49C, v98, sub_1D615B4A4, (&v127 - 6));
    if (v97)
    {

      sub_1D5D2CFE8(v134, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v86, sub_1D66B516C);
    }

    v103 = v99;
    v102 = v84;

    if (v103)
    {
      sub_1D5E08864(v82, v86, 2, 0, 0);
    }

    v35 = v130;
    v38 = v133;
    v140 = 0;

    v100 = v131;
    v101 = v134;
    v36 = v132;
  }

  else
  {
    v100 = v131;
    v101 = v83;
    v102 = v61;
  }

  sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);
  v104 = v138;
  swift_beginAccess();
  v105 = v104[6];
  v38(v100, v36, v35);
  swift_storeEnumTagMultiPayload();
  v106 = v141;
  v107 = &v141[*(v102 + 44)];
  v109 = *v107;
  v108 = *(v107 + 1);
  LOBYTE(v142) = 0;
  v110 = swift_allocObject();
  v139 = xmmword_1D72BAA60;
  *(v110 + 16) = xmmword_1D72BAA60;
  *(v110 + 32) = v142;
  *(v110 + 40) = v109;
  *(v110 + 48) = v108;
  sub_1D5E1A488(0);
  sub_1D5B58B84(&qword_1EDF02A38, sub_1D5E1A488);
  v138 = v105;

  v111 = sub_1D72647CC();
  LOBYTE(v142) = 0;
  v112 = swift_allocObject();
  *(v112 + 16) = v111;
  *(v112 + 24) = v139;
  *(v112 + 40) = v142;
  v113 = __swift_project_boxed_opaque_existential_1((v106 + *(v102 + 36)), *(v106 + *(v102 + 36) + 24));
  MEMORY[0x1EEE9AC00](v113, v114);
  MEMORY[0x1EEE9AC00](v115, v116);
  *(&v127 - 4) = sub_1D5B4AA6C;
  *(&v127 - 3) = 0;
  v125 = sub_1D6708B58;
  v126 = v110;
  v117 = v140;
  v119 = sub_1D5D2F7A4(v100, sub_1D615B49C, v118, sub_1D615B4A4, (&v127 - 6));
  if (v117)
  {
    sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);

    v120 = v106;
  }

  else
  {
    v121 = v119;
    v122 = v138;

    if (v121)
    {
      v142 = v139;
      v143 = 0;
      v150 = v122;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      v123 = v141;
      sub_1D72647EC();
      v124 = v131;

      sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v123, sub_1D66B516C);
    }

    sub_1D5D2CFE8(v131, type metadata accessor for FormatVersionRequirement);

    v120 = v141;
  }

  return sub_1D5D2CFE8(v120, sub_1D66B516C);
}

uint64_t sub_1D6577F18()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6C65537865676572;
  v4 = 0x6E6572646C696863;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F7463656C6573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6577FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B52D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6577FF8(uint64_t a1)
{
  v2 = sub_1D5E1A59C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6578034(uint64_t a1)
{
  v2 = sub_1D5E1A59C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatResize.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v26;
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
          *(v21 + 16) = &unk_1F5116F50;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B527C();
    v27 = 0uLL;
    sub_1D726431C();
    type metadata accessor for FormatResizeAuto();
    v27 = xmmword_1D7279980;
    sub_1D5B58B84(&qword_1EDF2FFE0, type metadata accessor for FormatResizeAuto);
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v23 = v28;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *v14 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatResize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatResize, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatResize, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v13, v10, v14, &off_1F51F6C58);
  v16 = *(v11 + 16);
  v17 = qword_1EDF31ED8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD68);
  (*(*(v18 - 8) + 16))(v6, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63BBB18(v16, v6);

  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatResizeAuto.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66B58B0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5E1A2B4();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF25698, sub_1D5E1A2B4);
  sub_1D5D2EE70(v4, v17, v19, v14, v4, v17, &type metadata for FormatVersions.SydroF, v15, v13, v18, &off_1F51F6C58);
  swift_beginAccess();
  v20 = v2[2];
  v21 = qword_1EDF31ED8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD68);
  (*(*(v22 - 8) + 16))(v8, v23, v22);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (!*(v20 + 16))
  {
    goto LABEL_9;
  }

  v24 = &v13[*(v10 + 44)];
  v26 = *v24;
  v25 = *(v24 + 1);
  v42 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v42;
  *(v27 + 40) = v26;
  *(v27 + 48) = v25;
  sub_1D5E1A278(0);
  sub_1D5B58B84(&qword_1EDF03718, sub_1D5E1A278);

  v28 = sub_1D72647CC();
  v42 = 0;
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 16) = v28;
  *(v29 + 40) = v42;
  v30 = __swift_project_boxed_opaque_existential_1(&v13[*(v10 + 36)], *&v13[*(v10 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v30, v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v41 - 4) = sub_1D5B4AA6C;
  *(&v41 - 3) = 0;
  v39 = sub_1D66B5944;
  v40 = v27;
  v34 = v41;
  v36 = sub_1D5D2F7A4(v8, sub_1D615B49C, v35, sub_1D615B4A4, (&v41 - 6));
  if (!v34)
  {
    v37 = v36;

    if (v37)
    {
      sub_1D5E080FC(v20, v13, 0, 0, 0);
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_10:
  sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v13, sub_1D66B58B0);
}

uint64_t sub_1D6578B70()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 1802723693;
  }
}

uint64_t sub_1D6578B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802723693 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6578C80(uint64_t a1)
{
  v2 = sub_1D5E1A38C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6578CBC(uint64_t a1)
{
  v2 = sub_1D5E1A38C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatResizeConstraint.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v66 - v8;
  sub_1D66B59C0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 1);
  v69 = *(v1 + 2);
  v70 = v16;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C9F9A8();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF25218, sub_1D5C9F9A8);
  sub_1D5D2EE70(&type metadata for FormatResizeConstraint, v20, v22, v17, &type metadata for FormatResizeConstraint, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v72 = v24;
  v73 = v23;
  v66[2] = (v25 + 16);
  v67 = v26;
  (v26)(v9);
  v66[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v79) = v15;
  v81 = 0uLL;
  v82 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v83 = 0;
  v30 = swift_allocObject();
  v76 = v66;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v83;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v78 = v9;
  v66[-4] = sub_1D5B4AA6C;
  v66[-3] = 0;
  v64 = sub_1D6708B5C;
  v65 = v32;
  v83 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v83;
  v68 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D66B5A54();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF031D8, sub_1D66B5A54);
  swift_retain_n();
  v74 = v36;
  v75 = v35;
  v37 = sub_1D72647CC();
  v83 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v83;
  v39 = &v14[*(v11 + 36)];
  v40 = __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v66[-4] = sub_1D615B4A4;
  v66[-3] = &v66[-6];
  v44 = v77;
  v45 = v78;
  v64 = sub_1D66B5AE8;
  v65 = v33;
  sub_1D5D2BC70(v78, sub_1D615B49C, v46, sub_1D615B4A4, &v66[-6]);
  if (v44)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v66[0] = v39;
    v48 = v72;
    v47 = v73;
    v77 = v29;

    sub_1D66B5B64();
    sub_1D72647EC();
    sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

    v50 = v71;
    v67(v71, v48, v47);
    swift_storeEnumTagMultiPayload();
    v79 = v70;
    v80 = v69;
    v78 = xmmword_1D728CF30;
    v81 = xmmword_1D728CF30;
    v82 = 0;
    v83 = 0;
    v51 = swift_allocObject();
    v76 = v66;
    *(v51 + 16) = v78;
    *(v51 + 32) = v83;
    v52 = v68;
    v53 = v77;
    *(v51 + 40) = v68;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    v66[-4] = sub_1D5B4AA6C;
    v66[-3] = 0;
    v64 = sub_1D6708B5C;
    v65 = v55;
    v83 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v78;
    *(v56 + 32) = v83;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v83 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v78;
    *(v58 + 40) = v83;
    v59 = __swift_project_boxed_opaque_existential_1(v66[0], v66[0][3]);
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    v66[-4] = sub_1D615B4A4;
    v66[-3] = &v66[-6];
    v64 = sub_1D6708B5C;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, &v66[-6]);

    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66B59C0);
}

uint64_t sub_1D6579560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B7D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6579598(uint64_t a1)
{
  v2 = sub_1D5C9FA98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65795D4(uint64_t a1)
{
  v2 = sub_1D5C9FA98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatResizeConstraint.Dimension.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v22[1] = v22 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v22 - v11;
  v24 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD30);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v18 = v28;
  sub_1D5D2BEC4(v12, sub_1D5B4AA6C, 0, v13, v14);
  result = sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  if (!v18)
  {
    v20 = v25[3];
    v28 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v20);
    v21 = v23;
    v17(v23, v16, v15);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v20, v28);
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return result;
}

uint64_t FormatResizing.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
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

    v14 = v24;
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
          *(v21 + 16) = &unk_1F5116FA0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B5BB8();
    v25 = 0uLL;
    sub_1D726431C();
    type metadata accessor for FormatResizeAuto();
    v25 = xmmword_1D7279980;
    sub_1D5B58B84(&qword_1EDF2FFE0, type metadata accessor for FormatResizeAuto);
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    *v14 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatResizing.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatResizing, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatResizing, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v13, v10, v14, &off_1F51F6C58);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725BD1C();
  v17 = __swift_project_value_buffer(v16, qword_1EDFFCD68);
  (*(*(v16 - 8) + 16))(v6, v17, v16);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63BAC30(v11, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t sub_1D6579FC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x65726F4D656573;
  if (v2 != 1)
  {
    v4 = 0x6961746544656573;
    v3 = 0xEA0000000000736CLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6564695679616C70;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE90000000000006FLL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x65726F4D656573;
  if (*a2 != 1)
  {
    v8 = 0x6961746544656573;
    v7 = 0xEA0000000000736CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6564695679616C70;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE90000000000006FLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D657A0D0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D657A17C()
{
  sub_1D72621EC();
}

uint64_t sub_1D657A214()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D657A2BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006FLL;
  v4 = 0xE700000000000000;
  v5 = 0x65726F4D656573;
  if (v2 != 1)
  {
    v5 = 0x6961746544656573;
    v4 = 0xEA0000000000736CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6564695679616C70;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatRunMode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v28 - v8;
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
    v12 = v29;
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
          *(v22 + 16) = &unk_1F5116FF0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B5C0C();
    v30 = 0uLL;
    sub_1D726431C();
    if (v31[0] <= 1u)
    {
      if (v31[0])
      {
        (*(v11 + 8))(v15, v5);
        v26 = 2;
        v25 = 1;
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 2;
      }
    }

    else if (v31[0] == 2)
    {
      v30 = xmmword_1D7279980;
      sub_1D66B5C60();
      sub_1D726427C();
      if (v32 == 1)
      {
        v27 = &dword_1EC8924C0;
        swift_beginAccess();
      }

      else
      {
        v27 = v31;
      }

      v25 = *v27;
      (*(v11 + 8))(v15, v5);
      v26 = 0;
    }

    else if (v31[0] == 3)
    {
      v30 = xmmword_1D7279980;
      sub_1D66B5C60();
      sub_1D726427C();
      if (v32 == 1)
      {
        v24 = &dword_1EC8924C0;
        swift_beginAccess();
      }

      else
      {
        v24 = v31;
      }

      v25 = *v24;
      (*(v11 + 8))(v15, v5);
      v26 = 1;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v25 = 2;
      v26 = 2;
    }

    *v12 = v25;
    *(v12 + 4) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRunMode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v48 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v48 - v19;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v1;
  v26 = *(v1 + 4);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v50 = v24;
  sub_1D5D2EE70(&type metadata for FormatRunMode, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatRunMode, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenB, v28, v24, v29, &off_1F51F6AD8);
  if (v26)
  {
    if (v26 == 1)
    {
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCDC8);
      (*(*(v31 - 8) + 16))(v9, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v25;
      v34 = v50;
      sub_1D63BB2E4(3, v9, v33);
      v35 = v9;
    }

    else if (v25 == 0.0)
    {
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v43 = sub_1D725BD1C();
      v44 = __swift_project_value_buffer(v43, qword_1EDFFCDC8);
      (*(*(v43 - 8) + 16))(v20, v44, v43);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v34 = v50;
      sub_1D64243A8(0, v20);
      v35 = v20;
    }

    else
    {
      if (LODWORD(v25) == 1)
      {
        if (qword_1EDF31EF8 != -1)
        {
          swift_once();
        }

        v39 = sub_1D725BD1C();
        v40 = __swift_project_value_buffer(v39, qword_1EDFFCDC8);
        v41 = v48;
        (*(*(v39 - 8) + 16))(v48, v40, v39);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v42 = 1;
      }

      else
      {
        if (qword_1EDF31EF8 != -1)
        {
          swift_once();
        }

        v45 = sub_1D725BD1C();
        v46 = __swift_project_value_buffer(v45, qword_1EDFFCDC8);
        v41 = v49;
        (*(*(v45 - 8) + 16))(v49, v46, v45);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v42 = 4;
      }

      v34 = v50;
      sub_1D64243A8(v42, v41);
      v35 = v41;
    }
  }

  else
  {
    if (qword_1EDF31EF8 != -1)
    {
      swift_once();
    }

    v36 = sub_1D725BD1C();
    v37 = __swift_project_value_buffer(v36, qword_1EDFFCDC8);
    (*(*(v36 - 8) + 16))(v13, v37, v36);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v38 = v25;
    v34 = v50;
    sub_1D63BB2E4(2, v13, v38);
    v35 = v13;
  }

  sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v34, sub_1D5D30DC4);
}

uint64_t sub_1D657ADD4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D657AEC4()
{
  sub_1D72621EC();
}

uint64_t sub_1D657AFA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D657B08C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D666370C();
  *a1 = result;
  return result;
}

void sub_1D657B0BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701015151;
  v5 = 0xEC0000006E656572;
  v6 = 0x63536E4F65636E6FLL;
  v7 = 0x80000001D73B8F80;
  v8 = 0xD000000000000016;
  if (v2 != 3)
  {
    v8 = 0x737961776C61;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5272655065636E6FLL;
    v3 = 0xEE00687365726665;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FormatScoreMatchupFormat.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
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
          *(v20 + 16) = &unk_1F5117040;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B5CB4();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      v26 = xmmword_1D7279980;
      sub_1D66B5D08();
      sub_1D726427C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      if (v27 == 4)
      {
        v23 = -127;
      }

      else
      {
        v23 = v27 | 0x80;
      }
    }

    else
    {
      v26 = xmmword_1D7279980;
      sub_1D66B5D08();
      sub_1D726427C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
      if (v27 == 4)
      {
        v23 = 1;
      }
    }

    *v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatScoreMatchupFormat.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatScoreMatchupFormat, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatScoreMatchupFormat, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Sydro, v17, v14, v18, &off_1F51F6C38);
  if (v15 < 0)
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCDE0);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C66AC(1, v15 & 0x7F, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCDE0);
    (*(*(v20 - 8) + 16))(v10, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C66AC(0, v15, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D657B8AC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 29793;
  }

  else
  {
    v2 = 29558;
  }

  if (*a2)
  {
    v3 = 29793;
  }

  else
  {
    v3 = 29558;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D657B91C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D657B97C()
{
  sub_1D72621EC();
}

uint64_t sub_1D657B9C0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D657BA28(uint64_t *a1@<X8>)
{
  v2 = 29558;
  if (*v1)
  {
    v2 = 29793;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t FormatScoreMatchupFormatName.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatScoreMatchupFormatName, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatScoreMatchupFormatName, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Sydro, v25, v22, v26, &off_1F51F6C38);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCDE0);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6424B90(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCDE0);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6424B90(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCDE0);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6424B90(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCDE0);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6424B90(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D657C008()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D657C0D8()
{
  sub_1D72621EC();
}

uint64_t sub_1D657C194()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D657C260@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663544();
  *a1 = result;
  return result;
}

void sub_1D657C290(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E7972616D697270;
  v4 = 0x656D614E6C6C7566;
  if (*v1 != 2)
  {
    v4 = 0x656D616E6B63696ELL;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001D73B7EE0;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t FormatScrollingTrait.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatScrollingTrait, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatScrollingTrait, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v25, v22, v26, &off_1F51F6B38);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE68);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641FC70(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE68);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641FC70(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCE68);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641FC70(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCE68);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641FC70(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D657C8DC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D657C9B0()
{
  sub_1D72621EC();
}

uint64_t sub_1D657CA70()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D657CB40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663E78();
  *a1 = result;
  return result;
}

void sub_1D657CB70(uint64_t *a1@<X8>)
{
  v2 = 0x654C6F5465676170;
  v3 = 0x654C6F5470616E73;
  v4 = 0xE800000000000000;
  if (*v1 == 2)
  {
    v4 = 0xED0000676E696461;
  }

  else
  {
    v3 = 0x797469636F6C6576;
  }

  v5 = 0xEC0000007265746ELL;
  if (*v1)
  {
    v2 = 0x65436F5465676170;
  }

  else
  {
    v5 = 0xED0000676E696461;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t sub_1D657CCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D657CD9C(uint64_t a1)
{
  v2 = sub_1D5C5FB68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D657CDD8(uint64_t a1)
{
  v2 = sub_1D5C5FB68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D657CE14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D657CF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D657CE14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D657CF60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_250);
  *a2 = result;
  return result;
}

uint64_t sub_1D657CFA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D657CFF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D657D04C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D657D160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D657D04C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D657D190@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_249);
  *a2 = result;
  return result;
}

uint64_t sub_1D657D1D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D657D228(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D657D27C()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x726F7463656C6573;
  }
}

uint64_t sub_1D657D2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D657D3A8(uint64_t a1)
{
  v2 = sub_1D665A9A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D657D3E4(uint64_t a1)
{
  v2 = sub_1D665A9A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatShadow.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v147 = &v140 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v151 = &v140 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v140 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v140 - v21;
  sub_1D66B5E04();
  *&v153 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  v28 = *(v1 + 8);
  v29 = *(v1 + 16);
  v30 = *(v1 + 24);
  v150 = *(v1 + 32);
  v143 = *(v1 + 56);
  v141 = *(v1 + 40);
  v142 = *(v1 + 72);
  v162 = *(v1 + 80);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D5CD6874();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF24C88, sub_1D5CD6874);
  sub_1D5D2EE70(&type metadata for FormatShadow, v34, v36, v31, &type metadata for FormatShadow, v34, &type metadata for FormatVersions.JazzkonC, v32, v26, v35, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v37 = sub_1D725BD1C();
  v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
  v39 = *(v37 - 8);
  v40 = *(v39 + 16);
  v41 = v39 + 16;
  v152 = v38;
  v40(v22);
  *&v154 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v145 = v8;
  v146 = v37;
  v149 = v40;
  v148 = v41;
  if (v27 == 0.0)
  {
    sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
    v42 = v153;
  }

  else
  {
    *&v140 = v18;
    v45 = v153;
    v46 = &v26[*(v153 + 44)];
    v47 = *v46;
    v48 = *(v46 + 1);
    LOBYTE(v155) = 0;
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    *(v49 + 32) = v155;
    *(v49 + 40) = v47;
    *(v49 + 48) = v48;
    sub_1D66B5E98();
    v51 = v50;
    sub_1D5B58B84(&qword_1EDF02B68, sub_1D66B5E98);

    *&v144 = v51;
    v52 = sub_1D72647CC();
    LOBYTE(v155) = 0;
    v53 = swift_allocObject();
    *(v53 + 24) = 0;
    *(v53 + 32) = 0;
    *(v53 + 16) = v52;
    *(v53 + 40) = v155;
    v54 = __swift_project_boxed_opaque_existential_1(&v26[*(v45 + 36)], *&v26[*(v45 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v54, v55);
    MEMORY[0x1EEE9AC00](v56, v57);
    *(&v140 - 4) = sub_1D5B4AA6C;
    *(&v140 - 3) = 0;
    v138 = sub_1D66B5F2C;
    v139 = v49;
    v59 = sub_1D5D2F7A4(v22, sub_1D615B49C, v58, sub_1D615B4A4, (&v140 - 3));
    v3 = v2;
    if (v2)
    {
      sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
      goto LABEL_18;
    }

    v89 = v59;

    if (v89)
    {
      v155 = 0uLL;
      LOBYTE(v156) = 0;
      *&v159 = v27;
      sub_1D5B578C4();
      sub_1D72647EC();
      v42 = v153;
      v37 = v146;
      sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
      v42 = v153;
      v37 = v146;
    }

    v40 = v149;
    v18 = v140;
  }

  v43 = v152;
  (v40)(v18, v152, v37);
  swift_storeEnumTagMultiPayload();
  if (v28 == 0.0)
  {
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v60 = &v26[*(v42 + 44)];
    v61 = *v60;
    v62 = *(v60 + 1);
    LOBYTE(v155) = 0;
    v63 = v26;
    v64 = swift_allocObject();
    v144 = xmmword_1D728CF30;
    *(v64 + 16) = xmmword_1D728CF30;
    *(v64 + 32) = v155;
    *(v64 + 40) = v61;
    *(v64 + 48) = v62;
    sub_1D66B5E98();
    v66 = v65;
    sub_1D5B58B84(&qword_1EDF02B68, sub_1D66B5E98);

    *&v140 = v66;
    v67 = sub_1D72647CC();
    LOBYTE(v155) = 0;
    v68 = swift_allocObject();
    *(v68 + 16) = v67;
    *(v68 + 24) = v144;
    *(v68 + 40) = v155;
    v69 = __swift_project_boxed_opaque_existential_1(&v63[*(v42 + 36)], *&v63[*(v42 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v69, v70);
    MEMORY[0x1EEE9AC00](v71, v72);
    *(&v140 - 4) = sub_1D5B4AA6C;
    *(&v140 - 3) = 0;
    v138 = sub_1D6708B60;
    v139 = v64;
    v74 = sub_1D5D2F7A4(v18, sub_1D615B49C, v73, sub_1D615B4A4, (&v140 - 3));
    if (v3)
    {
      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

      v75 = v63;
      return sub_1D5D2CFE8(v75, sub_1D66B5E04);
    }

    v90 = v74;

    if (v90)
    {
      v155 = v144;
      LOBYTE(v156) = 0;
      *&v159 = v28;
      v26 = v63;
      sub_1D72647EC();
      v43 = v152;
      v42 = v153;
      v37 = v146;
      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
      v26 = v63;
      v43 = v152;
      v42 = v153;
      v37 = v146;
    }

    v40 = v149;
  }

  v44 = v151;
  (v40)(v151, v43, v37);
  swift_storeEnumTagMultiPayload();
  if (qword_1EDF33738 != -1)
  {
    swift_once();
  }

  *&v144 = v3;
  if (v29 != *&xmmword_1EDF33740 || v30 != *(&xmmword_1EDF33740 + 1))
  {
    v76 = &v26[*(v42 + 44)];
    v77 = *v76;
    v78 = *(v76 + 1);
    LOBYTE(v155) = 0;
    v79 = swift_allocObject();
    v140 = xmmword_1D7297410;
    *(v79 + 16) = xmmword_1D7297410;
    *(v79 + 32) = v155;
    *(v79 + 40) = v77;
    *(v79 + 48) = v78;
    sub_1D66B5E98();
    sub_1D5B58B84(&qword_1EDF02B68, sub_1D66B5E98);

    v80 = sub_1D72647CC();
    LOBYTE(v155) = 0;
    v81 = swift_allocObject();
    *(v81 + 16) = v80;
    *(v81 + 24) = v140;
    *(v81 + 40) = v155;
    v82 = __swift_project_boxed_opaque_existential_1(&v26[*(v42 + 36)], *&v26[*(v42 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v82, v83);
    MEMORY[0x1EEE9AC00](v84, v85);
    *(&v140 - 4) = sub_1D5B4AA6C;
    *(&v140 - 3) = 0;
    v138 = sub_1D6708B60;
    v139 = v79;
    v86 = v144;
    v88 = sub_1D5D2F7A4(v44, sub_1D615B49C, v87, sub_1D615B4A4, (&v140 - 3));
    if (!v86)
    {
      v91 = v88;

      if (v91)
      {
        v155 = v140;
        LOBYTE(v156) = 0;
        *&v159 = v29;
        *(&v159 + 1) = v30;
        sub_1D66B5FFC();
        sub_1D72647EC();
        v42 = v153;
        v37 = v146;
        *&v144 = 0;
        sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        *&v144 = 0;
        sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);
        v42 = v153;
        v37 = v146;
      }

      v40 = v149;
      v43 = v152;
      goto LABEL_31;
    }

    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
LABEL_18:

LABEL_48:
    v75 = v26;
    return sub_1D5D2CFE8(v75, sub_1D66B5E04);
  }

  sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
LABEL_31:
  v92 = v147;
  (v40)(v147, v43, v37);
  swift_storeEnumTagMultiPayload();
  v93 = swift_allocObject();
  *(v93 + 16) = 2;
  *(v93 + 24) = 0x3FF0000000000000;
  *(v93 + 32) = 0;
  *&v155 = v93 | 0x1000000000000000;
  *&v159 = v150;

  v94 = static FormatColor.== infix(_:_:)(&v155, &v159);

  if (v94)
  {

    sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
    v95 = v144;
    v96 = v145;
    goto LABEL_33;
  }

  v119 = &v26[*(v42 + 44)];
  v120 = *v119;
  v121 = *(v119 + 1);
  LOBYTE(v155) = 0;
  v122 = swift_allocObject();
  v153 = xmmword_1D72BAA60;
  *(v122 + 16) = xmmword_1D72BAA60;
  *(v122 + 32) = v155;
  *(v122 + 40) = v120;
  *(v122 + 48) = v121;
  sub_1D66B5E98();
  v124 = v123;
  sub_1D5B58B84(&qword_1EDF02B68, sub_1D66B5E98);

  v151 = v124;
  v125 = sub_1D72647CC();
  LOBYTE(v155) = 0;
  v126 = swift_allocObject();
  *(v126 + 16) = v125;
  *(v126 + 24) = v153;
  *(v126 + 40) = v155;
  v127 = v92;
  v128 = __swift_project_boxed_opaque_existential_1(&v26[*(v42 + 36)], *&v26[*(v42 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v128, v129);
  MEMORY[0x1EEE9AC00](v130, v131);
  *(&v140 - 4) = sub_1D5B4AA6C;
  *(&v140 - 3) = 0;
  v138 = sub_1D6708B60;
  v139 = v122;
  v132 = v144;
  v134 = sub_1D5D2F7A4(v92, sub_1D615B49C, v133, sub_1D615B4A4, (&v140 - 3));
  v95 = v132;
  if (!v132)
  {
    v135 = v134;

    if (v135)
    {
      v155 = v153;
      LOBYTE(v156) = 0;
      *&v159 = v150;
      sub_1D5B55CBC();
      sub_1D72647EC();

      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
      v96 = v145;
      v43 = v152;
      v37 = v146;
    }

    else
    {

      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
      v96 = v145;
      v37 = v146;
      v43 = v152;
    }

LABEL_33:
    sub_1D5B58478();
    v98 = *(v97 + 48);
    v99 = (v96 + *(v97 + 64));
    v100 = v43;
    v101 = v149;
    (v149)(v96, v100, v37);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v102 = __swift_project_value_buffer(v37, qword_1EDFFCE68);
    v101(v96 + v98, v102, v37);
    *v99 = 0;
    v99[1] = 0;
    swift_storeEnumTagMultiPayload();
    v154 = xmmword_1D72BAA70;
    v159 = xmmword_1D72BAA70;
    v160 = 0;
    v103 = &v26[*(v42 + 44)];
    v104 = *v103;
    v105 = *(v103 + 1);
    LOBYTE(v155) = 0;
    v106 = swift_allocObject();
    v108 = v106;
    *(v106 + 16) = v154;
    *(v106 + 32) = v155;
    *(v106 + 40) = v104;
    *(v106 + 48) = v105;
    if (v162 == 255)
    {
    }

    else
    {
      *&v153 = &v140;
      v155 = v141;
      v156 = v143;
      v157 = v142;
      v158 = v162;
      MEMORY[0x1EEE9AC00](v106, v107);
      *(&v140 - 4) = sub_1D5B4AA6C;
      *(&v140 - 3) = 0;
      v138 = sub_1D6708B60;
      v139 = v108;
      v161 = 0;
      v109 = swift_allocObject();
      *(v109 + 16) = v154;
      *(v109 + 32) = v161;
      *(v109 + 40) = v104;
      *(v109 + 48) = v105;
      sub_1D66B5E98();
      sub_1D5B58B84(&qword_1EDF02B68, sub_1D66B5E98);
      swift_retain_n();
      v110 = sub_1D72647CC();
      v161 = 0;
      v111 = swift_allocObject();
      *(v111 + 16) = v110;
      *(v111 + 24) = v154;
      *(v111 + 40) = v161;
      v112 = *(v42 + 36);
      *&v154 = v26;
      v113 = __swift_project_boxed_opaque_existential_1(&v26[v112], *&v26[v112 + 24]);
      MEMORY[0x1EEE9AC00](v113, v114);
      MEMORY[0x1EEE9AC00](v115, v116);
      *(&v140 - 4) = sub_1D615B4A4;
      *(&v140 - 3) = &v140 - 3;
      v96 = v145;
      v138 = sub_1D6708B60;
      v139 = v109;
      v118 = sub_1D5D2F7A4(v145, sub_1D615B49C, v117, sub_1D615B4A4, (&v140 - 3));
      if (v95)
      {
        sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);

        v26 = v154;
        goto LABEL_48;
      }

      v136 = v118;

      if (v136)
      {
        sub_1D66B5FA8();
        v26 = v154;
        sub_1D72647EC();
      }

      else
      {
        v26 = v154;
      }
    }

    sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);

    goto LABEL_48;
  }

  sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);
  v75 = v26;
  return sub_1D5D2CFE8(v75, sub_1D66B5E04);
}

uint64_t sub_1D657E8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B7E5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D657E934(uint64_t a1)
{
  v2 = sub_1D5CD6F04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D657E970(uint64_t a1)
{
  v2 = sub_1D5CD6F04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatShadow.Offset.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v77 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v71 - v10;
  sub_1D66B6050();
  *&v78 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v16 = v1[1];
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D5CD759C();
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EDF24C78, sub_1D5CD759C);
  v79 = v15;
  sub_1D5D2EE70(&type metadata for FormatShadow.Offset, v21, v23, v18, &type metadata for FormatShadow.Offset, v21, &type metadata for FormatVersions.JazzkonC, v19, v15, v22, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v28 = v26 + 16;
  v27(v11, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (v17 == 0.0)
  {
    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
    v29 = v78;
    goto LABEL_5;
  }

  v75 = v28;
  v76 = v2;
  v72 = v27;
  v73 = v25;
  v33 = v78;
  v34 = v79;
  v35 = &v79[*(v78 + 44)];
  v37 = *v35;
  v36 = *(v35 + 1);
  LOBYTE(v80) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v80;
  *(v38 + 40) = v37;
  *(v38 + 48) = v36;
  sub_1D66B60E4();
  v40 = v39;
  v41 = sub_1D5B58B84(&qword_1EDF02B58, sub_1D66B60E4);

  v74 = v40;
  v71[1] = v41;
  v42 = sub_1D72647CC();
  LOBYTE(v80) = 0;
  v43 = swift_allocObject();
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = v80;
  v44 = __swift_project_boxed_opaque_existential_1((v34 + *(v33 + 36)), *(v34 + *(v33 + 36) + 24));
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v71[-4] = sub_1D5B4AA6C;
  v71[-3] = 0;
  v69 = sub_1D66B6178;
  v70 = v38;
  v48 = v76;
  v50 = sub_1D5D2F7A4(v11, sub_1D615B49C, v49, sub_1D615B4A4, &v71[-6]);
  v3 = v48;
  if (!v48)
  {
    v67 = v50;

    if (v67)
    {
      v80 = 0uLL;
      v81 = 0;
      v82 = v17;
      sub_1D5B578C4();
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
    v29 = v78;
    v27 = v72;
    v25 = v73;
LABEL_5:
    v30 = v77;
    v27(v77, v25, v24);
    swift_storeEnumTagMultiPayload();
    if (v16 == 0.0)
    {
      v31 = v79;
    }

    else
    {
      v31 = v79;
      v52 = &v79[*(v29 + 44)];
      v54 = *v52;
      v53 = *(v52 + 1);
      LOBYTE(v80) = 0;
      v55 = swift_allocObject();
      v78 = xmmword_1D728CF30;
      *(v55 + 16) = xmmword_1D728CF30;
      *(v55 + 32) = v80;
      *(v55 + 40) = v54;
      *(v55 + 48) = v53;
      sub_1D66B60E4();
      v57 = v56;
      sub_1D5B58B84(&qword_1EDF02B58, sub_1D66B60E4);

      v76 = v57;
      v58 = sub_1D72647CC();
      LOBYTE(v80) = 0;
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      *(v59 + 24) = v78;
      *(v59 + 40) = v80;
      v60 = __swift_project_boxed_opaque_existential_1((v31 + *(v29 + 36)), *(v31 + *(v29 + 36) + 24));
      MEMORY[0x1EEE9AC00](v60, v61);
      MEMORY[0x1EEE9AC00](v62, v63);
      v71[-4] = sub_1D5B4AA6C;
      v71[-3] = 0;
      v69 = sub_1D6708A08;
      v70 = v55;
      v65 = sub_1D5D2F7A4(v30, sub_1D615B49C, v64, sub_1D615B4A4, &v71[-6]);
      if (v3)
      {
        sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

        goto LABEL_13;
      }

      v68 = v65;

      if (v68)
      {
        v80 = v78;
        v81 = 0;
        v82 = v16;
        sub_1D5B578C4();
        sub_1D72647EC();
        v32 = v77;
        goto LABEL_8;
      }

      v30 = v77;
    }

    v32 = v30;
LABEL_8:
    sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
LABEL_13:
    v51 = v31;
    return sub_1D5D2CFE8(v51, sub_1D66B6050);
  }

  sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

  v51 = v34;
  return sub_1D5D2CFE8(v51, sub_1D66B6050);
}